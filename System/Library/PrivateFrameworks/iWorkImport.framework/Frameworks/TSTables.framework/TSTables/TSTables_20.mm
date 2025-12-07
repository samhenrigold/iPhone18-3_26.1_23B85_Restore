uint64_t sub_2214BC2E4(uint64_t a1, const char *a2, uint64_t *a3, uint64_t a4)
{
  if (*a3 == *"category column")
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v7 = objc_msgSend_summaryCellVendor(*(a1 + 32), a2, a3, a4);
    sub_2211A8F64(a2, 1, v18);
    v10 = objc_msgSend_cellAtCellUID_(v7, v8, v18, v9);

    if (v10 && (objc_msgSend_isEmptyForDataStore(v10, v11, v12, v13) & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      v14 = objc_msgSend_groupByForRows(*(a1 + 32), v11, v12, v13);
      v16 = objc_msgSend_aggregateTypeForColumnUID_atGroupLevel_(v14, v15, *a3, a3[1], a2);

      *(*(*(a1 + 40) + 8) + 24) = v16 != 0;
    }
  }

  return 0;
}

uint64_t sub_2214BC42C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_summaryCellVendor(*(a1 + 32), a2, a3, a4);
  v10 = objc_msgSend_viewMap(*(a1 + 32), v7, v8, v9);
  objc_msgSend_rowUIDForRowIndex_(v10, v11, a2, v12);
  TSTMakeCellUID(v21);
  v15 = objc_msgSend_cellAtCellUID_(v6, v13, v21, v14);

  if (v15)
  {
    v19 = objc_msgSend_isEmptyForDataStore(v15, v16, v17, v18) ^ 1;
  }

  else
  {
    v19 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v19;

  return 0;
}

void sub_2214BCE0C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2214BD1DC(uint64_t a1, void *a2)
{
  v12 = a2;
  if (objc_msgSend_rowCount(v12, v3, v4, v5))
  {
    v9 = *(a1 + 32);
    v10 = objc_msgSend_groupUid(v12, v6, v7, v8);
    objc_msgSend_addUUID_(v9, v11, v10, v11);
  }
}

void sub_2214BD384(id *a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_groupNodeForGroupUid_(a1[4], a2, a2, a3);
  if (v6)
  {
    v22 = v6;
    v8 = objc_msgSend_viewRowIndexForRowUID_(a1[5], v7, a2, a3);
    v12 = objc_msgSend_rowCount(v22, v9, v10, v11);
    v16 = objc_msgSend_childGroupUids(v22, v13, v14, v15);
    v20 = objc_msgSend_count(v16, v17, v18, v19);

    objc_msgSend_addIndexesInRange_(a1[6], v21, (v8 + 1), v20 + v12);
    v6 = v22;
  }
}

void sub_2214BD950(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v13 = v3;
  v8 = objc_msgSend_groupUid(v3, v5, v6, v7);
  v10 = objc_msgSend_rowIndexForRowUID_(v4, v9, v8, v9);
  objc_msgSend_addIndex_(*(a1 + 40), v11, v10, v12);
}

void sub_2214BDCE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2214BEE48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a31)
  {
    operator delete(a31);
  }

  v39 = *(v37 - 152);
  if (v39)
  {
    *(v37 - 144) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

void sub_2214BF044(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = v3;
  v8 = objc_msgSend_groupUid(v3, v5, v6, v7);
  objc_msgSend_addUUID_(v4, v9, v8, v9);
}

TSCEASTRewriter *sub_2214BF33C(TSCEASTRewriter *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4)
{
  v7 = a4;
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *a1 = &unk_2834A9260;
  *(a1 + 25) = v7;
  return a1;
}

TSCEASTRelativeCoordRefElement *sub_2214BF3C0(TSCEASTIteratorBase *a1, TSCEASTRelativeCoordRefElement *this, uint64_t a3, uint64_t a4)
{
  v4 = this;
  v33._lower = TSCEASTRelativeCoordRefElement::tableUID(this, a1, a3, a4);
  v33._upper = v6;
  if (v33._lower | v6)
  {
    v8 = sub_221089E8C(a1);
    v12 = objc_msgSend_tableUIDHistory(v8, v9, v10, v11);

    if (v12 && (v16 = objc_msgSend_tableUIDMap(v12, v13, v14, v15), tableUID._lower = objc_msgSend_fromTableUID(*(a1 + 25), v17, v18, v19), tableUID._upper = v20, (v21 = sub_221119F90(v16, &tableUID)) != 0))
    {
      v23 = v21[4];
      v22 = v21[5];
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    v24 = objc_msgSend_fromTableUID(*(a1 + 25), v13, v14, v15);
    if (v33._lower == v24 && v33._upper == v25 || v33._lower == v23 && v33._upper == v22)
    {
      v33._lower = objc_msgSend_tableUID(*(a1 + 25), v25, v26, v27);
      v33._upper = v28;
      TSCEASTRelativeCoordRefElement::setTableUID(v4, &v33, a1, v29);
    }
  }

  if (objc_msgSend_isForTable_(*(a1 + 25), v6, &v33, v7))
  {
    tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID;
    coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
    return TSCEASTIteratorBase::convertReferenceErrorToRef(a1, v4, &tableUID, &coordinate, 0);
  }

  return v4;
}

void sub_2214BF538(id *a1)
{

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_2214BF574(id *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

void sub_2214BFE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_2210BDEC0(va);
  sub_2210BDEC0(va1);
  _Unwind_Resume(a1);
}

void sub_2214C0E20(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v8[2] = a2[2];
        v8[3] = a2[3];
        v9 = *v8;
        sub_2214C0F20(a1, v8);
        a2 = *a2;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v10 = *v8;
        operator delete(v8);
        v8 = v10;
      }

      while (v10);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_2214C1364(a1, a2 + 1);
  }
}

void sub_2214C0EEC(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t sub_2214C0F20(void *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 16) + 16 * *(a2 + 20);
  *(a2 + 8) = v5;
  v6 = sub_2214C0F70(a1, v5, v4);
  sub_2210BD408(a1, a2, v6);
  return a2;
}

void *sub_2214C0F70(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_2214C10E4(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  v18 = *a3;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v20 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v21 = v16[1];
      if (v20 >= v6)
      {
        v21 = v20 % v6;
      }
    }

    else
    {
      v21 = v20 & (v6 - 1);
    }

    if (v21 != v15)
    {
      break;
    }

    v24 = v20 == a2 && (v22 = v16[2], v22 == v18) && (v23 = v18 ^ v22, (v23 & 0x1FFFF00000000) == 0) && (v23 & 0x100000000000000) == 0;
    v25 = v24 != (v17 & 1);
    v26 = v17 & v25;
    v17 |= v25;
  }

  while (v26 != 1);
  return result;
}

void sub_2214C10E4(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_2214C11D4(result, prime);
    }
  }
}

void sub_2214C11D4(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_22107C238();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_2214C13E4(void *a1, unsigned int *a2, uint64_t a3, void **a4)
{
  v4 = *a2 + 16 * *(a2 + 2);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_23;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2 + 16 * *(a2 + 2);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_23:
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
      goto LABEL_23;
    }

LABEL_22:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  v12 = v9[2];
  v14 = v12 == v10;
  v13 = (v10 ^ v12) & 0x101FFFF00000000;
  v14 = v14 && v13 == 0;
  if (!v14)
  {
    goto LABEL_22;
  }

  return v9;
}

TSCEASTRelativeCoordRefElement *sub_2214C17DC(TSCEFormulaRewriteContext **a1, TSCEASTRelativeCoordRefElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTRelativeCoordRefElement::relativeCoord(this, a1, a3, a4);
  v7 = TSCEASTElement::refFlags(this, a1);
  v8 = TSCEFormulaRewriteContext::containingCell(a1[1]);
  if ((v7 & 0x10) != 0)
  {
    v11 = HIDWORD(v6);
    goto LABEL_11;
  }

  LOWORD(v11) = 0x7FFF;
  if (WORD2(v6) == 0x7FFF)
  {
    goto LABEL_11;
  }

  coordinate = v8->var0.var0.coordinate;
  if ((v6 >> 16) >> 16 < 1)
  {
    if ((v6 & 0x800000000000) != 0 && -SWORD2(v6) > coordinate.column)
    {
      goto LABEL_11;
    }
  }

  else if (999 - SWORD2(v6) < coordinate.column)
  {
    goto LABEL_11;
  }

  LOWORD(v11) = WORD2(v6) + coordinate.column;
  if ((WORD2(v6) + coordinate.column) >= 0x7FFFu)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "TSUColumnIndex TSCEMakeAbsoluteColumnFromRelativeColumn(TSUCellCoord, TSURelativeColumnIndex, BOOL)", v10);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 168, 0, "overflow in column");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

LABEL_11:
  v22 = TSCEFormulaRewriteContext::containingCell(a1[1]);
  v25 = v6;
  if ((v7 & 0x20) != 0)
  {
    goto LABEL_24;
  }

  v25 = 0x7FFFFFFF;
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_24;
  }

  v26 = v22->var0.var0.coordinate;
  if (v6 < 1)
  {
    if (v6 && v26.row < -v6)
    {
      goto LABEL_23;
    }
  }

  else if ((999999 - v6) < v26.row)
  {
    goto LABEL_23;
  }

  if (v26.row == 0x7FFFFFFF)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v24);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v30);
    v32 = NSStringFromTSUCellCoord();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v33, v28, v31, 195, 0, "Calling TSCEMakeAbsoluteRowFromRelativeRow with an invalid hostCell row: %@", v32);
  }

  else
  {
    v25 = v6 + v26.row;
    if ((v6 + v26.row) < 0x7FFFFFFF)
    {
      goto LABEL_24;
    }

    v34 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v24);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v36);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v37, v28, v31, 191, 0, "overflow in row, input row: %d with host row: %lu", v6, v26.row);
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40);
LABEL_23:
  v25 = 0x7FFFFFFF;
LABEL_24:
  if (((v7 & 0x10) != 0 || v11 != 0x7FFF || WORD2(v6) == 0x7FFF) && ((v7 & 0x20) != 0 || v25 != 0x7FFFFFFF || v6 == 0x7FFFFFFF))
  {
    v43 = (v25 | (v11 << 32) | 0x101000000000000);
    TSCEASTElement::setRefFlags(this, (v7 & 0x3F | ((v7 >> 4) << 6) | 0x30), a1, v24);
    TSCEASTRelativeCoordRefElement::setRelativeCoord(this, &v43, a1, v41);
  }

  else
  {
    TSCEASTElement::setRefFlags(this, (v7 & 0x3F | ((v7 >> 4) << 6)), a1, v24);
  }

  return this;
}

TSCEASTColonTractElement *sub_2214C1B54(TSCEFormulaRewriteContext **a1, TSCEASTColonTractElement *a2)
{
  v4 = TSCEASTElement::refFlags(a2, a1);
  v7 = TSCEASTColonTractElement::colonTractFlags(a2, a1, v5, v6);
  v10 = TSCEASTColonTractElement::relativeTractRef(a2, a1, v8, v9);
  coordinate = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
  v13 = objc_msgSend_absoluteCellTractRefForHostCell_(v10, v11, &coordinate, v12);
  v20 = v4 & 0x3F | (v4 >> 4 << 6);
  v21 = v7 & 0x3F | ((v7 >> 4) << 6);
  if (objc_msgSend_isValid(v13, v14, v15, v16) && (v22 = objc_msgSend_spansAllColumns(v13, v17, v18, v19), v22 == objc_msgSend_spansAllColumns(v10, v23, v24, v25)) && (v28 = objc_msgSend_spansAllRows(v13, v26, v27, v19), v28 == objc_msgSend_spansAllRows(v10, v29, v30, v31)))
  {
    objc_msgSend_setPreserveFlags_(v13, v32, 15, v19);
    v37 = [TSCERelativeTractRef alloc];
    coordinate = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var1.coordinate;
    v35 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v37, v38, v13, &coordinate);

    TSCEASTElement::setRefFlags(a2, (v20 | 0x30u), a1, v39);
    v40._flags = v21 | 0x30;
    TSCEASTColonTractElement::setColonTractFlags(a2, v40, a1, v41);
    TSCEASTColonTractElement::setRelativeTractRef(a2, v35, 0, a1, 1);
  }

  else
  {
    TSCEASTElement::setRefFlags(a2, v20, a1, v19);
    v33._flags = v21;
    TSCEASTColonTractElement::setColonTractFlags(a2, v33, a1, v34);
    v35 = v10;
  }

  return a2;
}

TSCEASTUidReferenceElement *sub_2214C1D24(TSCEASTIteratorBase *a1, TSCEASTUidReferenceElement *a2)
{
  v4 = TSCEASTElement::refFlags(a2, a1);
  v7 = TSCEASTUidReferenceElement::colonTractFlags(a2, a1, v5, v6);
  v11._flags = (4 * v7) & 0xC0 | v7 & 0xF | 0x30;
  TSCEASTElement::setRefFlags(a2, ((4 * v4) & 0xC0 | v4 & 0xF | 0x30u), a1, v8);
  TSCEASTUidReferenceElement::setColonTractFlags(a2, &v11, a1, v9);
  return a2;
}

TSCEASTRelativeCoordRefElement *sub_2214C1DEC(TSCEFormulaRewriteContext **a1, TSCEASTRelativeCoordRefElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTRelativeCoordRefElement::relativeCoord(this, a1, a3, a4);
  v16 = v6;
  v7 = TSCEASTElement::refFlags(this, a1);
  v9 = v7;
  if ((v7 & 0x10) != 0)
  {
    column = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var1.coordinate.column;
    if ((v9 & 0x40) != 0)
    {
      column = 0;
    }

    v11 = WORD2(v6) - column;
    if (WORD2(v6) == 0x7FFF)
    {
      v11 = WORD2(v6);
    }

    v16._column = v11;
  }

  if ((v9 & 0x20) != 0)
  {
    row = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var1.coordinate.row;
    if (v9 < 0)
    {
      row = 0;
    }

    v13 = v6 - row;
    if (v6 == 0x7FFFFFFF)
    {
      v13 = 0x7FFFFFFF;
    }

    v16._row = v13;
  }

  v16._preserveColumn = ((v9 >> 2) & 0x10) != 0;
  v16._preserveRow = (v9 & 0x80) != 0;
  TSCEASTElement::setRefFlags(this, ((v9 >> 2) & 0x20 | v9 & 0xF | (v9 >> 2) & 0x10u), a1, v8);
  TSCEASTRelativeCoordRefElement::setRelativeCoord(this, &v16, a1, v14);
  return this;
}

TSCEASTColonTractElement *sub_2214C1EF0(TSCEFormulaRewriteContext **a1, TSCEASTColonTractElement *a2)
{
  v4 = TSCEASTElement::refFlags(a2, a1);
  v7 = TSCEASTColonTractElement::colonTractFlags(a2, a1, v5, v6);
  v10 = TSCEASTColonTractElement::relativeTractRef(a2, a1, v8, v9);
  coordinate = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
  v13 = objc_msgSend_absoluteCellTractRefForHostCell_(v10, v11, &coordinate, v12);
  objc_msgSend_setPreserveFlags_(v13, v14, ((v7 >> 2) >> 2) & 0xFFFFFFFC | (v4 >> 6), v15);
  v16 = [TSCERelativeTractRef alloc];
  coordinate = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var1.coordinate;
  v18 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v16, v17, v13, &coordinate);

  TSCEASTElement::setRefFlags(a2, (v4 & 0xF | (16 * (v4 >> 6))), a1, v19);
  v20._flags = (v7 >> 2) & 0x20 | v7 & 0xF | (v7 >> 2) & 0x10;
  TSCEASTColonTractElement::setColonTractFlags(a2, v20, a1, v21);
  TSCEASTColonTractElement::setRelativeTractRef(a2, v18, 0, a1, 1);

  return a2;
}

TSCEASTUidReferenceElement *sub_2214C206C(TSCEASTIteratorBase *a1, TSCEASTUidReferenceElement *a2)
{
  v4 = TSCEASTElement::refFlags(a2, a1);
  v7 = TSCEASTUidReferenceElement::colonTractFlags(a2, a1, v5, v6);
  v11._flags = v7 & 0xF | (16 * (v7 >> 6));
  TSCEASTElement::setRefFlags(a2, (v4 & 0xF | (16 * (v4 >> 6))), a1, v8);
  TSCEASTUidReferenceElement::setColonTractFlags(a2, &v11, a1, v9);
  return a2;
}

TSCEASTCategoryRefElement *sub_2214C20F8(TSCEFormulaRewriteContext **a1, TSCEASTCategoryRefElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTCategoryRefElement::mutableCategoryRef(this, a1, a3, a4);
  if ((objc_msgSend_preserveFlags(v6, v7, v8, v9) & 2) == 0)
  {
    v13 = objc_msgSend_absoluteGroupUid(v6, v10, v11, v12);
    if (v13 | v14)
    {
      v15 = sub_221089E8C(a1);
      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var1._tableUID;
      v18 = objc_msgSend_tableOrLinkedResolverForTableUID_(v15, v16, &tableUID, v17);

      if (v18)
      {
        v22 = objc_msgSend_groupByUUID(v18, v19, v20, v21);
        v24 = v23;
        if (v22 == objc_msgSend_groupByUid(v6, v23, v25, v26) && v24 == v27)
        {
          tableUID._lower = objc_msgSend_absoluteGroupUid(v6, v27, v28, v29);
          tableUID._upper = v30;
          v31 = TSCEFormulaRewriteContext::containingCell(a1[1]);
          v43[0] = objc_msgSend_rowUIDForRowIndex_(v18, v32, v31->var0.var1.coordinate.row, v33);
          v43[1] = v34;
          v35 = objc_msgSend_convertToRelativeAncestorUid_rowUid_(v18, v34, &tableUID, v43);
          v41 = v35;
          v42 = v36;
          if (v35 | v36 && __PAIR128__(v36, v35) != tableUID)
          {
            objc_msgSend_setAsRelativeWithGroupUid_(v6, v36, &v41, v37);
          }

          else
          {
            objc_msgSend_setAsAbsoluteWithGroupUid_(v6, v36, &tableUID, v37, v41, v42);
          }

          TSCEASTCategoryRefElement::setCategoryRef(this, v6, a1);
        }

        else
        {
          tableUID._lower = objc_msgSend_absoluteGroupUid(v6, v27, v28, v29);
          tableUID._upper = v38;
          objc_msgSend_setAsAbsoluteWithGroupUid_(v6, v38, &tableUID, v39);
          TSCEASTCategoryRefElement::setCategoryRef(this, v6, a1);
        }
      }
    }
  }

  return this;
}

void sub_2214C22CC(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, a2);

  JUMPOUT(0x223DA1450);
}

void sub_2214C2308(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, a2);

  JUMPOUT(0x223DA1450);
}

void **sub_2214C2DBC(void **result, unint64_t a2)
{
  if (result[6] > a2)
  {
    v4 = result;
    v6 = sub_2213AAD64(result[4], a2);
    v7 = *(v4[5] + 5);

    return objc_msgSend_setHidden_atIndex_(v7, v5, v6, a2);
  }

  return result;
}

TSTHiddenRowsColumnsCacheValidationCollection *sub_2214C2E1C()
{
  v0 = objc_alloc_init(TSTHiddenRowsColumnsCacheValidationCollection);

  return v0;
}

void sub_2214C2E4C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v25 = a4;
  if (a2 < a2 + a3)
  {
    while (1)
    {
      v7 = sub_2213AAC8C(*(a1 + 32), a2);
      if (!v7)
      {
        break;
      }

      v11 = v7;
      v12 = objc_msgSend_hidden(v25, v8, v9, v10);
      objc_msgSend_addIndex_(v12, v13, a2, v14);

      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }

      v18 = objc_msgSend_userHidden(v25, v15, v16, v17);
LABEL_7:
      v24 = v18;
      objc_msgSend_addIndex_(v18, v19, a2, v20);

      ++a2;
      if (!--a3)
      {
        goto LABEL_8;
      }
    }

    v21 = objc_msgSend_visible(v25, v8, v9, v10);
    objc_msgSend_addIndex_(v21, v22, a2, v23);

LABEL_6:
    v18 = objc_msgSend_userVisible(v25, v15, v16, v17);
    goto LABEL_7;
  }

LABEL_8:
}

