void sub_2210ED69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2210ED6B0(uint64_t *result, void **a2, void **a3, unint64_t a4)
{
  if (a4)
  {
    sub_2210BC26C(result, a4);
  }

  return result;
}

void sub_2210EDC88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, TSUIndexSet *a13)
{
  TSUIndexSet::~TSUIndexSet(&a9);
  TSUIndexSet::~TSUIndexSet(&a13);

  _Unwind_Resume(a1);
}

void sub_2210EDED4(_Unwind_Exception *a1, uint64_t a2, TSUIndexSet *a3, TSUIndexSet *a4, TSUIndexSet *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  TSUIndexSet::~TSUIndexSet(&a15);
  TSUIndexSet::~TSUIndexSet(&a19);

  _Unwind_Resume(a1);
}

void sub_2210EE55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *__p, void *a14, void *a15, void *a16, TSUIndexSet *a17, TSUIndexSet *a18, uint64_t a19, uint64_t a20, void *__pa, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  TSUIndexSet::~TSUIndexSet(&a25);
  TSUIndexSet::~TSUIndexSet(&a29);

  v34 = *(v32 - 176);
  if (v34)
  {
    *(v32 - 168) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 152);
  if (v35)
  {
    *(v32 - 144) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2210EE8F8(TSUIndexSet *this)
{
  if (LOBYTE(this[2]._singleRange._end) == 1)
  {
    return TSUIndexSet::count(this + 1) != 0;
  }

  result = TSUIndexSet::count(this);
  if (!result)
  {
    return result;
  }

  return LOBYTE(this[2]._singleRange._end) == 2 || TSUIndexSet::count(this + 1) != 0;
}

void sub_2210EEE88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void sub_2210EEFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  _Block_object_dispose((v16 - 48), 8);

  _Unwind_Resume(a1);
}

void sub_2210EF00C(uint64_t a1, TSUCellCoord *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = __C(v3, v4);
  v7 = v6;
  v10 = objc_msgSend_tableUID(*(a1 + 32), v6, v8, v9);
  v19.range._topLeft = v5;
  v19.range._bottomRight = v7;
  v19._tableUID._lower = v10;
  v19._tableUID._upper = v11;
  objc_msgSend_setPreserveFlagsOnSubrange_(*(a1 + 32), v11, &v19, v12);
  v13 = *(a1 + 40);
  v14 = *(*(*(a1 + 48) + 8) + 24);
  v15 = TSCERangeRef::description(&v19);
  v18 = v15;
  if (v14 == 1)
  {
    objc_msgSend_appendFormat_(v13, v16, @" | %@", v17, v15);
  }

  else
  {
    objc_msgSend_appendString_(v13, v16, v15, v17);
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void sub_2210EF2D8(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4)
{
  v6.i64[0] = 0xFFFFFFFFLL;
  v6.i64[1] = 0xFFFFFFFFLL;
  v10 = vorrq_s8(vandq_s8(*a2, v6), vdupq_n_s64(0x7FFF00000000uLL));
  v7 = objc_msgSend_tableUID(*(a1 + 32), a2->i8, a3, a4);
  v8 = *(a1 + 40);
  v11 = 2;
  v12 = v10;
  v13 = v7;
  v14 = v9;
  v15 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  (*(v8 + 16))(v8, &v11, a3);
}

void sub_2210EF384(uint64_t a1, int64x2_t *a2, uint64_t a3, uint64_t a4)
{
  v6.i64[0] = 0xFFFF00000000;
  v6.i64[1] = 0xFFFF00000000;
  v10 = vorrq_s8(vandq_s8(vshlq_n_s64(*a2, 0x20uLL), v6), vdupq_n_s64(0x7FFFFFFFuLL));
  v7 = objc_msgSend_tableUID(*(a1 + 32), a2->i8, a3, a4);
  v8 = *(a1 + 40);
  v11 = 2;
  v12 = v10;
  v13 = v7;
  v14 = v9;
  v15 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  (*(v8 + 16))(v8, &v11, a3);
}

void sub_2210EF434(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_columns(*(a1 + 32), a2, a3, a4);
  v5 = *(a1 + 40);
  TSUIndexSet::enumerateRangesUsingBlock();
}

void sub_2210EF4F4(uint64_t a1, int64x2_t *a2, uint64_t a3, uint64_t a4)
{
  v6.i64[0] = 0xFFFF00000000;
  v6.i64[1] = 0xFFFF00000000;
  v7 = vandq_s8(vshlq_n_s64(*a2, 0x20uLL), v6);
  v6.i64[0] = 0xFFFFFFFFLL;
  v6.i64[1] = 0xFFFFFFFFLL;
  v20 = vorrq_s8(v7, vandq_s8(**(a1 + 48), v6));
  v8 = objc_msgSend_tableUID(*(a1 + 32), a2->i8, a3, a4);
  v29.range = v20;
  v29._tableUID._lower = v8;
  v29._tableUID._upper = v9;
  objc_msgSend_setPreserveFlagsOnSubrange_(*(a1 + 32), v9, &v29, v10);
  topLeft = v29.range._topLeft;
  if (v29.range._topLeft.row == v29.range._bottomRight.row && ((*&v29.range._bottomRight ^ *&v29.range._topLeft) & 0x101FFFF00000000) == 0)
  {
    v17 = objc_msgSend_tableUID(*(a1 + 32), v11, v12, v13);
    v28.coordinate = topLeft;
    v28._tableUID._lower = v17;
    v28._tableUID._upper = v18;
    v19 = *(a1 + 40);
    v21 = 0;
    TSCERangeRef::TSCERangeRef(&v22, &v28);
    v23 = 0;
    v27 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    (*(v19 + 16))(v19, &v21, a3);
  }

  else
  {
    v16 = *(a1 + 40);
    v21 = 1;
    v22 = v29;
    v23 = 0;
    v27 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    (*(v16 + 16))();
  }
}

uint64_t sub_2210EF6F0(uint64_t a1, TSUCellCoord *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = __C(v3, v4);
  v7 = v6;
  v10 = objc_msgSend_tableUID(*(a1 + 32), v6, v8, v9);
  v14[0] = v5;
  v14[1] = v7;
  v14[2] = v10;
  v14[3] = v11;
  objc_msgSend_setPreserveFlagsOnSubrange_(*(a1 + 32), v11, v14, v12);
  return (*(*(a1 + 40) + 16))();
}

void sub_2210EFB2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void sub_2210EFF30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  v31 = *(v29 - 112);
  if (v31)
  {
    *(v29 - 104) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2210F02DC(uint64_t a1, _NSRange a2)
{
  TSUIndexRange::TSUIndexRange(&v7, a2);
  v5 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    return objc_msgSend_addRowRange_(v5, v3, &v7, v4);
  }

  else
  {
    return objc_msgSend_addColumnRange_(v5, v3, &v7, v4);
  }
}

uint64_t sub_2210F0444(uint64_t a1, _NSRange a2)
{
  TSUIndexRange::TSUIndexRange(&v7, a2);
  v5 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    return objc_msgSend_addRowRange_(v5, v3, &v7, v4);
  }

  else
  {
    return objc_msgSend_addColumnRange_(v5, v3, &v7, v4);
  }
}

TSCECellTractRef *sub_2210F05E8(void *a1)
{
  v84 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_new();
  v68 = v2;
  v4 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v1, v3, @" ", &stru_2834BADA0);

  v67 = v4;
  objc_msgSend_componentsSeparatedByString_(v4, v5, @"|", v6);
  __p = 0;
  v81 = 0;
  v82 = 0;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v79 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v76, v83, 16);
  v10 = 0;
  v11 = 0;
  if (!v8)
  {
    v73 = 0x7FFF;
    LOWORD(v14) = 0x7FFF;
    v13 = 0x7FFFFFFF;
    v12 = 0x7FFFFFFF;
    goto LABEL_52;
  }

  v71 = *v77;
  v12 = 0x7FFFFFFF;
  v13 = 0x7FFFFFFF;
  v14 = 0x7FFF;
  v73 = 0x7FFF;
  do
  {
    v70 = v8;
    v72 = v14;
    v15 = v11;
    for (i = 0; i != v70; ++i)
    {
      if (*v77 != v71)
      {
        objc_enumerationMutation(obj);
      }

      v17 = TSCERangeCoordinate::rangeCoordFromString(*(*(&v76 + 1) + 8 * i), 0x3E8, 1000000, v9);
      v19 = v18;
      v75.origin = 0;
      v75.size = 0;
      TSUCellRectFromTSCERangeCoordinate();
      v75.origin = v20;
      v75.size = v21;
      v22 = v81;
      if (v81 >= v82)
      {
        v24 = (v81 - __p) >> 4;
        v25 = v24 + 1;
        if ((v24 + 1) >> 60)
        {
          sub_22107C148();
        }

        v26 = v82 - __p;
        if ((v82 - __p) >> 3 > v25)
        {
          v25 = v26 >> 3;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFF0)
        {
          v27 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          sub_221086F74(&__p, v27);
        }

        v28 = 16 * v24;
        *v28 = v17;
        *(v28 + 8) = v19;
        v23 = 16 * v24 + 16;
        v29 = (16 * v24 - (v81 - __p));
        memcpy((v28 - (v81 - __p)), __p, v81 - __p);
        v30 = __p;
        __p = v29;
        v81 = v23;
        v82 = 0;
        if (v30)
        {
          operator delete(v30);
        }

        v2 = v68;
      }

      else
      {
        *v81 = v17.row;
        *(v22 + 2) = v17.column;
        *(v22 + 3) = *&v17._preserveRow;
        *(v22 + 1) = v19;
        v23 = (v22 + 16);
      }

      v81 = v23;
      if (!TSUCellRect::isValidOrSpanning(&v75))
      {

        v2 = 0;
        goto LABEL_66;
      }

      if (TSUCellRect::spansAllColumns(&v75))
      {
        v10 = 1;
        objc_msgSend_setSpansAllColumns_(v2, v31, 1, v32);
      }

      else
      {
        v33 = TSUCellRect::columns(&v75);
        v35 = v34;
        v86.location = v33;
        v86.length = v35;
        TSUIndexRange::TSUIndexRange(&v74, v86);
        objc_msgSend_addColumnRange_(v2, v36, &v74, v37);
        if (v73 >= v17.column)
        {
          column = v17.column;
        }

        else
        {
          column = v73;
        }

        if (v73 == 0x7FFF)
        {
          column = v17.column;
        }

        v73 = column;
        v39 = WORD2(v19);
        if (WORD2(v19) <= v72)
        {
          v39 = v72;
        }

        if (v72 == 0x7FFF)
        {
          v40 = HIDWORD(v19);
        }

        else
        {
          v40 = v39;
        }

        v72 = v40;
      }

      if (TSUCellRect::spansAllRows(&v75))
      {
        v15 = 1;
        objc_msgSend_setSpansAllRows_(v2, v41, 1, v42);
      }

      else
      {
        v44 = TSUCellRect::rows(&v75);
        v46 = v45;
        v87.location = v44;
        v87.length = v46;
        TSUIndexRange::TSUIndexRange(&v74, v87);
        objc_msgSend_addRowRange_(v2, v47, &v74, v48);
        if (v13 >= v17.row)
        {
          row = v17.row;
        }

        else
        {
          row = v13;
        }

        if (v13 == 0x7FFFFFFF)
        {
          v13 = v17.row;
        }

        else
        {
          v13 = row;
        }

        if (v19 <= v12)
        {
          v50 = v12;
        }

        else
        {
          v50 = v19;
        }

        if (v12 == 0x7FFFFFFF)
        {
          v12 = v19;
        }

        else
        {
          v12 = v50;
        }
      }
    }

    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v43, &v76, v83, 16);
    v11 = v15;
    v14 = v72;
  }

  while (v8);
LABEL_52:

  if (v2)
  {
    isRectangularRange = objc_msgSend_isRectangularRange(v2, v51, v52, v53);
    objc_msgSend_setPreserveRectangular_(v2, v55, isRectangularRange, v56);
    v59 = __p;
    if ((v10 | v11))
    {
      LOBYTE(v60) = 0;
      LOBYTE(v61) = 0;
      v62 = 0;
      goto LABEL_73;
    }

    v63 = v81;
    if (__p == v81)
    {
      LOBYTE(v60) = 0;
      LOBYTE(v61) = 0;
      v62 = 0;
    }

    else
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
      do
      {
        if (v59->_topLeft.column == v73 && v59->_topLeft.row == v13)
        {
          v62 = v62 & 0xC | TSCERangeCoordinate::preserveFlags(v59) & 3;
          v60 = 1;
        }

        if (v59->_bottomRight.column == v14 && v59->_bottomRight.row == v12)
        {
          v61 = 1;
          v62 = TSCERangeCoordinate::preserveFlags(v59) & 0xC | v62 & 3;
        }

        ++v59;
      }

      while (v59 != v63);
      if (v60 & v61)
      {
LABEL_65:
        v64 = v62;
        v2 = v68;
        objc_msgSend_setPreserveFlags_(v68, v57, v64, v58);
        goto LABEL_66;
      }
    }

    v59 = __p;
LABEL_73:
    v66 = v81;
    while (1)
    {
      if (v59 == v66)
      {
        goto LABEL_65;
      }

      if ((v60 & 1) == 0)
      {
        if (!((v59->_topLeft.column != v73) | v10 & 1))
        {
          v62 = v62 & 0xFFFFFFFE | TSCERangeCoordinate::preserveFlags(v59) & 1;
          if (v61)
          {
            goto LABEL_86;
          }

          goto LABEL_80;
        }

        if (!((v59->_topLeft.row != v13) | v11 & 1))
        {
          v62 = v62 & 0xFFFFFFFD | (2 * ((TSCERangeCoordinate::preserveFlags(v59) >> 1) & 1));
        }
      }

      if (v61)
      {
        goto LABEL_86;
      }

LABEL_80:
      if ((v59->_bottomRight.column != v14) | v10 & 1)
      {
        if (!((v59->_bottomRight.row != v12) | v11 & 1))
        {
          v62 = v62 & 0xFFFFFFF7 | (8 * ((TSCERangeCoordinate::preserveFlags(v59) >> 3) & 1));
        }
      }

      else
      {
        v62 = v62 & 0xFFFFFFFB | (4 * ((TSCERangeCoordinate::preserveFlags(v59) >> 2) & 1));
      }

LABEL_86:
      ++v59;
    }
  }

LABEL_66:
  if (__p)
  {
    v81 = __p;
    operator delete(__p);
  }

  return v2;
}

void sub_2210F0BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2210F0C3C(uint64_t a1)
{
  TSUIndexSet::TSUIndexSet(a1);
  TSUIndexSet::TSUIndexSet(v2 + 1);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 77) = 0;
  return a1;
}

