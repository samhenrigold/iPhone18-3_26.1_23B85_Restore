uint64_t sub_2215C21E8(unsigned int *a1, char *a2, unsigned int *a3, uint64_t a4, unsigned int a5)
{
  v7 = a1[1];
  if (v7 <= a5 && ((v8 = *a1, v7 == a5) ? (v9 = a4 >= v8) : (v9 = 1), v9))
  {
    v11 = 0;
    v9 = a5 >= v7;
    v12 = a5 - v7;
    if (!v9)
    {
      v12 = 0;
    }

    if (a4 > v8 && (v11 = a4 - v8, (a4 - v8) == 31) || ((v13 = a1[v12 + 3], v14 = v11 + 1, (v14 & 0xE0) != 0) ? (v15 = 0) : (v15 = -1 << v14), (v15 & v13) == 0))
    {
      v17 = (v12 + 1);
      if (v17 > 0x7F)
      {
        return 0;
      }

      while (1)
      {
        v18 = a1[v17 + 3];
        if (v18)
        {
          break;
        }

        v9 = v17++ >= 0x7F;
        if (v9)
        {
          return 0;
        }
      }

      v19 = *a1;
      *a2 = v19 + sub_2215C23AC(v18, a2, a3, a4);
      *a3 = a1[1] + v17;
    }

    else
    {
      *a2 = v8 + sub_2215C23AC(v15 & v13, a2, a3, a4);
      *a3 = a5;
    }

    return 1;
  }

  else
  {

    return sub_2215C2318(a1, a2, a3);
  }
}

uint64_t sub_2215C2318(unsigned int *a1, char *a2, unsigned int *a3)
{
  v6 = *a1;
  v7 = a1[1];
  if (sub_2215C1CC0(a1, *a1, v7))
  {
    *a2 = v6;
    *a3 = a1[1];
    return 1;
  }

  else
  {

    return sub_2215C21E8(a1, a2, a3, v6, v7);
  }
}

uint64_t sub_2215C23AC(int a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = -a1 & a1;
  if (!a1)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "uint8_t findLowestBitNum(uint32_t)", a4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEBitGrid.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 64, 0, "Can't find a bit set in zero.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
LABEL_5:
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "uint8_t findLowestBitNum(uint32_t)", a4);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEBitGrid.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 65, 0, "Can't find a lowestBitOnly in zero.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
    goto LABEL_6;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_6:
  v23 = 0;
  LOBYTE(v24) = 32;
  do
  {
    while (1)
    {
      result = (v23 + v24) >> 1;
      if (1 << result >= v4)
      {
        break;
      }

      v23 = result + 1;
    }

    v24 = (v23 + v24) >> 1;
  }

  while (1 << result > v4);
  return result;
}

uint64_t sub_2215C2520(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    do
    {
      if (*v3)
      {
        MEMORY[0x223DA1450](*v3, 0x1000C405E6460E1);
        v2 = *(a1 + 8);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *a1;
  }

  if (v3)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_2215C25A0(uint64_t a1)
{
  v3 = *a1;
  for (i = *(a1 + 8); v3 != i; i = *(a1 + 8))
  {
    v4 = *v3++;
    bzero((v4 + 8), 0x204uLL);
  }

  *(a1 + 24) = 0;
}

BOOL sub_2215C25E8(uint64_t **a1)
{
  v1 = a1[3];
  if (v1 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return v1 == 0;
  }

  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return 0;
  }

  do
  {
    v4 = *v2;
    v5 = *(*v2 + 8);
    if (v5 == 0xFFFF)
    {
      v6 = 0;
      v7 = 0uLL;
      do
      {
        v7 = vpadalq_u16(v7, vpaddlq_u8(vcntq_s8(*(v4 + 12 + v6))));
        v6 += 16;
      }

      while (v6 != 512);
      v8 = vaddvq_s32(v7);
      *(v4 + 8) = v8;
      v5 = v8;
    }

    result = v5 != 0;
    ++v2;
    if (v5)
    {
      v10 = 1;
    }

    else
    {
      v10 = v2 == v3;
    }
  }

  while (!v10);
  return result;
}

uint64_t *sub_2215C2678(uint64_t **a1)
{
  v1 = a1[3];
  if (v1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = *a1;
    v3 = a1[1];
    if (*a1 == v3)
    {
      v1 = 0;
    }

    else
    {
      v1 = 0;
      do
      {
        v4 = *v2;
        v5 = *(*v2 + 8);
        if (v5 == 0xFFFF)
        {
          v6 = 0;
          v7 = 0uLL;
          do
          {
            v7 = vpadalq_u16(v7, vpaddlq_u8(vcntq_s8(*(v4 + 12 + v6))));
            v6 += 16;
          }

          while (v6 != 512);
          v8 = vaddvq_s32(v7);
          *(v4 + 8) = v8;
          v5 = v8;
        }

        v1 = (v1 + v5);
        ++v2;
      }

      while (v2 != v3);
    }

    a1[3] = v1;
  }

  return v1;
}

uint64_t sub_2215C2704(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return *(*(v1 - 8) + 4);
  }
}

uint64_t sub_2215C2724(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 == v2)
  {
    return 0;
  }

  LOWORD(result) = 0;
  do
  {
    v4 = *v1++;
    v5 = (*v4 + 31);
    if (v5 <= result)
    {
      result = result;
    }

    else
    {
      result = v5;
    }
  }

  while (v1 != v2);
  return result;
}

void sub_2215C2764(uint64_t **a1@<X0>, TSUIndexSet *a2@<X8>)
{
  TSUIndexSet::TSUIndexSet(a2);
  v5 = *a1;
  v4 = a1[1];
  while (v5 != v4)
  {
    sub_2215C2078(*v5++, a2);
  }
}

void sub_2215C27CC(uint64_t **a1@<X0>, TSUIndexSet *a2@<X8>)
{
  TSUIndexSet::TSUIndexSet(a2);
  v5 = *a1;
  v4 = a1[1];
  while (v5 != v4)
  {
    sub_2215C2148(*v5++, a2);
  }
}

void sub_2215C2834(uint64_t **a1, unsigned int a2, unsigned int a3)
{
  if (a3 | a2)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x6812000000;
    v21 = sub_2215C2B5C;
    v22 = sub_2215C2BA4;
    v23 = &unk_22188E88F;
    v24 = a1;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    sub_2215C2764(a1, &v17);
    sub_2215C27CC(a1, &v16);
    v6 = TSUIndexSet::firstIndex(&v17);
    v7 = TSUIndexSet::lastIndex(&v17);
    v8 = TSUIndexSet::firstIndex(&v16);
    v9 = TSUIndexSet::lastIndex(&v16);
    *&v28 = v6;
    v28._singleRange._begin = (v7 + 1) - v6;
    v28._singleRange._end = v8;
    v28._multipleRanges = ((v9 + 1) - v8);
    sub_22112A984((v19 + 7), &v28);
    v15[0] = 0;
    v15[1] = 0;
    v15[2] = a1;
    TSUIndexSet::TSUIndexSet(&v28);
    v10 = 0;
    v14 = 0;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    while (sub_2215C2C08(v15, &v14 + 1, &v14))
    {
      if (HIDWORD(v14) >= a2 && v14 >= a3)
      {
        v13 = v14 - a3;
        if ((v10 & (v11 != v13)) == 1)
        {
          TSUIndexSet::enumerateRangesUsingBlock();
          TSUIndexSet::removeAllIndexes(&v28);
        }

        else if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = v11;
        }

        v10 = 1;
        TSUIndexSet::addIndex(&v28);
        v11 = v13;
      }
    }

    if (v10)
    {
      TSUIndexSet::enumerateRangesUsingBlock();
    }

    sub_2215C2D78(v19 + 6);
    TSUIndexSet::~TSUIndexSet(&v28);
    TSUIndexSet::~TSUIndexSet(&v16);
    TSUIndexSet::~TSUIndexSet(&v17);
    _Block_object_dispose(&v18, 8);
    if (*(&v26 + 1))
    {
      *&v27 = *(&v26 + 1);
      operator delete(*(&v26 + 1));
    }

    if (v25)
    {
      *(&v25 + 1) = v25;
      operator delete(v25);
    }
  }
}

void sub_2215C2AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, TSUIndexSet *a12, TSUIndexSet *a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va2, a26);
  va_start(va1, a26);
  va_start(va, a26);
  v28 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  va_copy(va2, va1);
  v33 = va_arg(va2, void);
  v35 = va_arg(va2, void);
  v36 = va_arg(va2, void);
  v37 = va_arg(va2, void);
  TSUIndexSet::~TSUIndexSet(va);
  TSUIndexSet::~TSUIndexSet(va1);
  _Block_object_dispose(va2, 8);
  sub_2215C3810((v26 + 48));
  _Unwind_Resume(a1);
}

__n128 sub_2215C2B5C(void *a1, uint64_t a2)
{
  a1[6] = *(a2 + 48);
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  *(a1 + 7) = *(a2 + 56);
  a1[9] = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  result = *(a2 + 80);
  *(a1 + 5) = result;
  a1[12] = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  return result;
}

void sub_2215C2BA4(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;

    operator delete(v3);
  }
}

void *sub_2215C2BFC(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = a2;
  return result;
}

BOOL sub_2215C2C08(unint64_t *a1, _DWORD *a2, unsigned int *a3)
{
  do
  {
    v6 = *a1;
    v7 = a1[2];
    v8 = v7[1] - *v7;
    if (*a1 >= (v8 >> 3))
    {
      break;
    }

    v9 = sub_2215C3528(v7, *(a1 + 2), *(a1 + 3));
    if (v9)
    {
      *a2 = *(a1 + 2);
      v10 = *(a1 + 3);
      *a3 = v10;
    }

    else
    {
      v10 = *(a1 + 3);
    }

    if ((sub_2215C35B4(a1[2], a1 + 8, a1 + 3, a1, *(a1 + 2), v10, *a1) & 1) == 0)
    {
      *(a1 + 3) = 0x7FFFFFFF;
      *a1 = ((*(a1[2] + 8) - *a1[2]) >> 3);
    }
  }

  while (!v9);
  return v6 < (v8 >> 3);
}

void sub_2215C2CD8(uint64_t a1, TSUIndexRange *this)
{
  v3 = TSUIndexRange::asNSRange(this);
  v4 = *(*(a1 + 32) + 8);
  *&v6[0] = v3;
  *(&v6[0] + 1) = v5;
  v6[1] = *(a1 + 40);
  sub_22112A984(v4 + 80, v6);
}

void sub_2215C2D28(uint64_t a1, TSUIndexRange *this)
{
  v3 = TSUIndexRange::asNSRange(this);
  v4 = *(*(a1 + 32) + 8);
  *&v6[0] = v3;
  *(&v6[0] + 1) = v5;
  v6[1] = *(a1 + 40);
  sub_22112A984(v4 + 80, v6);
}

unint64_t *sub_2215C2D78(unint64_t *result)
{
  if (*result)
  {
    v1 = result;
    v2 = result[1];
    v3 = result[2];
    while (v2 != v3)
    {
      result = sub_2215C3428(*v1, *v2, v2[1], v2[2], v2[3]);
      v2 += 4;
    }

    v4 = v1[4];
    v5 = v1[5];
    if (v4 != v5)
    {
      do
      {
        result = sub_2215C32FC(*v1, *v4, v4[1], v4[2], v4[3]);
        v4 += 4;
      }

      while (v4 != v5);
      v4 = v1[4];
    }

    v1[2] = v1[1];
    v1[5] = v4;
  }

  return result;
}

unint64_t sub_2215C2E08(void *a1, unsigned int a2, unsigned int a3)
{
  v3 = (a1[1] - *a1) >> 3;
  v4 = a1[4];
  if (v4 >= v3)
  {
    v7 = 0;
    return sub_2215C2E78(a1, a2, a3, v7, v3);
  }

  v5 = *(*a1 + 8 * v4);
  v6 = v5[1];
  if (v6 > a3)
  {
LABEL_3:
    v7 = 0;
    v3 = a1[4];
    return sub_2215C2E78(a1, a2, a3, v7, v3);
  }

  if (v6 + 127 < a3)
  {
    goto LABEL_7;
  }

  v9 = *v5;
  if (v9 > a2)
  {
    goto LABEL_3;
  }

  if (v9 + 31 < a2)
  {
LABEL_7:
    v7 = v4 + 1;
    return sub_2215C2E78(a1, a2, a3, v7, v3);
  }

  return a1[4];
}

unint64_t sub_2215C2E78(void *a1, unsigned int a2, unsigned int a3, unint64_t a4, unint64_t a5)
{
  if (a4 != a5)
  {
    while (1)
    {
      v5 = (a4 + a5) >> 1;
      v6 = *(*a1 + 8 * v5);
      v7 = v6[1];
      if (v7 <= a3)
      {
        if (v7 + 127 < a3)
        {
          goto LABEL_8;
        }

        v8 = *v6;
        if (v8 <= a2)
        {
          break;
        }
      }

      a5 = (a4 + a5) >> 1;
LABEL_9:
      if (a4 == a5)
      {
        return a5;
      }
    }

    if (v8 + 31 >= a2)
    {
      a1[4] = v5;
      return (a4 + a5) >> 1;
    }

LABEL_8:
    a4 = v5 + 1;
    goto LABEL_9;
  }

  return a4;
}

uint64_t sub_2215C2EF0(void *a1, unsigned int a2, unsigned int a3)
{
  v3 = a2 > 0xF423F || a3 > 0xF423F;
  if (v3)
  {
    return 0;
  }

  v8 = sub_2215C2E08(a1, a2, a3);
  if (v8 >= (a1[1] - *a1) >> 3)
  {
    return 0;
  }

  v9 = *(*a1 + 8 * v8);
  if (*v9 > a2)
  {
    return 0;
  }

  v10 = v9[1];
  v3 = v10 > a3;
  v11 = v10 + 127;
  if (!v3 && v11 >= a3 && *v9 + 31 >= a2)
  {
    return *(*a1 + 8 * v8);
  }

  else
  {
    return 0;
  }
}

BOOL sub_2215C2F88(_BOOL8 result, unsigned int a2, unsigned int a3)
{
  if (a2 <= 0xF423F && a3 <= 0xF423F)
  {
    v18 = v3;
    v19 = v4;
    v8 = result;
    v9 = sub_2215C2E08(result, a2, a3);
    v10 = v9;
    v11 = *v8;
    if (v9 == (v8[1] - *v8) >> 3 || (v12 = *(v11 + 8 * v9), *v12 > a2) || ((v13 = v12[1], *v12 + 31 >= a2) ? (v14 = v13 > a3) : (v14 = 1), !v14 ? (v15 = v13 + 127 >= a3) : (v15 = 0), !v15))
    {
      operator new();
    }

    v17 = *(v11 + 8 * v10);
    result = sub_2215C177C(v12, a2, a3);
    if (result)
    {
      v16 = v8[3];
      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8[3] = v16 + 1;
      }
    }
  }

  return result;
}