void sub_2214C2F48(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v34, v38, 16);
  if (v5)
  {
    v9 = v5;
    v10 = *v35;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        v13 = *(*(a1 + 32) + 8);
        v14 = objc_msgSend_hidden(v12, v6, v7, v8);
        objc_msgSend_setHidden_atIndexes_(v13, v15, 1, v14);

        v16 = *(*(a1 + 32) + 8);
        v20 = objc_msgSend_visible(v12, v17, v18, v19);
        objc_msgSend_setHidden_atIndexes_(v16, v21, 0, v20);

        v22 = *(*(a1 + 32) + 16);
        v26 = objc_msgSend_userHidden(v12, v23, v24, v25);
        objc_msgSend_setHidden_atIndexes_(v22, v27, 1, v26);

        v28 = *(*(a1 + 32) + 16);
        v32 = objc_msgSend_userVisible(v12, v29, v30, v31);
        objc_msgSend_setHidden_atIndexes_(v28, v33, 0, v32);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v34, v38, 16);
    }

    while (v9);
  }
}

void sub_2214C364C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2214C3684(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_deleteRange_(*(*(a1 + 32) + 8), a2, a2, a3);
  objc_msgSend_deleteRange_(*(*(a1 + 32) + 16), v6, a2, a3);
  v8 = *(*(a1 + 32) + 24);

  return objc_msgSend_shiftIndexesStartingAtIndex_by_(v8, v7, &a2[a3], -a3);
}

uint64_t sub_2214C36FC(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_insertRange_(*(*(a1 + 32) + 8), a2, a2, a3);
  objc_msgSend_insertRange_(*(*(a1 + 32) + 16), v6, a2, a3);
  objc_msgSend_shiftIndexesStartingAtIndex_by_(*(*(a1 + 32) + 24), v7, a2, a3);
  v9 = *(*(a1 + 32) + 24);

  return objc_msgSend_addIndexesInRange_(v9, v8, a2, a3);
}

void *sub_2214C3788(void *a1, const char *a2, unsigned int a3, uint64_t a4)
{
  v5 = a2;
  v7 = a3;
  isIndexHidden = objc_msgSend_isIndexHidden_(*(a1[4] + 8), a2, a3, a4);
  v13 = objc_msgSend_isIndexHidden_(*(a1[4] + 16), v9, v7, v10);
  v14 = *(a1[4] + 8);
  if (*(*(a1[5] + 8) + 24) == v5)
  {
    objc_msgSend_setHidden_atIndex_(*(a1[4] + 8), v11, *(*(a1[6] + 8) + 24), v7);
    result = objc_msgSend_setHidden_atIndex_(*(a1[4] + 16), v15, *(*(a1[7] + 8) + 24), v7);
  }

  else
  {
    v17 = objc_msgSend_isIndexHidden_(*(a1[4] + 8), v11, v5, v12);
    objc_msgSend_setHidden_atIndex_(v14, v18, v17, v7);
    v19 = *(a1[4] + 16);
    v22 = objc_msgSend_isIndexHidden_(v19, v20, v5, v21);
    result = objc_msgSend_setHidden_atIndex_(v19, v23, v22, v7);
  }

  *(*(a1[5] + 8) + 24) = a3;
  *(*(a1[6] + 8) + 24) = isIndexHidden;
  *(*(a1[7] + 8) + 24) = v13;
  return result;
}

uint64_t sub_2214C38A4(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_deleteRange_(*(*(a1 + 32) + 40), a2, a2, a3);
  v7 = *(*(a1 + 32) + 48);

  return objc_msgSend_shiftIndexesStartingAtIndex_by_(v7, v6, &a2[a3], -a3);
}

uint64_t sub_2214C3908(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_insertRange_(*(*(a1 + 32) + 40), a2, a2, a3);
  objc_msgSend_shiftIndexesStartingAtIndex_by_(*(*(a1 + 32) + 48), v6, a2, a3);
  v8 = *(*(a1 + 32) + 48);

  return objc_msgSend_addIndexesInRange_(v8, v7, a2, a3);
}

void *sub_2214C3980(void *result, const char *a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = *(result + 12);
  if (v7 > 46)
  {
    switch(v7)
    {
      case '/':
        objc_msgSend_addIndexesInRange_(*(*(result + 4) + 48), a2, WORD2(a2), a3);
        break;
      case '0':
        break;
      case '2':
        v8 = HIDWORD(a3);
        objc_msgSend_deleteRange_(*(*(result + 4) + 40), a2, 0, HIDWORD(a3));
        objc_msgSend_removeAllIndexes(*(v6[4] + 48), v9, v10, v11);
        objc_msgSend_deleteRange_(*(v6[4] + 8), v12, 0, a3);
        objc_msgSend_deleteRange_(*(v6[4] + 16), v13, 0, a3);
        objc_msgSend_removeAllIndexes(*(v6[4] + 24), v14, v15, v16);
        objc_msgSend_addIndexesInRange_(*(v6[4] + 48), v17, WORD2(a2), a3);
        v18 = *(v6[4] + 24);
        v19 = a2;
        v20 = v8;
        goto LABEL_11;
      default:
        return result;
    }

    v18 = *(v6[4] + 24);
    v20 = HIDWORD(a3);
    v19 = a2;
LABEL_11:

    return objc_msgSend_addIndexesInRange_(v18, a2, v19, v20);
  }

  if (v7 == 5)
  {
    v22 = WORD2(a2);
    v21 = a3;
    v27 = *(*(result + 4) + 40);
    v32 = (objc_msgSend_cellID(*(result + 5), a2, a3, a4) >> 32);
  }

  else
  {
    if (v7 != 26)
    {
      return result;
    }

    v21 = HIDWORD(a3);
    v22 = a2;
    v23 = *(*(result + 4) + 8);
    v24 = objc_msgSend_cellID(*(result + 5), a2, a3, a4);
    objc_msgSend_moveRangeFrom_toIndex_(v23, v25, v22, v21, v24);
    v26 = v6[5];
    v27 = *(v6[4] + 16);
    v32 = objc_msgSend_cellID(v26, v28, v29, v30);
  }

  return objc_msgSend_moveRangeFrom_toIndex_(v27, v31, v22, v21, v32);
}

void sub_2214C3C08(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v3 = &unk_2834A96C8;
  *(v3 + 136) = 0;
  *(v3 + 140) = 0;
}

uint64_t sub_2214C3C44(TSCEFormulaRewriteContext **a1, TSCEASTUidReferenceElement *a2)
{
  if (TSCEASTElement::refFlags(a2, a1))
  {
    lower = TSCEASTUidReferenceElement::tableUID(a2, a1, v4, v5);
  }

  else
  {
    v6 = TSCEFormulaRewriteContext::containingCell(a1[1]);
    lower = v6->var0.var0._tableUID._lower;
    upper = v6->var0.var0._tableUID._upper;
  }

  v55._lower = lower;
  v55._upper = upper;
  v9 = (*(*a2 + 96))(a2, a1);
  v12 = TSCEASTUidReferenceElement::preserveFlags(a2, a1, v10, v11);
  v54._flags = v12;
  v53._flags = TSCEASTElement::refFlags(a2, a1);
  v15 = TSCEASTUidReferenceElement::colonTractFlags(a2, a1, v13, v14);
  v17 = objc_msgSend_cellTractRefWithUidTractList_onTable_preserveFlags_rewriteContext_(TSCECellTractRef, v16, v9, &v55, v12, a1[1]);
  v21 = v17;
  if (!v17)
  {
    TSCEASTIteratorBase::createReferenceErrorWithUidTractList(a1, v9, &v55, &v54);
  }

  if (objc_msgSend_isSingleCellOrSpanningRange(v17, v18, v19, v20))
  {
    isRangeRef = TSCEFormulaRewriteContext::isRangeRef(a1[1]);
  }

  else
  {
    isRangeRef = 1;
  }

  v52 = 0;
  TSCEFormulaRewriteContext::containingCell(a1[1]);
  TSCEFormulaRewriteContext::fromOffset(a1[1]);
  v52 = TSUOffsetColumnRowCoordinate();
  if (isRangeRef)
  {
    objc_msgSend_setPreserveFlags_(v21, v23, v12 & 0xF, v25);
    LOBYTE(v51.coordinate.row) = objc_msgSend_preserveFlags(v21, v26, v27, v28);
    TSCEASTRefFlags::setPreserveFlags(&v53, &v51);
    v32 = objc_msgSend_preserveFlags(v21, v29, v30, v31);
    v36 = objc_msgSend_preserveFlags(v21, v33, v34, v35);
    if (objc_msgSend_preserveRectangular(v21, v37, v38, v39))
    {
      v40 = 2;
    }

    else
    {
      v40 = 0;
    }

    v41 = [TSCERelativeTractRef alloc];
    v43 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v41, v42, v21, &v52);
    flags = v53._flags;
    *&v51.coordinate.row = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
    v45._flags = v15 & 0xCD | (16 * ((v32 & 4) != 0)) & 0xDF | (32 * ((v36 & 8) != 0)) | v40;
    v46._flags = flags;
    TSCEASTIteratorBase::createColonTractRef(a1, v46, v45, v43, v9, &v51);
  }

  v51.coordinate = objc_msgSend_topLeft(v21, v23, v24, v25);
  v51._tableUID = v55;
  v50._flags = v12 & 3;
  tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
  v47 = TSCEASTIteratorBase::createReference(a1, &v51, &v50, &tableUID, &v52, v9);
  ((*a1)->var2.var0.var0._tableUID._lower)(a1, a2);

  return v47;
}

TSCEASTRelativeCoordRefElement *sub_2214C3FC8(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  v4 = *(a1 + 137);
  TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  v7 = TSUOffsetColumnRowCoordinate();
  tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  result = TSCEASTIteratorBase::convertReferenceErrorToRef(a1, a2, &tableUID, &v7, (v4 & 1) == 0);
  if (result == a2)
  {
    *(a1 + 136) = 1;
  }

  return result;
}

void sub_2214C4054(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, a2);

  JUMPOUT(0x223DA1450);
}

void sub_2214C4B50(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], a2, a3, a4, 0.0549019612, 0.298039228, 0.760784328, 0.5);
  v5 = qword_27CFB5660;
  qword_27CFB5660 = v4;
}

id sub_2214C4C4C(uint64_t a1)
{
  if (qword_27CFB5678 != -1)
  {
    sub_2216F7F74();
  }

  v2 = qword_27CFB5670;

  return v2;
}

void sub_2214C4C90(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_tswp_spaceCharacterSet(MEMORY[0x277CCA900], a2, a3, a4);
  v15 = objc_msgSend_mutableCopy(v4, v5, v6, v7);

  objc_msgSend_removeCharactersInString_(v15, v8, @" ", v9);
  v13 = objc_msgSend_copy(v15, v10, v11, v12);
  v14 = qword_27CFB5670;
  qword_27CFB5670 = v13;
}

void sub_2214C56A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  MEMORY[0x223D9F890](va, a2, a3);
  sub_2211AF274(va1);

  _Unwind_Resume(a1);
}

void sub_2214C59C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);

  MEMORY[0x223D9F890](va);
  sub_2211AF274(va1);

  _Unwind_Resume(a1);
}

void sub_2214C5DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);

  MEMORY[0x223D9F890](va);
  sub_2211AF274(va1);

  _Unwind_Resume(a1);
}

void sub_2214C61A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);

  MEMORY[0x223D9F890](va);
  sub_2211AF274(va1);

  _Unwind_Resume(a1);
}

void sub_2214C689C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2211AF274(va);

  _Unwind_Resume(a1);
}

void sub_2214C6D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);

  MEMORY[0x223D9F890](va);
  sub_2211AF274(va1);

  _Unwind_Resume(a1);
}

void sub_2214C700C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  MEMORY[0x223D9F890](va, a2, a3);
  sub_2211AF274(va1);

  _Unwind_Resume(a1);
}

void sub_2214C7750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  MEMORY[0x223D9F890](va, a2, a3);
  sub_2211AF274(va1);

  _Unwind_Resume(a1);
}

void sub_2214C7A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  MEMORY[0x223D9F890](va, a2, a3);
  sub_2211AF274(va1);

  _Unwind_Resume(a1);
}

void sub_2214C7E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  MEMORY[0x223D9F890](va, a2, a3);
  sub_2211AF274(va1);

  _Unwind_Resume(a1);
}

void sub_2214C8DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  MEMORY[0x223D9F890](&a21);
  sub_2211AF274(&a27);

  _Unwind_Resume(a1);
}

void sub_2214C9328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  TSTParser::~TSTParser((v20 - 144));

  _Unwind_Resume(a1);
}

void sub_2214CAAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  MEMORY[0x223D9F890](&a24);
  sub_2211AF274(&a30);

  _Unwind_Resume(a1);
}

TSCEASTElementWithChildren *sub_2214CAD6C(TSCEFormulaRewriteContext **a1, TSCEASTElementWithChildren *this)
{
  v4 = TSCEASTElementWithChildren::child(this, 0);
  v5 = TSCEASTElementWithChildren::child(this, 1u);
  if (v4)
  {
    v6 = v5;
    if (v5)
    {
      v7 = (*(*v4 + 40))(v4, a1);
      v8 = (*(*v6 + 40))(v6, a1);
      v9 = TSCEASTElement::tag(v7, a1);
      v10 = TSCEASTElement::tag(v8, a1);
      v11 = TSCEASTElement::simpleTagForTag(v9);
      if (v11 == TSCEASTElement::simpleTagForTag(v10) && v9 == 36)
      {
        *v55 = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
        (*(*v7 + 136))(&v56, v7, a1, v55);
        v53._topLeft = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
        (*(*v8 + 136))(v55, v8, a1, &v53);
        if ((*&v56 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && (*v55 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
        {
          v12 = (*&v56 & 0xFFFF00000000) != 0x7FFF00000000 || v56.row == 0x7FFFFFFFLL;
          v13 = !v12;
          v14 = (*v55 & 0xFFFF00000000) != 0x7FFF00000000 || v55[0] == 0x7FFFFFFFLL;
          v15 = !v14;
          if (v13 == v15)
          {
            v16 = v56.row != 0x7FFFFFFFLL || (*&v56 & 0xFFFF00000000) == 0x7FFF00000000;
            v17 = !v16;
            v18 = v55[0] != 0x7FFFFFFFLL || (*v55 & 0xFFFF00000000) == 0x7FFF00000000;
            v19 = v18;
            if (v17 != v19)
            {
              flags = TSCEASTRelativeCoordRefElement::preserveFlags(v7, a1);
              LOBYTE(v8) = TSCEASTRelativeCoordRefElement::preserveFlags(v8, a1);
              v54._flags = flags & 3 | (4 * (v8 & 3));
              v53._topLeft = v56;
              v53._bottomRight = *v55;
              TSCERangeCoordinate::fixInversions(&v53, &v54);
              if (v56.row != v53._topLeft.row || ((*&v53._topLeft ^ *&v56) & 0x101FFFF00000000) != 0)
              {
                flags = v54._flags;
                LODWORD(v8) = v54._flags >> 2;
              }

              v52 = 0uLL;
              v21 = v57;
              if (v57 != 0 && v21 != *&TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID)
              {
                v52 = v57;
              }

              v22 = [TSCERelativeTractRef alloc];
              v24 = objc_msgSend_initWithTableUID_preserveFlags_(v22, v23, &v52, &v54);
              objc_msgSend_setPreserveRectangular_(v24, v25, 1, v26);
              if ((*&v56 & 0xFFFF00000000) != 0x7FFF00000000 || v56.row == 0x7FFFFFFFLL)
              {
                if (v56.row == 0x7FFFFFFFLL && (*&v56 & 0xFFFF00000000) != 0x7FFF00000000)
                {
                  objc_msgSend_setSpansAllRows_(v24, v27, 1, v29);
                }
              }

              else
              {
                objc_msgSend_setSpansAllColumns_(v24, v27, 1, v29);
              }

              if ((objc_msgSend_spansAllColumns(v24, v27, v28, v29) & 1) == 0)
              {
                column = v53._topLeft.column;
                v34 = v53._bottomRight.column;
                if (flags & 1) != 0 && (v8)
                {
                  tableUID._lower = v53._topLeft.column;
                  tableUID._upper = v53._bottomRight.column;
                  objc_msgSend_addColumnRange_(v24, v30, &tableUID, v32);
                }

                else
                {
                  v37 = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate.column;
                  v38 = column - v37;
                  v39 = v34 - v37;
                  if (flags)
                  {
                    objc_msgSend_addColumn_(v24, v35, column, v36);
                    if (column != v34)
                    {
                      ++v38;
                    }
                  }

                  else if (v8)
                  {
                    objc_msgSend_addColumn_(v24, v35, v34, v36);
                    v39 -= column != v34;
                  }

                  tableUID._lower = v38;
                  tableUID._upper = v39;
                  objc_msgSend_addRelativeColumnRange_(v24, v35, &tableUID, v36);
                }
              }

              if ((objc_msgSend_spansAllRows(v24, v30, v31, v32) & 1) == 0)
              {
                row = v53._topLeft.row;
                v43 = v53._bottomRight.row;
                if ((flags & 2) != 0 && (v8 & 2) != 0)
                {
                  tableUID._lower = v53._topLeft.row;
                  tableUID._upper = v53._bottomRight.row;
                  objc_msgSend_addRowRange_(v24, v40, &tableUID, v41);
                }

                else
                {
                  v46 = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate.row;
                  v47 = row - v46;
                  v48 = v43 - v46;
                  if ((flags & 2) != 0)
                  {
                    objc_msgSend_addRow_(v24, v44, row, v45);
                    if (row != v43)
                    {
                      ++v47;
                    }
                  }

                  else if ((v8 & 2) != 0)
                  {
                    objc_msgSend_addRow_(v24, v44, v43, v45);
                    v48 -= row != v43;
                  }

                  tableUID._lower = v47;
                  tableUID._upper = v48;
                  objc_msgSend_addRelativeRowRange_(v24, v44, &tableUID, v45);
                }
              }

              v49 = (*(*this + 96))(this, a1);
              tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
              TSCEASTIteratorBase::createColonTractRef(a1, v24, v49, &tableUID);
            }
          }
        }
      }
    }
  }

  return this;
}

void sub_2214CB2BC(TSCEASTRewriter *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

void sub_2214CB394(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_msgSend_properties(*(a1 + 32), a2, a3, a4);
  v6 = objc_msgSend_propertySetByAddingProperty_(v8, v4, 905, v5);
  v7 = qword_27CFB5680;
  qword_27CFB5680 = v6;
}

void sub_2214CBA10(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_removeValueForProperty_(*(a1 + 32), a2, a2, a4);
  v6 = *(a1 + 40);
  v10 = objc_msgSend_boxedValueForProperty_(*(a1 + 48), v7, a2, v8);
  objc_msgSend_setBoxedObject_forProperty_(v6, v9, v10, a2);
}

void sub_2214CBA88(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_setBoxedObject_forProperty_(*(a1 + 32), a2, a4, a2);
  v8 = objc_msgSend_boxedValueForProperty_(*(a1 + 40), v6, a2, v7);
  v15 = v8;
  if (v8)
  {
    objc_msgSend_setBoxedObject_forProperty_(*(a1 + 56), v8, v8, a2);
  }

  else
  {
    v9 = *(a1 + 48);
    if (String())
    {
      objc_msgSend_setBoxedObject_forProperty_(v9, v10, &unk_28350EBA8, a2);
    }

    else
    {
      v13 = objc_msgSend_null(MEMORY[0x277CBEB68], v10, v11, v12);
      objc_msgSend_setBoxedObject_forProperty_(v9, v14, v13, a2);
    }
  }
}

void sub_2214CE434(uint64_t a1, char *__s)
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

void sub_2214CE52C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2214CE548(uint64_t a1, void *__src, size_t __n)
{
  *(a1 + 16) |= 2u;
  if (__n >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
  }

  if (__n >= 0x17)
  {
    operator new();
  }

  v5 = __n;
  if (__n)
  {
    memcpy(&__dst, __src, __n);
  }

  *(&__dst + __n) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_2214CE638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_2214CE78C(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, _OWORD *a4, __n128 *a5)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v7 = &unk_2834A99E0;
  *(v7 + 136) = *a4;
  result = *a5;
  *(v7 + 152) = *a5;
  return result;
}

TSCEASTCategoryRefElement *sub_2214CE7E0(TSCEASTIteratorBase *a1, TSCEASTCategoryRefElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTCategoryRefElement::categoryRef(this, a1, a3, a4);
  v9 = objc_msgSend_copyAndReplaceGroupUIDs_(v6, v7, a1 + 152, v8);
  objc_msgSend_setGroupByUid_(v9, v10, *(a1 + 17), *(a1 + 18));
  TSCEASTCategoryRefElement::setCategoryRef(this, v9, a1);

  return this;
}

TSCEASTStreamIterator *sub_2214CE86C(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, _OWORD *a4, uint64_t a5)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v8 = &unk_2834A9B38;
  *(v8 + 136) = *a4;
  sub_2214CEFAC(v8 + 152, a5);
  return a1;
}

TSCEASTCategoryRefElement *sub_2214CE8EC(TSCEASTIteratorBase *a1, TSCEASTCategoryRefElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTCategoryRefElement::mutableCategoryRef(this, a1, a3, a4);
  if (objc_msgSend_groupByUid(v6, v7, v8, v9) == *(a1 + 17) && v10 == *(a1 + 18))
  {
    v23 = objc_msgSend_absoluteGroupUid(v6, v10, v11, v12);
    v24 = v13;
    v14 = sub_2210875C4(a1 + 19, &v23);
    v18 = v14;
    if (v14)
    {
      objc_msgSend_setAbsoluteGroupUid_(v6, v15, v14[4], v14[5]);
    }

    v23 = objc_msgSend_relativeGroupUid(v6, v15, v16, v17);
    v24 = v19;
    v20 = sub_2210875C4(a1 + 19, &v23);
    if (v20)
    {
      objc_msgSend_setRelativeGroupUid_(v6, v21, v20[4], v20[5]);
LABEL_8:
      TSCEASTCategoryRefElement::setCategoryRef(this, v6, a1);
      goto LABEL_9;
    }

    if (v18)
    {
      goto LABEL_8;
    }
  }

LABEL_9:

  return this;
}

void sub_2214CE9E0(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, char a4)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v5 = &unk_2834A9C90;
  *(v5 + 136) = a4;
}

TSCEASTCategoryRefElement *sub_2214CEA24(TSCEFormulaRewriteContext **a1, TSCEASTCategoryRefElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTCategoryRefElement::mutableCategoryRef(this, a1, a3, a4);
  v10 = objc_msgSend_type(v6, v7, v8, v9);
  v13 = *(a1 + 136);
  if (v10 != v13)
  {
    objc_msgSend_setType_(v6, v11, v13, v12);
    TSCEASTCategoryRefElement::setCategoryRef(this, v6, a1);
  }

  v14 = sub_221089E8C(a1);
  v31 = objc_msgSend_groupByUid(v6, v15, v16, v17);
  v32 = v18;
  v20 = objc_msgSend_tableOrLinkedResolverForTableUID_(v14, v18, &v31, v19);

  if (v20)
  {
    v21 = TSCEFormulaRewriteContext::containingCell(a1[1]);
    v31 = objc_msgSend_rowUIDForRowIndex_(v20, v22, v21->var0.var1.coordinate.row, v23);
    v32 = v24;
    tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var1._tableUID;
    v26 = objc_msgSend_resolveCategoryRefAtRowUid_rowUid_containingTableUID_(v20, v25, v6, &v31, &tableUID);
    if ((objc_msgSend_isEqual_(v6, v27, v26, v28) & 1) == 0)
    {
      TSCEASTCategoryRefElement::setCategoryRef(this, v26, a1);
    }
  }

  return this;
}

TSCEASTStreamIterator *sub_2214CEB84(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4)
{
  v7 = a4;
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *a1 = &unk_2834A9DE8;
  *(a1 + 17) = v7;
  return a1;
}

TSCEASTCategoryRefElement *sub_2214CEC04(TSCEASTIteratorBase *a1, TSCEASTCategoryRefElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTCategoryRefElement::mutableCategoryRef(this, a1, a3, a4);
  v7 = sub_221089E8C(a1);
  tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID;
  v10 = objc_msgSend_tableOrLinkedResolverForTableUID_(v7, v8, &tableUID, v9);

  if (v10)
  {
    v14 = objc_msgSend_groupByUUID(v10, v11, v12, v13);
    v16 = v15;
    if (v14 == objc_msgSend_groupByUid(v6, v15, v17, v18) && v16 == v19)
    {
      if (objc_msgSend_isValid(v6, v19, v20, v21))
      {
        if ((objc_msgSend_preserveFlags(v6, v22, v23, v24) & 2) == 0)
        {
          tableUID._lower = objc_msgSend_relativeGroupUid(v6, v25, v26, v27);
          tableUID._upper = v28;
          if (tableUID._lower | v28)
          {
            NumberOfGroupByLevels = objc_msgSend_getNumberOfGroupByLevels(v10, v28, v29, v30);
            v34 = objc_msgSend_relativeLevelOfAncestorGroupUid_(v10, v32, &tableUID, v33);
            v38 = objc_msgSend_groupByChange(*(a1 + 17), v35, v36, v37);
            v40 = objc_msgSend_updatedRelativeAncestorLevelForPreviousAncestorCategoryLevel_numLevels_(v38, v39, v34, NumberOfGroupByLevels);

            if (v40 == 255 || (v42 = objc_msgSend_relativeAncestorGroupUid_(v10, v41, v40, v43), !(v42 | v41)))
            {
              v47[0] = objc_msgSend_absoluteGroupUid(v6, v41, v42, v43);
              v47[1] = v44;
              objc_msgSend_setAsAbsoluteWithGroupUid_(v6, v44, v47, v45);
            }

            else
            {
              objc_msgSend_setRelativeGroupUid_(v6, v41, v42, v41);
            }

            TSCEASTCategoryRefElement::setCategoryRef(this, v6, a1);
          }
        }
      }
    }
  }

  return this;
}

void sub_2214CEDF0(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, a2);

  JUMPOUT(0x223DA1450);
}

void sub_2214CEE28(TSCEASTStreamIterator *a1)
{
  *a1 = &unk_2834A9B38;
  sub_2210BDEC0(a1 + 152);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_2214CEE7C(TSCEASTStreamIterator *a1)
{
  *a1 = &unk_2834A9B38;
  sub_2210BDEC0(a1 + 152);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);

  JUMPOUT(0x223DA1450);
}

void sub_2214CEEE8(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, a2);

  JUMPOUT(0x223DA1450);
}