char *sub_2210F0C88(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 4)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 4);
    if (v12 >> 60)
    {
      sub_22107C148();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    if (v15)
    {
      sub_221086F74(a1, v15);
    }

    v33 = 16 * v16;
    v34 = 16 * a5;
    v35 = (16 * v16);
    do
    {
      v36 = *v7;
      v7 += 16;
      *v35++ = v36;
      v34 -= 16;
    }

    while (v34);
    memcpy((v33 + 16 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 16 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (16 * v16);
  }

  v17 = (v10 - __dst) >> 4;
  if (v17 >= a5)
  {
    v22 = &__dst[16 * a5];
    v23 = &v10[-16 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 16;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[16 * a5], __dst, v10 - v22);
    }

    v30 = 16 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 16;
    *v20 = v21;
    v20 += 16;
    v19 += 16;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[16 * a5];
    v27 = &v19[-16 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 16;
      *v28 = v29;
      v28 += 16;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[16 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

uint64_t sub_2210F0E88(uint64_t a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4)
{
  v7 = a4;
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *a1 = &unk_2834A1BE8;
  *(a1 + 200) = v7;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 1065353216;
  return a1;
}

uint64_t sub_2210F0F24(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_transposedInfo(*(a1 + 200), a2, a3, a4);
  v8 = objc_msgSend_transposedBodyRange(v4, v5, v6, v7);

  return v8;
}

uint64_t sub_2210F0F80(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_transposedInfo(*(a1 + 200), a2, a3, a4);
  v8 = objc_msgSend_numberOfFooterRows(v4, v5, v6, v7);

  return v8;
}

uint64_t sub_2210F0FCC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2 | *(a2 + 1);
  if (*a2 != 0)
  {
    v11 = *a2 == objc_msgSend_tableUID(*(a1 + 200), a2, a3, a4) && *(a2 + 1) == v7;
    v12 = objc_msgSend_conditionalStyleOwnerUID(*(a1 + 200), v7, v8, v9);
    LOBYTE(v4) = (v12 | v13) != 0 || v11;
    if (v12 | v13 && !v11)
    {
      LOBYTE(v4) = *a2 == objc_msgSend_conditionalStyleOwnerUID(*(a1 + 200), v13, v14, v15) && *(a2 + 1) == v16;
    }
  }

  return v4 & 1;
}

uint64_t sub_2210F106C(TSCEFormulaRewriteContext **a1, TSCEASTElementWithChildren *a2, _BYTE *a3)
{
  *a3 = 0;
  if (a2 && TSCEASTElement::tag(a2, a1) == 26 && (v6 = (*(*a2 + 48))(a2, a1)) != 0 && (*a3 & 1) == 0)
  {
    v9 = v6;
    v7 = 0;
    v10 = 0;
    while (1)
    {
      v11 = TSCEASTElementWithChildren::child(a2, v10);
      v12 = sub_2210F115C(a1, v11);
      if (v10)
      {
        if ((v7 ^ v12))
        {
          break;
        }
      }

      v7 |= v12;
      if ((*a3 & 1) == 0 && ++v10 < v9)
      {
        continue;
      }

      return v7 & 1;
    }

    *a3 = 1;
    LOBYTE(v7) = v7 | v12;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

uint64_t sub_2210F115C(TSCEFormulaRewriteContext **a1, TSCEASTColonTractElement *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  while (1)
  {
    v4 = TSCEASTElement::tag(v2, a1);
    v7 = 0;
    if (v4 <= 32)
    {
      break;
    }

    if (v4 > 44)
    {
      if ((v4 - 69) >= 2 && v4 != 45)
      {
        if (v4 == 67)
        {
          v18 = TSCEASTColonTractElement::relativeTractRef(v2, a1, v5, v6);
          if (objc_msgSend_hasTableUID(v18, v19, v20, v21, 0, 0))
          {
            tableUID._lower = objc_msgSend_tableUID(v18, v22, v23, v24);
          }

          else
          {
            v29 = TSCEFormulaRewriteContext::containingCell(a1[1]);
            upper = v29->var0.var0._tableUID._upper;
            tableUID._lower = v29->var0.var0._tableUID._lower;
          }

          tableUID._upper = upper;
          v7 = sub_2210F0FCC(a1, &tableUID, v26, v27);
        }

        return v7;
      }

      goto LABEL_18;
    }

    if ((v4 - 33) >= 2)
    {
      if (v4 == 36)
      {
        if (TSCEASTElement::refFlags(v2, a1))
        {
          tableUID._lower = TSCEASTRelativeCoordRefElement::tableUID(v2, a1, v14, v15);
          tableUID._upper = v28;
        }

        else
        {
          tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
        }

        return sub_2210F0FCC(a1, &tableUID, v16, v17);
      }

      return v7;
    }

LABEL_15:
    if (!(*(*v2 + 56))(v2))
    {
      return 0;
    }

    v10 = TSCEASTFunctionElement::functionIndex(v2, a1, v8, v9);
    if ((v10 - 342) > 0x1C)
    {
      goto LABEL_23;
    }

    v11 = 1 << (v10 - 86);
    if ((v11 & 0x18019FCF) != 0)
    {
      goto LABEL_18;
    }

    if ((v11 & 0x6000) != 0)
    {
      if ((*(*v2 + 56))(v2) != 1)
      {
        return 0;
      }
    }

    else
    {
LABEL_23:
      if (v10 != 220)
      {
        return 0;
      }
    }

LABEL_18:
    v2 = TSCEASTElementWithChildren::child(v2, 0);
    if (!v2)
    {
      return 0;
    }
  }

  if (v4 > 27)
  {
    if ((v4 - 31) >= 2 && v4 != 28)
    {
      return v7;
    }

    goto LABEL_18;
  }

  if ((v4 - 16) < 2)
  {
    goto LABEL_15;
  }

  if (v4 == 26)
  {
    LOBYTE(tableUID._lower) = 0;
    v13 = sub_2210F106C(a1, v2, &tableUID);
    return v13 & (LOBYTE(tableUID._lower) ^ 1u);
  }

  return v7;
}

uint64_t sub_2210F13C0(TSCEASTRewriter *a1, TSCEASTElementWithChildren *this, unsigned int a3)
{
  v4 = TSCEASTElementWithChildren::child(this, a3);
  result = TSCEASTElement::tag(v4, a1);
  if (result > 0x22)
  {
    goto LABEL_8;
  }

  if (((1 << result) & 0x1FC0000) != 0)
  {
    return result;
  }

  if (((1 << result) & 0x600030000) == 0 || TSCEASTFunctionElement::functionIndex(v4, a1, v6, v7) != 220)
  {
LABEL_8:
    TSCEASTRewriter::createFunction(a1, 0xDC, v4, v7, v8, v9, v10, v11, 0);
  }

  return TSCEASTRewriter::removeFunctionNode(a1, v4, v12, v7);
}

uint64_t sub_2210F14CC(TSCEASTIteratorBase *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 15);
  if (v10 == *(a1 + 14) || (v11 = *(v10 - 8)) == 0 || ((v12 = TSCEASTElement::tag(*(v10 - 8), a1), v12 <= 0x22) ? (v14 = ((1 << v12) & 0x600030000) == 0) : (v14 = 1), v14 || TSCEASTFunctionElement::functionIndex(v11, a1, v13, a4) != 220))
  {
    TSCEASTRewriter::createFunction(a1, 0xDC, a2, a4, a5, a6, a7, a8, 0);
  }

  TSCEASTRewriter::removeFunctionNode(a1, v11, v15, a4);
  return a2;
}

TSCEASTFunctionElement *sub_2210F157C(TSCEFormulaRewriteContext **a1, TSCEASTFunctionElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTFunctionElement::functionIndex(this, a1, a3, a4);
  v7 = v6;
  if (v6 <= 233)
  {
    if (v6 > 128)
    {
      if (v6 <= 164)
      {
        if (v6 == 129)
        {
LABEL_50:
          if (!(*(*this + 48))(this, a1))
          {
            tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
            if ((sub_2210F0FCC(a1, &tableUID, v186, v187) & 1) == 0)
            {
              return this;
            }

            goto LABEL_186;
          }

          v43 = TSCEASTElementWithChildren::child(this, 0);
          if (TSCEASTElement::tag(v43, a1) - 23 < 2)
          {
            tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
            if (!sub_2210F0FCC(a1, &tableUID, v44, v45))
            {
              return this;
            }

            goto LABEL_186;
          }

          if (sub_2210F115C(a1, v43))
          {
LABEL_186:
            v47 = v7 == 129;
            v48 = 129;
            v49 = 22;
            goto LABEL_187;
          }

          return this;
        }

        if (v6 != 130)
        {
          if (v6 == 145)
          {
LABEL_120:
            if ((*(*this + 48))(this, a1) == 3)
            {
              v113 = TSCEASTElementWithChildren::child(this, 0);
              v114 = sub_2210F115C(a1, v113);
              v115 = TSCEASTElementWithChildren::child(this, 2u);
              if (v114 != sub_2210F115C(a1, v115))
              {
                if (v114)
                {
                  v116 = 0;
                }

                else
                {
                  v116 = 2;
                }

                v117 = a1;
                v118 = this;
LABEL_177:
                sub_2210F13C0(v117, v118, v116);
              }
            }
          }

          return this;
        }

        goto LABEL_57;
      }

      if ((v6 - 231) >= 3)
      {
        if (v6 != 165)
        {
          if (v6 == 220 && TSCEASTRewriter::clearRemovalOfFunctionNode(a1, this))
          {
            v111 = TSCEASTElementWithChildren::child(this, 0);
            *(this + 4) = *(this + 3);
            ((*a1)->var2.var0.var0._tableUID._lower)(a1, this);
            return v111;
          }

          return this;
        }

LABEL_117:
        v112 = TSCEASTElementWithChildren::child(this, 1u);
        if (!sub_2210F115C(a1, v112))
        {
          return this;
        }

        v47 = v7 == 165;
        v48 = 165;
        v49 = 59;
        goto LABEL_187;
      }

      v18 = (*(*this + 48))(this, a1);
      if (v18)
      {
        v22 = v18;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        do
        {
          v26 = TSCEASTElementWithChildren::child(this, v25);
          if (sub_2210F115C(a1, v26))
          {
            if (!v23)
            {
              v23 = objc_opt_new();
            }

            objc_msgSend_addIndex_(v23, v19, v25, v21);
          }

          if (v25)
          {
            v27 = 1;
          }

          else
          {
            v27 = v7 == 233;
          }

          if (v27)
          {
            v28 = 2;
          }

          else
          {
            v28 = 1;
          }

          v25 += v28;
          ++v24;
        }

        while (v25 < v22);
      }

      else
      {
        v24 = 0;
        v23 = 0;
      }

      if (objc_msgSend_count(v23, v19, v20, v21) && objc_msgSend_count(v23, v181, v182, v183) != v24)
      {
        v230[0] = MEMORY[0x277D85DD0];
        v230[1] = 3221225472;
        v230[2] = sub_2210F299C;
        v230[3] = &unk_27845EB70;
        v230[4] = a1;
        v230[5] = this;
        objc_msgSend_enumerateIndexesUsingBlock_(v23, v184, v230, v185);
      }
    }

    else
    {
      if (v6 <= 62)
      {
        if (v6 <= 22)
        {
          if (v6 != 6)
          {
            if (v6 != 22)
            {
              return this;
            }

            goto LABEL_50;
          }

LABEL_20:
          v17 = *(a1 + 52);
          if (v17 <= 1)
          {
            v17 = 1;
          }

          *(a1 + 52) = v17;
          return this;
        }

        if (v6 != 23)
        {
          if (v6 != 59)
          {
            return this;
          }

          goto LABEL_117;
        }

LABEL_57:
        v46 = TSCEASTElementWithChildren::child(this, 0);
        if (!sub_2210F115C(a1, v46))
        {
          return this;
        }

        v47 = v7 == 130;
        v48 = 130;
        v49 = 23;
LABEL_187:
        if (v47)
        {
          v79 = v49;
        }

        else
        {
          v79 = v48;
        }

LABEL_195:
        TSCEASTFunctionElement::setFunctionIndex(this, v79, a1, v12);
        return this;
      }

      if (v6 <= 80)
      {
        if (v6 == 63)
        {
          LOBYTE(v231._topLeft.row) = 0;
          v119 = TSCEASTElementWithChildren::child(this, 0);
          if (!sub_2210F115C(a1, v119))
          {
            v188 = TSCEASTElementWithChildren::child(this, 0);
            if (sub_2210F106C(a1, v188, &v231) && LOBYTE(v231._topLeft.row) == 1)
            {
              tableUID._decimal.w[0] = TSCEASTElementWithChildren::child(this, 0);
              sub_2210F3BE4(a1 + 27, &tableUID, &tableUID);
            }

            return this;
          }

          if ((*(*this + 48))(this, a1) >= 2)
          {
            v40 = TSCEASTElementWithChildren::child(this, 1u);
            v120 = TSCEASTElementWithChildren::child(this, 2u);
            if (!v120)
            {
              TSUDecimal::operator=();
              TSCEASTIteratorBase::createNumber(a1, &tableUID, v121, v122);
            }

            v42 = this;
            v41 = v120;
LABEL_216:
            TSCEASTElementWithChildren::setChildAtIndex(v42, v41, 1, a1);
LABEL_217:
            v60 = this;
            v61 = v40;
            v62 = 2;
            goto LABEL_243;
          }

          return this;
        }

        if (v6 != 64)
        {
          return this;
        }

        goto LABEL_20;
      }

      if (v6 != 81)
      {
        if (v6 != 101)
        {
          return this;
        }

        v50 = TSCEASTElementWithChildren::child(this, 0);
        v51 = sub_2210F115C(a1, v50);
        v52 = (*(*this + 48))(this, a1);
        if (!v51)
        {
          return this;
        }

        v53 = v52;
        if (v52 < 3)
        {
          return this;
        }

        v54 = TSCEASTElementWithChildren::child(this, 1u);
        v55 = TSCEASTElementWithChildren::child(this, 2u);
        TSCEASTElementWithChildren::setChildAtIndex(this, v55, 1, a1);
        TSCEASTElementWithChildren::setChildAtIndex(this, v54, 2, a1);
        if (v53 < 4)
        {
          return this;
        }

        v56 = TSCEASTElementWithChildren::child(this, 3u);
        v57 = TSCEASTElementWithChildren::child(this, 4u);
        if (!v57)
        {
          TSUDecimal::operator=();
          TSCEASTIteratorBase::createNumber(a1, &tableUID, v58, v59);
        }

        TSCEASTElementWithChildren::setChildAtIndex(this, v57, 3, a1);
        v60 = this;
        v61 = v56;
        v62 = 4;
        goto LABEL_243;
      }

      v123 = TSCEASTElementWithChildren::child(this, 1u);
      if (!sub_2210F115C(a1, v123))
      {
        return this;
      }

      v124 = TSCEASTElementWithChildren::child(this, 1u);
      v125 = (*(*v124 + 40))(v124, a1);
      v126 = TSCEASTElement::tag(v125, a1);
      if (v126 == 28)
      {
LABEL_134:
        v234._flags = 0;
        v231._topLeft = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
        TSCEASTColonElement::rangeReference(&tableUID, v125, a1, &v234, &v231._topLeft);
        v231 = tableUID;
        if (TSCERangeCoordinate::isValid(&v231))
        {
          if (!sub_2210F0FCC(a1, v233, v129, v130))
          {
            return this;
          }

          v131 = v231._bottomRight.column == 0x7FFF || v231._topLeft.column == 0x7FFF;
          v132 = v131 ? 0 : v231._bottomRight.column - v231._topLeft.column + 1;
          v133 = v231._bottomRight.row == 0x7FFFFFFF || v231._topLeft.row == 0x7FFFFFFF;
          v134 = v133 ? 0 : v231._bottomRight.row - v231._topLeft.row + 1;
          if (v132 != v134)
          {
            return this;
          }
        }

        goto LABEL_20;
      }

      if (v126 != 67)
      {
        if (v126 != 45)
        {
          goto LABEL_20;
        }

        goto LABEL_134;
      }

      v23 = TSCEASTColonTractElement::relativeTractRef(v125, a1, v127, v128);
      tableUID._decimal.w[0] = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
      v198 = objc_msgSend_absoluteCellTractRefForHostCell_(v23, v196, &tableUID, v197);
      tableUID._decimal.w[0] = 0;
      tableUID._decimal.w[1] = 0;
      if (objc_msgSend_hasTableUID(v23, v199, v200, v201))
      {
        tableUID._decimal.w[0] = objc_msgSend_tableUID(v23, v202, v203, v204);
      }

      else
      {
        v218 = TSCEFormulaRewriteContext::containingCell(a1[1]);
        upper = v218->var0.var0._tableUID._upper;
        tableUID._decimal.w[0] = v218->var0.var0._tableUID._lower;
      }

      tableUID._decimal.w[1] = upper;
      if (objc_msgSend_spansAllRows(v198, upper, v206, v207))
      {
        v222 = 1;
      }

      else
      {
        v222 = objc_msgSend_spansAllColumns(v198, v219, v220, v221);
      }

      if (sub_2210F0FCC(a1, &tableUID, v220, v221))
      {
        if ((v222 & 1) != 0 || (v226 = objc_msgSend_numColumns(v198, v223, v224, v225), v226 == objc_msgSend_numRows(v198, v227, v228, v229)))
        {

          goto LABEL_20;
        }
      }
    }

    return this;
  }

  switch(v6)
  {
    case 337:
      v180 = TSCEASTElementWithChildren::child(this, 0);
      *(v180 + 16) |= 2u;
      return this;
    case 338:
    case 347:
    case 365:
      goto LABEL_3;
    case 339:
    case 340:
    case 341:
    case 342:
    case 362:
    case 363:
    case 364:
    case 367:
    case 371:
      return this;
    case 343:
      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      v143 = sub_2210F0FCC(a1, &tableUID, v158, v159);
      v160 = TSCEASTElementWithChildren::child(this, 0);
      v145 = sub_2210F115C(a1, v160);
      if (!v143 || !v145)
      {
        goto LABEL_165;
      }

      v161 = (*(*this + 48))(this, a1);
      if (v161 >= 4)
      {
        v163 = TSCEASTElementWithChildren::child(this, 3u);
        v164 = TSCEASTElement::tag(v163, a1);
        if (v164 == 19)
        {
          v171 = TSCEASTBooleanElement::value(v163, a1, v165, v166);
          TSCEASTBooleanElement::setValue(v163, !v171, a1, v172);
          v60 = this;
          v61 = v163;
          v62 = 3;
LABEL_243:
          TSCEASTElementWithChildren::setChildAtIndex(v60, v61, v62, a1);
          return this;
        }

        if ((v164 - 23) > 1)
        {
          TSCEASTRewriter::createFunction(a1, 0x60, v163, v166, v167, v168, v169, v170, 0);
        }

LABEL_242:
        TSCEASTIteratorBase::createBool(a1, 1, v165, v166);
      }

      v195 = v161;
      if (!v161)
      {
        return this;
      }

      if (v161 == 1)
      {
        TSCEASTFunctionElement::setNumArgs(this, 4, a1, v162);
        goto LABEL_211;
      }

      v215 = TSCEASTElementWithChildren::child(this, 1u);
      if (v195 == 3)
      {
        v216 = TSCEASTElementWithChildren::child(this, 2u);
        TSCEASTFunctionElement::setNumArgs(this, 4, a1, v217);
        if (!v215)
        {
          TSCEASTIteratorBase::createTagOnlyOp(a1, 0x17, v165, v166);
        }

        if (v216)
        {
          goto LABEL_242;
        }
      }

      else
      {
        TSCEASTFunctionElement::setNumArgs(this, 4, a1, v214);
        if (!v215)
        {
LABEL_211:
          TSCEASTIteratorBase::createTagOnlyOp(a1, 0x17, v165, v166);
        }
      }

      TSCEASTIteratorBase::createTagOnlyOp(a1, 0x17, v165, v166);
    case 344:
      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      v175 = sub_2210F0FCC(a1, &tableUID, v173, v174);
      v176 = (*(*this + 48))(this, a1);
      if (v176)
      {
        v177 = v176;
        for (i = 0; i != v177; ++i)
        {
          if ((((i != 0) ^ i) & 1) == 0)
          {
            v179 = TSCEASTElementWithChildren::child(this, i);
            if (v175 != sub_2210F115C(a1, v179))
            {
              sub_2210F13C0(a1, this, i);
            }
          }
        }
      }

      return this;
    case 345:
      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      v143 = sub_2210F0FCC(a1, &tableUID, v141, v142);
      v144 = TSCEASTElementWithChildren::child(this, 0);
      v145 = sub_2210F115C(a1, v144);
      if (v143 && v145)
      {
        v146 = (*(*this + 48))(this, a1);
        if (v146 >= 2)
        {
          v139 = TSCEASTElementWithChildren::child(this, 1u);
          v149 = TSCEASTElement::tag(v139, a1);
          if (v149 != 19)
          {
            if ((v149 - 23) <= 1)
            {
              TSCEASTIteratorBase::createBool(a1, 1, v150, v151);
            }

            TSCEASTRewriter::createFunction(a1, 0x60, v139, v151, v152, v153, v154, v155, 0);
          }

          v156 = TSCEASTBooleanElement::value(v139, a1, v150, v151);
          TSCEASTBooleanElement::setValue(v139, !v156, a1, v157);
          goto LABEL_207;
        }

        if (v146 == 1)
        {
          TSCEASTIteratorBase::createBool(a1, 1, v147, v148);
        }
      }

      else
      {
LABEL_165:
        if ((v145 | v143))
        {
          goto LABEL_176;
        }
      }

      return this;
    case 346:
      v136 = (*(*this + 48))(this, a1);
      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      if (!sub_2210F0FCC(a1, &tableUID, v137, v138))
      {
        return this;
      }

      if (v136 < 2)
      {
        if (v136 == 1)
        {
          TSCEASTElementWithChildren::child(this, 0);
          TSUDecimal::operator=();
          TSCEASTIteratorBase::createNumber(a1, &tableUID, v193, v194);
        }

        return this;
      }

      v139 = TSCEASTElementWithChildren::child(this, 0);
      v140 = TSCEASTElementWithChildren::child(this, 1u);
      TSCEASTElementWithChildren::setChildAtIndex(this, v140, 0, a1);
LABEL_207:
      v60 = this;
      v61 = v139;
      v62 = 1;
      goto LABEL_243;
    case 348:
    case 349:
      v91 = TSCEASTElementWithChildren::child(this, 0);
      v92 = sub_2210F115C(a1, v91);
      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      v10 = sub_2210F0FCC(a1, &tableUID, v93, v94);
      if (v10 && (v92 & 1) != 0)
      {
        if (v7 == 348)
        {
          v95 = 349;
        }

        else
        {
          v95 = 348;
        }

        TSCEASTFunctionElement::setFunctionIndex(this, v95, a1, v12);
        v96 = (*(*this + 48))(this, a1);
        if (v96 < 3)
        {
          if (v96 == 2)
          {
            TSCEASTElementWithChildren::child(this, 1u);
            TSCEASTIteratorBase::createBool(a1, 1, v189, v190);
          }

          TSCEASTIteratorBase::createBool(a1, 1, v97, v98);
        }

        v40 = TSCEASTElementWithChildren::child(this, 2u);
        v99 = TSCEASTElement::tag(v40, a1);
        if (v99 != 19)
        {
          if ((v99 - 23) <= 1)
          {
            TSCEASTIteratorBase::createBool(a1, 1, v100, v101);
          }

          v208 = TSCEASTElementWithChildren::child(this, 2u);
          TSCEASTRewriter::createFunction(a1, 0x60, v208, v209, v210, v211, v212, v213, 0);
        }

        v102 = TSCEASTBooleanElement::value(v40, a1, v100, v101);
        TSCEASTBooleanElement::setValue(v40, !v102, a1, v103);
        goto LABEL_217;
      }

      if ((v92 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_176;
    case 350:
    case 351:
    case 352:
      v36 = TSCEASTElementWithChildren::child(this, 0);
      if (!sub_2210F115C(a1, v36))
      {
        return this;
      }

      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      if (!sub_2210F0FCC(a1, &tableUID, v37, v38))
      {
        goto LABEL_176;
      }

      v39 = (*(*this + 48))(this, a1);
      if (v39 >= 3)
      {
        v40 = TSCEASTElementWithChildren::child(this, 1u);
        v41 = TSCEASTElementWithChildren::child(this, 2u);
        v42 = this;
        goto LABEL_216;
      }

      if (v39 == 2)
      {
        TSCEASTElementWithChildren::child(this, 1u);
        TSUDecimal::operator=();
        TSCEASTIteratorBase::createNumber(a1, &tableUID, v191, v192);
      }

      return this;
    case 353:
    case 354:
      v76 = TSCEASTElementWithChildren::child(this, 0);
      v71 = sub_2210F115C(a1, v76);
      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      v10 = sub_2210F0FCC(a1, &tableUID, v77, v78);
      if (!v10 || !v71)
      {
        goto LABEL_81;
      }

      if (v7 == 354)
      {
        v79 = 353;
      }

      else
      {
        v79 = 354;
      }

      goto LABEL_195;
    case 355:
    case 356:
      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      v82 = sub_2210F0FCC(a1, &tableUID, v80, v81);
      v83 = (*(*this + 48))(this, a1);
      if (!v83)
      {
        if ((v82 & 1) == 0)
        {
          return this;
        }

        goto LABEL_191;
      }

      v84 = v83;
      v85 = 0;
      v86 = 0;
      do
      {
        v87 = TSCEASTElementWithChildren::child(this, v85);
        v86 += sub_2210F115C(a1, v87);
        ++v85;
      }

      while (v84 != v85);
      if (v84 == v86)
      {
        v88 = v82;
      }

      else
      {
        v88 = 0;
      }

      if (v88)
      {
LABEL_191:
        v74 = v7 == 355;
        v75 = 355;
        goto LABEL_192;
      }

      for (j = 0; j != v84; ++j)
      {
        v90 = TSCEASTElementWithChildren::child(this, j);
        if (sub_2210F115C(a1, v90))
        {
          sub_2210F13C0(a1, this, j);
        }
      }

      if (!v82)
      {
        return this;
      }

LABEL_110:

      return sub_2210F14CC(a1, this, v11, v12, v13, v14, v15, v16);
    case 357:
    case 358:
      v70 = TSCEASTElementWithChildren::child(this, 0);
      v71 = sub_2210F115C(a1, v70);
      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      v10 = sub_2210F0FCC(a1, &tableUID, v72, v73);
      if (v10 && v71)
      {
        v74 = v7 == 357;
        v75 = 357;
LABEL_192:
        if (v74)
        {
          v79 = v75 + 1;
        }

        else
        {
          v79 = v75;
        }

        goto LABEL_195;
      }

LABEL_81:
      if (v71)
      {
LABEL_176:
        v117 = a1;
        v118 = this;
        v116 = 0;
        goto LABEL_177;
      }

LABEL_4:
      if (v10)
      {
        goto LABEL_110;
      }

      return this;
    case 359:
    case 360:
    case 361:
      v29 = (*(*this + 48))(this, a1);
      if (v29)
      {
        v30 = v29;
        for (k = 0; k != v30; ++k)
        {
          v32 = TSCEASTElementWithChildren::child(this, k);
          if (sub_2210F115C(a1, v32))
          {
            sub_2210F13C0(a1, this, k);
          }
        }
      }

      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      v35 = sub_2210F0FCC(a1, &tableUID, v33, v34);
      if (v7 == 359 || (v35 & 1) == 0)
      {
        return this;
      }

      goto LABEL_110;
    case 366:
    case 372:
      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      v65 = sub_2210F0FCC(a1, &tableUID, v63, v64);
      v66 = (*(*this + 48))(this, a1);
      v67 = v66 - 1;
      if (v66 != 1)
      {
        v68 = 0;
        do
        {
          v69 = TSCEASTElementWithChildren::child(this, v68);
          if (v65 != sub_2210F115C(a1, v69))
          {
            sub_2210F13C0(a1, this, v68);
          }

          ++v68;
        }

        while (v67 != v68);
      }

      return this;
    case 368:
      v135 = TSCEASTElementWithChildren::child(this, 1u);
      if (sub_2210F115C(a1, v135))
      {
        sub_2210F13C0(a1, this, 1u);
      }

LABEL_3:
      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      v10 = sub_2210F0FCC(a1, &tableUID, v8, v9);
      goto LABEL_4;
    case 369:
    case 370:
      v104 = TSCEASTElementWithChildren::child(this, 0);
      v105 = sub_2210F115C(a1, v104);
      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      v108 = sub_2210F0FCC(a1, &tableUID, v106, v107);
      if (v105)
      {
        if (v7 == 369)
        {
          v109 = 370;
        }

        else
        {
          v109 = 369;
        }

        TSCEASTFunctionElement::setFunctionIndex(this, v109, a1, v12);
      }

      if (v105 != v108)
      {
        goto LABEL_110;
      }

      return this;
    default:
      if (v6 == 234)
      {
        goto LABEL_120;
      }

      return this;
  }
}

TSCEASTElementWithChildren *sub_2210F29AC(TSCEASTRewriter *a1, TSCEASTElementWithChildren *a2)
{
  v8 = a2;
  if (sub_2210CDC18(a1 + 27, &v8))
  {
    sub_2210CDD04(a1 + 27, &v8);
    v3 = (*(*v8 + 48))(v8, a1);
    if (v3)
    {
      v4 = v3;
      for (i = 0; i != v4; ++i)
      {
        v6 = TSCEASTElementWithChildren::child(v8, i);
        if (sub_2210F115C(a1, v6))
        {
          sub_2210F13C0(a1, v8, i);
        }
      }
    }
  }

  return v8;
}

TSCEASTElementWithChildren *sub_2210F2A74(uint64_t a1, TSCEASTElement *a2, TSKUIDStruct *a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = a4;
  if (sub_2210F0F80(a1, a2, a3, a4))
  {
    v10 = sub_221089E8C(a1);
    v14 = objc_msgSend_tableUID(*(a1 + 200), v11, v12, v13);
    v16 = objc_msgSend_resolverForTableUID_(v10, v15, v14, v15);

    if (!v16 || (v20 = sub_2210F0F24(a1, v17, v18, v19), v21 = v20, v20 == 0x7FFFFFFF) || (v20 & 0xFFFF00000000) == 0x7FFF00000000 || v17 == 0x7FFFFFFF || (v17 & 0xFFFF00000000) == 0x7FFF00000000 || (v22 = WORD2(v17), WORD2(v17) < WORD2(v20)) || v20 > v17)
    {
      v39 = MEMORY[0x277D81150];
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "TSCEASTElement *TSCEASTTransposeRewriter::shouldTransformSpanningColumnToBodyRangeReference(TSCEASTElement *, const TSCEOwnerUID &, TSUColumnIndex, BOOL, TSUCellCoord)", v19);
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTTransposeRewriter.mm", v42);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v44, v40, v43, 991, 0, "Table's bodyRange wasn't valid");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47);
      TSCEASTIteratorBase::createReferenceError(a1, v48, v49, v50);
    }

    v23 = TSCEASTElement::functionArgSpec(a2, a1);
    v27 = v23;
    if (v23)
    {
      v28 = objc_msgSend_argumentType(v23, v24, v25, v26);
      if (objc_msgSend_accessorMode(v27, v29, v30, v31) != 1 || v28 == 1 || v28 == 6 || v28 == 255)
      {
        v35 = sub_2210F0F80(a1, v32, v33, v34);
        *(&v36 + 1) = v6;
        *&v36 = v21;
        v58.coordinate = ((v36 >> 32) & 0xFFFF0000FFFFLL);
        v58._tableUID = *a3;
        v57.coordinate.row = v22 - v35;
        *&v57.coordinate.column = v6;
        v57._tableUID = *a3;
        v56._flags = a5;
        tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
        coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
        v37 = TSCEASTIteratorBase::createReference(a1, &v58, &v56, &tableUID, &coordinate, 0);
        v53 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
        v52 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
        v38 = TSCEASTIteratorBase::createReference(a1, &v57, &v56, &v53, &v52, 0);
        TSCEASTRewriter::createBinaryOp(a1, 0x1C, v37, v38);
      }
    }
  }

  return 0;
}

id sub_2210F2DAC(uint64_t a1, TSCEASTElement *a2, void *a3)
{
  v5 = a3;
  v12 = v5;
  if (sub_2210F0F80(a1, v6, v7, v8))
  {
    v12 = v5;
    if (objc_msgSend_spansAllRows(v5, v9, v10, v11))
    {
      v90._lower = 0;
      v90._upper = 0;
      if (objc_msgSend_hasTableUID(v5, v13, v14, v15))
      {
        v90._lower = objc_msgSend_tableUID(v5, v16, v17, v18);
      }

      else
      {
        v20 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
        upper = v20->var0.var0._tableUID._upper;
        v90._lower = v20->var0.var0._tableUID._lower;
      }

      v90._upper = upper;
      v21 = sub_221089E8C(a1);
      v25 = objc_msgSend_tableUID(*(a1 + 200), v22, v23, v24);
      v27 = objc_msgSend_resolverForTableUID_(v21, v26, v25, v26);

      v87 = v27;
      if (v27)
      {
        v31 = sub_2210F0F24(a1, v28, v29, v30);
        v32 = v31;
        v33 = v28;
        v34 = HIDWORD(v31);
        if (v31 != 0x7FFFFFFF)
        {
          v35 = WORD2(v31);
          if (WORD2(v31) != 0x7FFFLL && v28 != 0x7FFFFFFF && (v28 & 0xFFFF00000000) != 0x7FFF00000000)
          {
            v36 = WORD2(v28);
            if (WORD2(v28) >= WORD2(v31) && v31 <= v28)
            {
              v37 = TSCEASTElement::functionArgSpec(a2, a1);
              v41 = v37;
              v42 = v87;
              if (v37)
              {
                v43 = objc_msgSend_argumentType(v37, v38, v39, v40);
                if (objc_msgSend_accessorMode(v41, v44, v45, v46) != 1 || v43 == 1 || v43 == 6 || v43 == 255)
                {
                  v88._begin = v35;
                  v88._end = v36 - sub_2210F0F80(a1, v47, v48, v49);
                  TSUIndexSet::TSUIndexSet(&v89, &v88);
                  objc_msgSend_setRows_(v5, v50, &v89, v51);
                  TSUIndexSet::~TSUIndexSet(&v89);
                }
              }

              v12 = v5;
LABEL_33:

              goto LABEL_34;
            }
          }
        }
      }

      else
      {
        v33 = 0x7FFF7FFFFFFFLL;
        v32 = 0x7FFFFFFF;
        LOWORD(v34) = 0x7FFF;
      }

      if (!v5)
      {
        v52 = MEMORY[0x277D81150];
        v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "TSCECellTractRef *TSCEASTTransposeRewriter::transformSpanningColumnToBodyRangeReference(TSCEASTElement *, TSCECellTractRef *__strong, TSUCellCoord)", v30);
        v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTTransposeRewriter.mm", v55);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v57, v53, v56, 1033, 0, "invalid nil value for '%{public}s'", "absTractRef");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60);
      }

      if (!v87)
      {
        v61 = MEMORY[0x277D81150];
        v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "TSCECellTractRef *TSCEASTTransposeRewriter::transformSpanningColumnToBodyRangeReference(TSCEASTElement *, TSCECellTractRef *__strong, TSUCellCoord)", v30);
        v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTTransposeRewriter.mm", v64);
        v66 = TSKUIDStruct::description(&v90);
        v67 = sub_221089E8C(a1);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v68, v62, v65, 1034, 0, "Couldn't locate a table with uid: %@ in calcEngine %p", v66, v67);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71);
      }

      if (v34 == 0x7FFFLL || v32 == 0x7FFFFFFFLL || v33 == 0x7FFFFFFF || (v33 & 0xFFFF00000000) == 0x7FFF00000000 || v34 > WORD2(v33) || v32 > v33)
      {
        v72 = MEMORY[0x277D81150];
        v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "TSCECellTractRef *TSCEASTTransposeRewriter::transformSpanningColumnToBodyRangeReference(TSCEASTElement *, TSCECellTractRef *__strong, TSUCellCoord)", v30);
        v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTTransposeRewriter.mm", v75);
        *&v89 = objc_msgSend_resolverUID(v87, v77, v78, v79);
        v89._singleRange._begin = v80;
        v81 = TSKUIDStruct::description(&v89);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v72, v82, v73, v76, 1035, 0, "Table %@ bodyRange wasn't valid", v81);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v83, v84, v85);
      }

      v12 = 0;
      v41 = v5;
      v42 = v87;
      goto LABEL_33;
    }
  }

LABEL_34:

  return v12;
}

void sub_2210F31BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, TSUIndexSet *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  TSUIndexSet::~TSUIndexSet(&a15);

  _Unwind_Resume(a1);
}

TSCEASTRelativeCoordRefElement *sub_2210F327C(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  v2 = a2;
  if (TSCEASTElement::refFlags(a2, a1))
  {
    lower = TSCEASTRelativeCoordRefElement::tableUID(v2, a1, v4, v5);
    upper = v9;
  }

  else
  {
    v6 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    lower = v6->var0.var0._tableUID._lower;
    upper = v6->var0.var0._tableUID._upper;
  }

  v81._lower = lower;
  v81._upper = upper;
  tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  v12 = sub_2210F0FCC(a1, &tableUID, v10, v11);
  v17 = sub_2210F0FCC(a1, &v81, v13, v14);
  if ((v17 & 1) == 0 && !v12)
  {
    return v2;
  }

  v18 = TSCEASTRelativeCoordRefElement::relativeCoord(v2, a1, v15, v16);
  v19 = TSCEASTRelativeCoordRefElement::preserveFlags(v2, a1);
  v78 = v19;
  coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var1.coordinate;
  v20 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  v23 = HIDWORD(v18);
  if ((v19 & 1) == 0)
  {
    LOWORD(v23) = 0x7FFF;
    if (WORD2(v18) != 0x7FFF)
    {
      v24 = v20->var0.var0.coordinate;
      if ((v18 >> 16) >> 16 < 1)
      {
        if ((v18 & 0x800000000000) != 0 && -SWORD2(v18) > v24.column)
        {
          goto LABEL_15;
        }
      }

      else if (999 - SWORD2(v18) < v24.column)
      {
        goto LABEL_15;
      }

      LOWORD(v23) = WORD2(v18) + v24.column;
      if ((WORD2(v18) + v24.column) >= 0x7FFFu)
      {
        v69 = MEMORY[0x277D81150];
        v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "TSUColumnIndex TSCEMakeAbsoluteColumnFromRelativeColumn(TSUCellCoord, TSURelativeColumnIndex, BOOL)", v22);
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v26);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v28, v72, v27, 168, 0, "overflow in column");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
      }
    }
  }

LABEL_15:
  v32 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  if ((v19 & 2) != 0)
  {
    v37 = v18;
    if (v18 == 0x7FFFFFFF)
    {
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  if (v18 == 0x7FFFFFFF)
  {
    goto LABEL_34;
  }

  v36 = v32->var0.var0.coordinate;
  if (v18 >= 1)
  {
    if ((999999 - v18) < v36.row)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  if (!v18 || v36.row >= -v18)
  {
LABEL_28:
    if (v36.row == 0x7FFFFFFF)
    {
      v68 = MEMORY[0x277D81150];
      v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v35);
      v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v42);
      v43 = NSStringFromTSUCellCoord();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v44, v73, v70, 195, 0, "Calling TSCEMakeAbsoluteRowFromRelativeRow with an invalid hostCell row: %@", v43);

      v45 = v73;
LABEL_33:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54);
      goto LABEL_34;
    }

    v37 = v18 + v36.row;
    if ((v18 + v36.row) >= 0x7FFFFFFF)
    {
      v71 = MEMORY[0x277D81150];
      v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v35);
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v48);
      row = v36.row;
      v50 = v71;
      v70 = v49;
      v45 = v74;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v51, v74, v49, 191, 0, "overflow in row, input row: %d with host row: %lu", v18, row);
      goto LABEL_33;
    }

LABEL_21:
    if (v17)
    {
      v38 = v23 != 0x7FFF;
      v39 = v23 == 0x7FFF;
      if (v37 >= 0x3E8)
      {
        v40 = *(a1 + 208);
        if (v40 <= 1)
        {
          v40 = 1;
        }

        *(a1 + 208) = v40;
        TSCEASTIteratorBase::createReferenceError(a1, v33, v34, v35);
      }

      v46 = 0;
LABEL_43:
      *&v77._preserveRow = 0;
      v76._flags = __rbit32(v19) >> 30;
      v59 = v46 | v38;
      if (v19)
      {
        if (v59)
        {
          v60 = SWORD2(v18);
        }

        else
        {
          v60 = 0x7FFFFFFF;
        }
      }

      else if (v59)
      {
        v60 = v23 - coordinate;
      }

      else
      {
        v60 = 0x7FFFFFFF;
      }

      v77._row = v60;
      v61 = v38 || v39;
      if ((v19 & 2) != 0)
      {
        if (v61)
        {
          v62 = v18;
        }

        else
        {
          v62 = 0x7FFF;
        }
      }

      else
      {
        v62 = 0x7FFF;
        if (v61)
        {
          if (v37 != 0x7FFF)
          {
            LOWORD(v37) = v37 - WORD2(coordinate);
          }

          v62 = v37;
          if (v37 > 999)
          {
            v63 = *(a1 + 208);
            if (v63 <= 1)
            {
              v63 = 1;
            }

            *(a1 + 208) = v63;
            TSCEASTIteratorBase::createReferenceError(a1, v33, v34, v35);
          }
        }
      }

      v77._column = v62;
      if (v2)
      {
        v64 = (*(*v2 + 96))(v2, a1);
      }

      else
      {
        v64 = 0;
      }

      v65 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      if (lower == v65->var0.var0._tableUID._lower && upper == v65->var0.var0._tableUID._upper)
      {
        tableUID._lower = 0;
        tableUID._upper = 0;
      }

      else
      {
        tableUID = v81;
      }

      TSCEASTIteratorBase::createRelativeCoordReference(a1, &tableUID, &v77, &v76, v64);
    }

    goto LABEL_38;
  }