char *sub_2215C30AC(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_22107C148();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_221122DC8(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_221345280(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_2215C3248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *sub_2215C3280(unsigned int *result, const char *a2, uint64_t a3)
{
  if (*(result + 1) != *result)
  {
    v3 = result;
    if (*(result + 3))
    {
      result = sub_2215C2EF0(result, a2, a3);
      if (result)
      {
        result = sub_2215C17D4(result, a2, a3, v6);
        if (result)
        {
          v7 = *(v3 + 3);
          if (v7 != 0x7FFFFFFFFFFFFFFFLL)
          {
            *(v3 + 3) = v7 - 1;
          }
        }
      }
    }
  }

  return result;
}

unsigned int *sub_2215C32FC(unsigned int *result, NSUInteger a2, NSUInteger a3, NSUInteger a4, NSUInteger a5)
{
  if (a3)
  {
    if (a5)
    {
      if (a4 <= 0xF423F && a2 <= 0xF423F)
      {
        v15 = a4 + a5 - 1;
        if (v15 <= 0xF423F)
        {
          v9 = a2 + a3 - 1;
          if (v9 <= 0xF423F && v15 >= a4)
          {
            v10 = result;
            v11 = a4;
            do
            {
              v12 = v11 + 1;
              if (v9 >= a2)
              {
                v13 = a2;
                do
                {
                  sub_2215C2F88(v10, v13, v11);
                  result = sub_2215C2EF0(v10, v13, v11);
                  if (result)
                  {
                    v14 = result;
                    v16.location = a4;
                    v16.length = a5;
                    result = sub_2215C1944(result, a2, a3, v16);
                    if (result)
                    {
                      *(v10 + 3) = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    v13 = *v14 + 32;
                    v12 = v14[1] + 128;
                  }
                }

                while (v13 <= v9);
              }

              v11 = v12;
            }

            while (v12 <= v15);
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_2215C3428(unint64_t result, NSUInteger a2, NSUInteger a3, NSUInteger a4, NSUInteger a5)
{
  if (a3)
  {
    if (a5)
    {
      if (a4 <= 0xF423F && a2 <= 0xF423F)
      {
        v9 = result;
        result = sub_2215C2E08(result, a2, a4);
        v10 = v9[1] - *v9;
        if (result < v10 >> 3)
        {
          v11 = result;
          result = sub_2215C2E78(v9, a2 + a3 - 1, a4 + a5 - 1, result, v10 >> 3);
          v12 = v9[1] - *v9;
          for (i = result >= v12 >> 3 ? (v12 >> 3) - 1 : result; v11 <= i; ++v11)
          {
            v14.location = a4;
            v14.length = a5;
            result = sub_2215C1B04(*(*v9 + 8 * v11), a2, a3, v14);
            if (result)
            {
              v9[3] = 0x7FFFFFFFFFFFFFFFLL;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_2215C3528(void *a1, unsigned int a2, unsigned int a3)
{
  if (a1[1] == *a1)
  {
    return 0;
  }

  if (!a1[3])
  {
    return 0;
  }

  v5 = sub_2215C2EF0(a1, a2, a3);
  if (!v5)
  {
    return 0;
  }

  return sub_2215C1CC0(v5, a2, a3);
}

uint64_t sub_2215C3590(uint64_t a1, char *a2, unsigned int *a3)
{
  if (*(a1 + 8) == *a1 || !*(a1 + 24))
  {
    return 0;
  }

  else
  {
    return sub_2215C2318(**a1, a2, a3);
  }
}

uint64_t sub_2215C35B4(uint64_t *a1, char *a2, unsigned int *a3, unint64_t *a4, uint64_t a5, unsigned int a6, unint64_t a7)
{
  if (a1[1] == *a1)
  {
    return 0;
  }

  if (!a1[3])
  {
    return 0;
  }

  *a4 = a7;
  v9 = *a1;
  if (a7 >= (a1[1] - *a1) >> 3)
  {
    return 0;
  }

  while (1)
  {
    v14 = *(v9 + 8 * a7);
    if (*v14 <= a5)
    {
      v15 = v14[1];
      v16 = *v14 + 31 < a5 || v15 > a6;
      if (!v16 && v15 + 127 >= a6)
      {
        if (sub_2215C21E8(v14, a2, a3, a5, a6))
        {
          return 1;
        }

LABEL_19:
        v18 = *a4 + 1;
        *a4 = v18;
        goto LABEL_20;
      }
    }

    if (sub_2215C2318(v14, a2, a3))
    {
      if (*a3 > a6 || *a3 == a6 && *a2 > a5)
      {
        return 1;
      }

      goto LABEL_19;
    }

    v18 = *a4;
LABEL_20:
    if (v18 < (a1[1] - *a1) >> 3)
    {
      v19 = *(*a1 + 8 * v18);
      a5 = *v19;
      a6 = v19[1];
      if (sub_2215C1CC0(v19, *v19, a6))
      {
        break;
      }
    }

    a7 = *a4;
    v9 = *a1;
    if (*a4 >= (a1[1] - *a1) >> 3)
    {
      return 0;
    }
  }

  *a2 = a5;
  *a3 = a6;
  return 1;
}

uint64_t sub_2215C3704(uint64_t *a1, const char *a2, unsigned int a3, uint64_t a4, unsigned int a5, void *a6)
{
  if (!a1[3])
  {
    return 0;
  }

  v12 = sub_2215C2E08(a1, a2, a3);
  v13 = a1[1] - *a1;
  if (v12 >= v13 >> 3)
  {
    return 0;
  }

  v14 = v12;
  v15 = sub_2215C2E78(a1, a4, a5, v12, v13 >> 3);
  v17 = a1[1] - *a1;
  v18 = v15 >= v17 >> 3 ? (v17 >> 3) - 1 : v15;
  if (v14 > v18)
  {
    return 0;
  }

  v19 = 0;
  do
  {
    v21 = *a1;
    if (a6)
    {
      v22 = sub_2215C2EF0(a6, **(v21 + 8 * v14), *(*(v21 + 8 * v14) + 4));
      v21 = *a1;
    }

    else
    {
      v22 = 0;
    }

    v19 += sub_2215C1D20(*(v21 + 8 * v14++), a2, a3, a4, a5, v22, v16);
  }

  while (v14 <= v18);
  return v19;
}

void *sub_2215C3810(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

id sub_2215C3854(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = *(a1 + 8);
  v3 = NSStringFromTSUCellCoord();
  v6 = objc_msgSend_stringWithFormat_(v1, v4, @"TSCEInternalCellReference: #%lu::%@", v5, v2, v3);

  return v6;
}

int *sub_2215C38E0(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) |= 1u;
  v4 = *(a2 + 24);
  if (!v4)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v5);
    *(a2 + 24) = v4;
  }

  result = sub_221269820(a1, v4);
  v7 = *(a1 + 8);
  *(a2 + 16) |= 2u;
  *(a2 + 32) = v7;
  return result;
}

unint64_t sub_2215C3954(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = *(a1 + 24);
  }

  else
  {
    v1 = &TSCE::_CellCoordinateArchive_default_instance_;
  }

  return sub_2212697C0(v1);
}

void sub_2215C4288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, TSUIndexSet *a16, uint64_t a17, uint64_t a18, void *a19)
{
  sub_22107C860(v22 - 104, *(v22 - 96));

  _Unwind_Resume(a1);
}

TSTConcurrentSparseCellList *sub_2215C42FC()
{
  v0 = [TSTConcurrentSparseCellList alloc];
  *v4 = 0u;
  *__p = 0u;
  v6 = 0u;
  v2 = objc_msgSend_initWithContext_viewCellRect_cellUIDRange_(v0, v1, 0, 0x7FFF7FFFFFFFLL, 0, v4);
  if (__p[1])
  {
    *&v6 = __p[1];
    operator delete(__p[1]);
  }

  if (v4[0])
  {
    v4[1] = v4[0];
    operator delete(v4[0]);
  }

  return v2;
}

void sub_2215C439C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = a4;
  v12 = *(a1 + 48);
  v11 = *(a1 + 56);
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "TSUCellRect TSUMakeCellRectFromNSRanges(NSRange, NSRange)", v9);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 168, 0, "Invalid column range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "TSUCellRect TSUMakeCellRectFromNSRanges(NSRange, NSRange)", v9);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 169, 0, "Invalid row range");
    v28 = 0x7FFF7FFFFFFFLL;

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
    v32 = 0;
  }

  else
  {
    v34 = v12 == 0x7FFFFFFFFFFFFFFFLL || v11 == 0 || a3 == 0;
    v35 = v11 | (a3 << 32);
    if (v34)
    {
      v28 = 0x7FFF7FFFFFFFLL;
    }

    else
    {
      v28 = a2 | (v12 << 32);
    }

    if (v34)
    {
      v32 = 0;
    }

    else
    {
      v32 = v35;
    }
  }

  v36 = objc_msgSend_columnRowUIDMap(*(a1 + 32), v7, v8, v9);
  v38 = v36;
  if (v36)
  {
    objc_msgSend_cellUIDRangeForCellRange_(v36, v37, v28, v32);
  }

  else
  {
    *v65 = 0u;
    v66 = 0u;
    *v64 = 0u;
  }

  v42 = objc_msgSend_rowCount(v10, v39, v40, v41);
  v58 = 0;
  v59 = 0;
  v60 = 0;
  sub_221086EBC(&v58, v64[0], v64[1], (v64[1] - v64[0]) >> 4);
  __p = 0;
  v62 = 0;
  v63 = 0;
  sub_221086EBC(&__p, v65[1], v66, (v66 - v65[1]) >> 4);
  objc_msgSend_appendCellUIDRange_(v10, v43, &v58, v44);
  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  v45 = a2 + a3;
  if (a2 + a3 > a2)
  {
    v46 = a2;
    v56 = v42 - a2;
    v47 = *(a1 + 48);
    v48 = *(a1 + 56);
    v55 = a2 + a3;
    do
    {
      if (v48 + v47 > v47)
      {
        v49 = v47;
        v50 = v47;
        do
        {
          v51 = *(a1 + 40) + 40 * ((a2 ^ (v50 << 8)) % 0x14);
          v57 = v46 | (v49 << 32);
          v52 = sub_221087F14((v51 + 88), &v57);
          if (v52)
          {
            v53 = v52[3];
            objc_msgSend_addCell_atUidOffset_(v10, v54, v53, (v50 - *(a1 + 64)) | ((v56 + a2) << 32));
          }

          v49 = ++v50;
          v47 = *(a1 + 48);
          v48 = *(a1 + 56);
        }

        while (v48 + v47 > v50);
        v45 = v55;
      }

      LODWORD(a2) = a2 + 1;
      v46 = a2;
    }

    while (v45 > a2);
  }

  if (v65[1])
  {
    *&v66 = v65[1];
    operator delete(v65[1]);
  }

  if (v64[0])
  {
    v64[1] = v64[0];
    operator delete(v64[0]);
  }
}

double sub_2215C4B34(double *a1, int a2, double a3)
{
  v4 = *a1;
  v3 = a1 + 1;
  v5 = v4;
  do
  {
    v6 = *v3++;
    v5 = v6 + v5 * a3;
    --a2;
  }

  while (a2);
  return v5;
}

double sub_2215C4B50(double *a1, int a2, double a3)
{
  v4 = *a1;
  v3 = a1 + 1;
  v5 = v4 + a3;
  v6 = a2 - 1;
  do
  {
    v7 = *v3++;
    v5 = v7 + v5 * a3;
    --v6;
  }

  while (v6);
  return v5;
}

void sub_2215C4CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2215C4CDC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2215C4CF4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = a3;
  v7 = a2;
  v11 = objc_msgSend_string(v7, v8, v9, v10);
  objc_msgSend_width(v7, v12, v13, v14);
  v16 = v15;
  objc_msgSend_height(v7, v17, v18, v19);
  v21 = v20;
  objc_msgSend_verticalAlignment(v7, v22, v23, v24);
  v25 = TSWPStringFromTSWPVerticalAlignment();
  objc_msgSend_writingDirection(v7, v26, v27, v28);

  v29 = TSWPStringFromTSWPWritingDirection();
  objc_msgSend_appendFormat_(v5, v30, @"  { key: string   : %@\n         width    : %f\n         height   : %f\n         vertical : %@\n         direction : %@\n", v31, v11, v16, v21, v25, v29);

  v32 = *(*(*(a1 + 32) + 8) + 40);
  v42 = objc_msgSend_storage(v6, v33, v34, v35);
  v39 = objc_msgSend_string(v42, v36, v37, v38);
  objc_msgSend_appendFormat_(v32, v40, @"wpColumn:  object : %@\n           string : %@\n  },\n", v41, v6, v39);
}

void sub_2215C4EA0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    os_unfair_lock_lock((a1 + 8));
    v4 = *a1;
    if (*a1)
    {
      sub_221122744(v4 + 40);
      v5 = sub_221122744(v4);
      MEMORY[0x223DA1450](v5, 0x10A0C40864A76ABLL);
    }

    *a1 = 0;
    os_unfair_lock_lock((a2 + 8));
    *a1 = *a2;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 38) = *(a2 + 38);
    os_unfair_lock_unlock((a1 + 8));
    *a2 = 0;
    os_unfair_lock_unlock((a2 + 8));
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 36) = *(a2 + 36);
  }
}

uint64_t sub_2215C4F5C(os_unfair_lock_s *a1)
{
  if (!*&a1->_os_unfair_lock_opaque)
  {
    return 40;
  }

  os_unfair_lock_lock(a1 + 2);
  v2 = *&a1->_os_unfair_lock_opaque;
  v3 = sub_2212E0238(*&a1->_os_unfair_lock_opaque);
  v4 = 8 * (sub_2212E0238(v2 + 40) + v3) + 120;
  os_unfair_lock_unlock(a1 + 2);
  return v4;
}

TSCECellCoordSet *sub_2215C4FCC(TSCECellCoordSet *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if ((result->_rowsPerColumn.__tree_.__size_ & 0x10000000000000) != 0)
  {
    v4 = a2;
    v5 = result;
    if (result->_rectRepresentation.origin)
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCECellRecord::switchToEdgeListStructure(TSCECellRecordEdgeLists *)", a4);
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellRecord.mm", v9);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 99, 0, "Overriding existing _edges pointer");

      result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
    }

    if (!v4)
    {
      operator new();
    }

    v5->_rectRepresentation.origin = v4;
    v15 = WORD2(v5->_rowsPerColumn.__tree_.__end_node_.__left_);
    v17.row = v5->_rowsPerColumn.__tree_.__end_node_.__left_;
    v17.column = HIWORD(v5->_rowsPerColumn.__tree_.__end_node_.__left_);
    v18 = v15;
    size_high = HIWORD(v5->_rowsPerColumn.__tree_.__size_);
    if ((size_high & 0x20) == 0)
    {
      if ((size_high & 0x40) == 0)
      {
LABEL_10:
        HIWORD(v5->_rowsPerColumn.__tree_.__size_) &= 0xFF8Fu;
        return result;
      }

      v4 += 40;
    }

    result = sub_2212DFCE8(v4, &v17);
    goto LABEL_10;
  }

  return result;
}

void sub_2215C5120(uint64_t a1, const char *a2)
{
  if (a2)
  {
    os_unfair_lock_lock((a1 + 8));
    if ((*(a1 + 38) & 0x10) == 0)
    {
      os_unfair_lock_unlock((a1 + 8));
      sub_2215C51E0(a1, (a2 + 40), 0);
      sub_221122744((a2 + 40));
      sub_221122744(a2);

      JUMPOUT(0x223DA1450);
    }

    sub_2212E0194(a2);
    sub_2215C4FCC(a1, a2, v4, v5);

    os_unfair_lock_unlock((a1 + 8));
  }
}

void sub_2215C51E0(uint64_t a1, uint64_t a2, int a3)
{
  if (sub_2212E0238(a2) > 1)
  {
    os_unfair_lock_lock((a1 + 8));
    sub_2215C4FCC(a1, 0, v6, v7);
    v8 = *a1;
    if (!a3)
    {
      v8 += 5;
    }

    sub_2212DFD90(v8, a2);

    os_unfair_lock_unlock((a1 + 8));
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2215C5424;
    v9[3] = &unk_278467648;
    v9[4] = a1;
    v10 = a3;
    sub_2212DFEC0(a2, v9);
  }
}

void sub_2215C52D0(uint64_t a1, TSUCellCoord *a2, int a3)
{
  os_unfair_lock_lock((a1 + 8));
  v8 = *(a1 + 38);
  if ((v8 & 0x70) == 0x10)
  {
    *(a1 + 24) = (LOWORD(a2[1].row) << 32) | (a2->column << 48) | a2->row;
    if (a3)
    {
      v9 = v8 | 0x20;
    }

    else
    {
      v9 = v8 | 0x40;
    }

    *(a1 + 38) = v9;
  }

  else
  {
    sub_2215C4FCC(a1, 0, v6, v7);
    v12 = *a1;
    if (*a1 || (v13 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "void TSCECellRecord::addEdge(const TSCEInternalCellReference &, BOOL)", v11), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellRecord.mm", v16), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 162, 0, "Should already have an _edges structure allocated"), v17, v14, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21), (v12 = *a1) != 0))
    {
      if (!a3)
      {
        v12 += 5;
      }

      sub_2212DFCE8(v12, a2);
    }
  }

  os_unfair_lock_unlock((a1 + 8));
}

void sub_2215C5434(uint64_t a1, uint64_t a2, int a3)
{
  os_unfair_lock_lock((a1 + 8));
  v6 = *(a1 + 38);
  if ((v6 & 0x10) != 0)
  {
    if (a3)
    {
      if ((v6 & 0x20) == 0 || *(a1 + 24) != *a2 || (*a2 & 0x101FFFF00000000) != *(a1 + 30) << 32 || *(a2 + 8) != *(a1 + 28))
      {
        goto LABEL_18;
      }

      *(a1 + 24) = 0x7FFFFFFF7FFFFFFFLL;
      v8 = v6 & 0xFFDF;
    }

    else
    {
      if ((v6 & 0x40) == 0 || *(a1 + 24) != *a2 || (*a2 & 0x101FFFF00000000) != *(a1 + 30) << 32 || *(a2 + 8) != *(a1 + 28))
      {
        goto LABEL_18;
      }

      *(a1 + 24) = 0x7FFFFFFF7FFFFFFFLL;
      v8 = v6 & 0xFFBF;
    }

    *(a1 + 38) = v8;
    goto LABEL_18;
  }

  v7 = *a1;
  if (*a1)
  {
    if (!a3)
    {
      v7 += 5;
    }

    sub_2212DFDD0(v7, a2);
  }

LABEL_18:

  os_unfair_lock_unlock((a1 + 8));
}

void sub_2215C5538(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = *(a2 + 16);
  if (v5 >= 1)
  {
    v13 = v3;
    v14 = v4;
    v9 = 0;
    v10 = 4 * v5;
    do
    {
      v11.row = *(*(a2 + 24) + v9);
      v11.column = *(*(a2 + 40) + v9);
      v12 = a3;
      sub_2215C52D0(a1, &v11, 1);
      v9 += 4;
    }

    while (v10 != v9);
  }
}

void sub_2215C55C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 48);
  if (*(a2 + 80) != v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCECellRecord::readExpandedPrecedentsWithOwners(const TSCE::ExpandedEdgesArchive &)", a4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellRecord.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 250, 0, "corrupted file");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  if (v6 >= 1)
  {
    v16 = 0;
    do
    {
      v17.row = *(*(a2 + 56) + v16);
      v17.column = *(*(a2 + 72) + v16);
      v18 = *(*(a2 + 88) + v16);
      sub_2215C52D0(a1, &v17, 1);
      v16 += 4;
    }

    while (4 * v6 != v16);
  }
}

uint64_t ***sub_2215C56F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 38);
  if ((v2 & 0x10) != 0)
  {
    if ((v2 & 0x20) != 0 && *(a1 + 24) == *a2 && (*a2 & 0x101FFFF00000000) == *(a1 + 30) << 32)
    {
      return (*(a2 + 8) == *(a1 + 28));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = *a1;
    if (result)
    {
      return sub_2212E0198(result, a2);
    }
  }

  return result;
}

void sub_2215C574C(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 8));
  v4 = *(a1 + 38);
  if ((v4 & 0x10) != 0)
  {
    if ((v4 & 0x20) != 0)
    {
      v8 = 0;
      v5 = *(a1 + 28);
      v6 = *(a1 + 24) | (*(a1 + 30) << 32);
      v7 = v5;
      v3[2](v3, &v6, &v8);
    }
  }

  else if (*a1)
  {
    sub_2212DFEC0(*a1, v3);
  }

  os_unfair_lock_unlock((a1 + 8));
}

void sub_2215C57F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 38);
  if ((v5 & 0x10) != 0)
  {
    if ((v5 & 0x40) != 0)
    {
      v9 = 0;
      v6 = *(a1 + 28);
      v7 = *(a1 + 24) | (*(a1 + 30) << 32);
      v8 = v6;
      (*(v3 + 2))(v3, &v7, &v9);
    }
  }

  else if (*a1)
  {
    sub_2212DFEC0(*a1 + 40, v3);
  }
}

void sub_2215C5898(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 38);
  if ((v4 & 0x10) != 0)
  {
    if ((v4 & 0x20) != 0)
    {
      v9 = 0;
      v5 = *(a1 + 28);
      v7.row = *(a1 + 24);
      v7.column = *(a1 + 30);
      v8 = v5;
      v6._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
      v6._rowsPerColumn.__tree_.__size_ = 0;
      v6._rectRepresentation.origin = 0;
      v6._rectRepresentation.size = 0;
      v6._rowsPerColumn.__tree_.__begin_node_ = &v6._rowsPerColumn.__tree_.__end_node_;
      TSCECellCoordSet::addCellCoord(&v6, &v7);
      v3[2](v3, v8, &v6, &v9);
      sub_22107C860(&v6._rowsPerColumn, v6._rowsPerColumn.__tree_.__end_node_.__left_);
    }
  }

  else if (*a1)
  {
    sub_2212E03B0(*a1, v3);
  }
}

void sub_2215C5978(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 38);
  if ((v4 & 0x10) != 0)
  {
    if ((v4 & 0x40) != 0)
    {
      v9 = 0;
      v5 = *(a1 + 28);
      v7.row = *(a1 + 24);
      v7.column = *(a1 + 30);
      v8 = v5;
      v6._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
      v6._rowsPerColumn.__tree_.__size_ = 0;
      v6._rectRepresentation.origin = 0;
      v6._rectRepresentation.size = 0;
      v6._rowsPerColumn.__tree_.__begin_node_ = &v6._rowsPerColumn.__tree_.__end_node_;
      TSCECellCoordSet::addCellCoord(&v6, &v7);
      v3[2](v3, v8, &v6, &v9);
      sub_22107C860(&v6._rowsPerColumn, v6._rowsPerColumn.__tree_.__end_node_.__left_);
    }
  }

  else if (*a1)
  {
    sub_2212E03B0(*a1 + 40, v3);
  }
}

void sub_2215C5A5C(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 8));
  *a1 = a2;
  v4 = *(a1 + 38) & 0xFF8F;
  if (!a2)
  {
    v4 |= 0x10u;
  }

  *(a1 + 38) = v4;

  os_unfair_lock_unlock((a1 + 8));
}

uint64_t sub_2215C5AB8(uint64_t a1)
{
  v1 = *(a1 + 38);
  if ((v1 & 0x10) != 0)
  {
    return (v1 >> 5) & 1;
  }

  result = *a1;
  if (result)
  {
    return !sub_2212E0280(result);
  }

  return result;
}

BOOL sub_2215C5AF0(uint64_t a1)
{
  v1 = *(a1 + 38);
  if ((v1 & 0x10) != 0)
  {
    return (v1 >> 6) & 1;
  }

  if (*a1)
  {
    return !sub_2212E0280(*a1 + 40);
  }

  return 0;
}

void *sub_2215C5B34(uint64_t a1, void *a2)
{
  v3 = *(a1 + 38);
  if ((v3 & 0x10) != 0)
  {
    if ((v3 & 0x20) != 0)
    {
      v5 = *(a1 + 28);
      v6.row = *(a1 + 24);
      v6.column = *(a1 + 30);
      v7 = v5;
      sub_2212DFCE8(a2, &v6);
    }
  }

  else
  {
    result = *a1;
    if (result)
    {
      return result;
    }
  }

  return a2;
}

void *sub_2215C5B9C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 38);
  if ((v3 & 0x10) != 0)
  {
    if ((v3 & 0x40) != 0)
    {
      v4 = *(a1 + 28);
      v6.row = *(a1 + 24);
      v6.column = *(a1 + 30);
      v7 = v4;
      sub_2212DFCE8(a2, &v6);
    }
  }

  else if (*a1)
  {
    return (*a1 + 40);
  }

  return v2;
}

void sub_2215C5C0C(uint64_t a1, void *a2)
{
  v5 = *(a1 + 38);
  if ((v5 & 0x10) != 0)
  {
    if ((v5 & 0x40) != 0)
    {
      v10 = v2;
      v11 = v3;
      v7 = *(a1 + 28);
      v8.row = *(a1 + 24);
      v8.column = *(a1 + 30);
      v9 = v7;
      sub_2212DFCE8(a2, &v8);
    }
  }

  else if (*a1)
  {
    v6 = *a1 + 40;

    sub_2212DFD90(a2, v6);
  }
}

BOOL sub_2215C5CA0(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *(a1 + 8);
  return v2 == *(a2 + 8) && memcmp(*a1, *a2, v2) == 0;
}

uint64_t sub_2215C5CF4(TSCEASTNodeArray *a1, TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_2215C5CA0(a1, a2))
  {
    return 1;
  }

  v10 = 0;
  if (a1 && a2)
  {
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v20);
    sub_22134B2F4(v19, a1, &v20);
    sub_22134B2F4(v18, a2, &v20);
    v11 = sub_22134B3CC(v19);
    v12 = sub_22134B3CC(v18);
    v13 = v12;
    v14 = v12 != 0;
    v15 = 1;
    if (v11 && v12)
    {
      while (1)
      {
        v15 = (*(*v11 + 120))(v11, v19, v18, v13, a3, a4, a5);
        if (!v15)
        {
          break;
        }

        v11 = sub_22134B3CC(v19);
        v16 = sub_22134B3CC(v18);
        v13 = v16;
        v14 = v16 != 0;
        if (!v11 || !v16)
        {
          goto LABEL_12;
        }
      }

      v14 = 1;
    }

LABEL_12:
    v10 = v15 & ((v11 == 0) ^ v14);
    sub_22134B390(v18);
    sub_22134B390(v19);
  }

  return v10;
}

void sub_2215C5E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  sub_22134B390(&a10);
  sub_22134B390(va);
  _Unwind_Resume(a1);
}

void sub_2215C5E78(uint64_t a1, void *a2)
{
  v13 = a2;
  if (v13)
  {
    v5 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v3, a1, v4);
    v9 = objc_msgSend_versionShippedIn(v5, v6, v7, v8);
    if (v9 <= 7)
    {
      if (v9 == 7)
      {
        v12 = MEMORY[0x277D808F0];
      }

      else if (v9 <= 4)
      {
        if (v9 != 4)
        {
          goto LABEL_11;
        }

        v12 = MEMORY[0x277D80958];
      }

      else
      {
        v12 = MEMORY[0x277D80970];
      }
    }

    else
    {
      v12 = MEMORY[0x277D80900];
    }

    objc_msgSend_requiresDocumentVersion_(v13, v10, *v12, v11);
  }

LABEL_11:
}