void sub_2214CEF20(id *a1)
{

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_2214CEF5C(id *a1)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);

  JUMPOUT(0x223DA1450);
}

uint64_t sub_2214CEFAC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_221087270(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_2214CF024(a1, i + 2, i + 1);
  }

  return a1;
}

void *sub_2214CF024(void *a1, void *a2, _OWORD *a3)
{
  v3 = a2[1];
  v4 = v3 ^ *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 ^ *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
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
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[2] != *a2 || v9[3] != v3)
  {
    goto LABEL_21;
  }

  return v9;
}

void sub_2214CF3A8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2214CF510(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      v6 = objc_opt_new();
      v7 = *(a1 + 8);
      *(a1 + 8) = v6;

      v5 = *(a1 + 8);
    }

    objc_msgSend_addObject_(v5, v3, v8, v4);
  }
}

void sub_2214CF598(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_msgSend_removeAllObjects(*(a1 + 8), v4, v5, v6);
  if (v3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v3;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v13, v17, 16);
    if (v9)
    {
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          sub_2214CF510(a1, *(*(&v13 + 1) + 8 * v11++));
        }

        while (v9 != v11);
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v12, &v13, v17, 16);
      }

      while (v9);
    }
  }
}

id sub_2214CF6D4(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 8);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v14, v18, 16);
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_addObject_(v2, v5, *(*(&v14 + 1) + 8 * i), v6, v14);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v14, v18, 16);
    }

    while (v7);
  }

  v12 = objc_msgSend_sortedArrayUsingComparator_(v2, v10, &unk_2834A9F90, v11);

  return v12;
}

uint64_t sub_2214CF834(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v9 = objc_msgSend_warningType(v4, v6, v7, v8);
  if (v9 >= objc_msgSend_warningType(v5, v10, v11, v12))
  {
    v17 = objc_msgSend_warningType(v4, v13, v14, v15);
    v16 = v17 > objc_msgSend_warningType(v5, v18, v19, v20);
  }

  else
  {
    v16 = -1;
  }

  return v16;
}

void sub_2214CF8CC(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  if (v7)
  {
    *(a2 + 16) |= 2u;
    v8 = *(a2 + 56);
    if (!v8)
    {
      v9 = *(a2 + 8);
      if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
      }

      v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ErrorArchive>(v9);
      *(a2 + 56) = v8;
    }

    objc_msgSend_saveToArchive_(v7, v4, v8, v6);
  }

  if (*(a1 + 24) != -1 && (*(a1 + 16) & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    *(a2 + 16) |= 4u;
    v10 = *(a2 + 64);
    if (!v10)
    {
      v11 = *(a2 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellReferenceArchive>(v11);
      *(a2 + 64) = v10;
    }

    sub_2215C38E0(a1 + 16, v10);
  }

  if (objc_msgSend_count(*(a1 + 8), v4, v5, v6))
  {
    sub_2214CF6D4(a1);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v12 = v29 = 0u;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v28, v32, 16);
    if (!v16)
    {
      goto LABEL_29;
    }

    v17 = *v29;
    while (1)
    {
      v18 = 0;
      do
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v28 + 1) + 8 * v18);
        v20 = *(a2 + 40);
        if (!v20)
        {
          goto LABEL_25;
        }

        v21 = *(a2 + 32);
        v22 = *v20;
        if (v21 < *v20)
        {
          *(a2 + 32) = v21 + 1;
          objc_msgSend_saveToArchive_(v19, v14, *&v20[2 * v21 + 2], v15, v28);
          goto LABEL_27;
        }

        if (v22 == *(a2 + 36))
        {
LABEL_25:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24));
          v20 = *(a2 + 40);
          v22 = *v20;
        }

        *v20 = v22 + 1;
        v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::WarningArchive>(*(a2 + 24));
        v24 = *(a2 + 32);
        v25 = *(a2 + 40) + 8 * v24;
        *(a2 + 32) = v24 + 1;
        *(v25 + 8) = v23;
        objc_msgSend_saveToArchive_(v19, v26, v23, v27, v28);
LABEL_27:
        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v28, v32, 16);
      if (!v16)
      {
LABEL_29:

        break;
      }
    }
  }
}

void sub_2214CFB50(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = a3;
  v7 = *(a2 + 16);
  if ((v7 & 2) != 0)
  {
    v8 = objc_msgSend_loadFromArchive_(TSCEError, v5, *(a2 + 56), v6);
    if ((*(a2 + 16) & 4) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = 0;
    if ((v7 & 4) == 0)
    {
LABEL_3:
      v9 = 0xFFFF;
      v10 = 0x7FFF7FFFFFFFLL;
      goto LABEL_9;
    }
  }

  v10 = sub_2215C3954(*(a2 + 64));
  v9 = v11;
  if (v22)
  {
    v14 = objc_msgSend_idMap(v22, v11, v12, v13);
    v15 = v9;
    if (*(v14 + 144))
    {
      v15 = sub_2212602C8(v14, v9);
    }

    v9 = v9 & 0xFFFF0000 | v15;
  }

LABEL_9:
  objc_storeStrong(a1, v8);
  v16 = *(a1 + 8);
  *(a1 + 8) = 0;

  *(a1 + 16) = v10;
  *(a1 + 24) = v9;
  v19 = *(a2 + 32);
  if (v19 >= 1)
  {
    v20 = 8;
    do
    {
      v21 = objc_msgSend_loadFromArchive_(TSCEWarning, v17, *(*(a2 + 40) + v20), v18);
      sub_2214CF510(a1, v21);

      v20 += 8;
      --v19;
    }

    while (v19);
  }
}

void *sub_2214D07E4(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  sub_2214CF598(a1, a2);
  return a1;
}

void *sub_2214D082C(void *a1, unsigned int *a2, uint64_t a3, void **a4)
{
  v4 = *a2 + 16 * *(a2 + 2);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_23;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2 + 16 * *(a2 + 2);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_23:
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
      goto LABEL_23;
    }

LABEL_22:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  v12 = v9[2];
  v14 = v12 == v10;
  v13 = (v10 ^ v12) & 0x101FFFF00000000;
  v14 = v14 && v13 == 0;
  if (!v14)
  {
    goto LABEL_22;
  }

  return v9;
}

void sub_2214D0AAC(uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t sub_2214D0B10(void *a1, unsigned int *a2)
{
  result = sub_221087F14(a1, a2);
  if (result)
  {
    sub_2214D0B48(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_2214D0B48(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_221087680(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    sub_2214D0AAC(&v6, v3);
  }

  return v2;
}

void sub_2214D0B94(uint64_t result)
{
  if (*(result + 24))
  {
    sub_2214D0BF0(result, *(result + 16));
    *(result + 16) = 0;
    v2 = *(result + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*result + 8 * i) = 0;
      }
    }

    *(result + 24) = 0;
  }
}

void sub_2214D0BF0(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_2214D0C3C(uint64_t a1)
{
  sub_2214D0BF0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

id sub_2214D10E4(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_defaultStyleWithContext_(a1, a2, a3, a4);
  v8 = objc_msgSend_properties(MEMORY[0x277D80EC8], v5, v6, v7);
  v12 = objc_msgSend_deprecatedProperties(MEMORY[0x277D80EC8], v9, v10, v11);
  v15 = objc_msgSend_propertySetByRemovingPropertiesFromSet_(v8, v13, v12, v14);

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2214D11D8;
  v20[3] = &unk_2784665C0;
  v16 = v4;
  v21 = v16;
  objc_msgSend_enumeratePropertiesUsingBlock_(v15, v17, v20, v18);

  return v16;
}

void sub_2214D11D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if ((objc_msgSend_definesProperty_(*(a1 + 32), a2, a2, a4) & 1) == 0)
  {
    v8 = *(a1 + 32);
    v10 = objc_msgSend_boxedDefaultValueForProperty_(MEMORY[0x277D80EC8], v6, a2, v7);
    objc_msgSend_setBoxedValue_forProperty_(v8, v9, v10, a2);
  }
}

_OWORD *sub_2214D154C(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a1[1];
  if (v7 >= a1[2])
  {
    result = sub_2214D2068(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    v8 = *a2;
    *a2 = 0uLL;
    *v7 = v8;
    result = v7 + 1;
  }

  a1[1] = result;
  return result;
}

void sub_2214D18DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va2, a16);
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  va_copy(va2, va1);
  v21 = va_arg(va2, void **);
  sub_22107C26C(va2);
  va_copy(v21, va);
  sub_22107C2C0(va1);
  _Unwind_Resume(a1);
}

id sub_2214D1958(void *a1, id *a2)
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

void sub_2214D1A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2214D2068(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = (v8 - *a1) >> 4;
  v10 = v9 + 1;
  if ((v9 + 1) >> 60)
  {
    sub_22107C148();
  }

  v12 = a1[2] - v7;
  if (v12 >> 3 > v10)
  {
    v10 = v12 >> 3;
  }

  if (v12 >= 0x7FFFFFFFFFFFFFF0)
  {
    v10 = 0xFFFFFFFFFFFFFFFLL;
  }

  v21 = a1;
  if (v10)
  {
    sub_2214D2180(a1, v10);
  }

  v18 = 0;
  v19 = 16 * v9;
  *(&v20 + 1) = 0;
  v13 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *(16 * v9) = v13;
  *&v20 = 16 * v9 + 16;
  sub_2214D21C8(a1, v7, v8, 0, a5, a6);
  v14 = *a1;
  *a1 = 0;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_2214D232C(&v18);
  return v17;
}

void sub_2214D216C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2214D232C(va);
  _Unwind_Resume(a1);
}

void sub_2214D2180(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t sub_2214D21C8(uint64_t a1, void **a2, void **a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *v6 = 0;
      *(v6++ + 1) = 0;
      *a4++ = v7;
    }

    while (v6 != a3);
    v12 = a4;
  }

  v10 = 1;
  sub_2214D2250(a1, a2, a3);
  return sub_2214D2298(v9);
}

void sub_2214D2250(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v5 = *v4;
      v4 += 2;
    }

    while (v4 != a3);
  }
}

uint64_t sub_2214D2298(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2214D22E4(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_2214D22E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v7 = *(v6 - 16);
      v6 -= 16;
    }

    while (v6 != a5);
  }
}

uint64_t sub_2214D232C(uint64_t a1)
{
  sub_2214D2364(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2214D2364(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }
}

void sub_2214D23C0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2214D2414(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2214D2414(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 16)
  {

    v5 = *(i - 16);
  }

  *(a1 + 8) = a2;
}

void sub_2214D2BA4(uint64_t a1, int *a2)
{
  v5 = *(a2 + 2);
  v4 = *(a1 + 32);
  v6 = *(v4 + 16);
  if (*(v4 + 16) == *(v4 + 20))
  {
    v7 = v6 + 1;
    sub_2210BBC64((v4 + 16), v6 + 1);
    *(*(v4 + 24) + 4 * v6) = v5;
    v8 = *(a1 + 32);
  }

  else
  {
    *(*(v4 + 24) + 4 * v6) = v5;
    v7 = v6 + 1;
    v8 = v4;
  }

  *(v4 + 16) = v7;
  v9 = *a2;
  v10 = *(v8 + 32);
  if (v10 == *(v8 + 36))
  {
    v11 = v10 + 1;
    sub_2210BBC64((v8 + 32), v10 + 1);
    *(*(v8 + 40) + 4 * v10) = v9;
  }

  else
  {
    *(*(v8 + 40) + 4 * v10) = v9;
    v11 = v10 + 1;
  }

  *(v8 + 32) = v11;
}

void sub_2214D2C64(uint64_t a1, int *a2)
{
  v5 = *(a2 + 2);
  v4 = *(a1 + 32);
  v6 = *(v4 + 48);
  if (*(v4 + 48) == *(v4 + 52))
  {
    v7 = v6 + 1;
    sub_2210BBC64((v4 + 48), v6 + 1);
    *(*(v4 + 56) + 4 * v6) = v5;
    v8 = *(a1 + 32);
  }

  else
  {
    *(*(v4 + 56) + 4 * v6) = v5;
    v7 = v6 + 1;
    v8 = v4;
  }

  *(v4 + 48) = v7;
  v9 = *a2;
  v10 = *(v8 + 64);
  if (v10 == *(v8 + 68))
  {
    v11 = v10 + 1;
    sub_2210BBC64((v8 + 64), v10 + 1);
    *(*(v8 + 72) + 4 * v10) = v9;
  }

  else
  {
    *(*(v8 + 72) + 4 * v10) = v9;
    v11 = v10 + 1;
  }

  *(v8 + 64) = v11;
}

void sub_2214D2D24(uint64_t a1, int *a2)
{
  v5 = *(a2 + 2);
  v4 = *(a1 + 32);
  v6 = *(v4 + 224);
  if (*(v4 + 224) == *(v4 + 228))
  {
    v7 = v6 + 1;
    sub_2210BBC64((v4 + 224), v6 + 1);
    *(*(v4 + 232) + 4 * v6) = v5;
    v8 = *(a1 + 32);
  }

  else
  {
    *(*(v4 + 232) + 4 * v6) = v5;
    v7 = v6 + 1;
    v8 = v4;
  }

  *(v4 + 224) = v7;
  v9 = *a2;
  v10 = *(v8 + 240);
  if (v10 == *(v8 + 244))
  {
    v11 = v10 + 1;
    sub_2210BBC64((v8 + 240), v10 + 1);
    *(*(v8 + 248) + 4 * v10) = v9;
  }

  else
  {
    *(*(v8 + 248) + 4 * v10) = v9;
    v11 = v10 + 1;
  }

  *(v8 + 240) = v11;
}

void sub_2214D2DE4(uint64_t a1, int *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a2 + 2);
  v5 = *(v3 + 288);
  if (v5 == *(v3 + 292))
  {
    v7 = v5 + 1;
    sub_2210BBC64((v3 + 288), v5 + 1);
    *(*(v3 + 296) + 4 * v5) = v4;
    v8 = *(a1 + 32);
  }

  else
  {
    *(*(v3 + 296) + 4 * v5) = v4;
    v7 = v5 + 1;
    v8 = v3;
  }

  *(v3 + 288) = v7;
  v9 = *a2;
  v10 = *(v8 + 304);
  if (v10 == *(v8 + 308))
  {
    v11 = v10 + 1;
    sub_2210BBC64((v8 + 304), v10 + 1);
    *(*(v8 + 312) + 4 * v10) = v9;
  }

  else
  {
    *(*(v8 + 312) + 4 * v10) = v9;
    v11 = v10 + 1;
  }

  *(v8 + 304) = v11;
}

