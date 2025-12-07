void sub_22128373C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_221283774(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a3 - 1 + a2;
  if (!__CFADD__(a3 - 1, a2))
  {
    v4 = a2;
    v6 = 16 * a2;
    do
    {
      sub_221083454(*(*(a1 + 40) + 8) + 48, (*(*(a1 + 32) + 88) + v6));
      ++v4;
      v6 += 16;
    }

    while (v4 <= v3);
  }
}

void sub_221283E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  TSUIndexSet::~TSUIndexSet((v18 + 48));

  _Unwind_Resume(a1);
}

uint64_t sub_221283E58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v2 = a1 + 48;
  *v2 = v3 | 3;
  *&v4.f64[0] = 0x8000000080000000;
  *&v4.f64[1] = 0x8000000080000000;
  *(v2 + 8) = vnegq_f64(v4);
  *(v2 + 24) = 0;
  return TSUIndexSet::operator=();
}

void *sub_221283E84(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v7 = a3;
  if (sub_2210875C4((a1[4] + 112), &v6))
  {
    return TSUIndexSet::addIndex((*(a1[6] + 8) + 48));
  }

  result = a1[5];
  if (result)
  {
    return objc_msgSend_addUUID_(result, v4, v6, v7);
  }

  return result;
}

void sub_22128403C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  TSUIndexSet::~TSUIndexSet((v18 + 48));

  _Unwind_Resume(a1);
}

void *sub_221284078(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v7 = a3;
  if (sub_2210875C4((a1[4] + 152), &v6))
  {
    return TSUIndexSet::addIndex((*(a1[6] + 8) + 48));
  }

  result = a1[5];
  if (result)
  {
    return objc_msgSend_addUUID_(result, v4, v6, v7);
  }

  return result;
}

void sub_221284278(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 64), 8);

  _Unwind_Resume(a1);
}

void *sub_2212842A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  result = sub_2210875C4((*(a1 + 32) + 152), v7);
  if (result)
  {
    v5 = *(result + 8);
    v6 = *(*(a1 + 40) + 8);
    if (v5 < *(v6 + 24))
    {
      *(v6 + 24) = v5;
    }
  }

  return result;
}

void *sub_221284304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  result = sub_2210875C4((*(a1 + 32) + 112), v7);
  if (result)
  {
    v5 = *(result + 16);
    v6 = *(*(a1 + 40) + 8);
    if (v5 < *(v6 + 24))
    {
      *(v6 + 24) = v5;
    }
  }

  return result;
}

void sub_221284A84(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_221284B18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_221284BC0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUMakeCellRectFromNSRanges(NSRange, NSRange)", a4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 168, 0, "Invalid column range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUMakeCellRectFromNSRanges(NSRange, NSRange)", a4);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 169, 0, "Invalid row range");
    v23 = 0x7FFF7FFFFFFFLL;

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }

  else
  {
    v27 = a3 | (a1 << 32);
    if (!a4)
    {
      v27 = 0x7FFF7FFFFFFFLL;
    }

    if (!a2)
    {
      v27 = 0x7FFF7FFFFFFFLL;
    }

    if (a1 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0x7FFF7FFFFFFFLL;
    }

    else
    {
      return v27;
    }
  }

  return v23;
}

void sub_221284E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_221285200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  sub_22109DBB8(&a11);
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  v23 = *(v21 - 56);
  if (v23)
  {
    *(v21 - 48) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

void *sub_221285688(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = (result[4] + 88);
    v4 = *(result[4] + 96);
    v5 = (*v3 + 16 * a2);
    v6 = &v5[16 * a3];
    v7 = v4 - v6;
    if (v4 != v6)
    {
      result = memmove(v5, v6, v4 - v6);
    }

    v3[1] = &v5[v7];
  }

  return result;
}

void *sub_2212858DC(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = (result[4] + 64);
    v4 = *(result[4] + 72);
    v5 = (*v3 + 16 * a2);
    v6 = &v5[16 * a3];
    v7 = v4 - v6;
    if (v4 != v6)
    {
      result = memmove(v5, v6, v4 - v6);
    }

    v3[1] = &v5[v7];
  }

  return result;
}

void sub_221285A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_221285AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22128652C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  v24 = *(v22 - 104);
  if (v24)
  {
    *(v22 - 96) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

void sub_221286598(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_221289858(a1, a2);
    }

    sub_22107C148();
  }
}

void sub_221286658(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_22107C148();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_221289858(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

unint64_t sub_221286760(unint64_t a1, unint64_t a2, unint64_t a3)
{
  if ((a1 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || !HIDWORD(a2) || !a2)
  {
    v3 = a3 & 0xFFFF000000000000;
    v4 = HIDWORD(a3);
    return v3 | a3 | (v4 << 32);
  }

  v4 = HIDWORD(a1);
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
LABEL_7:
    v3 = a1 & 0xFFFF000000000000;
    LODWORD(a3) = a1;
    return v3 | a3 | (v4 << 32);
  }

  v6 = a1 & 0xFFFF00000000;
  if (a1 == 0x7FFFFFFFLL && v6 != 0x7FFF00000000)
  {
    goto LABEL_10;
  }

  v10 = a1 == 0x7FFFFFFF && v6 != 0x7FFF00000000;
  if (a1 <= a3 || v10)
  {
    v11 = a1 + HIDWORD(a2) - 1;
    if (a1 == 0x7FFFFFFF)
    {
      v11 = 0x7FFFFFFF;
    }

    if (v11 >= a3)
    {
      if (a1 != 0x7FFFFFFFLL && v6 == 0x7FFF00000000)
      {
        goto LABEL_7;
      }

LABEL_10:
      if (WORD2(a1) <= WORD2(a3))
      {
        v7 = a2 + WORD2(a1) - 1;
        if (WORD2(a1) == 0x7FFF || a2 == 0)
        {
          v7 = 0x7FFF;
        }

        if (v7 >= WORD2(a3))
        {
          goto LABEL_7;
        }
      }
    }
  }

  v3 = 0;
  if (WORD2(a1) >= WORD2(a3))
  {
    v12 = HIDWORD(a3);
  }

  else
  {
    v12 = HIDWORD(a1);
  }

  if (a1 >= a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = a1;
  }

  LODWORD(a3) = v13;
  LOWORD(v4) = v12;
  return v3 | a3 | (v4 << 32);
}

void sub_221286BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  _Block_object_dispose(va, 8);
  sub_2210BDEC0(v48 + 48);
  _Block_object_dispose((v49 - 184), 8);
  sub_2210BDEC0(v47 + 48);

  _Unwind_Resume(a1);
}

_WORD *sub_221286C74(uint64_t a1, const char *a2, uint64_t *a3)
{
  v3 = a2;
  LODWORD(v9) = a2;
  result = objc_msgSend_columnIndexForColumnUID_(*(a1 + 32), a2, *a3, a3[1], v9);
  if (result != 0x7FFF || v3 == -1)
  {
    v7 = result;
    v8 = *(*(a1 + 40) + 8);
    v10 = &v9;
    result = sub_2212898B0((v8 + 48), &v9, &unk_2217E0EFE, &v10);
    result[10] = v7;
  }

  return result;
}

_DWORD *sub_221286D00(uint64_t a1, const char *a2, uint64_t *a3)
{
  v3 = a2;
  LODWORD(v9) = a2;
  result = objc_msgSend_rowIndexForRowUID_(*(a1 + 32), a2, *a3, a3[1], v9);
  if (result != 0x7FFFFFFF || v3 == -1)
  {
    v7 = result;
    v8 = *(*(a1 + 40) + 8);
    v10 = &v9;
    result = sub_2211DB9B8((v8 + 48), &v9, &unk_2217E0EFE, &v10);
    result[5] = v7;
  }

  return result;
}

void sub_221286DA4(uint64_t a1, _DWORD *a2)
{
  v4 = *(*(a1 + 32) + 8);
  if (*a2 == -1)
  {
    v5 = -1;
  }

  else
  {
    v5 = *a2 & 0xFFF;
  }

  v17[0].row = v5;
  v6 = sub_2211DC534((v4 + 48), v17);
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 10) << 32;
  }

  else
  {
    v8 = 0x7FFF00000000;
  }

  v9 = *(*(a1 + 40) + 8);
  if (*a2 == -1)
  {
    v10 = -1;
  }

  else
  {
    v10 = *a2 >> 12;
  }

  v17[0].row = v10;
  v11 = sub_2211DC534((v9 + 48), v17);
  if (v7)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (*a2 == -1)
    {
      v13 = -1;
    }

    else
    {
      v13 = *a2 & 0xFFF;
    }

    sub_2210BCEA0(*(a1 + 56), v13);
    if (*a2 == -1)
    {
      v14 = -1;
    }

    else
    {
      v14 = *a2 >> 12;
    }

    sub_2210BCEA0(*(a1 + 64), v14);
    *&v17[0].row = 0u;
    v18 = 0u;
    TSTMakeCellUID(v17);
    v16[0] = *&v17[0].row;
    v16[1] = v18;
    if (sub_2211A90B0(v16))
    {
      sub_22112A984(*(a1 + 72), v17);
    }
  }

  else
  {
    v15 = *(*(a1 + 48) + 8);
    v17[0] = (v8 | *(v11 + 5));
    TSCECellCoordSet::addCellCoord((v15 + 48), v17);
  }
}

void sub_221286F60(uint64_t a1, TSUIndexRange *this)
{
  v3 = *(a1 + 40);
  v4 = TSUIndexRange::asNSRange(this);
  v24.origin = sub_221284BC0(v3, 1, v4, v5);
  v24.size = v6;
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  if (*v7 != v8)
  {
    v23 = v8[-1];
    if (TSUCellRect::lastColumn(&v23) + 1 == *(a1 + 40))
    {
      v9 = TSUCellRect::firstRow(&v23);
      if (v9 == TSUCellRect::firstRow(&v24))
      {
        v10 = TSUCellRect::lastRow(&v23);
        if (v10 == TSUCellRect::lastRow(&v24))
        {
          *(*(a1 + 32) + 8) -= 16;
          origin = v23.origin;
          v12 = TSUCellRect::bottomRight(&v24);
          v24.origin = origin;
          v24.size = (((WORD2(v12) - origin.column + 1) | ((v12 - origin.row) << 32)) + 0x100000000);
        }
      }
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
  }

  v13 = *(v7 + 16);
  if (v8 >= v13)
  {
    v15 = (v8 - *v7) >> 4;
    v16 = v15 + 1;
    if ((v15 + 1) >> 60)
    {
      sub_22107C148();
    }

    v17 = v13 - *v7;
    if (v17 >> 3 > v16)
    {
      v16 = v17 >> 3;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF0)
    {
      v18 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      sub_221086F74(v7, v18);
    }

    v19 = (16 * v15);
    *v19 = v24;
    v14 = 16 * v15 + 16;
    v20 = *(v7 + 8) - *v7;
    v21 = 16 * v15 - v20;
    memcpy(v19 - v20, *v7, v20);
    v22 = *v7;
    *v7 = v21;
    *(v7 + 8) = v14;
    *(v7 + 16) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v8 = v24;
    v14 = &v8[1];
  }

  *(v7 + 8) = v14;
}

_WORD *sub_2212876FC(uint64_t *a1, int *a2, int *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 1)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_22116D40C(a1, v10);
    }

    sub_22107C148();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (v12 >= a4)
  {
    while (v5 != a3)
    {
      v18 = *v5++;
      *result++ = v18;
    }

    a1[1] = result;
  }

  else
  {
    v13 = &a2[v12];
    if (v11 != result)
    {
      v14 = 4 * v12;
      do
      {
        v15 = *v5++;
        *result++ = v15;
        v14 -= 4;
      }

      while (v14);
    }

    if (v13 == a3)
    {
      v16 = v11;
    }

    else
    {
      v16 = v11;
      do
      {
        v17 = *v13++;
        *v11++ = v17;
        v16 += 2;
      }

      while (v13 != a3);
    }

    a1[1] = v16;
  }

  return result;
}

void **sub_221287820(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_221287954(v6, v10);
    }

    sub_22107C148();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void sub_221287954(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_2210C836C(a1, a2);
  }

  sub_22107C148();
}

void *sub_221287990(void *a1, void *a2, uint64_t a3, _OWORD **a4)
{
  v4 = a2[1];
  v5 = v4 ^ *a2;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ *a2;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_22;
    }

LABEL_21:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v10[2] != *a2 || v10[3] != v4)
  {
    goto LABEL_21;
  }

  return v10;
}

__n128 sub_221287C38(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v10 = a2 - 1;
  v42 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        if (*&a2[-1] >= *v12)
        {
          return result;
        }

LABEL_126:
        v64 = *v12;
        *v12 = *v10;
        result = v64;
LABEL_127:
        *v10 = result;
        return result;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {

      result.n128_u64[0] = sub_2212886D4(v12, v12 + 1, v12 + 2, a2 - 1, result).n128_u64[0];
      return result;
    }

    if (v15 == 5)
    {
      result.n128_u64[0] = sub_2212886D4(v12, v12 + 1, v12 + 2, v12 + 3, result).n128_u64[0];
      if (*&a2[-1] >= *&v12[3])
      {
        return result;
      }

      result = v12[3];
      v12[3] = *v10;
      *v10 = result;
      if (*&v12[3] >= *&v12[2])
      {
        return result;
      }

      result = v12[2];
      v12[2] = v12[3];
      v12[3] = result;
      if (*&v12[2] >= *&v12[1])
      {
        return result;
      }

      result = v12[1];
      v12[1] = v12[2];
      v12[2] = result;
LABEL_155:
      if (*&v12[1] < *v12)
      {
        v65 = *v12;
        *v12 = v12[1];
        result = v65;
        v12[1] = v65;
      }

      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        sub_221288894(v12->n128_u64, a2->n128_u64);
      }

      else
      {

        sub_221288960(v12->n128_u64, a2->n128_u64);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        sub_22128911C(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    if (v15 >= 0x81)
    {
      v17 = v16->n128_u64[1];
      if (*v16 < *v12)
      {
        v18 = a2[-1].n128_u64[1];
        if (v18 < v17 || v18 == v17 && v10->n128_u64[0] < v16->n128_u64[0])
        {
          v43 = *v12;
          *v12 = *v10;
        }

        else
        {
          v49 = *v12;
          *v12 = *v16;
          *v16 = v49;
          if (*&a2[-1] >= *v16)
          {
            goto LABEL_32;
          }

          v43 = *v16;
          *v16 = *v10;
        }

        *v10 = v43;
        goto LABEL_32;
      }

      v21 = a2[-1].n128_u64[1];
      if (v21 < v17 || v21 == v17 && v10->n128_u64[0] < v16->n128_u64[0])
      {
        v45 = *v16;
        *v16 = *v10;
        *v10 = v45;
        if (*v16 < *v12)
        {
          v46 = *v12;
          *v12 = *v16;
          *v16 = v46;
        }
      }

LABEL_32:
      v23 = v16 - 1;
      v24 = v16[-1].n128_u64[1];
      if (__PAIR128__(v24, v23->n128_u64[0]) < *&v12[1])
      {
        v25 = a2[-2].n128_u64[1];
        if (v25 < v24 || v25 == v24 && v42->n128_u64[0] < v23->n128_u64[0])
        {
          v26 = v12[1];
          v27 = a2 - 2;
          v12[1] = *v42;
        }

        else
        {
          v53 = v12[1];
          v12[1] = *v23;
          *v23 = v53;
          v29 = a2[-2].n128_u64[1];
          v30 = v16[-1].n128_u64[1];
          if (v29 >= v30 && (v29 != v30 || v42->n128_u64[0] >= v23->n128_u64[0]))
          {
            goto LABEL_49;
          }

          v54 = *v23;
          v27 = a2 - 2;
          *v23 = *v42;
          v26 = v54;
        }

        *v27 = v26;
        goto LABEL_49;
      }

      v28 = a2[-2].n128_u64[1];
      if (v28 < v24 || v28 == v24 && v42->n128_u64[0] < v23->n128_u64[0])
      {
        v50 = *v23;
        *v23 = *v42;
        *v42 = v50;
        if (*&v16[-1] < *&v12[1])
        {
          v51 = v12[1];
          v12[1] = *v23;
          *v23 = v51;
        }
      }

LABEL_49:
      v31 = v16[1].n128_u64[1];
      if (*&v16[1] < *&v12[2])
      {
        v32 = a2[-3].n128_u64[1];
        if (v32 < v31 || v32 == v31 && v11->n128_u64[0] < v16[1].n128_u64[0])
        {
          v33 = v12[2];
          v12[2] = *v11;
        }

        else
        {
          v57 = v12[2];
          v12[2] = v16[1];
          v16[1] = v57;
          if (*&a2[-3] >= *&v16[1])
          {
            goto LABEL_64;
          }

          v58 = v16[1];
          v16[1] = *v11;
          v33 = v58;
        }

        *v11 = v33;
        goto LABEL_64;
      }

      v34 = a2[-3].n128_u64[1];
      if (v34 < v31 || v34 == v31 && v11->n128_u64[0] < v16[1].n128_u64[0])
      {
        v55 = v16[1];
        v16[1] = *v11;
        *v11 = v55;
        if (*&v16[1] < *&v12[2])
        {
          v56 = v12[2];
          v12[2] = v16[1];
          v16[1] = v56;
        }
      }

LABEL_64:
      if (*v16 >= *&v16[-1])
      {
        if (*&v16[1] < *v16)
        {
          v60 = *v16;
          *v16 = v16[1];
          v16[1] = v60;
          if (*v16 < *&v16[-1])
          {
            v61 = *v23;
            *v23 = *v16;
            *v16 = v61;
          }
        }

        goto LABEL_72;
      }

      if (*&v16[1] < *v16)
      {
        v59 = *v23;
        *v23 = v16[1];
      }

      else
      {
        v62 = *v23;
        *v23 = *v16;
        *v16 = v62;
        if (*&v16[1] >= *v16)
        {
          goto LABEL_72;
        }

        v59 = *v16;
        *v16 = v16[1];
      }

      v16[1] = v59;
LABEL_72:
      v63 = *v12;
      *v12 = *v16;
      *v16 = v63;
      goto LABEL_73;
    }

    v19 = v12->n128_u64[1];
    if (*v12 < *v16)
    {
      v20 = a2[-1].n128_u64[1];
      if (v20 < v19 || v20 == v19 && v10->n128_u64[0] < v12->n128_u64[0])
      {
        v44 = *v16;
        *v16 = *v10;
LABEL_43:
        *v10 = v44;
        goto LABEL_73;
      }

      v52 = *v16;
      *v16 = *v12;
      *v12 = v52;
      if (*&a2[-1] < *v12)
      {
        v44 = *v12;
        *v12 = *v10;
        goto LABEL_43;
      }
    }

    else
    {
      v22 = a2[-1].n128_u64[1];
      if (v22 < v19 || v22 == v19 && v10->n128_u64[0] < v12->n128_u64[0])
      {
        v47 = *v12;
        *v12 = *v10;
        *v10 = v47;
        if (*v12 < *v16)
        {
          v48 = *v16;
          *v16 = *v12;
          *v12 = v48;
        }
      }
    }

LABEL_73:
    if ((a5 & 1) == 0 && *&v12[-1] >= *v12)
    {
      v12 = sub_2212889E0(v12->n128_u64, a2->n128_u64);
      goto LABEL_116;
    }

    v35 = sub_221288B4C(v12->n128_u64, a2->n128_u64);
    if ((v36 & 1) == 0)
    {
      goto LABEL_114;
    }

    v37 = sub_221288CEC(v12, v35, result);
    v12 = v35 + 1;
    if (sub_221288CEC(v35 + 1, a2, v38))
    {
      a4 = -v14;
      a2 = v35;
      if (v37)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v37)
    {
LABEL_114:
      result = sub_221287C38(a1, v35, a3, -v14, a5 & 1, result);
      v12 = v35 + 1;
LABEL_116:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v39 = v12[1].n128_u64[1];
  if (*&v12[1] >= *v12)
  {
    v41 = a2[-1].n128_u64[1];
    if (v41 >= v39 && (v41 != v39 || v10->n128_u64[0] >= v12[1].n128_u64[0]))
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v10;
    *v10 = result;
    goto LABEL_155;
  }

  v40 = a2[-1].n128_u64[1];
  if (v40 < v39 || v40 == v39 && v10->n128_u64[0] < v12[1].n128_u64[0])
  {
    goto LABEL_126;
  }

  v66 = *v12;
  *v12 = v12[1];
  result = v66;
  v12[1] = v66;
  if (*&a2[-1] < *&v12[1])
  {
    result = v12[1];
    v12[1] = *v10;
    goto LABEL_127;
  }

  return result;
}

__n128 sub_2212886D4(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 result)
{
  if (*a2 < *a1)
  {
    if (*a3 < *a2)
    {
      result = *a1;
      *a1 = *a3;
    }

    else
    {
      result = *a1;
      *a1 = *a2;
      *a2 = result;
      if (*a3 >= *a2)
      {
        goto LABEL_16;
      }

      result = *a2;
      *a2 = *a3;
    }

    *a3 = result;
    goto LABEL_16;
  }

  if (*a3 < *a2)
  {
    result = *a2;
    *a2 = *a3;
    *a3 = result;
    if (*a2 < *a1)
    {
      result = *a1;
      *a1 = *a2;
      *a2 = result;
    }
  }

LABEL_16:
  if (*a4 < *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 < *a2)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2 < *a1)
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

unint64_t *sub_221288894(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      while (1)
      {
        v5 = v4;
        v4 = v2;
        v6 = v5[3];
        v7 = v5[1];
        if (v6 < v7)
        {
          break;
        }

        if (v6 == v7)
        {
          v8 = *v4;
          if (*v4 < *v5)
          {
            goto LABEL_6;
          }
        }

LABEL_19:
        v2 = v4 + 2;
        v3 += 16;
        if (v4 + 2 == a2)
        {
          return result;
        }
      }

      v8 = *v4;
LABEL_6:
      *v4 = *v5;
      v9 = result;
      if (v5 != result)
      {
        v10 = v3;
        while (1)
        {
          v11 = (result + v10 - 16);
          v12 = *(result + v10 - 8);
          if (v6 >= v12)
          {
            if (v6 != v12)
            {
              v9 = v5;
              goto LABEL_18;
            }

            if (v8 >= *v11)
            {
              break;
            }
          }

          v5 -= 2;
          *(result + v10) = *v11;
          v10 -= 16;
          if (!v10)
          {
            v9 = result;
            goto LABEL_18;
          }
        }

        v9 = (result + v10);
      }

LABEL_18:
      *v9 = v8;
      v9[1] = v6;
      goto LABEL_19;
    }
  }

  return result;
}

unint64_t *sub_221288960(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    while (1)
    {
      if (result + 2 == a2)
      {
        return result;
      }

      v2 = result;
      result += 2;
      v3 = v2[3];
      v4 = v2[1];
      if (v3 >= v4)
      {
        if (v3 == v4)
        {
          v5 = *result;
          if (*result < *v2)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        v5 = *result;
        do
        {
LABEL_5:
          v6 = v2;
          *(v2 + 1) = *v2;
          v2 -= 2;
        }

        while (__PAIR128__(v3, v5) < __PAIR128__(*(v6 - 1), *v2));
        *v6 = v5;
        v6[1] = v3;
      }
    }
  }

  return result;
}

unint64_t *sub_2212889E0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 - 1);
  if (__PAIR128__(v3, v2) < *(a2 - 1))
  {
    v5 = a1[3];
    if (v3 >= v5)
    {
      v7 = a1 + 5;
      do
      {
        if (v3 == v5 && v2 < *(v7 - 3))
        {
          break;
        }

        v8 = *v7;
        v7 += 2;
        v5 = v8;
      }

      while (v3 >= v8);
      i = v7 - 3;
    }

    else
    {
      i = a1 + 2;
    }
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (j = a2 - 3; v3 < v4 || v3 == v4 && v2 < j[1]; j -= 2)
    {
      v10 = *j;
      v4 = v10;
    }

    a2 = j + 1;
  }

  while (i < a2)
  {
    v17 = *i;
    *i = *a2;
    *a2 = v17;
    v11 = i[3];
    if (v3 >= v11)
    {
      v12 = i + 5;
      do
      {
        if (v3 == v11 && v2 < *(v12 - 3))
        {
          break;
        }

        v13 = *v12;
        v12 += 2;
        v11 = v13;
      }

      while (v3 >= v13);
      i = v12 - 3;
    }

    else
    {
      i += 2;
    }

    v14 = a2 - 2;
    do
    {
      a2 = v14;
      v15 = v14[1];
      v14 -= 2;
    }

    while (__PAIR128__(v3, v2) < __PAIR128__(v15, *a2));
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 1);
  }

  *(i - 2) = v2;
  *(i - 1) = v3;
  return i;
}