LABEL_34:
  if ((v17 & 1) == 0)
  {
    v37 = 0x7FFFFFFF;
LABEL_38:
    v82.row = v37;
    *&v82.column = v23;
    v55 = &v78;
    RelativeCellCoordinateFromAbsoluteCoordinates = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(coordinate, v82, v55, v35);
    TSCEASTRelativeCoordRefElement::setRelativeCoord(v2, &RelativeCellCoordinateFromAbsoluteCoordinates, a1, v56);
    return v2;
  }

  if (v23 == 0x7FFF)
  {
    v39 = 0;
    v46 = 0;
    v38 = 0;
LABEL_42:
    LOWORD(v37) = -1;
    goto LABEL_43;
  }

  v57 = sub_2210F2A74(a1, v2, &v81, v23, v19 & 1);
  if (!v57)
  {
    v39 = 0;
    v38 = 0;
    v46 = 1;
    goto LABEL_42;
  }

  v58 = v57;
  (*(*a1 + 24))(a1, v2);
  return v58;
}

TSCEASTElement *sub_2210F3904(TSCEFormulaRewriteContext **a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4);
  tableUID._lower = objc_msgSend_tableUID(v6, v7, v8, v9);
  tableUID._upper = v10;
  if (!(tableUID._lower | v10))
  {
    tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
  }

  v31 = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
  v13 = sub_2210F0FCC(a1, &v31, v11, v12);
  v16 = sub_2210F0FCC(a1, &tableUID, v14, v15);
  v17 = v16;
  if ((v16 | v13))
  {
    v31._lower = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
    if (v13)
    {
      v31._lower = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var1.coordinate;
    }

    coordinate = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
    v20 = objc_msgSend_absoluteCellTractRefForHostCell_(v6, v18, &coordinate, v19);
    if (v17)
    {
      v21 = sub_2210F2DAC(a1, this, v20);

      if (!v21 || !objc_msgSend_transpose(v21, v22, v23, v24))
      {
        v28 = *(a1 + 52);
        if (v28 <= 1)
        {
          v28 = 1;
        }

        *(a1 + 52) = v28;
        TSCEASTIteratorBase::createReferenceError(a1, v22, v23, v24);
      }

      v20 = v21;
    }

    else if ((v13 & 1) == 0)
    {
LABEL_12:

      goto LABEL_16;
    }

    v25 = [TSCERelativeTractRef alloc];
    v27 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v25, v26, v20, &v31);
    TSCEASTColonTractElement::setRelativeTractRef(this, v27, v6, a1, 0);

    goto LABEL_12;
  }

LABEL_16:

  return this;
}