void sub_2214D2EA8(uint64_t a1, int *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a2 + 2);
  v5 = *(v3 + 256);
  if (v5 == *(v3 + 260))
  {
    v7 = v5 + 1;
    sub_2210BBC64((v3 + 256), v5 + 1);
    *(*(v3 + 264) + 4 * v5) = v4;
    v8 = *(a1 + 32);
  }

  else
  {
    *(*(v3 + 264) + 4 * v5) = v4;
    v7 = v5 + 1;
    v8 = v3;
  }

  *(v3 + 256) = v7;
  v9 = *a2;
  v10 = *(v8 + 272);
  if (v10 == *(v8 + 276))
  {
    v11 = v10 + 1;
    sub_2210BBC64((v8 + 272), v10 + 1);
    *(*(v8 + 280) + 4 * v10) = v9;
  }

  else
  {
    *(*(v8 + 280) + 4 * v10) = v9;
    v11 = v10 + 1;
  }

  *(v8 + 272) = v11;
}

int *sub_2214D2F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (*(a2 + 8) != *(v6 + 16))
  {
    v12 = *(v6 + 8);
    if (v12)
    {
      objc_msgSend_cellRefForInternalCellReference_(v12, a2, a2, a4);
    }

    else
    {
      memset(v23, 0, sizeof(v23));
    }

    v13 = *(a1 + 40);
    v14 = *(v13 + 216);
    if (!v14)
    {
      goto LABEL_20;
    }

    v15 = *(v13 + 208);
    v16 = *v14;
    if (v15 < *v14)
    {
      *(v13 + 208) = v15 + 1;
      v17 = *&v14[2 * v15 + 2];
      return sub_221269A28(v23, v17);
    }

    if (v16 == *(v13 + 212))
    {
LABEL_20:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v13 + 200));
      v14 = *(v13 + 216);
      v16 = *v14;
    }

    *v14 = v16 + 1;
    v17 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellReferenceArchive>(*(v13 + 200));
    v21 = *(v13 + 208);
    v22 = *(v13 + 216) + 8 * v21;
    *(v13 + 208) = v21 + 1;
    *(v22 + 8) = v17;
    return sub_221269A28(v23, v17);
  }

  v7 = *(a1 + 40);
  v8 = *(v7 + 192);
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = *(v7 + 184);
  v10 = *v8;
  if (v9 >= *v8)
  {
    if (v10 != *(v7 + 188))
    {
LABEL_15:
      *v8 = v10 + 1;
      v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(*(v7 + 176));
      v18 = *(v7 + 184);
      v19 = *(v7 + 192) + 8 * v18;
      *(v7 + 184) = v18 + 1;
      *(v19 + 8) = v11;
      goto LABEL_16;
    }

LABEL_14:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v7 + 176));
    v8 = *(v7 + 192);
    v10 = *v8;
    goto LABEL_15;
  }

  *(v7 + 184) = v9 + 1;
  v11 = *&v8[2 * v9 + 2];
LABEL_16:

  return sub_221269820(a2, v11);
}

void sub_2214D3C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Block_object_dispose((v34 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2214D3CF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2214D3D0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = v3;
  v4 = *(a1 + 32);
  v13 = &v12;
  v5 = sub_2214D4A9C((v4 + 240), &v12, &unk_2217E213E, &v13);
  TSCECellCoordSet::removeCellCoord((v5 + 3), *(a1 + 48));
  v6 = *(a1 + 32);
  v13 = &v12;
  v7 = sub_2214D4A9C((v6 + 240), &v12, &unk_2217E213E, &v13);
  if (TSCECellCoordSet::isEmpty((v7 + 3)))
  {
    objc_msgSend_insertSpecifier_(*(*(*(a1 + 40) + 8) + 40), v8, v3, v9);
    sub_2214D4DD8((*(a1 + 32) + 240), &v12, v10, v11);
  }
}

void sub_2214D3DF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = v3;
  if (objc_msgSend_containsSpecifier_(*(*(*(a1 + 48) + 8) + 40), v4, v3, v5))
  {
    objc_msgSend_removeSpecifier_(*(*(*(a1 + 48) + 8) + 40), v6, v3, v8);
  }

  else if (!sub_2214D4E10((*(a1 + 32) + 240), &v15, v7, v8))
  {
    objc_msgSend_insertSpecifier_(*(*(*(a1 + 56) + 8) + 40), v9, v3, v10);
  }

  v11 = *(a1 + 32);
  v16 = &v15;
  v12 = sub_2214D4A9C((v11 + 240), &v15, &unk_2217E213E, &v16);
  TSCECellCoordSet::addCellCoord((v12 + 3), *(a1 + 64));
  objc_msgSend_insertSpecifier_(*(a1 + 40), v13, v3, v14);
}

void sub_2214D4078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Unwind_Resume(a1);
}

void sub_2214D40C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = v3;
  v4 = *(a1 + 32);
  v13 = &v12;
  v5 = sub_2214D4A9C((v4 + 240), &v12, &unk_2217E213E, &v13);
  TSCECellCoordSet::removeCellCoord((v5 + 3), *(a1 + 48));
  v6 = *(a1 + 32);
  v13 = &v12;
  v7 = sub_2214D4A9C((v6 + 240), &v12, &unk_2217E213E, &v13);
  if (TSCECellCoordSet::isEmpty((v7 + 3)))
  {
    objc_msgSend_insertSpecifier_(*(*(*(a1 + 40) + 8) + 40), v8, v3, v9);
    sub_2214D4DD8((*(a1 + 32) + 240), &v12, v10, v11);
  }
}

void sub_2214D44A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = v3;
  if (sub_2214D4E10((*(a1 + 32) + 240), &v12, v4, v5))
  {
    v6 = *(a1 + 32);
    v13 = &v12;
    v7 = sub_2214D4A9C((v6 + 240), &v12, &unk_2217E213E, &v13);
    v9 = v7;
    v10 = *(*(a1 + 48) + 8);
    if (*(v10 + 24))
    {
      v11 = 1;
    }

    else
    {
      v11 = !TSCECellCoordSet::isEmpty((v7 + 3));
      v10 = *(*(a1 + 48) + 8);
    }

    *(v10 + 24) = v11;
    objc_msgSend_dirtyCoords_inOwnerId_(*(a1 + 40), v8, (v9 + 3), *(*(a1 + 32) + 16));
  }
}

void *sub_2214D4730(void *a1, unsigned int *a2)
{
  result = sub_221087F14(a1, a2);
  if (result)
  {
    v4 = *a2;
    v5 = result;
    do
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      v6 = v5[2];
      v8 = v6 == v4;
      v7 = (v4 ^ v6) & 0x101FFFF00000000;
      v8 = v8 && v7 == 0;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_2214D4790(void *a1, unsigned int *a2)
{
  v4 = sub_221087F14(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = *v5;
    sub_2210CDD3C(a1, v5);
    if (!v8)
    {
      break;
    }

    v9 = *(v8 + 16);
    v11 = v9 == *a2;
    v10 = (*a2 ^ v9) & 0x101FFFF00000000;
    v6 = v7 + 1;
    v11 = v11 && v10 == 0;
    v5 = v8;
  }

  while (v11);
  return v7;
}

void *sub_2214D4820(void *a1, unsigned int *a2, uint64_t a3, void **a4)
{
  v4 = *a2 + 16 * *(a2 + 2);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_23;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2 + 16 * *(a2 + 2);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_23:
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
      goto LABEL_23;
    }

LABEL_22:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  v12 = v9[2];
  v14 = v12 == v10;
  v13 = (v10 ^ v12) & 0x101FFFF00000000;
  v14 = v14 && v13 == 0;
  if (!v14)
  {
    goto LABEL_22;
  }

  return v9;
}

void sub_2214D4A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

id *sub_2214D4A9C(void *a1, id *a2, uint64_t a3, id **a4)
{
  v6 = objc_msgSend_hash(*a2, a2, a3, a4);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if ((sub_2214D4D20(a1, v13 + 2, a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v13;
}

uint64_t sub_2214D4D20(uint64_t a1, id *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a2;
  isEqual = objc_msgSend_isEqual_(v4, v5, v3, v6);

  return isEqual;
}

void sub_2214D4D70(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_22107C860(a2 + 40, *(a2 + 48));
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t sub_2214D4DD8(void *a1, id *a2, uint64_t a3, uint64_t a4)
{
  result = sub_2214D4E10(a1, a2, a3, a4);
  if (result)
  {
    sub_2214D4F10(a1, result);
    return 1;
  }

  return result;
}

id *sub_2214D4E10(void *a1, id *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_hash(*a2, a2, a3, a4);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v8)
    {
      if (sub_2214D4D20(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v7)
        {
          v14 %= *&v7;
        }
      }

      else
      {
        v14 &= *&v7 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_2214D4F10(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_221087680(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    sub_2214D4D70(&v6, v3);
  }

  return v2;
}

uint64_t sub_2214D4FE4(uint64_t a1)
{
  sub_2214D5020(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_2214D5020(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_22107C860((v2 + 40), *(v2 + 6));

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_2214D52DC()
{
  v0 = os_log_create(qword_27CFB4CF0, "General");
  v1 = qword_27CFB4CF8;
  qword_27CFB4CF8 = v0;
}

TSCEASTCategoryRefElement *sub_2214D5354(TSCEFormulaRewriteContext **a1, TSCEASTCategoryRefElement *this, uint64_t a3, uint64_t a4)
{
  v9 = TSCEASTCategoryRefElement::mutableCategoryRef(this, a1, a3, a4);
  if (!a1[21])
  {
    v10 = sub_221089E8C(a1);
    tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
    v13 = objc_msgSend_tableResolverForTableUID_(v10, v11, &tableUID, v12);

    if (v13)
    {
      v17 = objc_msgSend_groupByUUID(v13, v14, v15, v16);
      v19 = v18;
      a1[17] = v17;
      a1[18] = v18;
      v20 = sub_221089E8C(a1);
      v22 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v21, v17, v19, v20);
      v23 = a1[21];
      a1[21] = v22;

      v24 = TSCEFormulaRewriteContext::containingCell(a1[1]);
      a1[19] = objc_msgSend_rowUIDForRowIndex_(v13, v25, v24->var0.var0.coordinate.row, v26);
      a1[20] = v27;
    }
  }

  if (objc_msgSend_groupByUid(v9, v6, v7, v8) == a1[17] && v28 == a1[18])
  {
    v31 = a1[21];
    if (v31)
    {
      if (a1[19] || a1[20])
      {
        v32 = objc_msgSend_tableInfo(v31, v28, v29, v30);
        v36 = objc_msgSend_tableUID(v32, v33, v34, v35);
        v38 = v37;
        v39 = TSCEFormulaRewriteContext::containingCell(a1[1]);
        if (v36 == v39->var0.var1._tableUID._lower)
        {
          upper = v39->var0.var1._tableUID._upper;

          if (v38 == upper)
          {
            v44 = objc_msgSend_relativeGroupUid(v9, v41, v42, v43);
            if (v44 | v45)
            {
              v48 = a1[21];
              tableUID._lower = objc_msgSend_relativeGroupUid(v9, v45, v46, v47);
              tableUID._upper = v49;
              v51 = objc_msgSend_resolveRelativeAncestorUid_atRowUid_(v48, v49, &tableUID, (a1 + 19));
              if (v51 | v50)
              {
                objc_msgSend_setAbsoluteGroupUid_(v9, v50, v51, v50);
                TSCEASTCategoryRefElement::setCategoryRef(this, v9, a1);
              }
            }
          }
        }

        else
        {
        }
      }
    }
  }

  return this;
}

TSCEFormulaObject *sub_2214D559C(void *a1, TSCEFormulaRewriteContext *a2)
{
  v3 = a1;
  v7 = objc_msgSend_astNodeArrayCopy(v3, v4, v5, v6);
  TSCEASTStreamIterator::TSCEASTStreamIterator(v22, v7, a2);
  v22[0] = &unk_2834A9FE0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  TSCEASTStreamIterator::rewrite(v22, v8, v9, v10);
  v11 = v3;
  if (v23 == 1)
  {
    v12 = v24;
    v24 = 0;
    v13 = [TSCEFormulaObject alloc];
    v17 = objc_msgSend_translationFlags(v3, v14, v15, v16);
    v11 = objc_msgSend_initWithNodeArray_translationFlags_(v13, v18, v12, v17);

    TSCEASTNodeArray::freeNodeArray(v12, v19);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v22, v20);

  return v11;
}

void sub_2214D56DC(id *a1)
{

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

TSCEASTCategoryRefElement *sub_2214D5718(TSCEASTIteratorBase *a1, TSCEASTCategoryRefElement *this, uint64_t a3, uint64_t a4)
{
  v9 = TSCEASTCategoryRefElement::mutableCategoryRef(this, a1, a3, a4);
  if (!*(a1 + 21))
  {
    v10 = sub_221089E8C(a1);
    tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID;
    v13 = objc_msgSend_tableOrLinkedResolverForTableUID_(v10, v11, &tableUID, v12);

    if (v13)
    {
      v17 = objc_msgSend_groupByUUID(v13, v14, v15, v16);
      v19 = v18;
      *(a1 + 17) = v17;
      *(a1 + 18) = v18;
      v20 = sub_221089E8C(a1);
      v22 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v21, v17, v19, v20);
      v23 = *(a1 + 21);
      *(a1 + 21) = v22;

      v24 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
      *(a1 + 19) = objc_msgSend_rowUIDForRowIndex_(v13, v25, v24->var0.var0.coordinate.row, v26);
      *(a1 + 20) = v27;
    }
  }

  if (objc_msgSend_groupByUid(v9, v6, v7, v8) == *(a1 + 17) && v28 == *(a1 + 18) && *(a1 + 21) && (*(a1 + 19) || *(a1 + 20)) && (objc_msgSend_preserveFlags(v9, v28, v29, v30) & 2) == 0)
  {
    v34 = objc_msgSend_tableInfo(*(a1 + 21), v31, v32, v33);
    v38 = objc_msgSend_tableUID(v34, v35, v36, v37);
    v40 = v39;
    v41 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
    if (v38 == v41->var0.var1._tableUID._lower)
    {
      upper = v41->var0.var1._tableUID._upper;

      if (v40 == upper)
      {
        tableUID._lower = objc_msgSend_absoluteGroupUid(v9, v43, v44, v45);
        tableUID._upper = v46;
        if (tableUID._lower | v46)
        {
          v48 = objc_msgSend_convertToRelativeAncestorUid_atRowUid_(*(a1 + 21), v46, &tableUID, a1 + 152);
          if (v48 | v47)
          {
            objc_msgSend_setRelativeGroupUid_(v9, v47, v48, v47, tableUID);
          }
        }
      }
    }

    else
    {
    }
  }

  return this;
}

TSCEFormulaObject *sub_2214D5950(void *a1, TSCEFormulaRewriteContext *a2)
{
  v3 = a1;
  v7 = objc_msgSend_astNodeArrayCopy(v3, v4, v5, v6);
  TSCEASTStreamIterator::TSCEASTStreamIterator(v22, v7, a2);
  v22[0] = &unk_2834AA138;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  TSCEASTStreamIterator::rewrite(v22, v8, v9, v10);
  v11 = v3;
  if (v23 == 1)
  {
    v12 = v24;
    v24 = 0;
    v13 = [TSCEFormulaObject alloc];
    v17 = objc_msgSend_translationFlags(v3, v14, v15, v16);
    v11 = objc_msgSend_initWithNodeArray_translationFlags_(v13, v18, v12, v17);

    TSCEASTNodeArray::freeNodeArray(v12, v19);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v22, v20);

  return v11;
}

void sub_2214D5A90(id *a1)
{

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_2214D5ACC(id *a1)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);

  JUMPOUT(0x223DA1450);
}

void sub_2214D5B1C(id *a1)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);

  JUMPOUT(0x223DA1450);
}

void sub_2214D85E4(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

int64x2_t sub_2214D9E88(int64x2_t *a1, uint64_t *a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_2214DA378(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x155));
  v7 = *v6 + 12 * (v4 % 0x155);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4092;
  }

  v8 = *a2;
  *(v7 - 4) = *(a2 + 2);
  *(v7 - 12) = v8;
  result = vaddq_s64(a1[2], xmmword_2217E1930);
  a1[2] = result;
  return result;
}

void sub_2214D9F38(unint64_t *result, uint64_t *a2)
{
  v4 = result[2];
  v5 = result[1];
  v6 = 341 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    sub_2214DA5C8(result);
    v5 = result[1];
    v7 = result[5] + result[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x155)) + 12 * (v7 % 0x155);
  v9 = *a2;
  *(v8 + 8) = *(a2 + 2);
  *v8 = v9;
  ++result[5];
}

void sub_2214DA378(const void **a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 341 * ((v2 - v1) >> 3) - 1;
  }

  v5 = a1[4];
  if ((v4 - (a1[5] + v5)) < 0x155)
  {
    v6 = a1[3];
    v7 = *a1;
    v8 = v6 - *a1;
    if (v3 < v8)
    {
      if (v1 != v7)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v10[4] = a1;
    sub_221122DC8(a1, v9);
  }

  a1[4] = (v5 + 341);
  v10[0] = *(v2 - 8);
  a1[2] = (v2 - 8);
  sub_2213C6CC8(a1, v10);
}

void sub_2214DA57C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2214DA5C8(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x155;
  v3 = v1 - 341;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_221122DC8(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_2213C6DD4(a1, &v9);
}

void sub_2214DA750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2214DA79C(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x155)
  {
    a2 = 1;
  }

  if (v2 < 0x2AA)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 341;
  }

  return v4 ^ 1u;
}

uint64_t sub_2214DA7FC(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 170;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 341;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_221142324(a1);
}

uint64_t sub_2214DA8A8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::ASTNodeArrayArchive_ASTNodeArchive::ASTNodeArrayArchive_ASTNodeArchive(&TSCE::_ASTNodeArrayArchive_ASTNodeArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];
  google::protobuf::internal::OnShutdownRun(MEMORY[0x277D80A80], &TSCE::_ASTNodeArrayArchive_ASTNodeArchive_default_instance_, v5);
  TSCE::ASTNodeArrayArchive::ASTNodeArrayArchive(&TSCE::_ASTNodeArrayArchive_default_instance_, 0);

  return google::protobuf::internal::OnShutdownRun(v4, &TSCE::_ASTNodeArrayArchive_default_instance_, v6);
}

uint64_t sub_2214DA93C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  qword_2812E5E60 = 0;
  unk_2812E5E68 = 0;
  TSCE::_ASTNodeArrayArchive_ASTCategoryLevels_default_instance_ = &unk_2834AE8E0;
  qword_2812E5E70 = 0;
  dword_2812E5E78 = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_ASTNodeArrayArchive_ASTCategoryLevels_default_instance_, v4);
}

uint64_t sub_2214DA9BC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E5E88 = v5;
  TSCE::_ASTNodeArrayArchive_ASTCategoryReferenceArchive_default_instance_[0] = &unk_2834AE990;
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTCategoryReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E5E98 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_ASTNodeArrayArchive_ASTCategoryReferenceArchive_default_instance_, v4);
}

uint64_t sub_2214DAA6C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::ASTNodeArrayArchive_ASTColonTractArchive::ASTNodeArrayArchive_ASTColonTractArchive(&TSCE::_ASTNodeArrayArchive_ASTColonTractArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_ASTNodeArrayArchive_ASTColonTractArchive_default_instance_, v4);
}

uint64_t sub_2214DAADC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  qword_2812E5EC8 = 0;
  unk_2812E5ED0 = 0;
  TSCE::_ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive_default_instance_ = &unk_2834AEAF0;
  qword_2812E5ED8 = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive_default_instance_, v4);
}

uint64_t sub_2214DAB58(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  qword_2812E5EA8 = 0;
  unk_2812E5EB0 = 0;
  TSCE::_ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive_default_instance_ = &unk_2834AEA40;
  qword_2812E5EB8 = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive_default_instance_, v4);
}

uint64_t sub_2214DABD4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  qword_2812E5D30 = 0;
  unk_2812E5D38 = 0;
  TSCE::_ASTNodeArrayArchive_ASTColumnCoordinateArchive_default_instance_ = &unk_2834AE410;
  unk_2812E5D3D = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_ASTNodeArrayArchive_ASTColumnCoordinateArchive_default_instance_, v4);
}