unint64_t *sub_221288B4C(unint64_t *a1, unint64_t *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  while (*&a1[v2 + 2] < __PAIR128__(v4, v3))
  {
    v2 += 2;
  }

  v5 = &a1[v2 + 2];
  if (!(v2 * 8))
  {
    if (v5 >= a2)
    {
      goto LABEL_15;
    }

    v7 = a2 - 2;
    v8 = *(a2 - 1);
    if (v8 < v4)
    {
LABEL_9:
      a2 = v7;
      goto LABEL_15;
    }

    v19 = a2 - 3;
    while (1)
    {
      v20 = v19 + 1;
      if (v8 == v4)
      {
        if (*v20 < v3 || v5 >= v20)
        {
LABEL_40:
          a2 = v19 + 1;
          goto LABEL_15;
        }
      }

      else if (v5 >= v20)
      {
        goto LABEL_9;
      }

      v7 -= 2;
      v22 = *v19;
      v19 -= 2;
      v8 = v22;
      if (v22 < v4)
      {
        goto LABEL_40;
      }
    }
  }

  v6 = *(a2 - 1);
  if (v6 >= v4)
  {
    v9 = a2 - 3;
    do
    {
      if (v6 == v4 && v9[1] < v3)
      {
        break;
      }

      v10 = *v9;
      v9 -= 2;
      v6 = v10;
    }

    while (v10 >= v4);
    a2 = v9 + 1;
  }

  else
  {
    a2 -= 2;
  }

LABEL_15:
  v11 = v5;
  if (v5 < a2)
  {
    v12 = a2;
    do
    {
      v23 = *v11;
      *v11 = *v12;
      *v12 = v23;
      v13 = v11 + 2;
      do
      {
        v11 = v13;
        v14 = v13[1];
        v13 += 2;
      }

      while (__PAIR128__(v14, *v11) < __PAIR128__(v4, v3));
      v15 = *(v12 - 1);
      if (v15 >= v4)
      {
        v16 = v12 - 3;
        do
        {
          if (v15 == v4 && v16[1] < v3)
          {
            break;
          }

          v17 = *v16;
          v16 -= 2;
          v15 = v17;
        }

        while (v17 >= v4);
        v12 = v16 + 1;
      }

      else
      {
        v12 -= 2;
      }
    }

    while (v11 < v12);
  }

  if (v11 - 2 != a1)
  {
    *a1 = *(v11 - 1);
  }

  *(v11 - 2) = v3;
  *(v11 - 1) = v4;
  return v11 - 2;
}

BOOL sub_221288CEC(__n128 *a1, __n128 *a2, __n128 a3)
{
  v5 = a2 - a1;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v6 = a2 - 1;
        v11 = a1[1].n128_u64[1];
        if (*&a1[1] < *a1)
        {
          v12 = a2[-1].n128_u64[1];
          if (v12 >= v11 && (v12 != v11 || v6->n128_u64[0] >= a1[1].n128_u64[0]))
          {
            v25 = *a1;
            *a1 = a1[1];
            a1[1] = v25;
            if (*&a2[-1] >= *&a1[1])
            {
              return 1;
            }

            v13 = a1[1];
            a1[1] = *v6;
            goto LABEL_16;
          }

LABEL_15:
          v13 = *a1;
          *a1 = *v6;
LABEL_16:
          *v6 = v13;
          return 1;
        }

        v19 = a2[-1].n128_u64[1];
        if (v19 >= v11 && (v19 != v11 || v6->n128_u64[0] >= a1[1].n128_u64[0]))
        {
          return 1;
        }

        v20 = a1[1];
        a1[1] = *v6;
        *v6 = v20;
        break;
      case 4:
        sub_2212886D4(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        v7 = a2 - 1;
        sub_2212886D4(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (__PAIR128__(a2[-1].n128_u64[1], v7->n128_u64[0]) >= *&a1[3])
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *v7;
        *v7 = v8;
        if (*&a1[3] >= *&a1[2])
        {
          return 1;
        }

        v9 = a1[2];
        a1[2] = a1[3];
        a1[3] = v9;
        if (*&a1[2] >= *&a1[1])
        {
          return 1;
        }

        v10 = a1[1];
        a1[1] = a1[2];
        a1[2] = v10;
        break;
      default:
        goto LABEL_17;
    }

    if (*&a1[1] < *a1)
    {
      v21 = *a1;
      *a1 = a1[1];
      a1[1] = v21;
    }

    return 1;
  }

  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      v6 = a2 - 1;
      if (*&a2[-1] >= *a1)
      {
        return 1;
      }

      goto LABEL_15;
    }

LABEL_17:
    v14 = a1 + 2;
    v15 = a1[1].n128_u64[1];
    v16 = a1->n128_u64[1];
    if (*&a1[1] >= *a1)
    {
      v22 = a1[2].n128_u64[1];
      if (v22 < v15 || v22 == v15 && v14->n128_u64[0] < a1[1].n128_u64[0])
      {
        v23 = a1[1];
        a1[1] = *v14;
        *v14 = v23;
        if (*&a1[1] < __PAIR128__(v16, a1->n128_u64[0]))
        {
          v24 = *a1;
          *a1 = a1[1];
          a1[1] = v24;
        }
      }

      goto LABEL_40;
    }

    v17 = a1[2].n128_u64[1];
    if (v17 < v15 || v17 == v15 && v14->n128_u64[0] < a1[1].n128_u64[0])
    {
      v18 = *a1;
      *a1 = *v14;
    }

    else
    {
      v26 = *a1;
      *a1 = a1[1];
      a1[1] = v26;
      if (__PAIR128__(v17, v14->n128_u64[0]) >= *&a1[1])
      {
        goto LABEL_40;
      }

      v18 = a1[1];
      a1[1] = *v14;
    }

    *v14 = v18;
LABEL_40:
    v27 = a1 + 3;
    if (&a1[3] == a2)
    {
      return 1;
    }

    v28 = 0;
    v29 = 0;
    do
    {
      v30 = v27->n128_u64[1];
      v31 = v14->n128_u64[1];
      if (v30 >= v31)
      {
        if (v30 != v31)
        {
          goto LABEL_55;
        }

        v32 = v27->n128_u64[0];
        if (v27->n128_u64[0] >= v14->n128_u64[0])
        {
          goto LABEL_55;
        }
      }

      else
      {
        v32 = v27->n128_u64[0];
      }

      *v27 = *v14;
      v33 = v28;
      do
      {
        v34 = a1 + v33;
        v35 = *(&a1[1].n128_u64[1] + v33);
        if (v30 >= v35)
        {
          if (v30 != v35)
          {
            v14 = (a1 + v33 + 32);
            goto LABEL_54;
          }

          if (v32 >= *(v34 + 2))
          {
            goto LABEL_54;
          }
        }

        --v14;
        *(v34 + 2) = *(v34 + 1);
        v33 -= 16;
      }

      while (v33 != -32);
      v14 = a1;
LABEL_54:
      v14->n128_u64[0] = v32;
      v14->n128_u64[1] = v30;
      if (++v29 == 8)
      {
        return &v27[1] == a2;
      }

LABEL_55:
      v14 = v27;
      v28 += 16;
      ++v27;
    }

    while (v27 != a2);
  }

  return 1;
}

__int128 *sub_22128911C(__n128 *a1, __n128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      n128_u64 = a1[v9].n128_u64;
      do
      {
        sub_221289290(a1, a4, v8, n128_u64);
        n128_u64 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if (*v12 < *a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_221289290(a1, a4, v8, a1->n128_u64);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = &a2[-1];
      do
      {
        v18 = *a1;
        sub_2212893B4(a1, a4, v8);
        if (v14 == v15)
        {
          *v15 = v18;
        }

        else
        {
          *v15 = *v14;
          *v14 = v18;
          sub_221289434(a1, (v15 + 1), a4, ((v15 + 1) - a1) >> 4);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_221289290(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
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
      if (v9 < a3 && *v8 < *(v8 + 16))
      {
        v8 += 16;
        v7 = v9;
      }

      v10 = *(v8 + 8);
      v11 = a4[1];
      v12 = v10 == v11;
      if (v10 >= v11)
      {
        v13 = *a4;
        if (!v12 || *v8 >= v13)
        {
          *a4 = *v8;
          if (v5 >= v7)
          {
            while (1)
            {
              v15 = 2 * v7;
              v7 = (2 * v7) | 1;
              v14 = result + 16 * v7;
              v16 = v15 + 2;
              if (v16 < a3 && *v14 < *(v14 + 16))
              {
                v14 += 16;
                v7 = v16;
              }

              if (*v14 < __PAIR128__(v11, v13))
              {
                break;
              }

              *v8 = *v14;
              v8 = v14;
              if (v5 < v7)
              {
                goto LABEL_12;
              }
            }
          }

          v14 = v8;
LABEL_12:
          *v14 = v13;
          *(v14 + 8) = v11;
        }
      }
    }
  }

  return result;
}

__n128 sub_2212893B4(__n128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1;
    v5 = &a1[v3];
    a1 = v5 + 1;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3 && *&v5[1] < *&v5[2])
    {
      a1 = v5 + 2;
      v3 = v7;
    }

    result = *a1;
    *v4 = *a1;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t sub_221289434(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v7 = (a2 - 16);
    v8 = v6[1];
    v9 = *(a2 - 8);
    if (v8 >= v9)
    {
      if (v8 != v9)
      {
        return result;
      }

      v10 = *v7;
      if (*v6 >= *v7)
      {
        return result;
      }
    }

    else
    {
      v10 = *v7;
    }

    *v7 = *v6;
    if (v4 >= 2)
    {
      while (1)
      {
        v12 = v5 - 1;
        v5 = (v5 - 1) >> 1;
        v11 = (result + 16 * v5);
        if (*v11 >= __PAIR128__(v9, v10))
        {
          break;
        }

        *v6 = *v11;
        v6 = (result + 16 * v5);
        if (v12 <= 1)
        {
          goto LABEL_8;
        }
      }
    }

    v11 = v6;
LABEL_8:
    *v11 = v10;
    v11[1] = v9;
  }

  return result;
}

uint64_t *sub_2212894D0(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_22116D40C(a1, a2);
  }

  return a1;
}

void sub_22128952C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int16 *sub_221289548(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned int *a4)
{
  v4 = a2;
  v9 = a4;
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  do
  {
    v6 = *v4++;
    v8 = v6;
    sub_2212895B0(&v9, &v8);
  }

  while (v4 != v5);
  return v5;
}

unsigned int **sub_2212895B0(unsigned int **a1, int *a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = *a2;
  if (v4 == (*a1)[1])
  {
    v6 = v4 + 1;
    sub_2210BBC64(*a1, v4 + 1);
    *(*(v3 + 1) + 4 * v4) = v5;
  }

  else
  {
    *(*(v3 + 1) + 4 * v4) = v5;
    v6 = v4 + 1;
  }

  *v3 = v6;
  return a1;
}

uint64_t *sub_221289624(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_221287954(a1, a2);
  }

  return a1;
}

void sub_221289680(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_22128969C(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 16 == a2)
    {
      v9 = *__src;
      memmove(__src, __src + 16, v6);
      v4 = &__src[v6];
      *v4 = v9;
    }

    else if (a2 + 16 == a3)
    {
      v4 = __src + 16;
      v10 = *(a3 - 1);
      v7 = a3 - 16 - __src;
      if (a3 - 16 != __src)
      {
        memmove(__src + 16, __src, v7);
      }

      *__src = v10;
    }

    else
    {
      return sub_221289778(__src, a2, a3);
    }
  }

  return v4;
}

char *sub_221289778(char *a1, char *a2, char *a3)
{
  v3 = (a2 - a1) >> 4;
  v4 = a3 - a2;
  if (v3 == (a3 - a2) >> 4)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = a1 + 16;
      v6 = a2 + 16;
      do
      {
        v7 = *(v5 - 1);
        *(v5 - 1) = *(v6 - 1);
        *(v6 - 1) = v7;
        if (v5 == a2)
        {
          break;
        }

        v5 += 16;
        v8 = v6 == a3;
        v6 += 16;
      }

      while (!v8);
    }
  }

  else
  {
    v9 = v4 >> 4;
    v10 = (a2 - a1) >> 4;
    do
    {
      v11 = v10;
      v10 = v9;
      v9 = v11 % v9;
    }

    while (v9);
    v12 = &a1[16 * v10];
    do
    {
      v13 = *(v12 - 1);
      v12 -= 16;
      v14 = &v12[a2 - a1];
      v15 = v12;
      do
      {
        v16 = v14;
        *v15 = *v14;
        v17 = &v14[16 * v3];
        v18 = __OFSUB__(v3, (a3 - v14) >> 4);
        v20 = v3 - ((a3 - v14) >> 4);
        v19 = (v20 < 0) ^ v18;
        v14 = &a1[16 * v20];
        if (v19)
        {
          v14 = v17;
        }

        v15 = v16;
      }

      while (v14 != v12);
      *v16 = v13;
    }

    while (v12 != a1);
    return &a1[v4];
  }

  return a2;
}

void sub_221289858(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t *sub_2212898B0(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

double sub_221289AE8(long double a1)
{
  v1 = a1;
  dword_27CFB6C58 = 1;
  if (!isnan(a1))
  {
    v2 = *&qword_27CFB4C80;
    if (*&qword_27CFB4C80 != v1)
    {
      if (-*&qword_27CFB4C80 == v1)
      {
        return *&qword_27CFB4C88;
      }

      v4 = fabs(v1);
      if (v4 > 33.0)
      {
        if (v1 >= 0.0)
        {
          v11 = sub_221289D18(v1);
          return v11 * dword_27CFB6C58;
        }

        v5 = floor(v4);
        if (v5 != v4)
        {
          if ((v5 & 1) == 0)
          {
            dword_27CFB6C58 = -1;
          }

          v6 = v4 - v5;
          v7 = v4 - (v5 + 1.0);
          if (v6 <= 0.5)
          {
            v7 = v6;
          }

          v8 = *&qword_27CFB4C70;
          v9 = v4 * sin(v7 * *&qword_27CFB4C70);
          if (v9 == 0.0)
          {
            return v2 * dword_27CFB6C58;
          }

          v11 = v8 / (fabs(v9) * sub_221289D18(v4));
          return v11 * dword_27CFB6C58;
        }

LABEL_28:
        sub_22137A674("gamma", 1);
        return *&qword_27CFB4C88;
      }

      for (i = 1.0; v1 >= 3.0; i = i * v1)
      {
        v1 = v1 + -1.0;
      }

      if (v1 < 0.0)
      {
        while (v1 <= -0.000000001)
        {
          i = i / v1;
          v1 = v1 + 1.0;
          if (v1 >= 0.0)
          {
            goto LABEL_20;
          }
        }

LABEL_27:
        if (v1 != 0.0)
        {
          return i / (v1 * (v1 * 0.577215665 + 1.0));
        }

        goto LABEL_28;
      }

LABEL_20:
      if (v1 < 2.0)
      {
        while (v1 >= 0.000000001)
        {
          i = i / v1;
          v1 = v1 + 1.0;
          if (v1 >= 2.0)
          {
            goto LABEL_23;
          }
        }

        goto LABEL_27;
      }

LABEL_23:
      if (v1 == 2.0)
      {
        return i;
      }

      else
      {
        v12 = v1 + -2.0;
        v13 = sub_2215C4B34(dbl_27CFB42D0, 6, v12);
        return i * v13 / sub_2215C4B34(dbl_27CFB4308, 7, v12);
      }
    }
  }

  return v1;
}

double sub_221289D18(long double a1)
{
  v2 = 1.0 / a1;
  v3 = sub_2215C4B34(dbl_27CFB43D0, 4, 1.0 / a1);
  v4 = exp(a1);
  if (a1 <= 143.01608)
  {
    v6 = pow(a1, a1 + -0.5) / v4;
  }

  else
  {
    v5 = pow(a1, a1 * 0.5 + -0.25);
    v6 = v5 * (v5 / v4);
  }

  return (v2 * v3 + 1.0) * (v6 * 2.50662827);
}

long double sub_221289DC8(long double a1)
{
  v1 = a1;
  dword_27CFB6C58 = 1;
  if (isnan(a1))
  {
    return v1;
  }

  if (v1 < -34.0)
  {
    v2 = -v1;
    v3 = sub_221289DC8(-v1);
    v4 = floor(-v1);
    if (v4 != -v1)
    {
      v5 = (v4 & 1) != 0 ? 1 : -1;
      dword_27CFB6C58 = v5;
      v6 = v2 - v4;
      v7 = v4 + 1.0 + v1;
      if (v6 <= 0.5)
      {
        v7 = v6;
      }

      v8 = sin(v7 * *&qword_27CFB4C70) * v2;
      if (v8 != 0.0)
      {
        return 1.14472989 - log(v8) - v3;
      }
    }

LABEL_10:
    sub_22137A674("lgam", 2);
    return *&qword_27CFB4C80;
  }

  if (v1 >= 13.0)
  {
    if (v1 > 2.556348e305)
    {
      return *&qword_27CFB4C80 * dword_27CFB6C58;
    }

    v15 = 0.918938533 - (v1 - (v1 + -0.5) * log(v1));
    if (v1 > 100000000.0)
    {
      return v15;
    }

    v19 = 1.0 / (v1 * v1);
    if (v1 >= 1000.0)
    {
      v20 = (v19 * 0.000793650794 + -0.00277777778) * v19 + 0.0833333333;
    }

    else
    {
      v20 = sub_2215C4B34(dbl_27CFB43A8, 4, v19);
    }

    return v15 + v20 / v1;
  }

  if (v1 >= 3.0)
  {
    v10 = 0.0;
    v9 = 1.0;
    do
    {
      v10 = v10 + -1.0;
      v11 = v10 + v1;
      v9 = v9 * (v10 + v1);
    }

    while (v10 + v1 >= 3.0);
  }

  else
  {
    v9 = 1.0;
    v10 = 0.0;
    v11 = v1;
  }

  if (v11 < 2.0)
  {
    while (v11 != 0.0)
    {
      v9 = v9 / v11;
      v10 = v10 + 1.0;
      v11 = v10 + v1;
      if (v10 + v1 >= 2.0)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_10;
  }

LABEL_21:
  if (v9 >= 0.0)
  {
    v12 = 1;
  }

  else
  {
    v12 = -1;
  }

  if (v9 >= 0.0)
  {
    v13 = v9;
  }

  else
  {
    v13 = -v9;
  }

  dword_27CFB6C58 = v12;
  if (v11 != 2.0)
  {
    v16 = v10 + -2.0 + v1;
    v17 = v16 * sub_2215C4B34(dbl_27CFB4348, 5, v16);
    v18 = v17 / sub_2215C4B50(dbl_27CFB4378, 6, v16);
    return log(v13) + v18;
  }

  return log(v13);
}

void sub_22128A590(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSTCategoryOwner;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_22128B73C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_22128C4D0(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = a2;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v16, v20, 16);
  if (v5)
  {
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v12 = objc_msgSend_groupByUid(v8, v9, v10, v11, v16);
        if (v12 | v13)
        {
          objc_msgSend_linkGroupBy_(*(a1 + 32), v13, v8, v14);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v15, &v16, v20, 16);
    }

    while (v5);
  }
}

void sub_22128D398(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  refreshed = objc_msgSend_p_willApplyCell_baseCellCoord_refreshCategoryInfo_(*(a1 + 32), v5, v8, a2, 0);
  if (refreshed | v6)
  {
    objc_msgSend_addUUID_(*(a1 + 40), v6, refreshed, v6);
  }
}

void sub_22128D6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = a5;
  refreshed = objc_msgSend_p_willApplyCell_baseCellCoord_refreshCategoryInfo_(*(a1 + 32), v7, v10, a4, 0);
  if (refreshed | v8)
  {
    objc_msgSend_addUUID_(*(a1 + 40), v8, refreshed, v8);
  }
}

uint64_t sub_22128D934(uint64_t a1, const char *a2)
{
  objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(*(a1 + 48), a2, *(a1 + 32), a2, 1);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  return objc_msgSend_p_willApplyCell_baseCellCoord_refreshCategoryInfo_(v5, v4, v6, a2, 1);
}

uint64_t sub_22128EC98(void *a1, void *a2)
{
  v2 = sub_22128ECEC(a1, 1, @"STOCK", 25, a2);

  return sub_221219994(v2);
}

uint64_t sub_22128ECEC(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v13 = a5;
  if (!v13)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "NSInteger StockAttributeFromString(NSString *__strong, NSUInteger, NSString *__strong, NSInteger, TSULocale *__strong)", v12);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataModeUtility.m", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 22, 0, "invalid nil value for '%{public}s'", "documentLocale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
    v13 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v26, v27, v28);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_6;
  }

  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = objc_msgSend_functionSpecForFunctionName_(TSCEFunctionSpec, v11, v10, v12);
  v16 = objc_msgSend_modeNumberForLocalizedString_argumentSpecIndex_attributeMax_locale_(v14, v15, v9, a2, a4, v13);

LABEL_6:
  return v16;
}