void sub_2215C5F44(uint64_t a1, void *a2, TSCEASTFunctionElement *a3, uint64_t a4, const void **a5, uint64_t a6)
{
  v367 = *MEMORY[0x277D85DE8];
  v11 = a2;
  if (!a3)
  {
    goto LABEL_114;
  }

  v15 = TSCEASTElement::tag(a3, a4);
  v16 = *(a1 + 32);
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = *(a1 + 24);
  v18 = *v16;
  if (v17 < *v16)
  {
    *(a1 + 24) = v17 + 1;
    v19 = *&v16[2 * v17 + 2];
    goto LABEL_9;
  }

  if (v18 == *(a1 + 28))
  {
LABEL_7:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
    v16 = *(a1 + 32);
    v18 = *v16;
  }

  *v16 = v18 + 1;
  v19 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTNodeArchive>(*(a1 + 16));
  v20 = *(a1 + 24);
  v21 = *(a1 + 32) + 8 * v20;
  *(a1 + 24) = v20 + 1;
  *(v21 + 8) = v19;
LABEL_9:
  switch(v15)
  {
    case 1:
      v19[2].i32[1] |= 0x800u;
      v85 = 1;
      goto LABEL_113;
    case 2:
      v19[2].i32[1] |= 0x800u;
      v85 = 2;
      goto LABEL_113;
    case 3:
      v19[2].i32[1] |= 0x800u;
      v85 = 3;
      goto LABEL_113;
    case 4:
      v19[2].i32[1] |= 0x800u;
      v85 = 4;
      goto LABEL_113;
    case 5:
      v19[2].i32[1] |= 0x800u;
      v85 = 5;
      goto LABEL_113;
    case 6:
      v19[2].i32[1] |= 0x800u;
      v85 = 6;
      goto LABEL_113;
    case 7:
      v19[2].i32[1] |= 0x800u;
      v85 = 7;
      goto LABEL_113;
    case 8:
      v19[2].i32[1] |= 0x800u;
      v85 = 8;
      goto LABEL_113;
    case 9:
      v19[2].i32[1] |= 0x800u;
      v85 = 9;
      goto LABEL_113;
    case 10:
      v19[2].i32[1] |= 0x800u;
      v85 = 10;
      goto LABEL_113;
    case 11:
      v19[2].i32[1] |= 0x800u;
      v85 = 11;
      goto LABEL_113;
    case 12:
      v19[2].i32[1] |= 0x800u;
      v85 = 12;
      goto LABEL_113;
    case 13:
      v19[2].i32[1] |= 0x800u;
      v85 = 13;
      goto LABEL_113;
    case 14:
      v19[2].i32[1] |= 0x800u;
      v85 = 14;
      goto LABEL_113;
    case 15:
      v19[2].i32[1] |= 0x800u;
      v85 = 15;
      goto LABEL_113;
    case 16:
    case 17:
    case 33:
    case 34:
      v22 = TSCEASTFunctionElement::functionIndex(a3, a4, v13, v14);
      v23 = (*(*a3 + 48))(a3, a4);
      v26 = TSCEASTFunctionElement::whitespace(a3, a4, v24, v25);
      v30 = v26;
      v19[36].i32[0] = 16;
      v19[2] = vorr_s8(v19[2], 0x80000300000);
      v19[24].i32[0] = v22;
      v19[24].i32[1] = v23;
      if (v26)
      {
        v31 = objc_msgSend_tsp_protobufString(v26, v27, v28, v29);
        v19[2].i32[0] |= 8u;
        sub_22108CCD0(&__p, v31);
        google::protobuf::internal::ArenaStringPtr::Set();
        if (v364 < 0)
        {
          operator delete(__p._lower);
        }
      }

      sub_2215C5E78(v22, v11);

      goto LABEL_114;
    case 18:
      __p._lower = TSCEASTNumberElement::value(a3, a4, v13, v14);
      __p._upper = v187;
      v19[2].i32[1] |= 0x800u;
      v19[36].i32[0] = 17;
      TSUDecimal::doubleValue(&__p);
      v19[2].i32[0] |= 0x400000u;
      v19[25] = v188;
      v189 = TSUDecimal::low(&__p);
      v19[2].i32[1] |= 0x200u;
      v19[34] = v189;
      v190 = TSUDecimal::high(&__p);
      v19[2].i32[1] |= 0x400u;
      v19[35] = v190;
      goto LABEL_114;
    case 19:
      v118 = TSCEASTBooleanElement::value(a3, a4, v13, v14);
      v19[36].i32[0] = 18;
      v19[2] = vorr_s8(v19[2], 0x80040000000);
      v19[30].i8[4] = v118;
      goto LABEL_114;
    case 20:
      v77 = TSCEASTStringElement::string(a3, a4, v13, v14);
      v19[2].i32[1] |= 0x800u;
      v19[36].i32[0] = 19;
      v126 = objc_msgSend_tsp_protobufString(v77, v123, v124, v125);
      sub_2215C7A38(v19, v126);
      goto LABEL_139;
    case 21:
      v173 = TSCEASTDateElement::valueAsIntervalSinceReferenceDate(a3, a4, v13, v14);
      v87 = TSCEASTDateElement::dateTimeFormat(a3, a4, v174, v175);
      v178 = TSCEASTDateElement::suppressDateFormat(a3, a4, v176, v177);
      v184 = TSCEASTDateElement::suppressTimeFormat(a3, a4, v179, v180);
      v19[36].i32[0] = 20;
      v185 = vorr_s8(v19[2], 0x80000800000);
      v19[2] = v185;
      *&v19[26] = v173;
      if (v87)
      {
        v186 = objc_msgSend_tsp_protobufString(v87, v181, v182, v183);
        sub_2215C7AC0(v19, v186);
        v185 = v19[2];
      }

      v19[30].i8[5] = v178;
      v19[2] = vorr_s8(v185, 0x180000000);
      v19[30].i8[6] = v184;
      goto LABEL_103;
    case 22:
      v166 = TSCEASTDurationElement::unitNum(a3, a4, v13, v14);
      v169 = TSCEASTDurationElement::unit(a3, a4, v167, v168);
      v172 = TSCEASTDurationElement::durationFormat(a3, a4, v170, v171);
      v19[36].i32[0] = 21;
      *&v19[27] = v166;
      v19[28].i32[0] = v169;
      v19[32].i32[1] = (v172 >> 1) & 0x3F;
      v19[31] = vand_s8(vshl_u32(vdup_n_s32(v172), 0xFFFFFFF8FFFFFFF0), 0x3F00000007);
      v19[2] = vorr_s8(v19[2], 0x84E03000000);
      v19[30].i8[7] = v172 & 1;
      goto LABEL_114;
    case 23:
      v19[2].i32[1] |= 0x800u;
      v85 = 22;
      goto LABEL_113;
    case 24:
      isOptional = TSCEASTTokenElement::isOptional(a3, a4, v13, v14);
      v165 = v19[2].i32[1];
      v19[36].i32[0] = 23;
      v19[2].i32[1] = v165 | 0x810;
      v19[32].i8[0] = isOptional;
      goto LABEL_114;
    case 25:
      v114 = TSCEASTArrayElement::numColumns(a3, a4, v13, v14);
      v117 = TSCEASTArrayElement::numRows(a3, a4, v115, v116);
      v19[36].i32[0] = 24;
      v19[2] = vorr_s8(v19[2], 0x8000C000000);
      v19[28].i32[1] = v114;
      v19[29].i32[0] = v117;
      goto LABEL_114;
    case 26:
      v93 = (*(*a3 + 48))(a3, a4);
      v19[36].i32[0] = 25;
      v19[2] = vorr_s8(v19[2], 0x80010000000);
      v19[29].i32[1] = v93;
      goto LABEL_114;
    case 27:
      v19[2].i32[1] |= 0x800u;
      v19[36].i32[0] = 34;
      LODWORD(__p._lower) = 1;
      sub_2210C47D0(a5, &__p);
      goto LABEL_99;
    case 28:
      v19[2].i32[1] |= 0x800u;
      v85 = 29;
      goto LABEL_113;
    case 29:
    case 36:
      v37 = TSCEASTElement::refFlags(a3, a4);
      v40 = TSCEASTRelativeCoordRefElement::relativeCoord(a3, a4, v38, v39);
      v41 = v40;
      v42 = HIDWORD(v40);
      v43 = WORD2(v40) == 0x7FFF && v40 == 0x7FFFFFFF;
      v44 = !v43;
      if (v43)
      {
        v19[2].i32[1] |= 0x800u;
        if ((v37 & 0x33) != 0)
        {
          v45 = 46;
        }

        else
        {
          v45 = 30;
        }
      }

      else
      {
        v19[2].i32[1] |= 0x800u;
        v45 = 36;
      }

      v19[36].i32[0] = v45;
      if ((v37 & 2) != 0)
      {
        v294 = (*(*a3 + 96))(a3, a4);
        if (objc_msgSend_tractCount(v294, v295, v296, v297))
        {
          v298 = sub_2215C7B48(v19);
          objc_msgSend_saveToArchive_(v294, v299, v298, v300);
        }
      }

      v301 = (v37 & 0x20) >> 5;
      if ((v37 & 0xC) == 4 || (v302 = sub_2215C7B98(v19), v303 = *(v302 + 16), *(v302 + 24) = v42, *(v302 + 16) = v303 | 3, *(v302 + 28) = (v37 & 0x10) >> 4, (v37 & 0xC) != 8))
      {
        v304 = sub_2215C7BE8(v19);
        v305 = *(v304 + 16);
        *(v304 + 24) = v41;
        *(v304 + 16) = v305 | 3;
        *(v304 + 28) = v301;
      }

      if (v37 >= 0x40u)
      {
        v306 = sub_2215C7C38(v19);
        v307 = *(v306 + 16);
        *(v306 + 25) = (v37 & 0x40) >> 6;
        *(v306 + 24) = (v37 & 0x80) != 0;
        *(v306 + 16) = v307 | 0xF;
        *(v306 + 26) = 0;
      }

      if (v37)
      {
        v308 = sub_2215C7C88(v19);
        __p._lower = TSCEASTRelativeCoordRefElement::tableUID(a3, a4, v309, v310);
        __p._upper = v311;
        v312 = sub_2215C7CD8(v308);
        TSKUIDStruct::saveToMessage(&__p, v312);
      }

      if (v37)
      {
        v313 = v44;
      }

      else
      {
        v313 = 1;
      }

      if ((v313 & 1) == 0)
      {
        v314 = sub_2215C7D28(v19);
        v315 = *(v314 + 16);
        *(v314 + 25) = (v37 & 0x10) >> 4;
        *(v314 + 24) = v301;
        *(v314 + 27) = (v37 & 0x40) >> 6;
        *(v314 + 16) = v315 | 0xF;
        *(v314 + 26) = (v37 & 0x80) != 0;
      }

      goto LABEL_114;
    case 30:
      v87 = TSCEASTUnknownFunctionElement::unknownFunctionName(a3, a4, v13, v14);
      v88 = (*(*a3 + 48))(a3, a4);
      v19[2].i32[1] |= 0x800u;
      v19[36].i32[0] = 31;
      v92 = objc_msgSend_tsp_protobufString(v87, v89, v90, v91);
      sub_2215C8098(v19, v92);
      v19[2].i32[0] |= 0x20000000u;
      v19[30].i32[0] = v88;
LABEL_103:

      goto LABEL_114;
    case 31:
      v77 = TSCEASTWhitespaceElement::whitespace(a3, a4, v13, v14);
      v19[2].i32[1] |= 0x800u;
      v19[36].i32[0] = 33;
      v122 = objc_msgSend_tsp_protobufString(v77, v119, v120, v121);
      sub_2215C79B0(v19, v122);
      goto LABEL_139;
    case 32:
      v77 = TSCEASTWhitespaceElement::whitespace(a3, a4, v13, v14);
      v19[2].i32[1] |= 0x800u;
      v19[36].i32[0] = 32;
      v280 = objc_msgSend_tsp_protobufString(v77, v277, v278, v279);
      sub_2215C79B0(v19, v280);
      goto LABEL_139;
    case 45:
      v77 = (*(*a3 + 96))(a3, a4);
      if (objc_msgSend_tractCount(v77, v78, v79, v80))
      {
        v81 = sub_2215C7B48(v19);
        objc_msgSend_saveToArchive_(v77, v82, v81, v83);
        v84 = 45;
      }

      else
      {
        v84 = 29;
      }

      v19[2].i32[1] |= 0x800u;
      v19[36].i32[0] = v84;
LABEL_139:

      goto LABEL_114;
    case 50:
      v46 = (*(*a3 + 96))(a3, a4);
      v96 = TSCEASTElement::refFlags(a3, a4);
      v99 = TSCEASTUidReferenceElement::preserveFlags(a3, a4, v97, v98);
      v19[2].i32[1] |= 0x800u;
      v19[36].i32[0] = 48;
      v100 = sub_2215C7B48(v19);
      objc_msgSend_saveToArchive_(v46, v101, v100, v102);
      v103 = sub_2215C7D28(v19);
      v106 = *(v103 + 16);
      *(v103 + 25) = v99 & 1;
      *(v103 + 24) = (v99 & 2) != 0;
      *(v103 + 27) = (v99 & 4) != 0;
      *(v103 + 16) = v106 | 0xF;
      *(v103 + 26) = (v99 & 8) != 0;
      if (v96)
      {
        __p._lower = TSCEASTUidReferenceElement::tableUID(a3, a4, v104, v105);
        __p._upper = v107;
        v108 = sub_2215C7C88(v19);
        v109 = sub_2215C7CD8(v108);
        TSKUIDStruct::saveToMessage(&__p, v109);
      }

      v110 = TSCEASTUidReferenceElement::colonTractFlags(a3, a4, v104, v105);
      v111 = v110;
      if (v96 > 0x3Fu || v110 >= 0x40u)
      {
        v112 = sub_2215C7C38(v19);
        v113 = *(v112 + 16);
        *(v112 + 25) = (v96 & 0x40) != 0;
        *(v112 + 24) = (v96 & 0x80) != 0;
        *(v112 + 27) = (v111 & 0x40) != 0;
        *(v112 + 16) = v113 | 0xF;
        *(v112 + 26) = (v111 & 0x80) != 0;
      }

      goto LABEL_40;
    case 52:
      v191 = TSCEASTLetBindElement::identifier(a3, a4, v13, v14);
      v194 = TSCEASTLetBindElement::symbol(a3, a4, v192, v193);
      isContinuation = TSCEASTLetBindElement::isContinuation(a3, a4, v195, v196);
      *(a4 + 152) |= 1u;
      v201 = v19[2].i32[1] | 0x800;
      v19[2].i32[1] = v201;
      v19[36].i32[0] = 52;
      if (v191)
      {
        v202 = objc_msgSend_tsp_protobufString(v191, v197, v198, v199);
        sub_2215C8120(v19, v202);
        v201 = v19[2].i32[1];
      }

      v19[33].i32[0] = v194;
      v19[2].i32[1] = v201 | 0xA0;
      v19[32].i8[1] = isContinuation;
      TSCEASTLetBindElement::letWhitespace(a3, a4, v198, v199, &__p);
      if (__p._upper != __p._lower)
      {
        v203 = TSCEASTCompactWhitespace::encodeIntoCombinedString(&__p);
        v204 = v203;
        v208 = objc_msgSend_UTF8String(v203, v205, v206, v207);
        sub_2215C81A8(v19, v208);
      }

      v338[0] = &__p;
      sub_22107C2C0(v338);

      goto LABEL_114;
    case 53:
      v94 = TSCEASTVariableElement::symbol(a3, a4, v13, v14);
      v95 = v19[2].i32[1];
      v19[36].i32[0] = 53;
      v19[2].i32[1] = v95 | 0x880;
      v19[33].i32[0] = v94;
      goto LABEL_114;
    case 54:
      v19[2].i32[1] |= 0x800u;
      v85 = 54;
LABEL_113:
      v19[36].i32[0] = v85;
      goto LABEL_114;
    case 55:
      v127 = TSCEASTLambdaElement::identifiers(a3, a4, v13, v14);
      v19[2].i32[1] |= 0x800u;
      v19[36].i32[0] = 55;
      *(a4 + 152) |= 1u;
      v128 = sub_2215C9F6C(v19);
      v341 = 0u;
      v342 = 0u;
      v339 = 0u;
      v340 = 0u;
      v129 = v127;
      v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(v129, v130, &v339, v366, 16);
      if (!v134)
      {
        goto LABEL_85;
      }

      v135 = *v340;
      break;
    case 56:
      v19[2].i32[1] |= 0x800u;
      v19[36].i32[0] = 56;
      LODWORD(__p._lower) = 2;
      sub_2210C47D0(a5, &__p);
LABEL_99:
      LODWORD(__p._lower) = 0;
      sub_2210C47D0(a5, &__p);
      goto LABEL_114;
    case 63:
    case 64:
    case 65:
      __p._lower = (*(*a3 + 136))(a3, a4);
      __p._upper = v32;
      v19[36].i32[0] = (v15 - 63) + 63;
      *&v19[2] |= 0x80000000800uLL;
      v33 = v19[15];
      if (!v33)
      {
        v34 = v19[1];
        if (v34)
        {
          v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
        }

        v33 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive>(v34);
        v19[15] = v33;
      }

      *(v33 + 16) |= 0x10u;
      v35 = *(v33 + 56);
      if (!v35)
      {
        v36 = *(v33 + 8);
        if (v36)
        {
          v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
        }

        v35 = MEMORY[0x223DA0300](v36);
        *(v33 + 56) = v35;
      }

      TSKUIDStruct::saveToMessage(&__p, v35);
      goto LABEL_114;
    case 66:
      v210 = TSCEASTCategoryRefElement::categoryRef(a3, a4, v13, v14);
      v19[2].i32[1] |= 0x800u;
      v19[36].i32[0] = 66;
      v211 = sub_2215C9E7C(v19);
      v212 = sub_2215C9ECC(v211);
      sub_221269E08(v210, v212);
      *(a4 + 152) |= 2u;

      goto LABEL_114;
    case 67:
      v213 = TSCEASTColonTractElement::relativeTractRef(a3, a4, v13, v14);
      v214 = (*(*a3 + 96))(a3, a4);
      if (!objc_msgSend_isSingleCellOrSpanningRange(v213, v215, v216, v217) || (v221 = objc_msgSend_preserveFlags(v213, v218, v219, v220), ((v221 ^ (v221 >> 2)) & 3) != 0) || objc_msgSend_tractCount(v214, v218, v219, v220))
      {
        if (v213 || objc_msgSend_tractCount(v214, v218, v219, v220))
        {
          *(a4 + 152) |= 4u;
          v19[2].i32[1] |= 0x800u;
          v19[36].i32[0] = 67;
          if (objc_msgSend_tractCount(v214, v218, v219, v220))
          {
            v225 = sub_2215C7B48(v19);
            objc_msgSend_saveToArchive_(v214, v226, v225, v227);
          }

          if (objc_msgSend_hasTableUID(v213, v222, v223, v224))
          {
            v231 = sub_2215C7C88(v19);
            __p._lower = objc_msgSend_tableUID(v213, v232, v233, v234);
            __p._upper = v235;
            v236 = sub_2215C7CD8(v231);
            TSKUIDStruct::saveToMessage(&__p, v236);
          }

          v237 = objc_msgSend_preserveFlags(v213, v228, v229, v230);
          v238 = sub_2215C7D28(v19);
          v239 = *(v238 + 16);
          *(v238 + 25) = v237 & 1;
          *(v238 + 24) = (v237 & 2) != 0;
          *(v238 + 27) = (v237 & 4) != 0;
          *(v238 + 16) = v239 | 0xF;
          *(v238 + 26) = (v237 & 8) != 0;
          v240 = TSCEASTElement::refFlags(a3, a4);
          v243 = TSCEASTColonTractElement::colonTractFlags(a3, a4, v241, v242);
          v244 = v243;
          if (v240 > 0x3Fu || (v243 & 0x40) != 0)
          {
            v245 = sub_2215C7C38(v19);
            v246 = *(v245 + 16);
            *(v245 + 25) = (v240 & 0x40) != 0;
            *(v245 + 24) = (v240 & 0x80) != 0;
            *(v245 + 27) = (v244 & 0x40) != 0;
            *(v245 + 16) = v246 | 0xF;
            *(v245 + 26) = (v244 & 0x40) != 0;
          }

          v247 = sub_2215C9F1C(v19);
          if (v213)
          {
            v251 = v247;
            if ((objc_msgSend_verifySpanningSettings(v213, v248, v249, v250) & 1) == 0)
            {
              v255 = MEMORY[0x277D81150];
              v256 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v252, "void TSCEASTNodeArrayEncodeToArchiveProcessFirstNode(TSCE::ASTNodeArrayArchive *, TSPArchiver *__strong, TSCEASTElement *, TSCEASTElementIterator *, std::vector<TSCENodeArrayEncodingState> &, TSCEASTNodeArrayArchiveOptionsEnum)", v254);
              v259 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v257, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArrayUtilities.mm", v258);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v255, v260, v256, v259, 715, 0, "verifySpanningSettings failed while archiving, with options: %d", a6);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v261, v262, v263);
            }

            v264 = objc_msgSend_preserveRectangular(v213, v252, v253, v254);
            *(v251 + 16) |= 1u;
            *(v251 + 120) = v264;
            objc_msgSend_relativeColumns(v213, v265, v266, v267);
            v358 = MEMORY[0x277D85DD0];
            v359 = 3221225472;
            v360 = sub_2215C7D78;
            v361 = &unk_278461B50;
            v362 = v251;
            TSUIndexSet::enumerateRangesUsingBlock();
            objc_msgSend_relativeRows(v213, v268, v269, v270);
            v353 = MEMORY[0x277D85DD0];
            v354 = 3221225472;
            v355 = sub_2215C7E40;
            v356 = &unk_278461B50;
            v357 = v251;
            TSUIndexSet::enumerateRangesUsingBlock();
            objc_msgSend_columns(v213, v271, v272, v273);
            v348 = MEMORY[0x277D85DD0];
            v349 = 3221225472;
            v350 = sub_2215C7F08;
            v351 = &unk_278461B50;
            v352 = v251;
            TSUIndexSet::enumerateRangesUsingBlock();
            objc_msgSend_rows(v213, v274, v275, v276);
            v343 = MEMORY[0x277D85DD0];
            v344 = 3221225472;
            v345 = sub_2215C7FD0;
            v346 = &unk_278461B50;
            v347 = v251;
            TSUIndexSet::enumerateRangesUsingBlock();
          }
        }
      }

      else
      {
        v316 = objc_msgSend_relativeTopLeft(v213, v218, v219, v220);
        v320 = v316;
        v321 = HIDWORD(v316);
        v19[2].i32[1] |= 0x800u;
        v19[36].i32[0] = 36;
        if (WORD2(v316) != 0x7FFF)
        {
          v322 = sub_2215C7B98(v19);
          *(v322 + 16) |= 1u;
          *(v322 + 24) = v321;
          v326 = objc_msgSend_preserveFlags(v213, v323, v324, v325);
          *(v322 + 16) |= 2u;
          *(v322 + 28) = v326 & 1;
        }

        if (v320 != 0x7FFFFFFF)
        {
          v327 = sub_2215C7BE8(v19);
          *(v327 + 16) |= 1u;
          *(v327 + 24) = v320;
          v331 = objc_msgSend_preserveFlags(v213, v328, v329, v330);
          *(v327 + 16) |= 2u;
          *(v327 + 28) = (v331 & 2) != 0;
        }

        if (objc_msgSend_hasTableUID(v213, v317, v318, v319))
        {
          v332 = sub_2215C7C88(v19);
          __p._lower = objc_msgSend_tableUID(v213, v333, v334, v335);
          __p._upper = v336;
          v337 = sub_2215C7CD8(v332);
          TSKUIDStruct::saveToMessage(&__p, v337);
        }
      }

      goto LABEL_114;
    case 68:
      v46 = (*(*a3 + 96))(a3, a4);
      v47 = TSCEASTElement::refFlags(a3, a4);
      v50 = TSCEASTViewTractRefElement::preserveFlags(a3, a4, v48, v49);
      v19[2].i32[1] |= 0x800u;
      v19[36].i32[0] = 68;
      v51 = sub_2215C7B48(v19);
      objc_msgSend_saveToArchive_(v46, v52, v51, v53);
      v54 = sub_2215C7D28(v19);
      v57 = *(v54 + 16);
      *(v54 + 25) = v50 & 1;
      *(v54 + 24) = (v50 & 2) != 0;
      *(v54 + 27) = (v50 & 4) != 0;
      *(v54 + 16) = v57 | 0xF;
      *(v54 + 26) = (v50 & 8) != 0;
      if (v47)
      {
        __p._lower = TSCEASTViewTractRefElement::tableUID(a3, a4, v55, v56);
        __p._upper = v58;
        v59 = sub_2215C7C88(v19);
        v60 = sub_2215C7CD8(v59);
        TSKUIDStruct::saveToMessage(&__p, v60);
      }

      v61 = TSCEASTViewTractRefElement::colonTractFlags(a3, a4, v55, v56);
      v64 = v61;
      if (v47 > 0x3Fu || v61 >= 0x40u)
      {
        v65 = sub_2215C7C38(v19);
        v66 = *(v65 + 16);
        *(v65 + 25) = (v47 & 0x40) != 0;
        *(v65 + 24) = (v47 & 0x80) != 0;
        *(v65 + 27) = (v64 & 0x40) != 0;
        *(v65 + 16) = v66 | 0xF;
        *(v65 + 26) = (v64 & 0x80) != 0;
      }

      v67 = TSCEASTViewTractRefElement::columnGroupLevel(a3, a4, v62, v63);
      v70 = TSCEASTViewTractRefElement::rowGroupLevel(a3, a4, v68, v69);
      v73 = TSCEASTViewTractRefElement::aggIndexLevel(a3, a4, v71, v72);
      v74 = v73;
      if (v67 != 255 || v70 != 255 || v73 != 0xFFFF)
      {
        v75 = sub_2215C9E2C(v19);
        v76 = v75[4];
        v75[6] = v67;
        v75[7] = v70;
        v75[4] = v76 | 7;
        v75[8] = v74;
      }

LABEL_40:

      goto LABEL_114;
    case 69:
      v19[29].i32[1] = 1;
      v19[2] = vorr_s8(v19[2], 0x180010000000);
      v19[36] = 0x4500000019;
      v209 = TSCEASTIntersectionElement::rangeContext(a3, a4, v13, v14);
      v19[2].i32[1] |= 0x100u;
      v19[33].i32[1] = v209;
      v86 = *(a4 + 152) | 0x10;
      goto LABEL_111;
    case 70:
      v19[2].i32[1] |= 0x800u;
      v19[36].i32[0] = 70;
      v86 = *(a4 + 152) | 0x20;
LABEL_111:
      *(a4 + 152) = v86;
      goto LABEL_114;
    default:
      v281 = MEMORY[0x277D81150];
      v282 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "void TSCEASTNodeArrayEncodeToArchiveProcessFirstNode(TSCE::ASTNodeArrayArchive *, TSPArchiver *__strong, TSCEASTElement *, TSCEASTElementIterator *, std::vector<TSCENodeArrayEncodingState> &, TSCEASTNodeArrayArchiveOptionsEnum)", v14);
      v285 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v283, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArrayUtilities.mm", v284);
      v289 = TSCEASTNodeArray::codeString(*(a4 + 16), v286, v287, v288);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v281, v290, v282, v285, 841, 0, "%d is not a valid node tag, seen in: %{public}@", v15, v289);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v291, v292, v293);
      goto LABEL_114;
  }

  do
  {
    for (i = 0; i != v134; ++i)
    {
      if (*v340 != v135)
      {
        objc_enumerationMutation(v129);
      }

      v137 = *(*(&v339 + 1) + 8 * i);
      if (v137)
      {
        v138 = objc_msgSend_tsp_protobufString(v137, v131, v132, v133);
        v139 = *(v128 + 40);
        if (!v139)
        {
          goto LABEL_80;
        }

        v140 = *(v128 + 32);
        v141 = *v139;
        if (v140 < *v139)
        {
          *(v128 + 32) = v140 + 1;
          v142 = *&v139[2 * v140 + 2];
LABEL_82:
          MEMORY[0x223DA12F0](v142, v138);
          continue;
        }

        if (v141 == *(v128 + 36))
        {
LABEL_80:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v128 + 24));
          v139 = *(v128 + 40);
          v141 = *v139;
        }

        *v139 = v141 + 1;
        v142 = sub_2215670A8(*(v128 + 24));
        v143 = *(v128 + 32);
        v144 = *(v128 + 40) + 8 * v143;
        *(v128 + 32) = v143 + 1;
        *(v144 + 8) = v142;
        goto LABEL_82;
      }
    }

    v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(v129, v131, &v339, v366, 16);
  }

  while (v134);