uint64_t sub_2214DAC50(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive(&TSCE::_ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive_default_instance_, v4);
}

uint64_t sub_2214DACC0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive(&TSCE::_ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive_default_instance_, v4);
}

uint64_t sub_2214DAD30(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::ASTNodeArrayArchive_ASTLambdaIdentsListArchive(&TSCE::_ASTNodeArrayArchive_ASTLambdaIdentsListArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_ASTNodeArrayArchive_ASTLambdaIdentsListArchive_default_instance_, v4);
}

uint64_t sub_2214DADA0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  qword_2812E5CB8 = 0;
  unk_2812E5CC0 = 0;
  TSCE::_ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive_default_instance_ = &unk_2834AE2B0;
  qword_2812E5CC8 = 0;
  unk_2812E5CD0 = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive_default_instance_, v4);
}

uint64_t sub_2214DAE1C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  qword_2812E5D50 = 0;
  unk_2812E5D58 = 0;
  TSCE::_ASTNodeArrayArchive_ASTRowCoordinateArchive_default_instance_ = &unk_2834AE4C0;
  unk_2812E5D5D = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_ASTNodeArrayArchive_ASTRowCoordinateArchive_default_instance_, v4);
}

uint64_t sub_2214DAE98(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E5DD8 = v5;
  TSCE::_ASTNodeArrayArchive_ASTStickyBits_default_instance_[0] = &unk_2834AE6D0;
  dword_2812E5DE8 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_ASTNodeArrayArchive_ASTStickyBits_default_instance_, v4);
}

uint64_t sub_2214DAF1C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E5E30 = v5;
  TSCE::_ASTNodeArrayArchive_ASTUidCoordinateArchive_default_instance_ = &unk_2834AE830;
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTUidCoordinateArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E5E40 = 0;
  unk_2812E5E48 = 0;
  word_2812E5E50 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TSCE::_ASTNodeArrayArchive_ASTUidCoordinateArchive_default_instance_, v4);
}

uint64_t sub_2214DAFD0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::ASTNodeArrayArchive_ASTUidList::ASTNodeArrayArchive_ASTUidList(&TSCE::_ASTNodeArrayArchive_ASTUidList_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_ASTNodeArrayArchive_ASTUidList_default_instance_, v4);
}

uint64_t sub_2214DB040(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::ASTNodeArrayArchive_ASTUidTract::ASTNodeArrayArchive_ASTUidTract(&TSCE::_ASTNodeArrayArchive_ASTUidTract_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_ASTNodeArrayArchive_ASTUidTract_default_instance_, v4);
}

uint64_t sub_2214DB0B0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::ASTNodeArrayArchive_ASTUidTractList::ASTNodeArrayArchive_ASTUidTractList(&TSCE::_ASTNodeArrayArchive_ASTUidTractList_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_ASTNodeArrayArchive_ASTUidTractList_default_instance_, v4);
}

uint64_t sub_2214DB120(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E68E0 = v5;
  TSCE::_BooleanCellValueArchive_default_instance_[0] = &unk_2834B0670;
  if (atomic_load_explicit(scc_info_BooleanCellValueArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  word_2812E68F8 = 0;
  qword_2812E68F0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_BooleanCellValueArchive_default_instance_, v4);
}

uint64_t sub_2214DB1D4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::CalculationEngineArchive::CalculationEngineArchive(&TSCE::_CalculationEngineArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_CalculationEngineArchive_default_instance_, v4);
}

uint64_t sub_2214DB244(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E5C58 = v5;
  TSCE::_CategoryReferenceArchive_default_instance_[0] = &unk_2834AE200;
  if (atomic_load_explicit(scc_info_CategoryReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812E5CA8 = 0;
  unk_2812E5C98 = 0u;
  unk_2812E5C88 = 0u;
  unk_2812E5C78 = 0u;
  unk_2812E5C68 = 0u;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_CategoryReferenceArchive_default_instance_, v4);
}

uint64_t sub_2214DB308(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::CategoryReferenceArchive_CatRefUidList::CategoryReferenceArchive_CatRefUidList(&TSCE::_CategoryReferenceArchive_CatRefUidList_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_CategoryReferenceArchive_CatRefUidList_default_instance_, v4);
}

uint64_t sub_2214DB378(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::CellCoordSetArchive::CellCoordSetArchive(&TSCE::_CellCoordSetArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_CellCoordSetArchive_default_instance_, v4);
}

uint64_t sub_2214DB3E8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E47B0 = v5;
  TSCE::_CellCoordSetArchive_ColumnEntry_default_instance_ = &unk_2834AA790;
  if (atomic_load_explicit(scc_info_CellCoordSetArchive_ColumnEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812E47C8 = 0;
  qword_2812E47C0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TSCE::_CellCoordSetArchive_ColumnEntry_default_instance_, v4);
}

uint64_t sub_2214DB49C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  qword_2812E6670 = 0;
  unk_2812E6678 = 0;
  TSCE::_CellCoordinateArchive_default_instance_ = &unk_2834AFE30;
  qword_2812E6680 = 0;
  dword_2812E6688 = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_CellCoordinateArchive_default_instance_, v4);
}

uint64_t sub_2214DB51C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::CellCoordinateVectorArchive::CellCoordinateVectorArchive(&TSCE::_CellCoordinateVectorArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_CellCoordinateVectorArchive_default_instance_, v4);
}

uint64_t sub_2214DB58C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::CellDependenciesArchive::CellDependenciesArchive(&TSCE::_CellDependenciesArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_CellDependenciesArchive_default_instance_, v4);
}

uint64_t sub_2214DB5FC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::CellDependenciesExpandedArchive::CellDependenciesExpandedArchive(&TSCE::_CellDependenciesExpandedArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_CellDependenciesExpandedArchive_default_instance_, v4);
}

uint64_t sub_2214DB66C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::CellDependenciesTiledArchive::CellDependenciesTiledArchive(&TSCE::_CellDependenciesTiledArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_CellDependenciesTiledArchive_default_instance_, v4);
}

uint64_t sub_2214DB6DC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::CellErrorsArchive::CellErrorsArchive(&TSCE::_CellErrorsArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_CellErrorsArchive_default_instance_, v4);
}

uint64_t sub_2214DB74C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::CellErrorsArchive_EnhancedErrorForCell::CellErrorsArchive_EnhancedErrorForCell(&TSCE::_CellErrorsArchive_EnhancedErrorForCell_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_CellErrorsArchive_EnhancedErrorForCell_default_instance_, v4);
}

uint64_t sub_2214DB7BC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E5400 = v5;
  TSCE::_CellErrorsArchive_ErrorForCell_default_instance_[0] = &unk_2834AC9F0;
  if (atomic_load_explicit(scc_info_CellErrorsArchive_ErrorForCell_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E5410 = 0;
  unk_2812E5418 = 0;
  dword_2812E5420 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_CellErrorsArchive_ErrorForCell_default_instance_, v4);
}

uint64_t sub_2214DB870(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::CellRecordArchive::CellRecordArchive(&TSCE::_CellRecordArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_CellRecordArchive_default_instance_, v4);
}

uint64_t sub_2214DB8E0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E4CA0 = v5;
  TSCE::_CellRecordExpandedArchive_default_instance_[0] = &unk_2834AB6B0;
  if (atomic_load_explicit(scc_info_CellRecordExpandedArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E4CB0 = 0;
  unk_2812E4CB8 = 0;
  word_2812E4CC8 = 0;
  qword_2812E4CC0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_CellRecordExpandedArchive_default_instance_, v4);
}

uint64_t sub_2214DB998(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::CellRecordTileArchive::CellRecordTileArchive(&TSCE::_CellRecordTileArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_CellRecordTileArchive_default_instance_, v4);
}

uint64_t sub_2214DBA08(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E4880 = v5;
  TSCE::_CellRectArchive_default_instance_[0] = &unk_2834AAB00;
  if (atomic_load_explicit(scc_info_CellRectArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E4890 = 0;
  unk_2812E4898 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_CellRectArchive_default_instance_, v4);
}

uint64_t sub_2214DBAB8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::CellRefSetArchive::CellRefSetArchive(&TSCE::_CellRefSetArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_CellRefSetArchive_default_instance_, v4);
}

uint64_t sub_2214DBB28(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E48A8 = v5;
  TSCE::_CellRefSetArchive_OwnerEntry_default_instance_[0] = &unk_2834AABB0;
  if (atomic_load_explicit(scc_info_CellRefSetArchive_OwnerEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E48B8 = 0;
  unk_2812E48C0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_CellRefSetArchive_OwnerEntry_default_instance_, v4);
}

uint64_t sub_2214DBBD8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E4688 = v5;
  TSCE::_CellReferenceArchive_default_instance_[0] = &unk_2834AA2C0;
  if (atomic_load_explicit(scc_info_CellReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E4698 = 0;
  unk_2812E46A0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_CellReferenceArchive_default_instance_, v4);
}

uint64_t sub_2214DBC88(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::CellSpillSizesArchive::CellSpillSizesArchive(&TSCE::_CellSpillSizesArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_CellSpillSizesArchive_default_instance_, v4);
}

uint64_t sub_2214DBCF8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E54C0 = v5;
  TSCE::_CellSpillSizesArchive_SpillForCell_default_instance_[0] = &unk_2834ACC00;
  if (atomic_load_explicit(scc_info_CellSpillSizesArchive_SpillForCell_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E54D0 = 0;
  unk_2812E54D8 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_CellSpillSizesArchive_SpillForCell_default_instance_, v4);
}

uint64_t sub_2214DBDA8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::CellValueArchive::CellValueArchive(&TSCE::_CellValueArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_CellValueArchive_default_instance_, v4);
}

uint64_t sub_2214DBE18(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::ColumnOrRowUuidsInfoArchive::ColumnOrRowUuidsInfoArchive(&TSCE::_ColumnOrRowUuidsInfoArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_ColumnOrRowUuidsInfoArchive_default_instance_, v4);
}

uint64_t sub_2214DBE88(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::_ColumnRowSize_default_instance_ = &unk_2834AAA50;
  unk_2812E4860 = 0;
  xmmword_2812E4868 = xmmword_2217E2210;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_ColumnRowSize_default_instance_, v4);
}

uint64_t sub_2214DBF08(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::CoordMapperArchive::CoordMapperArchive(&TSCE::_CoordMapperArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_CoordMapperArchive_default_instance_, v4);
}

uint64_t sub_2214DBF78(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  qword_2812E4A18 = 0;
  unk_2812E4A20 = 0;
  TSCE::_CoordMapperArchive_BaseToViewEntry_default_instance_ = &unk_2834AB080;
  qword_2812E4A28 = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_CoordMapperArchive_BaseToViewEntry_default_instance_, v4);
}

uint64_t sub_2214DBFF4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  qword_2812E4A38 = 0;
  unk_2812E4A40 = 0;
  TSCE::_CoordMapperArchive_SummaryToViewEntry_default_instance_ = &unk_2834AB130;
  qword_2812E4A48 = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_CoordMapperArchive_SummaryToViewEntry_default_instance_, v4);
}

uint64_t sub_2214DC070(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E6908 = v5;
  TSCE::_DateCellValueArchive_default_instance_[0] = &unk_2834B0720;
  if (atomic_load_explicit(scc_info_DateCellValueArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E6918 = 0;
  unk_2812E6920 = 0;
  word_2812E6928 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_DateCellValueArchive_default_instance_, v4);
}

uint64_t sub_2214DC124(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::DependencyTrackerArchive::DependencyTrackerArchive(&TSCE::_DependencyTrackerArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_DependencyTrackerArchive_default_instance_, v4);
}

uint64_t sub_2214DC194(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E4B20 = v5;
  TSCE::_EdgeArchive_default_instance_[0] = &unk_2834AB340;
  if (atomic_load_explicit(scc_info_EdgeArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E4B30 = 0;
  unk_2812E4B38 = 0;
  byte_2812E4B40 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_EdgeArchive_default_instance_, v4);
}

uint64_t sub_2214DC248(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::EdgesArchive::EdgesArchive(&TSCE::_EdgesArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_EdgesArchive_default_instance_, v4);
}

uint64_t sub_2214DC2B8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::ErrorArchive::ErrorArchive(&TSCE::_ErrorArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_ErrorArchive_default_instance_, v4);
}

uint64_t sub_2214DC328(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::ErrorArchive_ErrorDictionaryEntry::ErrorArchive_ErrorDictionaryEntry(&TSCE::_ErrorArchive_ErrorDictionaryEntry_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_ErrorArchive_ErrorDictionaryEntry_default_instance_, v4);
}

uint64_t sub_2214DC398(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::ErrorCellValueArchive::ErrorCellValueArchive(&TSCE::_ErrorCellValueArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_ErrorCellValueArchive_default_instance_, v4);
}

uint64_t sub_2214DC408(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::ExpandedCellRefObjectMapArchive::ExpandedCellRefObjectMapArchive(&TSCE::_ExpandedCellRefObjectMapArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_ExpandedCellRefObjectMapArchive_default_instance_, v4);
}

uint64_t sub_2214DC478(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E66C8 = v5;
  TSCE::_ExpandedCellRefObjectPairArchive_default_instance_[0] = &unk_2834AFF90;
  if (atomic_load_explicit(scc_info_ExpandedCellRefObjectPairArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E66D8 = 0;
  unk_2812E66E0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_ExpandedCellRefObjectPairArchive_default_instance_, v4);
}

uint64_t sub_2214DC528(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::_ExpandedEdgesArchive_default_instance_ = &unk_2834AB4A0;
  unk_2812E4BB0 = 0;
  xmmword_2812E4BB8 = 0u;
  unk_2812E4BC8 = 0u;
  xmmword_2812E4BD8 = 0u;
  unk_2812E4BE8 = 0u;
  xmmword_2812E4BF8 = 0u;
  dword_2812E4C08 = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_ExpandedEdgesArchive_default_instance_, v4);
}

uint64_t sub_2214DC5B0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E6810 = v5;
  TSCE::_ExpandedTrackedReferenceArchive_default_instance_ = &unk_2834B0460;
  if (atomic_load_explicit(scc_info_ExpandedTrackedReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E6820 = 0;
  unk_2812E6828 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TSCE::_ExpandedTrackedReferenceArchive_default_instance_, v4);
}

uint64_t sub_2214DC660(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::FormatStructArchive::FormatStructArchive(&TSCE::_FormatStructArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_FormatStructArchive_default_instance_, v4);
}

uint64_t sub_2214DC6D0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E6168 = v5;
  TSCE::_FormulaArchive_default_instance_[0] = &unk_2834AEFC0;
  if (atomic_load_explicit(scc_info_FormulaArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  word_2812E61A8 = 0;
  unk_2812E6198 = 0u;
  unk_2812E6188 = 0u;
  unk_2812E6178 = 0u;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_FormulaArchive_default_instance_, v4);
}

uint64_t sub_2214DC790(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E6720 = v5;
  TSCE::_FormulaAtCoordArchive_default_instance_[0] = &unk_2834B00F0;
  if (atomic_load_explicit(scc_info_FormulaAtCoordArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E6730 = 0;
  unk_2812E6738 = 0;
  byte_2812E6740 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_FormulaAtCoordArchive_default_instance_, v4);
}

uint64_t sub_2214DC844(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::FormulaCoordPairsByOwnerArchive::FormulaCoordPairsByOwnerArchive(&TSCE::_FormulaCoordPairsByOwnerArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_FormulaCoordPairsByOwnerArchive_default_instance_, v4);
}

uint64_t sub_2214DC8B4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E55E8 = v5;
  TSCE::_FormulaOwnerDependenciesArchive_default_instance_[0] = &unk_2834AD020;
  if (atomic_load_explicit(scc_info_FormulaOwnerDependenciesArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E5668 = 0;
  unk_2812E5658 = 0u;
  unk_2812E5648 = 0u;
  unk_2812E5638 = 0u;
  unk_2812E5628 = 0u;
  unk_2812E5618 = 0u;
  unk_2812E5608 = 0u;
  unk_2812E55F8 = 0u;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_FormulaOwnerDependenciesArchive_default_instance_, v4);
}

uint64_t sub_2214DC984(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E5678 = v5;
  TSCE::_FormulaOwnerInfoArchive_default_instance_[0] = &unk_2834AD0D0;
  if (atomic_load_explicit(scc_info_FormulaOwnerInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E56C8 = 0;
  unk_2812E56B8 = 0u;
  unk_2812E56A8 = 0u;
  unk_2812E5698 = 0u;
  unk_2812E5688 = 0u;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_FormulaOwnerInfoArchive_default_instance_, v4);
}

uint64_t sub_2214DCA48(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E67C0 = v5;
  TSCE::_FormulaRewriteCommandArchive_default_instance_[0] = &unk_2834B0300;
  if (atomic_load_explicit(scc_info_FormulaRewriteCommandArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E67D0 = 0;
  unk_2812E67D8 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_FormulaRewriteCommandArchive_default_instance_, v4);
}

uint64_t sub_2214DCAF8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  qword_2812E6148 = 0;
  unk_2812E6150 = 0;
  TSCE::_FormulaTranslationFlagsArchive_default_instance_ = &unk_2834AEF10;
  unk_2812E6155 = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_FormulaTranslationFlagsArchive_default_instance_, v4);
}

uint64_t sub_2214DCB74(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::FormulasForUndoArchive::FormulasForUndoArchive(&TSCE::_FormulasForUndoArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_FormulasForUndoArchive_default_instance_, v4);
}

uint64_t sub_2214DCBE4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E61B8 = v5;
  TSCE::_FunctorArchive_default_instance_[0] = &unk_2834AF070;
  if (atomic_load_explicit(scc_info_FunctorArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E61C8 = 0;
  unk_2812E61D0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_FunctorArchive_default_instance_, v4);
}

uint64_t sub_2214DCC94(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::GroupByChangeArchive::GroupByChangeArchive(&TSCE::_GroupByChangeArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_GroupByChangeArchive_default_instance_, v4);
}

uint64_t sub_2214DCD04(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  qword_2812E63E0 = 0;
  unk_2812E63E8 = 0;
  TSCE::_GroupByChangeArchive_GroupingColumnChangeArchive_default_instance_ = &unk_2834AF5F0;
  qword_2812E63F0 = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_GroupByChangeArchive_GroupingColumnChangeArchive_default_instance_, v4);
}

uint64_t sub_2214DCD80(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::GroupByNodeMapArchive::GroupByNodeMapArchive(&TSCE::_GroupByNodeMapArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_GroupByNodeMapArchive_default_instance_, v4);
}

uint64_t sub_2214DCDF0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E5AC0 = v5;
  TSCE::_GroupByNodeMapArchive_CellRefsForGroupNode_default_instance_[0] = &unk_2834ADDE0;
  if (atomic_load_explicit(scc_info_GroupByNodeMapArchive_CellRefsForGroupNode_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E5AD0 = 0;
  unk_2812E5AD8 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_GroupByNodeMapArchive_CellRefsForGroupNode_default_instance_, v4);
}

uint64_t sub_2214DCEA0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::GroupByNodeMapArchive_GroupNodesForGroupBy(&TSCE::_GroupByNodeMapArchive_GroupNodesForGroupBy_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_GroupByNodeMapArchive_GroupNodesForGroupBy_default_instance_, v4);
}

uint64_t sub_2214DCF10(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E6630 = v5;
  TSCE::_HauntedOwnerArchive_default_instance_ = &unk_2834AFCD0;
  if (atomic_load_explicit(scc_info_HauntedOwnerArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E6640 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TSCE::_HauntedOwnerArchive_default_instance_, v4);
}

uint64_t sub_2214DCFC0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::IndexSetArchive::IndexSetArchive(&TSCE::_IndexSetArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_IndexSetArchive_default_instance_, v4);
}

uint64_t sub_2214DD030(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  qword_2812E4760 = 0;
  unk_2812E4768 = 0;
  TSCE::_IndexSetArchive_IndexSetEntry_default_instance_ = &unk_2834AA630;
  qword_2812E4770 = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_IndexSetArchive_IndexSetEntry_default_instance_, v4);
}

uint64_t sub_2214DD0AC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::IndexedUidsArchive::IndexedUidsArchive(&TSCE::_IndexedUidsArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_IndexedUidsArchive_default_instance_, v4);
}