void sub_221291414(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  objc_opt_class();
  v6 = TSUCheckedDynamicCast();
  *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_lastIndex(v6, v7, v8, v9);
  if (*(*(*(a1 + 32) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL)
  {
    *a4 = 1;
  }
}

void sub_22129452C(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_221294624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_221294AE8(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_27CFB53C8;
  qword_27CFB53C8 = v1;
}

void sub_221294DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_221294DF4()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_221294FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_221295014()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2212950D8(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_221295424(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2212954DC;
  block[3] = &unk_2784625A8;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_barrier_async(v6, block);
}

void sub_2212954DC(id *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = a1[4];
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v20, v24, 16);
  if (v7)
  {
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        v11 = objc_msgSend_cachedQuotes(a1[5], v4, v5, v6);
        v15 = objc_msgSend_symbol(v10, v12, v13, v14);
        objc_msgSend_setObject_forKeyedSubscript_(v11, v16, v10, v15);

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v20, v24, 16);
    }

    while (v7);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2212956C4;
  v17[3] = &unk_278462580;
  v19 = a1[6];
  v18 = a1[4];
  dispatch_async(MEMORY[0x277D85CD0], v17);
}

void sub_2212957CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221295878;
  v6[3] = &unk_278462580;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t sub_22129599C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2212959B4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v10 = objc_msgSend_cachedSpecifiers(*(a1 + 32), a2, a3, a4);
  v7 = objc_msgSend_objectForKeyedSubscript_(v10, v5, *(a1 + 40), v6);
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_221295B44(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v10 = objc_msgSend_cachedQuotes(*(a1 + 32), a2, a3, a4);
  v7 = objc_msgSend_objectForKeyedSubscript_(v10, v5, *(a1 + 40), v6);
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_221295DC0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v106 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_copy(*(a1 + 32), a2, a3, a4);
  v9 = objc_msgSend_set(TSCERemoteDataSpecifierSet, v6, v7, v8);
  obj = *(*(a1 + 40) + 16);
  objc_sync_enter(obj);
  v13 = objc_msgSend_storeMap(*(a1 + 40), v10, v11, v12);
  v16 = objc_msgSend_objectForKey_(v13, v14, *(a1 + 48), v15);

  if (v16)
  {
    v91 = v16;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v20 = objc_msgSend_storeMap(*(a1 + 40), v17, v18, v19);
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v100, v105, 16);
    if (v25)
    {
      v26 = *v101;
      do
      {
        v27 = 0;
        do
        {
          if (*v101 != v26)
          {
            objc_enumerationMutation(v20);
          }

          v28 = *(*(&v100 + 1) + 8 * v27);
          v29 = objc_msgSend_storeMap(*(a1 + 40), v22, v23, v24);
          v32 = objc_msgSend_objectForKeyedSubscript_(v29, v30, v28, v31);
          v35 = objc_msgSend_setOfSpecifiersContainedInSet_(v5, v33, v32, v34);
          objc_msgSend_insertSpecifiersFromSet_(v9, v36, v35, v37);

          ++v27;
        }

        while (v25 != v27);
        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v100, v105, 16);
      }

      while (v25);
    }

    v16 = v91;
    objc_msgSend_removeSpecifiersFromSet_(v5, v38, v9, v39);
    objc_msgSend_insertSpecifiersFromSet_(v91, v40, *(a1 + 32), v41);
  }

  objc_sync_exit(obj);
  v45 = objc_msgSend_cachedSpecifiers(*(a1 + 40), v42, v43, v44);
  v48 = objc_msgSend_mapForSpecifiersInSet_(v45, v46, *(a1 + 32), v47);

  if (objc_msgSend_count(v48, v49, v50, v51) >= 1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2212962D8;
    block[3] = &unk_278462620;
    v55 = *(a1 + 48);
    block[4] = *(a1 + 40);
    v98 = v55;
    v56 = v48;
    v99 = v56;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v60 = objc_msgSend_allSpecifiers(v56, v57, v58, v59);
    v64 = objc_msgSend_coldSpecifierSet(v60, v61, v62, v63);
    objc_msgSend_removeSpecifiersFromSet_(v5, v65, v64, v66);
  }

  if (objc_msgSend_count(v5, v52, v53, v54))
  {
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v70 = objc_msgSend_sourceFetchers(*(a1 + 40), v67, v68, v69);
    v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v71, &v93, v104, 16);
    if (v74)
    {
      v75 = *v94;
      do
      {
        v76 = 0;
        do
        {
          if (*v94 != v75)
          {
            objc_enumerationMutation(v70);
          }

          v77 = objc_msgSend_addRemoteDataInterest_(*(*(&v93 + 1) + 8 * v76), v72, v5, v73);
          objc_msgSend_removeSpecifiersFromSet_(v5, v78, v77, v79);

          ++v76;
        }

        while (v74 != v76);
        v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v72, &v93, v104, 16);
      }

      while (v74);
    }
  }

  if (objc_msgSend_count(v5, v67, v68, v69))
  {
    v82 = MEMORY[0x277D81150];
    v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "[TSCERemoteDataCoordinator addRemoteDataInterest:forStore:]_block_invoke", v81);
    v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataCoordinator.mm", v85);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v82, v87, v83, v86, 347, 0, "Unclaimed specifiers after register!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89, v90);
  }
}

void *sub_2212962D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_p_canUpdateStore_(*(a1 + 32), a2, *(a1 + 40), a4);
  if (result)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);

    return MEMORY[0x2821F9670](v6, sel_remoteDataDidUpdateValues_quotes_, v7, 0);
  }

  return result;
}

void sub_221296B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

void sub_221296D90(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_221296EF8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2212971C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id obj, void *a10, void *a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_221297278(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (objc_msgSend_containsSpecifiersWithSymbol_(*(a1 + 32), v6, v9, v7))
  {
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v8, v5, v9);
  }
}

void sub_2212973CC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v92 = *MEMORY[0x277D85DE8];
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = sub_22129599C;
  v89 = sub_2212959AC;
  v90 = 0;
  v5 = *(a1 + 32);
  if (v5 && objc_msgSend_count(v5, a2, a3, a4))
  {
    v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3, a4);
    v7 = v86[5];
    v86[5] = v6;

    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = sub_221297904;
    v84[3] = &unk_278462670;
    v8 = *(a1 + 32);
    v84[4] = *(a1 + 40);
    v84[5] = &v85;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v8, v9, v84, v10);
    if (__C != -1)
    {
      sub_2216F75FC();
    }

    v14 = objc_msgSend_cachedQuotes(*(a1 + 40), v11, v12, v13);
    objc_msgSend_addEntriesFromDictionary_(v14, v15, v86[5], v16);
  }

  v17 = objc_msgSend_cachedSpecifiers(*(a1 + 40), a2, a3, a4);
  v75 = objc_msgSend_updateWithValuesFromMap_overwriteValues_(v17, v18, *(a1 + 48), 1);

  v22 = objc_msgSend_allSpecifiers(*(a1 + 48), v19, v20, v21);
  v25 = objc_msgSend_containsSpecifiersFromSet_(v22, v23, v75, v24);

  if ((v25 & 1) == 0)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSCERemoteDataCoordinator sourceFetcherDidUpdate:withValues:quotes:]_block_invoke", v28);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataCoordinator.mm", v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v33, 590, 0, "Unexpected changes!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37);
  }

  v38 = *(a1 + 40);
  v39 = objc_msgSend_allSpecifiers(*(a1 + 48), v26, v27, v28);
  v41 = objc_msgSend_p_actionMapForKeys_quotes_(v38, v40, v39, v86[5]);

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v42 = v41;
  v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v80, v91, 16);
  if (v44)
  {
    v47 = *v81;
    do
    {
      v76 = v44;
      for (i = 0; i != v76; ++i)
      {
        if (*v81 != v47)
        {
          objc_enumerationMutation(v42);
        }

        v49 = *(*(&v80 + 1) + 8 * i);
        if (objc_msgSend_p_canUpdateStore_(*(a1 + 40), v45, v49, v46))
        {
          v50 = objc_msgSend_objectForKeyedSubscript_(v42, v45, v49, v46);
          v54 = objc_msgSend_allSpecifiers(*(a1 + 48), v51, v52, v53);
          v58 = objc_msgSend_first(v50, v55, v56, v57);
          v61 = objc_msgSend_setByIntersectingWithSymbolsOfSet_(v54, v59, v58, v60);

          v64 = objc_msgSend_mapForSpecifiersInSet_(*(a1 + 48), v62, v61, v63);
          v68 = objc_msgSend_second(v50, v65, v66, v67);
          v77[0] = MEMORY[0x277D85DD0];
          v77[1] = 3221225472;
          v77[2] = sub_221297A64;
          v77[3] = &unk_278462698;
          v77[4] = *(a1 + 40);
          v77[5] = v49;
          v78 = v64;
          v79 = v68;
          v69 = v68;
          v70 = v64;
          v71 = MEMORY[0x223DA1C10](v77);
          dispatch_get_global_queue(9, 0);
          v72 = v47;
          v74 = v73 = v42;
          dispatch_async(v74, v71);

          v42 = v73;
          v47 = v72;
        }
      }

      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v45, &v80, v91, 16);
    }

    while (v44);
  }

  _Block_object_dispose(&v85, 8);
}

void sub_22129781C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  _Block_object_dispose(&a35, 8);

  _Unwind_Resume(a1);
}

void sub_221297904(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  v9 = objc_msgSend_date(v5, v6, v7, v8);

  if (v9)
  {
    objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 40) + 8) + 40), v10, v5, v21);
  }

  else
  {
    v13 = objc_msgSend_cachedQuotes(*(a1 + 32), v10, v11, v12);
    v16 = objc_msgSend_objectForKeyedSubscript_(v13, v14, v21, v15);

    if (!v16 || (objc_msgSend_date(v16, v17, v18, v19), v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
    {
      objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 40) + 8) + 40), v17, v5, v21);
    }
  }
}

void sub_221297A20()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void *sub_221297A64(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_p_canUpdateStore_(*(a1 + 32), a2, *(a1 + 40), a4);
  if (result)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);

    return MEMORY[0x2821F9670](v6, sel_remoteDataDidUpdateValues_quotes_, v7, v8);
  }

  return result;
}

void sub_221297B7C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  if (__C != -1)
  {
    sub_2216F7624();
  }

  objc_msgSend_p_revalidateOnlineStatus(*(a1 + 40), a2, a3, a4);
  objc_msgSend_p_actionMapForKeys_quotes_(*(a1 + 40), v5, *(a1 + 48), 0);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v27, v33, 16);
  if (v10)
  {
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v7, v8, v9);
        v18 = objc_msgSend_calculationEngine(v13, v15, v16, v17);
        v22 = objc_msgSend_documentRoot(v18, v19, v20, v21);
        v31 = @"TSCERemoteDataServerStatusChangesKey";
        v32 = @"TSCERemoteDataServerStatusChangeToOfflineKey";
        v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, &v32, &v31, 1);
        objc_msgSend_postNotificationName_object_userInfo_(v14, v25, @"TSCERemoteDataServerStatusChangeNotification", v22, v24);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v27, v33, 16);
    }

    while (v10);
  }
}

void sub_221297DAC()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_221297EB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  if (__C != -1)
  {
    sub_2216F7638();
  }

  objc_msgSend_p_revalidateOnlineStatus(*(a1 + 40), a2, a3, a4);
  objc_msgSend_p_actionMapForKeys_quotes_(*(a1 + 40), v5, *(a1 + 48), 0);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v27, v33, 16);
  if (v10)
  {
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v7, v8, v9);
        v18 = objc_msgSend_calculationEngine(v13, v15, v16, v17);
        v22 = objc_msgSend_documentRoot(v18, v19, v20, v21);
        v31 = @"TSCERemoteDataServerStatusChangesKey";
        v32 = @"TSCERemoteDataServerStatusChangeToOnlineKey";
        v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, &v32, &v31, 1);
        objc_msgSend_postNotificationName_object_userInfo_(v14, v25, @"TSCERemoteDataServerStatusChangeNotification", v22, v24);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v27, v33, 16);
    }

    while (v10);
  }
}

void sub_2212980E4()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_221299B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20)
{
  a20 = (v22 - 128);
  sub_22107C2C0(&a20);

  _Unwind_Resume(a1);
}

void *sub_221299CEC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_22107C1F0(result, a2);
    }

    sub_22107C148();
  }

  return result;
}

void sub_221299D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22129B284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a10;
  sub_22107C2C0(&a14);

  _Unwind_Resume(a1);
}

void *sub_22129BBC4(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 61))
    {
      v7 = v5 >> 2;
      if (v5 >> 2 <= a2)
      {
        v7 = a2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        v8 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      sub_221123150(a1, v8);
    }

    sub_22107C148();
  }

  v9 = a1[1];
  v10 = (v9 - result) >> 3;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 3;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = (v11 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = result + 1;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v12), xmmword_2217E0F60)));
      if (v17.i8[0])
      {
        *(v16 - 1) = v13;
      }

      if (v17.i8[4])
      {
        *v16 = v13;
      }

      v12 += 2;
      v16 += 2;
    }

    while (v14 != v12);
  }

  v18 = a2 >= v10;
  v19 = a2 - v10;
  if (v19 != 0 && v18)
  {
    v20 = 0;
    v21 = v9 + 8 * v19;
    v22 = *a3;
    v23 = (8 * a2 - (v9 - result) - 8) >> 3;
    v24 = vdupq_n_s64(v23);
    v25 = (v9 + 8);
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v20), xmmword_2217E0F60)));
      if (v26.i8[0])
      {
        *(v25 - 1) = v22;
      }

      if (v26.i8[4])
      {
        *v25 = v22;
      }

      v20 += 2;
      v25 += 2;
    }

    while (((v23 + 2) & 0x3FFFFFFFFFFFFFFELL) != v20);
    a1[1] = v21;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

_DWORD *sub_22129BDB8(uint64_t *a1, unint64_t a2, int *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 62))
    {
      v7 = v5 >> 1;
      if (v5 >> 1 <= a2)
      {
        v7 = a2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v8 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      sub_221287954(a1, v8);
    }

    sub_22107C148();
  }

  v9 = a1[1];
  v10 = (v9 - result) >> 2;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 2;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = result + 2;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2217E0F60)));
      if (vuzp1_s16(v18, *v15.i8).u8[0])
      {
        *(v16 - 2) = v13;
      }

      if (vuzp1_s16(v18, *&v15).i8[2])
      {
        *(v16 - 1) = v13;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2217E0F70)))).i32[1])
      {
        *v16 = v13;
        v16[1] = v13;
      }

      v12 += 4;
      v16 += 4;
    }

    while (v14 != v12);
  }

  v19 = a2 >= v10;
  v20 = a2 - v10;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = v9 + 4 * v20;
    v23 = *a3;
    v24 = (4 * a2 - (v9 - result) - 4) >> 2;
    v25 = vdupq_n_s64(v24);
    v26 = (v9 + 8);
    do
    {
      v27 = vdupq_n_s64(v21);
      v28 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_2217E0F60)));
      if (vuzp1_s16(v28, *v25.i8).u8[0])
      {
        *(v26 - 2) = v23;
      }

      if (vuzp1_s16(v28, *&v25).i8[2])
      {
        *(v26 - 1) = v23;
      }

      if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_2217E0F70)))).i32[1])
      {
        *v26 = v23;
        v26[1] = v23;
      }

      v21 += 4;
      v26 += 4;
    }

    while (((v24 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    a1[1] = v22;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

void sub_22129CBBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  v36 = *(v34 - 152);
  if (v36)
  {
    *(v34 - 144) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(a1);
}

__n128 *sub_22129CE20(char **a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      sub_22107C148();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v29 = a1;
    if (v14)
    {
      sub_221086F74(a1, v14);
    }

    v26 = 0;
    v27 = 16 * v15;
    v28 = (16 * v15);
    sub_221088570(&v26, a3);
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
    a1[1] = &v6[1];
  }

  else
  {
    v8 = __src + 1;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = &v6[1];
      *v6 = v6[-1];
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1], __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = a3[v24];
  }

  return v4;
}

void sub_22129CFBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22129CFF4(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    sub_2212A3E3C(result, a2 - v2);
  }
}

uint64_t sub_22129D024(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 0x7A1200)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUCellRangeFromRowRange(NSRange, TSUColumnRowSize)", a4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 382, 0, "out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  if (a2 + a3 >= 0x7A1201)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUCellRangeFromRowRange(NSRange, TSUColumnRowSize)", a4);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 383, 0, "out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  v55[0] = objc_msgSend_range(*(a1 + 32), a2, a3, a4, a2, (a3 << 32) | 0x7D0);
  v55[1] = v25;
  v26 = sub_2210AFE68(&v51, v55);
  v28 = j__TSUCellRectToTSCERangeCoordinate(v26, v27);
  v30 = v29;
  v33 = objc_msgSend_range(*(a1 + 32), v29, v31, v32);
  v35 = j__TSUCellRectToTSCERangeCoordinate(v33, v34);
  v37 = v36;
  v38 = *(a1 + 40);
  v51 = objc_msgSend_aggregateFormulaOwnerUID(*(a1 + 32), v36, v39, v40);
  v52 = v41;
  objc_msgSend_dirtyCellsForRemovalOfRows_fromTable_tableRange_(v38, v41, a2, a3, &v51, v35, v37);
  v42 = *(a1 + 40);
  v46 = objc_msgSend_aggregateFormulaOwnerUID(*(a1 + 32), v43, v44, v45);
  v51 = v28;
  v52 = v30;
  v53 = v46;
  v54 = v47;
  objc_msgSend_removeFormulasFromRange_(v42, v47, &v51, v48);
  return objc_msgSend_removeRows_(*(*(a1 + 32) + 72), v49, a2, a3);
}

void sub_22129D230(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if ((sub_2211A8E20(a2, a3) & 1) == 0)
  {
    v7 = objc_msgSend_groupLevelForGroupUid_(*(a1 + 32), v6, a2, a3);
    v11 = objc_msgSend_tableInfo(*(a1 + 40), v8, v9, v10);
    v15 = objc_msgSend_groupBy(v11, v12, v13, v14);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_22129D34C;
    v19[3] = &unk_2784626C0;
    v23 = v7;
    v16 = *(a1 + 48);
    v19[4] = *(a1 + 40);
    v21 = a2;
    v22 = a3;
    v20 = v16;
    objc_msgSend_enumerateAggregates_(v15, v17, v19, v18);
  }
}

void sub_22129D34C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a1 + 64) == a5)
  {
    v6 = objc_msgSend_summaryCellVendor(*(a1 + 32), a2, a3, a4);
    TSTMakeCellUID(v38);
    v9 = objc_msgSend_cellAtCellUID_(v6, v7, v38, v8);

    v10 = *(a1 + 40);
    TSTMakeCellUID(v38);
    v16 = objc_msgSend_cellIDForCellUID_(v10, v11, v38, v12);
    if (v16 == 0x7FFFFFFF || (v16 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTSummaryModel resetForCategoriesWithForce:]_block_invoke_3", v15);
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v31);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v33, v29, v32, 461, 0, "we should have a valid coordinate");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36);
    }

    else
    {
      v17 = *(a1 + 32);
      v18 = v17[9];
      *&v38[0] = objc_msgSend_aggregateFormulaOwnerUID(v17, v13, v14, v15);
      *(&v38[0] + 1) = v19;
      v22 = objc_msgSend_tableInfo(*(a1 + 32), v19, v20, v21);
      v26 = objc_msgSend_calcEngine(v22, v23, v24, v25);
      v37 = 257;
      objc_msgSend_setCell_atCellID_tableUID_calculationEngine_conditionalStyleOwner_ignoreFormula_clearImportWarnings_doRichTextDOLC_(v18, v27, v9, v16, v38, v26, 0, 0, v37);
    }
  }
}

void sub_22129D538(uint64_t a1, __int128 *a2)
{
  v4 = a2[1];
  v22 = *a2;
  v23 = v4;
  v5 = sub_2211A8FF4(&v22);
  v6 = a2[1];
  v21 = *a2;
  v22 = v21;
  v23 = v6;
  v7 = sub_2211A910C(&v22);
  if (v5 != 255)
  {
    v11 = v7;
    v12 = objc_msgSend_tableInfo(*(a1 + 32), v8, v9, v10);
    v16 = objc_msgSend_groupBy(v12, v13, v14, v15);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_22129D650;
    v18[3] = &unk_2784626E8;
    v19 = v21;
    v20 = v11;
    v18[4] = *(a1 + 32);
    objc_msgSend_enumerateGroupsAtLevel_withBlock_(v16, v17, v5, v18);
  }
}

void sub_22129D650(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  v39 = 0u;
  v40 = 0u;
  if (*(a1 + 56) == 1)
  {
    v8 = objc_msgSend_groupUid(v3, v4, v5, v6);
    sub_2211A8DF4(v8, v9);
  }

  else
  {
    v10 = objc_msgSend_groupUid(v3, v4, v5, v6);
    sub_2211A8DC8(v10, v11);
  }

  TSTMakeCellUID(&v39);
  v15 = objc_msgSend_summaryCellVendor(*(a1 + 32), v12, v13, v14);
  v18 = objc_msgSend_cellAtCellUID_(v15, v16, &v39, v17);

  v19 = *(*(a1 + 32) + 80);
  v38[0] = v39;
  v38[1] = v40;
  v25 = objc_msgSend_cellIDForCellUID_(v19, v20, v38, v21);
  if (v25 != 0x7FFFFFFF && (v25 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v27 = *(a1 + 32);
    v28 = v27[9];
    *&v38[0] = objc_msgSend_aggregateFormulaOwnerUID(v27, v22, v23, v24);
    *(&v38[0] + 1) = v29;
    v32 = objc_msgSend_tableInfo(*(a1 + 32), v29, v30, v31);
    v36 = objc_msgSend_calcEngine(v32, v33, v34, v35);
    objc_msgSend_setCell_atCellID_tableUID_calculationEngine_conditionalStyleOwner_ignoreFormula_clearImportWarnings_doRichTextDOLC_(v28, v37, v18, v25, v38, v36, 0, 0, 256);
  }
}

void sub_22129DD34(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 88))
  {
    v3 = [TSTSummaryCellVendor alloc];
    v6 = objc_msgSend_initWithTableInfo_(v3, v4, *(*(a1 + 32) + 104), v5);
    v7 = *(a1 + 32);
    v8 = *(v7 + 88);
    *(v7 + 88) = v6;

    v2 = *(a1 + 32);
  }

  if (!*(v2 + 96))
  {
    v9 = [TSTCategoryAggregateFormulaOwner alloc];
    v17[0] = objc_msgSend_tableUID(*(*(a1 + 32) + 104), v10, v11, v12);
    v17[1] = v13;
    v14 = objc_msgSend_initWithTableUID_ownerUID_(v9, v13, v17, *(a1 + 32) + 128);
    v15 = *(a1 + 32);
    v16 = *(v15 + 96);
    *(v15 + 96) = v14;
  }
}

void sub_22129E444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char *a39)
{
  _Block_object_dispose(&a24, 8);

  _Block_object_dispose(&a30, 8);
  sub_22107C860(v42 + 64, a39);
  _Unwind_Resume(a1);
}

uint64_t sub_22129E4E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22129E4F8(uint64_t a1, __int128 *a2, void *a3, uint64_t a4)
{
  objc_msgSend_copyToCell_(a3, a2, *(a1 + 32), a4);
  if (*(a1 + 64) > 0xA000100000006uLL)
  {
    goto LABEL_8;
  }

  v9 = a2[1];
  v63 = *a2;
  v64 = v9;
  if (sub_2211A9038(&v63) || (v10 = a2[1], v63 = *a2, v64 = v10, sub_2211A910C(&v63)))
  {
    if (*a2 == *"category column" && *(a2 + 1) == *" column")
    {
      goto LABEL_8;
    }

    v11 = objc_msgSend_tableInfo(*(a1 + 40), v6, v7, v8);
    v13 = objc_msgSend_columnIndexForColumnUID_(v11, v12, *a2, *(a2 + 1));

    v14 = 0x7FFF;
  }

  else
  {
    if (*a2 != *"category column" || *(a2 + 1) != *" column")
    {
      goto LABEL_12;
    }

    v16 = objc_msgSend_tableInfo(*(a1 + 40), v6, v7, v8);
    v13 = objc_msgSend_rowIndexForRowUID_(v16, v17, *(a2 + 2), *(a2 + 3));

    v14 = 0x7FFFFFFF;
  }

  if (v13 != v14)
  {
LABEL_8:
    v15 = 0;
    goto LABEL_13;
  }

LABEL_12:
  objc_msgSend_clear(*(a1 + 32), v6, v7, v8);
  v15 = 1;
LABEL_13:
  v18 = objc_msgSend_validateAndRepair(*(a1 + 32), v6, v7, v8);
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  *&v63 = 0;
  *(&v63 + 1) = &v63;
  *&v64 = 0x3032000000;
  *(&v64 + 1) = sub_22129E4E0;
  v65 = sub_22129E4F0;
  v22 = objc_msgSend_documentRoot(*(a1 + 40), v19, v20, v21);
  v66 = objc_msgSend_customFormatList(v22, v23, v24, v25);

  v26 = *(a1 + 32);
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = sub_22129E8D4;
  v59[3] = &unk_278462788;
  v60 = v26;
  v61 = &v67;
  v62 = &v63;
  objc_msgSend_processCustomFormatsWithBlock_(v60, v27, v59, v28);
  v29 = *(v68 + 24);
  if (objc_msgSend_hasMismatchedFormatAndValue(*(a1 + 32), v30, v31, v32))
  {
    objc_msgSend_setDefaultFormatForValue(*(a1 + 32), v33, v34, v35);
LABEL_16:
    v36 = *(*(a1 + 48) + 8);
    v37 = *(v36 + 40);
    if (v37)
    {
      v38 = v37;
      v39 = *(v36 + 40);
      *(v36 + 40) = v38;
    }

    else
    {
      v39 = objc_msgSend_context(*(a1 + 40), v33, v34, v35);
      v42 = objc_msgSend_uuidBasedCellMapWithContext_(TSTCellMap, v40, v39, v41);
      v43 = *(*(a1 + 48) + 8);
      v44 = *(v43 + 40);
      *(v43 + 40) = v42;
    }

    if (objc_msgSend_isEmpty(*(a1 + 32), v45, v46, v47))
    {
      objc_msgSend_addCell_andCellUID_(*(*(*(a1 + 48) + 8) + 40), v48, 0, a2);
    }

    else
    {
      objc_msgSend_addCell_andCellUID_(*(*(*(a1 + 48) + 8) + 40), v48, *(a1 + 32), a2);
    }

    goto LABEL_22;
  }

  if ((v29 | v15 | v18))
  {
    goto LABEL_16;
  }

LABEL_22:
  v49 = *(a1 + 32);
  if (v49 && *(a1 + 64) <= 0xE000400000000uLL && objc_msgSend_hasFormula(v49, v33, v34, v35) && (objc_msgSend_cellFlags(*(a1 + 32), v50, v51, v52) & 0x200) != 0)
  {
    v55 = *(*(a1 + 40) + 80);
    v56 = a2[1];
    v57[0] = *a2;
    v57[1] = v56;
    v58 = objc_msgSend_cellIDForCellUID_(v55, v53, v57, v54);
    TSCECellCoordSet::addCellCoord((*(*(a1 + 56) + 8) + 48), &v58);
  }

  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v67, 8);
}