void sub_2210F3B18(id *a1)
{
  *a1 = &unk_2834A1BE8;
  sub_2210BDEC0((a1 + 27));

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_2210F3B74(id *a1)
{
  *a1 = &unk_2834A1BE8;
  sub_2210BDEC0((a1 + 27));

  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

void *sub_2210F3BE4(void *a1, void *a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != *a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void sub_2210F3F04(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2210F4734(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_2210F4F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, void *a15, uint64_t a16, void *a17, TSUIndexSet *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__pa, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  TSUIndexSet::~TSUIndexSet(&__pa);
  TSUIndexSet::~TSUIndexSet(&a26);

  _Unwind_Resume(a1);
}

void sub_2210F5698(_Unwind_Exception *a1, _Unwind_Exception *exception_object, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, TSUIndexSet *a7, uint64_t a8, uint64_t a9, _Unwind_Exception *exception_objecta, void *a11, void *a12, TSUIndexSet *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  TSUIndexSet::~TSUIndexSet(&a15);

  TSUIndexSet::~TSUIndexSet(&a24);
  TSUIndexSet::~TSUIndexSet((v32 - 120));

  _Unwind_Resume(a1);
}

void sub_2210F5F10(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v503 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_tableStylePreset(*(a1 + 32), a2, a3, a4);

  if (!v5)
  {
    objc_msgSend_setTableStylePreset_(*(a1 + 40), v6, 0, v7);
  }

  objc_msgSend_setCalcEngine_(*(a1 + 40), v6, 0, v7);
  if (*(a1 + 120) == 1)
  {
    v11 = objc_msgSend_calcEngine(*(a1 + 32), v8, v9, v10);

    if (v11)
    {
      v12 = objc_msgSend_calcEngine(*(a1 + 32), v8, v9, v10);
      objc_msgSend_blockUntilRecalcIsCompleteWithTimeout_(v12, v13, v14, v15, 0.2);
    }
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    v20 = objc_msgSend_fromTableUID(v16, v8, v9, v10);
    v21 = *(a1 + 32);
    if (v20 | v17)
    {
      v22 = objc_msgSend_fromTableUID(v21, v17, v18, v19);
    }

    else
    {
      v22 = objc_msgSend_tableUID(v21, v17, v18, v19);
    }

    objc_msgSend_setFromTableUID_(*(a1 + 40), v23, v22, v23);
    v27 = objc_msgSend_fromGroupByUID(*(a1 + 32), v24, v25, v26);
    if (v27 | v28)
    {
      v31 = objc_msgSend_fromGroupByUID(*(a1 + 32), v28, v29, v30);
    }

    else
    {
      v31 = objc_msgSend_groupByUid(*(a1 + 48), v28, v29, v30);
    }

    objc_msgSend_setFromGroupByUID_(*(a1 + 40), v32, v31, v32);
    v16 = *(a1 + 32);
  }

  v33 = *(a1 + 88);
  v34 = objc_msgSend_repeatingHeaderRowsEnabled(v16, v8, v9, v10);
  v35 = (a1 + 40);
  objc_msgSend_setRepeatingHeaderRowsEnabled_(*(a1 + 40), v36, v34, v37);
  v41 = objc_msgSend_repeatingHeaderColumnsEnabled(*(a1 + 32), v38, v39, v40);
  objc_msgSend_setRepeatingHeaderColumnsEnabled_(*(a1 + 40), v42, v41, v43);
  v47 = objc_msgSend_headerRowsFrozen(*(a1 + 32), v44, v45, v46);
  objc_msgSend_setHeaderRowsFrozen_(*(a1 + 40), v48, v47, v49);
  v53 = objc_msgSend_headerColumnsFrozen(*(a1 + 32), v50, v51, v52);
  objc_msgSend_setHeaderColumnsFrozen_(*(a1 + 40), v54, v53, v55);
  v56 = (a1 + 48);
  v60 = objc_msgSend_headerRowRange(*(a1 + 48), v57, v58, v59);
  v436 = v61;
  v438 = v60;
  v479.origin = sub_221119E0C(v60, v61, *(a1 + 88), *(a1 + 96));
  v479.size = v62;
  v63 = TSUCellRect::numRows(&v479);
  v66 = v63 - (v63 >= TSUCellRect::numRows((a1 + 88)));
  if (v66 >= 5)
  {
    objc_msgSend_setNumberOfHeaderRows_(*v35, v64, 5, v65);
  }

  else
  {
    objc_msgSend_setNumberOfHeaderRows_(*v35, v64, v66, v65);
  }

  v70 = objc_msgSend_headerColumnRange(*v56, v67, v68, v69);
  v479.origin = sub_221119E0C(v70, v71, *(a1 + 88), *(a1 + 96));
  v479.size = v72;
  v73 = TSUCellRect::numColumns(&v479);
  v76 = v73 - (v73 >= TSUCellRect::numColumns((a1 + 88)));
  if (v76 >= 5)
  {
    LOWORD(v76) = 5;
  }

  objc_msgSend_setNumberOfHeaderColumns_(*v35, v74, v76, v75);
  v80 = objc_msgSend_footerRowRange(*v56, v77, v78, v79);
  v82 = v81;
  if (objc_msgSend_isAPivotTable(*v56, v81, v83, v84))
  {
    v88 = objc_msgSend_pivotOwner(*(a1 + 48), v85, v86, v87);
    if (objc_msgSend_flatteningDimension(v88, v89, v90, v91))
    {
      v95 = 1;
    }

    else
    {
      v96 = objc_msgSend_pivotOwner(*(a1 + 48), v92, v93, v94);
      v100 = objc_msgSend_aggregates(v96, v97, v98, v99);
      v104 = objc_msgSend_count(v100, v101, v102, v103);

      if (v104 <= 1)
      {
        v95 = 1;
      }

      else
      {
        v95 = v104;
      }
    }

    Column = TSUCellRect::firstColumn((a1 + 88));
    v80 = (objc_msgSend_numberOfRows(*(a1 + 48), v106, v107, v108) - v95) | (Column << 32);
    v82 = TSUCellRect::numColumns((a1 + 88)) | (v95 << 32);
  }

  v479.origin = sub_221119E0C(v80, v82, *(a1 + 88), *(a1 + 96));
  v479.size = v109;
  v110 = TSUCellRect::numRows(&v479);
  v113 = v110 - (v110 >= TSUCellRect::numRows((a1 + 88)));
  if (v113 >= 5)
  {
    v114 = 5;
  }

  else
  {
    v114 = v113;
  }

  objc_msgSend_setNumberOfFooterRows_(*(a1 + 40), v111, v114, v112);
  v118 = objc_msgSend_tableNameEnabled(*(a1 + 32), v115, v116, v117);
  objc_msgSend_setTableNameEnabled_(*(a1 + 40), v119, v118, v120);
  v121 = [TSTStrokeSidecar alloc];
  v124 = objc_msgSend_initWithTableModel_(v121, v122, *(a1 + 40), v123);
  objc_msgSend_setStrokeSidecar_(*(a1 + 40), v125, v124, v126);

  if (*(a1 + 121) == 1)
  {
    v130 = *(a1 + 40);
    v131 = objc_msgSend_tableName(*(a1 + 32), v127, v128, v129);
    objc_msgSend_setTableName_(v130, v132, v131, v133);

    v134 = *(a1 + 40);
    v138 = objc_msgSend_tableNameBorderEnabled(*(a1 + 32), v135, v136, v137);
    objc_msgSend_setTableNameBorderEnabled_(v134, v139, v138, v140);
    v141 = *(a1 + 40);
    objc_msgSend_tableNameHeight(*(a1 + 32), v142, v143, v144);
    objc_msgSend_setTableNameHeight_(v141, v145, v146, v147);
    v148 = *(a1 + 40);
    v152 = objc_msgSend_styleApplyClearsAll(*(a1 + 32), v149, v150, v151);
    objc_msgSend_setStyleApplyClearsAll_(v148, v153, v152, v154);
  }

  v155 = *(a1 + 40);
  objc_msgSend_defaultRowHeight(*(a1 + 32), v127, v128, v129);
  objc_msgSend_setDefaultRowHeight_(v155, v156, v157, v158);
  v159 = *(a1 + 40);
  objc_msgSend_defaultColumnWidth(*(a1 + 32), v160, v161, v162);
  objc_msgSend_setDefaultColumnWidth_(v159, v163, v164, v165);
  v495 = MEMORY[0x277D85DD0];
  v496 = 3221225472;
  v497 = sub_2210F7344;
  v498 = &unk_27845EB98;
  v499 = *(a1 + 48);
  v500 = *(a1 + 40);
  v501 = v33;
  TSUCellRect::enumerateRowsUsingBlock();
  v488 = MEMORY[0x277D85DD0];
  v489 = 3221225472;
  v490 = sub_2210F739C;
  v491 = &unk_27845EBC0;
  v492 = *(a1 + 48);
  v493 = *(a1 + 40);
  v494 = v33;
  TSUCellRect::enumerateColumnsUsingBlock();
  if (*(a1 + 121) == 1)
  {
    v169 = objc_msgSend_sortOrder(*(a1 + 32), v166, v167, v168);
    v173 = objc_msgSend_copy(v169, v170, v171, v172);
    objc_msgSend_setSortOrder_(*(a1 + 40), v174, v173, v175);
  }

  v176 = objc_msgSend_translator(*(a1 + 48), v166, v167, v168);
  v435 = objc_msgSend_baseCellRegionForViewCellRegion_(v176, v177, *(a1 + 56), v178);
  v182 = objc_msgSend_mergeOwner(*(a1 + 32), v179, v180, v181);
  v185 = v182;
  if (v182)
  {
    objc_msgSend_mergeRangesIntersectingBaseCellRegion_(v182, v183, v435, v184);
  }

  else
  {
    v486 = 0;
    __p = 0;
    v487 = 0;
  }

  v189 = __p;
  v190 = v486;
  if (__p == v486)
  {
    v191 = 0;
  }

  else
  {
    v191 = 0;
    do
    {
      v192 = objc_msgSend_viewCellRegionForBaseCellRect_(v176, v186, *v189, v189[1]);
      v479.size = 0;
      v479.origin = 0;
      v479.origin = objc_msgSend_boundingCellRange(v192, v193, v194, v195);
      v479.size = v196;
      v198 = objc_msgSend_regionByIntersectingRegion_(v192, v196, *(a1 + 56), v197);
      v453.origin = 0;
      v453.size = 0;
      v453.origin = objc_msgSend_boundingCellRange(v198, v199, v200, v201);
      v453.size = v202;
      v203 = TSUCellRect::firstRow(&v479);
      if (v203 < TSUCellRect::firstRow(&v453) || (v206 = TSUCellRect::firstColumn(&v479), v206 < TSUCellRect::firstColumn(&v453)))
      {
        v191 = 1;
      }

      v450.origin = ((*&v453.origin - (*(a1 + 88) & 0xFFFF00000000)) & 0xFFFF00000000 | (v453.origin.row - *(a1 + 88)));
      v450.size = v453.size;
      v207 = objc_msgSend_tableAreaForBaseCellCoord_(*(a1 + 40), v204, *&v450.origin, v205);
      v208 = v207;
      if (v207 == 5)
      {
        v208 = 2;
      }

      else if (v207 == 6)
      {
        v208 = 4;
      }

      v209 = *(a1 + 40);
      v210 = TSUCellRect::bottomRight(&v450);
      v213 = objc_msgSend_tableAreaForBaseCellCoord_(v209, v211, v210, v212);
      v217 = v213;
      if (v213 == 5)
      {
        v217 = 2;
      }

      else if (v213 == 6)
      {
        v217 = 4;
      }

      if (v208 != v217)
      {
        v484.origin = objc_msgSend_headerRowRange(*(a1 + 40), v214, v215, v216);
        v484.size = v218;
        origin = v450.origin;
        if (TSUCellRect::contains(&v484, origin))
        {
          objc_msgSend_setNumberOfHeaderRows_(*(a1 + 40), v220, 0, v222);
        }

        v484.origin = objc_msgSend_headerColumnRange(*(a1 + 40), v220, v221, v222);
        v484.size = v223;
        v224 = v450.origin;
        if (TSUCellRect::contains(&v484, v224))
        {
          objc_msgSend_setNumberOfHeaderColumns_(*(a1 + 40), v214, 0, v216);
        }

        if (v217 == 4)
        {
          objc_msgSend_setNumberOfFooterRows_(*(a1 + 40), v214, 0, v216);
        }
      }

      v225 = objc_msgSend_mergeOwner(*(a1 + 40), v214, v215, v216);
      objc_msgSend_insertBaseMergeRange_(v225, v226, *&v450.origin, *&v450.size);

      v189 += 2;
    }

    while (v189 != v190);
  }

  v479.origin = 0;
  v479.size = &v479;
  v480 = 0x3032000000;
  v481 = sub_2210F7420;
  v482 = sub_2210F7430;
  v483 = 0;
  v434 = objc_msgSend_indexesForSummaryAndLabelRows(*(a1 + 48), v186, v187, v188);
  v433 = objc_msgSend_indexesForCategoryColumns(*(a1 + 48), v227, v228, v229);
  v432 = objc_msgSend_indexesForSummaryColumns(*(a1 + 48), v230, v231, v232);
  v236 = objc_msgSend_documentRoot(*(a1 + 48), v233, v234, v235);
  v431 = objc_msgSend_calculationEngine(v236, v237, v238, v239);

  v240 = *(a1 + 56);
  v476[0] = MEMORY[0x277D85DD0];
  v476[1] = 3221225472;
  v476[2] = sub_2210F7438;
  v476[3] = &unk_27845EBE8;
  v241 = v434;
  v477 = v241;
  v478 = *(a1 + 64);
  objc_msgSend_enumerateRowRangesUsingBlock_(v240, v242, v476, v243);
  v247 = objc_msgSend_documentRoot(*(a1 + 64), v244, v245, v246);
  v430 = objc_msgSend_accessController(v247, v248, v249, v250);

  v254 = objc_msgSend_hasWrite(v430, v251, v252, v253);
  v255 = v191 & 1;
  if (v191)
  {
    v256 = 66;
  }

  else
  {
    v256 = 2;
  }

  v257 = *(a1 + 48);
  v258 = *(a1 + 56);
  v456[0] = MEMORY[0x277D85DD0];
  v456[1] = 3221225472;
  v456[2] = sub_2210F7488;
  v456[3] = &unk_27845EC60;
  v469 = v33;
  v473 = v255;
  v457 = *(a1 + 72);
  v458 = *(a1 + 40);
  v459 = *(a1 + 48);
  v425 = v241;
  v460 = v425;
  v426 = v433;
  v461 = v426;
  v462 = *(a1 + 80);
  v463 = *(a1 + 64);
  v474 = *(a1 + 122);
  v424 = v176;
  v464 = v424;
  v428 = v431;
  v465 = v428;
  v468 = &v479;
  v470 = *(a1 + 104);
  v429 = v430;
  v466 = v429;
  v471 = v438;
  v472 = v436;
  v427 = v432;
  v467 = v427;
  v475 = v254;
  objc_msgSend_iterateCellsInRegion_flags_searchFlags_usingBlock_(v257, v259, v258, v256, 0x20000000, v456);
  objc_storeStrong((*(a1 + 64) + 200), *(a1 + 40));
  v263 = objc_msgSend_hiddenStatesOwner(*(*(a1 + 64) + 200), v260, v261, v262);
  objc_msgSend_setTableModel_(v263, v264, *(*(a1 + 64) + 200), v265);

  v266 = [TSTHiddenStates alloc];
  v270 = objc_msgSend_hiddenStatesOwner(*(*(a1 + 64) + 200), v267, v268, v269);
  v273 = objc_msgSend_initWithHiddenStatesOwner_(v266, v271, v270, v272);
  v274 = *(a1 + 64);
  v275 = *(v274 + 328);
  *(v274 + 328) = v273;

  objc_msgSend_setTableModel_(*(*(a1 + 64) + 328), v276, *(*(a1 + 64) + 200), v277);
  v278 = *(a1 + 64);
  v279 = *(v278 + 240);
  *(v278 + 240) = 0;

  v280 = [TSTTablePartitioner alloc];
  v283 = objc_msgSend_initWithInfo_(v280, v281, *(a1 + 64), v282);
  v284 = *(a1 + 64);
  v285 = *(v284 + 232);
  *(v284 + 232) = v283;

  v453.origin = 0;
  v453.size = &v453;
  v454 = 0x2020000000;
  v455 = 0;
  v450.origin = 0;
  v450.size = &v450;
  v451 = 0x2020000000;
  v452 = 0;
  v484.origin = objc_msgSend_range(*(*(a1 + 64) + 200), v286, v287, v288);
  v484.size = v289;
  v447[0] = MEMORY[0x277D85DD0];
  v447[1] = 3221225472;
  v447[2] = sub_2210F8A4C;
  v447[3] = &unk_27845EC88;
  v449 = &v453;
  v448 = *(a1 + 64);
  sub_22109D0C8(&v484, v447);
  v484.origin = objc_msgSend_range(*(*(a1 + 64) + 200), v290, v291, v292);
  v484.size = v293;
  v444[0] = MEMORY[0x277D85DD0];
  v444[1] = 3221225472;
  v444[2] = sub_2210F8A9C;
  v444[3] = &unk_27845ECB0;
  v446 = &v450;
  v445 = *(a1 + 64);
  sub_22109D1B8(&v484, v444);
  v294 = objc_alloc(MEMORY[0x277D802E8]);
  v298 = objc_msgSend_geometry(*(a1 + 48), v295, v296, v297);
  objc_msgSend_position(v298, v299, v300, v301);
  v437 = objc_msgSend_initWithPosition_size_(v294, v302, v303, v304);

  objc_msgSend_setPrimitiveGeometry_(*(a1 + 64), v305, v437, v306);
  v310 = objc_msgSend_columnRowUIDMap(*(*(a1 + 64) + 200), v307, v308, v309);
  v311 = *(a1 + 64);
  v312 = *(v311 + 296);
  *(v311 + 296) = v310;

  v313 = [TSTSummaryModel alloc];
  v316 = objc_msgSend_initWithTableInfo_(v313, v314, *(a1 + 64), v315);
  v317 = *(a1 + 64);
  v318 = *(v317 + 248);
  *(v317 + 248) = v316;

  v319 = [TSTCategoryOrder alloc];
  v322 = objc_msgSend_initWithTableInfo_(v319, v320, *(a1 + 64), v321);
  v323 = *(a1 + 64);
  v324 = *(v323 + 304);
  *(v323 + 304) = v322;

  v328 = objc_msgSend_baseTableModel(*(a1 + 64), v325, v326, v327);
  v439 = objc_msgSend_categoryOwner(v328, v329, v330, v331);

  v334 = objc_msgSend_groupByForOwnerIndex_(v439, v332, 8, v333);
  v335 = *(a1 + 64);
  v336 = *(v335 + 256);
  *(v335 + 256) = v334;

  if (!*(*(a1 + 64) + 256))
  {
    v337 = [TSTGroupBy alloc];
    v339 = objc_msgSend_initWithGroupings_categoryOwner_(v337, v338, MEMORY[0x277CBEBF8], v439, v424, v425, v426);
    v340 = *(a1 + 64);
    v341 = *(v340 + 256);
    *(v340 + 256) = v339;

    objc_msgSend_linkGroupBy_(v439, v342, *(*(a1 + 64) + 256), v343);
  }

  v344 = [TSTTableTranslator alloc];
  v347 = objc_msgSend_initWithTableInfo_(v344, v345, *(a1 + 64), v346);
  v348 = *(a1 + 64);
  v349 = *(v348 + 336);
  *(v348 + 336) = v347;

  v353 = objc_msgSend_translator(*(a1 + 48), v350, v351, v352);
  v357 = objc_msgSend_coordinateMapper(v353, v354, v355, v356);
  v358 = *(a1 + 64);
  v359 = *(v358 + 344);
  *(v358 + 344) = v357;

  v363 = objc_msgSend_hiddenStates(*(a1 + 48), v360, v361, v362);
  objc_msgSend_copyFromHiddenStates_forRange_withContext_isWholeTableCopy_(*(*(a1 + 64) + 328), v364, v363, *(a1 + 104), *(a1 + 112), *(a1 + 80), 0);
  v442 = 0u;
  v443 = 0u;
  v440 = 0u;
  v441 = 0u;
  v368 = objc_msgSend_allRichTextStorages(*(a1 + 64), v365, v366, v367);
  v372 = objc_msgSend_countByEnumeratingWithState_objects_count_(v368, v369, &v440, v502, 16);
  if (v372)
  {
    v373 = *v441;
    do
    {
      for (i = 0; i != v372; ++i)
      {
        if (*v441 != v373)
        {
          objc_enumerationMutation(v368);
        }

        objc_msgSend_setParentInfo_(*(*(&v440 + 1) + 8 * i), v370, *(a1 + 64), v371, v424);
      }

      v372 = objc_msgSend_countByEnumeratingWithState_objects_count_(v368, v370, &v440, v502, 16);
    }

    while (v372);
  }

  objc_msgSend_p_updateStorageParentInfoForModels(*(a1 + 64), v375, v376, v377);
  v381 = objc_msgSend_translator(*(a1 + 64), v378, v379, v380);
  objc_msgSend_addReceiverToGroupBy_(v381, v382, *(*(a1 + 64) + 256), v383);

  v387 = objc_msgSend_summaryModel(*(a1 + 64), v384, v385, v386);
  objc_msgSend_setupReceiver(v387, v388, v389, v390);

  objc_msgSend__correctAndCheckStateSuppressingAssertions_(*(a1 + 64), v391, 0, v392);
  objc_msgSend__setCellBordersFlatteningFromComplexInfo_sourceRegion_(*(a1 + 64), v393, *(a1 + 48), *(a1 + 56));
  if (*(a1 + 122) == 1)
  {
    v397 = *(a1 + 64);
    v398 = v397[41];
    v399 = objc_msgSend_range(v397, v394, v395, v396);
    v401 = objc_msgSend_indexesOfHiddenRowsInCellRange_(v398, v400, v399, v400);
    objc_msgSend_removeRowsAtBaseIndexes_(*(*(a1 + 64) + 200), v402, v401, v403);
    v404 = *(a1 + 64);
    v405 = v404[41];
    v409 = objc_msgSend_range(v404, v406, v407, v408);
    v411 = objc_msgSend_indexesOfHiddenColumnsInCellRange_(v405, v410, v409, v410);
    objc_msgSend_removeColumnsAtBaseIndexes_(*(*(a1 + 64) + 200), v412, v411, v413);

    if ((*(a1 + 122) & 1) != 0 && *(a1 + 121) == 1)
    {
      v417 = objc_msgSend_caption(*(a1 + 48), v414, v415, v416);
      v421 = objc_msgSend_replicateForReinsertion(v417, v418, v419, v420);
      objc_msgSend_setCaption_(*(a1 + 64), v422, v421, v423);
    }
  }

  _Block_object_dispose(&v450, 8);
  _Block_object_dispose(&v453, 8);

  _Block_object_dispose(&v479, 8);
  if (__p)
  {
    v486 = __p;
    operator delete(__p);
  }
}

void sub_2210F6F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, void *a57, void *a58, void *a59, void *a60, void *a61, void *a62, void *a63)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);

  _Block_object_dispose(&STACK[0x238], 8);
  v71 = STACK[0x278];
  if (STACK[0x278])
  {
    STACK[0x280] = v71;
    operator delete(v71);
  }

  _Unwind_Resume(a1);
}

void *sub_2210F7344(uint64_t a1, const char *a2)
{
  v2 = a2;
  v7 = 0;
  result = objc_msgSend_heightOfRowAtIndex_isDefault_(*(a1 + 32), a2, a2, &v7);
  if ((v7 & 1) == 0)
  {
    return objc_msgSend_setHeight_ofRowAtIndex_(*(a1 + 40), v5, (v2 - *(a1 + 48)), v6);
  }

  return result;
}

void *sub_2210F739C(uint64_t a1, const char *a2)
{
  v2 = a2;
  v7 = 0;
  result = objc_msgSend_widthOfColumnAtIndex_isDefault_(*(a1 + 32), a2, a2, &v7);
  if ((v7 & 1) == 0)
  {
    return objc_msgSend_setWidth_ofColumnAtIndex_(*(a1 + 40), v5, (v2 - *(a1 + 52)), v6);
  }

  return result;
}

uint64_t *sub_2210F73F8(uint64_t *result)
{
  if (*result == 5)
  {
    v1 = 2;
  }

  else
  {
    if (*result != 6)
    {
      return result;
    }

    v1 = 4;
  }

  *result = v1;
  return result;
}

uint64_t sub_2210F7420(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_2210F7438(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4)
{
  result = objc_msgSend_intersectsIndexesInRange_(*(a1 + 32), a2, a2, a3);
  if (result)
  {
    *(*(a1 + 40) + 272) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_2210F7488(uint64_t a1, void *a2)
{
  v341 = a2;
  v6 = objc_msgSend_cell(v341, v3, v4, v5);
  v13 = objc_msgSend_cellID(v341, v7, v8, v9);
  v14 = (v13 - *(a1 + 128));
  v15 = (WORD2(v13) - *(a1 + 132));
  v16 = (v14 & 0xFFFF0000FFFFFFFFLL | (v15 << 32));
  if (*(a1 + 168) == 1)
  {
    v357.var0 = objc_msgSend_mergeRange(v341, v10, v11, v12);
    v357.var1 = v17;
    if (TSUCellRect::isValid(&v357))
    {
      var0 = v357.var0;
      if ((LODWORD(v357.var0) != v13 || ((v357.var0 ^ v13) & 0x101FFFF00000000) != 0) && (objc_msgSend_containsCellID_(*(a1 + 32), v10, v357.var0, v18) & 1) == 0)
      {
        v22 = objc_msgSend_mergeOwner(*(a1 + 40), v10, v20, v21);
        v25 = objc_msgSend_mergeOriginForBaseCellCoord_(v22, v23, v16, v24);
        if (v14 == v25 && (v25 & 0x1FFFF00000000) == v15 << 32)
        {

          if ((v25 & 0x100000000000000) == 0)
          {
            objc_msgSend_getCell_atCellID_(*(a1 + 48), v10, v6, var0);
          }
        }

        else
        {
        }
      }
    }
  }

  v26 = v13 & 0xFFFF000000000000 | (WORD2(v13) << 32) | v13;
  objc_msgSend_flattenGroupValuesIfNeededForCell_viewCellCoord_summaryAndLabelRows_categoryColumns_(*(a1 + 48), v10, v6, v26, *(a1 + 56), *(a1 + 64));
  objc_msgSend_clearDataListIDs(v6, v27, v28, v29);
  if (objc_msgSend_hasFormulaSyntaxError(v6, v30, v31, v32))
  {
    v36 = objc_msgSend_formulaSyntaxError(v6, v33, v34, v35);
    v37 = *(a1 + 72);
    v41 = objc_msgSend_documentRoot(*(a1 + 80), v38, v39, v40);
    v45 = objc_msgSend_stylesheet(v41, v42, v43, v44);
    v47 = objc_msgSend_i_copyIntoContext_stylesheet_(v36, v46, v37, v45);

    objc_msgSend_setFormulaSyntaxError_(v6, v48, v47, v49);
  }

  if (objc_msgSend_hasRichText(v6, v33, v34, v35))
  {
    v53 = objc_msgSend_richTextValue(v6, v50, v51, v52);
    v56 = objc_msgSend_copyWithContext_(v53, v54, *(a1 + 72), v55);

    objc_msgSend_setRichTextValue_(v6, v57, v56, v58);
  }

  if (objc_msgSend_hasCommentStorage(v6, v50, v51, v52))
  {
    v62 = objc_msgSend_commentStorage(v6, v59, v60, v61);
    v65 = objc_msgSend_copyWithContext_(v62, v63, *(a1 + 72), v64);

    objc_msgSend_setCommentStorage_(v6, v66, v65, v67);
  }

  if (objc_msgSend_hasFormula(v6, v59, v60, v61))
  {
    v74 = objc_msgSend_formulaObject(v6, v68, v69, v70);
    if ((*(a1 + 169) & 1) != 0 || objc_msgSend_isAPivotTable(*(a1 + 48), v71, v72, v73))
    {
      objc_msgSend_setCellSpec_(v6, v71, 0, v73);
      if ((objc_msgSend_isAPivotTable(*(a1 + 48), v76, v77, v78) & 1) != 0 || objc_msgSend_formatType(v6, v79, v80, v81) != 267)
      {
        goto LABEL_43;
      }

      v84 = objc_msgSend_defaultRangeControlSpecOfType_(TSTCellRangeControlSpec, v82, 6, v83);
      objc_msgSend_setCellSpec_(v6, v85, v84, v86);
    }

    else if (objc_msgSend_isSpillFormula(v74, v71, v75, v73))
    {
      v90 = objc_msgSend_spillOrigin(v74, v87, v88, v89);
      v93 = objc_msgSend_viewCellCoordForBaseCellCoord_(*(a1 + 88), v91, v90, v92);
      v94 = 0x7FFF7FFFFFFFLL;
      v95 = *(a1 + 132);
      if (v95 <= WORD2(v93))
      {
        v96 = *(a1 + 128);
        v97 = v93 >= v96;
        v98 = v93 - v96;
        if (v97)
        {
          v94 = v98 | ((WORD2(v93) - v95) << 32);
        }
      }

      v99 = [TSCEFormulaObject alloc];
      v357.var1 = 0;
      v357.var2.var0.var0.coordinate = 0;
      v357.var0 = v94;
      v371.var0._tableUID._lower = 0;
      v371.var0._tableUID._upper = 0;
      v371.var0.coordinate = (v13 & 0xFFFF000000000000 | (WORD2(v13) << 32) | v13);
      TSCEFormulaCreationMagic::cellRef(&v374, &v357, 3, &v371, v100);
      TSCEFormulaCreationMagic::__SPILL(v375, &v374, v376);
      v84 = objc_msgSend_initWithCreator_(v99, v101, v375, v102);

      objc_msgSend_setFormulaObject_(v6, v103, v84, v104);
    }

    else
    {
      if (!*(a1 + 96))
      {
LABEL_43:

        goto LABEL_44;
      }

      v105 = objc_msgSend_baseCellCoordForViewCellCoord_(*(a1 + 88), v87, v26, v89);
      v109 = objc_msgSend_tableUID(*(a1 + 48), v106, v107, v108);
      *&v372 = v105;
      *(&v372 + 1) = v109;
      v373 = v110;
      v113 = objc_msgSend_tableUID(*(a1 + 40), v110, v111, v112);
      v357.var0 = v16;
      v357.var1 = v113;
      v357.var2.var0.var0.coordinate = v114;
      sub_2212C726C(&v371, &v372, &v357);
      if (!*(*(*(a1 + 120) + 8) + 40))
      {
        v115 = *(a1 + 48);
        v116 = TSUCellRect::columns((a1 + 136));
        if (v115)
        {
          objc_msgSend_columnUIDsForColumnRange_(v115, v117, v116, v117);
        }

        else
        {
          v368 = 0;
          v369 = 0;
          v370 = 0;
        }

        v118 = *(a1 + 48);
        v119 = TSUCellRect::rows((a1 + 136));
        if (v118)
        {
          objc_msgSend_rowUIDsForRowRange_(v118, v120, v119, v120);
        }

        else
        {
          v365 = 0;
          v366 = 0;
          v367 = 0;
        }

        sub_2210BBBE8(&v357, &v368, &v365);
        v363 = 0u;
        v364 = 0u;
        v362 = 0u;
        v121 = [TSTFormulaRewriteSpec alloc];
        v360 = objc_msgSend_tableUID(*(a1 + 48), v122, v123, v124);
        v361 = v125;
        v358 = objc_msgSend_tableUID(*(a1 + 40), v125, v126, v127);
        v359 = v128;
        v131 = objc_msgSend_coordinateMapper(*(a1 + 88), v128, v129, v130);
        v133 = objc_msgSend_initForCategorizedTableBaseToChromeRewriterWithSrcTableUID_srcTract_dstTableUID_destTract_coordMapper_(v121, v132, &v360, &v357, &v358, &v362, v131);
        v134 = *(*(a1 + 120) + 8);
        v135 = *(v134 + 40);
        *(v134 + 40) = v133;

        sub_22109DBB8(&v362);
        sub_22109DBB8(&v357);
        if (v365)
        {
          v366 = v365;
          operator delete(v365);
        }

        if (v368)
        {
          v369 = v368;
          operator delete(v368);
        }
      }

      TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v357, *(a1 + 96), &v371);
      v84 = sub_221491A58(v74, &v357, *(*(*(a1 + 120) + 8) + 40), *(*(a1 + 80) + 272));
      objc_msgSend_setFormulaObject_(v6, v136, v84, v137);
    }

    goto LABEL_43;
  }

LABEL_44:
  if (objc_msgSend_hasConditionalStyle(v6, v68, v69, v70))
  {
    if (*(a1 + 169) == 1)
    {
      if (objc_msgSend_conditionalStyleAppliedRule(v6, v138, v139, v140) != 15)
      {
        v144 = objc_msgSend_conditionalStyle(v6, v141, v142, v143);
        v148 = objc_msgSend_conditionalStyleAppliedRule(v6, v145, v146, v147);
        v151 = objc_msgSend_ruleAtIndex_(v144, v149, v148, v150);

        if (v151)
        {
          v155 = objc_msgSend_textStyle(v151, v152, v153, v154);
          v159 = v155;
          v340 = v155;
          if (v155)
          {
            v160 = objc_msgSend_copyPropertyMap(v155, v156, v157, v158);
            v357.var0 = 0;
            v357.var1 = &v357;
            v357.var2.var0.var0.coordinate = 0x3032000000;
            v357.var2.var0.var0._tableUID._lower = sub_2210F7420;
            v357.var2.var0.var0._tableUID._upper = sub_2210F7430;
            v164 = objc_msgSend_textStyle(v6, v161, v162, v163);
            v167 = v164;
            if (v164)
            {
              v168 = v164;
            }

            else
            {
              v168 = objc_msgSend_defaultTextStyleForCellID_(*(a1 + 48), v165, v26, v166);
            }

            v357.var2.var0.var1.coordinate = v168;

            v215 = *(a1 + 104);
            v354[0] = MEMORY[0x277D85DD0];
            v354[1] = 3221225472;
            v354[2] = sub_2210F87B8;
            v354[3] = &unk_27845EC10;
            v356 = &v357;
            v216 = v160;
            v355 = v216;
            objc_msgSend_performWrite_(v215, v217, v354, v218);
            objc_msgSend_setTextStyle_(v6, v219, *(v357.var1 + 5), v220);

            _Block_object_dispose(&v357, 8);
            v159 = v340;
          }

          v221 = objc_msgSend_cellStyle(v151, v156, v157, v158);
          v225 = v221;
          if (v221)
          {
            v339 = objc_msgSend_copyPropertyMap(v221, v222, v223, v224);
            v357.var0 = 0;
            v357.var1 = &v357;
            v357.var2.var0.var0.coordinate = 0x3032000000;
            v357.var2.var0.var0._tableUID._lower = sub_2210F7420;
            v357.var2.var0.var0._tableUID._upper = sub_2210F7430;
            v229 = objc_msgSend_cellStyle(v6, v226, v227, v228);
            v232 = v229;
            if (v229)
            {
              v233 = v229;
            }

            else
            {
              v233 = objc_msgSend_defaultCellStyleForCellID_(*(a1 + 48), v230, v26, v231);
            }

            v357.var2.var0.var1.coordinate = v233;

            v234 = *(a1 + 104);
            v351[0] = MEMORY[0x277D85DD0];
            v351[1] = 3221225472;
            v351[2] = sub_2210F8848;
            v351[3] = &unk_27845EC10;
            v353 = &v357;
            v235 = v339;
            v352 = v235;
            objc_msgSend_performWrite_(v234, v236, v351, v237);
            objc_msgSend_setCellStyle_(v6, v238, *(v357.var1 + 5), v239);

            _Block_object_dispose(&v357, 8);
            v159 = v340;
          }
        }
      }

      objc_msgSend_setConditionalStyle_(v6, v141, 0, v143);
    }

    else
    {
      v169 = objc_msgSend_documentRoot(*(a1 + 48), v138, v139, v140);
      v173 = objc_msgSend_calculationEngine(v169, v170, v171, v172);

      v176 = objc_msgSend_baseCellCoordForViewCellCoord_(*(a1 + 88), v174, v26, v175);
      v180 = objc_msgSend_conditionalStyleFormulaOwnerUID(*(a1 + 48), v177, v178, v179);
      *&v372 = v176;
      *(&v372 + 1) = v180;
      v373 = v181;
      v184 = objc_msgSend_conditionalStyleFormulaOwnerUID(*(a1 + 40), v181, v182, v183);
      v357.var0 = v16;
      v357.var1 = v184;
      v357.var2.var0.var0.coordinate = v185;
      sub_2212C726C(&v371, &v372, &v357);
      if (!*(*(*(a1 + 120) + 8) + 40))
      {
        v186 = *(a1 + 48);
        v187 = TSUCellRect::columns((a1 + 136));
        if (v186)
        {
          objc_msgSend_columnUIDsForColumnRange_(v186, v188, v187, v188);
        }

        else
        {
          v368 = 0;
          v369 = 0;
          v370 = 0;
        }

        v189 = *(a1 + 48);
        v190 = TSUCellRect::rows((a1 + 136));
        if (v189)
        {
          objc_msgSend_rowUIDsForRowRange_(v189, v191, v190, v191);
        }

        else
        {
          v365 = 0;
          v366 = 0;
          v367 = 0;
        }

        sub_2210BBBE8(&v357, &v368, &v365);
        v363 = 0u;
        v364 = 0u;
        v362 = 0u;
        v192 = [TSTFormulaRewriteSpec alloc];
        v360 = objc_msgSend_tableUID(*(a1 + 48), v193, v194, v195);
        v361 = v196;
        v358 = objc_msgSend_tableUID(*(a1 + 40), v196, v197, v198);
        v359 = v199;
        v202 = objc_msgSend_coordinateMapper(*(a1 + 88), v199, v200, v201);
        v204 = objc_msgSend_initForCategorizedTableBaseToChromeRewriterWithSrcTableUID_srcTract_dstTableUID_destTract_coordMapper_(v192, v203, &v360, &v357, &v358, &v362, v202);
        v205 = *(*(a1 + 120) + 8);
        v206 = *(v205 + 40);
        *(v205 + 40) = v204;

        if (*(&v363 + 1))
        {
          *&v364 = *(&v363 + 1);
          operator delete(*(&v363 + 1));
        }

        if (v362)
        {
          *(&v362 + 1) = v362;
          operator delete(v362);
        }

        if (v357.var2.var0.var0._tableUID._lower)
        {
          v357.var2.var0.var0._tableUID._upper = v357.var2.var0.var0._tableUID._lower;
          operator delete(v357.var2.var0.var0._tableUID._lower);
        }

        if (v357.var0)
        {
          v357.var1 = v357.var0;
          operator delete(v357.var0);
        }

        if (v365)
        {
          v366 = v365;
          operator delete(v365);
        }

        if (v368)
        {
          v369 = v368;
          operator delete(v368);
        }
      }

      TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v357, v173, &v371);
      v210 = objc_msgSend_conditionalStyle(v6, v207, v208, v209);
      v348[0] = MEMORY[0x277D85DD0];
      v348[1] = 3221225472;
      v348[2] = sub_2210F88D8;
      v348[3] = &unk_27845EC38;
      v350 = *(a1 + 120);
      v349 = *(a1 + 80);
      v212 = objc_msgSend_copyByRewritingWithContext_rewriteBlock_(v210, v211, &v357, v348);

      objc_msgSend_setConditionalStyle_(v6, v213, v212, v214);
    }
  }

  v240 = objc_msgSend_cellSpec(v6, v138, v139, v140);
  v244 = objc_msgSend_asChooserControlSpec(v240, v241, v242, v243);

  if (v244)
  {
    v248 = objc_msgSend_popupModel(v244, v245, v246, v247);
    v251 = objc_msgSend_copyWithContext_(v248, v249, *(a1 + 72), v250);

    Item = objc_msgSend_startWithFirstItem(v244, v252, v253, v254);
    v257 = objc_msgSend_popupCellSpec_startWithFirstItem_(TSTCellChooserControlSpec, v256, v251, Item);
    objc_msgSend_setCellSpec_(v6, v258, v257, v259);
  }

  if (objc_msgSend_containsIndex_(*(a1 + 56), v245, v13, v247))
  {
    goto LABEL_100;
  }

  v263 = *(a1 + 160);
  v264 = HIDWORD(v263);
  if (!HIDWORD(v263) || !v263)
  {
    goto LABEL_135;
  }

  v265 = *(a1 + 152);
  v266 = v265 & 0xFFFF00000000;
  if (v265 != 0x7FFFFFFF || v266 == 0x7FFF00000000)
  {
    v267 = v265 != 0x7FFFFFFF || v266 == 0x7FFF00000000;
    v268 = !v267;
    if (v265 > v13 && !v268)
    {
      goto LABEL_135;
    }

    v269 = v265 + v264 - 1;
    if (v265 == 0x7FFFFFFF)
    {
      v269 = 0x7FFFFFFF;
    }

    if (v269 < v13)
    {
LABEL_135:
      if (objc_msgSend_containsIndex_(*(a1 + 112), v260, WORD2(v13), v262))
      {
LABEL_100:
        if ((objc_msgSend_hasCellStyle(v6, v260, v261, v262) & 1) == 0)
        {
          v273 = objc_msgSend_defaultCellStyleForCellID_(*(a1 + 48), v270, v26, v272);
          objc_msgSend_setCellStyle_(v6, v274, v273, v275);
        }

        if ((objc_msgSend_hasTextStyle(v6, v270, v271, v272) & 1) == 0)
        {
          v276 = objc_msgSend_defaultTextStyleForCellID_(*(a1 + 48), v260, v26, v262);
          objc_msgSend_setTextStyle_(v6, v277, v276, v278);
        }
      }
    }
  }

  if (*(a1 + 169) == 1 && (objc_msgSend_isAPivotTable(*(a1 + 48), v260, v261, v262) && (objc_msgSend_numberOfHeaderRows(*(a1 + 48), v260, v279, v280) > v13 || objc_msgSend_numberOfHeaderColumns(*(a1 + 48), v260, v281, v282) > WORD2(v13)) || objc_msgSend_isCategorized(*(a1 + 48), v260, v279, v280) && objc_msgSend_containsIndex_(*(a1 + 56), v260, v13, v262)))
  {
    LOBYTE(v368) = 0;
    LODWORD(v362) = 4;
    LODWORD(v372) = 1;
    objc_msgSend_getTextPropertiesWithCell_cellID_wraps_alignment_verticalAlignment_padding_(*(a1 + 48), v260, v6, v26, &v368, &v362, &v372, 0);
    v357.var0 = 0;
    v357.var1 = &v357;
    v357.var2.var0.var0.coordinate = 0x3032000000;
    v357.var2.var0.var0._tableUID._lower = sub_2210F7420;
    v357.var2.var0.var0._tableUID._upper = sub_2210F7430;
    v357.var2.var0.var1.coordinate = objc_msgSend_textStyle(v6, v283, v284, v285);
    v288 = *(v357.var1 + 5);
    if (!v288)
    {
      v289 = objc_msgSend_defaultTextStyleForCellID_(*(a1 + 48), v286, v26, v287);
      v290 = *(v357.var1 + 5);
      *(v357.var1 + 5) = v289;

      v288 = *(v357.var1 + 5);
    }

    v291 = objc_msgSend_intValueForProperty_(v288, v286, 86, v287);
    if (v291 != v362)
    {
      v294 = objc_alloc(MEMORY[0x277D80AB8]);
      v297 = objc_msgSend_initWithPropertiesAndValues_(v294, v295, 86, v296, v362, 0);
      v301 = v297;
      if (*(a1 + 170) == 1)
      {
        v302 = objc_msgSend_stylesheet(*(v357.var1 + 5), v298, v299, v300);
        v304 = objc_msgSend_variationOfStyle_propertyMap_(v302, v303, *(v357.var1 + 5), v301);
        v305 = *(v357.var1 + 5);
        *(v357.var1 + 5) = v304;
      }

      else
      {
        v306 = *(a1 + 104);
        v345[0] = MEMORY[0x277D85DD0];
        v345[1] = 3221225472;
        v345[2] = sub_2210F892C;
        v345[3] = &unk_27845EC10;
        v347 = &v357;
        v346 = v297;
        objc_msgSend_performWrite_(v306, v307, v345, v308);
        v302 = v346;
      }
    }

    objc_msgSend_setTextStyle_(v6, v292, *(v357.var1 + 5), v293);
    v371.var0.coordinate = 0;
    v371.var0._tableUID._lower = &v371;
    v371.var0._tableUID._upper = 0x3032000000;
    v371.var1.coordinate = sub_2210F7420;
    v371.var1._tableUID._lower = sub_2210F7430;
    v371.var1._tableUID._upper = objc_msgSend_cellStyle(v6, v309, v310, v311);
    v314 = *(v371.var0._tableUID._lower + 40);
    if (!v314)
    {
      v315 = objc_msgSend_defaultCellStyleForCellID_(*(a1 + 48), v312, v26, v313);
      v316 = *(v371.var0._tableUID._lower + 40);
      *(v371.var0._tableUID._lower + 40) = v315;

      v314 = *(v371.var0._tableUID._lower + 40);
    }

    v317 = objc_msgSend_intValueForProperty_(v314, v312, 896, v313);
    v320 = objc_msgSend_intValueForProperty_(*(v371.var0._tableUID._lower + 40), v318, 903, v319);
    if (v320 == 0x80000000)
    {
      v323 = 1;
    }

    else
    {
      v323 = v320;
    }

    if (v323 != v372 || v368 != ((v317 & 0x7FFFFFFF) != 0))
    {
      v324 = objc_alloc(MEMORY[0x277D80AB8]);
      v327 = objc_msgSend_initWithPropertiesAndValues_(v324, v325, 896, v326, v368, 903, v372, 0);
      v331 = v327;
      if (*(a1 + 170) == 1)
      {
        v332 = objc_msgSend_stylesheet(*(v371.var0._tableUID._lower + 40), v328, v329, v330);
        v334 = objc_msgSend_variationOfStyle_propertyMap_(v332, v333, *(v371.var0._tableUID._lower + 40), v331);
        v335 = *(v371.var0._tableUID._lower + 40);
        *(v371.var0._tableUID._lower + 40) = v334;
      }

      else
      {
        v336 = *(a1 + 104);
        v342[0] = MEMORY[0x277D85DD0];
        v342[1] = 3221225472;
        v342[2] = sub_2210F89BC;
        v342[3] = &unk_27845EC10;
        v344 = &v371;
        v343 = v327;
        objc_msgSend_performWrite_(v336, v337, v342, v338);
        v332 = v343;
      }
    }

    objc_msgSend_setCellStyle_(v6, v321, *(v371.var0._tableUID._lower + 40), v322);
    _Block_object_dispose(&v371, 8);

    _Block_object_dispose(&v357, 8);
  }

  if (v6 || (objc_msgSend_isEmpty(0, v260, v261, v262) & 1) == 0)
  {
    objc_msgSend_setCell_atBaseCellCoord_ignoreFormula_clearImportWarnings_(*(a1 + 40), v260, v6, v16, 1, 1);
  }
}

void sub_2210F84B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_22109DBB8(&a65);
  sub_22109DBB8(&a48);
  v70 = *(v68 - 256);
  if (v70)
  {
    *(v68 - 248) = v70;
    operator delete(v70);
  }

  v71 = *(v68 - 232);
  if (v71)
  {
    *(v68 - 224) = v71;
    operator delete(v71);
  }

  _Unwind_Resume(a1);
}

void sub_2210F87B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_msgSend_stylesheet(*(*(*(a1 + 40) + 8) + 40), a2, a3, a4);
  v6 = objc_msgSend_variationOfStyle_propertyMap_(v9, v5, *(*(*(a1 + 40) + 8) + 40), *(a1 + 32));
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_2210F8848(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_msgSend_stylesheet(*(*(*(a1 + 40) + 8) + 40), a2, a3, a4);
  v6 = objc_msgSend_variationOfStyle_propertyMap_(v9, v5, *(*(*(a1 + 40) + 8) + 40), *(a1 + 32));
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

id sub_2210F88D8(uint64_t a1, void *a2, TSCEFormulaRewriteContext *a3)
{
  v3 = sub_221491A58(a2, a3, *(*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 272));

  return v3;
}

void sub_2210F892C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_msgSend_stylesheet(*(*(*(a1 + 40) + 8) + 40), a2, a3, a4);
  v6 = objc_msgSend_variationOfStyle_propertyMap_(v9, v5, *(*(*(a1 + 40) + 8) + 40), *(a1 + 32));
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_2210F89BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_msgSend_stylesheet(*(*(*(a1 + 40) + 8) + 40), a2, a3, a4);
  v6 = objc_msgSend_variationOfStyle_propertyMap_(v9, v5, *(*(*(a1 + 40) + 8) + 40), *(a1 + 32));
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

double sub_2210F8A4C(uint64_t a1, const char *a2)
{
  objc_msgSend_heightOfRowAtIndex_isDefault_(*(*(a1 + 32) + 200), a2, a2, 0);
  v3 = *(*(a1 + 40) + 8);
  result = v4 + *(v3 + 24);
  *(v3 + 24) = result;
  return result;
}

double sub_2210F8A9C(uint64_t a1, const char *a2)
{
  objc_msgSend_widthOfColumnAtIndex_isDefault_(*(*(a1 + 32) + 200), a2, a2, 0);
  v3 = *(*(a1 + 40) + 8);
  result = v4 + *(v3 + 24);
  *(v3 + 24) = result;
  return result;
}

void sub_2210F9200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);

  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

double sub_2210F938C(uint64_t a1, const char *a2)
{
  objc_msgSend_heightOfRowAtIndex_isDefault_(*(*(a1 + 32) + 200), a2, a2, 0);
  v3 = *(*(a1 + 40) + 8);
  result = v4 + *(v3 + 24);
  *(v3 + 24) = result;
  return result;
}

double sub_2210F93DC(uint64_t a1, const char *a2)
{
  objc_msgSend_widthOfColumnAtIndex_isDefault_(*(*(a1 + 32) + 200), a2, a2, 0);
  v3 = *(*(a1 + 40) + 8);
  result = v4 + *(v3 + 24);
  *(v3 + 24) = result;
  return result;
}

void sub_2210F9548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = TSTTableInfo;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2210FA4C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2210FAE98()
{
  v0 = objc_alloc(MEMORY[0x277CCAB00]);
  v2 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v0, v1, 517, 512, 0);
  v3 = qword_27CFB51A0;
  qword_27CFB51A0 = v2;

  dword_27CFB51A8 = 0;
}

void sub_2210FB3E8(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_2210FCEFC(_Unwind_Exception *a1)
{
  sub_22107C860(v3 + 16, *(v3 + 24));

  _Unwind_Resume(a1);
}

void sub_2210FCFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2210BC30C(va);
  _Unwind_Resume(a1);
}

id sub_2210FEDF8(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    objc_msgSend_addObject_(*(a1 + 32), v3, v5, v4);
  }

  return v5;
}

void sub_2210FEFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_2210FF04C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 32) + 16))();
  if (v4 != v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return v4;
}

uint64_t sub_221100234(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v9 = v5;
  if (!(v4 | v5))
  {
LABEL_2:
    v10 = 1;
    goto LABEL_3;
  }

  v10 = 0;
  if (v4 && v5)
  {
    v12 = objc_msgSend_count(v4, v6, v7, v8);
    if (v12 != objc_msgSend_count(v9, v13, v14, v15))
    {
LABEL_14:
      v10 = 0;
      goto LABEL_3;
    }

    v21 = objc_msgSend_count(v4, v16, v17, v18);
    if (v21)
    {
      for (i = 0; i != v21; ++i)
      {
        v23 = objc_msgSend_objectAtIndexedSubscript_(v4, v19, i, v20);
        objc_msgSend_floatValue(v23, v24, v25, v26);
        v28 = v27;
        v31 = objc_msgSend_objectAtIndexedSubscript_(v9, v29, i, v30);
        objc_msgSend_floatValue(v31, v32, v33, v34);
        if (v28 == v35)
        {
        }

        else
        {
          v36 = v28;
          v37 = v35;
          v38 = fabs(v37 * 0.000000999999997);
          v39 = vabdd_f64(v36, v37);

          if (v39 >= v38)
          {
            goto LABEL_14;
          }
        }
      }
    }

    goto LABEL_2;
  }

LABEL_3:

  return v10;
}