uint64_t sub_2214DD11C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E6498 = v5;
  TSCE::_IndexedUidsArchive_IndexedUid_default_instance_[0] = &unk_2834AF800;
  if (atomic_load_explicit(scc_info_IndexedUidsArchive_IndexedUid_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812E64B0 = 0;
  qword_2812E64A8 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_IndexedUidsArchive_IndexedUid_default_instance_, v4);
}

uint64_t sub_2214DD1D0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::InternalCellRefSetArchive::InternalCellRefSetArchive(&TSCE::_InternalCellRefSetArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_InternalCellRefSetArchive_default_instance_, v4);
}

uint64_t sub_2214DD240(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E4808 = v5;
  TSCE::_InternalCellRefSetArchive_OwnerEntry_default_instance_[0] = &unk_2834AA8F0;
  if (atomic_load_explicit(scc_info_InternalCellRefSetArchive_OwnerEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812E4820 = 0;
  qword_2812E4818 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_InternalCellRefSetArchive_OwnerEntry_default_instance_, v4);
}

uint64_t sub_2214DD2F4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E46B0 = v5;
  TSCE::_InternalCellReferenceArchive_default_instance_ = &unk_2834AA370;
  if (atomic_load_explicit(scc_info_InternalCellReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812E46C8 = 0;
  qword_2812E46C0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TSCE::_InternalCellReferenceArchive_default_instance_, v4);
}

uint64_t sub_2214DD3A8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E4738 = v5;
  TSCE::_InternalRangeReferenceArchive_default_instance_[0] = &unk_2834AA580;
  if (atomic_load_explicit(scc_info_InternalRangeReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812E4750 = 0;
  qword_2812E4748 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_InternalRangeReferenceArchive_default_instance_, v4);
}

uint64_t sub_2214DD45C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::_MergeOriginMovedArchive_default_instance_ = &unk_2834AF330;
  *algn_2812E6288 = 0;
  xmmword_2812E6290 = 0u;
  unk_2812E62A0 = 0u;
  xmmword_2812E62B0 = 0u;
  unk_2812E62C0 = 0u;
  dword_2812E62D0 = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_MergeOriginMovedArchive_default_instance_, v4);
}

uint64_t sub_2214DD4E0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  qword_2812E6610 = 0;
  unk_2812E6618 = 0;
  TSCE::_MergeSourceArchive_default_instance_ = &unk_2834AFC20;
  qword_2812E6620 = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_MergeSourceArchive_default_instance_, v4);
}

uint64_t sub_2214DD55C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::NameTrackedReferencePair::NameTrackedReferencePair(&TSCE::_NameTrackedReferencePair_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_NameTrackedReferencePair_default_instance_, v4);
}

uint64_t sub_2214DD5CC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::NamedReferenceManagerArchive::NamedReferenceManagerArchive(&TSCE::_NamedReferenceManagerArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_NamedReferenceManagerArchive_default_instance_, v4);
}

uint64_t sub_2214DD63C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::NamesByTrackedReferenceArchive::NamesByTrackedReferenceArchive(&TSCE::_NamesByTrackedReferenceArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_NamesByTrackedReferenceArchive_default_instance_, v4);
}

uint64_t sub_2214DD6AC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::NumberCellValueArchive::NumberCellValueArchive(&TSCE::_NumberCellValueArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_NumberCellValueArchive_default_instance_, v4);
}

uint64_t sub_2214DD71C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::OwnerIDMapArchive::OwnerIDMapArchive(&TSCE::_OwnerIDMapArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_OwnerIDMapArchive_default_instance_, v4);
}

uint64_t sub_2214DD78C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E5700 = v5;
  TSCE::_OwnerIDMapArchive_OwnerIDMapArchiveEntry_default_instance_[0] = &unk_2834AD230;
  if (atomic_load_explicit(scc_info_OwnerIDMapArchive_OwnerIDMapArchiveEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812E5718 = 0;
  qword_2812E5710 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_OwnerIDMapArchive_OwnerIDMapArchiveEntry_default_instance_, v4);
}

uint64_t sub_2214DD840(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E62E0 = v5;
  TSCE::_OwnerUIDMapperArchive_default_instance_[0] = &unk_2834AF3E0;
  if (atomic_load_explicit(scc_info_OwnerUIDMapperArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812E6370 = 0u;
  unk_2812E6360 = 0u;
  unk_2812E6350 = 0u;
  unk_2812E6340 = 0u;
  unk_2812E6330 = 0u;
  unk_2812E6320 = 0u;
  unk_2812E6310 = 0u;
  unk_2812E6300 = 0u;
  unk_2812E62F0 = 0u;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_OwnerUIDMapperArchive_default_instance_, v4);
}

uint64_t sub_2214DD914(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E5C08 = v5;
  TSCE::_PreserveColumnRowFlagsArchive_default_instance_[0] = &unk_2834AE0A0;
  dword_2812E5C18 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_PreserveColumnRowFlagsArchive_default_instance_, v4);
}

uint64_t sub_2214DD998(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E4FD8 = v5;
  TSCE::_RTreeArchive_default_instance_[0] = &unk_2834ABCE0;
  if (atomic_load_explicit(scc_info_RTreeArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812E5008 = 0;
  unk_2812E4FF8 = 0u;
  unk_2812E4FE8 = 0u;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_RTreeArchive_default_instance_, v4);
}

uint64_t sub_2214DDA54(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::RTreeInternalNodeContentsArchive::RTreeInternalNodeContentsArchive(&TSCE::_RTreeInternalNodeContentsArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];
  google::protobuf::internal::OnShutdownRun(MEMORY[0x277D80A80], &TSCE::_RTreeInternalNodeContentsArchive_default_instance_, v5);
  TSCE::RTreeNodeArchive::RTreeNodeArchive(&TSCE::_RTreeNodeArchive_default_instance_, 0);

  return google::protobuf::internal::OnShutdownRun(v4, &TSCE::_RTreeNodeArchive_default_instance_, v6);
}

uint64_t sub_2214DDAE8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::RTreeLeafNodeContentsArchive::RTreeLeafNodeContentsArchive(&TSCE::_RTreeLeafNodeContentsArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_RTreeLeafNodeContentsArchive_default_instance_, v4);
}

uint64_t sub_2214DDB58(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E5018 = v5;
  TSCE::_RangeBackDependencyArchive_default_instance_[0] = &unk_2834ABD90;
  if (atomic_load_explicit(scc_info_RangeBackDependencyArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E5028 = 0;
  unk_2812E5030 = 0;
  qword_2812E5038 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_RangeBackDependencyArchive_default_instance_, v4);
}

uint64_t sub_2214DDC0C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  qword_2812E6238 = 0;
  unk_2812E6240 = 0;
  TSCE::_RangeCoordinateArchive_default_instance_ = &unk_2834AF1D0;
  qword_2812E6248 = 0;
  unk_2812E6250 = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_RangeCoordinateArchive_default_instance_, v4);
}

uint64_t sub_2214DDC88(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::RangeDependenciesArchive::RangeDependenciesArchive(&TSCE::_RangeDependenciesArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_RangeDependenciesArchive_default_instance_, v4);
}

uint64_t sub_2214DDCF8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::RangeDependenciesTiledArchive::RangeDependenciesTiledArchive(&TSCE::_RangeDependenciesTiledArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_RangeDependenciesTiledArchive_default_instance_, v4);
}

uint64_t sub_2214DDD68(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::RangePrecedentsTileArchive::RangePrecedentsTileArchive(&TSCE::_RangePrecedentsTileArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_RangePrecedentsTileArchive_default_instance_, v4);
}

uint64_t sub_2214DDDD8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E5078 = v5;
  TSCE::_RangePrecedentsTileArchive_FromToRangeArchive_default_instance_[0] = &unk_2834ABEF0;
  if (atomic_load_explicit(scc_info_RangePrecedentsTileArchive_FromToRangeArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E5088 = 0;
  unk_2812E5090 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_RangePrecedentsTileArchive_FromToRangeArchive_default_instance_, v4);
}

uint64_t sub_2214DDE88(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E4708 = v5;
  TSCE::_RangeReferenceArchive_default_instance_[0] = &unk_2834AA4D0;
  if (atomic_load_explicit(scc_info_RangeReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E4718 = 0;
  unk_2812E4720 = 0;
  qword_2812E4728 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_RangeReferenceArchive_default_instance_, v4);
}

uint64_t sub_2214DDF3C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::ReferenceArchive::ReferenceArchive(&TSCE::_ReferenceArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_ReferenceArchive_default_instance_, v4);
}

uint64_t sub_2214DDFAC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::ReferencesToDirtyArchive::ReferencesToDirtyArchive(&TSCE::_ReferencesToDirtyArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_ReferencesToDirtyArchive_default_instance_, v4);
}

uint64_t sub_2214DE01C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E65A0 = v5;
  TSCE::_RegionInfoArchive_default_instance_[0] = &unk_2834AFAC0;
  if (atomic_load_explicit(scc_info_RegionInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E65B0 = 0;
  unk_2812E65B8 = 0;
  qword_2812E65C0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_RegionInfoArchive_default_instance_, v4);
}

uint64_t sub_2214DE0D0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E65D0 = v5;
  TSCE::_RegionMovedInfoArchive_default_instance_ = &unk_2834AFB70;
  if (atomic_load_explicit(scc_info_RegionMovedInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  word_2812E6600 = 0;
  *&algn_2812E65D0[32] = 0u;
  *&algn_2812E65D0[16] = 0u;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TSCE::_RegionMovedInfoArchive_default_instance_, v4);
}

uint64_t sub_2214DE18C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E46D8 = v5;
  TSCE::_RelativeCellRefArchive_default_instance_[0] = &unk_2834AA420;
  if (atomic_load_explicit(scc_info_RelativeCellRefArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E46E8 = 0;
  unk_2812E46F0 = 0;
  dword_2812E46F8 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_RelativeCellRefArchive_default_instance_, v4);
}

uint64_t sub_2214DE240(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::RemoteDataSpecifierArchive::RemoteDataSpecifierArchive(&TSCE::_RemoteDataSpecifierArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_RemoteDataSpecifierArchive_default_instance_, v4);
}

uint64_t sub_2214DE2B0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::RemoteDataStoreArchive::RemoteDataStoreArchive(&TSCE::_RemoteDataStoreArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_RemoteDataStoreArchive_default_instance_, v4);
}

uint64_t sub_2214DE320(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::RemoteDataValueMapArchive::RemoteDataValueMapArchive(&TSCE::_RemoteDataValueMapArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_RemoteDataValueMapArchive_default_instance_, v4);
}

uint64_t sub_2214DE390(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E5850 = v5;
  TSCE::_RemoteDataValueMapArchive_RemoteDataMapEntry_default_instance_ = &unk_2834AD5A0;
  if (atomic_load_explicit(scc_info_RemoteDataValueMapArchive_RemoteDataMapEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E5860 = 0;
  unk_2812E5868 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TSCE::_RemoteDataValueMapArchive_RemoteDataMapEntry_default_instance_, v4);
}

uint64_t sub_2214DE440(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E6470 = v5;
  TSCE::_RewriteGroupNodeUIDInfoArchive_default_instance_ = &unk_2834AF750;
  if (atomic_load_explicit(scc_info_RewriteGroupNodeUIDInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E6480 = 0;
  unk_2812E6488 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TSCE::_RewriteGroupNodeUIDInfoArchive_default_instance_, v4);
}

uint64_t sub_2214DE4F0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::RewriteRangeEntryArchive::RewriteRangeEntryArchive(&TSCE::_RewriteRangeEntryArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_RewriteRangeEntryArchive_default_instance_, v4);
}

uint64_t sub_2214DE560(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::RewriteTableUIDInfoArchive::RewriteTableUIDInfoArchive(&TSCE::_RewriteTableUIDInfoArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_RewriteTableUIDInfoArchive_default_instance_, v4);
}

uint64_t sub_2214DE5D0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E6388 = v5;
  TSCE::_RewriteTableUIDInfoArchive_TableUIDMapEntryArchive_default_instance_[0] = &unk_2834AF490;
  if (atomic_load_explicit(scc_info_RewriteTableUIDInfoArchive_TableUIDMapEntryArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E6398 = 0;
  unk_2812E63A0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_RewriteTableUIDInfoArchive_TableUIDMapEntryArchive_default_instance_, v4);
}

uint64_t sub_2214DE680(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::SpanningDependenciesArchive::SpanningDependenciesArchive(&TSCE::_SpanningDependenciesArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_SpanningDependenciesArchive_default_instance_, v4);
}

uint64_t sub_2214DE6F0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::SpanningDependenciesArchive_ReferringColumnToLocalCells(&TSCE::_SpanningDependenciesArchive_ReferringColumnToLocalCells_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_SpanningDependenciesArchive_ReferringColumnToLocalCells_default_instance_, v4);
}

uint64_t sub_2214DE760(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::SpanningDependenciesArchive_ReferringColumnToRemoteCells(&TSCE::_SpanningDependenciesArchive_ReferringColumnToRemoteCells_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_SpanningDependenciesArchive_ReferringColumnToRemoteCells_default_instance_, v4);
}

uint64_t sub_2214DE7D0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::SpanningDependenciesExpandedArchive::SpanningDependenciesExpandedArchive(&TSCE::_SpanningDependenciesExpandedArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_SpanningDependenciesExpandedArchive_default_instance_, v4);
}

uint64_t sub_2214DE840(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents(&TSCE::_SpanningDependenciesExpandedArchive_CellCoordRefersToExtents_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_SpanningDependenciesExpandedArchive_CellCoordRefersToExtents_default_instance_, v4);
}

uint64_t sub_2214DE8B0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  qword_2812E5208 = 0;
  unk_2812E5210 = 0;
  TSCE::_SpanningDependenciesExpandedArchive_ExtentRange_default_instance_ = &unk_2834AC310;
  qword_2812E5218 = 0;
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_SpanningDependenciesExpandedArchive_ExtentRange_default_instance_, v4);
}

uint64_t sub_2214DE92C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext(&TSCE::_SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext_default_instance_, v4);
}

uint64_t sub_2214DE99C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E6650 = v5;
  TSCE::_SpillOwnerArchive_default_instance_ = &unk_2834AFD80;
  if (atomic_load_explicit(scc_info_SpillOwnerArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E6660 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TSCE::_SpillOwnerArchive_default_instance_, v4);
}

uint64_t sub_2214DEA4C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::StockArchive::StockArchive(&TSCE::_StockArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_StockArchive_default_instance_, v4);
}

uint64_t sub_2214DEABC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::StockArchive_AttributeEntry::StockArchive_AttributeEntry(&TSCE::_StockArchive_AttributeEntry_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_StockArchive_AttributeEntry_default_instance_, v4);
}

uint64_t sub_2214DEB2C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::StringCellValueArchive::StringCellValueArchive(&TSCE::_StringCellValueArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_StringCellValueArchive_default_instance_, v4);
}

uint64_t sub_2214DEB9C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E56D8 = v5;
  TSCE::_SubFormulaOwnerIDArchive_default_instance_[0] = &unk_2834AD180;
  if (atomic_load_explicit(scc_info_SubFormulaOwnerIDArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812E56F0 = 0;
  qword_2812E56E8 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_SubFormulaOwnerIDArchive_default_instance_, v4);
}