void sub_22129E8D4(uint64_t a1, void *a2)
{
  v45 = a2;
  v6 = objc_msgSend_customFormat(v45, v3, v4, v5);

  if (v6)
  {
    v10 = objc_msgSend_customFormatKey(v45, v7, v8, v9);
    v14 = objc_msgSend_customFormat(v45, v11, v12, v13);
    v16 = objc_msgSend_addCustomFormat_oldKey_fuzzyNameMatching_(*(*(*(a1 + 48) + 8) + 40), v15, v14, v10, 1);
    v19 = objc_msgSend_customFormatForKey_(*(*(*(a1 + 48) + 8) + 40), v17, v16, v18);
    v20 = v19;
    if (v16 != v10 || v19 != v14)
    {
      v22 = objc_alloc(MEMORY[0x277D80650]);
      v26 = objc_msgSend_formatType(v14, v23, v24, v25);
      v29 = objc_msgSend_customFormatForKey_(*(*(*(a1 + 48) + 8) + 40), v27, v16, v28);
      v31 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v22, v30, v26, v16, v29);

      objc_msgSend_updateCustomFormatFromPaste_(*(a1 + 32), v32, v31, v33);
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  else
  {
    v34 = objc_msgSend_formatType(*(a1 + 32), v7, v8, v9);
    if (v34 == objc_msgSend_formatType(v45, v35, v36, v37) && objc_msgSend_hasValue(*(a1 + 32), v38, v39, v40))
    {
      objc_msgSend_setDefaultFormatForValue(*(a1 + 32), v38, v39, v40);
    }

    else
    {
      v41 = *(a1 + 32);
      v42 = objc_msgSend_formatType(v45, v38, v39, v40);
      objc_msgSend_clearFormatOfType_(v41, v43, v42, v44);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_22129EC4C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_22129EC74(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (objc_msgSend_hasCellSpec(v5, v6, v7, v8))
  {
    v12 = objc_msgSend_copy(v5, v9, v10, v11);
    v13 = *(a2 + 1);
    v34[0] = *a2;
    v34[1] = v13;
    v14 = sub_2211A8FF4(v34);
    v16 = objc_msgSend_aggregateTypeForColumnUID_atGroupLevel_(*(*(a1 + 32) + 104), v15, *a2, a2[1], v14);
    v18 = objc_msgSend_cellSpecForAggregateType_forColumnUID_atGroupLevel_(*(*(a1 + 32) + 88), v17, v16, *a2, a2[1], v14);
    objc_msgSend_setCellSpec_(v12, v19, v18, v20);

    v24 = *(*(a1 + 40) + 8);
    v25 = *(v24 + 40);
    if (v25)
    {
      v26 = v25;
      v27 = *(v24 + 40);
      *(v24 + 40) = v26;
    }

    else
    {
      v27 = objc_msgSend_context(*(a1 + 32), v21, v22, v23);
      v30 = objc_msgSend_uuidBasedCellMapWithContext_(TSTCellMap, v28, v27, v29);
      v31 = *(*(a1 + 40) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;
    }

    objc_msgSend_addCell_andCellUID_(*(*(*(a1 + 40) + 8) + 40), v33, v12, a2);
  }
}

uint64_t sub_22129EFC0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return objc_msgSend_setAggregateType_forColumnUID_atGroupLevel_(*(a1 + 32), a2, a2, v5);
}

void sub_22129F2D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v8 = objc_msgSend_groupUid(v3, v5, v6, v7);
  v13 = objc_msgSend_rowIndexForRowUID_(v4, v9, v8, v9);
  if (v13 != 0x7FFFFFFF)
  {
    v14 = *(a1 + 80);
    memset(v23, 0, sizeof(v23));
    objc_msgSend_groupUid(v3, v10, v11, v12);
    TSTMakeCellUID(v23);
    v19 = v13 | (v14 << 32);
    if (objc_msgSend_getCell_atCellUID_(*(*(a1 + 32) + 88), v15, *(a1 + 40), v23))
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a1 + 40);
      if (!objc_msgSend_getCell_atCellCoord_(*(a1 + 32), v21, *(a1 + 48), v19))
      {
        objc_msgSend_copyJustValueToCell_(*(a1 + 48), v16, v20, v18);
      }
    }

    v22 = *(*(a1 + 64) + 8);
    if ((*(v22 + 24) & 1) == 0)
    {
      *(v22 + 24) = 1;
      objc_msgSend_willModify(*(a1 + 32), v16, v17, v18);
    }

    objc_msgSend_setCell_atCellID_tableUID_calculationEngine_conditionalStyleOwner_ignoreFormula_clearImportWarnings_(*(*(a1 + 32) + 72), v16, v20, v19, *(a1 + 32) + 128, *(a1 + 56), 0, 0, 0);
  }
}

void sub_22129FB7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22129FD7C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2 + a3;
  if (a2 != 0x7FFFFFFFFFFFFFFFLL && v7 != 0)
  {
    if (a2 >= 0x7D0)
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUCellRangeFromColumnRange(NSRange, TSUColumnRowSize)", a4);
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v30);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v28, v31, 373, 0, "out of bounds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35);
    }

    if (v7 >= 0x7D2)
    {
      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUCellRangeFromColumnRange(NSRange, TSUColumnRowSize)", a4);
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v39);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v41, v37, v40, 374, 0, "out of bounds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44);
    }
  }

  v47[0] = objc_msgSend_range(*(a1 + 32), a2, a3, a4, a2 << 32, a3 | 0x7A120000000000);
  v47[1] = v9;
  v10 = sub_2210AFE68(v45, v47);
  v12 = j__TSUCellRectToTSCERangeCoordinate(v10, v11);
  v14 = v13;
  v17 = objc_msgSend_range(*(a1 + 32), v13, v15, v16);
  v19 = j__TSUCellRectToTSCERangeCoordinate(v17, v18);
  objc_msgSend_dirtyCellsForRemovalOfColumns_fromTable_tableRange_(*(a1 + 40), v20, a2, a3, *(a1 + 32) + 128, v19, v20);
  v22 = *(a1 + 32);
  v21 = *(a1 + 40);
  v45[0] = v12;
  v45[1] = v14;
  v46 = *(v22 + 128);
  objc_msgSend_removeFormulasFromRange_(v21, v23, v45, v24);
  return objc_msgSend_removeColumns_(*(*(a1 + 32) + 72), v25, a2, a3);
}

uint64_t sub_22129FF84(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8[0] = objc_msgSend_columnUIDForColumnIndex_(*(*(a1 + 32) + 80), a2, a2, a4);
  v8[1] = v5;
  return objc_msgSend_removeCellsInColumnUid_(*(*(a1 + 32) + 88), v5, v8, v6);
}

void sub_2212A02D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v26 = 0u;
  v27 = 0u;
  objc_msgSend_groupUid(v3, v4, v5, v6);
  TSTMakeCellUID(&v26);
  v10 = objc_msgSend_summaryCellVendor(*(a1 + 32), v7, v8, v9);
  v13 = objc_msgSend_cellAtCellUID_(v10, v11, &v26, v12);

  v14 = *(*(a1 + 32) + 80);
  v25[0] = v26;
  v25[1] = v27;
  v20 = objc_msgSend_cellIDForCellUID_(v14, v15, v25, v16);
  if (v20 != 0x7FFFFFFF && (v20 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v22 = *(a1 + 32);
    v23 = v22[9];
    *&v25[0] = objc_msgSend_aggregateFormulaOwnerUID(v22, v17, v18, v19);
    *(&v25[0] + 1) = v24;
    objc_msgSend_setCell_atCellID_tableUID_calculationEngine_conditionalStyleOwner_ignoreFormula_clearImportWarnings_doRichTextDOLC_(v23, v24, v13, v20, v25, *(a1 + 40), 0, 0, 0);
  }
}

void sub_2212A0998(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_newCell(*(a1 + 32), a2, a3, a4);
  objc_msgSend_inflateFromStorageRef_dataStore_(v7, v6, a2, *(*(a1 + 32) + 72));
  (*(*(a1 + 40) + 16))();
}

void sub_2212A0D5C(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = a3;
  v11 = objc_msgSend_cellStyle(v22, v5, v6, v7);
  if (v11 || (objc_msgSend_textStyle(v22, v8, v9, v10), (v11 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend_hasRichText(v22, v12, v13, v14) & 1) != 0)
  {

LABEL_5:
    objc_msgSend_copyToCell_(v22, v18, *(a1 + 32), v19);
    objc_msgSend_adoptStylesheet_withMapper_supportsInlineAttachments_(*(a1 + 32), v20, *(a1 + 40), *(a1 + 48), *(a1 + 64));
    objc_msgSend_addCell_andCellUID_(*(a1 + 56), v21, *(a1 + 32), a2);
    goto LABEL_6;
  }

  if (objc_msgSend_hasFormulaSyntaxError(v22, v15, v16, v17))
  {
    goto LABEL_5;
  }

LABEL_6:
}

id sub_2212A0FB8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_addObject_(*(a1 + 32), v4, v3, v5);

  return v3;
}

void sub_2212A1010(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = a3;
  v7 = objc_msgSend_cellStyle(v23, v4, v5, v6);

  if (v7)
  {
    v11 = *(a1 + 32);
    v12 = objc_msgSend_cellStyle(v23, v8, v9, v10);
    objc_msgSend_addObject_(v11, v13, v12, v14);
  }

  v15 = objc_msgSend_textStyle(v23, v8, v9, v10);

  if (v15)
  {
    v19 = *(a1 + 32);
    v20 = objc_msgSend_textStyle(v23, v16, v17, v18);
    objc_msgSend_addObject_(v19, v21, v20, v22);
  }
}

id sub_2212A1518(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();

  return v1;
}

void sub_2212A1550(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (a2 && ((sub_22114503C(a2, 0x20, a3, a4) & 1) != 0 || sub_22114503C(a2, 0x40, v8, v9)))
  {
    objc_msgSend_inflateFromStorageRef_dataStore_(*(a1 + 32), v7, a2, *(*(a1 + 40) + 72));
    v12 = objc_msgSend_p_tableStyleAreaForCellCoord_(*(a1 + 40), v10, a3, v11);
    v19 = objc_msgSend_cellStyle(*(a1 + 32), v13, v14, v15);
    if (v19)
    {
      v20 = objc_msgSend_tableInfo(*(a1 + 40), v16, v17, v18);
      v23 = objc_msgSend_defaultCellStyleForTableStyleArea_(v20, v21, v12, v22);

      v26 = v19 == v23;
      if (v19 == v23)
      {
        objc_msgSend_setCellStyle_(*(a1 + 32), v24, 0, v25);
      }
    }

    else
    {
      v26 = 0;
    }

    v30 = objc_msgSend_textStyle(*(a1 + 32), v16, v17, v18);
    if (v30)
    {
      v31 = objc_msgSend_tableInfo(*(a1 + 40), v27, v28, v29);
      v34 = objc_msgSend_defaultTextStyleForTableStyleArea_(v31, v32, v12, v33);

      if (v30 == v34)
      {
        objc_msgSend_setTextStyle_(*(a1 + 32), v35, 0, v36);
      }

      else
      {

        if (!v26)
        {
LABEL_20:

          return;
        }
      }
    }

    else if (!v26)
    {
      goto LABEL_20;
    }

    v37 = *(a1 + 48);
    v38 = *(a1 + 32);
    v39 = *(*(a1 + 40) + 80);
    if (v39)
    {
      objc_msgSend_cellUIDForCellID_(v39, v27, a3, v29);
    }

    else
    {
      memset(v40, 0, sizeof(v40));
    }

    objc_msgSend_addCell_andCellUID_(v37, v27, v38, v40);
    goto LABEL_20;
  }
}

void sub_2212A1744(uint64_t a1, _OWORD *a2, void *a3)
{
  v5 = a3;
  v9 = objc_msgSend_cellStyle(v5, v6, v7, v8);
  if (v9)
  {

    goto LABEL_4;
  }

  v16 = objc_msgSend_textStyle(v5, v10, v11, v12);

  if (v16)
  {
LABEL_4:
    v17 = objc_msgSend_tableInfo(*(a1 + 32), v13, v14, v15);
    v18 = a2[1];
    v55[0] = *a2;
    v55[1] = v18;
    v21 = objc_msgSend_tableStyleAreaForCellUID_(v17, v19, v55, v20);

    objc_msgSend_copyToCell_(v5, v22, *(a1 + 40), v23);
    v30 = objc_msgSend_cellStyle(*(a1 + 40), v24, v25, v26);
    if (!v30)
    {
      v40 = 0;
      goto LABEL_12;
    }

    v31 = objc_msgSend_tableInfo(*(a1 + 32), v27, v28, v29);
    v34 = objc_msgSend_defaultCellStyleForTableStyleArea_(v31, v32, v21, v33);

    objc_opt_class();
    v35 = (*(*(a1 + 56) + 16))();
    v36 = TSUDynamicCast();

    if (v36 == v34)
    {
      v39 = 0;
    }

    else
    {
      v39 = v36;
      if (v36 == v30)
      {
        v40 = 0;
LABEL_11:

LABEL_12:
        v42 = objc_msgSend_textStyle(*(a1 + 40), v27, v28, v29);
        if (v42)
        {
          objc_opt_class();
          v43 = (*(*(a1 + 56) + 16))();
          v44 = TSUDynamicCast();

          v48 = objc_msgSend_tableInfo(*(a1 + 32), v45, v46, v47);
          v51 = objc_msgSend_defaultTextStyleForTableStyleArea_(v48, v49, v21, v50);

          if (v44 == v51)
          {
            v54 = 0;
          }

          else
          {
            v54 = v44;
            if (v44 == v42)
            {

              if ((v40 & 1) == 0)
              {
                goto LABEL_22;
              }

              goto LABEL_21;
            }
          }

          objc_msgSend_setTextStyle_(*(a1 + 40), v52, v54, v53);
        }

        else if (!v40)
        {
          goto LABEL_22;
        }

LABEL_21:
        objc_msgSend_addCell_andCellUID_(*(a1 + 48), v41, *(a1 + 40), a2);
LABEL_22:

        goto LABEL_23;
      }
    }

    objc_msgSend_setCellStyle_(*(a1 + 40), v37, v39, v38);
    v40 = 1;
    goto LABEL_11;
  }

LABEL_23:
}

void sub_2212A1BE8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2212A27F8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2212A2A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_2212A2D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2212A33CC(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v8 = *(a1 + 32);
  v9 = v8[10];
  if (v9)
  {
    objc_msgSend_cellUIDForCellID_(v9, v5, a2, v6);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  objc_msgSend_setCell_atCellUID_(v8, v5, v7, v10);
}

void sub_2212A3B14(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 4 * a2;
    }
  }

  else
  {
    sub_2212A451C(result, a2 - v2);
  }
}

uint64_t *sub_2212A3CC4(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_221086F38(result, a4);
  }

  return result;
}

void sub_2212A3D1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2212A3D38(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 8);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  v8 = 8 * v6;
  if (v4)
  {
    sub_2210BBD68(v4, v8 + 8);
  }

  else
  {
    v9 = operator new(v8 + 8);
  }

  *v9 = v4;
  v10 = v9 + 1;
  a1[1] = v6;
  *(a1 + 1) = v10;
  v11 = *a1;
  if (v11 >= 1)
  {
    memcpy(v10, v5 + 1, 8 * v11);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

void sub_2212A3E3C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_22107C148();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_221086F74(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void **sub_2212A3F50(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_221123150(v6, v10);
    }

    sub_22107C148();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15++ = v16;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

unsigned int **sub_2212A40F0(unsigned int **a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = *a2;
  if (v4 == (*a1)[1])
  {
    v6 = v4 + 1;
    sub_2212A3D38(*a1, v4 + 1);
    *(*(v3 + 1) + 8 * v4) = v5;
  }

  else
  {
    *(*(v3 + 1) + 8 * v4) = v5;
    v6 = v4 + 1;
  }

  *v3 = v6;
  return a1;
}

int *sub_2212A4164(uint64_t a1, int *a2, int *a3, unsigned int *a4)
{
  v4 = a2;
  v9 = a4;
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  do
  {
    v6 = *v4++;
    v8 = v6;
    sub_2212895B0(&v9, &v8);
  }

  while (v4 != v5);
  return v5;
}

uint64_t *sub_2212A41CC(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_221123150(v6, v10);
    }

    sub_22107C148();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t *sub_2212A42F8(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_221287954(v6, v10);
    }

    sub_22107C148();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t *sub_2212A4424(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_221123150(result, a4);
  }

  return result;
}

void sub_2212A4484(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2212A44A0(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_221287954(result, a4);
  }

  return result;
}

void sub_2212A4500(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2212A451C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_22107C148();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_2210C836C(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

id sub_2212A6B18(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  if (objc_msgSend_formatType(v6, v7, v8, v9) == 257)
  {
    v13 = MEMORY[0x277D81228];
    v14 = objc_msgSend_asCurrencyFormat(v6, v10, v11, v12);
    v18 = objc_msgSend_currencyCode(v14, v15, v16, v17);
    v21 = objc_msgSend_currencySymbolForCurrencyCode_(v13, v19, v18, v20);
  }

  else
  {
    v21 = 0;
  }

  v22 = objc_msgSend_formatType(v6, v10, v11, v12);
  v26 = objc_msgSend_documentRoot(a1, v23, v24, v25);
  v30 = objc_msgSend_documentLocale(v26, v27, v28, v29);
  v34 = objc_msgSend_percentSymbol(v30, v31, v32, v33);
  v36 = objc_msgSend_tst_selectionForImplicitlyEditingWithFormatType_percentSymbol_currencySymbol_adjustSelectionForCurrencyOrPercentSymbols_(a1, v35, v22, v34, v21, a4);

  return v36;
}

id sub_2212A6C84(void *a1, uint64_t a2, int a3, void *a4, void *a5, int a6)
{
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277D80EF8];
  v16 = objc_msgSend_length(a1, v13, v14, v15);
  v21 = objc_msgSend_selectionWithRange_(v12, v17, 0, v16);
  if (!a6)
  {
    goto LABEL_31;
  }

  if (a3 != 257)
  {
    if (a3 == 258)
    {
      v22 = objc_msgSend_range(a1, v18, v19, v20);
      v26 = v23;
      if (v23)
      {
        v27 = v22;
        v28 = objc_msgSend_string(a1, v23, v24, v25);
        hasSuffix = objc_msgSend_hasSuffix_(v28, v29, v10, v30);

        if (hasSuffix)
        {
          v35 = objc_msgSend_superRange(v21, v32, v33, v34);
          v39 = objc_msgSend_length(v10, v36, v37, v38);
          v41 = objc_msgSend_selectionWithRange_(MEMORY[0x277D80EF8], v40, v35, &v26[v27 - v39]);
LABEL_30:
          v80 = v41;

          v21 = v80;
          goto LABEL_31;
        }
      }
    }

    goto LABEL_31;
  }

  if (!v11)
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSWPStorage(TSTAdditions) tst_selectionForImplicitlyEditingWithFormatType:percentSymbol:currencySymbol:adjustSelectionForCurrencyOrPercentSymbols:]", v20);
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage+TSTAdditions.mm", v45);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v47, v43, v46, 51, 0, "invalid nil value for '%{public}s'", "currencySymbol");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50);
  }

  v51 = objc_msgSend_stringValue(a1, v18, v19, v20);
  v54 = objc_msgSend_rangeOfString_(v51, v52, v11, v53);
  v56 = v55;

  v60 = objc_msgSend_stringValue(a1, v57, v58, v59);
  v64 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v61, v62, v63);
  v67 = objc_msgSend_rangeOfCharacterFromSet_(v60, v65, v64, v66);

  v71.location = objc_msgSend_range(a1, v68, v69, v70);
  v72 = MEMORY[0x277D81490];
  if (v54 == 0x7FFFFFFFFFFFFFFFLL)
  {
    location = *MEMORY[0x277D81510];
    v73 = *(MEMORY[0x277D81510] + 8);
    goto LABEL_27;
  }

  location = v71.location;
  length = v71.length;
  if (v54 < v67)
  {
    v76 = v54 + v56;
    v77 = *MEMORY[0x277D81490];
    v78 = *(MEMORY[0x277D81490] + 8);
    v87.location = 0;
    v87.length = v76;
    v71 = NSIntersectionRange(v71, v87);
    if (v71.length)
    {
      if (location || (v73 = 0, !length) || v76 < length)
      {
        if (v76 <= location)
        {
          v73 = v78;
          location = v77;
        }

        else
        {
          v82 = location + length >= v76;
          v83 = location + length - v76;
          if (location + length >= v76)
          {
            location = v76;
          }

          else
          {
            location = v77;
          }

          if (v82)
          {
            v73 = v83;
          }

          else
          {
            v73 = v78;
          }
        }
      }

      else
      {
        location = 0;
      }

      goto LABEL_27;
    }

LABEL_26:
    v73 = length;
    goto LABEL_27;
  }

  v79 = v71.location + v71.length - v54;
  v84 = *(MEMORY[0x277D81490] + 8);
  v85 = *MEMORY[0x277D81490];
  v88.location = v54;
  v88.length = v79;
  v71 = NSIntersectionRange(v71, v88);
  if (!v71.length)
  {
    goto LABEL_26;
  }

  v73 = v54 - location;
  if (v54 < location || v73 >= length)
  {
    if (location >= v54 && location - v54 < v79)
    {
      v73 = 0;
    }

    else
    {
      v73 = v84;
    }

    if (location >= v54 && location - v54 < v79)
    {
      location += length;
    }

    else
    {
      location = v85;
    }
  }