LABEL_85:

  Symbol = TSCEASTLambdaElement::firstSymbol(a3, a4, v145, v146);
  *(v128 + 16) |= 4u;
  *(v128 + 64) = Symbol;
  TSCEASTLambdaElement::whitespaceBefore(a3, a4, v148, v149, &__p);
  TSCEASTLambdaElement::whitespaceAfter(a3, a4, v150, v151, v338);
  if (__p._upper != __p._lower)
  {
    v152 = TSCEASTCompactWhitespace::encodeIntoCombinedString(&__p);
    v153 = v152;
    v157 = objc_msgSend_UTF8String(v152, v154, v155, v156);
    sub_2215C8230(v128, v157);
  }

  if (v338[1] != v338[0])
  {
    v158 = TSCEASTCompactWhitespace::encodeIntoCombinedString(v338);
    v159 = v158;
    v163 = objc_msgSend_UTF8String(v158, v160, v161, v162);
    sub_2215C82B8(v128, v163);
  }

  v365 = v338;
  sub_22107C2C0(&v365);
  v338[0] = &__p;
  sub_22107C2C0(v338);

LABEL_114:
}

void sub_2215C79B0(uint64_t a1, char *a2)
{
  *(a1 + 16) |= 8u;
  sub_22108CCD0(&__p, a2);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_2215C7A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2215C7A38(uint64_t a1, char *a2)
{
  *(a1 + 16) |= 1u;
  sub_22108CCD0(&__p, a2);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_2215C7AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2215C7AC0(uint64_t a1, char *a2)
{
  *(a1 + 16) |= 4u;
  sub_22108CCD0(&__p, a2);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_2215C7B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2215C7B48(uint64_t a1)
{
  *(a1 + 16) |= 0x4000u;
  result = *(a1 + 144);
  if (!result)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v3 = *(v3 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidTractList>(v3);
    *(a1 + 144) = result;
  }

  return result;
}

uint64_t sub_2215C7B98(uint64_t a1)
{
  *(a1 + 16) |= 0x200u;
  result = *(a1 + 104);
  if (!result)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v3 = *(v3 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive>(v3);
    *(a1 + 104) = result;
  }

  return result;
}

uint64_t sub_2215C7BE8(uint64_t a1)
{
  *(a1 + 16) |= 0x400u;
  result = *(a1 + 112);
  if (!result)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v3 = *(v3 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive>(v3);
    *(a1 + 112) = result;
  }

  return result;
}

uint64_t sub_2215C7C38(uint64_t a1)
{
  *(a1 + 16) |= 0x20000u;
  result = *(a1 + 168);
  if (!result)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v3 = *(v3 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTStickyBits>(v3);
    *(a1 + 168) = result;
  }

  return result;
}

uint64_t sub_2215C7C88(uint64_t a1)
{
  *(a1 + 16) |= 0x800u;
  result = *(a1 + 120);
  if (!result)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v3 = *(v3 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive>(v3);
    *(a1 + 120) = result;
  }

  return result;
}

uint64_t sub_2215C7CD8(uint64_t a1)
{
  *(a1 + 16) |= 0x10u;
  result = *(a1 + 56);
  if (!result)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v3 = *(v3 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = MEMORY[0x223DA0300](v3);
    *(a1 + 56) = result;
  }

  return result;
}

uint64_t sub_2215C7D28(uint64_t a1)
{
  *(a1 + 16) |= 0x2000u;
  result = *(a1 + 136);
  if (!result)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v3 = *(v3 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTStickyBits>(v3);
    *(a1 + 136) = result;
  }

  return result;
}

_DWORD *sub_2215C7D78(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v3 + 32);
  v6 = *v4;
  if (v5 < *v4)
  {
    *(v3 + 32) = v5 + 1;
    result = *&v4[2 * v5 + 2];
    goto LABEL_8;
  }

  if (v6 == *(v3 + 36))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 24));
    v4 = *(v3 + 40);
    v6 = *v4;
  }

  *v4 = v6 + 1;
  result = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive>(*(v3 + 24));
  v8 = *(v3 + 32);
  v9 = *(v3 + 40) + 8 * v8;
  *(v3 + 32) = v8 + 1;
  *(v9 + 8) = result;
LABEL_8:
  v10 = result[4];
  result[4] = v10 | 1;
  v12 = *a2;
  v11 = a2[1];
  result[6] = *a2;
  if (v12 != v11)
  {
    result[4] = v10 | 3;
    result[7] = v11;
  }

  return result;
}

_DWORD *sub_2215C7E40(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v3 + 56);
  v6 = *v4;
  if (v5 < *v4)
  {
    *(v3 + 56) = v5 + 1;
    result = *&v4[2 * v5 + 2];
    goto LABEL_8;
  }

  if (v6 == *(v3 + 60))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 48));
    v4 = *(v3 + 64);
    v6 = *v4;
  }

  *v4 = v6 + 1;
  result = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive>(*(v3 + 48));
  v8 = *(v3 + 56);
  v9 = *(v3 + 64) + 8 * v8;
  *(v3 + 56) = v8 + 1;
  *(v9 + 8) = result;
LABEL_8:
  v10 = result[4];
  result[4] = v10 | 1;
  v12 = *a2;
  v11 = a2[1];
  result[6] = *a2;
  if (v12 != v11)
  {
    result[4] = v10 | 3;
    result[7] = v11;
  }

  return result;
}

_DWORD *sub_2215C7F08(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 88);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v3 + 80);
  v6 = *v4;
  if (v5 < *v4)
  {
    *(v3 + 80) = v5 + 1;
    result = *&v4[2 * v5 + 2];
    goto LABEL_8;
  }

  if (v6 == *(v3 + 84))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 72));
    v4 = *(v3 + 88);
    v6 = *v4;
  }

  *v4 = v6 + 1;
  result = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive>(*(v3 + 72));
  v8 = *(v3 + 80);
  v9 = *(v3 + 88) + 8 * v8;
  *(v3 + 80) = v8 + 1;
  *(v9 + 8) = result;
LABEL_8:
  v10 = result[4];
  result[4] = v10 | 1;
  v12 = *a2;
  v11 = a2[1];
  result[6] = *a2;
  if (v12 != v11)
  {
    result[4] = v10 | 3;
    result[7] = v11;
  }

  return result;
}

_DWORD *sub_2215C7FD0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 112);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v3 + 104);
  v6 = *v4;
  if (v5 < *v4)
  {
    *(v3 + 104) = v5 + 1;
    result = *&v4[2 * v5 + 2];
    goto LABEL_8;
  }

  if (v6 == *(v3 + 108))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 96));
    v4 = *(v3 + 112);
    v6 = *v4;
  }

  *v4 = v6 + 1;
  result = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive>(*(v3 + 96));
  v8 = *(v3 + 104);
  v9 = *(v3 + 112) + 8 * v8;
  *(v3 + 104) = v8 + 1;
  *(v9 + 8) = result;
LABEL_8:
  v10 = result[4];
  result[4] = v10 | 1;
  v12 = *a2;
  v11 = a2[1];
  result[6] = *a2;
  if (v12 != v11)
  {
    result[4] = v10 | 3;
    result[7] = v11;
  }

  return result;
}