uint64_t sub_2214DEC50(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E6260 = v5;
  TSCE::_TableTransposeInfoArchive_default_instance_[0] = &unk_2834AF280;
  if (atomic_load_explicit(scc_info_TableTransposeInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812E6278 = 0;
  qword_2812E6270 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_TableTransposeInfoArchive_default_instance_, v4);
}

uint64_t sub_2214DED04(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E67E8 = v5;
  TSCE::_TrackedReferenceArchive_default_instance_[0] = &unk_2834B03B0;
  if (atomic_load_explicit(scc_info_TrackedReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812E6800 = 0;
  qword_2812E67F8 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_TrackedReferenceArchive_default_instance_, v4);
}

uint64_t sub_2214DEDB8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::TrackedReferenceStoreArchive::TrackedReferenceStoreArchive(&TSCE::_TrackedReferenceStoreArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_TrackedReferenceStoreArchive_default_instance_, v4);
}

uint64_t sub_2214DEE28(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::UidCellRefSetArchive::UidCellRefSetArchive(&TSCE::_UidCellRefSetArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_UidCellRefSetArchive_default_instance_, v4);
}

uint64_t sub_2214DEE98(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E4968 = v5;
  TSCE::_UidCellRefSetArchive_OwnerEntry_default_instance_[0] = &unk_2834AAE70;
  if (atomic_load_explicit(scc_info_UidCellRefSetArchive_OwnerEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E4978 = 0;
  unk_2812E4980 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_UidCellRefSetArchive_OwnerEntry_default_instance_, v4);
}

uint64_t sub_2214DEF48(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::UidCoordSetArchive::UidCoordSetArchive(&TSCE::_UidCoordSetArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_UidCoordSetArchive_default_instance_, v4);
}

uint64_t sub_2214DEFB8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::UidCoordSetArchive_ColumnEntry::UidCoordSetArchive_ColumnEntry(&TSCE::_UidCoordSetArchive_ColumnEntry_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_UidCoordSetArchive_ColumnEntry_default_instance_, v4);
}

uint64_t sub_2214DF028(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::UidLookupListArchive::UidLookupListArchive(&TSCE::_UidLookupListArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_UidLookupListArchive_default_instance_, v4);
}

uint64_t sub_2214DF098(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::UuidReferenceMapArchive::UuidReferenceMapArchive(&TSCE::_UuidReferenceMapArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_UuidReferenceMapArchive_default_instance_, v4);
}

uint64_t sub_2214DF108(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::UuidReferenceMapArchive_CellRefsForUuid::UuidReferenceMapArchive_CellRefsForUuid(&TSCE::_UuidReferenceMapArchive_CellRefsForUuid_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_UuidReferenceMapArchive_CellRefsForUuid_default_instance_, v4);
}

uint64_t sub_2214DF178(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::UuidReferencesArchive::UuidReferencesArchive(&TSCE::_UuidReferencesArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_UuidReferencesArchive_default_instance_, v4);
}

uint64_t sub_2214DF1E8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E5518 = v5;
  TSCE::_UuidReferencesArchive_TableRef_default_instance_[0] = &unk_2834ACD60;
  if (atomic_load_explicit(scc_info_UuidReferencesArchive_TableRef_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E5528 = 0;
  unk_2812E5530 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_UuidReferencesArchive_TableRef_default_instance_, v4);
}

uint64_t sub_2214DF298(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::UuidReferencesArchive_TableWithUuidRef::UuidReferencesArchive_TableWithUuidRef(&TSCE::_UuidReferencesArchive_TableWithUuidRef_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_UuidReferencesArchive_TableWithUuidRef_default_instance_, v4);
}

uint64_t sub_2214DF308(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E5540 = v5;
  TSCE::_UuidReferencesArchive_UuidRef_default_instance_[0] = &unk_2834ACE10;
  if (atomic_load_explicit(scc_info_UuidReferencesArchive_UuidRef_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E5550 = 0;
  unk_2812E5558 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_UuidReferencesArchive_UuidRef_default_instance_, v4);
}

uint64_t sub_2214DF3B8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::UuidSetStoreArchive::UuidSetStoreArchive(&TSCE::_UuidSetStoreArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_UuidSetStoreArchive_default_instance_, v4);
}

uint64_t sub_2214DF428(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::UuidSetStoreArchive_UuidSet::UuidSetStoreArchive_UuidSet(&TSCE::_UuidSetStoreArchive_UuidSet_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_UuidSetStoreArchive_UuidSet_default_instance_, v4);
}

uint64_t sub_2214DF498(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E68A0 = v5;
  TSCE::_ViewTractRefArchive_default_instance_[0] = &unk_2834B05C0;
  if (atomic_load_explicit(scc_info_ViewTractRefArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812E68D0 = 0;
  unk_2812E68C0 = 0u;
  unk_2812E68B0 = 0u;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_ViewTractRefArchive_default_instance_, v4);
}

uint64_t sub_2214DF554(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::VolatileDependenciesArchive::VolatileDependenciesArchive(&TSCE::_VolatileDependenciesArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_VolatileDependenciesArchive_default_instance_, v4);
}

uint64_t sub_2214DF5C4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E4EC0 = v5;
  TSCE::_VolatileDependenciesExpandedArchive_default_instance_ = &unk_2834ABA20;
  if (atomic_load_explicit(scc_info_VolatileDependenciesExpandedArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *&algn_2812E4EC0[48] = 0u;
  *&algn_2812E4EC0[32] = 0u;
  *&algn_2812E4EC0[16] = 0u;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TSCE::_VolatileDependenciesExpandedArchive_default_instance_, v4);
}

uint64_t sub_2214DF680(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::WarningArchive::WarningArchive(&TSCE::_WarningArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_WarningArchive_default_instance_, v4);
}

uint64_t sub_2214DF6F0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::WarningArchive_WarningDictionaryEntry::WarningArchive_WarningDictionaryEntry(&TSCE::_WarningArchive_WarningDictionaryEntry_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_WarningArchive_WarningDictionaryEntry_default_instance_, v4);
}

uint64_t sub_2214DF760(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  TSCE::WholeOwnerDependenciesArchive::WholeOwnerDependenciesArchive(&TSCE::_WholeOwnerDependenciesArchive_default_instance_, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSCE::_WholeOwnerDependenciesArchive_default_instance_, v4);
}

uint64_t sub_2214DF7D0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCEArchives.pb.cc", a4);
  *&v5 = 0;
  unk_2812E5308 = v5;
  TSCE::_WholeOwnerDependenciesExpandedArchive_default_instance_[0] = &unk_2834AC680;
  if (atomic_load_explicit(scc_info_WholeOwnerDependenciesExpandedArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E5318 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSCE::_WholeOwnerDependenciesExpandedArchive_default_instance_, v4);
}

uint64_t TSCE::ASTNodeArrayArchive_ASTNodeType_IsValid(TSCE *this)
{
  v1 = this;
  result = 1;
  if ((v1 - 1) >= 0x24)
  {
    v3 = v1 - 45;
    if (v3 > 0x19 || ((1 << v3) & 0x3FC1F8B) == 0)
    {
      return 0;
    }
  }

  return result;
}

TSP::CFUUIDArchive *TSCE::CellReferenceArchive::clear_table_id(TSCE::CellReferenceArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::CFUUIDArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::CellReferenceArchive *TSCE::CellReferenceArchive::CellReferenceArchive(TSCE::CellReferenceArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AA2C0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834AA2C0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCE::CellReferenceArchive *TSCE::CellReferenceArchive::CellReferenceArchive(TSCE::CellReferenceArchive *this, const TSCE::CellReferenceArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AA2C0;
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
  *(this + 4) = *(a2 + 4);
  return this;
}

void TSCE::CellReferenceArchive::~CellReferenceArchive(TSCE::CellReferenceArchive *this)
{
  if (this != TSCE::_CellReferenceArchive_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x223D9FBD0]();
    MEMORY[0x223DA1450](v2, 0x1081C401753DA55);
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::CellReferenceArchive::~CellReferenceArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *sub_2214DFCF8(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFFFELL;
    if (!*(v1 & 0xFFFFFFFFFFFFFFFELL) && v2 != 0)
    {
      v4 = *(v2 + 8);
      if (v4 != *(v2 + 16))
      {
        google::protobuf::UnknownFieldSet::ClearFallback((v2 + 8));
        v4 = *(v2 + 8);
      }

      if (v4)
      {
        *(v2 + 16) = v4;
        operator delete(v4);
      }

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

uint64_t *TSCE::CellReferenceArchive::default_instance(TSCE::CellReferenceArchive *this)
{
  if (atomic_load_explicit(scc_info_CellReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_CellReferenceArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TSCE::CellReferenceArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSP::CFUUIDArchive::Clear(*(this + 3));
  }

  if ((v2 & 6) != 0)
  {
    *(v1 + 32) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TSCE::CellReferenceArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v28, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v28 + 1);
      v8 = *v28;
      if ((*v28 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v9 - 128));
      v28 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_46;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 == 26)
        {
          *(a1 + 16) |= 1u;
          v17 = *(a1 + 24);
          if (!v17)
          {
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v17 = MEMORY[0x223DA0300](v18);
            *(a1 + 24) = v17;
            v7 = v28;
          }

          v13 = sub_2216F7F9C(a3, v17, v7);
        }

        else
        {
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

          v13 = google::protobuf::internal::UnknownFieldParse();
        }

        v28 = v13;
        if (!v13)
        {
          goto LABEL_46;
        }

        goto LABEL_37;
      }

      if (v10 == 2)
      {
        if (v8 != 16)
        {
          goto LABEL_13;
        }

        v5 |= 4u;
        v14 = (v7 + 1);
        LODWORD(v15) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        v16 = *v14;
        v15 = (v15 + (v16 << 7) - 128);
        if ((v16 & 0x80000000) == 0)
        {
          v14 = (v7 + 2);
LABEL_24:
          v28 = v14;
          *(a1 + 36) = v15;
          goto LABEL_37;
        }

        v24 = google::protobuf::internal::VarintParseSlow32(v7, v15);
        v28 = v24;
        *(a1 + 36) = v25;
        if (!v24)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v10 != 1 || v8 != 8)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
        v19 = (v7 + 1);
        LODWORD(v20) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        v21 = *v19;
        v20 = (v20 + (v21 << 7) - 128);
        if ((v21 & 0x80000000) == 0)
        {
          v19 = (v7 + 2);
LABEL_36:
          v28 = v19;
          *(a1 + 32) = v20;
          goto LABEL_37;
        }

        v26 = google::protobuf::internal::VarintParseSlow32(v7, v20);
        v28 = v26;
        *(a1 + 32) = v27;
        if (!v26)
        {
LABEL_46:
          v28 = 0;
          goto LABEL_2;
        }
      }

LABEL_37:
      if (sub_221567030(a3, &v28, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v28 + 2);
LABEL_6:
    v28 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v28;
}

unsigned __int8 *TSCE::CellReferenceArchive::_InternalSerialize(TSCE::CellReferenceArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 8);
    *a2 = 8;
    if (v9 > 0x7F)
    {
      a2[1] = v9 | 0x80;
      v11 = v9 >> 7;
      if (v9 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v11 | 0x80;
          v16 = v11 >> 7;
          ++a2;
          v17 = v11 >> 14;
          v11 >>= 7;
        }

        while (v17);
        *(a2 - 1) = v16;
        if ((v5 & 4) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        a2[2] = v11;
        a2 += 3;
        if ((v5 & 4) != 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      a2[1] = v9;
      a2 += 2;
      if ((v5 & 4) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_3:
    if ((v5 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_4;
  }

  if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 9);
  *a2 = 16;
  if (v18 > 0x7F)
  {
    a2[1] = v18 | 0x80;
    v19 = v18 >> 7;
    if (v18 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v19 | 0x80;
        v20 = v19 >> 7;
        ++a2;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
      *(a2 - 1) = v20;
      if ((v5 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      a2[2] = v19;
      a2 += 3;
      if ((v5 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    a2[1] = v18;
    a2 += 2;
    if ((v5 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 3);
  *a2 = 26;
  v7 = *(v6 + 5);
  if (v7 > 0x7F)
  {
    a2[1] = v7 | 0x80;
    v10 = v7 >> 7;
    if (v7 >> 14)
    {
      v8 = a2 + 3;
      do
      {
        *(v8 - 1) = v10 | 0x80;
        v12 = v10 >> 7;
        ++v8;
        v13 = v10 >> 14;
        v10 >>= 7;
      }

      while (v13);
      *(v8 - 1) = v12;
    }

    else
    {
      a2[2] = v10;
      v8 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v7;
    v8 = a2 + 2;
  }

  a2 = TSP::CFUUIDArchive::_InternalSerialize(v6, v8, a3);
LABEL_22:
  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCE::CellReferenceArchive::RequiredFieldsByteSizeFallback(TSCE::CellReferenceArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::CFUUIDArchive::ByteSizeLong(*(this + 3));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    result += ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSCE::CellReferenceArchive::ByteSizeLong(TSP::CFUUIDArchive **this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v3 = TSCE::CellReferenceArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::CFUUIDArchive::ByteSizeLong(this[3]);
    v3 = v2 + ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSCE::CellReferenceArchive::MergeFrom(TSCE::CellReferenceArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CellReferenceArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::CellReferenceArchive::MergeFrom(uint64_t this, const TSCE::CellReferenceArchive *a2)
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
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x223DA0300](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80A28];
      }

      this = TSP::CFUUIDArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_7:
        *(v3 + 36) = *(a2 + 9);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

const Message *TSCE::CellReferenceArchive::CopyFrom(const Message *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellReferenceArchive::Clear(this);

    return TSCE::CellReferenceArchive::MergeFrom(v4, a2);
  }

  return this;
}

const TSCE::CellReferenceArchive *TSCE::CellReferenceArchive::CopyFrom(const TSCE::CellReferenceArchive *this, const TSCE::CellReferenceArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellReferenceArchive::Clear(this);

    return TSCE::CellReferenceArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::CellReferenceArchive::InternalSwap(TSCE::CellReferenceArchive *this, TSCE::CellReferenceArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t *sub_2214E06D4(uint64_t *result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  if (*result)
  {
    if ((v3 & 1) == 0)
    {
      v4 = sub_221567188(a2);
      goto LABEL_6;
    }
  }

  else if ((v3 & 1) == 0)
  {
    return result;
  }

  v4 = ((v3 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_6:

  return sub_2215673E8(v2, v4);
}

TSCE::InternalCellReferenceArchive *TSCE::InternalCellReferenceArchive::InternalCellReferenceArchive(TSCE::InternalCellReferenceArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AA370;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_InternalCellReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834AA370;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_InternalCellReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TSCE::InternalCellReferenceArchive *TSCE::InternalCellReferenceArchive::InternalCellReferenceArchive(TSCE::InternalCellReferenceArchive *this, const TSCE::InternalCellReferenceArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AA370;
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

void TSCE::InternalCellReferenceArchive::~InternalCellReferenceArchive(TSCE::InternalCellReferenceArchive *this)
{
  if (this != &TSCE::_InternalCellReferenceArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      sub_2214DFCF8((v2 + 8));
      MEMORY[0x223DA1450](v2, 0x1081C40B7564605);
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::InternalCellReferenceArchive::~InternalCellReferenceArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::InternalCellReferenceArchive::default_instance(TSCE::InternalCellReferenceArchive *this)
{
  if (atomic_load_explicit(scc_info_InternalCellReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_InternalCellReferenceArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TSCE::InternalCellReferenceArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TSCE::CellCoordinateArchive::Clear(*(this + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_221567398(v2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TSCE::CellCoordinateArchive::Clear(TSCE::CellCoordinateArchive *this)
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

google::protobuf::internal *TSCE::InternalCellReferenceArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v22, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_2216F806C(a3, v16, v7);
        }

        else
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

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v13 = (v7 + 1);
      LODWORD(v14) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v13;
      v14 = (v14 + (v15 << 7) - 128);
      if ((v15 & 0x80000000) == 0)
      {
        v13 = (v7 + 2);
LABEL_23:
        v22 = v13;
        *(a1 + 32) = v14;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow32(v7, v14);
      v22 = v20;
      *(a1 + 32) = v21;
      if (!v20)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_221567030(a3, &v22, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *TSCE::InternalCellReferenceArchive::_InternalSerialize(TSCE::InternalCellReferenceArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 8);
    *a2 = 16;
    if (v12 > 0x7F)
    {
      a2[1] = v12 | 0x80;
      v13 = v12 >> 7;
      if (v12 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++a2;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(a2 - 1) = v14;
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
    }
  }

  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCE::InternalCellReferenceArchive::RequiredFieldsByteSizeFallback(TSCE::InternalCellReferenceArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSCE::CellCoordinateArchive::ByteSizeLong(*(this + 3));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSCE::InternalCellReferenceArchive::ByteSizeLong(TSCE::CellCoordinateArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v3 = TSCE::InternalCellReferenceArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSCE::CellCoordinateArchive::ByteSizeLong(this[3]);
    v3 = v2 + ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSCE::InternalCellReferenceArchive::MergeFrom(TSCE::InternalCellReferenceArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::InternalCellReferenceArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::InternalCellReferenceArchive::MergeFrom(uint64_t this, const TSCE::InternalCellReferenceArchive *a2)
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

uint64_t *TSCE::CellCoordinateArchive::MergeFrom(uint64_t *this, const TSCE::CellCoordinateArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      *(v3 + 6) = *(a2 + 6);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(v3 + 4) |= v5;
          return this;
        }

LABEL_7:
        *(v3 + 8) = *(a2 + 8);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 7) = *(a2 + 7);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

const Message *TSCE::InternalCellReferenceArchive::CopyFrom(const Message *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::InternalCellReferenceArchive::Clear(this);

    return TSCE::InternalCellReferenceArchive::MergeFrom(v4, a2);
  }

  return this;
}

const TSCE::InternalCellReferenceArchive *TSCE::InternalCellReferenceArchive::CopyFrom(const TSCE::InternalCellReferenceArchive *this, const TSCE::InternalCellReferenceArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::InternalCellReferenceArchive::Clear(this);

    return TSCE::InternalCellReferenceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::InternalCellReferenceArchive::InternalSwap(TSCE::InternalCellReferenceArchive *this, TSCE::InternalCellReferenceArchive *a2)
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

TSP::UUID *TSCE::RelativeCellRefArchive::clear_table_uid(TSCE::RelativeCellRefArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::RelativeCellRefArchive *TSCE::RelativeCellRefArchive::RelativeCellRefArchive(TSCE::RelativeCellRefArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AA420;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RelativeCellRefArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

{
  *this = &unk_2834AA420;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RelativeCellRefArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TSCE::RelativeCellRefArchive *TSCE::RelativeCellRefArchive::RelativeCellRefArchive(TSCE::RelativeCellRefArchive *this, const TSCE::RelativeCellRefArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AA420;
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
  v7 = *(a2 + 4);
  *(this + 10) = *(a2 + 10);
  *(this + 4) = v7;
  return this;
}

void TSCE::RelativeCellRefArchive::~RelativeCellRefArchive(TSCE::RelativeCellRefArchive *this)
{
  if (this != TSCE::_RelativeCellRefArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::RelativeCellRefArchive::~RelativeCellRefArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::RelativeCellRefArchive::default_instance(TSCE::RelativeCellRefArchive *this)
{
  if (atomic_load_explicit(scc_info_RelativeCellRefArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_RelativeCellRefArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TSCE::RelativeCellRefArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSP::UUID::Clear(*(this + 3));
  }

  if ((v2 & 0x7E) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 32) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TSCE::RelativeCellRefArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v48 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v48, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v48 + 1);
      v8 = *v48;
      if ((*v48 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v48, (v9 - 128));
      v48 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_80;
      }

      v7 = TagFallback;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 != 8)
          {
            goto LABEL_57;
          }

          v5 |= 2u;
          v24 = (v7 + 1);
          LODWORD(v23) = *v7;
          if ((v23 & 0x80) == 0)
          {
            goto LABEL_41;
          }

          v25 = *v24;
          v23 = (v23 + (v25 << 7) - 128);
          if ((v25 & 0x80000000) == 0)
          {
            v24 = (v7 + 2);
LABEL_41:
            v48 = v24;
            *(a1 + 32) = v23;
            goto LABEL_65;
          }

          v36 = google::protobuf::internal::VarintParseSlow64(v7, v23);
          v48 = v36;
          *(a1 + 32) = v37;
          if (!v36)
          {
            goto LABEL_80;
          }
        }

        else
        {
          if (v10 != 2)
          {
            if (v10 == 3 && v8 == 26)
            {
              *(a1 + 16) |= 1u;
              v15 = *(a1 + 24);
              if (!v15)
              {
                v16 = *(a1 + 8);
                if (v16)
                {
                  v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
                }

                v15 = MEMORY[0x223DA0360](v16);
                *(a1 + 24) = v15;
                v7 = v48;
              }

              v17 = sub_2216F813C(a3, v15, v7);
            }

            else
            {
LABEL_57:
              if (v8)
              {
                v35 = (v8 & 7) == 4;
              }

              else
              {
                v35 = 1;
              }

              if (v35)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_221567188((a1 + 8));
              }

              v17 = google::protobuf::internal::UnknownFieldParse();
            }

            v48 = v17;
            if (!v17)
            {
              goto LABEL_80;
            }

            goto LABEL_65;
          }

          if (v8 != 16)
          {
            goto LABEL_57;
          }

          v5 |= 4u;
          v33 = (v7 + 1);
          LODWORD(v32) = *v7;
          if ((v32 & 0x80) == 0)
          {
            goto LABEL_56;
          }

          v34 = *v33;
          v32 = (v32 + (v34 << 7) - 128);
          if ((v34 & 0x80000000) == 0)
          {
            v33 = (v7 + 2);
LABEL_56:
            v48 = v33;
            *(a1 + 36) = v32;
            goto LABEL_65;
          }

          v46 = google::protobuf::internal::VarintParseSlow64(v7, v32);
          v48 = v46;
          *(a1 + 36) = v47;
          if (!v46)
          {
LABEL_80:
            v48 = 0;
            goto LABEL_2;
          }
        }
      }

      else if (v8 >> 3 > 5)
      {
        if (v10 == 6)
        {
          if (v8 != 48)
          {
            goto LABEL_57;
          }

          v5 |= 0x20u;
          v30 = (v7 + 1);
          v29 = *v7;
          if ((v29 & 0x8000000000000000) == 0)
          {
            goto LABEL_51;
          }

          v31 = *v30;
          v29 = (v31 << 7) + v29 - 128;
          if ((v31 & 0x80000000) == 0)
          {
            v30 = (v7 + 2);
LABEL_51:
            v48 = v30;
            *(a1 + 42) = v29 != 0;
            goto LABEL_65;
          }

          v40 = google::protobuf::internal::VarintParseSlow64(v7, v29);
          v48 = v40;
          *(a1 + 42) = v41 != 0;
          if (!v40)
          {
            goto LABEL_80;
          }
        }

        else
        {
          if (v10 != 7 || v8 != 56)
          {
            goto LABEL_57;
          }

          v5 |= 0x40u;
          v19 = (v7 + 1);
          v18 = *v7;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if ((v20 & 0x80000000) == 0)
          {
            v19 = (v7 + 2);
LABEL_34:
            v48 = v19;
            *(a1 + 43) = v18 != 0;
            goto LABEL_65;
          }

          v44 = google::protobuf::internal::VarintParseSlow64(v7, v18);
          v48 = v44;
          *(a1 + 43) = v45 != 0;
          if (!v44)
          {
            goto LABEL_80;
          }
        }
      }

      else if (v10 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_57;
        }

        v5 |= 8u;
        v27 = (v7 + 1);
        v26 = *v7;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_46;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if ((v28 & 0x80000000) == 0)
        {
          v27 = (v7 + 2);
LABEL_46:
          v48 = v27;
          *(a1 + 40) = v26 != 0;
          goto LABEL_65;
        }

        v38 = google::protobuf::internal::VarintParseSlow64(v7, v26);
        v48 = v38;
        *(a1 + 40) = v39 != 0;
        if (!v38)
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_57;
        }

        v5 |= 0x10u;
        v12 = (v7 + 1);
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_15:
          v48 = v12;
          *(a1 + 41) = v11 != 0;
          goto LABEL_65;
        }

        v42 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v48 = v42;
        *(a1 + 41) = v43 != 0;
        if (!v42)
        {
          goto LABEL_80;
        }
      }

LABEL_65:
      if (sub_221567030(a3, &v48, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v48 + 2);
LABEL_6:
    v48 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v48;
}

unsigned __int8 *TSCE::RelativeCellRefArchive::_InternalSerialize(TSCE::RelativeCellRefArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 2) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 9);
    *a2 = 16;
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v11 = v10 >> 7;
      if (v10 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v11 | 0x80;
          v12 = v11 >> 7;
          ++a2;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
        *(a2 - 1) = v12;
        if (v5)
        {
          goto LABEL_31;
        }
      }

      else
      {
        a2[2] = v11;
        a2 += 3;
        if (v5)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      a2[1] = v10;
      a2 += 2;
      if (v5)
      {
        goto LABEL_31;
      }
    }

LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 8);
  *a2 = 8;
  if (v6 > 0x7F)
  {
    a2[1] = v6 | 0x80;
    v7 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v7 | 0x80;
        v8 = v7 >> 7;
        ++a2;
        v9 = v7 >> 14;
        v7 >>= 7;
      }

      while (v9);
      *(a2 - 1) = v8;
      if ((v5 & 4) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      a2[2] = v7;
      a2 += 3;
      if ((v5 & 4) != 0)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
    if ((v5 & 4) != 0)
    {
      goto LABEL_20;
    }
  }

LABEL_3:
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_31:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(this + 3);
  *a2 = 26;
  v15 = *(v14 + 5);
  if (v15 > 0x7F)
  {
    a2[1] = v15 | 0x80;
    v17 = v15 >> 7;
    if (v15 >> 14)
    {
      v16 = a2 + 3;
      do
      {
        *(v16 - 1) = v17 | 0x80;
        v18 = v17 >> 7;
        ++v16;
        v19 = v17 >> 14;
        v17 >>= 7;
      }

      while (v19);
      *(v16 - 1) = v18;
    }

    else
    {
      a2[2] = v17;
      v16 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v15;
    v16 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v14, v16, a3);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_41:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 40);
  *a2 = 32;
  a2[1] = v20;
  a2 += 2;
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v21 = *(this + 41);
  *a2 = 40;
  a2[1] = v21;
  a2 += 2;
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_50;
  }

LABEL_47:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v22 = *(this + 42);
  *a2 = 48;
  a2[1] = v22;
  a2 += 2;
  if ((v5 & 0x40) != 0)
  {
LABEL_50:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v23 = *(this + 43);
    *a2 = 56;
    a2[1] = v23;
    a2 += 2;
  }

LABEL_53:
  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCE::RelativeCellRefArchive::ByteSizeLong(TSCE::RelativeCellRefArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x7F) == 0)
  {
    v4 = 0;
    goto LABEL_17;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v6 = *(this + 8);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v7;
    goto LABEL_11;
  }

  v5 = TSP::UUID::ByteSizeLong(*(this + 3));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v8 = *(this + 9);
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v8 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 11;
    }

    v3 += v10;
  }

  v11.i64[0] = 0x200000002;
  v11.i64[1] = 0x200000002;
  v4 = v3 + vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_2217E2220), v11));
LABEL_17:
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

uint64_t TSCE::RelativeCellRefArchive::MergeFrom(TSCE::RelativeCellRefArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::RelativeCellRefArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::RelativeCellRefArchive::MergeFrom(uint64_t this, const TSCE::RelativeCellRefArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x7F) != 0)
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

        v6 = MEMORY[0x223DA0360](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D809E0];
      }

      this = TSP::UUID::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_23;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

LABEL_23:
    *(v3 + 36) = *(a2 + 9);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(v3 + 40) = *(a2 + 40);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(v3 + 41) = *(a2 + 41);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
LABEL_12:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_11:
      *(v3 + 43) = *(a2 + 43);
      goto LABEL_12;
    }

LABEL_26:
    *(v3 + 42) = *(a2 + 42);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return this;
}

const Message *TSCE::RelativeCellRefArchive::CopyFrom(const Message *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RelativeCellRefArchive::Clear(this);

    return TSCE::RelativeCellRefArchive::MergeFrom(v4, a2);
  }

  return this;
}

const TSCE::RelativeCellRefArchive *TSCE::RelativeCellRefArchive::CopyFrom(const TSCE::RelativeCellRefArchive *this, const TSCE::RelativeCellRefArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RelativeCellRefArchive::Clear(this);

    return TSCE::RelativeCellRefArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::RelativeCellRefArchive::IsInitialized(TSCE::RelativeCellRefArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCE::RelativeCellRefArchive::InternalSwap(TSCE::RelativeCellRefArchive *this, TSCE::RelativeCellRefArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  LODWORD(v5) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  return result;
}

TSP::CFUUIDArchive *TSCE::RangeReferenceArchive::clear_table_id(TSCE::RangeReferenceArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::CFUUIDArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::RangeReferenceArchive *TSCE::RangeReferenceArchive::RangeReferenceArchive(TSCE::RangeReferenceArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AA4D0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RangeReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_2834AA4D0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RangeReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSCE::RangeReferenceArchive *TSCE::RangeReferenceArchive::RangeReferenceArchive(TSCE::RangeReferenceArchive *this, const TSCE::RangeReferenceArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AA4D0;
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
  *(this + 2) = *(a2 + 2);
  return this;
}

void TSCE::RangeReferenceArchive::~RangeReferenceArchive(TSCE::RangeReferenceArchive *this)
{
  if (this != TSCE::_RangeReferenceArchive_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x223D9FBD0]();
    MEMORY[0x223DA1450](v2, 0x1081C401753DA55);
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::RangeReferenceArchive::~RangeReferenceArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::RangeReferenceArchive::default_instance(TSCE::RangeReferenceArchive *this)
{
  if (atomic_load_explicit(scc_info_RangeReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_RangeReferenceArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TSCE::RangeReferenceArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSP::CFUUIDArchive::Clear(*(this + 3));
  }

  if ((v2 & 0x1E) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TSCE::RangeReferenceArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v38 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v38, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v38 + 1);
      v8 = *v38;
      if ((*v38 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v38, (v9 - 128));
      v38 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_63;
      }

      v7 = TagFallback;
      v8 = v29;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v24 = *(a1 + 24);
            if (!v24)
            {
              v25 = *(a1 + 8);
              if (v25)
              {
                v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
              }

              v24 = MEMORY[0x223DA0300](v25);
              *(a1 + 24) = v24;
              v7 = v38;
            }

            v26 = sub_2216F7F9C(a3, v24, v7);
          }

          else
          {
LABEL_42:
            if (v8)
            {
              v27 = (v8 & 7) == 4;
            }

            else
            {
              v27 = 1;
            }

            if (v27)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_221567188((a1 + 8));
            }

            v26 = google::protobuf::internal::UnknownFieldParse();
          }

          v38 = v26;
          if (!v26)
          {
            goto LABEL_63;
          }

          goto LABEL_50;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_42;
        }

        v5 |= 2u;
        v15 = (v7 + 1);
        LODWORD(v16) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        v17 = *v15;
        v16 = (v16 + (v17 << 7) - 128);
        if ((v17 & 0x80000000) == 0)
        {
          v15 = (v7 + 2);
LABEL_25:
          v38 = v15;
          *(a1 + 32) = v16;
          goto LABEL_50;
        }

        v36 = google::protobuf::internal::VarintParseSlow32(v7, v16);
        v38 = v36;
        *(a1 + 32) = v37;
        if (!v36)
        {
LABEL_63:
          v38 = 0;
          goto LABEL_2;
        }
      }

      else if (v10 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_42;
        }

        v5 |= 4u;
        v18 = (v7 + 1);
        LODWORD(v19) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

        v20 = *v18;
        v19 = (v19 + (v20 << 7) - 128);
        if ((v20 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_30:
          v38 = v18;
          *(a1 + 36) = v19;
          goto LABEL_50;
        }

        v30 = google::protobuf::internal::VarintParseSlow32(v7, v19);
        v38 = v30;
        *(a1 + 36) = v31;
        if (!v30)
        {
          goto LABEL_63;
        }
      }

      else if (v10 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_42;
        }

        v5 |= 8u;
        v21 = (v7 + 1);
        LODWORD(v22) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        v23 = *v21;
        v22 = (v22 + (v23 << 7) - 128);
        if ((v23 & 0x80000000) == 0)
        {
          v21 = (v7 + 2);
LABEL_35:
          v38 = v21;
          *(a1 + 40) = v22;
          goto LABEL_50;
        }

        v32 = google::protobuf::internal::VarintParseSlow32(v7, v22);
        v38 = v32;
        *(a1 + 40) = v33;
        if (!v32)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_42;
        }

        v5 |= 0x10u;
        v11 = (v7 + 1);
        LODWORD(v12) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v13 = *v11;
        v12 = (v12 + (v13 << 7) - 128);
        if ((v13 & 0x80000000) == 0)
        {
          v11 = (v7 + 2);
LABEL_15:
          v38 = v11;
          *(a1 + 44) = v12;
          goto LABEL_50;
        }

        v34 = google::protobuf::internal::VarintParseSlow32(v7, v12);
        v38 = v34;
        *(a1 + 44) = v35;
        if (!v34)
        {
          goto LABEL_63;
        }
      }

LABEL_50:
      if (sub_221567030(a3, &v38, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v38 + 2);
LABEL_6:
    v38 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v38;
}

unsigned __int8 *TSCE::RangeReferenceArchive::_InternalSerialize(TSCE::RangeReferenceArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v11 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v11 | 0x80;
          v14 = v11 >> 7;
          ++v9;
          v15 = v11 >> 14;
          v11 >>= 7;
        }

        while (v15);
        *(v9 - 1) = v14;
      }

      else
      {
        a2[2] = v11;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSP::CFUUIDArchive::_InternalSerialize(v7, v9, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_36:
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v20 = *(this + 9);
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
          if ((v5 & 8) != 0)
          {
            goto LABEL_47;
          }
        }

        else
        {
          a2[2] = v21;
          a2 += 3;
          if ((v5 & 8) != 0)
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
        a2[1] = v20;
        a2 += 2;
        if ((v5 & 8) != 0)
        {
          goto LABEL_47;
        }
      }

LABEL_5:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
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

  v16 = *(this + 8);
  *a2 = 16;
  if (v16 > 0x7F)
  {
    a2[1] = v16 | 0x80;
    v17 = v16 >> 7;
    if (v16 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v17 | 0x80;
        v18 = v17 >> 7;
        ++a2;
        v19 = v17 >> 14;
        v17 >>= 7;
      }

      while (v19);
      *(a2 - 1) = v18;
      if ((v5 & 4) != 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      a2[2] = v17;
      a2 += 3;
      if ((v5 & 4) != 0)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    a2[1] = v16;
    a2 += 2;
    if ((v5 & 4) != 0)
    {
      goto LABEL_36;
    }
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_47:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(this + 10);
  *a2 = 32;
  if (v24 > 0x7F)
  {
    a2[1] = v24 | 0x80;
    v25 = v24 >> 7;
    if (v24 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v25 | 0x80;
        v26 = v25 >> 7;
        ++a2;
        v27 = v25 >> 14;
        v25 >>= 7;
      }

      while (v27);
      *(a2 - 1) = v26;
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      a2[2] = v25;
      a2 += 3;
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_58;
      }
    }
  }

  else
  {
    a2[1] = v24;
    a2 += 2;
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_58;
    }
  }

LABEL_6:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 11);
  *a2 = 40;
  if (v6 > 0x7F)
  {
    a2[1] = v6 | 0x80;
    v10 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v10 | 0x80;
        v12 = v10 >> 7;
        ++a2;
        v13 = v10 >> 14;
        v10 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
    }

    else
    {
      a2[2] = v10;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
  }

LABEL_58:
  v28 = *(this + 1);
  if ((v28 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v28 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCE::RangeReferenceArchive::RequiredFieldsByteSizeFallback(TSCE::RangeReferenceArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::CFUUIDArchive::ByteSizeLong(*(this + 3));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    result += ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  result += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
    return result;
  }

LABEL_9:
  result += ((9 * (__clz(*(this + 11) | 1) ^ 0x1F) + 73) >> 6) + 1;
  return result;
}

uint64_t TSCE::RangeReferenceArchive::ByteSizeLong(TSCE::RangeReferenceArchive *this)
{
  if ((~*(this + 4) & 0x1F) != 0)
  {
    v6 = TSCE::RangeReferenceArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::CFUUIDArchive::ByteSizeLong(*(this + 3));
    v3.i32[0] = v2 | 1;
    v3.i32[1] = *(this + 8) | 1;
    v3.i64[1] = *(this + 36) | 0x100000001;
    v4.i64[0] = 0x1F0000001FLL;
    v4.i64[1] = 0x1F0000001FLL;
    v5.i64[0] = 0x4900000049;
    v5.i64[1] = 0x4900000049;
    v6 = v2 + vaddlvq_u32(vshrq_n_u32(vmlal_u16(v5, vmovn_s32(veorq_s8(vclzq_s32(v3), v4)), 0x9000900090009), 6uLL)) + ((9 * (__clz(*(this + 11) | 1) ^ 0x1F) + 73) >> 6) + 5;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v6, this + 20);
  }

  else
  {
    *(this + 5) = v6;
    return v6;
  }
}

uint64_t TSCE::RangeReferenceArchive::MergeFrom(TSCE::RangeReferenceArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::RangeReferenceArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::RangeReferenceArchive::MergeFrom(uint64_t this, const TSCE::RangeReferenceArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x1F) != 0)
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

        v6 = MEMORY[0x223DA0300](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80A28];
      }

      this = TSP::CFUUIDArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_21;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }

LABEL_21:
    *(v3 + 36) = *(a2 + 9);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
LABEL_10:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_9:
      *(v3 + 44) = *(a2 + 11);
      goto LABEL_10;
    }

LABEL_22:
    *(v3 + 40) = *(a2 + 10);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return this;
}

const Message *TSCE::RangeReferenceArchive::CopyFrom(const Message *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RangeReferenceArchive::Clear(this);

    return TSCE::RangeReferenceArchive::MergeFrom(v4, a2);
  }

  return this;
}

const TSCE::RangeReferenceArchive *TSCE::RangeReferenceArchive::CopyFrom(const TSCE::RangeReferenceArchive *this, const TSCE::RangeReferenceArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RangeReferenceArchive::Clear(this);

    return TSCE::RangeReferenceArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::RangeReferenceArchive::InternalSwap(TSCE::RangeReferenceArchive *this, TSCE::RangeReferenceArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  return result;
}

TSCE::InternalRangeReferenceArchive *TSCE::InternalRangeReferenceArchive::InternalRangeReferenceArchive(TSCE::InternalRangeReferenceArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AA580;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_InternalRangeReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834AA580;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_InternalRangeReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TSCE::InternalRangeReferenceArchive *TSCE::InternalRangeReferenceArchive::InternalRangeReferenceArchive(TSCE::InternalRangeReferenceArchive *this, const TSCE::InternalRangeReferenceArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AA580;
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

void TSCE::InternalRangeReferenceArchive::~InternalRangeReferenceArchive(TSCE::InternalRangeReferenceArchive *this)
{
  if (this != TSCE::_InternalRangeReferenceArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      sub_2214DFCF8((v2 + 8));
      MEMORY[0x223DA1450](v2, 0x1081C40825B58B5);
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::InternalRangeReferenceArchive::~InternalRangeReferenceArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::InternalRangeReferenceArchive::default_instance(TSCE::InternalRangeReferenceArchive *this)
{
  if (atomic_load_explicit(scc_info_InternalRangeReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_InternalRangeReferenceArchive_default_instance_;
}

google::protobuf::UnknownFieldSet *TSCE::InternalRangeReferenceArchive::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TSCE::RangeCoordinateArchive::Clear(*(this + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_221567398(v2);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TSCE::RangeCoordinateArchive::Clear(TSCE::RangeCoordinateArchive *this)
{
  if ((*(this + 16) & 0xF) != 0)
  {
    *(this + 3) = 0;
    *(this + 4) = 0;
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

google::protobuf::internal *TSCE::InternalRangeReferenceArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v22, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_38;
      }

      v7 = TagFallback;
      v8 = v19;
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

            v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeCoordinateArchive>(v14);
            *(a1 + 24) = v13;
            v7 = v22;
          }

          v12 = sub_2216F820C(a3, v13, v7);
        }

        else
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

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_38;
        }

        goto LABEL_31;
      }

      if (v8 >> 3 != 1 || v8 != 8)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v15 = (v7 + 1);
      LODWORD(v16) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v17 = *v15;
      v16 = (v16 + (v17 << 7) - 128);
      if ((v17 & 0x80000000) == 0)
      {
        v15 = (v7 + 2);
LABEL_30:
        v22 = v15;
        *(a1 + 32) = v16;
        goto LABEL_31;
      }

      v20 = google::protobuf::internal::VarintParseSlow32(v7, v16);
      v22 = v20;
      *(a1 + 32) = v21;
      if (!v20)
      {
LABEL_38:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_31:
      if (sub_221567030(a3, &v22, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *TSCE::InternalRangeReferenceArchive::_InternalSerialize(TSCE::InternalRangeReferenceArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 8);
    *a2 = 8;
    if (v6 <= 0x7F)
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 1) == 0)
      {
        goto LABEL_24;
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
        v12 = v7 >> 7;
        ++a2;
        v13 = v7 >> 14;
        v7 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
      if ((v5 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[2] = v7;
    a2 += 3;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 3);
  *a2 = 18;
  v9 = *(v8 + 5);
  if (v9 > 0x7F)
  {
    a2[1] = v9 | 0x80;
    v11 = v9 >> 7;
    if (v9 >> 14)
    {
      v10 = a2 + 3;
      do
      {
        *(v10 - 1) = v11 | 0x80;
        v14 = v11 >> 7;
        ++v10;
        v15 = v11 >> 14;
        v11 >>= 7;
      }

      while (v15);
      *(v10 - 1) = v14;
    }

    else
    {
      a2[2] = v11;
      v10 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v9;
    v10 = a2 + 2;
  }

  a2 = TSCE::RangeCoordinateArchive::_InternalSerialize(v8, v10, a3);
LABEL_24:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCE::InternalRangeReferenceArchive::RequiredFieldsByteSizeFallback(TSCE::InternalRangeReferenceArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSCE::RangeCoordinateArchive::ByteSizeLong(*(this + 3));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSCE::InternalRangeReferenceArchive::ByteSizeLong(TSCE::RangeCoordinateArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v3 = TSCE::InternalRangeReferenceArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSCE::RangeCoordinateArchive::ByteSizeLong(this[3]);
    v3 = v2 + ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSCE::InternalRangeReferenceArchive::MergeFrom(TSCE::InternalRangeReferenceArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::InternalRangeReferenceArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::InternalRangeReferenceArchive::MergeFrom(uint64_t this, const TSCE::InternalRangeReferenceArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeCoordinateArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSCE::_RangeCoordinateArchive_default_instance_;
      }

      this = TSCE::RangeCoordinateArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSCE::RangeCoordinateArchive::MergeFrom(uint64_t *this, const TSCE::RangeCoordinateArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0xF) != 0)
  {
    if (v5)
    {
      *(v3 + 6) = *(a2 + 6);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 7) = *(a2 + 7);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        *(v3 + 4) |= v5;
        return this;
      }

LABEL_8:
      *(v3 + 9) = *(a2 + 9);
      goto LABEL_9;
    }

LABEL_13:
    *(v3 + 8) = *(a2 + 8);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

const Message *TSCE::InternalRangeReferenceArchive::CopyFrom(const Message *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::InternalRangeReferenceArchive::Clear(this);

    return TSCE::InternalRangeReferenceArchive::MergeFrom(v4, a2);
  }

  return this;
}

const TSCE::InternalRangeReferenceArchive *TSCE::InternalRangeReferenceArchive::CopyFrom(const TSCE::InternalRangeReferenceArchive *this, const TSCE::InternalRangeReferenceArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::InternalRangeReferenceArchive::Clear(this);

    return TSCE::InternalRangeReferenceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::InternalRangeReferenceArchive::InternalSwap(TSCE::InternalRangeReferenceArchive *this, TSCE::InternalRangeReferenceArchive *a2)
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

void *TSCE::IndexSetArchive_IndexSetEntry::IndexSetArchive_IndexSetEntry(void *result, uint64_t a2)
{
  *result = &unk_2834AA630;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_2834AA630;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSCE::IndexSetArchive_IndexSetEntry *TSCE::IndexSetArchive_IndexSetEntry::IndexSetArchive_IndexSetEntry(TSCE::IndexSetArchive_IndexSetEntry *this, const TSCE::IndexSetArchive_IndexSetEntry *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AA630;
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

void TSCE::IndexSetArchive_IndexSetEntry::~IndexSetArchive_IndexSetEntry(TSCE::IndexSetArchive_IndexSetEntry *this)
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

uint64_t *TSCE::IndexSetArchive_IndexSetEntry::default_instance(TSCE::IndexSetArchive_IndexSetEntry *this)
{
  if (atomic_load_explicit(scc_info_IndexSetArchive_IndexSetEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_IndexSetArchive_IndexSetEntry_default_instance_;
}

google::protobuf::UnknownFieldSet *TSCE::IndexSetArchive_IndexSetEntry::Clear(TSCE::IndexSetArchive_IndexSetEntry *this)
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