LABEL_27:
  if (location != *v72 || v73 != v72[1])
  {
    v41 = objc_msgSend_selectionWithRange_(MEMORY[0x277D80EF8], v71.length, location, v73);
    goto LABEL_30;
  }

LABEL_31:

  return v21;
}

id sub_2212A7044(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_wpKind(a1, a2, a3, a4) == 5)
  {
    objc_opt_class();
    v8 = objc_msgSend_parentInfo(a1, v5, v6, v7);
    v9 = TSUCheckedDynamicCast();

    if (!v9)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPStorage(TSTAdditions) tst_tableInfo]", v11);
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage+TSTAdditions.mm", v15);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 79, 0, "parentInfo of a TSWPKindTable TSWPStorage must be a TSTTableInfo");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_2212A7164(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = objc_msgSend_attributeArrayForKind_(a1, a2, 10, a4);
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 && TSWPParagraphAttributeArray::attributeIndexForOrderedParagraphData() != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = TSWPAttributeArray::rangeForAttributeIndex(v6);
    v10 = v8;
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPStorage(TSTAdditions) rangeForCellID:includingBreak:]", v9);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage+TSTAdditions.mm", v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 99, 0, "cell attribute not found");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    }

    if ((v4 & 1) == 0 && v10)
    {
      objc_msgSend_characterAtIndex_(a1, v8, &v10[v7 - 1], v9);
    }
  }

  return v7;
}

void sub_2212A738C(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v3, 0x10F1C405DF06B02);

  _Unwind_Resume(a1);
}

void sub_2212A7718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TSCEReferenceSet::~TSCEReferenceSet(&a9);

  _Unwind_Resume(a1);
}

void sub_2212A7FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2212A801C;
  v3[3] = &unk_278462968;
  v3[4] = *(a1 + 32);
  v3[5] = a2;
  TSCECellCoordSet::enumerateColumnsUsingBlock(a3, v3);
}

TSCEReferenceSet *sub_2212A801C(uint64_t a1, uint64_t a2, TSUIndexSet *this)
{
  v4 = a2;
  if (TSUIndexSet::count(this) != 1)
  {
    return TSUIndexSet::enumerateRangesUsingBlock();
  }

  v8.coordinate.row = TSUIndexSet::firstIndex(this);
  *&v8.coordinate.column = v4;
  v6 = *(a1 + 32);
  v8._tableUID = **(a1 + 40);
  return TSCEReferenceSet::insertRef((v6 + 296), &v8);
}

TSCEReferenceSet *sub_2212A80F4(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4)
{
  v4.i64[0] = 0xFFFFFFFFLL;
  v4.i64[1] = 0xFFFFFFFFLL;
  v7.range = vorrq_s8(vdupq_n_s64(*(a1 + 48) << 32), vandq_s8(*a2, v4));
  v5 = *(a1 + 32);
  v7._tableUID = **(a1 + 40);
  return TSCEReferenceSet::insertRef((v5 + 296), &v7, a3, a4);
}

void sub_2212A89E4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10)
{
  if (a2 == 1)
  {
    a10 = *__cxa_get_exception_ptr(a1);
    __cxa_begin_catch(a1);
    sub_221595E98(&a10);
    __cxa_end_catch();
    JUMPOUT(0x2212A89C4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2212AD924(uint64_t a1, uint64_t a2)
{
  if (!TSUDecimal::operator<=())
  {
    return 1;
  }

  return TSUDecimal::operator==();
}

void sub_2212AF26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_22121E580(v15 - 192, *(v15 - 184));

  _Unwind_Resume(a1);
}

id sub_2212B1D7C(void *a1, void *a2, NSRoundingMode a3, NSRoundingMode a4)
{
  v7 = a1;
  v8 = a2;
  v31._decimal.w[0] = objc_msgSend_decimalRepresentation(v8, v9, v10, v11);
  v31._decimal.w[1] = v12;
  v15 = objc_msgSend_zero(TSCENumberValue, v12, v13, v14);
  v30._decimal.w[0] = objc_msgSend_decimalRepresentation(v7, v16, v17, v18);
  v30._decimal.w[1] = v19;
  TSUDecimal::roundToDoublePrecision(&v30);
  v20 = TSUDecimal::numberOfFractionalDigits(&v30);
  isNegative = TSUDecimal::isNegative(&v31);
  if (isNegative)
  {
    TSUDecimal::ceiling(&v31);
  }

  else
  {
    TSUDecimal::floor(&v31);
  }

  TSUDecimal::doubleValue(&v31);
  v27 = v26;
  if (!objc_msgSend_lt_(v7, v22, v15, v23))
  {
    a4 = a3;
  }

  if (isNegative)
  {
    if ((v27 - 1) < 0xFEC9u)
    {
      TSUDecimal::operator=();
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v27 <= 0x136 && v20 > v27)
  {
LABEL_11:
    TSUDecimal::shift10Places(&v30);
    TSUDecimal::roundWithMode(&v30, a4);
    TSUDecimal::shift10Places(&v30);
  }

LABEL_12:
  v28 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v24, &v30, v25);

  return v28;
}

uint64_t sub_2212B2BA4(TSUDecimal *a1, TSUDecimal *a2)
{
  TSUDecimal::doubleValue(a1);
  v4 = v3;
  TSUDecimal::doubleValue(a2);
  pow(v4, v5);
  TSUDecimal::operator=();
  return v7;
}

void sub_2212B33D0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_2212B3908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  sub_22121E580(&a33, a34);

  _Unwind_Resume(a1);
}

void sub_2212B4E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, id a27)
{
  v33 = *(v31 - 136);
  if (v33)
  {
    *(v31 - 128) = v33;
    operator delete(v33);
  }

  a25 = (v31 - 112);
  sub_22107C2C0(&a25);

  _Unwind_Resume(a1);
}

uint64_t *sub_2212B7230(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2212B7294(a1, a2);
  }

  return a1;
}

void sub_2212B7278(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2212B7294(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_22114F634(a1, a2);
  }

  sub_22107C148();
}

uint64_t sub_2212B72D0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (a2)
  {
    v3 = v2 + 32 * a2;
    do
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      *(v2 + 12) = 0;
      *(v2 + 16) = *(v2 + 16) & 0xC080 | 0x421;
      *(v2 + 18) = *(v2 + 18) & 0xF8 | 1;
      *(v2 + 20) = -50266102;
      *(v2 + 24) = -3;
      *(v2 + 25) &= 0xE0u;
      *(v2 + 26) = 0;
      v2 += 32;
    }

    while (v2 != v3);
    v2 = v3;
  }

  *(result + 8) = v2;
  return result;
}

void sub_2212B7A34(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    objc_msgSend_addObject_(*(a1 + 32), v3, v5, v4);
  }
}

void sub_2212B7C9C(uint64_t a1, void *a2)
{
  v12 = a2;
  if (v12)
  {
    v4 = *(a1 + 40);
    v5 = *(v4 + 64);
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = *(v4 + 56);
    v7 = *v5;
    if (v6 < *v5)
    {
      *(v4 + 56) = v6 + 1;
      objc_msgSend_encodeToArchive_archiver_(v12, v3, *&v5[2 * v6 + 2], *(a1 + 32));
      goto LABEL_9;
    }

    if (v7 == *(v4 + 60))
    {
LABEL_7:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 48));
      v5 = *(v4 + 64);
      v7 = *v5;
    }

    *v5 = v7 + 1;
    v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::TrackedReferenceArchive>(*(v4 + 48));
    v9 = *(v4 + 56);
    v10 = *(v4 + 64) + 8 * v9;
    *(v4 + 56) = v9 + 1;
    *(v10 + 8) = v8;
    objc_msgSend_encodeToArchive_archiver_(v12, v11, v8, *(a1 + 32));
  }

LABEL_9:
}

void sub_2212B80D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = objc_msgSend_formulaCoord(v3, v4, v5, v6);
  v9 = objc_msgSend_indexFromCoord_(TSCETrackedReferenceStore, v7, &v11, v8);
  objc_msgSend_setObject_forKey_(*(*(a1 + 32) + 88), v10, v3, v9);
}

void sub_2212B815C(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a2;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v14, v18, 16);
  if (v5)
  {
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = [TSCETrackedReference alloc];
        v12 = objc_msgSend_initWithTrackedReferenceTSPObjectDeprecated_(v9, v10, v8, v11, v14);
        (*(*(a1 + 32) + 16))();

        ++v7;
      }

      while (v5 != v7);
      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v13, &v14, v18, 16);
    }

    while (v5);
  }
}

char *sub_2212B82B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_maxKey(*(*(a1 + 32) + 88), a2, a3, a4);
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = result + 1;
  }

  *(*(a1 + 32) + 96) = v6;
  return result;
}

void sub_2212B83DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v20 = v5;
  sub_2216F1F78(a1, 0, 0);
  *a1 = &unk_2834A3DD8;
  v7 = v5;
  *(a1 + 520) = v7;
  v8 = (a1 + 528);
  *(a1 + 528) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 568) = v6;
  *(a1 + 576) = 0u;
  v12 = objc_msgSend_string(v7, v9, v10, v11, v20);
  v16 = objc_msgSend_UTF8String(v12, v13, v14, v15);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = "";
  }

  v18 = strlen(v17);
  if (v18 < 0x7FFFFFFFFFFFFFF8)
  {
    v19 = v18;
    if (v18 < 0x17)
    {
      HIBYTE(v22) = v18;
      if (v18)
      {
        memmove(&__dst, v17, v18);
      }

      *(&__dst + v19) = 0;
      if (*(a1 + 551) < 0)
      {
        operator delete(*v8);
      }

      *v8 = __dst;
      *(a1 + 544) = v22;
      operator new();
    }

    operator new();
  }

  sub_22108CD88();
}

void sub_2212B85D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  MEMORY[0x223DA1450](v13, 0x10B3C4097FF09DFLL, a3, a4, a5, a6, a7, a8);

  if (*(v9 + 551) < 0)
  {
    operator delete(*v11);
  }

  sub_2216F2128(v9);
  _Unwind_Resume(a1);
}

uint64_t *sub_2212B865C(uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x277D82898] + 64;
  a1[15] = MEMORY[0x277D82898] + 64;
  v7 = *(MEMORY[0x277D82820] + 16);
  v8 = *(MEMORY[0x277D82820] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x277D82898] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  sub_2212B8D50((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_2212B87B8(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x223DA1410](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2212B87E0(uint64_t a1)
{
  *a1 = &unk_2834A3DD8;
  v2 = *(a1 + 552);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 551) < 0)
  {
    operator delete(*(a1 + 528));
  }

  return sub_2216F2128(a1);
}

void sub_2212B88AC(uint64_t a1, void *a2)
{
  sub_2212B88EC((a1 + 576), a2);
  v3 = *(a1 + 584);
  *(a1 + 584) = 0;
}

void sub_2212B88EC(id *a1, void *a2)
{
  v4 = a2;
  if (*a1 != v4)
  {
    v5 = v4;
    objc_storeStrong(a1, a2);
    v4 = v5;
  }
}

id sub_2212B894C(uint64_t a1)
{
  v2 = *(a1 + 520);
  v3 = *(a1 + 560);
  if (v3 >= objc_msgSend_attachmentCount(v2, v4, v5, v6))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "TSTWPTokenAttachment *TSTLexer::nextTokenAttachment()", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLexerAdditions.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 79, 0, "No more tokenAttachments.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v41 = 0x7FFFFFFFFFFFFFFFLL;
  objc_opt_class();
  v18 = *(a1 + 560);
  *(a1 + 560) = v18 + 1;
  v20 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(v2, v19, v18, &v41);
  v21 = TSUDynamicCast();

  if (v21)
  {
    v25 = objc_msgSend_expressionNode(v21, v22, v23, v24);
    v28 = v25;
    if (v25)
    {
      objc_msgSend_setFirstIndex_(v25, v26, v41, v27);
      objc_msgSend_setLastIndex_(v28, v29, v41, v30);
    }
  }

  else
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "TSTWPTokenAttachment *TSTLexer::nextTokenAttachment()", v24);
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLexerAdditions.mm", v34);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v36, v32, v35, 83, 0, "invalid nil value for '%{public}s'", "tokenAttachment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39);
  }

  return v21;
}

uint64_t sub_2212B8B80(uint64_t a1, uint64_t a2)
{
  sub_2212B88EC((a1 + 576), 0);
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = objc_msgSend_initWithUTF8String_(v4, v5, a2, v6);
  v8 = *(a1 + 584);
  *(a1 + 584) = v7;

  return 1;
}

id sub_2212B8BD4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_context(*(a1 + 520), a2, a3, a4);

  return v4;
}

BOOL sub_2212B8C04(uint64_t a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v4 = strlen(__s);
  if (v4 < 3 || *__s != 40 || __s[v4 - 1] != 41)
  {
    return 0;
  }

  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, (__s + 1), v6);
  v11 = objc_msgSend_length(v7, v8, v9, v10);
  v14 = objc_msgSend_substringToIndex_(v7, v12, v11 - 1, v13);

  v16 = objc_msgSend_aggregateTypeForAggregateLabel_locale_(TSTGroupBy, v15, v14, *(a1 + 568)) != 255;
  return v16;
}

uint64_t sub_2212B8D50(uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x223DA13C0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  sub_2212B8E24(a1);
  return a1;
}

void sub_2212B8DFC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_2212B8E24(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void TSTExpressionTreeBuilder::TSTExpressionTreeBuilder(TSTExpressionTreeBuilder *this, TSCECalculationEngine *a2, const TSCECellRef *a3, char a4)
{
  v10 = a2;
  *this = &unk_2834A3E78;
  *(this + 1) = v10;
  upper = a3->_tableUID._upper;
  v12 = *&a3->coordinate.row;
  *(this + 56) = 0u;
  *(this + 1) = v12;
  *(this + 4) = upper;
  *(this + 5) = 0;
  *(this + 48) = a4;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 114) = 0u;
  if (!v10)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "TSTExpressionTreeBuilder::TSTExpressionTreeBuilder(TSCECalculationEngine *__strong, const TSCECellRef &, BOOL)", v9);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeBuilder.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 62, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  v22 = objc_msgSend_context(v10, v7, v8, v9);
  v23 = *(this + 5);
  *(this + 5) = v22;
}

void sub_2212B9060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = v11 + 13;
  sub_22107C2C0(&a10);
  a10 = v11 + 10;
  sub_22107C2C0(&a10);
  sub_22107C2C0(&a10);

  _Unwind_Resume(a1);
}

void TSTExpressionTreeBuilder::~TSTExpressionTreeBuilder(id *this)
{
  *this = &unk_2834A3E78;
  v2 = this + 13;
  sub_22107C2C0(&v2);
  v2 = this + 10;
  sub_22107C2C0(&v2);
  v2 = this + 7;
  sub_22107C2C0(&v2);
}

{
  TSTExpressionTreeBuilder::~TSTExpressionTreeBuilder(this);

  JUMPOUT(0x223DA1450);
}

void TSTExpressionTreeBuilder::addWhitespaceBefore(TSTExpressionTreeBuilder *this, NSString *a2)
{
  v3 = a2;
  v7 = v3;
  if (objc_msgSend_length(v3, v4, v5, v6))
  {
    sub_2210C4258(this + 10, &v7);
    v3 = v7;
  }
}

void TSTExpressionTreeBuilder::addWhitespaceAfter(TSTExpressionTreeBuilder *this, NSString *a2)
{
  v3 = a2;
  v7 = v3;
  if (objc_msgSend_length(v3, v4, v5, v6))
  {
    sub_2210C4258(this + 13, &v7);
    v3 = v7;
  }
}

void TSTExpressionTreeBuilder::addExpression(TSTExpressionTreeBuilder *this, TSTExpressionNode *a2, unsigned int a3)
{
  v5 = a2;
  v79 = v5;
  if (v5)
  {
    v8 = v5;
    v9 = a3;
    v10 = (this + 56);
    if (a3 > ((*(this + 8) - *(this + 7)) >> 3))
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "void TSTExpressionTreeBuilder::addExpression(TSTExpressionNode *__strong, uint32_t)", v7);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeBuilder.mm", v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 101, 0, "Error, insufficient children to process node: %lu vs %lu needed", (*(this + 8) - *(this + 7)) >> 3, a3);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    }

    if (a3 && a3 <= ((*(this + 8) - *(this + 7)) >> 3))
    {
      v20 = objc_opt_new();
      v21 = *(this + 8);
      v22 = &v21[-v9];
      if (v21 != v22)
      {
        v78 = v21 - *(this + 7) + -8 * v9;
        do
        {
          v25 = *v22;
          if (v25)
          {
            objc_msgSend_addObject_(v20, v23, v25, v24);
          }

          else
          {
            v26 = MEMORY[0x277D81150];
            v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "void TSTExpressionTreeBuilder::addExpression(TSTExpressionNode *__strong, uint32_t)", v24);
            v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeBuilder.mm", v29);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v27, v30, 110, 0, "invalid nil value for '%{public}s'", "child");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34);
          }

          ++v22;
          v21 = *(this + 8);
        }

        while (v22 != v21);
        v10 = (this + 56);
        v22 = &v78[*(this + 7)];
      }

      sub_221165C5C(v10, v22, v21);
      objc_msgSend_setChildren_(v8, v35, v20, v36);
    }

    for (i = *(this + 11); *(this + 10) != i; i = *(this + 11))
    {
      v38 = *(i - 8);
      v39 = *(this + 11);

      *(this + 11) = v39 - 8;
      v46 = objc_msgSend_whitespaceBefore(v8, v40, v41, v42);
      if (v46)
      {
        v47 = objc_msgSend_whitespaceBefore(v8, v43, v44, v45);
      }

      else
      {
        v47 = &stru_2834BADA0;
      }

      v50 = objc_msgSend_stringByAppendingString_(v38, v48, v47, v49);
      objc_msgSend_setWhitespaceBefore_(v8, v51, v50, v52);
    }

    for (j = *(this + 14); *(this + 13) != j; j = *(this + 14))
    {
      v54 = *(j - 8);
      v55 = *(this + 14);

      *(this + 14) = v55 - 8;
      v62 = objc_msgSend_whitespaceAfter(v8, v56, v57, v58);
      if (v62)
      {
        v63 = objc_msgSend_whitespaceAfter(v8, v59, v60, v61);
      }

      else
      {
        v63 = &stru_2834BADA0;
      }

      v66 = objc_msgSend_stringByAppendingString_(v63, v64, v54, v65);
      objc_msgSend_setWhitespaceAfter_(v8, v67, v66, v68);
    }

    sub_22107A9E4(v10, &v79);
  }

  else
  {
    v69 = MEMORY[0x277D81150];
    v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "void TSTExpressionTreeBuilder::addExpression(TSTExpressionNode *__strong, uint32_t)", v7);
    v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeBuilder.mm", v72);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v74, v70, v73, 98, 0, "invalid nil value for '%{public}s'", "exprNode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v76, v77);
  }
}

void TSTExpressionTreeBuilder::addReferenceErrorNode(TSTExpressionTreeBuilder *this)
{
  v2 = [TSTReferenceNode alloc];
  v3 = *(this + 5);
  v4 = *(this + 1);
  v5 = *(this + 24);
  v11[0] = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v11[1] = v5;
  v6 = *(this + 48);
  v7 = v3;
  v10 = v6;
  v9 = objc_msgSend_initWithContext_calculationEngine_baseRangeRef_preserveFlags_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v2, v8, v7, v4, v11, 0, this + 16, 0, v10);

  TSTExpressionTreeBuilder::addExpression(this, v9, 0);
}

void TSTExpressionTreeBuilder::addCategoryRef(TSTExpressionTreeBuilder *this, TSCECategoryRef *a2)
{
  v3 = a2;
  if ((objc_msgSend_preserveFlags(v3, v4, v5, v6) & 2) == 0)
  {
    v10 = objc_msgSend_groupByUid(v3, v7, v8, v9);
    v12 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v11, v10, v11, *(this + 1));
    v16 = v12;
    if (v12)
    {
      v17 = objc_msgSend_tableInfo(v12, v13, v14, v15);
      if (objc_msgSend_tableUID(v17, v18, v19, v20) == *(this + 3))
      {
        v22 = v21;
        v23 = *(this + 4);

        if (v22 == v23)
        {
          v24 = *(this + 3);
          v25 = *(this + 4);
          v26 = *(this + 1);
          v28 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v27, v24, v25, v26);

          v32 = objc_msgSend_translator(v28, v29, v30, v31);
          v44[0] = objc_msgSend_rowUIDForBaseRowIndex_(v32, v33, *(this + 4), v34);
          v44[1] = v35;

          v43 = *(this + 24);
          v37 = objc_msgSend_resolveCategoryRef_atRowUid_inHostTable_(v16, v36, v3, v44, &v43);

          v3 = v37;
        }
      }

      else
      {
      }
    }
  }

  v38 = [TSTReferenceNode alloc];
  v39 = *(this + 1);
  v40 = *(this + 5);
  v42 = objc_msgSend_initWithContext_calculationEngine_categoryRef_hostCellRef_referenceColorHelper_(v38, v41, v40, v39, v3, this + 16, 0);

  TSTExpressionTreeBuilder::addExpression(this, v42, 0);
}

void TSTExpressionTreeBuilder::addViewTractRef(TSTExpressionTreeBuilder *this, TSCEViewTractRef *a2)
{
  v3 = a2;
  v10 = objc_msgSend_tableUID(v3, v4, v5, v6);
  v11 = v7;
  v65 = v10;
  v66 = v7;
  if (!(v10 | v7))
  {
    v10 = *(this + 3);
    v11 = *(this + 4);
    v65 = v10;
    v66 = v11;
  }

  if (v10 | v11)
  {
    memset(v64, 0, sizeof(v64));
    *__p = 0u;
    if (objc_msgSend_isFixedAtZeroRef(v3, v7, v8, v9))
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v15 = *(this + 1);
      v17 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v16, v10, v11, v15);

      if (v17)
      {
        v53[0] = objc_msgSend_columnUIDForColumnIndex_(v17, v18, 0, v19);
        v53[1] = v20;
        sub_221083454(&v60, v53);
        v53[0] = objc_msgSend_rowUIDForRowIndex_(v17, v21, 0, v22);
        v53[1] = v23;
        sub_221083454(&v57, v53);
      }

      else
      {
        v34 = MEMORY[0x277D81150];
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "void TSTExpressionTreeBuilder::addViewTractRef(TSCEViewTractRef *__strong)", v19);
        v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeBuilder.mm", v37);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v39, v35, v38, 261, 0, "Need a tableInfo to create a FixedAtZero ViewTractRef");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42);
      }

      sub_2210BBBE8(v53, &v60, &v57);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = *v53;
      v64[0] = v54;
      v53[1] = 0;
      v54 = 0;
      v53[0] = 0;
      v43 = v64[1];
      if (v64[1])
      {
        v64[2] = v64[1];
        operator delete(v64[1]);
        v43 = v53[0];
      }

      *&v64[1] = v55;
      v64[3] = v56;
      v56 = 0;
      v55 = 0uLL;
      if (v43)
      {
        v53[1] = v43;
        operator delete(v43);
      }

      if (v57)
      {
        v58 = v57;
        operator delete(v57);
      }

      if (v60)
      {
        v61 = v60;
        operator delete(v60);
      }
    }

    else
    {
      v24 = objc_msgSend_tract(v3, v12, v13, v14);
      v28 = objc_msgSend_columnUids(v24, v25, v26, v27);
      v32 = objc_msgSend_rowUids(v24, v29, v30, v31);
      sub_2210BBBE8(v53, v28, v32);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = *v53;
      v64[0] = v54;
      v53[1] = 0;
      v54 = 0;
      v53[0] = 0;
      v33 = v64[1];
      if (v64[1])
      {
        v64[2] = v64[1];
        operator delete(v64[1]);
        v33 = v53[0];
      }

      *&v64[1] = v55;
      v64[3] = v56;
      v56 = 0;
      v55 = 0uLL;
      if (v33)
      {
        v53[1] = v33;
        operator delete(v33);
      }
    }

    v44 = [TSTUIDRectRef alloc];
    v46 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v44, v45, *(this + 1), &v65, __p, 15);
    v47 = [TSTReferenceNode alloc];
    v48 = *(this + 1);
    v49 = *(this + 48);
    v50 = *(this + 5);
    v52 = objc_msgSend_initWithContext_calculationEngine_uidRectRef_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v47, v51, v50, v48, v46, this + 16, 0, v49);

    TSTExpressionTreeBuilder::addExpression(this, v52, 0);
    if (v64[1])
    {
      v64[2] = v64[1];
      operator delete(v64[1]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    TSTExpressionTreeBuilder::addReferenceErrorNode(this);
  }
}