void sub_2215C8098(uint64_t a1, char *a2)
{
  *(a1 + 16) |= 2u;
  sub_22108CCD0(&__p, a2);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_2215C8104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2215C8120(uint64_t a1, char *a2)
{
  *(a1 + 16) |= 0x10u;
  sub_22108CCD0(&__p, a2);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_2215C818C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2215C81A8(uint64_t a1, char *a2)
{
  *(a1 + 16) |= 0x20u;
  sub_22108CCD0(&__p, a2);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_2215C8214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2215C8230(uint64_t a1, char *a2)
{
  *(a1 + 16) |= 1u;
  sub_22108CCD0(&__p, a2);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_2215C829C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2215C82B8(uint64_t a1, char *a2)
{
  *(a1 + 16) |= 2u;
  sub_22108CCD0(&__p, a2);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_2215C8324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2215C8348(uint64_t a1, TSCEASTNodeArray *a2, void *a3, uint64_t a4)
{
  v10 = a3;
  if (a2->var2 < a2->var1)
  {
    v29 = TSCEASTNodeArray::codeString(a2, v7, v8, v9);
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d App is going to crash now - formula buffer exceeded allocation size of node array: %{public}@", "TSCEASTFeatureNodesSeen TSCEASTNodeArrayEncodeToArchiveWithOptions(TSCE::ASTNodeArrayArchive *, TSCEASTNodeArray *, TSPArchiver *__strong, TSCEASTNodeArrayArchiveOptionsEnum)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArrayUtilities.mm", 852, v29);

    v30 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "TSCEASTFeatureNodesSeen TSCEASTNodeArrayEncodeToArchiveWithOptions(TSCE::ASTNodeArrayArchive *, TSCEASTNodeArray *, TSPArchiver *__strong, TSCEASTNodeArrayArchiveOptionsEnum)", v32);
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArrayUtilities.mm", v35);
    v40 = TSCEASTNodeArray::codeString(a2, v37, v38, v39);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v41, v33, v36, 852, 1, "App is going to crash now - formula buffer exceeded allocation size of node array: %{public}@", v40);

    TSUCrashBreakpoint();
    abort();
  }

  v45 = 0;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  sub_2210C47D0(&v45, &v44);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v43);
  sub_22134B2F4(v42, a2, &v43);
  v11 = v46;
  if (v45 != v46)
  {
    while (1)
    {
      v12 = *(v11 - 1);
      if (!v12)
      {
        v21 = sub_22134B3CC(v42);
        v22 = v21;
        if (v21 && !(*(*v21 + 128))(v21))
        {
          sub_2215C5F44(a1, v10, v22, v42, &v45, a4);
          v11 = v46;
          goto LABEL_26;
        }

        v11 = v46;
        goto LABEL_25;
      }

      if (v12 == 1)
      {
        break;
      }

      if (v12 == 2)
      {
        v13 = *(a1 + 32);
        if (!v13)
        {
          goto LABEL_22;
        }

        v14 = *(a1 + 24);
        v15 = *v13;
        if (v14 < *v13)
        {
          *(a1 + 24) = v14 + 1;
          v16 = *&v13[2 * v14 + 2];
          goto LABEL_24;
        }

        if (v15 == *(a1 + 28))
        {
LABEL_22:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
          v13 = *(a1 + 32);
          v15 = *v13;
        }

        *v13 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTNodeArchive>(*(a1 + 16));
        v25 = *(a1 + 24);
        v26 = *(a1 + 32) + 8 * v25;
        *(a1 + 24) = v25 + 1;
        *(v26 + 8) = v16;
        v11 = v46;
LABEL_24:
        *(v16 + 20) |= 0x800u;
        *(v16 + 288) = 57;
LABEL_25:
        v11 -= 4;
        v46 = v11;
      }

LABEL_26:
      if (v45 == v11)
      {
        goto LABEL_29;
      }
    }

    v17 = *(a1 + 32);
    if (!v17)
    {
      goto LABEL_18;
    }

    v18 = *(a1 + 24);
    v19 = *v17;
    if (v18 < *v17)
    {
      *(a1 + 24) = v18 + 1;
      v20 = *&v17[2 * v18 + 2];
LABEL_20:
      *(v20 + 20) |= 0x800u;
      *(v20 + 288) = 35;
      goto LABEL_25;
    }

    if (v19 == *(a1 + 28))
    {
LABEL_18:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
      v17 = *(a1 + 32);
      v19 = *v17;
    }

    *v17 = v19 + 1;
    v20 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTNodeArchive>(*(a1 + 16));
    v23 = *(a1 + 24);
    v24 = *(a1 + 32) + 8 * v23;
    *(a1 + 24) = v23 + 1;
    *(v24 + 8) = v20;
    v11 = v46;
    goto LABEL_20;
  }

LABEL_29:
  v27 = v42[152];
  sub_22134B390(v42);
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  return v27;
}

void sub_2215C86F8(uint64_t a1, _BYTE *a2)
{
  v3 = 0;
  v2 = 0;
  sub_2215C8740(&v2, a1);
}

void sub_2215C9A74(_Unwind_Exception *a1)
{
  v5 = *(v3 - 120);
  if (v5)
  {
    *(v3 - 112) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_2215C9D54(TSCEASTNodeArray *a1, uint64_t *a2, TSCERelativeCellCoordinate *a3, uint64_t a4, uint64_t a5, TSCEUndoTractList *a6)
{
  v8 = *a2;
  if ((*a2 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {

    return TSCEASTRelativeCoordRefElement::appendReferenceError(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    v10 = *a4;
    if (!*(a4 + 6))
    {
      v10 = -v10;
    }

    if (WORD2(v8) == 0x7FFF)
    {
      v11 = 0x7FFF00000000;
    }

    else
    {
      if (*(a4 + 7))
      {
        LOWORD(v12) = *(a4 + 4);
      }

      else
      {
        v12 = -*(a4 + 4);
      }

      if (a3->_row)
      {
        LOWORD(v12) = 0;
      }

      v11 = (v12 + WORD2(v8)) << 32;
    }

    v13 = 0x7FFFFFFFLL;
    if (v8 != 0x7FFFFFFF)
    {
      if ((a3->_row & 2) != 0)
      {
        v10 = 0;
      }

      v13 = (v10 + v8);
    }

    v15 = v6;
    v16 = v7;
    v14[1].n128_u64[1] = v13 | v11;
    v14[0] = *(a2 + 1);
    return TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement(a1, v14, &v14[1].n128_i8[8], a3, 0, a6);
  }
}

uint64_t sub_2215C9E2C(uint64_t a1)
{
  *(a1 + 16) |= 0x40000u;
  result = *(a1 + 176);
  if (!result)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v3 = *(v3 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTCategoryLevels>(v3);
    *(a1 + 176) = result;
  }

  return result;
}

uint64_t sub_2215C9E7C(uint64_t a1)
{
  *(a1 + 16) |= 0x8000u;
  result = *(a1 + 152);
  if (!result)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v3 = *(v3 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive>(v3);
    *(a1 + 152) = result;
  }

  return result;
}

uint64_t sub_2215C9ECC(uint64_t a1)
{
  *(a1 + 16) |= 1u;
  result = *(a1 + 24);
  if (!result)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v3 = *(v3 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::CreateMaybeMessage<TSCE::CategoryReferenceArchive>(v3);
    *(a1 + 24) = result;
  }

  return result;
}

uint64_t sub_2215C9F1C(uint64_t a1)
{
  *(a1 + 16) |= 0x10000u;
  result = *(a1 + 160);
  if (!result)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v3 = *(v3 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTColonTractArchive>(v3);
    *(a1 + 160) = result;
  }

  return result;
}

uint64_t sub_2215C9F6C(uint64_t a1)
{
  *(a1 + 16) |= 0x80000u;
  result = *(a1 + 184);
  if (!result)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v3 = *(v3 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive>(v3);
    *(a1 + 184) = result;
  }

  return result;
}

uint64_t sub_2215C9FBC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E9048 = v5;
  TST::_AccumulatorArchive_default_instance_[0] = &unk_2834B7808;
  if (atomic_load_explicit(scc_info_AccumulatorArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812E90A4 = 0u;
  unk_2812E9098 = 0u;
  unk_2812E9088 = 0u;
  unk_2812E9078 = 0u;
  unk_2812E9068 = 0u;
  unk_2812E9058 = 0u;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_AccumulatorArchive_default_instance_, v4);
}

uint64_t sub_2215CA084(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E8D98 = v5;
  TST::_ArgumentPlaceholderNodeArchive_default_instance_[0] = &unk_2834B6F18;
  if (atomic_load_explicit(scc_info_ArgumentPlaceholderNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E8DA8 = 0;
  unk_2812E8DB0 = 0;
  dword_2812E8DB8 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_ArgumentPlaceholderNodeArchive_default_instance_, v4);
}

uint64_t sub_2215CA138(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E8BC8 = v5;
  TST::_ArrayNodeArchive_default_instance_[0] = &unk_2834B6838;
  if (atomic_load_explicit(scc_info_ArrayNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E8BD8 = 0;
  unk_2812E8BE0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_ArrayNodeArchive_default_instance_, v4);
}

uint64_t sub_2215CA1E8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E8538 = v5;
  TST::_AutofillSelectionArchive_default_instance_[0] = &unk_2834B55A8;
  if (atomic_load_explicit(scc_info_AutofillSelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E8548 = 0;
  unk_2812E8550 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_AutofillSelectionArchive_default_instance_, v4);
}

uint64_t sub_2215CA298(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E8B10 = v5;
  TST::_BooleanNodeArchive_default_instance_ = &unk_2834B6578;
  if (atomic_load_explicit(scc_info_BooleanNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812E8B28 = 0;
  qword_2812E8B20 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TST::_BooleanNodeArchive_default_instance_, v4);
}

uint64_t sub_2215CA34C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E7450 = v5;
  TST::_CategoryInfoArchive_default_instance_ = &unk_2834B33F8;
  if (atomic_load_explicit(scc_info_CategoryInfoArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E7460 = 0;
  unk_2812E7468 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TST::_CategoryInfoArchive_default_instance_, v4);
}

uint64_t sub_2215CA3FC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E9858 = v5;
  TST::_CategoryOrderArchive_default_instance_[0] = &unk_2834B8938;
  if (atomic_load_explicit(scc_info_CategoryOrderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E9868 = 0;
  unk_2812E9870 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_CategoryOrderArchive_default_instance_, v4);
}

uint64_t sub_2215CA4AC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::CategoryOwnerArchive::CategoryOwnerArchive(&TST::_CategoryOwnerArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_CategoryOwnerArchive_default_instance_, v4);
}

uint64_t sub_2215CA51C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::CategoryOwnerRefArchive::CategoryOwnerRefArchive(&TST::_CategoryOwnerRefArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_CategoryOwnerRefArchive_default_instance_, v4);
}

uint64_t sub_2215CA58C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::Cell::Cell(&TST::_Cell_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_Cell_default_instance_, v4);
}

uint64_t sub_2215CA5FC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E9608 = v5;
  TST::_CellBorderArchive_default_instance_[0] = &unk_2834B8518;
  if (atomic_load_explicit(scc_info_CellBorderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812E9638 = 0u;
  unk_2812E9628 = 0u;
  unk_2812E9618 = 0u;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_CellBorderArchive_default_instance_, v4);
}

uint64_t sub_2215CA6B8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E8130 = v5;
  TST::_CellDiffArchive_default_instance_ = &unk_2834B4AA8;
  if (atomic_load_explicit(scc_info_CellDiffArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E8140 = 0;
  unk_2812E8148 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TST::_CellDiffArchive_default_instance_, v4);
}

uint64_t sub_2215CA768(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E8158 = v5;
  TST::_CellDiffArray_default_instance_[0] = &unk_2834B4B58;
  if (atomic_load_explicit(scc_info_CellDiffArray_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E8168 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_CellDiffArray_default_instance_, v4);
}

uint64_t sub_2215CA818(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::CellDiffArraySegment::CellDiffArraySegment(&TST::_CellDiffArraySegment_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_CellDiffArraySegment_default_instance_, v4);
}

uint64_t sub_2215CA888(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::CellDiffMapArchive::CellDiffMapArchive(&TST::_CellDiffMapArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_CellDiffMapArchive_default_instance_, v4);
}

uint64_t sub_2215CA8F8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E95A8 = v5;
  TST::_CellFillStandIn_default_instance_[0] = &unk_2834B83B8;
  if (atomic_load_explicit(scc_info_CellFillStandIn_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E95B8 = 0;
  unk_2812E95C0 = 0;
  *(&qword_2812E95C8 + 7) = 0;
  qword_2812E95C8 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_CellFillStandIn_default_instance_, v4);
}

uint64_t sub_2215CA9B0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::CellFormatAndValueArchive::CellFormatAndValueArchive(&TST::_CellFormatAndValueArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_CellFormatAndValueArchive_default_instance_, v4);
}

uint64_t sub_2215CAA20(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E6D18 = v5;
  TST::_CellID_default_instance_[0] = &unk_2834B20B8;
  if (atomic_load_explicit(scc_info_CellID_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812E6D30 = 0;
  qword_2812E6D28 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_CellID_default_instance_, v4);
}

uint64_t sub_2215CAAD4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::CellListArchive::CellListArchive(&TST::_CellListArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_CellListArchive_default_instance_, v4);
}

uint64_t sub_2215CAB44(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E7F28 = v5;
  TST::_CellListArchive_OptionalCell_default_instance_[0] = &unk_2834B4528;
  if (atomic_load_explicit(scc_info_CellListArchive_OptionalCell_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E7F38 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_CellListArchive_OptionalCell_default_instance_, v4);
}

uint64_t sub_2215CABF4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::CellMapArchive::CellMapArchive(&TST::_CellMapArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_CellMapArchive_default_instance_, v4);
}

uint64_t sub_2215CAC64(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E6E40 = v5;
  TST::_CellRange_default_instance_[0] = &unk_2834B2428;
  if (atomic_load_explicit(scc_info_CellRange_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E6E50 = 0;
  unk_2812E6E58 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_CellRange_default_instance_, v4);
}

uint64_t sub_2215CAD14(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E70B8 = v5;
  TST::_CellRefImportWarningSetPairArchive_default_instance_[0] = &unk_2834B2BB8;
  if (atomic_load_explicit(scc_info_CellRefImportWarningSetPairArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E70C8 = 0;
  unk_2812E70D0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_CellRefImportWarningSetPairArchive_default_instance_, v4);
}

uint64_t sub_2215CADC4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::CellRegion::CellRegion(&TST::_CellRegion_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_CellRegion_default_instance_, v4);
}

uint64_t sub_2215CAE34(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E80C8 = v5;
  TST::_CellSpecArchive_default_instance_[0] = &unk_2834B4948;
  if (atomic_load_explicit(scc_info_CellSpecArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812E80F6 = 0u;
  unk_2812E80E8 = 0u;
  unk_2812E80D8 = 0u;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_CellSpecArchive_default_instance_, v4);
}

uint64_t sub_2215CAEF0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E85D8 = v5;
  TST::_CellStyleArchive_default_instance_[0] = &unk_2834B5868;
  if (atomic_load_explicit(scc_info_CellStyleArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E85E8 = 0;
  unk_2812E85F0 = 0;
  dword_2812E85F8 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_CellStyleArchive_default_instance_, v4);
}

uint64_t sub_2215CAFA4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::CellUIDListArchive::CellUIDListArchive(&TST::_CellUIDListArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_CellUIDListArchive_default_instance_, v4);
}

uint64_t sub_2215CB014(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::CellUIDLookupListArchive::CellUIDLookupListArchive(&TST::_CellUIDLookupListArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_CellUIDLookupListArchive_default_instance_, v4);
}

uint64_t sub_2215CB084(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::CellUIDRegionArchive::CellUIDRegionArchive(&TST::_CellUIDRegionArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_CellUIDRegionArchive_default_instance_, v4);
}

uint64_t sub_2215CB0F4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::ChangePropagationMapWrapper::ChangePropagationMapWrapper(&TST::_ChangePropagationMapWrapper_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_ChangePropagationMapWrapper_default_instance_, v4);
}

uint64_t sub_2215CB164(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::CollaboratorTableCursorSubselectionArchive::CollaboratorTableCursorSubselectionArchive(&TST::_CollaboratorTableCursorSubselectionArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_CollaboratorTableCursorSubselectionArchive_default_instance_, v4);
}

uint64_t sub_2215CB1D4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E9128 = v5;
  TST::_ColumnAggregateArchive_default_instance_[0] = &unk_2834B7A18;
  if (atomic_load_explicit(scc_info_ColumnAggregateArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812E9158 = 0;
  unk_2812E9148 = 0u;
  unk_2812E9138 = 0u;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_ColumnAggregateArchive_default_instance_, v4);
}

uint64_t sub_2215CB290(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::ColumnAggregateListArchive::ColumnAggregateListArchive(&TST::_ColumnAggregateListArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_ColumnAggregateListArchive_default_instance_, v4);
}

uint64_t sub_2215CB300(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::ColumnRowUIDMapArchive::ColumnRowUIDMapArchive(&TST::_ColumnRowUIDMapArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_ColumnRowUIDMapArchive_default_instance_, v4);
}

uint64_t sub_2215CB370(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E8110 = v5;
  TST::_CommentStorageWrapperArchive_default_instance_ = &unk_2834B49F8;
  if (atomic_load_explicit(scc_info_CommentStorageWrapperArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E8120 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TST::_CommentStorageWrapperArchive_default_instance_, v4);
}

uint64_t sub_2215CB420(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::CompletionTokenAttachmentArchive::CompletionTokenAttachmentArchive(&TST::_CompletionTokenAttachmentArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_CompletionTokenAttachmentArchive_default_instance_, v4);
}

uint64_t sub_2215CB490(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::ConcurrentCellListArchive::ConcurrentCellListArchive(&TST::_ConcurrentCellListArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_ConcurrentCellListArchive_default_instance_, v4);
}

uint64_t sub_2215CB500(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E7FD0 = v5;
  TST::_ConcurrentCellListArchive_OptionalCell_default_instance_ = &unk_2834B4738;
  if (atomic_load_explicit(scc_info_ConcurrentCellListArchive_OptionalCell_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E7FE0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TST::_ConcurrentCellListArchive_OptionalCell_default_instance_, v4);
}

uint64_t sub_2215CB5B0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::ConcurrentCellMapArchive::ConcurrentCellMapArchive(&TST::_ConcurrentCellMapArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_ConcurrentCellMapArchive_default_instance_, v4);
}

uint64_t sub_2215CB620(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::ConditionalStyleSetArchive::ConditionalStyleSetArchive(&TST::_ConditionalStyleSetArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_ConditionalStyleSetArchive_default_instance_, v4);
}

uint64_t sub_2215CB690(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E8790 = v5;
  TST::_ConditionalStyleSetArchive_ConditionalStyleRule_default_instance_ = &unk_2834B5C88;
  if (atomic_load_explicit(scc_info_ConditionalStyleSetArchive_ConditionalStyleRule_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E87A0 = 0;
  unk_2812E87A8 = 0;
  qword_2812E87B0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TST::_ConditionalStyleSetArchive_ConditionalStyleRule_default_instance_, v4);
}

uint64_t sub_2215CB744(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E8760 = v5;
  TST::_ConditionalStyleSetArchive_ConditionalStyleRulePrePivot_default_instance_[0] = &unk_2834B5BD8;
  if (atomic_load_explicit(scc_info_ConditionalStyleSetArchive_ConditionalStyleRulePrePivot_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E8770 = 0;
  unk_2812E8778 = 0;
  qword_2812E8780 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_ConditionalStyleSetArchive_ConditionalStyleRulePrePivot_default_instance_, v4);
}

uint64_t sub_2215CB7F8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::ConditionalStyleSetArchive_ConditionalStyleRules::ConditionalStyleSetArchive_ConditionalStyleRules(&TST::_ConditionalStyleSetArchive_ConditionalStyleRules_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_ConditionalStyleSetArchive_ConditionalStyleRules_default_instance_, v4);
}

uint64_t sub_2215CB868(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::_ControlCellSelectionArchive_default_instance_ = &unk_2834B5398;
  unk_2812E84F0 = 0;
  dword_2812E84F8 = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_ControlCellSelectionArchive_default_instance_, v4);
}

uint64_t sub_2215CB8E0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E7308 = v5;
  TST::_DataStore_default_instance_[0] = &unk_2834B3298;
  if (atomic_load_explicit(scc_info_DataStore_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812E73B8 = 0;
  unk_2812E73A8 = 0u;
  unk_2812E7398 = 0u;
  unk_2812E7388 = 0u;
  unk_2812E7378 = 0u;
  unk_2812E7368 = 0u;
  unk_2812E7358 = 0u;
  unk_2812E7348 = 0u;
  unk_2812E7338 = 0u;
  unk_2812E7328 = 0u;
  unk_2812E7318 = 0u;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_DataStore_default_instance_, v4);
}

uint64_t sub_2215CB9BC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::DateNodeArchive::DateNodeArchive(&TST::_DateNodeArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_DateNodeArchive_default_instance_, v4);
}

uint64_t sub_2215CBA2C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E8488 = v5;
  TST::_DeathhawkRdar39989167CellSelectionArchive_default_instance_[0] = &unk_2834B5238;
  if (atomic_load_explicit(scc_info_DeathhawkRdar39989167CellSelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812E84B4 = 0u;
  unk_2812E84A8 = 0u;
  unk_2812E8498 = 0u;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_DeathhawkRdar39989167CellSelectionArchive_default_instance_, v4);
}

uint64_t sub_2215CBAE8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::DefaultCellStylesContainerArchive::DefaultCellStylesContainerArchive(&TST::_DefaultCellStylesContainerArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_DefaultCellStylesContainerArchive_default_instance_, v4);
}

uint64_t sub_2215CBB58(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::DoubleStyleMapArchive::DoubleStyleMapArchive(&TST::_DoubleStyleMapArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_DoubleStyleMapArchive_default_instance_, v4);
}

uint64_t sub_2215CBBC8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E8328 = v5;
  TST::_DoubleStyleMapArchive_DoubleStyleMapEntryArchive_default_instance_[0] = &unk_2834B4EC8;
  if (atomic_load_explicit(scc_info_DoubleStyleMapArchive_DoubleStyleMapEntryArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E8338 = 0;
  unk_2812E8340 = 0;
  qword_2812E8348 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_DoubleStyleMapArchive_DoubleStyleMapEntryArchive_default_instance_, v4);
}

uint64_t sub_2215CBC7C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E8D60 = v5;
  TST::_DurationNodeArchive_default_instance_[0] = &unk_2834B6E68;
  if (atomic_load_explicit(scc_info_DurationNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E8D70 = 0;
  unk_2812E8D78 = 0;
  dword_2812E8D88 = 0;
  qword_2812E8D80 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_DurationNodeArchive_default_instance_, v4);
}

uint64_t sub_2215CBD34(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::_DurationWrapperArchive_default_instance_ = &unk_2834B4268;
  *algn_2812E7D58 = 0;
  dword_2812E7D60 = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_DurationWrapperArchive_default_instance_, v4);
}

uint64_t sub_2215CBDAC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E8DC8 = v5;
  TST::_EmptyExpressionNodeArchive_default_instance_[0] = &unk_2834B6FC8;
  if (atomic_load_explicit(scc_info_EmptyExpressionNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E8DD8 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_EmptyExpressionNodeArchive_default_instance_, v4);
}

uint64_t sub_2215CBE5C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::ExpandCollapseStateArchive::ExpandCollapseStateArchive(&TST::_ExpandCollapseStateArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_ExpandCollapseStateArchive_default_instance_, v4);
}

uint64_t sub_2215CBECC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E6E68 = v5;
  TST::_ExpandedCellRange_default_instance_[0] = &unk_2834B24D8;
  if (atomic_load_explicit(scc_info_ExpandedCellRange_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E6E78 = 0;
  unk_2812E6E80 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_ExpandedCellRange_default_instance_, v4);
}

uint64_t sub_2215CBF7C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  qword_2812E6E20 = 0;
  unk_2812E6E28 = 0;
  TST::_ExpandedTableSize_default_instance_ = &unk_2834B2378;
  qword_2812E6E30 = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_ExpandedTableSize_default_instance_, v4);
}

uint64_t sub_2215CBFF8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::ExpressionNodeArchive::ExpressionNodeArchive(&TST::_ExpressionNodeArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_ExpressionNodeArchive_default_instance_, v4);
}

uint64_t sub_2215CC068(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E8588 = v5;
  TST::_FilterRuleArchive_default_instance_[0] = &unk_2834B5708;
  if (atomic_load_explicit(scc_info_FilterRuleArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E8598 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_FilterRuleArchive_default_instance_, v4);
}

uint64_t sub_2215CC118(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E8560 = v5;
  TST::_FilterRulePrePivotArchive_default_instance_[0] = &unk_2834B5658;
  if (atomic_load_explicit(scc_info_FilterRulePrePivotArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812E8578 = 0;
  qword_2812E8570 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_FilterRulePrePivotArchive_default_instance_, v4);
}

uint64_t sub_2215CC1CC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::FilterSetArchive::FilterSetArchive(&TST::_FilterSetArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_FilterSetArchive_default_instance_, v4);
}

uint64_t sub_2215CC23C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E9588 = v5;
  TST::_FormulaEqualsTokenAttachmentArchive_default_instance_[0] = &unk_2834B8308;
  if (atomic_load_explicit(scc_info_FormulaEqualsTokenAttachmentArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E9598 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_FormulaEqualsTokenAttachmentArchive_default_instance_, v4);
}

uint64_t sub_2215CC2EC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::FormulaPredArgArchive::FormulaPredArgArchive(&TST::_FormulaPredArgArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_FormulaPredArgArchive_default_instance_, v4);
}

uint64_t sub_2215CC35C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::FormulaPredArgDataArchive::FormulaPredArgDataArchive(&TST::_FormulaPredArgDataArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_FormulaPredArgDataArchive_default_instance_, v4);
}

uint64_t sub_2215CC3CC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E8700 = v5;
  TST::_FormulaPredicateArchive_default_instance_[0] = &unk_2834B5B28;
  if (atomic_load_explicit(scc_info_FormulaPredicateArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812E874D = 0;
  unk_2812E8740 = 0u;
  unk_2812E8730 = 0u;
  unk_2812E8720 = 0u;
  unk_2812E8710 = 0u;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_FormulaPredicateArchive_default_instance_, v4);
}

uint64_t sub_2215CC490(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E86C8 = v5;
  TST::_FormulaPredicatePrePivotArchive_default_instance_[0] = &unk_2834B5A78;
  if (atomic_load_explicit(scc_info_FormulaPredicatePrePivotArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812E86E8 = 0u;
  unk_2812E86D8 = 0u;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_FormulaPredicatePrePivotArchive_default_instance_, v4);
}

uint64_t sub_2215CC548(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E95E0 = v5;
  TST::_FormulaSelectionArchive_default_instance_[0] = &unk_2834B8468;
  if (atomic_load_explicit(scc_info_FormulaSelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812E95F8 = 0;
  qword_2812E95F0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_FormulaSelectionArchive_default_instance_, v4);
}

uint64_t sub_2215CC5FC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::FormulaStoreArchive::FormulaStoreArchive(&TST::_FormulaStoreArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_FormulaStoreArchive_default_instance_, v4);
}

uint64_t sub_2215CC66C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E8EF8 = v5;
  TST::_FormulaStoreArchive_FormulaStorePair_default_instance_[0] = &unk_2834B73E8;
  if (atomic_load_explicit(scc_info_FormulaStoreArchive_FormulaStorePair_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812E8F10 = 0;
  qword_2812E8F08 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_FormulaStoreArchive_FormulaStorePair_default_instance_, v4);
}

uint64_t sub_2215CC720(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E8CA8 = v5;
  TST::_FunctionEndNodeArchive_default_instance_[0] = &unk_2834B6C58;
  if (atomic_load_explicit(scc_info_FunctionEndNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E8CB8 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_FunctionEndNodeArchive_default_instance_, v4);
}

uint64_t sub_2215CC7D0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::FunctionNodeArchive::FunctionNodeArchive(&TST::_FunctionNodeArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_FunctionNodeArchive_default_instance_, v4);
}

uint64_t sub_2215CC840(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::GroupByArchive::GroupByArchive(&TST::_GroupByArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_GroupByArchive_default_instance_, v4);
}

uint64_t sub_2215CC8B0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::GroupByArchive_AggNodeArchive::GroupByArchive_AggNodeArchive(&TST::_GroupByArchive_AggNodeArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_GroupByArchive_AggNodeArchive_default_instance_, v4);
}

uint64_t sub_2215CC920(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E91D8 = v5;
  TST::_GroupByArchive_AggregatorArchive_default_instance_[0] = &unk_2834B7C28;
  if (atomic_load_explicit(scc_info_GroupByArchive_AggregatorArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E91E8 = 0;
  unk_2812E91F0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_GroupByArchive_AggregatorArchive_default_instance_, v4);
}

uint64_t sub_2215CC9D0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::GroupByArchive_GroupNodeArchive::GroupByArchive_GroupNodeArchive(&TST::_GroupByArchive_GroupNodeArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_GroupByArchive_GroupNodeArchive_default_instance_, v4);
}

uint64_t sub_2215CCA40(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::GroupByArchive_GroupNodeArchive_FormatManagerArchive(&TST::_GroupByArchive_GroupNodeArchive_FormatManagerArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_GroupByArchive_GroupNodeArchive_FormatManagerArchive_default_instance_, v4);
}

uint64_t sub_2215CCAB0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive(&TST::_GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive_default_instance_, v4);
}

uint64_t sub_2215CCB20(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E90C0 = v5;
  TST::_GroupColumnArchive_default_instance_[0] = &unk_2834B78B8;
  if (atomic_load_explicit(scc_info_GroupColumnArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E90D0 = 0;
  unk_2812E90D8 = 0;
  dword_2812E90E8 = 0;
  qword_2812E90E0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_GroupColumnArchive_default_instance_, v4);
}

uint64_t sub_2215CCBD8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::GroupColumnListArchive::GroupColumnListArchive(&TST::_GroupColumnListArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_GroupColumnListArchive_default_instance_, v4);
}

uint64_t sub_2215CCC48(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::HeaderNameMgrArchive::HeaderNameMgrArchive(&TST::_HeaderNameMgrArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_HeaderNameMgrArchive_default_instance_, v4);
}

uint64_t sub_2215CCCB8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::HeaderNameMgrArchive_PerTableArchive::HeaderNameMgrArchive_PerTableArchive(&TST::_HeaderNameMgrArchive_PerTableArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_HeaderNameMgrArchive_PerTableArchive_default_instance_, v4);
}

uint64_t sub_2215CCD28(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::HeaderNameMgrTileArchive::HeaderNameMgrTileArchive(&TST::_HeaderNameMgrTileArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_HeaderNameMgrTileArchive_default_instance_, v4);
}

uint64_t sub_2215CCD98(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::HeaderNameMgrTileArchive_NameFragmentArchive::HeaderNameMgrTileArchive_NameFragmentArchive(&TST::_HeaderNameMgrTileArchive_NameFragmentArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_HeaderNameMgrTileArchive_NameFragmentArchive_default_instance_, v4);
}

uint64_t sub_2215CCE08(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::HeaderStorage::HeaderStorage(&TST::_HeaderStorage_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_HeaderStorage_default_instance_, v4);
}

uint64_t sub_2215CCE78(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::HeaderStorageBucket::HeaderStorageBucket(&TST::_HeaderStorageBucket_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_HeaderStorageBucket_default_instance_, v4);
}

uint64_t sub_2215CCEE8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E7260 = v5;
  TST::_HeaderStorageBucket_Header_default_instance_[0] = &unk_2834B3088;
  if (atomic_load_explicit(scc_info_HeaderStorageBucket_Header_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812E7280 = 0u;
  unk_2812E7270 = 0u;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_HeaderStorageBucket_Header_default_instance_, v4);
}