id sub_221100EA0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_context(*(a1 + 32), a2, a3, a4);
  v7 = objc_msgSend_cellMapWithContext_(TSTCellMap, v5, v4, v6);

  return v7;
}

uint64_t sub_221100F10(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ((objc_msgSend_cellHasCommentStorage(v4, v6, v7, v8) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableInfo allAnnotations]_block_invoke_2", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 4698, 0, "iterator shoul only return cells with comments");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  v21 = objc_msgSend_cellID(v4, v9, v10, v11);
  objc_msgSend_addCell_andCellID_(v5, v22, 0, v21);

  return 0;
}

void sub_221101018(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2211010BC;
  v6[3] = &unk_27845EDC0;
  v3 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  objc_msgSend_enumerateObjectsUsingBlock_(a2, v4, v6, v5);
}

void sub_2211010BC(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221101160;
  v6[3] = &unk_27845ED98;
  v3 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  objc_msgSend_enumerateCellsWithIDsUsingBlock_(a2, v4, v6, v5);
}

void sub_221101160(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_commentHostingAtCellID_(*(a1 + 32), a2, a2, a4);
  objc_msgSend_addObject_(*(a1 + 40), v5, v7, v6);
}

void sub_2211019F4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_cellHasFormula(v3, v4, v5, v6))
  {
    v20 = 0u;
    v21 = 0u;
    v10 = *(a1 + 32);
    v11 = objc_msgSend_cellID(v3, v7, v8, v9, 0, 0, 0, 0);
    if (v10)
    {
      objc_msgSend_cellUIDForCellID_(v10, v12, v11, v14);
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v15 = objc_msgSend_cell(v3, v12, v13, v14, v20, v21);
    objc_msgSend_bakeFormulaToValue(v15, v16, v17, v18);
    objc_msgSend_addCell_andCellUID_(*(a1 + 40), v19, v15, &v20);
  }
}

void sub_221101CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v16 = v14;

  _Unwind_Resume(a1);
}

void sub_221102B70(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14 = objc_msgSend_cell(a2, a2, a3, a4);
  v9 = objc_msgSend_getPredArgDataFromCell_(TSTFormulaPredArgData, v5, v14, v6);
  if (v9 && (objc_msgSend_containsObject_(*(a1 + 32), v7, v9, v8) & 1) == 0)
  {
    objc_msgSend_addObject_(*(a1 + 32), v10, v9, v11);
    objc_msgSend_addObject_(*(a1 + 40), v12, v9, v13);
  }
}

void sub_221102EB8(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_221104AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

uint64_t sub_221104FA4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_clear(*(a1 + 32), a2, a3, a4);
  objc_msgSend_getCell_atCellUID_(*(a1 + 40), v6, *(a1 + 32), a2);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);

  return objc_msgSend_addCell_andCellUID_(v8, v7, v9, a2);
}

TSTCellMap *sub_221104FF8(uint64_t a1)
{
  v2 = [TSTCellMap alloc];
  v4 = objc_msgSend_initWithContext_uidBased_(v2, v3, 0, *(a1 + 32));

  return v4;
}

uint64_t sub_221105040(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = objc_msgSend_cell(v5, v7, v8, v9);
  v14 = objc_msgSend_cellID(v5, v11, v12, v13);
  v46.origin = objc_msgSend_mergeRange(v5, v15, v16, v17);
  v46.size = v18;
  if (objc_msgSend_isEmpty(v10, v18, v19, v20))
  {
    v24 = objc_msgSend_cellBorder(v10, v21, v22, v23);
    if (objc_msgSend_hasContent(v24, v25, v26, v27))
    {
      v28 = v10;
    }

    else
    {
      v28 = 0;
    }

    if (!v28)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v28 = v10;
    if (!v28)
    {
      goto LABEL_21;
    }
  }

  if (*(a1 + 64) == 1)
  {
    if (TSUCellRect::isValid(&v46))
    {
      origin = v46.origin;
      if (v46.origin.row == v14 && ((*&v46.origin ^ v14) & 0x101FFFF00000000) == 0 && (objc_msgSend_containsCellRange_(*(a1 + 32), v29, *&v46.origin, *&v46.size) & 1) == 0)
      {
        v32 = objc_msgSend_newCell(*(a1 + 40), v29, origin, v31);

        v28 = v32;
        objc_msgSend_copyJustStrokesToCell_(v10, v33, v32, v34);
      }
    }
  }

  if (*(a1 + 65) == 1)
  {
    objc_msgSend_convertFormulasToUidForm_atCellID_preserveHostCell_(*(a1 + 40), v29, v28, v14, 0);
  }

  if ((*(a1 + 66) & 1) != 0 || objc_msgSend_isAPivotTable(*(a1 + 40), v29, origin, v31))
  {
    objc_msgSend_flattenGroupValuesIfNeededForCell_viewCellCoord_summaryAndLabelRows_categoryColumns_(*(a1 + 40), v29, v28, v14, *(a1 + 48), *(a1 + 56));
  }

  v37 = objc_msgSend_cellBorder(v28, v29, v35, v36);

  if (!v37)
  {
    v39 = objc_msgSend_cellBorder(TSTCellBorder, v29, v38, v31);
    objc_msgSend_setCellBorder_(v28, v40, v39, v41);
  }

LABEL_21:
  if (*(a1 + 65) == 1)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = *(a1 + 40);
    if (v42)
    {
      objc_msgSend_cellUIDForCellID_(v42, v29, v14, v31, v44, v45);
    }

    objc_msgSend_addCell_andCellUID_(v6, v29, v28, &v44);
  }

  else
  {
    objc_msgSend_addCell_andCellID_(v6, v29, v28, v14);
  }

  return 0;
}

void sub_2211052AC(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a2;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v9, v13, 16);
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_appendCellMap_precopied_(*(a1 + 32), v5, *(*(&v9 + 1) + 8 * v8++), 1, v9);
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v9, v13, 16);
    }

    while (v6);
  }
}

TSTConcurrentCellList *sub_2211056DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [TSTConcurrentCellList alloc];
  v10 = objc_msgSend_context(*(a1 + 32), v7, v8, v9);
  v12 = objc_msgSend_initWithContext_viewCellRect_(v6, v11, v10, a2, a3);

  return v12;
}

uint64_t sub_22110576C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v11 = objc_msgSend_cell(v6, v8, v9, v10);
  v15 = objc_msgSend_cellID(v6, v12, v13, v14);
  v38.origin = objc_msgSend_mergeRange(v6, v16, v17, v18);
  v38.size = v19;
  isEmpty = objc_msgSend_isEmpty(v11, v19, v20, v21);
  if (isEmpty)
  {
    v3 = objc_msgSend_cellBorder(v11, v22, v23, v24);
    if (!objc_msgSend_hasContent(v3, v26, v27, v28))
    {
      v33 = 0;
LABEL_7:

      if (!v33)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }
  }

  v29 = objc_msgSend_copy(v11, v22, v23, v24);
  v33 = v29;
  if (isEmpty)
  {
    goto LABEL_7;
  }

  if (!v29)
  {
    goto LABEL_17;
  }

LABEL_8:
  if (*(a1 + 64) == 1)
  {
    if (TSUCellRect::isValid(&v38))
    {
      origin = v38.origin;
      if (v38.origin.row == v15 && ((*&v38.origin ^ v15) & 0x101FFFF00000000) == 0 && (objc_msgSend_containsCellRange_(*(a1 + 32), v30, *&v38.origin, *&v38.size) & 1) == 0)
      {
        v34 = objc_msgSend_newCell(*(a1 + 40), v30, origin, v32);

        v33 = v34;
        objc_msgSend_copyJustStrokesToCell_(v11, v35, v34, v36);
      }
    }
  }

  if ((*(a1 + 65) & 1) != 0 || objc_msgSend_isAPivotTable(*(a1 + 40), v30, origin, v32))
  {
    objc_msgSend_flattenGroupValuesIfNeededForCell_viewCellCoord_summaryAndLabelRows_categoryColumns_(*(a1 + 40), v30, v33, v15, *(a1 + 48), *(a1 + 56));
  }

LABEL_17:
  objc_msgSend_addCell_atViewCellCoord_(v7, v30, v33, v15);

  return 0;
}

void sub_221105A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_221105A44(uint64_t a1, const char *a2)
{
  result = objc_msgSend_getCell_atCellID_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 56));
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_22110751C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_221108000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_221108144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_221108324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *__p, uint64_t a15)
{
  v17 = v16;

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_2211093AC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Total", &stru_2834BADA0, @"TSTables");

  return v2;
}

id sub_2211093F4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Row Group", &stru_2834BADA0, @"TSTables");

  return v2;
}

id sub_22110943C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Column Group", &stru_2834BADA0, @"TSTables");

  return v2;
}

id sub_221109484(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Grand Total", &stru_2834BADA0, @"TSTables");

  return v2;
}

id sub_2211094CC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Summary", &stru_2834BADA0, @"TSTables");

  return v2;
}

void sub_221109B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_221109CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_221109D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_221109DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22110C05C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (*(a1 + 80) != -1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = objc_msgSend_strokeLayerForColumn_(*(a1 + 32), a2, (v6 + *(a1 + 72)), a4);
        v10 = objc_msgSend_strokeLayerForColumn_(*(a1 + 40), v8, v6, v9);
        v14 = objc_msgSend_context(*(a1 + 48), v11, v12, v13);
        v16 = objc_msgSend_mutableStrokeLayerWithContext_subtractingDefaultsFrom_forRange_(v7, v15, v14, v10, *(a1 + 56), *(a1 + 64));

        if (v6)
        {
          v20 = v6 - 1;
        }

        else
        {
          v20 = 0x7FFF;
        }

        if (v6 != 0x7FFF && *(a1 + 80) > v5 && (objc_msgSend_isEmpty(v16, v17, v18, v19) & 1) == 0)
        {
          v21 = objc_msgSend_strokeSidecar(*(a1 + 48), v17, v18, v19);
          objc_msgSend_setStrokeLayer_forLeftOfColumn_(v21, v22, v16, v6);
        }

        if (v20 != 0x7FFF && (objc_msgSend_isEmpty(v16, v17, v18, v19) & 1) == 0)
        {
          v26 = objc_msgSend_strokeSidecar(*(a1 + 48), v23, v24, v25);
          objc_msgSend_setStrokeLayer_forRightOfColumn_(v26, v27, v16, v20);
        }

        v5 = (v6 + 1);
        v6 = v5;
      }

      while (*(a1 + 80) + 1 > v5);
    }
  }

  else if (*(a1 + 64) != -1)
  {
    v28 = 0;
    v29 = 1;
    v30 = 0x7FFFFFFF;
    do
    {
      v31 = objc_msgSend_strokeLayerForRow_(*(a1 + 32), a2, v29 - 1 + *(a1 + 56), a4);
      v34 = objc_msgSend_strokeLayerForRow_(*(a1 + 40), v32, v29 - 1, v33);
      v38 = objc_msgSend_context(*(a1 + 48), v35, v36, v37);
      v40 = objc_msgSend_mutableStrokeLayerWithContext_subtractingDefaultsFrom_forRange_(v31, v39, v38, v34, *(a1 + 72), *(a1 + 80));

      if (v29 == 1)
      {
        v44 = 0x7FFFFFFFLL;
      }

      else
      {
        v44 = v29 - 2;
      }

      if (v30 && *(a1 + 64) > v28 && (objc_msgSend_isEmpty(v40, v41, v42, v43) & 1) == 0)
      {
        v45 = objc_msgSend_strokeSidecar(*(a1 + 48), v41, v42, v43);
        objc_msgSend_setStrokeLayer_forTopOfRow_(v45, v46, v40, v29 - 1);
      }

      if (v44 != 0x7FFFFFFF && (objc_msgSend_isEmpty(v40, v41, v42, v43) & 1) == 0)
      {
        v50 = objc_msgSend_strokeSidecar(*(a1 + 48), v47, v48, v49);
        objc_msgSend_setStrokeLayer_forBottomOfRow_(v50, v51, v40, v44);
      }

      v28 = v29;
      v52 = *(a1 + 64) + 1 > v29++;
      --v30;
    }

    while (v52);
  }
}

void sub_22110C8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_22110C938(__n128 *a1, __n128 *a2)
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

void sub_22110C95C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_22110C974(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_cell(v3, v4, v5, v6);
  v11 = objc_msgSend_conditionalStyle(v7, v8, v9, v10);

  if (v11 == *(a1 + 32))
  {
    v15 = *(*(a1 + 40) + 8);
    v16 = objc_msgSend_cellID(v3, v12, v13, v14);
    v21 = v15[7];
    v20 = v15[8];
    if (v21 >= v20)
    {
      v23 = v15[6];
      v24 = (v21 - v23) >> 3;
      if ((v24 + 1) >> 61)
      {
        sub_22107C148();
      }

      v25 = v20 - v23;
      v26 = v25 >> 2;
      if (v25 >> 2 <= (v24 + 1))
      {
        v26 = v24 + 1;
      }

      if (v25 >= 0x7FFFFFFFFFFFFFF8)
      {
        v27 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v26;
      }

      if (v27)
      {
        sub_2210874C4((v15 + 6), v27);
      }

      v28 = (8 * v24);
      *v28 = v16;
      v22 = 8 * v24 + 8;
      v29 = v15[6];
      v30 = v15[7] - v29;
      v31 = v28 - v30;
      memcpy(v28 - v30, v29, v30);
      v32 = v15[6];
      v15[6] = v31;
      v15[7] = v22;
      v15[8] = 0;
      if (v32)
      {
        operator delete(v32);
      }
    }

    else
    {
      *v21 = v16;
      v22 = (v21 + 1);
    }

    v15[7] = v22;
    v34 = objc_msgSend_mergeRange(v3, v17, v18, v19);
    if (v34 != 0x7FFFFFFF && (v34 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(v33) && v33)
    {
      v35 = objc_msgSend_regionFromRange_(TSTCellRegion, v33, v34, v33);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = sub_22110CBA4;
      v40[3] = &unk_27845EF48;
      v36 = v3;
      v37 = *(a1 + 40);
      v41 = v36;
      v42 = v37;
      objc_msgSend_enumerateCellIDsUsingBlock_(v35, v38, v40, v39);
    }
  }
}

void sub_22110CBA4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_cellID(*(a1 + 32), a2, a3, a4);
  if (a2 != v6 || ((v6 ^ a2) & 0xFFFF00000000) != 0)
  {
    v8 = *(*(a1 + 40) + 8);
    v10 = v8[7];
    v9 = v8[8];
    if (v10 >= v9)
    {
      v12 = v8[6];
      v13 = (v10 - v12) >> 3;
      if ((v13 + 1) >> 61)
      {
        sub_22107C148();
      }

      v14 = v9 - v12;
      v15 = v14 >> 2;
      if (v14 >> 2 <= (v13 + 1))
      {
        v15 = v13 + 1;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      if (v16)
      {
        sub_2210874C4((v8 + 6), v16);
      }

      v17 = (8 * v13);
      *v17 = a2;
      v11 = 8 * v13 + 8;
      v18 = v8[6];
      v19 = v8[7] - v18;
      v20 = v17 - v19;
      memcpy(v17 - v19, v18, v19);
      v21 = v8[6];
      v8[6] = v20;
      v8[7] = v11;
      v8[8] = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v10 = a2;
      v11 = (v10 + 1);
    }

    v8[7] = v11;
  }
}

void sub_22110D1E8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_22110D36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_22110D388(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_22110D398(uint64_t a1, void *a2)
{
  v66 = a2;
  v6 = objc_msgSend_cell(v66, v3, v4, v5);
  v10 = objc_msgSend_valueType(v6, v7, v8, v9);

  v14 = objc_msgSend_cell(v66, v11, v12, v13);
  v18 = objc_msgSend_interactionType(v14, v15, v16, v17);

  if (v18 == 8)
  {
    v28 = objc_msgSend_cell(v66, v19, v20, v21);
    v32 = objc_msgSend_BOOLValue(v28, v29, v30, v31);

    if ((v32 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v18 == 6)
  {
    v22 = objc_msgSend_cell(v66, v19, v20, v21);
    objc_msgSend_numberDoubleValue(v22, v23, v24, v25);
    v27 = v26;

    if (v27 == 0.0)
    {
      goto LABEL_22;
    }
  }

  if (v10 == 3)
  {
    v33 = objc_msgSend_cell(v66, v19, v20, v21);
    v37 = objc_msgSend_formattedValue(v33, v34, v35, v36);

    if (!v37)
    {
      goto LABEL_22;
    }

    goto LABEL_8;
  }

  v45 = objc_msgSend_cell(v66, v19, v20, v21);
  hasValueOrError = objc_msgSend_hasValueOrError(v45, v46, v47, v48);

  if ((hasValueOrError & 1) == 0 && (objc_msgSend_cellHasCommentStorage(v66, v42, v43, v44) & 1) == 0)
  {
    v62 = objc_msgSend_cell(v66, v42, v43, v44);
    v37 = objc_msgSend_formattedValue(v62, v63, v64, v65);

    if (!v37)
    {
      goto LABEL_22;
    }

LABEL_8:
    v41 = objc_msgSend_length(v37, v38, v39, v40);

    if (!v41)
    {
      goto LABEL_22;
    }
  }

  v50 = objc_msgSend_cellID(v66, v42, v43, v44);
  v54 = objc_msgSend_mergeRange(v66, v51, v52, v53);
  if (v54 != 0x7FFFFFFF && (v54 & 0xFFFF00000000) != 0x7FFF00000000 && v55 >> 32 && v55)
  {
    v58 = objc_msgSend_mergeRange(v66, v55, v56, v57);
    v50 = (v58 + (v59 << 32) + 0xFFFF00000000) & 0xFFFF00000000 | (v58 + HIDWORD(v59) - 1);
  }

  if (*(a1 + 40) >= v50)
  {
    v60 = *(*(a1 + 32) + 8);
    if ((v50 + 1) > *(v60 + 60))
    {
      *(v60 + 60) = v50 + 1;
    }
  }

  v61 = *(*(a1 + 32) + 8);
  if (WORD2(v50) >= *(v61 + 56))
  {
    *(v61 + 56) = WORD2(v50) + 1;
  }

LABEL_22:
}

void sub_22110E0F8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 152), 8);
  _Block_object_dispose((v1 - 120), 8);
  _Unwind_Resume(a1);
}

BOOL sub_22110E12C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7FFFFFFF)
  {
    return 0;
  }

  v3 = WORD2(a1) <= WORD2(a2) && a1 <= a2;
  if ((a2 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v3 = 0;
  }

  v4 = a2 != 0x7FFFFFFF && v3;
  return (a1 & 0xFFFF00000000) != 0x7FFF00000000 && v4;
}

void sub_22110E180(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v13 = v5;
    v9 = objc_msgSend_cell(v5, v6, v7, v8);
    *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_valueIsText(v9, v10, v11, v12);

    *(*(*(a1 + 40) + 8) + 24) = 1;
    v5 = v13;
  }

  else
  {
    *a3 = 1;
  }
}

void sub_22110E234(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v13 = v5;
    v9 = objc_msgSend_cell(v5, v6, v7, v8);
    *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_valueIsText(v9, v10, v11, v12);

    *(*(*(a1 + 40) + 8) + 24) = 1;
    v5 = v13;
  }

  else
  {
    *a3 = 1;
  }
}

void sub_22110EF28(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4)
{
  v59 = objc_msgSend_translator(*(a1 + 32), a2, a3, a4);
  v9 = objc_msgSend_groupLevelAtSummaryRow_(v59, v7, a2, v8);

  if (v9 == 255)
  {
    v12 = MEMORY[0x277D81150];
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableInfo cellUIDListFromCellRegion:useCategoriesWildcards:]_block_invoke", v11);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v14);
    v16 = *(a1 + 40);
    v20 = objc_msgSend_translator(*(a1 + 32), v17, v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v21, v60, v15, 7967, 0, "Invalid level for a summary row. We're about to crash. summaryRowIndex:%lu intersectingSummaryRowIndexes:{public}%@ translator:{public}%@", a2, v16, v20);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  if ((objc_msgSend_containsIndex_(*(a1 + 48), v10, v9, v11) & 1) == 0)
  {
    v27 = *(a1 + 56);
    v28 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v25, a2, v26);
    v61 = objc_msgSend_regionByIntersectingRowIndices_(v27, v29, v28, v30);

    if (objc_msgSend_cellCount(v61, v31, v32, v33))
    {
      v37 = objc_msgSend_pointerAtIndex_(*(a1 + 64), v34, v9, v36);
      if (v37)
      {
        v41 = v37;
      }

      else
      {
        v41 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v38, v39, v40);
      }

      v45 = v41;
      v46 = objc_msgSend_intersectingColumnsIndexSet(v61, v42, v43, v44);
      objc_msgSend_addIndexes_(v45, v47, v46, v48);

      objc_msgSend_replacePointerAtIndex_withPointer_(*(a1 + 64), v49, v9, v45);
      v53 = objc_msgSend_count(v45, v50, v51, v52);
      if (v53 == objc_msgSend_count(*(a1 + 72), v54, v55, v56))
      {
        objc_msgSend_addIndex_(*(a1 + 48), v57, v9, v58);
      }
    }

    if (objc_msgSend_count(*(a1 + 48), v34, v35, v36) == *(a1 + 80))
    {
      *a3 = 1;
    }
  }
}

void sub_22110F1B8(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v5 = a2;
  if (objc_msgSend_count(v5, v6, v7, v8))
  {
    v11 = *(a1 + 32);
    if (v11)
    {
      objc_msgSend_columnUIDsForColumnIndexes_(v11, v9, v5, v10);
      v12 = v18;
      v13 = v19;
      if (v18 != v19)
      {
        do
        {
          v14 = *(a1 + 40);
          sub_2211A8F64(a3, 0, v17);
          objc_msgSend_addCellUID_(v14, v15, v17, v16);
          v12 += 16;
        }

        while (v12 != v13);
        v12 = v18;
      }

      if (v12)
      {
        v19 = v12;
        operator delete(v12);
      }
    }
  }
}

void sub_22110F2A4(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4)
{
  v50 = objc_msgSend_translator(*(a1 + 32), a2, a3, a4);
  v9 = objc_msgSend_groupLevelAtLabelRow_(v50, v7, a2, v8);

  if (v9 == 255)
  {
    v12 = MEMORY[0x277D81150];
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableInfo cellUIDListFromCellRegion:useCategoriesWildcards:]_block_invoke_3", v11);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v14);
    v16 = *(a1 + 40);
    v20 = objc_msgSend_translator(*(a1 + 32), v17, v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v21, v51, v15, 8021, 0, "Invalid level for a label row. We're about to crash. labelRowIndex:%lu intersectingLabelRowIndexes:{public}%@ translator:{public}%@", a2, v16, v20);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  if ((objc_msgSend_containsIndex_(*(a1 + 48), v10, v9, v11) & 1) == 0)
  {
    v27 = *(a1 + 56);
    v28 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v25, a2, v26);
    v52 = objc_msgSend_regionByIntersectingRowIndices_(v27, v29, v28, v30);

    if (objc_msgSend_cellCount(v52, v31, v32, v33))
    {
      v37 = objc_msgSend_pointerAtIndex_(*(a1 + 64), v34, v9, v36);
      if (v37)
      {
        v41 = v37;
      }

      else
      {
        v41 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v38, v39, v40);
      }

      v45 = v41;
      v46 = objc_msgSend_intersectingColumnsIndexSet(v52, v42, v43, v44);
      objc_msgSend_addIndexes_(v45, v47, v46, v48);

      objc_msgSend_replacePointerAtIndex_withPointer_(*(a1 + 64), v49, v9, v45);
    }

    if (objc_msgSend_count(*(a1 + 48), v34, v35, v36) == *(a1 + 72))
    {
      *a3 = 1;
    }
  }
}

void sub_22110F50C(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v5 = a2;
  if (objc_msgSend_count(v5, v6, v7, v8))
  {
    v11 = *(a1 + 32);
    if (v11)
    {
      objc_msgSend_columnUIDsForColumnIndexes_(v11, v9, v5, v10);
      v12 = v18;
      v13 = v19;
      if (v18 != v19)
      {
        do
        {
          v14 = *(a1 + 40);
          sub_2211A8F64(a3, 1, v17);
          objc_msgSend_addCellUID_(v14, v15, v17, v16);
          v12 += 16;
        }

        while (v12 != v13);
        v12 = v18;
      }

      if (v12)
      {
        v19 = v12;
        operator delete(v12);
      }
    }
  }
}

void sub_22110FB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
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

void sub_221110F50(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v7 = a4;
  v10 = objc_msgSend_summaryModel(*(a1 + 32), a2, a3, a4, a5);
  v14 = objc_msgSend_columnRowUIDMap(v10, v11, v12, v13);
  LODWORD(v7) = objc_msgSend_columnIndexForColumnUID_(v14, v15, a3, v7);

  if (v7 == 0x7FFF)
  {
    *a6 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_221112170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  sub_22109DBB8(&__p);

  _Unwind_Resume(a1);
}

void sub_2211133A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2211133E8(uint64_t a1, void *a2)
{
  v12 = a2;
  v6 = *(a1 + 32);
  if (!v6 || (v7 = objc_msgSend_groupUid(v12, v3, v4, v5), (*(v6 + 16))(v6, v7, v8)))
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = objc_msgSend_groupUid(v12, v3, v4, v5);
    objc_msgSend_addUUID_(v9, v11, v10, v11);
  }
}

void sub_221113610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_221113650(uint64_t a1, void *a2)
{
  v12 = a2;
  v6 = *(a1 + 32);
  if (!v6 || (v7 = objc_msgSend_groupUid(v12, v3, v4, v5), (*(v6 + 16))(v6, v7, v8)))
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = objc_msgSend_groupUid(v12, v3, v4, v5);
    objc_msgSend_addUUID_(v9, v11, v10, v11);
  }
}

void sub_221113D70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v18[0] = objc_msgSend_groupUid(v3, v5, v6, v7);
  v18[1] = v8;
  if (!sub_221119F90(v4, v18))
  {
    v12 = *(a1 + 32);
    v13 = objc_msgSend_groupUid(v3, v9, v10, v11);
    v15 = objc_msgSend_rowIndexForRowUID_(v12, v14, v13, v14);
    if (v15 != 0x7FFFFFFF)
    {
      objc_msgSend_addIndex_(*(a1 + 40), v16, v15, v17);
    }
  }
}

void sub_221114310(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(objc_msgSend_aggNodes(v3, v4, v5, v6) + 24))
  {
    v10 = *(a1 + 48);
    v28[0] = objc_msgSend_groupUid(v3, v7, v8, v9);
    v28[1] = v11;
    if (!sub_221119F90(v10, v28))
    {
      v15 = objc_msgSend_parentNode(v3, v12, v13, v14);
      v19 = objc_msgSend_groupUid(v15, v16, v17, v18);
      v21 = sub_2211A8DF4(v19, v20);
      v23 = v22;

      v25 = objc_msgSend_rowIndexForRowUID_(*(a1 + 32), v24, v21, v23);
      if (v25 != 0x7FFFFFFF)
      {
        objc_msgSend_addIndex_(*(a1 + 40), v26, v25, v27);
      }
    }
  }
}

void sub_221115198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_2211151B0(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  result = objc_msgSend_groupingType(a2, a2, a3, a4);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

void sub_2211158D4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v5 - 112), 8);

  _Unwind_Resume(a1);
}