void sub_2212B9CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  sub_22109DBB8(va);

  _Unwind_Resume(a1);
}

id TSTExpressionTreeBuilder::exprTreeResult(TSTExpressionTreeBuilder *this, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(this + 7);
  v4 = *(this + 8);
  if (v5 == v4)
  {
    v16 = 0;
  }

  else
  {
    if (v4 - v5 != 8)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSTExpressionNode *TSTExpressionTreeBuilder::exprTreeResult()", a4);
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeBuilder.mm", v10);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 291, 0, "_exprNodeStack should have a single-element on it, the final result");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
      v4 = *(this + 8);
    }

    v16 = *(v4 - 8);
  }

  return v16;
}

void TSTExpressionTreeBuilder::addCellReferenceNode(TSTExpressionTreeBuilder *this, TSKUIDStruct a2, TSKUIDStruct a3, void *a4, void *a5, int a6, BOOL a7)
{
  upper = a3._upper;
  lower = a3._lower;
  v12 = a2._upper;
  v13 = a2._lower;
  sub_2210898C4(a5, a2._lower, a2._upper, a3._lower);
  sub_2210899C8(a4, v15, v16, v17);
  sub_2210898C4(a5, v18, v19, v20);
  sub_2210899C8(a4, v21, v22, v23);
  v25 = 0x100000000000000;
  if (a7)
  {
    v26 = 4;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v27 = 0x1000000000000;
  if (!a6)
  {
    v27 = 0;
  }

  v28 = v27 | v25 | (a5 << 32);
  if (a6)
  {
    v29 = 10;
  }

  else
  {
    v29 = 0;
  }

  v46._flags = v29 | a7 | v26;
  v30 = *(this + 2);
  v31 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v30, (v28 | a4), &v46, v24);
  v32 = v31;
  v33 = v31 & 0xFFFF00000000;
  v34 = v31 != 0x7FFFFFFFLL || v33 == 0x7FFF00000000;
  if (!v34 || (v33 == 0x7FFF00000000 ? (v35 = v31 == 0x7FFFFFFFLL) : (v35 = 1), !v35))
  {
    v32 = 0x7FFF7FFFFFFFLL;
  }

  v36 = [TSTReferenceNode alloc];
  v37 = *(this + 5);
  v45[0] = v32;
  v45[1] = v32;
  v45[2] = lower;
  v45[3] = upper;
  flags = v46._flags;
  v39 = *(this + 1);
  v44[0] = *(this + 2);
  v44[1] = v13;
  v44[2] = v12;
  v40 = *(this + 48);
  v41 = v37;
  v43 = objc_msgSend_initWithContext_calculationEngine_baseRangeRef_preserveFlags_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v36, v42, v41, v39, v45, flags, v44, 0, v40);

  TSTExpressionTreeBuilder::addExpression(this, v43, 0);
}

void TSTExpressionTreeBuilder::addColumnReferenceNode(TSTExpressionTreeBuilder *this, TSKUIDStruct a2, TSKUIDStruct a3, int a4, unsigned int a5)
{
  upper = a3._upper;
  lower = a3._lower;
  v8 = a2._upper;
  v9 = a2._lower;
  if (a5)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  if (a5)
  {
    v12 = a4;
    goto LABEL_14;
  }

  v12 = 0x7FFF;
  if (a4 == 0x7FFF)
  {
    goto LABEL_14;
  }

  v13 = *(this + 2);
  if (a4 < 1)
  {
    if (a4 < 0 && -a4 > WORD2(v13))
    {
      goto LABEL_14;
    }
  }

  else if (999 - a4 < WORD2(v13))
  {
    goto LABEL_14;
  }

  v12 = WORD2(v13) + a4;
  if ((WORD2(v13) + a4) >= 0x7FFFu)
  {
    v30 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2._lower, "TSUColumnIndex TSCEMakeAbsoluteColumnFromRelativeColumn(TSUCellCoord, TSURelativeColumnIndex, BOOL)", a3._lower);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v18, v14, v17, 168, 0, "overflow in column");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

LABEL_14:
  v22 = (v12 << 32) | 0x7FFFFFFF;
  v23 = [TSTReferenceNode alloc];
  v24 = *(this + 5);
  v32[0] = v22;
  v32[1] = v22;
  v32[2] = lower;
  v32[3] = upper;
  v25 = *(this + 1);
  v31[0] = *(this + 2);
  v31[1] = v9;
  v31[2] = v8;
  v26 = *(this + 48);
  v27 = v24;
  v29 = objc_msgSend_initWithContext_calculationEngine_baseRangeRef_preserveFlags_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v23, v28, v27, v25, v32, v11 | a5, v31, 0, v26);

  TSTExpressionTreeBuilder::addExpression(this, v29, 0);
}

void TSTExpressionTreeBuilder::addRowReferenceNode(TSTExpressionTreeBuilder *this, TSKUIDStruct a2, TSKUIDStruct a3, uint64_t a4, int a5)
{
  upper = a3._upper;
  lower = a3._lower;
  v8 = a2._upper;
  v9 = a2._lower;
  if (a5)
  {
    v11 = 10;
  }

  else
  {
    v11 = 0;
  }

  if ((a5 & 1) == 0)
  {
    v12 = 0x7FFFFFFF;
    if (a4 == 0x7FFFFFFF)
    {
      goto LABEL_18;
    }

    v13 = *(this + 2);
    if (a4 < 1)
    {
      if (a4 && v13 < -a4)
      {
        goto LABEL_17;
      }
    }

    else if (999999 - a4 < v13)
    {
      goto LABEL_17;
    }

    if (v13 == 0x7FFFFFFF)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2._lower, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", a3._lower);
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v17);
      v19 = NSStringFromTSUCellCoord();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v18, 195, 0, "Calling TSCEMakeAbsoluteRowFromRelativeRow with an invalid hostCell row: %@", v19);
    }

    else
    {
      v12 = v13 + a4;
      if ((v13 + a4) < 0x7FFFFFFF)
      {
        goto LABEL_18;
      }

      v36 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2._lower, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", a3._lower);
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v22);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v23, v15, v18, 191, 0, "overflow in row, input row: %d with host row: %lu", a4, v13);
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
LABEL_17:
    v12 = 0x7FFFFFFF;
    goto LABEL_18;
  }

  v12 = a4;
LABEL_18:
  v27 = v12 | 0x7FFF00000000;
  v28 = [TSTReferenceNode alloc];
  v29 = *(this + 5);
  v38[0] = v27;
  v38[1] = v27;
  v38[2] = lower;
  v38[3] = upper;
  v30 = *(this + 1);
  v37[0] = *(this + 2);
  v37[1] = v9;
  v37[2] = v8;
  v31 = *(this + 48);
  v32 = v29;
  LOBYTE(v35) = v31;
  v34 = objc_msgSend_initWithContext_calculationEngine_baseRangeRef_preserveFlags_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v28, v33, v32, v30, v38, v11, v37, 0, v35);

  TSTExpressionTreeBuilder::addExpression(this, v34, 0);
}

void TSTExpressionTreeBuilder::addReferenceNode(TSTExpressionTreeBuilder *this, const TSCECellRef *a2, char a3)
{
  coordinate = a2->coordinate;
  v6 = a3 & 3 | (4 * (a3 & 3u));
  v7 = [TSTReferenceNode alloc];
  v8 = *(this + 5);
  v9 = *(this + 1);
  v13[0] = coordinate;
  v13[1] = coordinate;
  tableUID = a2->_tableUID;
  LOBYTE(coordinate.row) = *(this + 48);
  v10 = v8;
  v12 = objc_msgSend_initWithContext_calculationEngine_baseRangeRef_preserveFlags_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v7, v11, v10, v9, v13, v6, this + 16, 0, LOBYTE(coordinate.row));

  TSTExpressionTreeBuilder::addExpression(this, v12, 0);
}

void TSTExpressionTreeBuilder::addLocalReferenceNode(TSTExpressionTreeBuilder *this, TSUCellCoord a2, char a3)
{
  v5 = a3 & 3 | (4 * (a3 & 3u));
  v6 = [TSTReferenceNode alloc];
  v7 = *(this + 5);
  v8 = *(this + 1);
  v13[0] = a2;
  v13[1] = a2;
  v14 = *(this + 24);
  v9 = *(this + 48);
  v10 = v7;
  v12 = objc_msgSend_initWithContext_calculationEngine_baseRangeRef_preserveFlags_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v6, v11, v10, v8, v13, v5, this + 16, 0, v9);

  TSTExpressionTreeBuilder::addExpression(this, v12, 0);
}

void TSTExpressionTreeBuilder::addEmptyArgumentNode(TSTExpressionTreeBuilder *this)
{
  v2 = [TSTEmptyExpressionNode alloc];
  v5 = objc_msgSend_initWithContext_(v2, v3, *(this + 5), v4);
  TSTExpressionTreeBuilder::addExpression(this, v5, 0);
}

void TSTExpressionTreeBuilder::addTokenNode(TSTExpressionTreeBuilder *this)
{
  v2 = [TSTArgumentPlaceholderNode alloc];
  v5 = objc_msgSend_initWithContext_(v2, v3, *(this + 5), v4);
  TSTExpressionTreeBuilder::addExpression(this, v5, 0);
}

void TSTExpressionTreeBuilder::addNumber(id *this, const TSUDecimal *a2)
{
  v4 = [TSTNumberNode alloc];
  v5 = this[5];
  v6 = this[1];
  v10 = objc_msgSend_documentLocale(v6, v7, v8, v9);
  Index_lastIndex = objc_msgSend_initWithContext_number_locale_firstIndex_lastIndex_(v4, v11, v5, a2, v10, 0, 0);

  TSTExpressionTreeBuilder::addExpression(this, Index_lastIndex, 0);
}

void TSTExpressionTreeBuilder::addQuotedString(TSTExpressionTreeBuilder *this, NSString *a2)
{
  v6 = a2;
  v3 = [TSTStringNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_stringValue_firstIndex_lastIndex_(v3, v4, *(this + 5), v6, 0, 0);
  TSTExpressionTreeBuilder::addExpression(this, Index_lastIndex, 0);
}

void TSTExpressionTreeBuilder::addBooleanConstant(TSTExpressionTreeBuilder *this, uint64_t a2)
{
  v4 = [TSTBooleanNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_BOOLValue_firstIndex_lastIndex_(v4, v5, *(this + 5), a2, 0, 0);
  TSTExpressionTreeBuilder::addExpression(this, Index_lastIndex, 0);
}

void TSTExpressionTreeBuilder::addDateConstant(TSTExpressionTreeBuilder *this, NSDate *a2, NSString *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [TSTDateNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_dateValue_firstIndex_lastIndex_(v6, v7, *(this + 5), v14, 0, 0);
  if (objc_msgSend_length(v5, v9, v10, v11))
  {
    objc_msgSend_setDateFormat_(Index_lastIndex, v12, v5, v13);
  }

  TSTExpressionTreeBuilder::addExpression(this, Index_lastIndex, 0);
}

void TSTExpressionTreeBuilder::addDurationConstant(TSTExpressionTreeBuilder *this, double a2, TSKDurationFormat *a3)
{
  v8 = a3;
  v5 = [TSTDurationNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_durationInterval_durationFormat_firstIndex_lastIndex_(v5, v6, *(this + 5), v8, 0, 0, a2);
  TSTExpressionTreeBuilder::addExpression(this, Index_lastIndex, 0);
}

void TSTExpressionTreeBuilder::addFunction(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v15 = a4;
  v7 = [TSTFunctionNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(v7, v8, *(a1 + 40), a2, 0, 0, 0);
  if (objc_msgSend_length(v15, v10, v11, v12))
  {
    objc_msgSend_setWhitespaceAfterFunctionName_(Index_lastIndex, v13, v15, v14);
  }

  if ((a2 - 363) <= 1u)
  {
    *(a1 + 128) = 1;
  }

  TSTExpressionTreeBuilder::addExpression(a1, Index_lastIndex, a3);
}

void TSTExpressionTreeBuilder::addUnknownFunction(TSTExpressionTreeBuilder *this, NSString *a2, unsigned int a3)
{
  v10 = a2;
  v5 = [TSTFunctionNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(v5, v6, *(this + 5), 0, 0, 0, 0);
  objc_msgSend_setInvalidFunctionName_(Index_lastIndex, v8, v10, v9);
  TSTExpressionTreeBuilder::addExpression(this, Index_lastIndex, a3);
}

void TSTExpressionTreeBuilder::addBinaryOperator(TSTExpressionTreeBuilder *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2212BAD18(a2, a2, a3, a4);
  v6 = [TSTOperatorNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v6, v7, *(a1 + 5), v5, 0, 0, 0);
  TSTExpressionTreeBuilder::addExpression(a1, Index_lastIndex, 2u);
}

uint64_t sub_2212BAD18(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1 <= 44)
  {
    switch(a1)
    {
      case 1:
      case 14:
        v5 = MEMORY[0x277D81530];
        return *v5;
      case 2:
      case 13:
        v5 = MEMORY[0x277D815B0];
        return *v5;
      case 3:
        v5 = MEMORY[0x277D81580];
        return *v5;
      case 4:
        v5 = MEMORY[0x277D81548];
        return *v5;
      case 5:
        v5 = MEMORY[0x277D81598];
        return *v5;
      case 6:
        v5 = MEMORY[0x277D81540];
        return *v5;
      case 7:
        v5 = MEMORY[0x277D81558];
        return *v5;
      case 8:
        v5 = MEMORY[0x277D81560];
        return *v5;
      case 9:
        v5 = MEMORY[0x277D81570];
        return *v5;
      case 10:
        v5 = MEMORY[0x277D81578];
        return *v5;
      case 11:
        v5 = MEMORY[0x277D81550];
        return *v5;
      case 12:
        v5 = MEMORY[0x277D81588];
        return *v5;
      case 15:
        v5 = MEMORY[0x277D81590];
        return *v5;
      case 28:
        goto LABEL_9;
      default:
        goto LABEL_23;
    }
  }

  switch(a1)
  {
    case '-':
LABEL_9:
      v5 = MEMORY[0x277D81538];
      return *v5;
    case 'E':
      v5 = MEMORY[0x277D81568];
      return *v5;
    case 'F':
      v5 = MEMORY[0x277D815A8];
      return *v5;
  }

LABEL_23:
  v7 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "unichar operatorCharForTag(TSCEASTNodeTag)", a4);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeBuilder.mm", v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 203, 0, "Unknown operator tag: %d", a1);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  return 0;
}

void TSTExpressionTreeBuilder::addUnaryOperator(TSTExpressionTreeBuilder *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v6 = sub_2212BAD18(a2, a2, a3, a4);
  if (v4)
  {
    v7 = [TSTPostfixOperatorNode alloc];
  }

  else
  {
    v7 = [TSTPrefixOperatorNode alloc];
  }

  Index_lastIndex = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v7, v8, *(a1 + 5), v6, 0, 0, 0);
  TSTExpressionTreeBuilder::addExpression(a1, Index_lastIndex, 1u);
}

void TSTExpressionTreeBuilder::addArrayNode(TSTExpressionTreeBuilder *this, uint64_t a2, uint64_t a3)
{
  v6 = [TSTArrayNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_children_columns_rows_firstIndex_lastIndex_(v6, v7, *(this + 5), 0, a2, a3, 0, 0);
  TSTExpressionTreeBuilder::addExpression(this, Index_lastIndex, a3 * a2);
}

void TSTExpressionTreeBuilder::addListNode(TSTExpressionTreeBuilder *this, unsigned int a2)
{
  v4 = [TSTListNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_children_firstIndex_lastIndex_(v4, v5, *(this + 5), 0, 0, 0);
  TSTExpressionTreeBuilder::addExpression(this, Index_lastIndex, a2);
}

void TSTExpressionTreeBuilder::addIdentifier(TSTExpressionTreeBuilder *this, NSString *a2, uint64_t a3)
{
  v11 = a2;
  v5 = [TSTIdentifierNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_identifier_firstIndex_lastIndex_(v5, v6, *(this + 5), v11, 0, 0);
  v10 = Index_lastIndex;
  if (a3)
  {
    objc_msgSend_setSymbol_(Index_lastIndex, v8, a3, v9);
  }

  *(this + 129) = 1;
  TSTExpressionTreeBuilder::addExpression(this, v10, 0);
}

void TSTExpressionTreeBuilder::addVariable(TSTExpressionTreeBuilder *this, uint64_t a2, NSString *a3)
{
  v8 = a3;
  v5 = [TSTVariableNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_identifier_symbol_firstIndex_lastIndex_(v5, v6, *(this + 5), v8, a2, 0, 0);
  TSTExpressionTreeBuilder::addExpression(this, Index_lastIndex, 0);
}

id TSTExpressionTreeBuilder::popLastExpression(TSTExpressionTreeBuilder *this, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(this + 8);
  if (*(this + 7) == v4)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSTExpressionNode *TSTExpressionTreeBuilder::popLastExpression()", a4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeBuilder.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 517, 0, "Not expecting popLastExpression() to be called with an empty stack");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    v6 = 0;
  }

  else
  {
    v6 = *(v4 - 8);
    v7 = *(this + 8);

    *(this + 8) = v7 - 8;
  }

  return v6;
}

void TSTExpressionTreeBuilder::replaceExpressionAtBackIndex(TSTExpressionTreeBuilder *this, TSTExpressionNode *a2, unint64_t a3)
{
  v17 = a2;
  if (a3 >= (*(this + 8) - *(this + 7)) >> 3)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "void TSTExpressionTreeBuilder::replaceExpressionAtBackIndex(TSTExpressionNode *__strong, size_t)", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeBuilder.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 532, 0, "Calling replaceExpressionAtBackIndex with index %lu, but only %lu items on exprNode stack", a3, (*(this + 8) - *(this + 7)) >> 3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  else
  {
    objc_storeStrong((*(this + 8) + 8 * ~a3), a2);
  }
}

id TSTExpressionTreeBuilder::expressionAtBackIndex(TSTExpressionTreeBuilder *this, unint64_t a2)
{
  if (a2 >= (*(this + 8) - *(this + 7)) >> 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(*(this + 8) + 8 * ~a2);
  }

  return v3;
}

void TSTExpressionTreeBuilder::combineLastTwoArgsAsList(TSTExpressionTreeBuilder *this, const char *a2, uint64_t a3, uint64_t a4)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v5 = TSTExpressionTreeBuilder::popLastExpression(this, a2, a3, a4);
  v9 = TSTExpressionTreeBuilder::popLastExpression(this, v6, v7, v8);
  if (objc_msgSend_isListNode(v9, v10, v11, v12))
  {
    v16 = objc_msgSend_children(v9, v13, v14, v15);
    v20 = objc_msgSend_mutableCopy(v16, v17, v18, v19);

    objc_msgSend_addObject_(v20, v21, v5, v22);
    objc_msgSend_setChildren_(v9, v23, v20, v24);
    TSTExpressionTreeBuilder::addExpression(this, v9, 0);
  }

  else
  {
    v29[0] = v9;
    v29[1] = v5;
    v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v29, 2);
    v26 = [TSTListNode alloc];
    Index_lastIndex = objc_msgSend_initWithContext_children_firstIndex_lastIndex_(v26, v27, *(this + 5), v25, 0, 0);
    TSTExpressionTreeBuilder::addExpression(this, Index_lastIndex, 0);
  }
}

void TSTExpressionTreeBuilder::addExcelApplyFunction(TSTExpressionTreeBuilder *this, const char *a2, uint64_t a3, uint64_t a4)
{
  v48 = TSTExpressionTreeBuilder::popLastExpression(this, a2, a3, a4);
  v8 = TSTExpressionTreeBuilder::popLastExpression(this, v5, v6, v7);
  if (!objc_msgSend_isFunctionNode(v8, v9, v10, v11))
  {
    goto LABEL_8;
  }

  v14 = v8;
  if (!objc_msgSend_isLambdaFunction(v14, v15, v16, v17))
  {

LABEL_8:
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "void TSTExpressionTreeBuilder::addExcelApplyFunction()", v13);
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeBuilder.mm", v35);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v37, v33, v36, 598, 0, "Wasn't able to convert into LAMBDA.APPLY( <list>, <lambda>)");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40);
    goto LABEL_11;
  }

  if (objc_msgSend_isListNode(v48, v18, v19, v20))
  {
    v24 = objc_msgSend_children(v48, v21, v22, v23);
    v28 = objc_msgSend_mutableCopy(v24, v25, v26, v27);

    if (!v28)
    {
      v28 = objc_opt_new();
    }

    objc_msgSend_addObject_(v28, v29, v14, v30);
    v31 = v28;
  }

  else
  {
    v31 = objc_opt_new();
    objc_msgSend_addObject_(v31, v41, v48, v42);
    objc_msgSend_addObject_(v31, v43, v14, v44);
  }

  v45 = [TSTFunctionNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(v45, v46, *(this + 5), 372, v31, 0, 0);
  TSTExpressionTreeBuilder::addExpression(this, Index_lastIndex, 0);

LABEL_11:
}

void TSTExpressionTreeBuilder::transformToUseScopedVariables(id *this, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 128) == 1 && *(this + 129) == 1)
  {
    v5 = objc_msgSend_locale(this[1], a2, a3, a4);
    TSCESymbolTable::TSCESymbolTable(&v13, v5);

    v9 = TSTExpressionTreeBuilder::exprTreeResult(this, v6, v7, v8);
    v12 = objc_msgSend_transformToUseScopedVariables_(v9, v10, &v13, v11);

    p_undoSymbolTableMaps = &v13._undoSymbolTableMaps;
    sub_2210C8268(&p_undoSymbolTableMaps);
    sub_221087B80(&v13._identifierMap);
    sub_2210C82EC(&v13._symbolTableMap);
  }
}

void sub_2212BB9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  v10 = v9;

  sub_2210C8214(&a9);
  _Unwind_Resume(a1);
}

double sub_2212BB9E8(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, char a4)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v5 = &unk_2834A3EA8;
  *(v5 + 136) = a4;
  *(v5 + 137) = 0;
  *(v5 + 140) = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  *(v5 + 156) = 0;
  result = 0.0;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 96) = 1;
  return result;
}

TSCEASTRelativeCoordRefElement *sub_2212BBA5C(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  if ((TSCEASTElement::refFlags(a2, a1) & 1) == 0)
  {
    return a2;
  }

  v6 = TSCEASTRelativeCoordRefElement::relativeCoord(a2, a1, v4, v5);
  v7 = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
  v8 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  if (v7)
  {
    v11 = WORD2(v6);
    goto LABEL_8;
  }

  v11 = 0x7FFF;
  if (WORD2(v6) == 0x7FFF)
  {
    goto LABEL_8;
  }

  coordinate = v8->var0.var0.coordinate;
  if ((v6 >> 16) >> 16 < 1)
  {
    if ((v6 & 0x800000000000) != 0 && -SWORD2(v6) > coordinate.column)
    {
      goto LABEL_8;
    }
  }

  else if (999 - SWORD2(v6) < coordinate.column)
  {
    goto LABEL_8;
  }

  v11 = coordinate.column + WORD2(v6);
  if ((coordinate.column + WORD2(v6)) >= 0x7FFFu)
  {
    v49 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "TSUColumnIndex TSCEMakeAbsoluteColumnFromRelativeColumn(TSUCellCoord, TSURelativeColumnIndex, BOOL)", v10);
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v52);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v54, v50, v53, 168, 0, "overflow in column");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57);
  }