uint64_t sub_2215CCFA0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::HiddenStateExtentArchive::HiddenStateExtentArchive(&TST::_HiddenStateExtentArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_HiddenStateExtentArchive_default_instance_, v4);
}

uint64_t sub_2215CD010(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E8910 = v5;
  TST::_HiddenStateExtentArchive_RowOrColumnState_default_instance_ = &unk_2834B60A8;
  if (atomic_load_explicit(scc_info_HiddenStateExtentArchive_RowOrColumnState_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(&qword_2812E8920 + 7) = 0;
  qword_2812E8920 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TST::_HiddenStateExtentArchive_RowOrColumnState_default_instance_, v4);
}

uint64_t sub_2215CD0C4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::HiddenStateFormulaOwnerArchive::HiddenStateFormulaOwnerArchive(&TST::_HiddenStateFormulaOwnerArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_HiddenStateFormulaOwnerArchive_default_instance_, v4);
}

uint64_t sub_2215CD134(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E89F0 = v5;
  TST::_HiddenStatesArchive_default_instance_ = &unk_2834B6208;
  if (atomic_load_explicit(scc_info_HiddenStatesArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E8A00 = 0;
  unk_2812E8A08 = 0;
  qword_2812E8A10 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TST::_HiddenStatesArchive_default_instance_, v4);
}

uint64_t sub_2215CD1E8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::HiddenStatesOwnerArchive::HiddenStatesOwnerArchive(&TST::_HiddenStatesOwnerArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_HiddenStatesOwnerArchive_default_instance_, v4);
}

uint64_t sub_2215CD258(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::HierarchicalCellDiffMapArchive::HierarchicalCellDiffMapArchive(&TST::_HierarchicalCellDiffMapArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_HierarchicalCellDiffMapArchive_default_instance_, v4);
}

uint64_t sub_2215CD2C8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::HierarchicalCellDiffMapArchive_BoxedRow::HierarchicalCellDiffMapArchive_BoxedRow(&TST::_HierarchicalCellDiffMapArchive_BoxedRow_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_HierarchicalCellDiffMapArchive_BoxedRow_default_instance_, v4);
}

uint64_t sub_2215CD338(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::IdentifierNodeArchive::IdentifierNodeArchive(&TST::_IdentifierNodeArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_IdentifierNodeArchive_default_instance_, v4);
}

uint64_t sub_2215CD3A8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::ImportWarningSetArchive::ImportWarningSetArchive(&TST::_ImportWarningSetArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_ImportWarningSetArchive_default_instance_, v4);
}

uint64_t sub_2215CD418(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::ImportWarningSetArchive_FormulaImportWarning::ImportWarningSetArchive_FormulaImportWarning(&TST::_ImportWarningSetArchive_FormulaImportWarning_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_ImportWarningSetArchive_FormulaImportWarning_default_instance_, v4);
}

uint64_t sub_2215CD488(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::ImportWarningSetByCellRefArchive::ImportWarningSetByCellRefArchive(&TST::_ImportWarningSetByCellRefArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_ImportWarningSetByCellRefArchive_default_instance_, v4);
}

uint64_t sub_2215CD4F8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E9A50 = v5;
  TST::_LayoutEngineArchive_default_instance_ = &unk_2834B8EB8;
  if (atomic_load_explicit(scc_info_LayoutEngineArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E9A60 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TST::_LayoutEngineArchive_default_instance_, v4);
}

uint64_t sub_2215CD5A8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E8E40 = v5;
  TST::_LayoutHintArchive_default_instance_ = &unk_2834B71D8;
  if (atomic_load_explicit(scc_info_LayoutHintArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *&algn_2812E8E40[44] = 0u;
  *&algn_2812E8E40[32] = 0u;
  *&algn_2812E8E40[16] = 0u;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TST::_LayoutHintArchive_default_instance_, v4);
}

uint64_t sub_2215CD664(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E8BF0 = v5;
  TST::_ListNodeArchive_default_instance_ = &unk_2834B68E8;
  if (atomic_load_explicit(scc_info_ListNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E8C00 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TST::_ListNodeArchive_default_instance_, v4);
}

uint64_t sub_2215CD714(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::MergeOperationArchive::MergeOperationArchive(&TST::_MergeOperationArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_MergeOperationArchive_default_instance_, v4);
}

uint64_t sub_2215CD784(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E8FB8 = v5;
  TST::_MergeOwnerArchive_default_instance_[0] = &unk_2834B75F8;
  if (atomic_load_explicit(scc_info_MergeOwnerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E8FC8 = 0;
  unk_2812E8FD0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_MergeOwnerArchive_default_instance_, v4);
}

uint64_t sub_2215CD834(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::MergeRegionMapArchive::MergeRegionMapArchive(&TST::_MergeRegionMapArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_MergeRegionMapArchive_default_instance_, v4);
}

uint64_t sub_2215CD8A4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::MultiTableRemapperArchive::MultiTableRemapperArchive(&TST::_MultiTableRemapperArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_MultiTableRemapperArchive_default_instance_, v4);
}

uint64_t sub_2215CD914(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E8B38 = v5;
  TST::_NumberNodeArchive_default_instance_[0] = &unk_2834B6628;
  if (atomic_load_explicit(scc_info_NumberNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812E8B58 = 0u;
  unk_2812E8B48 = 0u;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_NumberNodeArchive_default_instance_, v4);
}

uint64_t sub_2215CD9CC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E8C10 = v5;
  TST::_OperatorNodeArchive_default_instance_ = &unk_2834B6998;
  if (atomic_load_explicit(scc_info_OperatorNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812E8C28 = 0;
  qword_2812E8C20 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TST::_OperatorNodeArchive_default_instance_, v4);
}

uint64_t sub_2215CDA80(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E8FE0 = v5;
  TST::_PencilAnnotationArchive_default_instance_[0] = &unk_2834B76A8;
  if (atomic_load_explicit(scc_info_PencilAnnotationArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E8FF0 = 0;
  unk_2812E8FF8 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_PencilAnnotationArchive_default_instance_, v4);
}

uint64_t sub_2215CDB30(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::PencilAnnotationOwnerArchive::PencilAnnotationOwnerArchive(&TST::_PencilAnnotationOwnerArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_PencilAnnotationOwnerArchive_default_instance_, v4);
}

uint64_t sub_2215CDBA0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::PivotGroupingColumnOptionsMapArchive::PivotGroupingColumnOptionsMapArchive(&TST::_PivotGroupingColumnOptionsMapArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_PivotGroupingColumnOptionsMapArchive_default_instance_, v4);
}

uint64_t sub_2215CDC10(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E9880 = v5;
  TST::_PivotOrderArchive_default_instance_[0] = &unk_2834B89E8;
  if (atomic_load_explicit(scc_info_PivotOrderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E9890 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_PivotOrderArchive_default_instance_, v4);
}

uint64_t sub_2215CDCC0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::PivotOwnerArchive::PivotOwnerArchive(&TST::_PivotOwnerArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_PivotOwnerArchive_default_instance_, v4);
}

uint64_t sub_2215CDD30(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::PopUpMenuModel::PopUpMenuModel(&TST::_PopUpMenuModel_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_PopUpMenuModel_default_instance_, v4);
}

uint64_t sub_2215CDDA0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::PopUpMenuModel_CellValue::PopUpMenuModel_CellValue(&TST::_PopUpMenuModel_CellValue_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_PopUpMenuModel_CellValue_default_instance_, v4);
}

uint64_t sub_2215CDE10(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E8C38 = v5;
  TST::_PostfixOperatorNodeArchive_default_instance_[0] = &unk_2834B6A48;
  if (atomic_load_explicit(scc_info_PostfixOperatorNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E8C48 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_PostfixOperatorNodeArchive_default_instance_, v4);
}

uint64_t sub_2215CDEC0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E8C58 = v5;
  TST::_PrefixOperatorNodeArchive_default_instance_[0] = &unk_2834B6AF8;
  if (atomic_load_explicit(scc_info_PrefixOperatorNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E8C68 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_PrefixOperatorNodeArchive_default_instance_, v4);
}

uint64_t sub_2215CDF70(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::ReferenceNodeArchive::ReferenceNodeArchive(&TST::_ReferenceNodeArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_ReferenceNodeArchive_default_instance_, v4);
}

uint64_t sub_2215CDFE0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E9558 = v5;
  TST::_RichTextPayloadArchive_default_instance_[0] = &unk_2834B8258;
  if (atomic_load_explicit(scc_info_RichTextPayloadArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E9568 = 0;
  unk_2812E9570 = 0;
  qword_2812E9578 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_RichTextPayloadArchive_default_instance_, v4);
}

uint64_t sub_2215CE094(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::SelectionArchive::SelectionArchive(&TST::_SelectionArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_SelectionArchive_default_instance_, v4);
}

uint64_t sub_2215CE104(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E76F0 = v5;
  TST::_SortRuleReferenceTrackerArchive_default_instance_ = &unk_2834B3A28;
  if (atomic_load_explicit(scc_info_SortRuleReferenceTrackerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E7700 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TST::_SortRuleReferenceTrackerArchive_default_instance_, v4);
}

uint64_t sub_2215CE1B4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E8E18 = v5;
  TST::_SpillOriginRefNodeArchive_default_instance_[0] = &unk_2834B7128;
  if (atomic_load_explicit(scc_info_SpillOriginRefNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E8E28 = 0;
  unk_2812E8E30 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_SpillOriginRefNodeArchive_default_instance_, v4);
}

uint64_t sub_2215CE264(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::_StockCellSelectionArchive_default_instance_ = &unk_2834B5448;
  *algn_2812E8508 = 0;
  dword_2812E8510 = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_StockCellSelectionArchive_default_instance_, v4);
}

uint64_t sub_2215CE2DC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::StringNodeArchive::StringNodeArchive(&TST::_StringNodeArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_StringNodeArchive_default_instance_, v4);
}

uint64_t sub_2215CE34C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::StrokeLayerArchive::StrokeLayerArchive(&TST::_StrokeLayerArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_StrokeLayerArchive_default_instance_, v4);
}

uint64_t sub_2215CE3BC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E7C68 = v5;
  TST::_StrokeLayerArchive_StrokeRunArchive_default_instance_[0] = &unk_2834B4058;
  if (atomic_load_explicit(scc_info_StrokeLayerArchive_StrokeRunArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E7C78 = 0;
  unk_2812E7C80 = 0;
  dword_2812E7C88 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_StrokeLayerArchive_StrokeRunArchive_default_instance_, v4);
}

uint64_t sub_2215CE470(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E84D0 = v5;
  TST::_StrokeSelectionArchive_default_instance_ = &unk_2834B52E8;
  dword_2812E84E0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TST::_StrokeSelectionArchive_default_instance_, v4);
}

uint64_t sub_2215CE4F4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::StrokeSidecarArchive::StrokeSidecarArchive(&TST::_StrokeSidecarArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_StrokeSidecarArchive_default_instance_, v4);
}

uint64_t sub_2215CE564(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::StructuredTextImportRecord::StructuredTextImportRecord(&TST::_StructuredTextImportRecord_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_StructuredTextImportRecord_default_instance_, v4);
}

uint64_t sub_2215CE5D4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::StructuredTextImportRecordUID::StructuredTextImportRecordUID(&TST::_StructuredTextImportRecordUID_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_StructuredTextImportRecordUID_default_instance_, v4);
}

uint64_t sub_2215CE644(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::StyleTableMapArchive::StyleTableMapArchive(&TST::_StyleTableMapArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_StyleTableMapArchive_default_instance_, v4);
}

uint64_t sub_2215CE6B4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E8390 = v5;
  TST::_StyleTableMapArchive_StyleTableMapEntryArchive_default_instance_ = &unk_2834B5028;
  if (atomic_load_explicit(scc_info_StyleTableMapArchive_StyleTableMapEntryArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E83A0 = 0;
  unk_2812E83A8 = 0;
  dword_2812E83B0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TST::_StyleTableMapArchive_StyleTableMapEntryArchive_default_instance_, v4);
}

uint64_t sub_2215CE768(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::SummaryCellVendorArchive::SummaryCellVendorArchive(&TST::_SummaryCellVendorArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_SummaryCellVendorArchive_default_instance_, v4);
}

uint64_t sub_2215CE7D8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E97F0 = v5;
  TST::_SummaryCellVendorArchive_SummaryCellEntry_default_instance_ = &unk_2834B87D8;
  if (atomic_load_explicit(scc_info_SummaryCellVendorArchive_SummaryCellEntry_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E9800 = 0;
  unk_2812E9808 = 0;
  qword_2812E9810 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TST::_SummaryCellVendorArchive_SummaryCellEntry_default_instance_, v4);
}

uint64_t sub_2215CE88C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::SummaryModelArchive::SummaryModelArchive(&TST::_SummaryModelArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_SummaryModelArchive_default_instance_, v4);
}

uint64_t sub_2215CE8FC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::SummaryModelGroupByChangeStateArchive::SummaryModelGroupByChangeStateArchive(&TST::_SummaryModelGroupByChangeStateArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_SummaryModelGroupByChangeStateArchive_default_instance_, v4);
}

uint64_t sub_2215CE96C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::TableDataList::TableDataList(&TST::_TableDataList_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_TableDataList_default_instance_, v4);
}

uint64_t sub_2215CE9DC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::TableDataList_ListEntry::TableDataList_ListEntry(&TST::_TableDataList_ListEntry_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_TableDataList_ListEntry_default_instance_, v4);
}

uint64_t sub_2215CEA4C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::TableDataListSegment::TableDataListSegment(&TST::_TableDataListSegment_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_TableDataListSegment_default_instance_, v4);
}

uint64_t sub_2215CEABC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::TableGroupSortOrderUIDArchive::TableGroupSortOrderUIDArchive(&TST::_TableGroupSortOrderUIDArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_TableGroupSortOrderUIDArchive_default_instance_, v4);
}

uint64_t sub_2215CEB2C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E75D8 = v5;
  TST::_TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive_default_instance_[0] = &unk_2834B3608;
  if (atomic_load_explicit(scc_info_TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E75E8 = 0;
  unk_2812E75F0 = 0;
  dword_2812E75F8 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive_default_instance_, v4);
}

uint64_t sub_2215CEBE0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E73C8 = v5;
  TST::_TableInfoArchive_default_instance_[0] = &unk_2834B3348;
  if (atomic_load_explicit(scc_info_TableInfoArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812E7431 = 0u;
  unk_2812E7428 = 0u;
  unk_2812E7418 = 0u;
  unk_2812E7408 = 0u;
  unk_2812E73F8 = 0u;
  unk_2812E73E8 = 0u;
  unk_2812E73D8 = 0u;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_TableInfoArchive_default_instance_, v4);
}

uint64_t sub_2215CECAC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::TableModelArchive::TableModelArchive(&TST::_TableModelArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_TableModelArchive_default_instance_, v4);
}

uint64_t sub_2215CED1C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::_TableNameSelectionArchive_default_instance_ = &unk_2834B54F8;
  unk_2812E8520 = 0;
  dword_2812E8528 = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_TableNameSelectionArchive_default_instance_, v4);
}

uint64_t sub_2215CED94(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::TableRBTree::TableRBTree(&TST::_TableRBTree_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_TableRBTree_default_instance_, v4);
}

uint64_t sub_2215CEE04(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  qword_2812E7210 = 0;
  unk_2812E7218 = 0;
  TST::_TableRBTree_Node_default_instance_ = &unk_2834B2F28;
  qword_2812E7220 = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_TableRBTree_Node_default_instance_, v4);
}

uint64_t sub_2215CEE80(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E6E90 = v5;
  TST::_TableSelection_default_instance_ = &unk_2834B2588;
  if (atomic_load_explicit(scc_info_TableSelection_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E6EA0 = 0;
  unk_2812E6EA8 = 0;
  qword_2812E6EB0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TST::_TableSelection_default_instance_, v4);
}

uint64_t sub_2215CEF34(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  qword_2812E6DF8 = 0;
  unk_2812E6E00 = 0;
  TST::_TableSize_default_instance_ = &unk_2834B22C8;
  qword_2812E6E08 = 0;
  dword_2812E6E10 = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_TableSize_default_instance_, v4);
}

uint64_t sub_2215CEFB4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::TableSortOrderArchive::TableSortOrderArchive(&TST::_TableSortOrderArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_TableSortOrderArchive_default_instance_, v4);
}

uint64_t sub_2215CF024(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  qword_2812E7638 = 0;
  unk_2812E7640 = 0;
  TST::_TableSortOrderArchive_SortRuleArchive_default_instance_ = &unk_2834B3768;
  qword_2812E7648 = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_TableSortOrderArchive_SortRuleArchive_default_instance_, v4);
}

uint64_t sub_2215CF0A0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::TableSortOrderUIDArchive::TableSortOrderUIDArchive(&TST::_TableSortOrderUIDArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_TableSortOrderUIDArchive_default_instance_, v4);
}

uint64_t sub_2215CF110(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E7690 = v5;
  TST::_TableSortOrderUIDArchive_SortRuleArchive_default_instance_ = &unk_2834B38C8;
  if (atomic_load_explicit(scc_info_TableSortOrderUIDArchive_SortRuleArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812E76A8 = 0;
  qword_2812E76A0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TST::_TableSortOrderUIDArchive_SortRuleArchive_default_instance_, v4);
}

uint64_t sub_2215CF1C4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E85A8 = v5;
  TST::_TableStyleArchive_default_instance_[0] = &unk_2834B57B8;
  if (atomic_load_explicit(scc_info_TableStyleArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E85B8 = 0;
  unk_2812E85C0 = 0;
  dword_2812E85C8 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_TableStyleArchive_default_instance_, v4);
}

uint64_t sub_2215CF278(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  qword_2812E74A0 = 0;
  unk_2812E74A8 = 0;
  TST::_TableStyleNetworkArchive_default_instance_ = &unk_2834B3558;
  dword_2812E74B0 = 0;
  if (atomic_load_explicit(scc_info_TableStyleNetworkArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812E75C8 = 0;
  xmmword_2812E75A8 = 0u;
  unk_2812E75B8 = 0u;
  xmmword_2812E7588 = 0u;
  unk_2812E7598 = 0u;
  xmmword_2812E7568 = 0u;
  unk_2812E7578 = 0u;
  xmmword_2812E7548 = 0u;
  unk_2812E7558 = 0u;
  xmmword_2812E7528 = 0u;
  unk_2812E7538 = 0u;
  xmmword_2812E7508 = 0u;
  unk_2812E7518 = 0u;
  xmmword_2812E74E8 = 0u;
  unk_2812E74F8 = 0u;
  xmmword_2812E74C8 = 0u;
  unk_2812E74D8 = 0u;
  xmmword_2812E74B8 = 0u;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_TableStyleNetworkArchive_default_instance_, v4);
}

uint64_t sub_2215CF34C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::Tile::Tile(&TST::_Tile_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_Tile_default_instance_, v4);
}

uint64_t sub_2215CF3BC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::TileRowInfo::TileRowInfo(&TST::_TileRowInfo_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_TileRowInfo_default_instance_, v4);
}

uint64_t sub_2215CF42C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::TileStorage::TileStorage(&TST::_TileStorage_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_TileStorage_default_instance_, v4);
}

uint64_t sub_2215CF49C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E6F50 = v5;
  TST::_TileStorage_Tile_default_instance_ = &unk_2834B2798;
  if (atomic_load_explicit(scc_info_TileStorage_Tile_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812E6F68 = 0;
  qword_2812E6F60 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TST::_TileStorage_Tile_default_instance_, v4);
}

uint64_t sub_2215CF550(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E8AA8 = v5;
  TST::_TokenAttachmentArchive_default_instance_[0] = &unk_2834B6418;
  if (atomic_load_explicit(scc_info_TokenAttachmentArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E8AB8 = 0;
  unk_2812E8AC0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_TokenAttachmentArchive_default_instance_, v4);
}

uint64_t sub_2215CF600(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::UniqueIndexArchive::UniqueIndexArchive(&TST::_UniqueIndexArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_UniqueIndexArchive_default_instance_, v4);
}

uint64_t sub_2215CF670(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::UniqueIndexArchive_UniqueIndexEntryArchive::UniqueIndexArchive_UniqueIndexEntryArchive(&TST::_UniqueIndexArchive_UniqueIndexEntryArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_UniqueIndexArchive_UniqueIndexEntryArchive_default_instance_, v4);
}

uint64_t sub_2215CF6E0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::VariableNodeArchive::VariableNodeArchive(&TST::_VariableNodeArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_VariableNodeArchive_default_instance_, v4);
}

uint64_t sub_2215CF750(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E7478 = v5;
  TST::_WPTableInfoArchive_default_instance_[0] = &unk_2834B34A8;
  if (atomic_load_explicit(scc_info_WPTableInfoArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E7488 = 0;
  unk_2812E7490 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TST::_WPTableInfoArchive_default_instance_, v4);
}

uint64_t sub_2215CF800(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  TST::WidthHeightCache::WidthHeightCache(&TST::_WidthHeightCache_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_WidthHeightCache_default_instance_, v4);
}

uint64_t sub_2215CF870(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.pb.cc", a4);
  qword_2812E99F8 = 0;
  unk_2812E9A00 = 0;
  TST::_WidthHeightCacheFittingEntry_default_instance_ = &unk_2834B8D58;
  qword_2812E9A08 = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TST::_WidthHeightCacheFittingEntry_default_instance_, v4);
}