void *sub_2211159D4(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4)
{
  v5 = a2;
  v7 = objc_msgSend_categoryColumnIndex(*(a1 + 32), a2, a3, a4);
  result = objc_msgSend_hasGroupingArrowAtCellID_(*(a1 + 32), v8, v5 | (v7 << 32), v9);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void *sub_221115A34(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4)
{
  result = objc_msgSend_hasGroupingArrowAtCellID_(*(a1 + 32), a2, a2, a4);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void *sub_221115A7C(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4)
{
  result = objc_msgSend_hasGroupingArrowAtCellID_(*(a1 + 32), a2, a2, a4);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_221116B04(uint64_t a1, void *a2)
{
  v16 = a2;
  objc_storeStrong((*(a1 + 32) + 312), a2);
  v7 = objc_msgSend_sortRuleReferenceTracker(*(*(a1 + 32) + 312), v4, v5, v6);
  v11 = objc_msgSend_tableUID(*(*(a1 + 32) + 312), v8, v9, v10);
  objc_msgSend_setBaseTableUID_(v7, v12, v11, v12);

  objc_msgSend_clearPivotOwner(*(*(a1 + 32) + 312), v13, v14, v15);
}

void sub_221116BCC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 320), a2);
  v6 = a2;
  objc_msgSend_setTableInfo_(*(*(a1 + 32) + 320), v4, *(a1 + 32), v5);
}

void sub_221116C50(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_baseTableModel(*(a1 + 32), a2, a3, a4);

  if (!v5)
  {
    return;
  }

  v9 = objc_msgSend_baseTableModel(*(a1 + 32), v6, v7, v8);
  objc_msgSend_setTableInfo_(v9, v10, *(a1 + 32), v11);

  v15 = objc_msgSend_baseTableModel(*(a1 + 32), v12, v13, v14);
  v19 = objc_msgSend_categoryOwner(v15, v16, v17, v18);
  v22 = objc_msgSend_groupByForOwnerIndex_(v19, v20, 8, v21);
  v23 = *(a1 + 32);
  v24 = *(v23 + 256);
  *(v23 + 256) = v22;

  v28 = *(a1 + 32);
  if (!v28[32])
  {
    v29 = [TSTGroupBy alloc];
    v33 = objc_msgSend_baseTableModel(*(a1 + 32), v30, v31, v32);
    v37 = objc_msgSend_categoryOwner(v33, v34, v35, v36);
    v278 = objc_msgSend_groupByUid(*(a1 + 32), v38, v39, v40);
    v279 = v41;
    v42 = objc_msgSend_initWithGroupings_categoryOwner_groupByUid_ownerIndex_(v29, v41, MEMORY[0x277CBEBF8], v37, &v278, 8);
    v43 = *(a1 + 32);
    v44 = *(v43 + 256);
    *(v43 + 256) = v42;

    v48 = objc_msgSend_baseTableModel(*(a1 + 32), v45, v46, v47);
    v52 = objc_msgSend_categoryOwner(v48, v49, v50, v51);
    objc_msgSend_linkGroupBy_(v52, v53, *(*(a1 + 32) + 256), v54);

    v28 = *(a1 + 32);
  }

  if (objc_msgSend_isAPivotTable(v28, v25, v26, v27))
  {
    v58 = [TSTPivotTranslator alloc];
    v61 = objc_msgSend_initWithTableInfo_(v58, v59, *(a1 + 32), v60);
    objc_msgSend_setTranslator_(*(a1 + 32), v62, v61, v63);

    v66 = *(a1 + 32);
    if (!*(v66 + 296))
    {
      v67 = [TSTColumnRowUIDMap alloc];
      v71 = objc_msgSend_context(*(a1 + 32), v68, v69, v70);
      v278 = 0;
      v279 = 0;
      v280 = 0;
      __p = 0;
      v276 = 0;
      v277 = 0;
      v73 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(v67, v72, v71, &v278, &__p);
      v74 = *(a1 + 32);
      v75 = *(v74 + 296);
      *(v74 + 296) = v73;

      if (__p)
      {
        v276 = __p;
        operator delete(__p);
      }

      if (v278)
      {
        v279 = v278;
        operator delete(v278);
      }

      v66 = *(a1 + 32);
    }

    objc_msgSend_setIsAPivotDataModel_(*(v66 + 312), v64, 1, v65);
    objc_msgSend_setShouldUseWideRows_(*(*(a1 + 32) + 312), v76, 1, v77);
    v81 = objc_msgSend_pivotOwner(*(a1 + 32), v78, v79, v80);
    v278 = objc_msgSend_tableUID(*(a1 + 32), v82, v83, v84);
    v279 = v85;
    objc_msgSend_setupAfterUnarchiveForPivotTable_pivotDataTable_(v81, v85, &v278, *(*(a1 + 32) + 312));
    goto LABEL_21;
  }

  v86 = objc_msgSend_groupBy(*(a1 + 32), v55, v56, v57);
  if ((objc_msgSend_isEnabled(v86, v87, v88, v89) & 1) == 0)
  {

    goto LABEL_20;
  }

  v93 = objc_msgSend_groupBy(*(a1 + 32), v90, v91, v92);
  v97 = objc_msgSend_numberOfLevels(v93, v94, v95, v96);

  if (!v97)
  {
LABEL_20:
    v115 = [TSTTableTranslator alloc];
    v118 = objc_msgSend_initWithTableInfo_(v115, v116, *(a1 + 32), v117);
    objc_msgSend_setTranslator_(*(a1 + 32), v119, v118, v120);

    v124 = objc_msgSend_columnRowUIDMap(*(*(a1 + 32) + 200), v121, v122, v123);
    v125 = *(a1 + 32);
    v81 = *(v125 + 296);
    *(v125 + 296) = v124;
LABEL_21:

    goto LABEL_22;
  }

  v98 = [TSTCategoryTranslator alloc];
  v101 = objc_msgSend_initWithTableInfo_(v98, v99, *(a1 + 32), v100);
  objc_msgSend_setTranslator_(*(a1 + 32), v102, v101, v103);

  if (!*(*(a1 + 32) + 296))
  {
    v107 = [TSTColumnRowUIDMap alloc];
    v81 = objc_msgSend_context(*(a1 + 32), v108, v109, v110);
    v278 = 0;
    v279 = 0;
    v280 = 0;
    __p = 0;
    v276 = 0;
    v277 = 0;
    v112 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(v107, v111, v81, &v278, &__p);
    v113 = *(a1 + 32);
    v114 = *(v113 + 296);
    *(v113 + 296) = v112;

    if (__p)
    {
      v276 = __p;
      operator delete(__p);
    }

    if (v278)
    {
      v279 = v278;
      operator delete(v278);
    }

    goto LABEL_21;
  }

LABEL_22:
  if ((objc_msgSend_isAPivotTable(*(a1 + 32), v104, v105, v106) & 1) == 0)
  {
    v129 = objc_msgSend_baseTableModel(*(a1 + 32), v126, v127, v128);
    objc_msgSend_clearPivotOwner(v129, v130, v131, v132);
  }

  v133 = objc_msgSend_baseTableModel(*(a1 + 32), v126, v127, v128);
  v137 = objc_msgSend_hiddenStatesOwner(v133, v134, v135, v136);
  v141 = objc_msgSend_hiddenStates(v137, v138, v139, v140);
  objc_msgSend_setHiddenStates_(*(a1 + 32), v142, v141, v143);

  v147 = objc_msgSend_hiddenStates(*(a1 + 32), v144, v145, v146);

  if (!v147)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v148, v149, v150);
    v151 = [TSTHiddenStates alloc];
    v155 = objc_msgSend_baseTableModel(*(a1 + 32), v152, v153, v154);
    v159 = objc_msgSend_hiddenStatesOwner(v155, v156, v157, v158);
    v162 = objc_msgSend_initWithHiddenStatesOwner_(v151, v160, v159, v161);
    objc_msgSend_setHiddenStates_(*(a1 + 32), v163, v162, v164);
  }

  v165 = objc_msgSend_hiddenStates(*(a1 + 32), v148, v149, v150);
  v169 = objc_msgSend_baseTableModel(*(a1 + 32), v166, v167, v168);
  objc_msgSend_setTableModel_(v165, v170, v169, v171);

  v175 = objc_msgSend_baseTableModel(*(a1 + 32), v172, v173, v174);
  v179 = objc_msgSend_upgradeHiddenFormulaOwnerForColumnsUID(v175, v176, v177, v178);
  v181 = v180;

  v185 = objc_msgSend_baseTableModel(*(a1 + 32), v182, v183, v184);
  v189 = objc_msgSend_upgradeHiddenFormulaOwnerForRowsUID(v185, v186, v187, v188);
  v191 = v190;

  if (v179 | v181)
  {
    v195 = objc_msgSend_hiddenStates(*(a1 + 32), v192, v193, v194);
    objc_msgSend_setHiddenStateOwnerForColumnsUID_(v195, v196, v179, v181);
  }

  if (v189 | v191)
  {
    v197 = objc_msgSend_hiddenStates(*(a1 + 32), v192, v193, v194);
    objc_msgSend_setHiddenStateOwnerForRowsUID_(v197, v198, v189, v191);

    v202 = objc_msgSend_baseTableModel(*(a1 + 32), v199, v200, v201);
    updated = objc_msgSend_upgradeNeedsToUpdateFilterSetForImport(v202, v203, v204, v205);
    v210 = objc_msgSend_hiddenStates(*(a1 + 32), v207, v208, v209);
    objc_msgSend_setNeedsToUpdateFilterSetForImport_(v210, v211, updated, v212);
  }

  v213 = objc_msgSend_columnRowUIDMap(*(a1 + 32), v192, v193, v194);

  if (!v213)
  {
    v217 = [TSTColumnRowUIDMap alloc];
    v221 = objc_msgSend_context(*(a1 + 32), v218, v219, v220);
    v278 = 0;
    v279 = 0;
    v280 = 0;
    __p = 0;
    v276 = 0;
    v277 = 0;
    v223 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(v217, v222, v221, &v278, &__p);
    objc_msgSend_setColumnRowUIDMap_(*(a1 + 32), v224, v223, v225);

    if (__p)
    {
      v276 = __p;
      operator delete(__p);
    }

    if (v278)
    {
      v279 = v278;
      operator delete(v278);
    }
  }

  v226 = objc_msgSend_summaryModel(*(a1 + 32), v214, v215, v216);

  if (!v226)
  {
    v230 = [TSTSummaryModel alloc];
    v233 = objc_msgSend_initWithTableInfo_(v230, v231, *(a1 + 32), v232);
    objc_msgSend_setSummaryModel_(*(a1 + 32), v234, v233, v235);
  }

  v236 = objc_msgSend_categoryOrder(*(a1 + 32), v227, v228, v229);

  if (!v236)
  {
    v237 = [TSTCategoryOrder alloc];
    v241 = objc_msgSend_context(*(a1 + 32), v238, v239, v240);
    v242 = *(a1 + 32);
    v278 = 0;
    v279 = 0;
    v280 = 0;
    v244 = objc_msgSend_initWithContext_tableInfo_rowUids_(v237, v243, v241, v242, &v278);
    objc_msgSend_setCategoryOrder_(*(a1 + 32), v245, v244, v246);

    if (v278)
    {
      v279 = v278;
      operator delete(v278);
    }
  }

  v247 = objc_alloc_init(TSCEMutableUIDSet);
  objc_msgSend_setRowUIDsWithPendingGroupingChanges_(*(a1 + 32), v248, v247, v249);

  objc_msgSend_p_updateStorageParentInfoForModels(*(a1 + 32), v250, v251, v252);
  v256 = objc_msgSend_translator(*(a1 + 32), v253, v254, v255);
  objc_msgSend_addReceiverToGroupBy_(v256, v257, *(*(a1 + 32) + 256), v258);

  v259 = [TSTTablePartitioner alloc];
  v262 = objc_msgSend_initWithInfo_(v259, v260, *(a1 + 32), v261);
  objc_msgSend_setPartitioner_(*(a1 + 32), v263, v262, v264);

  v268 = objc_msgSend_summaryModel(*(a1 + 32), v265, v266, v267);
  objc_msgSend_setupReceiver(v268, v269, v270, v271);

  objc_msgSend_resetViewMap(*(a1 + 32), v272, v273, v274);
}

void sub_2211173D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void sub_2211176E4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_baseTableModel(*(a1 + 32), a2, a3, a4);
  v9 = objc_msgSend_tableNameEnabled(v5, v6, v7, v8);

  if (v9)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v10, v11, v12);
    v15 = *(a1 + 32);

    MEMORY[0x2821F9670](v15, sel_shiftGeometryToIncludeTableNameHeight, v13, v14);
  }
}

void sub_221117770(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_tableWritingDirection(*(a1 + 32), a2, a3, a4) == 1 && (objc_msgSend_isInlineWithText(*(a1 + 32), v5, v6, v7) & 1) == 0)
  {
    v11 = objc_msgSend_geometry(*(a1 + 32), v8, v9, v10);
    objc_msgSend_position(v11, v12, v13, v14);
    v16 = v15;
    v20 = objc_msgSend_geometry(*(a1 + 32), v17, v18, v19);
    objc_msgSend_size(v20, v21, v22, v23);
    v25 = v24;
    v29 = objc_msgSend_geometry(*(a1 + 32), v26, v27, v28);
    objc_msgSend_position(v29, v30, v31, v32);
    v34 = v33;

    v35 = objc_alloc(MEMORY[0x277D802E8]);
    v39 = objc_msgSend_geometry(*(a1 + 32), v36, v37, v38);
    objc_msgSend_size(v39, v40, v41, v42);
    v50 = objc_msgSend_initWithPosition_size_(v35, v43, v44, v45, v16 + v25, v34, v46, v47);

    objc_msgSend_setGeometry_(*(a1 + 32), v48, v50, v49);
  }
}

id sub_221118284(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 16) |= 1u;
  v4 = *(v3 + 24);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = MEMORY[0x223DA02A0](v5);
    *(v3 + 24) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TSTTableInfo;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

void sub_221118818(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22111890C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_221118DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_221118DD8(uint64_t a1, void *a2)
{
  v20 = a2;
  CanvasFrame = TSTLayoutGetCanvasFrame(v20);
  v5 = v4;
  sub_2211B89E4(v20, v6, v7, v8);
  v10 = v9;
  v12 = v11;
  v13 = objc_alloc(MEMORY[0x277D802E8]);
  v17 = objc_msgSend_initWithPosition_size_(v13, v14, v15, v16, CanvasFrame, v5, v10, v12);
  v18 = *(*(a1 + 32) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;
}

void sub_221119364(id *a1, void *a2)
{
  v42 = a2;
  v6 = objc_msgSend_customFormatKey(v42, v3, v4, v5);
  v13 = objc_msgSend_customFormat(v42, v7, v8, v9);
  if (!v13)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableInfo(CellMap) applyCellDiff:atCellUID:migrationMap:inverseCellDiff:defaultCellStyle:defaultTextStyle:]_block_invoke", v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 11067, 0, "invalid nil value for '%{public}s'", "customFormat");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  v23 = objc_msgSend_documentRoot(a1[4], v10, v11, v12);
  v27 = objc_msgSend_customFormatList(v23, v24, v25, v26);
  v29 = objc_msgSend_addCustomFormat_oldKey_fuzzyNameMatching_(v27, v28, v13, v6, 1);

  v30 = objc_alloc(MEMORY[0x277D80650]);
  v34 = objc_msgSend_formatType(v13, v31, v32, v33);
  v37 = objc_msgSend_customFormatForKey_(a1[5], v35, v29, v36);
  v39 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v30, v38, v34, v29, v37);

  objc_msgSend_updateCustomFormatFromPaste_(a1[6], v40, v39, v41);
}

unint64_t sub_221119E0C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = 0x7FFFLL;
  v5 = 0x7FFFFFFF;
  if (a1 == 0x7FFFFFFF)
  {
    goto LABEL_34;
  }

  v6 = 0;
  if ((a1 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return v6 | (v4 << 32) | v5;
  }

  v4 = 0x7FFFLL;
  if (!HIDWORD(a2))
  {
    goto LABEL_34;
  }

  v6 = 0;
  if (!a2)
  {
    return v6 | (v4 << 32) | v5;
  }

  v4 = 0x7FFFLL;
  if (a3 == 0x7FFFFFFF)
  {
    goto LABEL_34;
  }

  v6 = 0;
  if ((a3 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return v6 | (v4 << 32) | v5;
  }

  v4 = 0x7FFFLL;
  if (!HIDWORD(a4))
  {
LABEL_34:
    v6 = 0;
    return v6 | (v4 << 32) | v5;
  }

  v6 = 0;
  if (a4)
  {
    v5 = *MEMORY[0x277D813C8];
    v4 = *(MEMORY[0x277D813C8] + 4);
    v7 = HIDWORD(a1);
    v8 = HIDWORD(a3);
    if (WORD2(a1) <= WORD2(a3))
    {
      v9 = WORD2(a3);
    }

    else
    {
      v9 = WORD2(a1);
    }

    v10 = a3;
    v11 = a3 + HIDWORD(a4) - 1;
    v12 = a1;
    v13 = a1 + HIDWORD(a2) - 1;
    if (v12 <= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = v12;
    }

    v15 = a2 + v7 - 1;
    if (WORD2(a1) == 0x7FFF || a2 == 0)
    {
      v15 = 0x7FFF;
    }

    LOWORD(v8) = a4 + v8 - 1;
    if (WORD2(a3) == 0x7FFF || a4 == 0)
    {
      LOWORD(v8) = 0x7FFF;
    }

    if (v15 >= v8)
    {
      LODWORD(v8) = v8;
    }

    else
    {
      LODWORD(v8) = v15;
    }

    if (v13 >= v11)
    {
      v18 = v11;
    }

    else
    {
      v18 = v13;
    }

    if (v18 < v14 || v9 > v8)
    {
      v6 = *(MEMORY[0x277D813C8] + 6) << 48;
    }

    else
    {
      v6 = 0;
      v5 = v14;
      v4 = v9;
    }
  }

  return v6 | (v4 << 32) | v5;
}

void *sub_221119F90(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = v3 ^ *a2;
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v3 ^ *a2;
    if (v4 >= *&v2)
    {
      v6 = v4 % *&v2;
    }
  }

  else
  {
    v6 = (*&v2 - 1) & v4;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v4 == v9)
    {
      if (result[2] == *a2 && result[3] == v3)
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= *&v2)
        {
          v9 %= *&v2;
        }
      }

      else
      {
        v9 &= *&v2 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_22111A04C(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_22111A0C8(result, a4);
  }

  return result;
}

void sub_22111A0AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22111A0C8(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_221087FE8(a1, a2);
  }

  sub_22107C148();
}

void sub_22111A308(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSCEThunkValue;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

id sub_22111AB1C(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_22107C1F0(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_22107C098(a1, v13);
    v7 = a1[1];
    result = sub_22107C26C(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_22111ABFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22111B574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  TSCE::CellRecordArchive::~CellRecordArchive(va);
  _Unwind_Resume(a1);
}

void sub_22111B784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  TSCE::CellRecordExpandedArchive::~CellRecordExpandedArchive(va);
  _Unwind_Resume(a1);
}

void sub_22111B7CC(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_221122DC8(a1, a2);
    }

    sub_22107C148();
  }
}

void sub_22111BB5C(uint64_t result, uint64_t a2)
{
  if ((*(a2 + 38) & 4) == 0)
  {
    return;
  }

  v4 = *(result + 40);
  v5 = *(v4 + 32);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = *(v4 + 24);
  v7 = *v5;
  if (v6 >= *v5)
  {
    if (v7 != *(v4 + 28))
    {
LABEL_8:
      *v5 = v7 + 1;
      v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellRecordExpandedArchive>(*(v4 + 16));
      v9 = *(v4 + 24);
      v10 = *(v4 + 32) + 8 * v9;
      *(v4 + 24) = v9 + 1;
      *(v10 + 8) = v8;
      goto LABEL_9;
    }

LABEL_7:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 16));
    v5 = *(v4 + 32);
    v7 = *v5;
    goto LABEL_8;
  }

  *(v4 + 24) = v6 + 1;
  v8 = *&v5[2 * v6 + 2];
LABEL_9:
  v11 = *(a2 + 36);
  v12 = *(v8 + 16);
  *(v8 + 16) = v12 | 2;
  v13 = *(a2 + 32);
  v14 = v12 | 6;
  *(v8 + 16) = v12 | 6;
  *(v8 + 32) = v11;
  *(v8 + 36) = v13;
  v15 = *(a2 + 16);
  if (v15)
  {
    v14 = v12 | 0xE;
    *(v8 + 16) = v12 | 0xE;
    *(v8 + 40) = v15;
  }

  v16 = *(a2 + 38);
  if ((v16 & 2) != 0)
  {
    v14 |= 0x10u;
    *(v8 + 16) = v14;
    *(v8 + 48) = 1;
  }

  if ((v16 & 8) != 0)
  {
    v14 |= 0x20u;
    *(v8 + 16) = v14;
    *(v8 + 49) = 1;
  }

  *(v8 + 16) = v14 | 1;
  v17 = *(v8 + 24);
  if (!v17)
  {
    v18 = *(v8 + 8);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ExpandedEdgesArchive>(v18);
    *(v8 + 24) = v17;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22111BD04;
  v19[3] = &unk_27845F218;
  v19[4] = *(result + 32);
  v19[5] = v17;
  sub_2215C574C(a2, v19);
}

void sub_22111BE04(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = objc_msgSend_cellDependencies(v4, v5, v6, v7);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v3;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v15, v20, 16);
  if (v11)
  {
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v19 = *(*(&v15 + 1) + 8 * v13);
        sub_22111AB1C(v8 + 3, &v19);
        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v14, &v15, v20, 16);
    }

    while (v11);
  }
}

void sub_22111C054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2212E22F0(&a9);

  _Unwind_Resume(a1);
}

void sub_22111C398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id a16)
{
  sub_2212E22F0(&a14);

  _Unwind_Resume(a1);
}

id *sub_22111C3E8(uint64_t *a1, id *a2, id *a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v10 = *a1;
    v11 = ((v7 - *a1) >> 3) + 1;
    if (v11 >> 61)
    {
      sub_22107C148();
    }

    v12 = a2 - v10;
    v13 = v6 - v10;
    v14 = v13 >> 2;
    if (v13 >> 2 <= v11)
    {
      v14 = ((v7 - *a1) >> 3) + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 3;
    v18[4] = a1;
    if (v15)
    {
      sub_22107C1F0(a1, v15);
    }

    v18[0] = 0;
    v18[1] = 8 * v16;
    v18[2] = 8 * v16;
    v18[3] = 0;
    sub_221122E8C(v18, a3);
    v4 = sub_221122FD0(a1, v18, v4);
    sub_22107C26C(v18);
  }

  else if (a2 == v7)
  {
    *v7 = *a3;
    a1[1] = (v7 + 1);
  }

  else
  {
    sub_221122E10(a1, a2, a1[1], a2 + 8);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 1;
    if (v8)
    {
      v9 = 0;
    }

    objc_storeStrong(v4, a3[v9]);
  }

  return v4;
}

void sub_22111C518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22111C9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22111CA58;
  v8[3] = &unk_27845F268;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10 = a2;
  v11 = a3;
  v8[4] = v3;
  v5 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v9 = v5;
  objc_msgSend_enumerateRangesUsingBlock_(v4, v6, v8, v7);
}

uint64_t sub_22111CA58(uint64_t a1, const char *a2, int a3)
{
  v3 = *(a1 + 40);
  v4 = (((*(a1 + 56) + *(a1 + 48)) << 32) + 0xFFFF00000000) & 0xFFFF00000000 | (a3 + a2 - 1);
  v6[0] = a2 | (*(a1 + 48) << 32);
  v6[1] = v4;
  return objc_msgSend_applyBlockToRecordsInRange_cellRestrictions_doWillModify_block_(*(a1 + 32), a2, v6, *(a1 + 64), *(a1 + 72), v3);
}

void sub_22111CFEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_22111D014(__n128 *a1, __n128 *a2)
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

void sub_22111D038(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_22111D050(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(a2 + 32) | (*(a2 + 36) << 32);
  sub_22111D090(v2 + 48, &v3);
}

void sub_22111D090(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_22107C148();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_2210874C4(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_22111D1DC(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_22111D25C;
  v2[3] = &unk_27845F2F8;
  v3 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  sub_2215C5978(a2, v2);
}

void sub_22111D25C(uint64_t result, int a2, void *a3)
{
  if (*(result + 40) == a2)
  {
    v5[5] = v3;
    v5[6] = v4;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_22111D2E0;
    v5[3] = &unk_27845F2D8;
    v5[4] = *(result + 32);
    TSCECellCoordSet::enumerateCoordsUsingBlock(a3, v5);
  }
}

void sub_22111D2E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *v3) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_22107C148();
    }

    v8 = v4 - *v3;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_2210874C4(*(a1 + 32), v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(v3 + 8) - *v3;
    v13 = v11 - v12;
    memcpy(v11 - v12, *v3, v12);
    v14 = *v3;
    *v3 = v13;
    *(v3 + 8) = v6;
    *(v3 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(v3 + 8) = v6;
}

void sub_22111D4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_22107C800(va, v7);
  _Block_object_dispose(va1, 8);
  sub_221122744(v3 + 48);
  _Unwind_Resume(a1);
}

void sub_22111D660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_22107C800(va, v7);
  _Block_object_dispose(va1, 8);
  sub_221122744(v3 + 48);
  _Unwind_Resume(a1);
}

TSCECellCoordSet *sub_22111D748(uint64_t a1, uint64_t a2)
{
  v3.coordinate.row = *(a2 + 32);
  v3.coordinate.column = *(a2 + 36);
  v3._tableUID = *(a1 + 32);
  return TSCECellRefSet::addCellRef(*(a1 + 48), &v3);
}

void sub_22111D89C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32) | (*(a2 + 36) << 32);
  v14.coordinate = v3;
  v14._tableUID = *(a1 + 40);
  TSCECellRefSet::addCellRef(*(a1 + 56), &v14);
  if (*(a1 + 64) == 1)
  {
    v6 = *(a1 + 32);
    *v12 = v3;
    *&v12[8] = *(a1 + 40);
    if (v6)
    {
      objc_msgSend_originalCellRefForUpdatedCellRef_(v6, v4, v12, v5);
      coordinate = v13.coordinate;
    }

    else
    {
      coordinate = 0;
      memset(&v13, 0, sizeof(v13));
    }

    if (coordinate.row != 0x7FFFFFFF && (*&coordinate & 0xFFFF00000000) != 0x7FFF00000000 && *&v13._tableUID != 0)
    {
      TSCECellRefSet::addCellRef(*(a1 + 56), &v13);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    *v12 = v3;
    *&v12[8] = *(a1 + 40);
    if (v8)
    {
      objc_msgSend_updatedCellRefForOriginalCellRef_(v8, v4, v12, v5);
      v9 = v13.coordinate;
    }

    else
    {
      v9 = 0;
      memset(&v13, 0, sizeof(v13));
    }

    if (v9.row != 0x7FFFFFFF && (*&v9 & 0xFFFF00000000) != 0x7FFF00000000 && *&v13._tableUID != 0)
    {
      TSCECellRefSet::addCellRef(*(a1 + 56), &v13);
    }

    *v12 = objc_msgSend_mergeRangeAtOriginalCellRef_(*(a1 + 32), v4, &v14, v5);
    *&v12[8] = v10;
    if (TSUCellRect::isValid(v12))
    {
      v11 = *(a1 + 32);
      TSUCellRect::enumerateCoordinatesUsingBlock();
    }
  }
}