LABEL_8:
  v13 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  if ((v7 & 2) != 0)
  {
    v16 = v6;
    goto LABEL_14;
  }

  v16 = 0x7FFFFFFF;
  if (v6 != 0x7FFFFFFF)
  {
    v17 = v13->var0.var0.coordinate;
    if (v6 < 1)
    {
      if (v6 && v17.row < -v6)
      {
        goto LABEL_14;
      }
    }

    else if ((999999 - v6) < v17.row)
    {
      goto LABEL_14;
    }

    if (v17.row == 0x7FFFFFFF)
    {
      v58 = MEMORY[0x277D81150];
      v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v15);
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v61);
      v63 = NSStringFromTSUCellCoord();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v64, v59, v62, 195, 0, "Calling TSCEMakeAbsoluteRowFromRelativeRow with an invalid hostCell row: %@", v63);

LABEL_44:
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71);
      v16 = 0x7FFFFFFF;
      goto LABEL_14;
    }

    v16 = v17.row + v6;
    if ((v17.row + v6) >= 0x7FFFFFFF)
    {
      v65 = MEMORY[0x277D81150];
      v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v15);
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v67);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v68, v59, v62, 191, 0, "overflow in row, input row: %d with host row: %lu", v6, v17.row);
      goto LABEL_44;
    }
  }

LABEL_14:
  if (TSCEASTRelativeCoordRefElement::spansAllRows(a2, a1))
  {
    v18 = (v11 << 32) | 0x7FFFFFFF;
  }

  else if (TSCEASTRelativeCoordRefElement::spansAllColumns(a2, a1))
  {
    v18 = v16 | 0x7FFF00000000;
  }

  else
  {
    v18 = v16 | (v11 << 32);
  }

  if (TSCEASTElement::refFlags(a2, a1))
  {
    *(a1 + 156) = 1;
    *(a1 + 160) = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v20, v21);
    *(a1 + 168) = v19;
  }

  if (*(a1 + 137) == 1)
  {
    v22 = *(a1 + 140);
    v23 = *(a1 + 148);
    if (v22 != v23 || ((v23 ^ v22) & 0x101FFFF00000000) != 0)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "virtual TSCEASTElement *TSTTrackingRangeExtractor::anyReferenceNode(TSCEASTRelativeCoordRefElement *)", v21);
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTrackingRangeExtractor.mm", v27);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v29, v25, v28, 62, 0, "Too many coordinates in tracking range!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32);
    }

    *(a1 + 148) = v18;
    if (*(a1 + 232))
    {
      v33 = MEMORY[0x277D81150];
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "virtual TSCEASTElement *TSTTrackingRangeExtractor::anyReferenceNode(TSCEASTRelativeCoordRefElement *)", v21);
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTrackingRangeExtractor.mm", v36);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v38, v34, v37, 66, 0, "tracking region should not yet be initialized");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41);
    }

    v42 = *(a1 + 140);
    if (v42 != 0x7FFFFFFF && (v42 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v43 = *(a1 + 148);
      if (v43 != 0x7FFFFFFF && (v43 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        TSUCellRectFromTSCERangeCoordinate();
        v46 = objc_msgSend_regionFromRange_(TSTCellRegion, v45, v44, v45);
        v47 = *(a1 + 232);
        *(a1 + 232) = v46;
      }
    }
  }

  else
  {
    *(a1 + 148) = v18;
    *(a1 + 140) = v18;
    *(a1 + 137) = 1;
  }

  return a2;
}

uint64_t sub_2212BBF6C(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 96))(a2, a1);
  v8 = objc_msgSend_includedUidsTract(v4, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    v16 = objc_msgSend_columnUids(v8, v9, v10, v11);
    if ((a1 + 208) != v16)
    {
      sub_2210BD068((a1 + 208), *v16, v16[1], (v16[1] - *v16) >> 4);
    }

    v17 = objc_msgSend_rowUids(v12, v13, v14, v15);
    if ((a1 + 184) != v17)
    {
      sub_2210BD068((a1 + 184), *v17, v17[1], (v17[1] - *v17) >> 4);
    }
  }

  v18 = *(a1 + 140);
  if (v18 != 0x7FFFFFFF && (v18 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v20 = *(a1 + 148);
    if (v20 != 0x7FFFFFFF && (v20 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v22 = [TSCECellTractRef alloc];
      v23 = *(a1 + 160);
      v29[0] = *(a1 + 140);
      v29[1] = v23;
      v26 = objc_msgSend_initWithRangeRef_(v22, v24, v29, v25);
      v27 = *(a1 + 176);
      *(a1 + 176) = v26;
    }
  }

  return a2;
}

TSCEASTColonTractElement *sub_2212BC0BC(uint64_t a1, TSCEASTColonTractElement *a2)
{
  v4 = (*(*a2 + 96))(a2, a1);
  v8 = objc_msgSend_includedUidsTract(v4, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    v16 = objc_msgSend_columnUids(v8, v9, v10, v11);
    if ((a1 + 208) != v16)
    {
      sub_2210BD068((a1 + 208), *v16, v16[1], (v16[1] - *v16) >> 4);
    }

    v17 = objc_msgSend_rowUids(v12, v13, v14, v15);
    if ((a1 + 184) != v17)
    {
      sub_2210BD068((a1 + 184), *v17, v17[1], (v17[1] - *v17) >> 4);
    }
  }

  v18 = TSCEASTColonTractElement::relativeTractRef(a2, a1, v10, v11);
  coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
  v21 = objc_msgSend_absoluteCellTractRefForHostCell_(v18, v19, &coordinate, v20);
  if (objc_msgSend_isValid(v21, v22, v23, v24))
  {
    if (*(a1 + 136) == 1)
    {
      *(a1 + 140) = objc_msgSend_topLeft(v21, v25, v26, v27);
      *(a1 + 148) = objc_msgSend_bottomRight(v21, v28, v29, v30);
      *(a1 + 137) = 1;
    }

    else
    {
      v34 = objc_msgSend_copy(v21, v25, v26, v27);
      v35 = *(a1 + 176);
      *(a1 + 176) = v34;

      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = sub_2212BC2F8;
      v43[3] = &unk_278462A30;
      v45 = a1;
      v44 = v21;
      objc_msgSend_foreachCellRect_(v44, v36, v43, v37);
    }

    if (objc_msgSend_hasTableUID(v21, v31, v32, v33))
    {
      *(a1 + 156) = 1;
      *(a1 + 160) = objc_msgSend_tableUID(v21, v38, v39, v40);
      *(a1 + 168) = v41;
    }
  }

  return a2;
}

uint64_t sub_2212BC2F8(uint64_t a1, TSUCellRect *a2, _BYTE *a3, uint64_t a4)
{
  origin = a2->origin;
  v7 = *(a1 + 40);
  result = objc_msgSend_topLeft(*(a1 + 32), a2, a3, a4);
  if (origin.row == result && ((result ^ *&origin) & 0x101FFFF00000000) == 0)
  {
    *(v7 + 140) = a2->origin;
    result = TSUCellRect::bottomRight(a2);
    *(v7 + 148) = result;
    *(v7 + 137) = 1;
    *a3 = 1;
  }

  return result;
}

TSCEASTRelativeCoordRefElement *sub_2212BC36C(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  v4 = (*(*a2 + 96))(a2, a1);
  v8 = objc_msgSend_includedUidsTract(v4, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    v16 = objc_msgSend_columnUids(v8, v9, v10, v11);
    if ((a1 + 208) != v16)
    {
      sub_2210BD068((a1 + 208), *v16, v16[1], (v16[1] - *v16) >> 4);
    }

    v17 = objc_msgSend_rowUids(v12, v13, v14, v15);
    if ((a1 + 184) != v17)
    {
      sub_2210BD068((a1 + 184), *v17, v17[1], (v17[1] - *v17) >> 4);
    }
  }

  if (TSCEASTElement::refFlags(a2, a1))
  {
    *(a1 + 156) = 1;
    *(a1 + 160) = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v18, v19);
    *(a1 + 168) = v20;
  }

  return a2;
}

TSCEASTUidReferenceElement *sub_2212BC480(TSCEASTIteratorBase *a1, TSCEASTUidReferenceElement *this, uint64_t a3, uint64_t a4)
{
  TSCEASTUidReferenceElement::uidReference(v53, this, a1, a3, a4);
  v11 = objc_msgSend_activeUidTract(v53[0], v6, v7, v8);
  if (v11)
  {
    v12 = TSCEASTUidReferenceElement::tableUID(this, a1, v9, v10);
    v14 = v13;
    v15 = sub_221089E8C(a1);
    v17 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v16, v12, v14, v15);

    if (v17)
    {
      v21 = objc_msgSend_columnUids(v11, v18, v19, v20);
      if ((a1 + 208) != v21)
      {
        sub_2210BD068(a1 + 26, *v21, v21[1], (v21[1] - *v21) >> 4);
      }

      v25 = objc_msgSend_rowUids(v11, v22, v23, v24);
      if ((a1 + 184) != v25)
      {
        sub_2210BD068(a1 + 23, *v25, v25[1], (v25[1] - *v25) >> 4);
      }

      v28 = objc_msgSend_columnIndexesForUIDs_(v17, v26, a1 + 208, v27);
      v31 = objc_msgSend_rowIndexesForUIDs_(v17, v29, a1 + 184, v30);
      if (objc_msgSend_tsu_isSingleContiguousRange(v28, v32, v33, v34) && objc_msgSend_tsu_isSingleContiguousRange(v31, v35, v36, v37))
      {
        *(a1 + 137) = 1;
        Index = objc_msgSend_firstIndex(v28, v35, v36, v37);
        *(a1 + 140) = objc_msgSend_firstIndex(v31, v39, v40, v41) | (Index << 32);
        v45 = objc_msgSend_lastIndex(v28, v42, v43, v44);
        *(a1 + 148) = objc_msgSend_lastIndex(v31, v46, v47, v48) | (v45 << 32);
      }

      *(a1 + 156) = 1;
      *(a1 + 20) = objc_msgSend_tableUID(v17, v35, v36, v37);
      *(a1 + 21) = v49;
      v50 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v49, v28, v31);
      v51 = *(a1 + 29);
      *(a1 + 29) = v50;
    }
  }

  return this;
}

double sub_2212BC6C4(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v3 = &unk_2834A4000;
  result = 0.0;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 96) = 1;
  return result;
}

TSCEASTUidReferenceElement *sub_2212BC710(TSCEASTIteratorBase *a1, TSCEASTUidReferenceElement *this, uint64_t a3, uint64_t a4)
{
  TSCEASTUidReferenceElement::uidReference(v26, this, a1, a3, a4);
  v9 = objc_msgSend_activeUidTract(v26[0], v6, v7, v8);
  v13 = v9;
  if (v9)
  {
    v14 = objc_msgSend_columnUids(v9, v10, v11, v12);
    v18 = objc_msgSend_rowUids(v13, v15, v16, v17);
    sub_2210BBBE8(__p, v14, v18);
    v19 = *(a1 + 17);
    if (v19)
    {
      *(a1 + 18) = v19;
      operator delete(v19);
      *(a1 + 17) = 0;
      *(a1 + 18) = 0;
      *(a1 + 19) = 0;
    }

    v20 = *(a1 + 20);
    *(a1 + 136) = *__p;
    *(a1 + 19) = v23;
    __p[1] = 0;
    v23 = 0;
    __p[0] = 0;
    if (v20)
    {
      *(a1 + 21) = v20;
      operator delete(v20);
      *(a1 + 20) = 0;
      *(a1 + 21) = 0;
      *(a1 + 22) = 0;
      v20 = __p[0];
    }

    *(a1 + 10) = v24;
    *(a1 + 22) = v25;
    v25 = 0;
    v24 = 0uLL;
    if (v20)
    {
      __p[1] = v20;
      operator delete(v20);
    }
  }

  return this;
}

void sub_2212BC840(uint64_t a1)
{
  *a1 = &unk_2834A3EA8;

  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 216) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 184);
  if (v3)
  {
    *(a1 + 192) = v3;
    operator delete(v3);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v4);

  JUMPOUT(0x223DA1450);
}

void sub_2212BC8D4(TSCEASTStreamIterator *this, TSCEASTNodeArray *a2)
{
  *this = &unk_2834A4000;
  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  v4 = *(this + 17);
  if (v4)
  {
    *(this + 18) = v4;
    operator delete(v4);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(this, a2);
}

void sub_2212BC944(TSCEASTStreamIterator *this, TSCEASTNodeArray *a2)
{
  *this = &unk_2834A4000;
  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  v4 = *(this + 17);
  if (v4)
  {
    *(this + 18) = v4;
    operator delete(v4);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(this, a2);

  JUMPOUT(0x223DA1450);
}

void sub_2212BD3C8(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_2212BD4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2212BDF48(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_2212C09F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_22109DBB8(va);

  _Unwind_Resume(a1);
}

uint64_t sub_2212C3620(uint64_t a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, int a4, int a5, int a6)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v10 = &unk_2834A12E0;
  TSCEASTNodeArgInfo::TSCEASTNodeArgInfo((v10 + 136), a4, a5, a6);
  *(a1 + 176) = 0;
  *(a1 + 180) = 1;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 96) = 1;
  return a1;
}

void sub_2212C36B4(id *a1)
{

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

id sub_2212C47E0(TSKUIDStruct *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 == 0)
  {
    v10 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3, a4);
  }

  else
  {
    v4 = a2;
    v5 = TSKUIDStruct::CFUUIDBytes(a1);
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], HIBYTE(v6), @"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X", BYTE3(v6), v5, BYTE1(v5), BYTE2(v5), BYTE3(v5), BYTE4(v5), BYTE5(v5), BYTE6(v5), HIBYTE(v5), v6, BYTE1(v6), BYTE2(v6), BYTE3(v6), BYTE4(v6), BYTE5(v6), BYTE6(v6), HIBYTE(v6));
    if (v4)
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v7, @"%@%@%@", v8, @"SFTGlobalID_", v9, @"::");
    }

    else
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v7, @"%@", v8, v9);
    }
    v10 = ;
  }

  return v10;
}

uint64_t sub_2212C4930(_OWORD *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 == 0)
  {
    return 0;
  }

  if (a2 <= 7 && ((1 << a2) & 0x87) != 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSCEOwnerUID TSCESubFormulaOwnerID::formulaOwnerUIDForBaseUIDAndSubownerIndex(const TSCEOwnerUID &, TSCESubFormulaOwnerIndex)", a4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCETypes.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 64, 0, "OwnerIndex %d doesn't correspond to a subFormulaOwner", a2);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
    return 0;
  }

  return TSKUIDStruct::operator+();
}

uint64_t sub_2212C4A5C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!(result | a1[1]))
  {
    return 0;
  }

  if (a2 > 7 || ((1 << a2) & 0x87) == 0)
  {
    return TSKUIDStruct::operator-();
  }

  return result;
}

void TSCECellRef::TSCECellRef(TSCECellRef *this, TSCEWrappedCellRef *a2)
{
  v3 = a2;
  this->coordinate = objc_msgSend_coordinate(v3, v4, v5, v6);
  this->_tableUID._lower = objc_msgSend_tableUID(v3, v7, v8, v9);
  this->_tableUID._upper = v10;
}

TSCEWrappedCellRef *TSCECellRef::wrapped(TSCECellRef *this)
{
  v2 = [TSCEWrappedCellRef alloc];
  v5 = objc_msgSend_initWithCellRef_(v2, v3, this, v4);

  return v5;
}

id TSCECellRef::description(TSCECellRef *this)
{
  lower = this->_tableUID._lower;
  p_tableUID = &this->_tableUID;
  if (lower || this->_tableUID._upper)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = TSKUIDStruct::description(p_tableUID);
    v6 = NSStringFromTSUCellCoord();
    v9 = objc_msgSend_stringWithFormat_(v4, v7, @"%@:%@", v8, v5, v6);
  }

  else
  {
    v11 = MEMORY[0x277CCACA8];
    v5 = NSStringFromTSUCellCoord();
    v9 = objc_msgSend_stringWithFormat_(v11, v12, @"%@", v13, v5);
  }

  return v9;
}

void TSCERangeRef::TSCERangeRef(TSCERangeRef *this, const TSCECellRef *a2)
{
  coordinate = a2->coordinate;
  this->range._topLeft = a2->coordinate;
  this->range._bottomRight = coordinate;
  this->_tableUID = a2->_tableUID;
}

{
  coordinate = a2->coordinate;
  this->range._topLeft = a2->coordinate;
  this->range._bottomRight = coordinate;
  this->_tableUID = a2->_tableUID;
}

void TSCERangeRef::TSCERangeRef(TSCERangeRef *this, const TSCECellRef *a2, const TSCECellRef *a3)
{
  coordinate = a3->coordinate;
  this->range._topLeft = a2->coordinate;
  this->range._bottomRight = coordinate;
  this->_tableUID = a2->_tableUID;
}

{
  coordinate = a3->coordinate;
  this->range._topLeft = a2->coordinate;
  this->range._bottomRight = coordinate;
  this->_tableUID = a2->_tableUID;
}

void TSCERangeRef::TSCERangeRef(TSCERangeRef *this, const TSUCellRect *a2, const TSKUIDStruct *a3)
{
  this->_tableUID = *a3;
  origin = a2->origin;
  size = a2->size;
  this->range._topLeft = __C(origin, size);
  this->range._bottomRight = v6;
}

{
  this->_tableUID = *a3;
  origin = a2->origin;
  size = a2->size;
  this->range._topLeft = __C(origin, size);
  this->range._bottomRight = v6;
}

void TSCERangeRef::TSCERangeRef(TSCERangeRef *this, TSCEWrappedRangeRef *a2)
{
  v3 = a2;
  v7 = v3;
  this->range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  this->_tableUID._lower = 0;
  this->_tableUID._upper = 0;
  if (v3)
  {
    objc_msgSend_rangeRef(v3, v4, v5, v6);
    this->range = v8;
    this->_tableUID = v9;
  }
}

BOOL TSCERangeRef::operator==(void *a1, void *a2)
{
  v2 = *a1 == *a2 && ((*a2 ^ *a1) & 0xFFFF00000000) == 0;
  if (v2 && ((v3 = a2[1], v4 = a1[1], v4 == v3) ? (v5 = ((v4 ^ v3) & 0xFFFF00000000) == 0) : (v5 = 0), v5 && a1[2] == a2[2]))
  {
    return a1[3] == a2[3];
  }

  else
  {
    return 0;
  }
}

uint64_t TSCERangeRef::isReferenceRange(TSCERangeRef *this)
{
  topLeft = this->range._topLeft;
  bottomRight = this->range._bottomRight;
  v3 = *&this->range._topLeft & 0xFFFF00000000;
  v4 = *&bottomRight & 0xFFFF00000000;
  v5 = *&this->range._topLeft;
  v6 = v5 != 0x7FFFFFFF || v3 == 0x7FFF00000000;
  if (!v6 && v4 != 0x7FFF00000000)
  {
    return 1;
  }

  v8 = bottomRight.row != 0x7FFFFFFF && v4 == 0x7FFF00000000;
  v9 = v8 && v3 == 0x7FFF00000000;
  v10 = !v9 || v5 == 0x7FFFFFFF;
  if (!v10 || topLeft.row != bottomRight.row)
  {
    return 1;
  }

  v13 = *&bottomRight ^ *&topLeft;
  v6 = (v13 & 0x1FFFF00000000) == 0;
  v14 = HIBYTE(v13) & 1;
  if (v6)
  {
    return v14;
  }

  else
  {
    return 1;
  }
}

id TSCERangeRef::description(TSCERangeRef *this)
{
  v2 = NSStringFromTSUCellCoord();
  v5 = NSStringFromTSUCellCoord();
  if (*&this->_tableUID == 0)
  {
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v3, @"%@:%@", v4, v2, v5);
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = TSKUIDStruct::description(&this->_tableUID);
    v11 = objc_msgSend_stringWithFormat_(v6, v8, @"%@::%@:%@", v9, v7, v2, v5);
  }

  return v11;
}

uint64_t TSCERangeRef::isValid(TSCERangeRef *this)
{
  if (!this->_tableUID._lower && !this->_tableUID._upper)
  {
    return 0;
  }

  topLeft = this->range._topLeft;
  bottomRight = this->range._bottomRight;
  v3 = HIDWORD(*&bottomRight);
  v4 = *&this->range._topLeft;
  v5 = *&this->range._topLeft & 0xFFFF00000000;
  if (v4 == 0x7FFFFFFF || v5 == 0x7FFF00000000)
  {
    v7 = *&bottomRight & 0xFFFF00000000;
  }

  else
  {
    v7 = *&bottomRight & 0xFFFF00000000;
    if (bottomRight.row != 0x7FFFFFFF && v7 != 0x7FFF00000000 && WORD2(*&this->range._topLeft) <= bottomRight.column && topLeft.row <= bottomRight.row)
    {
      return 1;
    }
  }

  if (v4 == 0x7FFFFFFF || v5 != 0x7FFF00000000 || v7 != 0x7FFF00000000)
  {
    v10 = bottomRight.row == 0x7FFFFFFF;
    if (v7 == 0x7FFF00000000)
    {
      v10 = 0;
    }

    if (v5 == 0x7FFF00000000)
    {
      v10 = 0;
    }

    v11 = v4 == 0x7FFFFFFF && v10;
    return WORD2(*&this->range._topLeft) <= v3 && v11;
  }

  v11 = 0;
  if (bottomRight.row != 0x7FFFFFFF && topLeft.row <= bottomRight.row)
  {
    return 1;
  }

  return WORD2(*&this->range._topLeft) <= v3 && v11;
}

uint64_t TSCERangeRef::isSingleCell(TSCERangeRef *this)
{
  result = TSCERangeRef::isValid(this);
  if (result)
  {
    if (TSCERangeRef::isSpanning(this))
    {
      return 0;
    }

    bottomRight = this->range._bottomRight;
    if (*&this->range._topLeft != bottomRight.row)
    {
      return 0;
    }

    else
    {
      v4 = *&bottomRight ^ *&this->range._topLeft;
      return (v4 & 0x1FFFF00000000) == 0 && (v4 & 0x100000000000000) == 0;
    }
  }

  return result;
}

BOOL TSCERangeRef::isSpanning(TSCERangeRef *this)
{
  bottomRight = this->range._bottomRight;
  v2 = *&this->range._topLeft & 0xFFFF00000000;
  v3 = *&bottomRight & 0xFFFF00000000;
  v4 = *&this->range._topLeft;
  if (v4 == 0x7FFFFFFF && v2 != 0x7FFF00000000 && v3 != 0x7FFF00000000)
  {
    return bottomRight.row == 0x7FFFFFFF;
  }

  return v4 != 0x7FFFFFFF && v2 == 0x7FFF00000000 && v3 == 0x7FFF00000000 && bottomRight.row != 0x7FFFFFFF;
}

BOOL TSCERangeRef::isSpanningAllRows(TSCERangeRef *this)
{
  bottomRight = this->range._bottomRight;
  v2 = *&bottomRight & 0xFFFF00000000;
  v3 = bottomRight.row == 0x7FFFFFFF;
  return *&this->range._topLeft == 0x7FFFFFFF && (*&this->range._topLeft & 0xFFFF00000000) != 0x7FFF00000000 && v2 != 0x7FFF00000000 && v3;
}