TSCE::CellCoordinateArchive *TST::CellID::clear_expanded_coord(TST::CellID *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSCE::CellCoordinateArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::CellID *TST::CellID::CellID(TST::CellID *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B20B8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellID_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B20B8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellID_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TST::CellID *TST::CellID::CellID(TST::CellID *this, const TST::CellID *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B20B8;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 8) = *(a2 + 8);
  return this;
}

void TST::CellID::~CellID(TST::CellID *this)
{
  if (this != TST::_CellID_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSCE::CellCoordinateArchive::~CellCoordinateArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::CellID::~CellID(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::CellID::default_instance(TST::CellID *this)
{
  if (atomic_load_explicit(scc_info_CellID_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_CellID_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::CellID::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TSCE::CellCoordinateArchive::Clear(*(this + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 6) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_221567398(v2);
  }

  return this;
}

google::protobuf::internal *TST::CellID::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v17, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v17 + 1);
      v8 = *v17;
      if ((*v17 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v9 - 128));
      v17 = TagFallback;
      if (!TagFallback)
      {
LABEL_33:
        v17 = 0;
        goto LABEL_2;
      }

      v7 = TagFallback;
      v8 = v16;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 1u;
          v13 = *(a1 + 24);
          if (!v13)
          {
            v14 = *(a1 + 8);
            if (v14)
            {
              v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
            }

            v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v14);
            *(a1 + 24) = v13;
            v7 = v17;
          }

          v12 = sub_2216F806C(a3, v13, v7);
          goto LABEL_25;
        }
      }

      else if (v8 >> 3 == 1 && v8 == 13)
      {
        v5 |= 2u;
        *(a1 + 32) = *v7;
        v17 = (v7 + 4);
        goto LABEL_28;
      }

      if (v8)
      {
        v11 = (v8 & 7) == 4;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        *(a3 + 80) = v8 - 1;
        goto LABEL_2;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v12 = google::protobuf::internal::UnknownFieldParse();
LABEL_25:
      v17 = v12;
      if (!v12)
      {
        goto LABEL_33;
      }

LABEL_28:
      if (sub_221567030(a3, &v17, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v17 + 2);
LABEL_6:
    v17 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v17;
}

unsigned __int8 *TST::CellID::_InternalSerialize(TST::CellID *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 8);
    *a2 = 13;
    *(a2 + 1) = v6;
    a2 += 5;
  }

  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 18;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        a2[2] = v10;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v7, v9, a3);
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::CellID::ByteSizeLong(TST::CellID *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    v3 = 5;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = TSCE::CellCoordinateArchive::ByteSizeLong(*(this + 3));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TST::CellID::MergeFrom(TST::CellID *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CellID::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CellID::MergeFrom(uint64_t this, const TST::CellID *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSCE::_CellCoordinateArchive_default_instance_;
      }

      this = TSCE::CellCoordinateArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CellID::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellID::Clear(this);

    return TST::CellID::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CellID::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::CellID *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellID::Clear(this);

    return TST::CellID::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::CellID::InternalSwap(TST::CellID *this, TST::CellID *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LODWORD(v6) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  return result;
}

google::protobuf::UnknownFieldSet *TST::CellUIDLookupListArchive::clear_column_uids(TST::CellUIDLookupListArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSCE::UidLookupListArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

google::protobuf::UnknownFieldSet *TST::CellUIDLookupListArchive::clear_row_uids(TST::CellUIDLookupListArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSCE::UidLookupListArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TST::CellUIDLookupListArchive *TST::CellUIDLookupListArchive::CellUIDLookupListArchive(TST::CellUIDLookupListArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B2168;
  *(this + 1) = a2;
  *(this + 4) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 6) = a2;
  if (atomic_load_explicit(scc_info_CellUIDLookupListArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 7) = 0;
  *(this + 8) = 0;
  return this;
}

void sub_2215D0724(_Unwind_Exception *a1)
{
  if (*(v1 + 44) >= 1)
  {
    sub_2216FF128(v3);
  }

  sub_2216FF1A4((v1 + 28), v2);
  _Unwind_Resume(a1);
}

TST::CellUIDLookupListArchive *TST::CellUIDLookupListArchive::CellUIDLookupListArchive(TST::CellUIDLookupListArchive *this, const TST::CellUIDLookupListArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B2168;
  *(this + 4) = *(a2 + 4);
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  v5 = *(a2 + 6);
  if (v5)
  {
    sub_2210BBC64(this + 6, v5);
    v6 = *(this + 4);
    *(this + 6) += *(a2 + 6);
    memcpy(v6, *(a2 + 4), 4 * *(a2 + 6));
  }

  *(this + 5) = 0;
  *(this + 6) = 0;
  v7 = *(a2 + 10);
  if (v7)
  {
    sub_2210BBC64(this + 10, v7);
    v8 = *(this + 6);
    *(this + 10) += *(a2 + 10);
    memcpy(v8, *(a2 + 6), 4 * *(a2 + 10));
  }

  v9 = *(a2 + 1);
  if (v9)
  {
    sub_22156734C(v4, (v9 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v10 = *(a2 + 4);
  if (v10)
  {
    operator new();
  }

  *(this + 7) = 0;
  if ((v10 & 2) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  return this;
}

void sub_2215D08B0(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x10A1C40290C9B23);
  if (*(v1 + 44) >= 1)
  {
    v4 = *(v1 + 48);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(v1 + 28) >= 1)
  {
    v7 = *(v1 + 32);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  _Unwind_Resume(a1);
}

void TST::CellUIDLookupListArchive::~CellUIDLookupListArchive(TST::CellUIDLookupListArchive *this)
{
  if (this != &TST::_CellUIDLookupListArchive_default_instance_)
  {
    v2 = *(this + 7);
    if (v2)
    {
      TSCE::UidLookupListArchive::~UidLookupListArchive(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 8);
    if (v3)
    {
      TSCE::UidLookupListArchive::~UidLookupListArchive(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  if (*(this + 11) >= 1)
  {
    v4 = *(this + 6);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 7) >= 1)
  {
    v7 = *(this + 4);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }
}

{
  TST::CellUIDLookupListArchive::~CellUIDLookupListArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::CellUIDLookupListArchive::default_instance(TST::CellUIDLookupListArchive *this)
{
  if (atomic_load_explicit(scc_info_CellUIDLookupListArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_CellUIDLookupListArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::CellUIDLookupListArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  *(this + 6) = 0;
  *(this + 10) = 0;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSCE::UidLookupListArchive::Clear(*(this + 7));
    }

    if ((v2 & 2) != 0)
    {
      this = TSCE::UidLookupListArchive::Clear(*(v1 + 8));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TST::CellUIDLookupListArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v31 = a2;
  for (i = *(a3 + 92); (sub_221567030(a3, &v31, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v31 + 1);
    v7 = *v31;
    if ((*v31 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v31 + 2);
LABEL_6:
      v31 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v31, (v8 - 128));
    v31 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v28;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v9 == 3)
      {
        if (v7 == 24)
        {
          v21 = v6 - 1;
          while (1)
          {
            v31 = (v21 + 1);
            v22 = v21[1];
            if (v22 < 0)
            {
              v23 = (v21[2] << 7) + v22;
              LODWORD(v22) = v23 - 128;
              if (v21[2] < 0)
              {
                v21 = google::protobuf::internal::VarintParseSlow64((v21 + 1), (v23 - 128));
                LODWORD(v22) = v24;
              }

              else
              {
                v21 += 3;
              }
            }

            else
            {
              v21 += 2;
            }

            v31 = v21;
            v25 = *(a1 + 24);
            if (v25 == *(a1 + 28))
            {
              v26 = v25 + 1;
              sub_2210BBC64((a1 + 24), v25 + 1);
              *(*(a1 + 32) + 4 * v25) = v22;
              v21 = v31;
            }

            else
            {
              *(*(a1 + 32) + 4 * v25) = v22;
              v26 = v25 + 1;
            }

            *(a1 + 24) = v26;
            if (!v21)
            {
              return 0;
            }

            if (*a3 <= v21 || *v21 != 24)
            {
              goto LABEL_69;
            }
          }
        }

        if (v7 == 26)
        {
LABEL_60:
          v20 = google::protobuf::internal::PackedInt32Parser();
          goto LABEL_68;
        }
      }

      else if (v9 == 4)
      {
        if (v7 == 32)
        {
          v13 = v6 - 1;
          while (1)
          {
            v31 = (v13 + 1);
            v14 = v13[1];
            if (v14 < 0)
            {
              v15 = (v13[2] << 7) + v14;
              LODWORD(v14) = v15 - 128;
              if (v13[2] < 0)
              {
                v13 = google::protobuf::internal::VarintParseSlow64((v13 + 1), (v15 - 128));
                LODWORD(v14) = v16;
              }

              else
              {
                v13 += 3;
              }
            }

            else
            {
              v13 += 2;
            }

            v31 = v13;
            v17 = *(a1 + 40);
            if (v17 == *(a1 + 44))
            {
              v18 = v17 + 1;
              sub_2210BBC64((a1 + 40), v17 + 1);
              *(*(a1 + 48) + 4 * v17) = v14;
              v13 = v31;
            }

            else
            {
              *(*(a1 + 48) + 4 * v17) = v14;
              v18 = v17 + 1;
            }

            *(a1 + 40) = v18;
            if (!v13)
            {
              return 0;
            }

            if (*a3 <= v13 || *v13 != 32)
            {
              goto LABEL_69;
            }
          }
        }

        if (v7 == 34)
        {
          goto LABEL_60;
        }
      }
    }

    else if (v9 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v11 = *(a1 + 56);
        if (!v11)
        {
          v19 = *(a1 + 8);
          if (v19)
          {
            v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidLookupListArchive>(v19);
          *(a1 + 56) = v11;
LABEL_39:
          v6 = v31;
        }

LABEL_40:
        v20 = sub_221701698(a3, v11, v6);
        goto LABEL_68;
      }
    }

    else if (v9 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 2u;
      v11 = *(a1 + 64);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidLookupListArchive>(v12);
        *(a1 + 64) = v11;
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v7)
    {
      v29 = (v7 & 7) == 4;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      *(a3 + 80) = v7 - 1;
      return v31;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v20 = google::protobuf::internal::UnknownFieldParse();
LABEL_68:
    v31 = v20;
    if (!v20)
    {
      return 0;
    }

LABEL_69:
    ;
  }

  return v31;
}

unsigned __int8 *TST::CellUIDLookupListArchive::_InternalSerialize(TST::CellUIDLookupListArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 7);
    *a2 = 10;
    v7 = *(v6 + 10);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSCE::UidLookupListArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 8);
    *a2 = 18;
    v13 = *(v12 + 10);
    if (v13 > 0x7F)
    {
      a2[1] = v13 | 0x80;
      v15 = v13 >> 7;
      if (v13 >> 14)
      {
        v14 = a2 + 3;
        do
        {
          *(v14 - 1) = v15 | 0x80;
          v16 = v15 >> 7;
          ++v14;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
        *(v14 - 1) = v16;
      }

      else
      {
        a2[2] = v15;
        v14 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v13;
      v14 = a2 + 2;
    }

    a2 = TSCE::UidLookupListArchive::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 6);
  if (v18 >= 1)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v20 = *(*(this + 4) + 4 * i);
      *a2 = 24;
      if (v20 > 0x7F)
      {
        a2[1] = v20 | 0x80;
        v21 = v20 >> 7;
        if (v20 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v21 | 0x80;
            v22 = v21 >> 7;
            ++a2;
            v23 = v21 >> 14;
            v21 >>= 7;
          }

          while (v23);
          *(a2 - 1) = v22;
        }

        else
        {
          a2[2] = v21;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v20;
        a2 += 2;
      }
    }
  }

  v24 = *(this + 10);
  if (v24 >= 1)
  {
    for (j = 0; j != v24; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v26 = *(*(this + 6) + 4 * j);
      *a2 = 32;
      if (v26 > 0x7F)
      {
        a2[1] = v26 | 0x80;
        v27 = v26 >> 7;
        if (v26 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v27 | 0x80;
            v28 = v27 >> 7;
            ++a2;
            v29 = v27 >> 14;
            v27 >>= 7;
          }

          while (v29);
          *(a2 - 1) = v28;
        }

        else
        {
          a2[2] = v27;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v26;
        a2 += 2;
      }
    }
  }

  v30 = *(this + 1);
  if ((v30 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v30 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::CellUIDLookupListArchive::ByteSizeLong(TST::CellUIDLookupListArchive *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size();
  v3 = *(this + 6);
  v4 = v2 + google::protobuf::internal::WireFormatLite::Int32Size() + v3 + *(this + 10);
  v5 = *(this + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v6 = TSCE::UidLookupListArchive::ByteSizeLong(*(this + 7));
      v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v5 & 2) != 0)
    {
      v7 = TSCE::UidLookupListArchive::ByteSizeLong(*(this + 8));
      v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v4, this + 20);
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TST::CellUIDLookupListArchive::MergeFrom(TST::CellUIDLookupListArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CellUIDLookupListArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CellUIDLookupListArchive::MergeFrom(uint64_t this, const TST::CellUIDLookupListArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(v3 + 24);
    sub_2210BBC64((v3 + 24), v6 + v5);
    v7 = *(v3 + 32);
    *(v3 + 24) += *(a2 + 6);
    this = memcpy((v7 + 4 * v6), *(a2 + 4), 4 * *(a2 + 6));
  }

  v8 = *(a2 + 10);
  if (v8)
  {
    v9 = *(v3 + 40);
    sub_2210BBC64((v3 + 40), v9 + v8);
    v10 = *(v3 + 48);
    *(v3 + 40) += *(a2 + 10);
    this = memcpy((v10 + 4 * v9), *(a2 + 6), 4 * *(a2 + 10));
  }

  v11 = *(a2 + 4);
  if ((v11 & 3) != 0)
  {
    if (v11)
    {
      *(v3 + 16) |= 1u;
      v12 = *(v3 + 56);
      if (!v12)
      {
        v13 = *(v3 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidLookupListArchive>(v13);
        *(v3 + 56) = v12;
      }

      if (*(a2 + 7))
      {
        v14 = *(a2 + 7);
      }

      else
      {
        v14 = &TSCE::_UidLookupListArchive_default_instance_;
      }

      this = TSCE::UidLookupListArchive::MergeFrom(v12, v14);
    }

    if ((v11 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v15 = *(v3 + 64);
      if (!v15)
      {
        v16 = *(v3 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidLookupListArchive>(v16);
        *(v3 + 64) = v15;
      }

      if (*(a2 + 8))
      {
        v17 = *(a2 + 8);
      }

      else
      {
        v17 = &TSCE::_UidLookupListArchive_default_instance_;
      }

      return TSCE::UidLookupListArchive::MergeFrom(v15, v17);
    }
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CellUIDLookupListArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellUIDLookupListArchive::Clear(this);

    return TST::CellUIDLookupListArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CellUIDLookupListArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::CellUIDLookupListArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellUIDLookupListArchive::Clear(this);

    return TST::CellUIDLookupListArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::CellUIDLookupListArchive::IsInitialized(TST::CellUIDLookupListArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSCE::UidLookupListArchive::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = TSCE::UidLookupListArchive::IsInitialized(*(this + 8));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::CellUIDLookupListArchive::InternalSwap(TST::CellUIDLookupListArchive *this, TST::CellUIDLookupListArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  v8 = *(this + 6);
  *(this + 40) = *(a2 + 40);
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  v9 = *(this + 7);
  v10 = *(this + 8);
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v9;
  *(a2 + 8) = v10;
  return result;
}

uint64_t TST::CellUIDListArchive::clear_row_uids(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

uint64_t TST::CellUIDListArchive::clear_column_uids(uint64_t this)
{
  v1 = *(this + 56);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 64) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 56) = 0;
  }

  return this;
}

TST::CellUIDListArchive *TST::CellUIDListArchive::CellUIDListArchive(TST::CellUIDListArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B2218;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 10) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 4) = 0u;
  *(this + 11) = 0;
  *(this + 12) = a2;
  if (atomic_load_explicit(scc_info_CellUIDListArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 13) = 0;
  return this;
}

void sub_2215D1728(_Unwind_Exception *a1)
{
  if (*(v2 + 92) >= 1)
  {
    sub_2216FF128(v5);
  }

  sub_2216FF1A4((v2 + 76), v4);
  sub_221567974(v3);
  sub_221567974(v1);
  _Unwind_Resume(a1);
}

TST::CellUIDListArchive *TST::CellUIDListArchive::CellUIDListArchive(TST::CellUIDListArchive *this, const TST::CellUIDListArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B2218;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_2215679F8(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48));
    sub_2215679F8(this + 6, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
    v13 = *(this + 14) + v10;
    *(this + 14) = v13;
    v14 = *(this + 8);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  v15 = *(a2 + 18);
  if (v15)
  {
    sub_2210BBC64(this + 18, v15);
    v16 = *(this + 10);
    *(this + 18) += *(a2 + 18);
    memcpy(v16, *(a2 + 10), 4 * *(a2 + 18));
  }

  *(this + 11) = 0;
  *(this + 12) = 0;
  v17 = *(a2 + 22);
  if (v17)
  {
    sub_2210BBC64(this + 22, v17);
    v18 = *(this + 12);
    *(this + 22) += *(a2 + 22);
    memcpy(v18, *(a2 + 12), 4 * *(a2 + 22));
  }

  v19 = *(a2 + 1);
  if (v19)
  {
    sub_22156734C(v4, (v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 13) = 0;
  return this;
}

void sub_2215D1968(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v3, 0x10A1C408E8EB0E2);
  if (*(v1 + 92) >= 1)
  {
    v5 = *(v1 + 96);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  if (*(v1 + 76) >= 1)
  {
    v8 = *(v1 + 80);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }

  sub_221567974(v2);
  sub_221567974((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::CellUIDListArchive::~CellUIDListArchive(TST::CellUIDListArchive *this)
{
  if (this != &TST::_CellUIDListArchive_default_instance_)
  {
    v2 = *(this + 13);
    if (v2)
    {
      TST::CellUIDLookupListArchive::~CellUIDLookupListArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  if (*(this + 23) >= 1)
  {
    v3 = *(this + 12);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  if (*(this + 19) >= 1)
  {
    v6 = *(this + 10);
    v8 = *(v6 - 8);
    v7 = (v6 - 8);
    if (!v8)
    {
      operator delete(v7);
    }
  }

  sub_221567974(this + 6);
  sub_221567974(this + 3);
}

{
  TST::CellUIDListArchive::~CellUIDListArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::CellUIDListArchive::default_instance(TST::CellUIDListArchive *this)
{
  if (atomic_load_explicit(scc_info_CellUIDListArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_CellUIDListArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::CellUIDListArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 14);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 8) + 8);
    do
    {
      v7 = *v6++;
      this = TSP::UUID::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 14) = 0;
  }

  *(v1 + 18) = 0;
  *(v1 + 22) = 0;
  if (*(v1 + 16))
  {
    this = TST::CellUIDLookupListArchive::Clear(*(v1 + 13));
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 2) = 0;
  if (v9)
  {

    return sub_221567398(v8);
  }

  return this;
}

google::protobuf::internal *TST::CellUIDListArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v46 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_221567030(a3, &v46, i))
    {
      return v46;
    }

    v6 = (v46 + 1);
    v7 = *v46;
    if ((*v46 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v46 + 2);
LABEL_6:
      v46 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v46, (v8 - 128));
    v46 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v43;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 <= 2)
    {
      if (v9 != 1)
      {
        if (v9 != 2 || v7 != 18)
        {
          goto LABEL_82;
        }

        v14 = v6 - 1;
        while (1)
        {
          v15 = (v14 + 1);
          v46 = (v14 + 1);
          v16 = *(a1 + 64);
          if (!v16)
          {
            goto LABEL_25;
          }

          v21 = *(a1 + 56);
          v17 = *v16;
          if (v21 < *v16)
          {
            *(a1 + 56) = v21 + 1;
            v18 = *&v16[2 * v21 + 2];
            goto LABEL_29;
          }

          if (v17 == *(a1 + 60))
          {
LABEL_25:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
            v16 = *(a1 + 64);
            v17 = *v16;
          }

          *v16 = v17 + 1;
          v18 = MEMORY[0x223DA0360](*(a1 + 48));
          v19 = *(a1 + 56);
          v20 = *(a1 + 64) + 8 * v19;
          *(a1 + 56) = v19 + 1;
          *(v20 + 8) = v18;
          v15 = v46;
LABEL_29:
          v14 = sub_2216F813C(a3, v18, v15);
          v46 = v14;
          if (!v14)
          {
            return 0;
          }

          if (*a3 <= v14 || *v14 != 18)
          {
            goto LABEL_90;
          }
        }
      }

      if (v7 != 10)
      {
        goto LABEL_82;
      }

      v34 = v6 - 1;
      while (1)
      {
        v35 = (v34 + 1);
        v46 = (v34 + 1);
        v36 = *(a1 + 40);
        if (!v36)
        {
          goto LABEL_66;
        }

        v41 = *(a1 + 32);
        v37 = *v36;
        if (v41 < *v36)
        {
          *(a1 + 32) = v41 + 1;
          v38 = *&v36[2 * v41 + 2];
          goto LABEL_70;
        }

        if (v37 == *(a1 + 36))
        {
LABEL_66:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v36 = *(a1 + 40);
          v37 = *v36;
        }

        *v36 = v37 + 1;
        v38 = MEMORY[0x223DA0360](*(a1 + 24));
        v39 = *(a1 + 32);
        v40 = *(a1 + 40) + 8 * v39;
        *(a1 + 32) = v39 + 1;
        *(v40 + 8) = v38;
        v35 = v46;
LABEL_70:
        v34 = sub_2216F813C(a3, v38, v35);
        v46 = v34;
        if (!v34)
        {
          return 0;
        }

        if (*a3 <= v34 || *v34 != 10)
        {
          goto LABEL_90;
        }
      }
    }

    if (v9 == 3)
    {
      if (v7 != 24)
      {
        if (v7 == 26)
        {
          goto LABEL_81;
        }

        goto LABEL_82;
      }

      v22 = v6 - 1;
      while (1)
      {
        v46 = (v22 + 1);
        v23 = v22[1];
        if (v23 < 0)
        {
          v24 = (v22[2] << 7) + v23;
          LODWORD(v23) = v24 - 128;
          if (v22[2] < 0)
          {
            v22 = google::protobuf::internal::VarintParseSlow64((v22 + 1), (v24 - 128));
            LODWORD(v23) = v25;
          }

          else
          {
            v22 += 3;
          }
        }

        else
        {
          v22 += 2;
        }

        v46 = v22;
        v26 = *(a1 + 72);
        if (v26 == *(a1 + 76))
        {
          v27 = v26 + 1;
          sub_2210BBC64((a1 + 72), v26 + 1);
          *(*(a1 + 80) + 4 * v26) = v23;
          v22 = v46;
        }

        else
        {
          *(*(a1 + 80) + 4 * v26) = v23;
          v27 = v26 + 1;
        }

        *(a1 + 72) = v27;
        if (!v22)
        {
          return 0;
        }

        if (*a3 <= v22 || *v22 != 24)
        {
          goto LABEL_90;
        }
      }
    }

    if (v9 == 4)
    {
      if (v7 != 32)
      {
        if (v7 == 34)
        {
LABEL_81:
          v12 = google::protobuf::internal::PackedInt32Parser();
          goto LABEL_89;
        }

        goto LABEL_82;
      }

      v28 = v6 - 1;
      while (1)
      {
        v46 = (v28 + 1);
        v29 = v28[1];
        if (v29 < 0)
        {
          v30 = (v28[2] << 7) + v29;
          LODWORD(v29) = v30 - 128;
          if (v28[2] < 0)
          {
            v28 = google::protobuf::internal::VarintParseSlow64((v28 + 1), (v30 - 128));
            LODWORD(v29) = v31;
          }

          else
          {
            v28 += 3;
          }
        }

        else
        {
          v28 += 2;
        }

        v46 = v28;
        v32 = *(a1 + 88);
        if (v32 == *(a1 + 92))
        {
          v33 = v32 + 1;
          sub_2210BBC64((a1 + 88), v32 + 1);
          *(*(a1 + 96) + 4 * v32) = v29;
          v28 = v46;
        }

        else
        {
          *(*(a1 + 96) + 4 * v32) = v29;
          v33 = v32 + 1;
        }

        *(a1 + 88) = v33;
        if (!v28)
        {
          return 0;
        }

        if (*a3 <= v28 || *v28 != 32)
        {
          goto LABEL_90;
        }
      }
    }

    if (v9 == 5 && v7 == 42)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 104);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDLookupListArchive>(v11);
        *(a1 + 104) = v10;
        v6 = v46;
      }

      v12 = sub_221701768(a3, v10, v6);
      goto LABEL_89;
    }

LABEL_82:
    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v12 = google::protobuf::internal::UnknownFieldParse();
LABEL_89:
    v46 = v12;
    if (!v12)
    {
      return 0;
    }

LABEL_90:
    ;
  }

  *(a3 + 80) = v7 - 1;
  return v46;
}

unsigned __int8 *TST::CellUIDListArchive::_InternalSerialize(TST::CellUIDListArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 8);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 5) + 8 * i + 8);
      *a2 = 10;
      v8 = *(v7 + 5);
      if (v8 > 0x7F)
      {
        a2[1] = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = a2 + 3;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          a2[2] = v10;
          v9 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v8;
        v9 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 14);
  if (v13)
  {
    for (j = 0; j != v13; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v15 = *(*(this + 8) + 8 * j + 8);
      *a2 = 18;
      v16 = *(v15 + 5);
      if (v16 > 0x7F)
      {
        a2[1] = v16 | 0x80;
        v18 = v16 >> 7;
        if (v16 >> 14)
        {
          v17 = a2 + 3;
          do
          {
            *(v17 - 1) = v18 | 0x80;
            v19 = v18 >> 7;
            ++v17;
            v20 = v18 >> 14;
            v18 >>= 7;
          }

          while (v20);
          *(v17 - 1) = v19;
        }

        else
        {
          a2[2] = v18;
          v17 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v16;
        v17 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v15, v17, a3);
    }
  }

  v21 = *(this + 18);
  if (v21 >= 1)
  {
    for (k = 0; k != v21; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v23 = *(*(this + 10) + 4 * k);
      *a2 = 24;
      if (v23 > 0x7F)
      {
        a2[1] = v23 | 0x80;
        v24 = v23 >> 7;
        if (v23 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v24 | 0x80;
            v25 = v24 >> 7;
            ++a2;
            v26 = v24 >> 14;
            v24 >>= 7;
          }

          while (v26);
          *(a2 - 1) = v25;
        }

        else
        {
          a2[2] = v24;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v23;
        a2 += 2;
      }
    }
  }

  v27 = *(this + 22);
  if (v27 >= 1)
  {
    for (m = 0; m != v27; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v29 = *(*(this + 12) + 4 * m);
      *a2 = 32;
      if (v29 > 0x7F)
      {
        a2[1] = v29 | 0x80;
        v30 = v29 >> 7;
        if (v29 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v30 | 0x80;
            v31 = v30 >> 7;
            ++a2;
            v32 = v30 >> 14;
            v30 >>= 7;
          }

          while (v32);
          *(a2 - 1) = v31;
        }

        else
        {
          a2[2] = v30;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v29;
        a2 += 2;
      }
    }
  }

  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v33 = *(this + 13);
    *a2 = 42;
    v34 = *(v33 + 5);
    if (v34 > 0x7F)
    {
      a2[1] = v34 | 0x80;
      v36 = v34 >> 7;
      if (v34 >> 14)
      {
        v35 = a2 + 3;
        do
        {
          *(v35 - 1) = v36 | 0x80;
          v37 = v36 >> 7;
          ++v35;
          v38 = v36 >> 14;
          v36 >>= 7;
        }

        while (v38);
        *(v35 - 1) = v37;
      }

      else
      {
        a2[2] = v36;
        v35 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v34;
      v35 = a2 + 2;
    }

    a2 = TST::CellUIDLookupListArchive::_InternalSerialize(v33, v35, a3);
  }

  v39 = *(this + 1);
  if ((v39 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v39 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::CellUIDListArchive::ByteSizeLong(TST::CellUIDListArchive *this)
{
  v2 = *(this + 8);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::UUID::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 14);
  v9 = v2 + v8;
  v10 = *(this + 8);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = TSP::UUID::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = google::protobuf::internal::WireFormatLite::Int32Size();
  v16 = *(this + 18);
  v17 = v15 + v16 + google::protobuf::internal::WireFormatLite::Int32Size() + *(this + 22) + v9;
  if (*(this + 16))
  {
    v18 = TST::CellUIDLookupListArchive::ByteSizeLong(*(this + 13));
    v17 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v17, this + 20);
  }

  else
  {
    *(this + 5) = v17;
    return v17;
  }
}

uint64_t TST::CellUIDListArchive::MergeFrom(TST::CellUIDListArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CellUIDListArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CellUIDListArchive::MergeFrom(uint64_t this, const TST::CellUIDListArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_2215679F8((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    this = sub_2215679F8((v3 + 48), v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 18);
  if (v15)
  {
    v16 = *(v3 + 72);
    sub_2210BBC64((v3 + 72), v16 + v15);
    v17 = *(v3 + 80);
    *(v3 + 72) += *(a2 + 18);
    this = memcpy((v17 + 4 * v16), *(a2 + 10), 4 * *(a2 + 18));
  }

  v18 = *(a2 + 22);
  if (v18)
  {
    v19 = *(v3 + 88);
    sub_2210BBC64((v3 + 88), v19 + v18);
    v20 = *(v3 + 96);
    *(v3 + 88) += *(a2 + 22);
    this = memcpy((v20 + 4 * v19), *(a2 + 12), 4 * *(a2 + 22));
  }

  if (*(a2 + 16))
  {
    v21 = *(a2 + 13);
    *(v3 + 16) |= 1u;
    v22 = *(v3 + 104);
    if (!v22)
    {
      v23 = *(v3 + 8);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDLookupListArchive>(v23);
      *(v3 + 104) = v22;
      v21 = *(a2 + 13);
    }

    if (v21)
    {
      v24 = v21;
    }

    else
    {
      v24 = &TST::_CellUIDLookupListArchive_default_instance_;
    }

    return TST::CellUIDLookupListArchive::MergeFrom(v22, v24);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CellUIDListArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellUIDListArchive::Clear(this);

    return TST::CellUIDListArchive::MergeFrom(v4, a2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TST::CellUIDListArchive::CopyFrom(google::protobuf::UnknownFieldSet *this, const TST::CellUIDListArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellUIDListArchive::Clear(this);

    return TST::CellUIDListArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::CellUIDListArchive::IsInitialized(TST::CellUIDListArchive *this)
{
  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::UUID::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(this + 14);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = TSP::UUID::IsInitialized(*(*(this + 8) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TST::CellUIDLookupListArchive::IsInitialized(*(this + 13));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::CellUIDListArchive::InternalSwap(TST::CellUIDListArchive *this, TST::CellUIDListArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 4);
  v6 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v5;
  *(a2 + 5) = v6;
  v7 = *(this + 7);
  v8 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v7;
  *(a2 + 8) = v8;
  v9 = *(this + 9);
  v10 = *(this + 10);
  *(this + 72) = *(a2 + 72);
  *(a2 + 9) = v9;
  *(a2 + 10) = v10;
  v11 = *(this + 11);
  v12 = *(this + 12);
  result = *(a2 + 88);
  *(this + 88) = result;
  *(a2 + 11) = v11;
  *(a2 + 12) = v12;
  v14 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v14;
  return result;
}

uint64_t TST::TableSize::TableSize(uint64_t result, uint64_t a2)
{
  *result = &unk_2834B22C8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

{
  *result = &unk_2834B22C8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

TST::TableSize *TST::TableSize::TableSize(TST::TableSize *this, const TST::TableSize *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B22C8;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_22156734C(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 3);
  *(this + 8) = *(a2 + 8);
  *(this + 3) = v6;
  return this;
}

void TST::TableSize::~TableSize(TST::TableSize *this)
{
  sub_2214DFCF8(this + 1);
}

{
  sub_2214DFCF8(this + 1);
}

{
  sub_2214DFCF8(this + 1);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::TableSize::default_instance(TST::TableSize *this)
{
  if (atomic_load_explicit(scc_info_TableSize_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_TableSize_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::TableSize::Clear(TST::TableSize *this)
{
  if ((*(this + 16) & 7) != 0)
  {
    *(this + 8) = 0;
    *(this + 3) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_221567398(result);
  }

  return result;
}

google::protobuf::internal *TST::TableSize::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v25, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v25 + 1);
      v8 = *v25;
      if ((*v25 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v9 - 128));
      v25 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_41;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_13;
        }

        v5 |= 4u;
        v16 = (v7 + 1);
        LODWORD(v17) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

        v18 = *v16;
        v17 = (v17 + (v18 << 7) - 128);
        if ((v18 & 0x80000000) == 0)
        {
          v16 = (v7 + 2);
LABEL_30:
          v25 = v16;
          *(a1 + 32) = v17;
          goto LABEL_32;
        }

        v23 = google::protobuf::internal::VarintParseSlow32(v7, v17);
        v25 = v23;
        *(a1 + 32) = v24;
        if (!v23)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v10 != 2)
        {
          if (v10 == 1 && v8 == 13)
          {
            v5 |= 1u;
            *(a1 + 24) = *v7;
            v25 = (v7 + 4);
            goto LABEL_32;
          }

LABEL_13:
          if (v8)
          {
            v12 = (v8 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v25 = google::protobuf::internal::UnknownFieldParse();
          if (!v25)
          {
LABEL_41:
            v25 = 0;
            goto LABEL_2;
          }

          goto LABEL_32;
        }

        if (v8 != 16)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
        v13 = (v7 + 1);
        LODWORD(v14) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        v15 = *v13;
        v14 = (v14 + (v15 << 7) - 128);
        if ((v15 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_25:
          v25 = v13;
          *(a1 + 28) = v14;
          goto LABEL_32;
        }

        v21 = google::protobuf::internal::VarintParseSlow32(v7, v14);
        v25 = v21;
        *(a1 + 28) = v22;
        if (!v21)
        {
          goto LABEL_41;
        }
      }

LABEL_32:
      if (sub_221567030(a3, &v25, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v25 + 2);
LABEL_6:
    v25 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v25;
}

unsigned __int8 *TST::TableSize::_InternalSerialize(TST::TableSize *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
    *a2 = 13;
    *(a2 + 1) = v7;
    a2 += 5;
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 7);
  *a2 = 16;
  if (v8 > 0x7F)
  {
    a2[1] = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v10 | 0x80;
        v13 = v10 >> 7;
        ++a2;
        v14 = v10 >> 14;
        v10 >>= 7;
      }

      while (v14);
      *(a2 - 1) = v13;
      if ((v5 & 4) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      a2[2] = v10;
      a2 += 3;
      if ((v5 & 4) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    a2[1] = v8;
    a2 += 2;
    if ((v5 & 4) == 0)
    {
      goto LABEL_27;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 8);
  *a2 = 24;
  if (v6 > 0x7F)
  {
    a2[1] = v6 | 0x80;
    v9 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v9 | 0x80;
        v11 = v9 >> 7;
        ++a2;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
      *(a2 - 1) = v11;
    }

    else
    {
      a2[2] = v9;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
  }

LABEL_27:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v15 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::TableSize::ByteSizeLong(TST::TableSize *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 6) != 0)
  {
    if ((v1 & 2) != 0)
    {
      v2 += ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v1 & 4) != 0)
    {
      v2 += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  *(this + 5) = v2;
  return v2;
}

uint64_t TST::TableSize::MergeFrom(TST::TableSize *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::TableSize::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::TableSize::MergeFrom(uint64_t this, const TST::TableSize *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      v3[6] = *(a2 + 6);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          v3[4] |= v5;
          return this;
        }

LABEL_7:
        v3[8] = *(a2 + 8);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    v3[7] = *(a2 + 7);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

TST::TableSize *TST::TableSize::CopyFrom(TST::TableSize *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableSize::Clear(this);

    return TST::TableSize::MergeFrom(v4, a2);
  }

  return this;
}

TST::TableSize *TST::TableSize::CopyFrom(TST::TableSize *this, const TST::TableSize *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableSize::Clear(this);

    return TST::TableSize::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::TableSize::InternalSwap(TST::TableSize *this, TST::TableSize *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LODWORD(v6) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  return result;
}

void *TST::ExpandedTableSize::ExpandedTableSize(void *result, uint64_t a2)
{
  *result = &unk_2834B2378;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_2834B2378;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TST::ExpandedTableSize *TST::ExpandedTableSize::ExpandedTableSize(TST::ExpandedTableSize *this, const TST::ExpandedTableSize *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B2378;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_22156734C(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TST::ExpandedTableSize::~ExpandedTableSize(TST::ExpandedTableSize *this)
{
  sub_2214DFCF8(this + 1);
}

{
  sub_2214DFCF8(this + 1);
}

{
  sub_2214DFCF8(this + 1);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::ExpandedTableSize::default_instance(TST::ExpandedTableSize *this)
{
  if (atomic_load_explicit(scc_info_ExpandedTableSize_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_ExpandedTableSize_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::ExpandedTableSize::Clear(TST::ExpandedTableSize *this)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 3) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_221567398(result);
  }

  return result;
}

google::protobuf::internal *TST::ExpandedTableSize::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v24, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v24 + 1);
      v8 = *v24;
      if ((*v24 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v9 - 128));
      v24 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_38;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 != 16)
        {
          goto LABEL_12;
        }

        v5 |= 2u;
        v12 = (v7 + 1);
        LODWORD(v13) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        v14 = *v12;
        v13 = (v13 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_24:
          v24 = v12;
          *(a1 + 28) = v13;
          goto LABEL_29;
        }

        v20 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v24 = v20;
        *(a1 + 28) = v21;
        if (!v20)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v8 >> 3 != 1 || v8 != 8)
        {
LABEL_12:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v24 = google::protobuf::internal::UnknownFieldParse();
          if (!v24)
          {
LABEL_38:
            v24 = 0;
            goto LABEL_2;
          }

          goto LABEL_29;
        }

        v5 |= 1u;
        v15 = (v7 + 1);
        LODWORD(v16) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        v17 = *v15;
        v16 = (v16 + (v17 << 7) - 128);
        if ((v17 & 0x80000000) == 0)
        {
          v15 = (v7 + 2);
LABEL_28:
          v24 = v15;
          *(a1 + 24) = v16;
          goto LABEL_29;
        }

        v22 = google::protobuf::internal::VarintParseSlow32(v7, v16);
        v24 = v22;
        *(a1 + 24) = v23;
        if (!v22)
        {
          goto LABEL_38;
        }
      }

LABEL_29:
      if (sub_221567030(a3, &v24, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v24 + 2);
LABEL_6:
    v24 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v24;
}

unsigned __int8 *TST::ExpandedTableSize::_InternalSerialize(TST::ExpandedTableSize *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
    *a2 = 8;
    if (v6 <= 0x7F)
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[1] = v6 | 0x80;
    v7 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v7 | 0x80;
        v10 = v7 >> 7;
        ++a2;
        v11 = v7 >> 14;
        v7 >>= 7;
      }

      while (v11);
      *(a2 - 1) = v10;
      if ((v5 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[2] = v7;
    a2 += 3;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 7);
  *a2 = 16;
  if (v8 > 0x7F)
  {
    a2[1] = v8 | 0x80;
    v9 = v8 >> 7;
    if (v8 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v9 | 0x80;
        v12 = v9 >> 7;
        ++a2;
        v13 = v9 >> 14;
        v9 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
    }

    else
    {
      a2[2] = v9;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v8;
    a2 += 2;
  }

LABEL_23:
  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::ExpandedTableSize::RequiredFieldsByteSizeFallback(TST::ExpandedTableSize *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TST::ExpandedTableSize::ByteSizeLong(TST::ExpandedTableSize *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v2 = TST::ExpandedTableSize::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TST::ExpandedTableSize::MergeFrom(TST::ExpandedTableSize *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ExpandedTableSize::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ExpandedTableSize::MergeFrom(uint64_t this, const TST::ExpandedTableSize *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v3[6] = *(a2 + 6);
    }

    if ((v5 & 2) != 0)
    {
      v3[7] = *(a2 + 7);
    }

    v3[4] |= v5;
  }

  return this;
}

TST::ExpandedTableSize *TST::ExpandedTableSize::CopyFrom(TST::ExpandedTableSize *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ExpandedTableSize::Clear(this);

    return TST::ExpandedTableSize::MergeFrom(v4, a2);
  }

  return this;
}

TST::ExpandedTableSize *TST::ExpandedTableSize::CopyFrom(TST::ExpandedTableSize *this, const TST::ExpandedTableSize *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ExpandedTableSize::Clear(this);

    return TST::ExpandedTableSize::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::ExpandedTableSize::InternalSwap(TST::ExpandedTableSize *this, TST::ExpandedTableSize *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

TST::CellRange *TST::CellRange::CellRange(TST::CellRange *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B2428;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellRange_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834B2428;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellRange_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TST::CellRange *TST::CellRange::CellRange(TST::CellRange *this, const TST::CellRange *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B2428;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  return this;
}

void TST::CellRange::~CellRange(TST::CellRange *this)
{
  if (this != TST::_CellRange_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::CellID::~CellID(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      sub_2214DFCF8((v3 + 8));
      MEMORY[0x223DA1450](v3, 0x1081C40B7564605);
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::CellRange::~CellRange(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::CellRange::default_instance(TST::CellRange *this)
{
  if (atomic_load_explicit(scc_info_CellRange_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_CellRange_default_instance_;
}

google::protobuf::UnknownFieldSet *TST::CellRange::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TST::CellID::Clear(*(this + 3));
    }

    if ((v2 & 2) != 0)
    {
      this = TST::TableSize::Clear(*(v1 + 4));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TST::CellRange::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  for (i = *(a3 + 92); (sub_221567030(a3, &v19, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v19 + 1);
    v7 = *v19;
    if ((*v19 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v19 + 2);
LABEL_6:
      v19 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v8 - 128));
    v19 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v17;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v12 = *(a1 + 32);
        if (!v12)
        {
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = google::protobuf::Arena::CreateMaybeMessage<TST::TableSize>(v13);
          *(a1 + 32) = v12;
          v6 = v19;
        }

        v11 = sub_221701908(a3, v12, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v15);
        *(a1 + 24) = v14;
        v6 = v19;
      }

      v11 = sub_221701838(a3, v14, v6);
      goto LABEL_30;
    }

    if (v7)
    {
      v10 = (v7 & 7) == 4;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      *(a3 + 80) = v7 - 1;
      return v19;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_30:
    v19 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v19;
}

unsigned __int8 *TST::CellRange::_InternalSerialize(TST::CellRange *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TST::CellID::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 4);
    *a2 = 18;
    v13 = *(v12 + 5);
    if (v13 > 0x7F)
    {
      a2[1] = v13 | 0x80;
      v15 = v13 >> 7;
      if (v13 >> 14)
      {
        v14 = a2 + 3;
        do
        {
          *(v14 - 1) = v15 | 0x80;
          v16 = v15 >> 7;
          ++v14;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
        *(v14 - 1) = v16;
      }

      else
      {
        a2[2] = v15;
        v14 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v13;
      v14 = a2 + 2;
    }

    a2 = TST::TableSize::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TST::CellRange::RequiredFieldsByteSizeFallback(TST::CellRange *this)
{
  v2 = *(this + 4);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v4 = TST::CellID::ByteSizeLong(*(this + 3));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TST::TableSize::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TST::CellRange::ByteSizeLong(TST::CellID **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TST::CellRange::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TST::CellID::ByteSizeLong(this[3]);
    v3 = TST::TableSize::ByteSizeLong(this[4]);
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v4, this + 20);
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TST::CellRange::MergeFrom(TST::CellRange *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CellRange::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CellRange::MergeFrom(uint64_t this, const TST::CellRange *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = TST::_CellID_default_instance_;
      }

      this = TST::CellID::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v9 = *(v3 + 32);
      if (!v9)
      {
        v10 = *(v3 + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = google::protobuf::Arena::CreateMaybeMessage<TST::TableSize>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TST::_TableSize_default_instance_;
      }

      return TST::TableSize::MergeFrom(v9, v11);
    }
  }

  return this;
}