TSCECellCoordSet *sub_22111DA70(uint64_t a1, TSUCellCoord *a2)
{
  *&v12.coordinate.row = *(a1 + 40);
  v3 = *a2;
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  v12._tableUID._upper = v5;
  v12.coordinate = v3;
  TSCECellRefSet::addCellRef(v4, &v12);
  result = *(a1 + 32);
  if (result)
  {
    result = objc_msgSend_updatedCellRefForOriginalCellRef_(result, v6, &v12, v7);
    coordinate = v11.coordinate;
  }

  else
  {
    coordinate = 0;
    memset(&v11, 0, sizeof(v11));
  }

  v10 = coordinate.row == 0x7FFFFFFF || (*&coordinate & 0xFFFF00000000) == 0x7FFF00000000;
  if (!v10 && *&v11._tableUID != 0)
  {
    return TSCECellRefSet::addCellRef(*(a1 + 64), &v11);
  }

  return result;
}

void sub_22111DC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_22107C800(va, v7);
  _Block_object_dispose(va1, 8);
  sub_221122744(v3 + 48);
  _Unwind_Resume(a1);
}

void sub_22111E59C(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (*(v6 + 232) == a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = objc_msgSend_dgl_cellDependenciesForOwnerID_(*(v6 + 8), a2, a2, a4);
    if (!v7)
    {
      return;
    }
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22111E680;
  v10[3] = &unk_27845F400;
  v13 = *(a1 + 48);
  v8 = *(a1 + 40);
  v11 = v7;
  v12 = v8;
  v9 = v7;
  TSCECellCoordSet::enumerateCoordsUsingBlock(a3, v10);
}

void *sub_22111E680(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_isCellDirty_(*(a1 + 32), a2, a2, a4);
  if (result)
  {
    if (*(a1 + 48) != 1 || (result = objc_msgSend_isCellInACycle_(*(a1 + 32), v7, a2, v8), (result & 1) == 0))
    {
      ++*(*(*(a1 + 40) + 8) + 24);
    }
  }

  return result;
}

void sub_22111E8C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v6 = NSStringFromTSUCellCoord();
  objc_msgSend_appendFormat_(v3, v4, @"  %@<%lu>\n", v5, v6, *(a2 + 16));
}

void sub_22111E9DC(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 32);
  if (*(v7 + 232) == a2)
  {
    v8 = v7;
  }

  else
  {
    v8 = objc_msgSend_dgl_cellDependenciesForOwnerID_(*(v7 + 8), a2, a2, a4);
    if (!v8)
    {
      return;
    }
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22111EAC8;
  v11[3] = &unk_27845F478;
  v9 = *(a1 + 40);
  v12 = v8;
  v13 = v9;
  v14 = v5;
  v10 = v8;
  TSCECellCoordSet::enumerateCoordsUsingBlock(a3, v11);
}

TSCECellCoordSet *sub_22111EAC8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_isCellInACycle_(*(a1 + 32), a2, a2, a4);
  if (result)
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *a2 & 0xFFFFFFFFFFFFLL;
    v10 = v8;
    return sub_2212DFCE8(v7, &v9);
  }

  return result;
}

void sub_22111ECE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_221122744(va);

  _Unwind_Resume(a1);
}

void sub_22111ED14(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 32);
  if (*(v7 + 232) == a2)
  {
    v8 = v7;
  }

  else
  {
    v8 = objc_msgSend_dgl_cellDependenciesForOwnerID_(*(v7 + 8), a2, a2, a4);
    if (!v8)
    {
      return;
    }
  }

  v9 = *(*(a1 + 48) + 32) | (*(*(a1 + 48) + 36) << 32);
  v10 = *(*(a1 + 32) + 232);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22111EE44;
  v13[3] = &unk_27845F4C8;
  v14 = v8;
  v11 = *(a1 + 40);
  v18 = v5;
  v15 = v11;
  v16 = v9;
  v17 = v10;
  v12 = v8;
  TSCECellCoordSet::enumerateCoordsUsingBlock(a3, v13);
}

void *sub_22111EE44(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_isCellInACycle_(*(a1 + 32), a2, a2, a4);
  if ((result & 1) == 0)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 60);
    v10 = *a2 & 0xFFFFFFFFFFFFLL;
    v11 = v9;
    return objc_msgSend_addCellRef_fromCellRef_(v8, v7, &v10, a1 + 48);
  }

  return result;
}

void sub_22111EF5C(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      sub_22107C148();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_221122A3C(a1, v11);
    }

    v12 = 12 * v8;
    v13 = *a2;
    *(v12 + 8) = *(a2 + 2);
    *v12 = v13;
    v7 = 12 * v8 + 12;
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
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 12;
  }

  *(a1 + 8) = v7;
}

void sub_22111F330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_22111F378(__n128 *a1, __n128 *a2)
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

void sub_22111F39C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_22111FB70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  sub_22111FC34(va);
  v33 = *(v31 - 144);
  if (v33)
  {
    *(v31 - 136) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void *sub_22111FC34(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_22111FD64(void *a1, uint64_t a2)
{
  v4 = *(a2 + 38);
  if ((v4 & 4) != 0 && (v4 & 2) == 0 && *(a2 + 16) >= 2uLL)
  {
    v5 = a1[4];
    v6 = v5[116];
    v45 = *(a2 + 32) | (*(a2 + 36) << 32);
    v46 = v6;
    objc_msgSend_depthFirstSearch_state_(v5, a2, &v45, a1[6]);
    v4 = *(a2 + 38);
  }

  if (sub_2215C3528((a1[4] + 136), *(a2 + 36), *(a2 + 32)) != (v4 & 2) >> 1)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCECellDependencies findAndRecordCyclesInDirtyCells:outCellsInCycles:]_block_invoke", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellDependencies.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1504, 0, "Cycle grid out of sync.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = *(a2 + 16) != 0;
  if (v18 != sub_2215C3528((a1[4] + 96), *(a2 + 36), *(a2 + 32)))
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSCECellDependencies findAndRecordCyclesInDirtyCells:outCellsInCycles:]_block_invoke", v20);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellDependencies.mm", v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v22, v25, 1505, 0, "IsDirty grid out of sync.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29);
  }

  if (*(a2 + 16))
  {
    v30 = (*(a2 + 38) & 2) == 0;
  }

  else
  {
    v30 = 0;
  }

  result = sub_2215C3528((a1[4] + 176), *(a2 + 36), *(a2 + 32));
  if (v30 != result)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSCECellDependencies findAndRecordCyclesInDirtyCells:outCellsInCycles:]_block_invoke", v33);
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellDependencies.mm", v37);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v39, v35, v38, 1506, 0, "IsDirtyAndNotInACycle grid out of sync.");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42);
  }

  if ((*(a2 + 38) & 2) != 0)
  {
    if (*(a2 + 16))
    {
      v43 = a1[5];
      v44 = *(a1[4] + 232);
      v45 = *(a2 + 32) | (*(a2 + 36) << 32);
      v46 = v44;
      return objc_msgSend_addLeaf_withOptions_(v43, v32, &v45, 0);
    }
  }

  return result;
}

void sub_221120B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char *a38)
{
  _Block_object_dispose(&a29, 8);
  sub_22107C860(v39 + 64, a38);
  _Block_object_dispose((v40 - 200), 8);
  sub_2210BDEC0(v38 + 48);
  _Block_object_dispose((v40 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t **sub_221120C0C(uint64_t **result, TSUCellCoord *a2, _BYTE *a3)
{
  v4 = result;
  if (LOWORD(a2[1].row) == *(result[8] + 8))
  {
    v6 = *result[9];
    result = TSUCellRect::contains(result + 5, v6);
    if (result)
    {
      *(v4[5][1] + 24) = 1;
      *a3 = 1;
    }
  }

  if ((*(v4[5][1] + 24) & 1) == 0)
  {
    if (LOWORD(a2[1].row) == *(v4[4] + 116))
    {
      v7 = (v4[6][1] + 48);

      return TSCECellCoordSet::addCellCoord(v7, a2);
    }

    else
    {
      v8 = (v4[7][1] + 48);

      return sub_221122A94(v8, a2, a2);
    }
  }

  return result;
}

void *sub_221120D00(uint64_t a1, const char *a2, _BYTE *a3)
{
  result = objc_msgSend_cellHasDeepPrecedentInRange_cellRange_(*(a1 + 32), a2, a2, *(a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t ***sub_221120EB0(void *a1, uint64_t a2)
{
  result = a1[4];
  if (*(a2 + 8) == *(result + 116))
  {
    CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(result, a2, a2, 0);
    result = sub_2215C56F4(CellRecord_willModifyOnTile, a1[5]);
    if (result)
    {
      v6 = a1[6];

      return TSCECellCoordSet::addCellCoord(v6, a2);
    }
  }

  return result;
}

uint64_t ***sub_221120F24(uint64_t ***result, uint64_t a2)
{
  if ((*(a2 + 38) & 4) != 0)
  {
    v3 = result;
    result = sub_2215C56F4(a2, result[4]);
    if (result)
    {
      result = sub_2215C56F4(a2, v3[5]);
      if (result)
      {
        v4 = v3[6];
        v5.row = *(a2 + 32);
        v5.column = *(a2 + 36);
        return TSCECellCoordSet::addCellCoord(v4, &v5);
      }
    }
  }

  return result;
}

uint64_t sub_221121010(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 16) == 1)
  {
    v12 = v4;
    v13 = v5;
    v7 = result;
    v9 = *(result + 32);
    v8 = *(result + 40);
    LODWORD(v9) = *(v9 + 232);
    v11.coordinate.row = *(a2 + 32);
    v11.coordinate.column = *(a2 + 36);
    *&v11.tableID = v9;
    result = TSCEReferenceSet::containsRef(v8, &v11, a3, a4);
    if ((result & 1) == 0)
    {
      return objc_msgSend_pushReferenceForImmediateEvaluation_cellRecord_pushOnFront_(*(*(v7 + 32) + 8), v10, &v11, a2, 0);
    }
  }

  return result;
}

void sub_2211211CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2211211E4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 48) = v2;
  return result;
}

void sub_221121380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 104), 8);
  sub_221122744(v15 + 48);
  _Unwind_Resume(a1);
}

void sub_2211214D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23)
{
  _Block_object_dispose(&a14, 8);
  sub_22107C860(v23 + 64, a23);
  _Unwind_Resume(a1);
}

TSCECellCoordSet *sub_2211214FC(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4.row = *(a2 + 32);
  v4.column = *(a2 + 36);
  return TSCECellCoordSet::addCellCoord((v2 + 48), &v4);
}

void sub_2211216E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

void *sub_221121708(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (!a2)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, "[TSCECellDependencies dirtyPrecedentCountsAreConsistent:]_block_invoke", a4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellDependencies.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 1946, 0, "invalid nil value for '%{public}s'", "cellRecord");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  v16 = *(a2 + 32) | (*(a2 + 36) << 32);
  v47 = v16;
  v17 = *(a2 + 16);
  if (v17)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  if ((*(a2 + 38) & 0x102) == 0)
  {
    v18 = *(a1 + 32);
    v19 = *(v18 + 232);
    v45 = v16;
    v46 = v19;
    v20 = objc_msgSend_dgl_computedNumberOfDirtyPrecedents_(*(v18 + 8), a2, &v45, a4);
    v21 = *(a2 + 16);
    if (v20)
    {
      v22 = v20 + 1;
      if (v21 == v20 + 1)
      {
        goto LABEL_21;
      }

      if (v21)
      {
        v23 = objc_msgSend_dgl_explainDirtyPrecedentCount_(*(*(a1 + 32) + 8), a2, &v45, a4);
        *(a2 + 16) = v22;
        if (*(a1 + 56) == 1)
        {
          ++qword_27CFB51D0;
        }

        goto LABEL_20;
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
      *a3 = 1;
      if (*(a1 + 56) != 1)
      {
LABEL_21:
        v17 = *(a2 + 16);
        goto LABEL_22;
      }

      v23 = objc_msgSend_dgl_explainDirtyPrecedentCount_(*(*(a1 + 32) + 8), a2, &v45, a4);
      v26 = objc_msgSend_dgl_precedentsAsString_dirtyOnly_(*(*(a1 + 32) + 8), v25, &v45, 0);
      v24 = v26;
      if (++qword_27CFB51C8 <= 0x31)
      {
        if (objc_msgSend_length(v26, v27, v28, v29) >= 0x1F5)
        {
          v32 = MEMORY[0x277CCACA8];
          v33 = objc_msgSend_substringToIndex_(v24, v30, 200, v31);
          v36 = objc_msgSend_stringWithFormat_(v32, v34, @"%@...<truncated>", v35, v33);

          v24 = v36;
        }

        v37 = objc_msgSend_stringByAppendingString_(v23, v30, @"  +1: This cell is dirty\n", v31);

        v23 = v37;
        NSLog(&cfstr_RecomputedLuVs.isa, v22, 0, v37, v24);
      }
    }

    else
    {
      if (v21 < 2)
      {
        goto LABEL_21;
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
      *a3 = 1;
      if (*(a1 + 56) != 1)
      {
        goto LABEL_21;
      }

      v23 = TSKUIDStruct::description((*(a1 + 32) + 216));
      v24 = NSStringFromTSUCellCoord();
      NSLog(&cfstr_RecomputedClea.isa, v23, v24, v21);
    }

LABEL_20:
    goto LABEL_21;
  }

LABEL_22:
  if ((v17 != 0) != objc_msgSend_isCellDirty_(*(a1 + 32), a2, &v47, a4))
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v40 = *(a2 + 38) & 2;
  if (objc_msgSend_isCellInACycle_(*(a1 + 32), v38, &v47, v39) != v40 >> 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v43 = *(a2 + 38) & 4;
  result = objc_msgSend_containsFormula_(*(a1 + 32), v41, &v47, v42);
  if (result != v43 >> 2)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  return result;
}

void sub_221121B54(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_currentCellBeingModified(*(*(a1 + 32) + 8), a2, a3, a4);
  v9 = *a2;
  if (v6 == *a2)
  {
    v10 = *(a2 + 4);
    if (((v9 ^ v6) & 0x101FFFF00000000) == 0 && v10 == v7)
    {
      return;
    }
  }

  else
  {
    v10 = *(a2 + 4);
  }

  v28 = *a2;
  if (v10 == *(a1 + 48))
  {
    if (__PAIR64__(*(*(a1 + 40) + 36), *(*(a1 + 40) + 32)) == __PAIR64__(WORD2(v9), v9))
    {
      return;
    }

    v11 = *(a1 + 32);
  }

  else
  {
    v11 = objc_msgSend_dgl_cellDependenciesForOwnerID_(*(*(a1 + 32) + 8), v7, v10, v8);
  }

  v13 = v11;
  if (v11)
  {
    CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v11, v12, &v28, 1);
    v17 = CellRecord_willModifyOnTile;
    if (CellRecord_willModifyOnTile)
    {
      v18 = *(CellRecord_willModifyOnTile + 38);
      if ((v18 & 0x100) == 0)
      {
        if ((v18 & 2) == 0 || (*(*(a1 + 40) + 38) & 2) == 0)
        {
          if (*(CellRecord_willModifyOnTile + 16) < 2uLL)
          {
            v19 = *(*(a1 + 32) + 8);
            v20 = *(a1 + 48);
            v21 = MEMORY[0x277CCACA8];
            v22 = NSStringFromTSUCellCoord();
            v25 = objc_msgSend_stringWithFormat_(v21, v23, @"dirty precedents count consistency error in %@ (count is %lu, should be >1)", v24, v22, *(v17 + 16));
            objc_msgSend_assertForInconsistentDependGraph_assertMessage_(v19, v26, v20, v25);

            objc_msgSend_setDirtySelfPlusPrecedentsCount_dirtyCount_(v13, v27, v17, 1);
          }

          else
          {
            objc_msgSend_decrDirtySelfPlusPrecedentsCount_(v13, v15, CellRecord_willModifyOnTile, v16);
          }
        }

        if (*(v17 + 16) == 1)
        {
          objc_msgSend_pushReferenceForImmediateEvaluation_cellRecord_pushOnFront_(*(*(a1 + 32) + 8), v15, a2, v17, 0);
        }
      }
    }
  }
}

void sub_221121E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23)
{
  _Block_object_dispose(&a14, 8);
  sub_22107C860(v23 + 64, a23);
  _Unwind_Resume(a1);
}

TSCECellCoordSet *sub_221121EA8(TSCECellCoordSet *result, uint64_t a2)
{
  if ((*(a2 + 38) & 0x80) != 0)
  {
    v2.row = *(a2 + 32);
    v2.column = *(a2 + 36);
    return TSCECellCoordSet::addCellCoord((*(result->_rowsPerColumn.__tree_.__size_ + 8) + 48), &v2);
  }

  return result;
}

void sub_2211221F8(uint64_t result, uint64_t a2)
{
  if ((*(a2 + 38) & 4) == 0)
  {
    return;
  }

  v4 = *(result + 40);
  v5 = *(v4 + 40);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = *(v4 + 32);
  v7 = *v5;
  if (v6 >= *v5)
  {
    if (v7 != *(v4 + 36))
    {
LABEL_8:
      *v5 = v7 + 1;
      v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellRecordArchive>(*(v4 + 24));
      v9 = *(v4 + 32);
      v10 = *(v4 + 40) + 8 * v9;
      *(v4 + 32) = v9 + 1;
      *(v10 + 8) = v8;
      goto LABEL_9;
    }

LABEL_7:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 24));
    v5 = *(v4 + 40);
    v7 = *v5;
    goto LABEL_8;
  }

  *(v4 + 32) = v6 + 1;
  v8 = *&v5[2 * v6 + 2];
LABEL_9:
  v11 = *(a2 + 36);
  v12 = *(v8 + 16);
  *(v8 + 16) = v12 | 2;
  v13 = *(a2 + 32);
  *(v8 + 56) = v11;
  *(v8 + 60) = v13;
  v14 = v12 | 0x106;
  *(v8 + 16) = v12 | 0x106;
  *(v8 + 76) = 1;
  v15 = *(a2 + 16);
  if (v15)
  {
    v14 = v12 | 0x10E;
    *(v8 + 16) = v12 | 0x10E;
    *(v8 + 64) = v15;
  }

  v16 = *(a2 + 38);
  if ((v16 & 2) != 0)
  {
    v14 |= 0x10u;
    *(v8 + 16) = v14;
    *(v8 + 72) = 1;
  }

  if ((v16 & 8) != 0)
  {
    v14 |= 0x20u;
    *(v8 + 16) = v14;
    *(v8 + 73) = 1;
  }

  *(v8 + 16) = v14 | 1;
  v17 = *(v8 + 48);
  if (!v17)
  {
    v18 = *(v8 + 8);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = google::protobuf::Arena::CreateMaybeMessage<TSCE::EdgesArchive>(v18);
    *(v8 + 48) = v17;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2211223B0;
  v19[3] = &unk_27845F218;
  v19[4] = *(result + 32);
  v19[5] = v17;
  sub_2215C574C(a2, v19);
}

void sub_221122558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_221122594(void *a1, uint64_t a2, _BYTE *a3)
{
  if ((*(a2 + 38) & 4) != 0)
  {
    v5 = *(a1[4] + 8);
    v7 = *(a2 + 32) | (*(a2 + 36) << 32);
    sub_22111D090(v5 + 48, &v7);
    ++*(*(a1[5] + 8) + 24);
    v6 = a1[6];
    if (v6)
    {
      if (*(*(a1[5] + 8) + 24) >= v6)
      {
        *a3 = 1;
      }
    }
  }
}

uint64_t *sub_2211226F4(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    sub_221122744(v2 + 40);
    v3 = sub_221122744(v2);
    MEMORY[0x223DA1450](v3, 0x10A0C40864A76ABLL);
  }

  return a1;
}

uint64_t sub_221122744(uint64_t a1)
{
  sub_221122780(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_221122780(uint64_t a1, char **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_22107C860((v2 + 5), v2[6]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t **sub_2211227C8(void *a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *(a2 + 4);
  v5 = (*a2 + (*(a2 + 2) << 16)) ^ v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_24;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = (*a2 + (*(a2 + 2) << 16)) ^ v4;
    if (*&v6 <= v5)
    {
      v8 = v5 % v6.i32[0];
    }
  }

  else
  {
    v8 = (v6.i32[0] - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_24:
    operator new();
  }

  v11 = *a2;
  while (1)
  {
    v12 = v10[1];
    if (v12 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v8)
    {
      goto LABEL_24;
    }

LABEL_23:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_24;
    }
  }

  v13 = v10[2];
  v15 = v11 == v13;
  v14 = (v13 ^ v11) & 0x101FFFF00000000;
  v15 = v15 && v14 == 0;
  if (!v15 || v4 != *(v10 + 12))
  {
    goto LABEL_23;
  }

  return v10;
}

void sub_221122A3C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t **sub_221122A94(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a2 + 4);
  v4 = (*a2 + (*(a2 + 2) << 16)) ^ v3;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_24;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (*a2 + (*(a2 + 2) << 16)) ^ v3;
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
LABEL_24:
    operator new();
  }

  v10 = *a2;
  while (1)
  {
    v11 = v9[1];
    if (v11 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v7)
    {
      goto LABEL_24;
    }

LABEL_23:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_24;
    }
  }

  v12 = v9[2];
  v14 = v10 == v12;
  v13 = (v12 ^ v10) & 0x101FFFF00000000;
  v14 = v14 && v13 == 0;
  if (!v14 || v3 != *(v9 + 12))
  {
    goto LABEL_23;
  }

  return v9;
}

uint64_t *sub_221122D00(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_221122D7C(result, a4);
  }

  return result;
}

void sub_221122D60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_221122D7C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    sub_221122A3C(a1, a2);
  }

  sub_22107C148();
}

void sub_221122DC8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_22107C238();
}

void sub_221122E10(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(a1 + 8);
  v5 = v4 - a4;
  v6 = (a2 + v4 - a4);
  v7 = v4;
  while (v6 < a3)
  {
    v8 = *v6;
    *v6++ = 0;
    *v7 = v8;
    v7 += 8;
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v9 = (v4 - 8);
    v10 = a2 - 8;
    do
    {
      v11 = *(v10 + v5);
      *(v10 + v5) = 0;
      v12 = *v9;
      *v9-- = v11;

      v5 -= 8;
    }

    while (v5);
  }
}

id sub_221122E8C(unint64_t *a1, id *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 2;
      }

      v12 = a1[4];
      v14 = a1[4];
      sub_22107C1F0(v12, v11);
    }

    v8 = ((v7 >> 3) + 1) / -2;
    v5 = &v6[-(((v7 >> 3) + 1) / 2)];
    if (v6 != v4)
    {
      do
      {
        v9 = *v6;
        *v6++ = 0;
        v10 = *v5;
        *v5++ = v9;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = &v6[v8];
    a1[2] = v5;
  }

  result = *a2;
  *v5 = result;
  a1[2] += 8;
  return result;
}

uint64_t sub_221122FD0(uint64_t a1, void *a2, void **a3)
{
  v6 = a2[1];
  v7 = *(a1 + 8);
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      v10 = *v9;
      *v9++ = 0;
      *v8++ = v10;
    }

    while (v9 != v7);
    v11 = a3;
    do
    {
      v12 = *v11++;
    }

    while (v11 != v7);
  }

  v13 = *a1;
  v14 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v15 = v14 + v13 - a3;
  if (v13 != a3)
  {
    v16 = v13;
    v17 = (v14 + v13 - a3);
    do
    {
      v18 = *v16;
      *v16++ = 0;
      *v17++ = v18;
    }

    while (v16 != a3);
    do
    {
      v19 = *v13++;
    }

    while (v13 != a3);
  }

  a2[1] = v15;
  v20 = *a1;
  *a1 = v15;
  *(a1 + 8) = v20;
  a2[1] = v20;
  v21 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v21;
  v22 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v22;
  *a2 = a2[1];
  return v6;
}

uint64_t *sub_2211230D4(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_221123150(result, a4);
  }

  return result;
}

void sub_221123134(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_221123150(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_2210874C4(a1, a2);
  }

  sub_22107C148();
}

uint64_t *sub_22112318C(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_22112323C(a1, a2);
  }

  return a1;
}

void sub_22112323C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    sub_22112328C(a1, a2);
  }

  sub_22107C148();
}

void sub_22112328C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t *sub_2211232E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  sub_221122D00((a2 + 16), a3[2], a3[3], 0xAAAAAAAAAAAAAAABLL * ((a3[3] - a3[2]) >> 2));
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  result = sub_221122D00((a2 + 40), a3[5], a3[6], 0xAAAAAAAAAAAAAAABLL * ((a3[6] - a3[5]) >> 2));
  *(a2 + 64) = *(a3 + 64);
  return result;
}

void sub_221123378(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_221123394(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 9;
        sub_22112341C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_22112341C(uint64_t a1, void *a2)
{
  v3 = a2[5];
  if (v3)
  {
    a2[6] = v3;
    operator delete(v3);
  }

  v4 = a2[2];
  if (v4)
  {
    a2[3] = v4;

    operator delete(v4);
  }
}

uint64_t ***sub_221123474(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *(a2 + 4);
  v4 = ((*a2 + (*(a2 + 2) << 16)) ^ v3);
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = (*a2 + (*(a2 + 2) << 16)) ^ v3;
    if (*&v2 <= v4)
    {
      v6 = v4 % v2.i32[0];
    }
  }

  else
  {
    v6 = (v2.i32[0] - 1) & v4;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  result = *v7;
  if (*v7)
  {
    v9 = *a2;
    do
    {
      v10 = result[1];
      if (v10 == v4)
      {
        v11 = result[2];
        v13 = v9 == v11;
        v12 = (v11 ^ v9) & 0x101FFFF00000000;
        v13 = v13 && v12 == 0;
        if (v13 && v3 == *(result + 12))
        {
          return result;
        }
      }

      else
      {
        if (v5.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v6)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_22112355C(unint64_t *a1, uint64_t *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_22107C148();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_22112328C(a1, v6);
  }

  v13 = 0;
  v14 = 72 * v2;
  sub_2211232E8(a1, 72 * v2, a2);
  v15 = 72 * v2 + 72;
  v7 = a1[1];
  v8 = 72 * v2 + *a1 - v7;
  sub_2211236A8(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_22112382C(&v13);
  return v12;
}

void sub_221123694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_22112382C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2211236A8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 8) = *(v7 + 2);
      *a4 = v8;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v7 + 1);
      *(a4 + 32) = v7[4];
      v7[2] = 0;
      v7[3] = 0;
      v7[4] = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = *(v7 + 5);
      *(a4 + 56) = v7[7];
      v7[5] = 0;
      v7[6] = 0;
      v7[7] = 0;
      *(a4 + 64) = *(v7 + 64);
      v7 += 9;
      a4 += 72;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      sub_22112341C(a1, v5);
      v5 += 9;
    }
  }

  return sub_2211237A0(v10);
}

uint64_t sub_2211237A0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2211237D8(a1);
  }

  return a1;
}

void sub_2211237D8(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 9;
      sub_22112341C(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_22112382C(void **a1)
{
  sub_221123860(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_221123860(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 72;
    sub_22112341C(v4, (i - 72));
  }
}

uint64_t *sub_2211238A8(void *a1, uint64_t *a2)
{
  result = sub_221123474(a1, a2);
  if (result)
  {
    sub_2210CDD3C(a1, result);
    return 1;
  }

  return result;
}

unint64_t sub_2211238E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return sub_2212697C0(*(a1 + 24));
  }

  else
  {
    return *(a1 + 32) | (BYTE2(*(a1 + 32)) << 32);
  }
}

int *sub_221123904(unint64_t a1, uint64_t a2)
{
  v7 = a1;
  v3 = *(a2 + 16);
  *(a2 + 32) = (a1 >> 16) & 0xFF0000 | a1;
  *(a2 + 16) = v3 | 3;
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

  return sub_221269820(&v7, v4);
}

unint64_t sub_22112397C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = *(a1 + 24);
  }

  else
  {
    v1 = TST::_CellID_default_instance_;
  }

  return sub_2211238E0(v1);
}