BOOL TSCERangeRef::isSpanningAllColumns(TSCERangeRef *this)
{
  bottomRight = this->range._bottomRight;
  v2 = *&bottomRight & 0xFFFF00000000;
  v3 = bottomRight.row != 0x7FFFFFFF;
  return *&this->range._topLeft != 0x7FFFFFFF && (*&this->range._topLeft & 0xFFFF00000000) == 0x7FFF00000000 && v2 == 0x7FFF00000000 && v3;
}

TSCEWrappedRangeRef *TSCERangeRef::wrapped(TSCERangeRef *this)
{
  v2 = [TSCEWrappedRangeRef alloc];
  v5 = objc_msgSend_initWithRangeRef_(v2, v3, this, v4);

  return v5;
}

uint64_t *TSCERangeRef::rangeRefForAnyRef@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, id *a3@<X1>)
{
  *a1 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  a1[2] = 0;
  a1[3] = 0;
  v4 = *this;
  if (v4 == 2)
  {
    v7 = *(this + 3);
    *a1 = *(this + 1);
    *(a1 + 1) = v7;
    if (a3)
    {
      this = TSCETableResolverWrapper::apparentRangeForRange(a3, a1, *(this + 40));
      *a1 = this;
      a1[1] = v8;
    }
  }

  else if (v4 == 1)
  {
    v6 = *(this + 3);
    *a1 = *(this + 1);
    *(a1 + 1) = v6;
  }

  else if (!*this)
  {
    v5 = this[1];
    *a1 = v5;
    a1[1] = v5;
    *(a1 + 1) = *(this + 3);
  }

  return this;
}

void TSCERangeRef::enumerateCoordinatesUsingBlock(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  v5 = a1[1];
  v12 = 0;
  v6 = (v5 + 1);
  if (v6 > v4)
  {
    v7 = 0;
    v8 = WORD2(v4);
    v9 = (WORD2(v5) + 1);
    v10 = v4;
    do
    {
      if (v9 > v8)
      {
        v11 = v8;
        do
        {
          if (v7)
          {
            break;
          }

          v3[2](v3, v10 | (v11++ << 32), &v12);
          v7 = v12;
        }

        while (v9 > v11);
      }

      ++v10;
    }

    while (v10 < v6 && (v7 & 1) == 0);
  }
}

BOOL TSCERangeRef::containsCellRef(TSCERangeRef *this, const TSCECellRef *a2)
{
  if (a2->_tableUID._lower != this->_tableUID._lower)
  {
    return 0;
  }

  if (a2->_tableUID._upper != this->_tableUID._upper)
  {
    return 0;
  }

  coordinate = a2->coordinate;
  v3 = WORD2(*&a2->coordinate);
  if (v3 < WORD2(*&this->range._topLeft))
  {
    return 0;
  }

  bottomRight = this->range._bottomRight;
  return v3 <= bottomRight.column && coordinate.row <= bottomRight.row && coordinate.row >= *&this->range._topLeft;
}

uint64_t TSCERangeRef::preserveFlags(TSCERangeRef *this)
{
  if (this->range._topLeft._preserveRow)
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | this->range._topLeft._preserveColumn;
  if (this->range._bottomRight._preserveColumn)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  if (this->range._bottomRight._preserveRow)
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v2 | v3 | v4;
}

uint64_t TSCERangeCoordinate::preserveFlags(TSCERangeCoordinate *this)
{
  if (this->_topLeft._preserveRow)
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | this->_topLeft._preserveColumn;
  if (this->_bottomRight._preserveColumn)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  if (this->_bottomRight._preserveRow)
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v2 | v3 | v4;
}

TSCERangeRef *TSCERangeRef::setPreserveFlags(TSCERangeRef *this, const TSUPreserveFlags *a2)
{
  flags = a2->_flags;
  this->range._topLeft._preserveColumn = a2->_flags & 1;
  this->range._topLeft._preserveRow = (flags & 2) != 0;
  this->range._bottomRight._preserveColumn = (flags & 4) != 0;
  this->range._bottomRight._preserveRow = (flags & 8) != 0;
  return this;
}

TSCERangeCoordinate *TSCERangeCoordinate::setPreserveFlags(TSCERangeCoordinate *this, const TSUPreserveFlags *a2)
{
  flags = a2->_flags;
  this->_topLeft._preserveColumn = a2->_flags & 1;
  this->_topLeft._preserveRow = (flags & 2) != 0;
  this->_bottomRight._preserveColumn = (flags & 4) != 0;
  this->_bottomRight._preserveRow = (flags & 8) != 0;
  return this;
}

TSCERangeCoordinate *TSCERangeRef::fixInversions(TSCERangeRef *this)
{
  if (this->range._topLeft._preserveRow)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | this->range._topLeft._preserveColumn;
  if (this->range._bottomRight._preserveColumn)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  if (this->range._bottomRight._preserveRow)
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  v8._flags = v3 | v4 | v5;
  result = TSCERangeCoordinate::fixInversions(&this->range, &v8);
  flags = v8._flags;
  this->range._topLeft._preserveColumn = v8._flags & 1;
  this->range._topLeft._preserveRow = (flags & 2) != 0;
  this->range._bottomRight._preserveColumn = (flags & 4) != 0;
  this->range._bottomRight._preserveRow = (flags & 8) != 0;
  return result;
}

TSCERangeCoordinate *TSCERangeCoordinate::fixInversions(TSCERangeCoordinate *this, TSUPreserveFlags *a2)
{
  topLeft = this->_topLeft;
  bottomRight = this->_bottomRight;
  v4 = *&this->_topLeft & 0xFFFF00000000;
  v5 = *&bottomRight & 0xFFFF00000000;
  v6 = *&this->_topLeft;
  v7 = HIDWORD(*&bottomRight);
  if (v6 != 0x7FFFFFFF || v4 == 0x7FFF00000000 || v5 == 0x7FFF00000000)
  {
    if (v6 != 0x7FFFFFFF && v4 == 0x7FFF00000000 && v5 == 0x7FFF00000000)
    {
      if (bottomRight.row != 0x7FFFFFFF)
      {
        v29 = topLeft.row > bottomRight.row;
        if (topLeft.row >= bottomRight.row)
        {
          row = bottomRight.row;
        }

        else
        {
          row = topLeft.row;
        }

        v31 = row | 0x7FFF00000000;
        if (topLeft.row <= bottomRight.row)
        {
          topLeft = bottomRight.row;
        }

        else
        {
          topLeft = topLeft.row;
        }

        v32 = *&topLeft | 0x7FFF00000000;
        if (v29)
        {
          a2->_flags = (4 * (a2->_flags & 3)) | (a2->_flags >> 2) & 3;
        }

        this->_topLeft = v31;
        this->_bottomRight = v32;
      }
    }

    else if (v4 != 0x7FFF00000000 && v6 != 0x7FFFFFFF && bottomRight.row != 0x7FFFFFFF && v5 != 0x7FFF00000000)
    {
      v12 = WORD2(*&this->_topLeft);
      if (v12 >= bottomRight.column)
      {
        column = bottomRight.column;
      }

      else
      {
        column = WORD2(*&this->_topLeft);
      }

      if (v12 <= bottomRight.column)
      {
        v14 = bottomRight.column;
      }

      else
      {
        v14 = WORD2(*&this->_topLeft);
      }

      flags = a2->_flags;
      if (topLeft.column <= bottomRight.column)
      {
        v16 = a2->_flags;
      }

      else
      {
        v16 = a2->_flags >> 2;
      }

      if (topLeft.column <= bottomRight.column)
      {
        v17 = a2->_flags;
      }

      else
      {
        v17 = 4 * flags;
      }

      v18 = topLeft.row > bottomRight.row;
      if (topLeft.row >= bottomRight.row)
      {
        v19 = bottomRight.row;
      }

      else
      {
        v19 = topLeft.row;
      }

      if (topLeft.row <= bottomRight.row)
      {
        topLeft = bottomRight.row;
      }

      else
      {
        topLeft = topLeft.row;
      }

      if (v18)
      {
        v20 = a2->_flags >> 2;
      }

      else
      {
        v20 = a2->_flags;
      }

      v21 = v20 & 2 | v16 & 1 | v17 & 4;
      if (v18)
      {
        v22 = 4 * flags;
      }

      else
      {
        v22 = a2->_flags;
      }

      this->_topLeft = (v19 | (column << 32));
      this->_bottomRight = (*&topLeft | (v14 << 32));
      a2->_flags = v21 | v22 & 8;
    }
  }

  else if (bottomRight.row == 0x7FFFFFFF)
  {
    v23 = topLeft.column;
    v24 = WORD2(*&this->_topLeft);
    if (v24 >= bottomRight.column)
    {
      v25 = bottomRight.column;
    }

    else
    {
      v25 = WORD2(*&this->_topLeft);
    }

    v26 = (v25 << 32) | 0x7FFFFFFF;
    if (v24 <= bottomRight.column)
    {
      v27 = bottomRight.column;
    }

    else
    {
      v27 = WORD2(*&this->_topLeft);
    }

    v28 = (v27 << 32) | 0x7FFFFFFF;
    if (v23 > v7)
    {
      a2->_flags = (4 * (a2->_flags & 3)) | (a2->_flags >> 2) & 3;
    }

    this->_topLeft = v26;
    this->_bottomRight = v28;
  }

  return this;
}

BOOL TSCESpanningRangeRef::operator==(uint64_t a1, uint64_t a2)
{
  result = TSCERangeRef::operator==(a1, a2);
  if (result)
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return result;
}

id TSCESpanningRangeRef::description(TSCESpanningRangeRef *this)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = TSCERangeRef::description(&this->rangeRef);
  v6 = v3;
  if (this->rangeContext == 1)
  {
    objc_msgSend_stringWithFormat_(v2, v4, @"%@:%@", v5, v3, @"(include headers)");
  }

  else
  {
    objc_msgSend_stringWithFormat_(v2, v4, @"%@:%@", v5, v3, &stru_2834BADA0);
  }
  v7 = ;

  return v7;
}

id TSCERangeCoordinate::description(TSCERangeCoordinate *this)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = NSStringFromTSUCellCoord();
  v3 = NSStringFromTSUCellCoord();
  v6 = objc_msgSend_stringWithFormat_(v1, v4, @"%@:%@", v5, v2, v3);

  return v6;
}

TSCERangeCoordinate *TSCERangeCoordinate::clampToPreExpansionMaxSizes(TSCERangeCoordinate *this)
{
  v1 = this->_topLeft.row != 0x7FFFFFFF && this->_topLeft.row > 0xFFFE;
  v2 = v1;
  column = this->_topLeft.column;
  if (v1 || column != 0x7FFF && column > 0xFE || ((v4 = this->_bottomRight.row, v4 != 0x7FFFFFFF) ? (v5 = v4 > 0xFFFE) : (v5 = 0), v5 || (v6 = this->_bottomRight.column, v6 != 0x7FFF) && v6 >= 0xFF))
  {
    if (column != 0x7FFF && column >= 0xFF)
    {
      this->_topLeft.column = 254;
    }

    v7 = this->_bottomRight.column;
    if (v7 != 0x7FFF && v7 >= 0xFF)
    {
      this->_bottomRight.column = 254;
    }

    if (v2)
    {
      this->_topLeft.row = 65534;
    }

    row = this->_bottomRight.row;
    if (row != 0x7FFFFFFF && row >= 0xFFFF)
    {
      this->_bottomRight.row = 65534;
    }
  }

  return this;
}

uint64_t TSCERangeCoordinate::rangeCoordFromCellRect(TSCERangeCoordinate *this, const TSUCellRect *a2)
{
  bottomRight = this->_bottomRight;
  topLeft = this->_topLeft;
  return __C(topLeft, bottomRight);
}

TSUCellCoord TSCERangeCoordinate::rangeCoordFromString(TSCERangeCoordinate *this, NSString *a2, int a3, uint64_t a4)
{
  v5 = objc_msgSend_componentsSeparatedByString_(this, a2, @":", a4);
  if (!objc_msgSend_count(v5, v6, v7, v8))
  {
    goto LABEL_19;
  }

  v11 = objc_msgSend_objectAtIndexedSubscript_(v5, v9, 0, v10);
  v12 = TSUCellCoord::coordFromString(v11, a2);

  v18 = v12;
  if (objc_msgSend_count(v5, v13, v14, v15) >= 2)
  {
    v19 = objc_msgSend_objectAtIndexedSubscript_(v5, v16, 1, v17);
    v18 = TSUCellCoord::coordFromString(v19, a2);
  }

  if ((v12 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && (v18 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && ((v12 & 0xFFFF00000000) == 0x7FFF00000000 ? (v20 = v12 == 0x7FFFFFFFLL) : (v20 = 1), v20 ? (v21 = 0) : (v21 = 1), (v18 & 0xFFFF00000000) == 0x7FFF00000000 ? (v22 = v18 == 0x7FFFFFFFLL) : (v22 = 1), v22 ? (v23 = 0) : (v23 = 1), v21 == v23))
  {
    v27 = v12 == 0x7FFFFFFFLL && (v12 & 0xFFFF00000000) != 0x7FFF00000000;
    v29 = v18 != 0x7FFFFFFFLL || (v18 & 0xFFFF00000000) == 0x7FFF00000000;
    topLeft = 0x7FFF7FFFFFFFLL;
    if (v27 != v29)
    {
      v31._topLeft = v12;
      v31._bottomRight = v18;
      v30._flags = (v12 >> 47) & 2 | HIBYTE(v12) | (v18 >> 54) & 4 | (v18 >> 45) & 8;
      TSCERangeCoordinate::fixInversions(&v31, &v30);
      v31._topLeft._preserveColumn = v30._flags & 1;
      v31._topLeft._preserveRow = (v30._flags & 2) != 0;
      v31._bottomRight._preserveColumn = (v30._flags & 4) != 0;
      v31._bottomRight._preserveRow = (v30._flags & 8) != 0;
      topLeft = v31._topLeft;
    }
  }

  else
  {
LABEL_19:
    topLeft = 0x7FFF7FFFFFFFLL;
  }

  return topLeft;
}

TSUCellCoord TSCERangeCoordinate::slideRangeTo(TSCERangeCoordinate *this, TSCERelativeCellCoordinate **a2, const TSUCellCoord *a3, const TSUPreserveFlags *a4)
{
  v4 = a4;
  preserveColumn = this->_topLeft._preserveColumn;
  preserveRow = this->_topLeft._preserveRow;
  if (preserveRow)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 | preserveColumn;
  if (this->_bottomRight._preserveColumn)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  if (this->_bottomRight._preserveRow)
  {
    v13 = 8;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13 | v12;
  v36._flags = v13 | v12 | v11;
  v15 = *a2;
  topLeft = this->_topLeft;
  v35._flags = v10 | preserveColumn;
  v17 = &v35;
  RelativeCellCoordinateFromAbsoluteCoordinates = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(v15, topLeft, v17, a4);
  v19 = HIDWORD(RelativeCellCoordinateFromAbsoluteCoordinates);
  v20 = *a2;
  bottomRight = this->_bottomRight;
  v35._flags = v14 >> 2;
  v22 = &v35;
  v25 = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(v20, bottomRight, v22, v23);
  if (!v4)
  {
    goto LABEL_20;
  }

  if (!preserveColumn && (RelativeCellCoordinateFromAbsoluteCoordinates >> 16) >> 16 < 0)
  {
    column = a3->column;
    if (column + SWORD2(RelativeCellCoordinateFromAbsoluteCoordinates) < 0)
    {
      LODWORD(v19) = -column;
    }
  }

  if (!preserveRow && (RelativeCellCoordinateFromAbsoluteCoordinates & 0x80000000) != 0)
  {
    row = a3->row;
    if ((row + RelativeCellCoordinateFromAbsoluteCoordinates) < 0 != __OFADD__(row, RelativeCellCoordinateFromAbsoluteCoordinates))
    {
      v28 = -row;
    }

    else
    {
      v28 = RelativeCellCoordinateFromAbsoluteCoordinates;
    }
  }

  else
  {
LABEL_20:
    v28 = RelativeCellCoordinateFromAbsoluteCoordinates;
  }

  v29 = *a3;
  v35._flags = v11;
  v30 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v29, (RelativeCellCoordinateFromAbsoluteCoordinates & 0xFFFF000000000000 | (v19 << 32) | v28), &v35, v24);
  v31 = *a3;
  v35._flags = v14 >> 2;
  v33 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v31, v25, &v35, v32);
  v37._topLeft = v30;
  v37._bottomRight = v33;
  TSCERangeCoordinate::fixInversions(&v37, &v36);
  v37._topLeft._preserveColumn = v36._flags & 1;
  v37._topLeft._preserveRow = (v36._flags & 2) != 0;
  return v37._topLeft;
}

__CFString *sub_2212C62E0(unsigned int *a1, char *a2)
{
  v3 = *a1;
  if (v3 != 0x7FFFFFFF && (v3 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = *a2;
    v8 = TSUColumnLabel();
    v9 = *a2;
    v10 = TSURowLabel();
    v13 = v10;
    v14 = @"$";
    if ((v9 & 2) != 0)
    {
      v15 = @"$";
    }

    else
    {
      v15 = &stru_2834BADA0;
    }

    if ((v7 & 1) == 0)
    {
      v14 = &stru_2834BADA0;
    }

    v5 = objc_msgSend_stringWithFormat_(v6, v11, @"%@%@%@%@", v12, v14, v8, v15, v10);

    goto LABEL_25;
  }

  if ((v3 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
LABEL_7:
    v5 = @"#REF!";
    goto LABEL_26;
  }

  if (v3 == 0x7FFFFFFF)
  {
    v16 = MEMORY[0x277CCACA8];
    if (*a2)
    {
      v17 = @"$";
    }

    else
    {
      v17 = &stru_2834BADA0;
    }

    v8 = TSUColumnLabel();
    v20 = objc_msgSend_stringWithFormat_(v16, v18, @"%@%@", v19, v17, v8);
  }

  else
  {
    if (WORD2(v3) != 0x7FFF)
    {
      goto LABEL_7;
    }

    v21 = MEMORY[0x277CCACA8];
    if ((*a2 & 2) != 0)
    {
      v22 = @"$";
    }

    else
    {
      v22 = &stru_2834BADA0;
    }

    v8 = TSURowLabel();
    v20 = objc_msgSend_stringWithFormat_(v21, v23, @"%@%@", v24, v22, v8);
  }

  v5 = v20;
LABEL_25:

LABEL_26:

  return v5;
}

id sub_2212C64C4(unsigned int *a1, char *a2)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = sub_2212C62E0(a1, a2);
  v11 = (*a2 >> 2) & 3;
  v6 = sub_2212C62E0(a1 + 2, &v11);
  v9 = objc_msgSend_stringWithFormat_(v4, v7, @"%@:%@", v8, v5, v6);

  return v9;
}

void TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(TSCEReplaceFormulaOptions *this, TSCERemoteDataSpecifierSet *a2, BOOL a3)
{
  v5 = a2;
  this->var0 = a3;
  *&this->var1 = 0;
  this->var5 = 0;
  this->var7 = v5;
}

{
  v5 = a2;
  this->var0 = a3;
  *&this->var1 = 0;
  this->var5 = 0;
  this->var7 = v5;
}

void TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(TSCEReplaceFormulaOptions *this, uint64_t a2)
{
  this->var7 = 0;
  TSCEReplaceFormulaOptions::operator=(this, a2);
}

{
  this->var7 = 0;
  TSCEReplaceFormulaOptions::operator=(this, a2);
}

uint64_t TSCEReplaceFormulaOptions::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    *(a1 + 4) = *(a2 + 4);
    objc_storeStrong((a1 + 24), *(a2 + 24));
  }

  return a1;
}

id sub_2212C7204(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"rewriteType=%d", a4, a1);

  return v4;
}

uint64_t sub_2212C7250(uint64_t result)
{
  *result = 0x7FFF7FFFFFFFLL;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0x7FFF7FFFFFFFLL;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

__n128 sub_2212C726C(uint64_t a1, __int128 *a2, __n128 *a3)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  result = *a3;
  *(a1 + 40) = a3[1].n128_u64[0];
  *(a1 + 24) = result;
  *(a1 + 48) = 0;
  return result;
}

__n128 sub_2212C7294(uint64_t a1, __n128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  *a1 = v2;
  result = *a2;
  *(a1 + 40) = a2[1].n128_u64[0];
  *(a1 + 24) = result;
  *(a1 + 48) = 0;
  return result;
}

__n128 sub_2212C72BC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  result = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = result;
  *(a1 + 48) = *(a2 + 24);
  return result;
}

__n128 sub_2212C72E8(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v2 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v2;
    result = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = result;
    *(a1 + 48) = *(a2 + 24);
  }

  return result;
}

void *sub_2212C731C(void *result, void *a2, void *a3)
{
  *result = *a2;
  result[3] = *a3;
  return result;
}

void sub_2212C7B40(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_2212C7C9C(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_2212C7DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2212C7E00(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2212C7E24(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2212C7E3C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  *&v6 = objc_msgSend_uidForIndex_(*(a1 + 32), a2, a2, a4);
  *(&v6 + 1) = v5;
  if (v6 | v5)
  {
    sub_221083454(*(*(a1 + 40) + 8) + 48, &v6);
  }
}

void sub_2212C8488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2212C880C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_2212C8868(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  __p = 0;
  v18 = 0;
  v19 = 0;
  v7 = a2 + a3 - 1;
  if (v7 >= a2)
  {
    v8 = a2;
    do
    {
      v16 = 0uLL;
      *&v16 = objc_msgSend_uidForIndex_(*(*(a1 + 32) + 56), a2, v8, a4);
      *(&v16 + 1) = v9;
      sub_221083454(&__p, &v16);
      v8 = (v8 + 1);
    }

    while (v8 <= v7);
  }

  *(*(*(a1 + 48) + 8) + 24) += a3;
  v10 = *(*(*(a1 + 56) + 8) + 24);
  v11 = [TSCEFormulaRewriteInfo_RangeEntry alloc];
  v13 = objc_msgSend_initWithRange_orderedUuids_offset_(v11, v12, &a2[-v10], a3, &__p, *(*(*(a1 + 48) + 8) + 24));
  *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
  objc_msgSend_addObject_(*(a1 + 40), v14, v13, v15);

  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_2212C8974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2212C91A4(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_2212C93F0(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 120), 8);

  _Unwind_Resume(a1);
}

void sub_2212C94A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (v7)
  {
    objc_msgSend_orderedUuidsForRange_inTable_areRows_shuffleMap_(v7, a2, a2, a3, *(a1 + 40), v7[88], *(a1 + 48));
  }

  else
  {
    __p = 0;
    v17 = 0;
    v18 = 0;
  }

  *(*(*(a1 + 72) + 8) + 24) += a3;
  if ((*(a1 + 88) & 1) == 0)
  {
    v6 = &a2[-*(*(*(a1 + 80) + 8) + 24)];
  }

  v8 = [TSCEFormulaRewriteInfo_RangeEntry alloc];
  v10 = objc_msgSend_initWithRange_orderedUuids_offset_(v8, v9, v6, a3, &__p, *(*(*(a1 + 72) + 8) + 24));
  *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24);
  objc_msgSend_addObject_(*(a1 + 56), v11, v10, v12);
  if (a2)
  {
    v14 = a2 - 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = 1;
  if (a2)
  {
    v15 = 2;
  }

  objc_msgSend_addIndexesInRange_(*(a1 + 64), v13, v14, a3 + v15);

  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }
}

void sub_2212C95B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}