uint64_t sub_2211239EC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 16) |= 1u;
  v6 = *(a3 + 24);
  if (!v6)
  {
    v7 = *(a3 + 8);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v7);
    *(a3 + 24) = v6;
  }

  sub_221123904(a1, v6);
  *(a3 + 16) |= 2u;
  result = *(a3 + 32);
  if (!result)
  {
    v9 = *(a3 + 8);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::CreateMaybeMessage<TST::TableSize>(v9);
    *(a3 + 32) = result;
  }

  *(result + 16) |= 1u;
  *(result + 24) = WORD2(a2) | (a2 << 16);
  return result;
}

void sub_221123AF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9 = a3;
  v10 = *(a1 + 184);
  if (v10 > 4)
  {
    switch(v10)
    {
      case 5:
        objc_msgSend_setBoolValue_(v5, v6, *(a1 + 188), v8);
        break;
      case 6:
        objc_msgSend_setDurationTimeIntervalValue_(v5, v6, v7, v8, *(a1 + 192));
        break;
      case 9:
        if ((*(a1 + 19) & 4) != 0)
        {
          TSUDecimal::TSUDecimal(&v87);
          objc_msgSend_setCurrencyDecimalValue_(v5, v17, v87._decimal.w[0], v87._decimal.w[1]);
        }

        else
        {
          objc_msgSend_setCurrencyDoubleValue_(v5, v6, v7, v8, *(a1 + 192));
        }

        break;
    }
  }

  else if (v10 == 1)
  {
    if ((*(a1 + 19) & 4) != 0)
    {
      TSUDecimal::TSUDecimal(&v88);
      objc_msgSend_setNumberDecimalValue_(v5, v16, v88._decimal.w[0], v88._decimal.w[1]);
    }

    else
    {
      objc_msgSend_setNumberDoubleValue_(v5, v6, v7, v8, *(a1 + 192));
    }
  }

  else
  {
    if (v10 == 2)
    {
      v11 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v6, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v8);
      objc_msgSend_setStringValue_(v5, v14, v11, v15);
    }

    else
    {
      if (v10 != 4)
      {
        goto LABEL_19;
      }

      v11 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v6, v7, v8, *(a1 + 192));
      objc_msgSend_setDateValue_(v5, v12, v11, v13);
    }
  }

LABEL_19:
  v18 = *(a1 + 16);
  if ((v18 & 2) != 0)
  {
    v19 = *(a1 + 32);
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = sub_2211242C8;
    v85[3] = &unk_27845DF50;
    v86 = v5;
    v20 = v9;
    v21 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v20, v22, v19, v21, 0, v85);

    v18 = *(a1 + 16);
  }

  if ((v18 & 4) != 0)
  {
    v23 = *(a1 + 40);
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = sub_2211242D4;
    v83[3] = &unk_27845DF78;
    v84 = v5;
    v24 = v9;
    v25 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v24, v26, v23, v25, 0, v83);

    v18 = *(a1 + 16);
  }

  if ((v18 & 0x2000) != 0)
  {
    v27 = *(a1 + 128);
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = sub_2211242E0;
    v81[3] = &unk_27845F710;
    v82 = v5;
    v28 = v9;
    v29 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v28, v30, v27, v29, 0, v81);

    v18 = *(a1 + 16);
  }

  if ((v18 & 0x20000) != 0)
  {
    v31 = objc_msgSend_instanceWithArchive_unarchiver_(TSTCellSpec, v6, *(a1 + 160), v9);
    objc_msgSend_setCellSpec_(v5, v32, v31, v33);

    v18 = *(a1 + 16);
  }

  if ((v18 & 0x10) != 0)
  {
    v34 = *(a1 + 56);
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = sub_2211242EC;
    v79[3] = &unk_27845E090;
    v80 = v5;
    v35 = v9;
    v36 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v35, v37, v34, v36, 0, v79);

    v18 = *(a1 + 16);
  }

  if ((v18 & 0x800) != 0)
  {
    v38 = *(a1 + 112);
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = sub_2211242F8;
    v77[3] = &unk_27845F738;
    v78 = v5;
    v39 = v9;
    v40 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v39, v41, v38, v40, 0, v77);

    v18 = *(a1 + 16);
  }

  v42 = *(a1 + 200) & (v18 << 8 >> 31);
  if ((v18 & 0x20) != 0)
  {
    v43 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v6, *(a1 + 64), v8);
    objc_msgSend_setFormat_isExplicit_(v5, v44, v43, v42 & 1);

    v18 = *(a1 + 16);
  }

  if ((v18 & 0x40) != 0)
  {
    v45 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v6, *(a1 + 72), v8);
    objc_msgSend_setFormat_isExplicit_(v5, v46, v45, (v42 >> 1) & 1);

    v18 = *(a1 + 16);
  }

  if ((v18 & 0x80) != 0)
  {
    v47 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v6, *(a1 + 80), v8);
    objc_msgSend_setFormat_isExplicit_(v5, v48, v47, (v42 >> 2) & 1);

    v18 = *(a1 + 16);
  }

  if ((v18 & 0x100) != 0)
  {
    v49 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v6, *(a1 + 88), v8);
    objc_msgSend_setFormat_isExplicit_(v5, v50, v49, (v42 >> 3) & 1);

    v18 = *(a1 + 16);
  }

  if ((v18 & 0x40000) != 0)
  {
    v51 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v6, *(a1 + 168), v8);
    objc_msgSend_setFormat_isExplicit_(v5, v52, v51, (v42 >> 7) & 1);

    v18 = *(a1 + 16);
  }

  if ((v18 & 0x80000) != 0)
  {
    v53 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v6, *(a1 + 176), v8);
    objc_msgSend_setFormat_isExplicit_(v5, v54, v53, (v42 >> 5) & 1);

    v18 = *(a1 + 16);
  }

  if ((v18 & 0x2000000) != 0)
  {
    objc_msgSend_suggestCellFormatKind_(v5, v6, *(a1 + 208), v8);
  }

  else if ((v18 & 8) != 0)
  {
    v55 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v6, *(a1 + 48), v8);
    objc_msgSend_setCurrentFormat_isExplicit_(v5, v56, v55, (v42 >> 4) & 1);
  }

  v57 = *(a1 + 16);
  if ((v57 & 0x1000) != 0)
  {
    v58 = *(a1 + 120);
    v72 = MEMORY[0x277D85DD0];
    v73 = 3221225472;
    v74 = sub_2211243D8;
    v75 = &unk_27845F760;
    v59 = v5;
    v76 = v59;
    v60 = v9;
    v61 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v60, v62, v58, v61, 0, &v72);

    if ((*(a1 + 16) & 0x1000000) != 0)
    {
      v65 = *(a1 + 204);
    }

    else
    {
      v65 = 15;
    }

    objc_msgSend_setConditionalStyleAppliedRule_(v59, v63, v65, v64, v72, v73, v74, v75);

    v57 = *(a1 + 16);
  }

  if ((v57 & 0x10000) != 0)
  {
    v66 = [TSTCellBorder alloc];
    if (*(a1 + 152))
    {
      v68 = objc_msgSend_initFromMessage_unarchiver_(v66, v67, *(a1 + 152), v9);
    }

    else
    {
      v68 = objc_msgSend_initFromMessage_unarchiver_(v66, v67, TST::_CellBorderArchive_default_instance_, v9);
    }

    v71 = v68;
    objc_msgSend_setCellBorder_(v5, v69, v68, v70);
  }
}

void sub_2211242F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = objc_msgSend_object(a2, a2, a3, a4);
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (!v7)
  {
    objc_opt_class();
    v8 = TSUDynamicCast();
    v7 = objc_msgSend_storage(v8, v9, v10, v11);
  }

  objc_msgSend_setRichTextValueWithoutPlaintextCollapse_(*(a1 + 32), v5, v7, v6);
}

void sub_2211243E4(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v10 = objc_msgSend_valueType(v5, v7, v8, v9);
  if ((v10 - 2) < 9)
  {
    v14 = (v10 - 2) + 1;
  }

  else
  {
    v14 = 0;
  }

  *(a2 + 16) |= 0x100000u;
  *(a2 + 184) = v14;
  v15 = objc_msgSend_valueType(v5, v11, v12, v13);
  if (v15 > 5)
  {
    if (v15 == 6)
    {
      v45 = objc_msgSend_BOOLValue(v5, v16, v17, v18);
      *(a2 + 16) |= 0x200000u;
      *(a2 + 188) = v45;
      goto LABEL_21;
    }

    if (v15 == 7)
    {
      objc_msgSend_durationTimeIntervalValue(v5, v16, v17, v18);
      *(a2 + 16) |= 0x400000u;
      *(a2 + 192) = v51;
      goto LABEL_21;
    }

    if (v15 != 10)
    {
      goto LABEL_21;
    }

    objc_msgSend_currencyDoubleValue(v5, v16, v17, v18);
    *(a2 + 16) |= 0x400000u;
    *(a2 + 192) = v24;
    v172._decimal.w[0] = objc_msgSend_currencyDecimalValue(v5, v25, v26, v27);
    v172._decimal.w[1] = v28;
    v29 = TSUDecimal::low(&v172);
    *(a2 + 16) |= 0x4000000u;
    *(a2 + 216) = v29;
    v172._decimal.w[0] = objc_msgSend_currencyDecimalValue(v5, v30, v31, v32);
    v172._decimal.w[1] = v33;
    v34 = TSUDecimal::high(&v172);
LABEL_14:
    *(a2 + 16) |= 0x8000000u;
    *(a2 + 224) = v34;
    goto LABEL_21;
  }

  switch(v15)
  {
    case 2:
      objc_msgSend_numberDoubleValue(v5, v16, v17, v18);
      *(a2 + 16) |= 0x400000u;
      *(a2 + 192) = v35;
      v172._decimal.w[0] = objc_msgSend_numberDecimalValue(v5, v36, v37, v38);
      v172._decimal.w[1] = v39;
      v40 = TSUDecimal::low(&v172);
      *(a2 + 16) |= 0x4000000u;
      *(a2 + 216) = v40;
      v172._decimal.w[0] = objc_msgSend_numberDecimalValue(v5, v41, v42, v43);
      v172._decimal.w[1] = v44;
      v34 = TSUDecimal::high(&v172);
      goto LABEL_14;
    case 3:
      v46 = objc_msgSend_stringValue(v5, v16, v17, v18);
      v19 = v46;
      if (v46)
      {
        v50 = objc_msgSend_tsp_protobufString(v46, v47, v48, v49);
        sub_221124D3C(a2, v50);
      }

      else
      {
        v52 = MEMORY[0x277D81150];
        v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "void TSTEncodeCellToArchive(TSTCell *__strong, TST::Cell *, TSPArchiver *__strong)", v49);
        v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArchiveUtilities.mm", v55);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v57, v53, v56, 370, 0, "stringValue in string cell is nil");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60);
      }

      break;
    case 5:
      v19 = objc_msgSend_dateValue(v5, v16, v17, v18);
      objc_msgSend_timeIntervalSinceReferenceDate(v19, v20, v21, v22);
      *(a2 + 16) |= 0x400000u;
      *(a2 + 192) = v23;
      break;
    default:
      goto LABEL_21;
  }

LABEL_21:
  v171 = objc_msgSend_cellStyle(v5, v16, v17, v18);
  if (v171)
  {
    *(a2 + 16) |= 2u;
    v64 = *(a2 + 32);
    if (!v64)
    {
      v65 = *(a2 + 8);
      if (v65)
      {
        v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
      }

      v64 = MEMORY[0x223DA0390](v65);
      *(a2 + 32) = v64;
    }

    objc_msgSend_setStrongReference_message_(v6, v61, v171, v64);
  }

  v69 = objc_msgSend_textStyle(v5, v61, v62, v63);
  if (v69)
  {
    *(a2 + 16) |= 4u;
    v70 = *(a2 + 40);
    if (!v70)
    {
      v71 = *(a2 + 8);
      if (v71)
      {
        v71 = *(v71 & 0xFFFFFFFFFFFFFFFELL);
      }

      v70 = MEMORY[0x223DA0390](v71);
      *(a2 + 40) = v70;
    }

    objc_msgSend_setStrongReference_message_(v6, v66, v69, v70);
  }

  v75 = objc_msgSend_cellSpec(v5, v66, v67, v68);
  if (v75)
  {
    *(a2 + 16) |= 0x20000u;
    v76 = *(a2 + 160);
    if (!v76)
    {
      v77 = *(a2 + 8);
      if (v77)
      {
        v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
      }

      v76 = google::protobuf::Arena::CreateMaybeMessage<TST::CellSpecArchive>(v77);
      *(a2 + 160) = v76;
    }

    objc_msgSend_saveToArchive_archiver_(v75, v72, v76, v6);
  }

  v81 = objc_msgSend_formulaSyntaxError(v5, v72, v73, v74);
  if (v81)
  {
    *(a2 + 16) |= 0x10u;
    v82 = *(a2 + 56);
    if (!v82)
    {
      v83 = *(a2 + 8);
      if (v83)
      {
        v83 = *(v83 & 0xFFFFFFFFFFFFFFFELL);
      }

      v82 = MEMORY[0x223DA0390](v83);
      *(a2 + 56) = v82;
    }

    objc_msgSend_setStrongReference_message_(v6, v78, v81, v82);
  }

  v87 = objc_msgSend_richTextValue(v5, v78, v79, v80);
  if (v87)
  {
    *(a2 + 16) |= 0x800u;
    v88 = *(a2 + 112);
    if (!v88)
    {
      v89 = *(a2 + 8);
      if (v89)
      {
        v89 = *(v89 & 0xFFFFFFFFFFFFFFFELL);
      }

      v88 = MEMORY[0x223DA0390](v89);
      *(a2 + 112) = v88;
    }

    objc_msgSend_setStrongReference_message_(v6, v84, v87, v88);
  }

  v93 = objc_msgSend_commentStorage(v5, v84, v85, v86);
  if (v93)
  {
    *(a2 + 16) |= 0x2000u;
    v94 = *(a2 + 128);
    if (!v94)
    {
      v95 = *(a2 + 8);
      if (v95)
      {
        v95 = *(v95 & 0xFFFFFFFFFFFFFFFELL);
      }

      v94 = MEMORY[0x223DA0390](v95);
      *(a2 + 128) = v94;
    }

    objc_msgSend_setStrongReference_message_(v6, v90, v93, v94);
    v99 = objc_msgSend_replies(v93, v96, v97, v98);
    v103 = objc_msgSend_count(v99, v100, v101, v102);

    if (v103)
    {
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(v6, v90, *MEMORY[0x277D80980], @"TSDThreadedComments");
    }
  }

  v104 = objc_msgSend_numberFormat(v5, v90, v91, v92);

  if (v104)
  {
    v109 = objc_msgSend_numberFormat(v5, v105, v106, v107);
    *(a2 + 16) |= 0x20u;
    v110 = *(a2 + 64);
    if (!v110)
    {
      v111 = *(a2 + 8);
      if (v111)
      {
        v111 = *(v111 & 0xFFFFFFFFFFFFFFFELL);
      }

      v110 = MEMORY[0x223DA02D0](v111);
      *(a2 + 64) = v110;
    }

    objc_msgSend_encodeToArchive_archivingCustomFormats_(v109, v108, v110, 1);
  }

  v112 = objc_msgSend_currencyFormat(v5, v105, v106, v107);

  if (v112)
  {
    v117 = objc_msgSend_currencyFormat(v5, v113, v114, v115);
    *(a2 + 16) |= 0x40u;
    v118 = *(a2 + 72);
    if (!v118)
    {
      v119 = *(a2 + 8);
      if (v119)
      {
        v119 = *(v119 & 0xFFFFFFFFFFFFFFFELL);
      }

      v118 = MEMORY[0x223DA02D0](v119);
      *(a2 + 72) = v118;
    }

    objc_msgSend_encodeToArchive_archivingCustomFormats_(v117, v116, v118, 1);
  }

  v120 = objc_msgSend_dateFormat(v5, v113, v114, v115);

  if (v120)
  {
    v125 = objc_msgSend_dateFormat(v5, v121, v122, v123);
    *(a2 + 16) |= 0x100u;
    v126 = *(a2 + 88);
    if (!v126)
    {
      v127 = *(a2 + 8);
      if (v127)
      {
        v127 = *(v127 & 0xFFFFFFFFFFFFFFFELL);
      }

      v126 = MEMORY[0x223DA02D0](v127);
      *(a2 + 88) = v126;
    }

    objc_msgSend_encodeToArchive_archivingCustomFormats_(v125, v124, v126, 1);
  }

  v128 = objc_msgSend_durationFormat(v5, v121, v122, v123);

  if (v128)
  {
    v133 = objc_msgSend_durationFormat(v5, v129, v130, v131);
    *(a2 + 16) |= 0x80u;
    v134 = *(a2 + 80);
    if (!v134)
    {
      v135 = *(a2 + 8);
      if (v135)
      {
        v135 = *(v135 & 0xFFFFFFFFFFFFFFFELL);
      }

      v134 = MEMORY[0x223DA02D0](v135);
      *(a2 + 80) = v134;
    }

    objc_msgSend_encodeToArchive_archivingCustomFormats_(v133, v132, v134, 1);
  }

  v136 = objc_msgSend_textFormat(v5, v129, v130, v131);

  if (v136)
  {
    v141 = objc_msgSend_textFormat(v5, v137, v138, v139);
    *(a2 + 16) |= 0x40000u;
    v142 = *(a2 + 168);
    if (!v142)
    {
      v143 = *(a2 + 8);
      if (v143)
      {
        v143 = *(v143 & 0xFFFFFFFFFFFFFFFELL);
      }

      v142 = MEMORY[0x223DA02D0](v143);
      *(a2 + 168) = v142;
    }

    objc_msgSend_encodeToArchive_archivingCustomFormats_(v141, v140, v142, 1);
  }

  v144 = objc_msgSend_BOOLeanFormat(v5, v137, v138, v139);

  if (v144)
  {
    v149 = objc_msgSend_BOOLeanFormat(v5, v145, v146, v147);
    *(a2 + 16) |= 0x80000u;
    v150 = *(a2 + 176);
    if (!v150)
    {
      v151 = *(a2 + 8);
      if (v151)
      {
        v151 = *(v151 & 0xFFFFFFFFFFFFFFFELL);
      }

      v150 = MEMORY[0x223DA02D0](v151);
      *(a2 + 176) = v150;
    }

    objc_msgSend_encodeToArchive_archivingCustomFormats_(v149, v148, v150, 1);
  }

  v152 = objc_msgSend_cellFormatKind(v5, v145, v146, v147);
  *(a2 + 16) |= 0x2000000u;
  *(a2 + 208) = v152;
  v156 = objc_msgSend_explicitFormatFlags(v5, v153, v154, v155);
  *(a2 + 16) |= 0x800000u;
  *(a2 + 200) = v156;
  v163 = objc_msgSend_conditionalStyle(v5, v157, v158, v159);
  if (v163)
  {
    *(a2 + 16) |= 0x1000u;
    v164 = *(a2 + 120);
    if (!v164)
    {
      v165 = *(a2 + 8);
      if (v165)
      {
        v165 = *(v165 & 0xFFFFFFFFFFFFFFFELL);
      }

      v164 = MEMORY[0x223DA0390](v165);
      *(a2 + 120) = v164;
    }

    objc_msgSend_setStrongReference_message_(v6, v160, v163, v164);
    if (v5)
    {
      v166 = objc_msgSend_conditionalStyleAppliedRule(v5, v160, v161, v162);
    }

    else
    {
      v166 = 15;
    }

    *(a2 + 16) |= 0x1000000u;
    *(a2 + 204) = v166;
  }

  v168 = objc_msgSend_cellBorder(v5, v160, v161, v162);
  if (v168)
  {
    *(a2 + 16) |= 0x10000u;
    v169 = *(a2 + 152);
    if (!v169)
    {
      v170 = *(a2 + 8);
      if (v170)
      {
        v170 = *(v170 & 0xFFFFFFFFFFFFFFFELL);
      }

      v169 = google::protobuf::Arena::CreateMaybeMessage<TST::CellBorderArchive>(v170);
      *(a2 + 152) = v169;
    }

    objc_msgSend_saveToMessage_archiver_(v168, v167, v169, v6);
  }
}

void sub_221124D3C(uint64_t a1, char *__s)
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

void sub_221124E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_221125004(long double a1, long double a2, double a3)
{
  v3 = 0.0;
  if (a3 <= 0.0)
  {
    return v3;
  }

  v4 = a3;
  v3 = 1.0;
  if (a3 >= 1.0)
  {
    return v3;
  }

  v6 = a1;
  v7 = 1.0;
  if (a1 <= 1.0 || a2 <= 1.0)
  {
    v3 = a1 / (a1 + a2);
    v9 = sub_2212F4E64(a1, a2, v3);
    v10 = 0;
    v11 = 1;
    v51 = 0.0;
    v12 = 0.000001;
    v42 = v6;
    v43 = a2;
    v13 = a2;
    v50 = v4;
    goto LABEL_8;
  }

  sub_2214A7870(a3);
  if (v4 <= 0.5)
  {
    v10 = 0;
    v16 = -v16;
    v17 = v6;
    v13 = a2;
    v50 = v4;
  }

  else
  {
    v50 = 1.0 - v4;
    v10 = 1;
    v17 = a2;
    v13 = v6;
  }

  v18 = 1.0 / (v17 * 2.0 + -1.0);
  v19 = 1.0 / (v13 * 2.0 + -1.0);
  v20 = v16 * sqrt(2.0 / (v18 + v19) + (v16 * v16 + -3.0) / 6.0) / (2.0 / (v18 + v19)) - (v19 - v18) * ((v16 * v16 + -3.0) / 6.0 + 0.833333333 + 2.0 / (2.0 / (v18 + v19) * -3.0));
  v21 = v20 + v20;
  if (v21 < *&qword_27CFB4C60)
  {
LABEL_13:
    sub_22137A674("incbi", 4);
    v3 = 0.0;
    if (!v10)
    {
      return v3;
    }

    goto LABEL_89;
  }

  v42 = v6;
  v43 = a2;
  v3 = v17 / (v17 + v13 * exp(v21));
  v9 = sub_2212F4E64(v17, v13, v3);
  v51 = 0.0;
  v6 = v17;
  if (fabs((v9 - v50) / v50) < 0.2)
  {
    v48 = v17;
    v49 = 1.0;
    v47 = v13;
    v22 = 0.0;
LABEL_60:
    v13 = v47;
    v6 = v48;
    v32 = sub_221289DC8(v47 + v48);
    v33 = v32 - sub_221289DC8(v48);
    v46 = v33 - sub_221289DC8(v47);
    v34 = 8;
    v14 = v51;
    v51 = v22;
    v35 = v3;
    v4 = a3;
    while (1)
    {
      if (v34 != 8)
      {
        v9 = sub_2212F4E64(v48, v47, v35);
      }

      if (v9 >= v14)
      {
        v36 = v49;
        if (v9 <= v49)
        {
          v37 = v51;
          if (v9 < v50)
          {
            v37 = v35;
          }

          v51 = v37;
          if (v9 < v50)
          {
            v14 = v9;
          }

          else
          {
            v7 = v35;
          }

          if (v9 >= v50)
          {
            v36 = v9;
          }

          v49 = v36;
          v3 = v35;
        }

        else
        {
          v9 = v49;
          v3 = v7;
        }
      }

      else
      {
        v9 = v14;
        v3 = v51;
      }

      if (v3 == 1.0 || v3 == 0.0)
      {
        goto LABEL_85;
      }

      v38 = log(v3);
      v39 = v46 + (v47 + -1.0) * log(1.0 - v3) + (v48 + -1.0) * v38;
      if (v39 < *&qword_27CFB4C60)
      {
        goto LABEL_88;
      }

      if (v39 > *&qword_27CFB4C58 || (v40 = (v9 - v50) / exp(v39), v35 = v3 - v40, v3 - v40 <= v51) && (v9 = (v3 - v51) / (v7 - v51), v35 = v51 + v9 * 0.5 * (v3 - v51), v35 <= 0.0) || v35 >= v7 && (v9 = (v7 - v3) / (v7 - v51), v35 = v7 + v9 * -0.5 * (v7 - v3), v35 >= 1.0))
      {
LABEL_85:
        v11 = 0;
        v12 = *&qword_27CFB4C50 * 256.0;
        v15 = v49;
        goto LABEL_18;
      }

      if (fabs(v40 / v35) < *&qword_27CFB4C50 * 128.0)
      {
        break;
      }

      v3 = v35;
      if (!--v34)
      {
        goto LABEL_85;
      }
    }

    v3 = v35;
LABEL_88:
    if (!v10)
    {
      return v3;
    }

LABEL_89:
    v29 = *&qword_27CFB4C50;
LABEL_90:
    if (v3 <= v29)
    {
      return 1.0 - v29;
    }

    else
    {
      return 1.0 - v3;
    }
  }

  v11 = 1;
  v12 = 0.0001;
LABEL_8:
  v14 = 0.0;
  v15 = 1.0;
LABEL_18:
  v47 = v13;
  v48 = v6;
  v45 = 1.0 - v4;
  v23 = v50;
  v22 = v51;
  v51 = v14;
  v49 = v15;
  v24 = v12;
LABEL_19:
  v25 = 0;
  v26 = 100;
  v27 = 0.5;
  do
  {
    if (v26 != 100)
    {
      v28 = v7 - v22;
      if (v22 + v27 * (v7 - v22) == 1.0)
      {
        v3 = 1.0 - *&qword_27CFB4C50;
      }

      else
      {
        v3 = v22 + v27 * (v7 - v22);
      }

      if (v3 == 0.0)
      {
        v27 = 0.5;
        v3 = v22 + v28 * 0.5;
        if (v3 == 0.0)
        {
          goto LABEL_13;
        }
      }

      v9 = sub_2212F4E64(v48, v47, v3);
      if (fabs(v28 / (v22 + v7)) < v24 || fabs((v9 - v23) / v23) < v24)
      {
        goto LABEL_59;
      }
    }

    if (v9 >= v23)
    {
      if (v10)
      {
        v29 = *&qword_27CFB4C50;
        if (v3 < *&qword_27CFB4C50)
        {
          v3 = 0.0;
          goto LABEL_90;
        }
      }

      if (v25 <= 0)
      {
        if (v25 > -4)
        {
          if (v25 > -2)
          {
            v27 = (v9 - v23) / (v9 - v51);
          }

          else
          {
            v27 = v27 * 0.5;
          }
        }

        else
        {
          v27 = v27 * v27;
        }
      }

      else
      {
        v25 = 0;
        v27 = 0.5;
      }

      --v25;
      v7 = v3;
      v49 = v9;
    }

    else
    {
      if (v25 < 0)
      {
        v25 = 0;
        v27 = 0.5;
      }

      else if (v25 < 4)
      {
        if (v25 < 2)
        {
          v27 = (v23 - v9) / (v49 - v9);
        }

        else
        {
          v27 = v27 * 0.5 + 0.5;
        }
      }

      else
      {
        v27 = 1.0 - (1.0 - v27) * (1.0 - v27);
      }

      if (v3 > 0.75)
      {
        v30 = v42;
        if (v10)
        {
          v31 = v42;
        }

        else
        {
          v31 = v43;
        }

        if (v10)
        {
          v30 = v43;
          v23 = a3;
        }

        else
        {
          v23 = v45;
        }

        v10 = !v10;
        v7 = 1.0;
        v3 = 1.0 - v3;
        v47 = v30;
        v48 = v31;
        v9 = sub_2212F4E64(v31, v30, v3);
        v22 = 0.0;
        v51 = 0.0;
        v49 = 1.0;
        goto LABEL_19;
      }

      ++v25;
      v22 = v3;
      v51 = v9;
    }

    --v26;
  }

  while (v26);
  sub_22137A674("incbi", 6);
  if (v22 < 1.0)
  {
    if (v3 <= 0.0)
    {
      goto LABEL_13;
    }

LABEL_59:
    v50 = v23;
    if ((v11 & 1) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_60;
  }

  v3 = 1.0 - *&qword_27CFB4C50;
  if (v10)
  {
    goto LABEL_89;
  }

  return v3;
}