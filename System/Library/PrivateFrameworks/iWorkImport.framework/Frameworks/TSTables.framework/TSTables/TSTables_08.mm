uint64_t **TSCEASTNodeArrayReader::skipUndoTractList(uint64_t **this)
{
  v1 = this[1];
  v2 = **this;
  v3 = *(v1 + v2);
  v4 = (v1 + 1);
  this[1] = v4;
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      v6 = (&v4[2 * *(v4 + v2)] + 4);
      this[1] = v6;
      v4 = (&v6[2 * *(v6 + v2)] + 7);
      this[1] = v4;
    }
  }

  this[1] = (v4 + 1);
  return this;
}

uint64_t TSCEASTNodeArrayReader::readIndexSet@<X0>(uint64_t **this@<X0>, TSUIndexSet *a2@<X8>)
{
  TSUIndexSet::TSUIndexSet(a2);
  v4 = this[1];
  v5 = *(v4 + **this);
  this[1] = (v4 + 4);
  for (result = TSUIndexSet::ensureRangeCapacity(a2); v5; --v5)
  {
    v7 = this[1];
    v8 = **this;
    v9 = *(v7 + v8);
    this[1] = (v7 + 4);
    v10 = *(v7 + v8 + 4);
    this[1] = v7 + 1;
    v11._begin = v9;
    v11._end = v10;
    result = TSUIndexSet::addIndexesInRange(a2, &v11);
  }

  return result;
}

void *TSCEASTNodeArrayReader::skipIndexSet(void *this, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = this;
  v5 = *this;
  v6 = this[1];
  v7 = *(*this + 8);
  v8 = *(**this + v6);
  v6 += 4;
  this[1] = v6;
  v9 = v6 + 8 * v8;
  if (v9 > v7 || v9 > *(v5 + 16))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTNodeArrayReader::skipIndexSet()", a4);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.mm", v13);
    v18 = TSCEASTNodeArray::codeString(*v4, v15, v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v19, v11, v14, 584, 0, "skipIndexSet going off rails, numRanges: %lu for formula: %{public}@", v8, v18);

    this = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
    v7 = *(*v4 + 8);
  }

  if (v9 <= v7)
  {
    v4[1] = v9;
  }

  return this;
}

uint64_t TSCEASTNodeArrayReader::readTableUIDForRelativeTractRef(TSCEASTNodeArrayReader *this, TSCEASTRefFlags a2)
{
  if ((a2._flags & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 1);
  v4 = **this;
  *(this + 1) = v3 + 1;
  v2 = *(v4 + v3 + 1);
  *(this + 1) = v3 + 17;
  return v2;
}

TSCERelativeTractRef *TSCEASTNodeArrayReader::readRelativeTractRef(uint64_t **this, TSCEASTRefFlags a2)
{
  v33 = 0uLL;
  v4 = this[1];
  v5 = **this;
  v6 = *(v4 + v5);
  this[1] = (v4 + 1);
  if (a2._flags)
  {
    v33 = *(v4 + v5 + 1);
    this[1] = (v4 + 17);
  }

  v32 = (v6 >> 2) & 0xC | (a2._flags >> 4) & 3;
  v7 = [TSCERelativeTractRef alloc];
  v9 = objc_msgSend_initWithTableUID_preserveFlags_(v7, v8, &v33, &v32);
  objc_msgSend_setPreserveRectangular_(v9, v10, (v6 >> 1) & 1, v11);
  TSUIndexSet::TSUIndexSet(&v31);
  v14 = a2._flags & 0xC;
  if (v14 == 4)
  {
    objc_msgSend_setSpansAllColumns_(v9, v12, 1, v13);
  }

  else
  {
    TSCEASTNodeArrayReader::readIndexSet(this, &v30);
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v30);
    objc_msgSend_setRelativeColumns_(v9, v15, &v31, v16);
    if (v14 == 8)
    {
      v19 = 1;
      objc_msgSend_setSpansAllRows_(v9, v17, 1, v18);
      goto LABEL_9;
    }
  }

  TSCEASTNodeArrayReader::readIndexSet(this, &v30);
  TSUIndexSet::operator=();
  TSUIndexSet::~TSUIndexSet(&v30);
  objc_msgSend_setRelativeRows_(v9, v20, &v31, v21);
  if (v14 != 4)
  {
    v19 = 0;
LABEL_9:
    TSCEASTNodeArrayReader::readIndexSet(this, &v30);
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v30);
    objc_msgSend_setColumns_(v9, v22, &v31, v23);
    if (v19)
    {
      goto LABEL_11;
    }
  }

  TSCEASTNodeArrayReader::readIndexSet(this, &v30);
  TSUIndexSet::operator=();
  TSUIndexSet::~TSUIndexSet(&v30);
  objc_msgSend_setRows_(v9, v27, &v31, v28);
LABEL_11:
  objc_msgSend_normalizeSpanningSettings(v9, v24, v25, v26);
  TSUIndexSet::~TSUIndexSet(&v31);

  return v9;
}

void sub_22122D994(_Unwind_Exception *a1, TSUIndexSet *a2, TSUIndexSet *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  TSUIndexSet::~TSUIndexSet(&a10);
  TSUIndexSet::~TSUIndexSet(&a14);

  _Unwind_Resume(a1);
}

void TSCEASTNodeArrayReader::readLocalUidReference(uint64_t **this@<X0>, uint64_t a2@<X8>)
{
  v6 = TSCEASTNodeArrayReader::readUndoTractList(this);
  v4 = this[1];
  v5 = *(v4 + **this);
  this[1] = (v4 + 1);
  v7 = v5;
  sub_22122B8B4(a2, v6, &v7);
}

__n128 TSCEASTNodeArrayReader::readCrossTableUidReference@<Q0>(uint64_t **this@<X0>, uint64_t a2@<X8>)
{
  TSCEASTNodeArrayReader::readLocalUidReference(this, a2);
  v4 = this[1];
  result = *(v4 + **this);
  *(a2 + 8) = result;
  this[1] = v4 + 2;
  return result;
}

TSCECategoryRef *TSCEASTNodeArrayReader::readCategoryRef(uint64_t **this)
{
  v1 = this[1];
  v2 = **this;
  v19 = *(v1 + v2);
  this[1] = v1 + 2;
  v18 = *(v1 + v2 + 16);
  this[1] = v1 + 4;
  v17 = *(v1 + v2 + 32);
  this[1] = v1 + 6;
  v16 = *(v1 + v2 + 48);
  this[1] = v1 + 8;
  v3 = *(v1 + v2 + 64);
  this[1] = (v1 + 65);
  v4 = *(v1 + v2 + 65);
  this[1] = (v1 + 66);
  v5 = *(v1 + v2 + 66);
  this[1] = (v1 + 67);
  v6 = *(v1 + v2 + 67);
  this[1] = (v1 + 69);
  v7 = *(v1 + v2 + 69);
  this[1] = (v1 + 71);
  v8 = *(v1 + v2 + 71);
  this[1] = v1 + 9;
  v15 = v3;
  v9 = [TSCECategoryRef alloc];
  BYTE2(v14) = v8;
  LOWORD(v14) = v7;
  v13 = v6;
  v11 = objc_msgSend_initWithGroupByUID_relGroupUID_absGroupUid_columnUid_aggType_groupLevel_aggrIndexLevel_preserveFlags_relativeColumn_options_(v9, v10, &v19, &v17, &v16, &v18, v4, v5, v13, &v15, v14);

  return v11;
}

void sub_22122DC28(TSCEASTNodeArray *a1, void *a2)
{
  v6 = a2;
  if (objc_msgSend_length(v6, v3, v4, v5))
  {
    TSCEASTWhitespaceElement::appendWhitespaceElement(a1, 31, v6);
  }
}

uint64_t **sub_22122DC98(void *a1, unsigned __int8 *a2, _BYTE *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % a1[1];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 16) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t ***sub_22122DECC(void *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 16) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_221230440(void *a1, void *a2, uint64_t a3, _OWORD **a4)
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

void *sub_22123067C(void *a1, void *a2, uint64_t a3, _OWORD **a4)
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

void sub_2212308B8(unsigned __int16 *a1, uint64_t a2, void *a3)
{
  v22 = a3;
  *a1 = *(a2 + 8);
  sub_221230A4C((a1 + 4), a2);
  v6 = objc_msgSend_evaluationInfoForCell_outHasDynamicPrecedents_outIsInCycle_(v22, v5, *(a1 + 2) - 32, (a1 + 40), a1 + 81);
  *(a1 + 9) = v6;

  if (*a1 == -1)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "void TSCERecalcPhaseState::addNewLeaf(const TSCECellToEvaluate &, TSCEDependencyTracker *__strong)", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v12);
    v14 = sub_2215C3854(a2);
    v15 = objc_opt_class();
    if (objc_msgSend_ownerIDIsRegistered_(v22, v16, *a1, v17))
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v18, v10, v13, 135, 0, "Invalid ownerId for solving, leaf: %@ for formulaOwner %@ %@", v14, v15, &stru_2834BADA0);
    }

    else
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v18, v10, v13, 135, 0, "Invalid ownerId for solving, leaf: %@ for formulaOwner %@ %@", v14, v15, @"(UNREGISTERED)");
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }
}

void sub_221230A4C(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_22107C148();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_22123E9D0(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
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
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void sub_2212310C0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t sub_221231978(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_221231990(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(*(a1 + 40) + 8) + 40);
  if (!v6)
  {
    v8 = *(a2 + 1);
    v9 = *(a2 + 2);
LABEL_9:
    v11 = objc_msgSend_ownerForOwnerUID_(*(a1 + 32), a2, v8, v9);
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v17 = objc_msgSend_linkedResolver(*(*(*(a1 + 40) + 8) + 40), v14, v15, v16);
    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v22 = objc_msgSend_tableResolverForRefResolver_(*(a1 + 32), v20, *(*(*(a1 + 48) + 8) + 40), v21);
    v23 = *(*(a1 + 56) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    goto LABEL_10;
  }

  v7 = objc_msgSend_ownerUID(v6, a2, a3, a4);
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  if (v7 != v8 || a2 != v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  v25 = *(*(*(a1 + 56) + 8) + 40);
  v27 = *a2;
  return objc_msgSend_resetAllFormulaDependenciesForCell_calcEngine_(v25, a2, &v27, *(a1 + 32));
}

void sub_2212321D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = TSCECalculationEngine;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2212323B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_22123406C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  TSCEReferenceSet::~TSCEReferenceSet(&a26);

  TSCEReferenceSet::~TSCEReferenceSet(&a43);
  _Block_object_dispose(&a60, 8);
  TSCEReferenceSet::~TSCEReferenceSet(&a65);
  _Block_object_dispose(&STACK[0x280], 8);
  TSCEReferenceSet::~TSCEReferenceSet(&STACK[0x2A0]);
  _Block_object_dispose((v69 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_22123416C(uint64_t a1, TSCEAnyRef *a2, _BYTE *a3, uint64_t a4)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = (*(a1 + 192) & 0x42) == 64;
  refType = a2->_refType;
  if (!a2->_refType)
  {
    if (TSCEReferenceSet::containsAnyRef((a1 + 56), a2, a3, a4))
    {
      goto LABEL_16;
    }

    v9 = objc_msgSend_ownerKindForOwnerUID_(*(a1 + 32), a2, a2->_spanningRef.rangeRef._tableUID._lower, a2->_spanningRef.rangeRef._tableUID._upper);
    if (v9 == 35 || v9 == 12)
    {
      v11 = *(*(a1 + 40) + 8);
LABEL_15:
      *(v11 + 24) = 1;
      goto LABEL_16;
    }

LABEL_14:
    v11 = v24;
    goto LABEL_15;
  }

  if (refType == 1)
  {
    if (TSCEReferenceSet::containsAnyRef((a1 + 56), a2, a3, a4))
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (refType == 2)
  {
    tableUID = a2->_spanningRef.rangeRef._tableUID;
    v21[0] = a2->_spanningRef.rangeRef.range;
    v21[1] = tableUID;
    v22 = *&a2->_spanningRef.rangeContext;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3321888768;
    v17 = sub_2212343B4;
    v18 = &unk_2834A3630;
    TSCEReferenceSet::TSCEReferenceSet(&v20, (a1 + 56));
    v19 = &v23;
    sub_22126A810(v21, &v15);
    TSCEReferenceSet::~TSCEReferenceSet(&v20);
  }

LABEL_16:
  if (*(v24 + 24) != 1)
  {
    goto LABEL_27;
  }

  v12 = objc_msgSend_ownerKindForOwnerUID_(*(a1 + 32), a2, a2->_spanningRef.rangeRef._tableUID._lower, a2->_spanningRef.rangeRef._tableUID._upper);
  if (v12 > 2)
  {
    if (v12 != 3)
    {
      if (v12 != 9)
      {
        goto LABEL_20;
      }

LABEL_23:
      *(*(*(a1 + 48) + 8) + 24) = 1;
      goto LABEL_25;
    }
  }

  else if (v12 != 1)
  {
    if (v12 != 2)
    {
LABEL_20:
      *(*(*(a1 + 48) + 8) + 24) = 0;
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_referenceWasGuaranteedCleanAtRecalcCycleStart_(*(a1 + 32), v13, a2, v14, v15, v16, v17, v18) ^ 1;
LABEL_25:
  *(*(*(a1 + 40) + 8) + 24) = 1;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

LABEL_27:
  _Block_object_dispose(&v23, 8);
}

uint64_t sub_2212343B4(uint64_t a1, const TSCESpanningRangeRef *a2, _BYTE *a3)
{
  result = TSCEReferenceSet::containsRef((a1 + 40), a2);
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_221234420(uint64_t a1, unsigned __int16 *a2, _BYTE *a3, uint64_t a4)
{
  v6 = *a2;
  if (v6 == 2)
  {
    v7 = *(a2 + 12);
    v10[0] = *(a2 + 4);
    v10[1] = v7;
    v11 = *(a2 + 5);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3321888768;
    v8[2] = sub_22123453C;
    v8[3] = &unk_2834A3630;
    TSCEReferenceSet::TSCEReferenceSet(&v9, (a1 + 40));
    v8[4] = *(a1 + 32);
    sub_22126A810(v10, v8);
    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      *a3 = 1;
    }

    TSCEReferenceSet::~TSCEReferenceSet(&v9);
  }

  else if (v6 <= 1 && (TSCEReferenceSet::containsAnyRef((a1 + 40), a2, a3, a4) & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

uint64_t sub_22123453C(uint64_t a1, const TSCESpanningRangeRef *a2, _BYTE *a3)
{
  result = TSCEReferenceSet::containsRef((a1 + 40), a2);
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_221235264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2210BDEC0(&a9);

  _Unwind_Resume(a1);
}

void -[TSCECalculationEngine p_blockUntilRecalcIsCompleteOnNewThreadWithTimeout:](TSCECalculationEngine *self, SEL a2, id a3)
{
  v19 = a3;
  v6 = objc_autoreleasePoolPush();
  if (v19)
  {
    objc_msgSend_timeoutInterval(v19, v19, v4, v5);
    if (v7 == 0.0)
    {
      v8 = -1;
    }

    else
    {
      v8 = dispatch_time(0, (v7 * 1000000000.0));
    }

    dispatch_group_wait(self->_recalcLoopGroup, v8);
    v12 = objc_msgSend_blockingIdentifier(v19, v13, v14, v15);
  }

  else
  {
    dispatch_group_wait(self->_recalcLoopGroup, 0xFFFFFFFFFFFFFFFFLL);
    v12 = @"kTSCERecalcLoopGroupEmpty";
  }

  v16 = objc_msgSend_accessController(self, v9, v10, v11);
  objc_msgSend_signalIdentifier_(v16, v17, v12, v18);

  objc_autoreleasePoolPop(v6);
}

void -[TSCECalculationEngine p_blockUntilRecalcTaskExitedWithTimeout:](TSCECalculationEngine *self, SEL a2, double a3)
{
  self->_blockingUntilRecalcIsComplete = 1;
  v5 = [TSCECalcTimeoutObject alloc];
  v37 = objc_msgSend_initWithTimeout_(v5, v6, v7, v8, a3);
  objc_msgSend_detachNewThreadSelector_toTarget_withObject_(MEMORY[0x277CCACC8], v9, sel_p_blockUntilRecalcIsCompleteOnNewThreadWithTimeout_, self);
  WeakRetained = objc_loadWeakRetained(&self->_accessController);

  if (!WeakRetained)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCECalculationEngine p_blockUntilRecalcTaskExitedWithTimeout:]", v12);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 2424, 0, "Can't block without an access controller");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  v22 = objc_loadWeakRetained(&self->_accessController);
  v26 = objc_msgSend_blockingIdentifier(v37, v23, v24, v25);
  v30 = objc_msgSend_distantFuture(MEMORY[0x277CBEAA8], v27, v28, v29);
  v31 = objc_loadWeakRetained(&self->_accessController);
  v35 = objc_msgSend_hasRead(v31, v32, v33, v34);
  objc_msgSend_waitOnIdentifier_untilDate_releaseReadWhileWaiting_(v22, v36, v26, v30, v35);

  self->_blockingUntilRecalcIsComplete = 0;
}

void -[TSCECalculationEngine p_blockUntilRecalcIsCompleteWithTimeout:](TSCECalculationEngine *self, SEL a2, double a3)
{
  if (objc_msgSend_isRecalculationStarted(self, a2, v3, v4))
  {
    calculationPauseCount = self->_calculationPauseCount;
    if (calculationPauseCount == 1)
    {
      objc_msgSend_resumeRecalculation(self, v7, v8, v9);
    }

    v11 = objc_msgSend_threadState(self, v7, v8, v9);
    if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_13;
      }

      if (objc_msgSend_hasDirtyCells(self->_dependencyTracker, v12, v13, v14))
      {
        objc_msgSend_startRecalcTaskIfNecessary(self, v15, v16, v17);
      }

      else
      {
        v28 = objc_msgSend_referencesToDirty(self, v15, v16, v17);
        isEmptyForDirtying = objc_msgSend_isEmptyForDirtying(v28, v29, v30, v31);

        objc_msgSend_startRecalcTaskIfNecessary(self, v33, v34, v35);
        if (isEmptyForDirtying)
        {
          goto LABEL_13;
        }
      }
    }

    objc_msgSend_p_blockUntilRecalcTaskExitedWithTimeout_(self, v12, v13, v14, a3);
LABEL_13:
    if (calculationPauseCount == 1)
    {

      objc_msgSend_pauseRecalculationSometimeSoon(self, v12, v13, v14);
    }

    return;
  }

  v18 = MEMORY[0x277D81150];
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCECalculationEngine p_blockUntilRecalcIsCompleteWithTimeout:]", v9);
  v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v21);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 2433, 0, "Can't block on the calc-engine before it is started up.");

  v27 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v27, v24, v25, v26);
}

void sub_221236AD4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_referencesToDirty(*(a1 + 32), a2, a3, a4);
  objc_msgSend_flushAllDirtyReferences(v7, v4, v5, v6);
}

void sub_221236B34(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_referencesToDirty(*(a1 + 32), a2, a3, a4);
  objc_msgSend_flushAllDirtyReferences(v7, v4, v5, v6);
}

intptr_t sub_221237274(uint64_t a1)
{
  while (1)
  {
    v2 = objc_autoreleasePoolPush();
    v6 = objc_msgSend_referencesToDirty(*(a1 + 40), v3, v4, v5);
    objc_msgSend_clearInProgressCalcCellRefs(v6, v7, v8, v9);
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 968));

    v11 = objc_loadWeakRetained((*(a1 + 40) + 968));
    v12 = v11;
    if (WeakRetained)
    {
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = sub_2212377AC;
      v58[3] = &unk_278461BC8;
      v59 = *(a1 + 40);
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = sub_2212377B4;
      v56[3] = &unk_27845FEF0;
      v56[4] = v59;
      v57 = v6;
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = sub_2212377F0;
      v55[3] = &unk_278461BF0;
      v55[4] = *(a1 + 40);
      objc_msgSend_performReadAllowingOverlappingImplicitRead_thenWrite_thenReadOnPrimaryThread_(v12, v13, v58, v56, v55);
    }

    else
    {

      if (!v12)
      {
        v20 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSCECalculationEngine startRecalculationTask]_block_invoke", v19);
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v23);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 2690, 0, "no access controller!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
      }

      objc_msgSend_recalcHoldingReadLock(*(a1 + 40), v17, v18, v19);
      objc_msgSend_recalcHoldingWriteLock(*(a1 + 40), v29, v30, v31);
      objc_msgSend_clearInProgressCalcCellRefs(v6, v32, v33, v34);
    }

    hasDirtyCells = objc_msgSend_hasDirtyCells(*(*(a1 + 40) + 80), v14, v15, v16);
    v39 = *(a1 + 40);
    if (hasDirtyCells)
    {
      hasBackgroundTasks = 1;
    }

    else
    {
      v41 = objc_msgSend_referencesToDirty(v39, v35, v36, v37);
      isEmptyForDirtying = objc_msgSend_isEmptyForDirtying(v41, v42, v43, v44);

      v39 = *(a1 + 40);
      v49 = *(v39 + 112);
      hasBackgroundTasks = v49 & isEmptyForDirtying ^ 1;
      if ((v49 & 1) == 0 && ((isEmptyForDirtying ^ 1) & 1) == 0)
      {
        hasBackgroundTasks = objc_msgSend_hasBackgroundTasks(v39, v46, v47, v48);
        v39 = *(a1 + 40);
      }
    }

    if ((*(v39 + 96) & 1) != 0 || !hasBackgroundTasks)
    {
      break;
    }

    objc_autoreleasePoolPop(v2);
  }

  os_unfair_lock_lock((v39 + 92));
  *(*(a1 + 40) + 88) = 1;
  os_unfair_lock_unlock((*(a1 + 40) + 92));
  if ((hasBackgroundTasks & 1) == 0)
  {
    v53 = *(a1 + 40);
    if (v53[696] == 1)
    {
      objc_msgSend_notifyObserversOfRecalcProgress(v53, v50, v51, v52);
    }
  }

  objc_autoreleasePoolPop(v2);
  return dispatch_group_wait(*(*(a1 + 40) + 128), 0xFFFFFFFFFFFFFFFFLL);
}

void sub_221237730(_Unwind_Exception *a1)
{
  __cxa_end_catch();

  _Unwind_Resume(a1);
}

uint64_t sub_2212377B4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_recalcHoldingWriteLock(*(a1 + 32), a2, a3, a4);
  v8 = *(a1 + 40);

  return objc_msgSend_clearInProgressCalcCellRefs(v8, v5, v6, v7);
}

void sub_221237D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_221237D50(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_evaluateWithContext_(*(a1 + 32), a2, *(a1 + 40), a4);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  atomic_fetch_add(&dword_27CFB52E4, 0xFFFFFFFF);
}

void sub_2212386CC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_221238770(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_221238DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_221239048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221122744(va);
  _Unwind_Resume(a1);
}

void sub_22123919C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, void *__p, uint64_t a15)
{
  sub_22107C860(v16 + 16, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_22107C800(v15, *(v15 + 8));
  _Unwind_Resume(a1);
}

void sub_2212393A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  _Block_object_dispose(&a17, 8);
  sub_22107C800(v24 + 48, a24);
  sub_22107C800(v25 - 56, *(v25 - 48));
  _Unwind_Resume(a1);
}

void sub_2212393EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_msgSend_precedentsOfCell_(v5, a2, a2, a4);
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2212394B8;
  v6[3] = &unk_278461C18;
  v7 = *(a1 + 40);
  TSCEReferenceSet::foreachCellRef(&v8, v6);
  TSCEReferenceSet::~TSCEReferenceSet(&v8);
}

TSCECellCoordSet *sub_2212394B8(TSCECellCoordSet *result, const TSCECellRef *a2)
{
  if (*&a2->_tableUID == **&result[1]._rectRepresentation.origin)
  {
    return TSCECellRefSet::addCellRef((*(result->_rowsPerColumn.__tree_.__size_ + 8) + 48), a2);
  }

  return result;
}

unint64_t sub_2212396EC(void *a1, TSUCellCoord *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[7];
  v12 = *a2;
  v13 = *v6;
  result = objc_msgSend_spillSizeForCell_(*(a1[4] + 80), a2, &v12, a4);
  v11.origin = *a2;
  v11.size = result;
  if (result >> 33)
  {
    v8 = a1[5];
    v9 = TSUCellRect::rows(&v11);
    result = objc_msgSend_intersectsIndexesInRange_(v8, v10, v9, v10);
    if (result)
    {
      return TSCECellCoordSet::addCellCoord((*(a1[6] + 8) + 48), a2);
    }
  }

  return result;
}

void *sub_2212398F0(void *a1, TSUCellCoord *a2, _BYTE *a3, uint64_t a4)
{
  v7 = a1[7];
  v14 = *a2;
  v15 = *v7;
  v8 = objc_msgSend_spillSizeForCell_(*(a1[4] + 80), a2, &v14, a4);
  v13.origin = *a2;
  v13.size = v8;
  v9 = a1[5];
  v10 = TSUCellRect::rows(&v13);
  result = objc_msgSend_intersectsIndexesInRange_(v9, v11, v10, v11);
  if (result)
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_22123A354(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_documentRoot(*(a1 + 32), a2, a3, a4);
  v9 = objc_msgSend_documentLocale(v5, v6, v7, v8);
  v10 = *(*(a1 + 32) + 72);
  v11 = v10 != v9;
  v15 = objc_msgSend_localeIdentifier(v10, v12, v13, v14);
  v19 = objc_msgSend_localeIdentifier(v9, v16, v17, v18);
  isEqualToString = objc_msgSend_isEqualToString_(v15, v20, v19, v21);

  if (isEqualToString)
  {
    v26 = objc_msgSend_formattingSymbols(*(*(a1 + 32) + 72), v23, v24, v25);
    v30 = objc_msgSend_formattingSymbols(v9, v27, v28, v29);
    v11 = objc_msgSend_isEqual_(v26, v31, v30, v32) ^ 1;
  }

  objc_msgSend_pauseRecalculation(*(a1 + 32), v23, v24, v25);
  objc_storeStrong((*(a1 + 32) + 72), v9);
  objc_msgSend_resumeRecalculation(*(a1 + 32), v33, v34, v35);
  if (v11)
  {
    objc_msgSend_markLocaleVolatileFunctionsAsDirty(*(a1 + 32), v36, v37, v38);
  }

  objc_msgSend_allRefResolverOwnerUIDs(*(a1 + 32), v36, v37, v38);
  v41 = *(*(a1 + 32) + 792);
  if (v41)
  {
    for (i = __p; i != v51; i += 16)
    {
      v43 = objc_msgSend_tableResolverForTableUID_(*(a1 + 32), v39, i, v40);
      v47 = v43;
      if (v43)
      {
        objc_msgSend_documentLocaleDidChange(v43, v44, v45, v46);
        if (v11)
        {
          objc_msgSend_updateTrackedHeadersForDocumentLocaleChange_(v41, v48, i, v49);
        }
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void sub_22123ABDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22123AC64(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  v3 = *(a1 + 48);
  *(v3 + 16) |= 8u;
  v4 = *(v3 + 96);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = google::protobuf::Arena::CreateMaybeMessage<TSCE::DependencyTrackerArchive>(v5);
    *(v3 + 96) = v4;
  }

  v6 = *(a1 + 56);

  return MEMORY[0x2821F9670](v2, sel_encodeToArchive_save31FormatAlso_embiggenedFormatOnly_archiver_, v4, v6);
}

uint64_t sub_22123ACF4(TSKUIDStruct **a1, int **this)
{
  result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this);
  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    v7 = this[2];
    if (!v7)
    {
      goto LABEL_8;
    }

    v8 = *(this + 2);
    v9 = *v7;
    if (v8 < *v7)
    {
      *(this + 2) = v8 + 1;
      v10 = *&v7[2 * v8 + 2];
      goto LABEL_10;
    }

    if (v9 == *(this + 3))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this);
      v7 = this[2];
      v9 = *v7;
    }

    *v7 = v9 + 1;
    v10 = MEMORY[0x223DA0360](*this);
    v11 = *(this + 2);
    v12 = &this[2][2 * v11];
    *(this + 2) = v11 + 1;
    *(v12 + 1) = v10;
LABEL_10:
    result = TSKUIDStruct::saveToMessage(v5++, v10);
  }

  return result;
}

void *sub_22123B8D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 792);
  v18[0] = objc_msgSend_formulaOwnerUID(*(v5 + 800), a2, a3, a4);
  v18[1] = v7;
  objc_msgSend_setNRM_formulaOwnerUID_(v6, v7, v18, v8);
  objc_msgSend_setCalculationEngine_(*(*(a1 + 32) + 800), v9, *(a1 + 32), v10);
  v14 = *(a1 + 32);
  result = v14[100];
  if (result)
  {
    v16 = objc_msgSend_formulaOwnerUID(result, v11, v12, v13);
    return objc_msgSend_markOwnerAsDirty_(v14, v17, v16, v17);
  }

  return result;
}

uint64_t sub_22123B98C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_setCalcEngine_(*(*(a1 + 32) + 792), a2, *(a1 + 32), a4);
  v8 = objc_msgSend_idMap(*(*(a1 + 32) + 80), v5, v6, v7);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22123BA40;
  v13[3] = &unk_278461D30;
  v13[4] = *(a1 + 32);
  v13[5] = v8;
  sub_2212601E0(v8, v13);
  return objc_msgSend_markIndirectCallsAsDirty(*(a1 + 32), v9, v10, v11);
}

void *sub_22123BA40(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  result = objc_msgSend_ownerKindForOwnerID_(*(*(a1 + 32) + 80), a2, a2, a4);
  if (result == 1)
  {
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 32) + 792);
    v11[0] = sub_22125FFE0(v7, v4);
    v11[1] = v9;
    return objc_msgSend_beginTrackingNamesInTable_(v8, v9, v11, v10);
  }

  return result;
}

void *sub_22123BAF0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 656);
  if (v6)
  {
    objc_msgSend_originalTableUIDs(v6, a2, a3, a4);
    v8 = v18;
    if (v18 != v19)
    {
      do
      {
        if (objc_msgSend_ownerIsRegistered_(*(a1 + 32), v7, *v8, v8[1]))
        {
          objc_msgSend_tableWasAdded_(*(*(a1 + 32) + 656), v7, v8, v9);
        }

        v8 += 2;
      }

      while (v8 != v19);
      v8 = v18;
    }

    if (v8)
    {
      operator delete(v8);
    }

    v5 = *(a1 + 32);
  }

  sub_221576500((v5 + 320));
  objc_msgSend_setCalculationEngine_(*(*(a1 + 32) + 784), v10, *(a1 + 32), v11);
  objc_msgSend_setShouldPerformDetectAndRepairConsistencyViolations_(*(*(a1 + 32) + 784), v12, 1, v13);
  result = objc_msgSend_hasEmbiggenedCoords(*(*(a1 + 32) + 80), v14, v15, v16);
  *(*(a1 + 32) + 759) = result;
  return result;
}

void sub_22123BBE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22123C0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_22107C2C0(va);
  _Unwind_Resume(a1);
}

void sub_22123C410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_22107C2C0(&a9);

  _Unwind_Resume(a1);
}

void *sub_22123CAD4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_recalcPhaseHoldingReadLock_(*(a1 + 32), a2, *(a1 + 40), a4);
  v6 = *(a1 + 40);
  if (*v6 == -1 || *(v6 + 1) == *(v6 + 2))
  {
    *(v6 + 82) = 0;
  }

  atomic_fetch_add(&dword_27CFB52E4, 0xFFFFFFFF);
  return result;
}

void sub_22123CB48(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2 == 3)
  {
    v13 = *__cxa_get_exception_ptr(a1);
    a10 = v13;
    __cxa_begin_catch(a1);
    v14 = v13;
    v15 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSCECalculationEngine dispatchOnePhase:]_block_invoke", v17);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v18, v21, 4298, 0, "Unexpected calc-engine exception passed up to enqueueTaskForCell: %{public}@");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
    sub_221595E98(&a10);
  }

  else
  {
    v27 = __cxa_begin_catch(a1);
    v28 = *(v10 + 32);
    if (a2 == 2)
    {
      objc_msgSend_assertNonCalcEngineException_exception_evaluatingFormula_(v28, v26, @"dispatchOnePhase", v27, 0);
    }

    else
    {
      objc_msgSend_assertNonCalcEngineException_exception_evaluatingFormula_(v28, v26, @"dispatchOnePhase", 0, 0);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x22123CB00);
}

uint64_t sub_22123D884(uint64_t a1)
{
  sub_221576500((*(a1 + 32) + 320));
  v4 = *(*(a1 + 32) + 792);

  return MEMORY[0x2821F9670](v4, sel_integrateReservedPrecedents, v2, v3);
}

void sub_22123DBBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void __C(void *a1)
{
  v27 = a1;
  v1 = TSCE::CalculationEngineArchive::default_instance(v27);
  google::protobuf::internal::AssignDescriptors();
  v3 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v27, v2, 4000, v1, off_2812E2AC8[178], "TSCECalculationEngine");
  v4 = TSCE::NamedReferenceManagerArchive::default_instance(v3);
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v27, v5, 4003, v4, off_2812E2AC8[162], "TSCENamedReferenceManager");
  v7 = TSCE::TrackedReferenceStoreArchive::default_instance(v6);
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v27, v8, 4004, v7, off_2812E2AC8[286], "TSCETrackedReferenceStore");
  v10 = TSCE::TrackedReferenceArchive::default_instance(v9);
  google::protobuf::internal::AssignDescriptors();
  v12 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v27, v11, 4005, v10, off_2812E2AC8[282], "TSCETrackedReferenceTSPObjectDeprecated");
  v13 = TSCE::RemoteDataStoreArchive::default_instance(v12);
  google::protobuf::internal::AssignDescriptors();
  v15 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v27, v14, 4007, v13, off_2812E2AC8[156], "TSCERemoteDataStore");
  v16 = TSCE::FormulaOwnerDependenciesArchive::default_instance(v15);
  google::protobuf::internal::AssignDescriptors();
  v18 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v27, v17, 4008, v16, off_2812E2AC8[132], "TSCEFormulaOwnerDependencies");
  v19 = TSCE::CellRecordTileArchive::default_instance(v18);
  google::protobuf::internal::AssignDescriptors();
  v21 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v27, v20, 4009, v19, off_2812E2AC8[62], "TSCECellRecordTile");
  v22 = TSCE::RangePrecedentsTileArchive::default_instance(v21);
  google::protobuf::internal::AssignDescriptors();
  v24 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v27, v23, 4010, v22, off_2812E2AC8[84], "TSCERangePrecedentsTile");
  v25 = TSCE::ReferencesToDirtyArchive::default_instance(v24);
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v27, v26, 4011, v25, off_2812E2AC8[38], "TSCEReferencesToDirty");
}

void **sub_22123E714(void **a1)
{
  sub_22123E750(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_22123E750(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t **sub_22123E79C(void *a1, unsigned __int16 *a2, _WORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % a1[1];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 8) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void sub_22123E9D0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_22107C238();
}

const void **sub_22123EA84(const void **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_221083368(a1, *(a2 + 8));
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = 8 * v6;
    do
    {
      TSP::UUIDData::UUIDData(&v19, *v5);
      v9 = a1[1];
      v8 = a1[2];
      if (v9 >= v8)
      {
        v11 = *a1;
        v12 = v9 - *a1;
        v13 = v12 >> 4;
        v14 = (v12 >> 4) + 1;
        if (v14 >> 60)
        {
          sub_22107C148();
        }

        v15 = v8 - v11;
        if (v15 >> 3 > v14)
        {
          v14 = v15 >> 3;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF0)
        {
          v16 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          sub_221086F74(a1, v16);
        }

        *(16 * v13) = v19;
        v10 = (16 * v13 + 16);
        memcpy(0, v11, v12);
        v17 = *a1;
        *a1 = 0;
        a1[1] = v10;
        a1[2] = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v9 = v19;
        v10 = v9 + 16;
      }

      a1[1] = v10;
      ++v5;
      v7 -= 8;
    }

    while (v7);
  }

  return a1;
}

void sub_22123EBCC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22123F514(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v11._lower = a2;
  v11._upper = a3;
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v3 + 32);
  v6 = *v4;
  if (v5 >= *v4)
  {
    if (v6 != *(v3 + 36))
    {
LABEL_7:
      *v4 = v6 + 1;
      v7 = MEMORY[0x223DA0360](*(v3 + 24));
      v8 = *(v3 + 32);
      v9 = *(v3 + 40) + 8 * v8;
      *(v3 + 32) = v8 + 1;
      *(v9 + 8) = v7;
      return TSKUIDStruct::saveToMessage(&v11, v7);
    }

LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 24));
    v4 = *(v3 + 40);
    v6 = *v4;
    goto LABEL_7;
  }

  *(v3 + 32) = v5 + 1;
  v7 = *&v4[2 * v5 + 2];
  return TSKUIDStruct::saveToMessage(&v11, v7);
}

uint64_t *sub_22123F6E0(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
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

      sub_22116D40C(v6, v10);
    }

    sub_22107C148();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
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

void sub_221241484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22124149C(uint64_t a1, void *a2)
{
  v12 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();
  v4 = *(a1 + 32);
  v5 = *(*(*(a1 + 40) + 8) + 24);
  v9 = objc_msgSend_integerValue(v3, v6, v7, v8);
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_maskForStrokePreset_(v4, v10, v9, v11) | v5;
}

void sub_221243310(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2;
  if (objc_msgSend_isRows(*(*(a1 + 32) + 96), a2, a3, a4))
  {
    v9 = v5 | (*(a1 + 84) << 32);
    v10 = (v4 + v5 - 1) | (*(a1 + 92) << 32);
  }

  else
  {
    v9 = *(a1 + 80) | (v5 << 32);
    v10 = *(a1 + 88) | (((v5 + v4) << 32) + 0xFFFF00000000) & 0xFFFF00000000;
  }

  v34[0] = v9;
  v34[1] = v10;
  v11 = *(a1 + 40);
  if (v11)
  {
    objc_msgSend_mergeRangesIntersectingCellRange_(v11, v7, v34, v8);
    v15 = v28;
    if (*(&v28 + 1) != v28)
    {
      v16 = *(a1 + 48);
      *&v28 = objc_msgSend_resolverUID(*(a1 + 56), v12, v13, v14);
      *(&v28 + 1) = v17;
      if (v16)
      {
        objc_msgSend_formulaCoordsInRange_inOwner_(v16, v17, v34, &v28);
        v18 = __p;
        v19 = v32;
        v28 = 0u;
        v29 = 0u;
        v30 = 1065353216;
        if (__p != v32)
        {
          do
          {
            sub_2210CE644(&v28, v18, v18);
            v18 += 2;
          }

          while (v18 != v19);
          if (*(&v29 + 1))
          {
            v20 = v15;
            do
            {
              v21 = *v20;
              v22 = v20[1];
              v27 = *v20;
              if (sub_221087F14(&v28, &v27))
              {
                v23 = *(a1 + 32);
                v25 = v27;
                v26 = *(a1 + 64);
                v35 = &v25;
                v24 = sub_221244C3C((v23 + 224), &v25, &unk_2217E0E1C, &v35);
                v24[5] = v21;
                v24[6] = v22;
              }

              v20 += 2;
            }

            while (v20 != *(&v15 + 1));
          }
        }
      }

      else
      {
        __p = 0;
        v32 = 0;
        v33 = 0;
        v28 = 0u;
        v29 = 0u;
        v30 = 1065353216;
      }

      sub_2210BDEC0(&v28);
      if (__p)
      {
        v32 = __p;
        operator delete(__p);
      }
    }

    if (v15)
    {
      operator delete(v15);
    }
  }
}

void sub_2212434D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (v19)
  {
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void *sub_221244808(void *a1, void *a2, uint64_t a3, _OWORD **a4)
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

void sub_221244A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087224(va);
  _Unwind_Resume(a1);
}

void *sub_221244A70(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2 + 16 * *(a2 + 2);
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2 + 16 * *(a2 + 2);
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    v8 = *a2;
    do
    {
      v9 = result[1];
      if (v3 == v9)
      {
        v10 = result[2];
        v12 = v10 == v8;
        v11 = (v8 ^ v10) & 0x101FFFF00000000;
        v12 = v12 && v11 == 0;
        if (v12)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
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

        if (v9 != v5)
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

void *sub_221244B44(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = a2[2];
  v5 = v3 ^ v4 ^ (*(a2 + 2) + (*a2 << 15));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 ^ v4 ^ (*(a2 + 2) + (*a2 << 15));
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    v10 = *a2;
    do
    {
      v11 = result[1];
      if (v11 == v5)
      {
        v12 = result[2];
        v14 = v12 == v10;
        v13 = (v10 ^ v12) & 0x101FFFF00000000;
        v14 = v14 && v13 == 0;
        if (v14 && result[3] == v3 && result[4] == v4)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v11 >= *&v2)
          {
            v11 %= *&v2;
          }
        }

        else
        {
          v11 &= *&v2 - 1;
        }

        if (v11 != v7)
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

void *sub_221244C3C(void *a1, uint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = v4 ^ v5 ^ (*(a2 + 2) + (*a2 << 15));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_25;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v4 ^ v5 ^ (*(a2 + 2) + (*a2 << 15));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_25:
    operator new();
  }

  v12 = *a2;
  while (1)
  {
    v13 = v11[1];
    if (v13 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v9)
    {
      goto LABEL_25;
    }

LABEL_24:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_25;
    }
  }

  v14 = v11[2];
  v16 = v14 == v12;
  v15 = (v12 ^ v14) & 0x101FFFF00000000;
  v16 = v16 && v15 == 0;
  if (!v16 || v11[3] != v4 || v11[4] != v5)
  {
    goto LABEL_24;
  }

  return v11;
}

BOOL sub_2212454A8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_tsce_stringByFoldingForNamedReferenceMatchingWithLocale_(a1, v8, v7, v9);
  v13 = objc_msgSend_tsce_stringByFoldingForNamedReferenceMatchingWithLocale_(v6, v11, v7, v12);
  v17 = objc_msgSend_length(v10, v14, v15, v16);
  v21 = objc_msgSend_length(v13, v18, v19, v20);
  if (v17 >= v21)
  {
    v23 = objc_msgSend_rangeOfString_options_range_locale_(v10, v22, v13, 8, 0, v21, v7);
  }

  else
  {
    v23 = objc_msgSend_rangeOfString_options_range_locale_(v10, v22, v13, 8, 0, v17, v7);
  }

  if (v23)
  {
    v27 = objc_msgSend_uppercaseString(v10, v24, v25, v26);
    v31 = objc_msgSend_lowercaseString(v27, v28, v29, v30);

    v35 = objc_msgSend_uppercaseString(v13, v32, v33, v34);
    v39 = objc_msgSend_lowercaseString(v35, v36, v37, v38);

    v43 = objc_msgSend_length(v31, v40, v41, v42);
    if (v43 >= objc_msgSend_length(v39, v44, v45, v46))
    {
      v51 = objc_msgSend_length(v39, v47, v48, v49);
      v50 = objc_msgSend_rangeOfString_options_range_locale_(v31, v52, v39, 8, 0, v51, v7) == 0;
    }

    else
    {
      v50 = 0;
    }
  }

  else
  {
    v50 = 1;
  }

  return v50;
}

void sub_221246AA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  Message = google::protobuf::internal::ExtensionSet::GetMessage();
  if (*(Message + 24) >= 1)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_221246BFC;
    v13[3] = &unk_27845D8D8;
    v13[4] = a1;
    v9 = v5;
    v10 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v9, v11, Message + 16, v10, 0, v13);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_221246C14;
  v12[3] = &unk_27845E3F8;
  v12[4] = a1;
  objc_msgSend_addFinalizeHandler_(v5, v6, v12, v7);
}

void sub_221246C14(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *MEMORY[0x277D80BA8];
  v6 = objc_msgSend_presetsOfKind_(*(a1 + 32), a2, *MEMORY[0x277D80BA8], a4);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_221246D20;
  v10[3] = &unk_278461E70;
  v10[4] = *(a1 + 32);
  v10[5] = &v11;
  objc_msgSend_enumerateObjectsUsingBlock_(v6, v7, v10, v8);
  if (*(v12 + 24) == 1)
  {
    objc_msgSend_setPresets_ofKind_(*(a1 + 32), v9, v6, v5);
  }

  _Block_object_dispose(&v11, 8);
}

void sub_221246D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_221246D20(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = objc_msgSend_styleNetwork(v5, v6, v7, v8);

  v13 = &unk_2217E0000;
  if (!v9)
  {
    v14 = *(a1 + 32);
    v253[0] = MEMORY[0x277D85DD0];
    v253[1] = 3221225472;
    v253[2] = sub_221247798;
    v253[3] = &unk_278461E20;
    v256 = a3;
    v253[4] = v14;
    v15 = v5;
    v16 = *(a1 + 40);
    v254 = v15;
    v255 = v16;
    objc_msgSend_upgradeStylesWithBlock_(v14, v17, v253, v18);
  }

  v19 = objc_msgSend_styleNetwork(v5, v10, v11, v12);
  v26 = objc_msgSend_categoryLevel1CellStyle(v19, v20, v21, v22);
  if (!v26)
  {
    goto LABEL_27;
  }

  v27 = objc_msgSend_styleNetwork(v5, v23, v24, v25);
  v34 = objc_msgSend_categoryLevel2CellStyle(v27, v28, v29, v30);
  if (!v34)
  {
LABEL_26:

LABEL_27:
LABEL_28:
    v144 = *(a1 + 32);
    v249[0] = MEMORY[0x277D85DD0];
    v249[1] = v13[40];
    v249[2] = sub_221247AB8;
    v249[3] = &unk_278461E48;
    v145 = v5;
    v146 = *(a1 + 40);
    v250 = v145;
    v251 = v146;
    v252 = a3;
    objc_msgSend_upgradeStylesWithBlock_(v144, v147, v249, v148);

    goto LABEL_29;
  }

  v35 = objc_msgSend_styleNetwork(v5, v31, v32, v33);
  v42 = objc_msgSend_categoryLevel3CellStyle(v35, v36, v37, v38);
  if (!v42)
  {
LABEL_25:

    goto LABEL_26;
  }

  v244 = objc_msgSend_styleNetwork(v5, v39, v40, v41);
  v243 = objc_msgSend_categoryLevel4CellStyle(v244, v43, v44, v45);
  if (!v243)
  {
LABEL_24:

    goto LABEL_25;
  }

  v242 = objc_msgSend_styleNetwork(v5, v46, v47, v48);
  v241 = objc_msgSend_categoryLevel5CellStyle(v242, v49, v50, v51);
  if (!v241)
  {

    goto LABEL_24;
  }

  v240 = objc_msgSend_styleNetwork(v5, v52, v53, v54);
  v239 = objc_msgSend_labelLevel1CellStyle(v240, v55, v56, v57);
  if (v239)
  {
    v238 = objc_msgSend_styleNetwork(v5, v58, v59, v60);
    v237 = objc_msgSend_labelLevel2CellStyle(v238, v61, v62, v63);
    if (v237)
    {
      v235 = objc_msgSend_styleNetwork(v5, v64, v65, v66);
      v234 = objc_msgSend_labelLevel3CellStyle(v235, v67, v68, v69);
      if (v234)
      {
        v233 = objc_msgSend_styleNetwork(v5, v70, v71, v72);
        v232 = objc_msgSend_labelLevel4CellStyle(v233, v73, v74, v75);
        if (v232)
        {
          v231 = objc_msgSend_styleNetwork(v5, v76, v77, v78);
          v230 = objc_msgSend_labelLevel5CellStyle(v231, v79, v80, v81);
          if (v230)
          {
            v229 = objc_msgSend_styleNetwork(v5, v82, v83, v84);
            v228 = objc_msgSend_categoryLevel1TextStyle(v229, v85, v86, v87);
            if (v228)
            {
              v227 = objc_msgSend_styleNetwork(v5, v88, v89, v90);
              v226 = objc_msgSend_categoryLevel2TextStyle(v227, v91, v92, v93);
              if (v226)
              {
                v225 = objc_msgSend_styleNetwork(v5, v94, v95, v96);
                v224 = objc_msgSend_categoryLevel3TextStyle(v225, v97, v98, v99);
                if (v224)
                {
                  v223 = objc_msgSend_styleNetwork(v5, v100, v101, v102);
                  v222 = objc_msgSend_categoryLevel4TextStyle(v223, v103, v104, v105);
                  if (v222)
                  {
                    v221 = objc_msgSend_styleNetwork(v5, v106, v107, v108);
                    v220 = objc_msgSend_categoryLevel5TextStyle(v221, v109, v110, v111);
                    if (v220)
                    {
                      v219 = objc_msgSend_styleNetwork(v5, v112, v113, v114);
                      v218 = objc_msgSend_labelLevel1TextStyle(v219, v115, v116, v117);
                      if (v218)
                      {
                        v121 = objc_msgSend_styleNetwork(v5, v118, v119, v120);
                        v217 = objc_msgSend_labelLevel2TextStyle(v121, v122, v123, v124);
                        if (v217)
                        {
                          v216 = objc_msgSend_styleNetwork(v5, v125, v126, v127);
                          v215 = objc_msgSend_labelLevel3TextStyle(v216, v128, v129, v130);
                          if (v215)
                          {
                            v214 = objc_msgSend_styleNetwork(v5, v131, v132, v133);
                            v213 = objc_msgSend_labelLevel4TextStyle(v214, v134, v135, v136);
                            if (v213)
                            {
                              v212 = objc_msgSend_styleNetwork(v5, v137, v138, v139);
                              v143 = objc_msgSend_labelLevel5TextStyle(v212, v140, v141, v142);
                              v236 = v143 == 0;
                            }

                            else
                            {
                              v236 = 1;
                            }
                          }

                          else
                          {
                            v236 = 1;
                          }
                        }

                        else
                        {
                          v236 = 1;
                        }
                      }

                      else
                      {
                        v236 = 1;
                      }
                    }

                    else
                    {
                      v236 = 1;
                    }
                  }

                  else
                  {
                    v236 = 1;
                  }
                }

                else
                {
                  v236 = 1;
                }
              }

              else
              {
                v236 = 1;
              }
            }

            else
            {
              v236 = 1;
            }
          }

          else
          {
            v236 = 1;
          }

          v208 = v34;
        }

        else
        {
          v208 = v34;
          v236 = 1;
        }

        v209 = v35;
      }

      else
      {
        v208 = v34;
        v209 = v35;
        v236 = 1;
      }

      v210 = v42;
    }

    else
    {
      v208 = v34;
      v209 = v35;
      v210 = v42;
      v236 = 1;
    }

    v211 = v236;
  }

  else
  {
    v208 = v34;
    v209 = v35;
    v210 = v42;
    v211 = 1;
  }

  v13 = &unk_2217E0000;
  if (v211)
  {
    goto LABEL_28;
  }

LABEL_29:
  v152 = objc_msgSend_styleNetwork(v5, v149, v150, v151);
  v159 = objc_msgSend_pivotBodySummaryRowCellStyle(v152, v153, v154, v155);
  if (v159)
  {
    v160 = objc_msgSend_styleNetwork(v5, v156, v157, v158);
    v167 = objc_msgSend_pivotBodySummaryColumnCellStyle(v160, v161, v162, v163);
    if (v167)
    {
      v168 = objc_msgSend_styleNetwork(v5, v164, v165, v166);
      v172 = objc_msgSend_pivotHeaderColumnSummaryCellStyle(v168, v169, v170, v171);

      if (v172)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

LABEL_35:
  v176 = *(a1 + 32);
  v245[0] = MEMORY[0x277D85DD0];
  v245[1] = v13[40];
  v245[2] = sub_221247DE4;
  v245[3] = &unk_278461E48;
  v177 = v5;
  v178 = *(a1 + 40);
  v246 = v177;
  v247 = v178;
  v248 = a3;
  objc_msgSend_upgradeStylesWithBlock_(v176, v179, v245, v180);

LABEL_36:
  v181 = objc_msgSend_styleNetwork(v5, v173, v174, v175);
  objc_msgSend_upgradeIfNecessary(v181, v182, v183, v184);

  v188 = objc_msgSend_styleNetwork(v5, v185, v186, v187);
  v192 = objc_msgSend_valid(v188, v189, v190, v191);

  if ((v192 & 1) == 0)
  {
    v195 = MEMORY[0x277D81150];
    v196 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v193, "[TSSTheme(TSTArchiving) tstLoadFromArchive:unarchiver:]_block_invoke_3", v194);
    v199 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v197, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSSTheme_TSTArchiving.mm", v198);
    v203 = objc_msgSend_styleNetwork(v5, v200, v201, v202);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v195, v204, v196, v199, 180, 0, "Preset style network is missing styles when unarchiving. %{public}@", v203);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v205, v206, v207);
  }
}

void sub_221247798(uint64_t a1, void *a2)
{
  v53 = a2;
  objc_opt_class();
  v5 = objc_msgSend_tableNameShapeStyleIDForPreset_(TSTTableStyleNetwork, v3, *(a1 + 56), v4);
  v8 = objc_msgSend_cascadedStyleWithIdentifier_(v53, v6, v5, v7);
  v9 = TSUDynamicCast();

  if (!v9)
  {
    objc_msgSend_willModifyForUpgrade(v53, v10, v11, v12);
    v16 = objc_msgSend_context(*(a1 + 32), v13, v14, v15);
    v19 = objc_msgSend_defaultTableNameShapeStyleWithContext_(TSTTableStyleNetwork, v17, v16, v18);

    v22 = objc_msgSend_tableNameShapeStyleIDForPreset_(TSTTableStyleNetwork, v20, *(a1 + 56), v21);
    objc_msgSend_addStyle_withIdentifier_(v53, v23, v19, v22);
  }

  objc_opt_class();
  v26 = objc_msgSend_tableNameStyleIDForPreset_(TSTTableStyleNetwork, v24, *(a1 + 56), v25);
  v29 = objc_msgSend_cascadedStyleWithIdentifier_(v53, v27, v26, v28);
  v30 = TSUDynamicCast();

  if (!v30)
  {
    objc_msgSend_willModifyForUpgrade(v53, v31, v32, v33);
    objc_opt_class();
    v35 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v34, *(a1 + 56), 1);
    v38 = objc_msgSend_cascadedStyleWithIdentifier_(v53, v36, v35, v37);
    v39 = TSUDynamicCast();

    if (!v39)
    {
      v39 = objc_msgSend_defaultParagraphStyle(*(a1 + 32), v40, v41, v42);
    }

    v43 = objc_msgSend_copy(v39, v40, v41, v42);
    v46 = objc_msgSend_tableNameStyleIDForPreset_(TSTTableStyleNetwork, v44, *(a1 + 56), v45);
    objc_msgSend_addStyle_withIdentifier_(v53, v47, v43, v46);
  }

  v48 = objc_msgSend_presetID(*(a1 + 40), v31, v32, v33);
  v50 = objc_msgSend_networkFromStylesheet_presetID_(TSTTableStyleNetwork, v49, v53, v48);
  objc_msgSend_setStyleNetwork_(*(a1 + 40), v51, v50, v52);

  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void sub_221247AB8(uint64_t a1, void *a2)
{
  v55 = a2;
  objc_msgSend_willModifyForUpgrade(*(a1 + 32), v3, v4, v5);
  v11 = objc_msgSend_styleNetwork(*(a1 + 32), v6, v7, v8);
  for (i = 5; i != 15; ++i)
  {
    v13 = objc_msgSend_cellStyleForTableStyleArea_(v11, v9, i, v10);

    if (!v13)
    {
      v16 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v14, *(a1 + 48), i);
      objc_opt_class();
      v19 = objc_msgSend_cascadedStyleWithIdentifier_(v55, v17, v16, v18);
      v20 = TSUDynamicCast();

      if (!v20)
      {
        v22 = objc_msgSend_deriveCategoryCellStyleForTableStyleArea_connectedToStylesheet_(v11, v21, i, 1);
        v26 = objc_msgSend_stylesheet(v22, v23, v24, v25);
        v30 = objc_msgSend_rootAncestor(v26, v27, v28, v29);
        v34 = objc_msgSend_rootAncestor(v55, v31, v32, v33);

        if (v30 == v34)
        {
          v20 = v22;
        }

        else
        {
          v20 = v22;
          objc_msgSend_addStyle_withIdentifier_(v55, v21, v22, v16);
        }
      }

      objc_msgSend_setCellStyle_forTableStyleArea_(v11, v21, v20, i);
    }

    v35 = objc_msgSend_textStyleForTableStyleArea_(v11, v14, i, v15);

    if (!v35)
    {
      v36 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v9, *(a1 + 48), i);
      objc_opt_class();
      v39 = objc_msgSend_cascadedStyleWithIdentifier_(v55, v37, v36, v38);
      v40 = TSUDynamicCast();

      if (!v40)
      {
        v42 = objc_msgSend_deriveCategoryTextStyleForTableStyleArea_connectedToStylesheet_(v11, v41, i, 1);
        v46 = objc_msgSend_stylesheet(v42, v43, v44, v45);
        v50 = objc_msgSend_rootAncestor(v46, v47, v48, v49);
        v54 = objc_msgSend_rootAncestor(v55, v51, v52, v53);

        if (v50 == v54)
        {
          v40 = v42;
        }

        else
        {
          v40 = v42;
          objc_msgSend_addStyle_withIdentifier_(v55, v41, v42, v36);
        }
      }

      objc_msgSend_setTextStyle_forTableStyleArea_(v11, v41, v40, i);
    }
  }

  objc_msgSend_setStyleNetwork_(*(a1 + 32), v9, v11, v10);
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void sub_221247DE4(uint64_t a1, void *a2)
{
  v35 = a2;
  objc_msgSend_willModifyForUpgrade(*(a1 + 32), v3, v4, v5);
  v9 = objc_msgSend_styleNetwork(*(a1 + 32), v6, v7, v8);
  objc_msgSend_generatePivotStylesConnectedToStylesheet_(v9, v10, 1, v11);
  for (i = 15; i != 18; ++i)
  {
    v15 = objc_msgSend_cellStyleForTableStyleArea_(v9, v12, i, v13);
    v19 = objc_msgSend_stylesheet(v15, v16, v17, v18);
    v23 = objc_msgSend_rootAncestor(v19, v20, v21, v22);
    v27 = objc_msgSend_rootAncestor(v35, v24, v25, v26);

    if (v23 != v27)
    {
      v29 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v28, *(a1 + 48), i);
      objc_opt_class();
      v32 = objc_msgSend_cascadedStyleWithIdentifier_(v35, v30, v29, v31);
      v33 = TSUDynamicCast();

      if (v33)
      {
        objc_msgSend_setCellStyle_forTableStyleArea_(v9, v34, v33, i);
      }

      else
      {
        objc_msgSend_addStyle_withIdentifier_(v35, v34, v15, v29);
      }
    }
  }

  objc_msgSend_setStyleNetwork_(*(a1 + 32), v12, v9, v13);
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void sub_221247FCC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = a4;
  sub_2216E24E8();
  v5 = google::protobuf::internal::ExtensionSet::MutableMessage();
  v9 = objc_msgSend_presetsOfKind_(a1, v6, *MEMORY[0x277D80BA8], v7);
  if (v9)
  {
    objc_msgSend_setStrongReferenceArray_message_(v10, v8, v9, v5 + 16);
  }
}

uint64_t sub_2212480A4(uint64_t a1)
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](a1, sel_registerPresetSourceClass_, v2, v3);
}

void sub_22124B51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_22124B558(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22124B570(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v7 = objc_msgSend_mostSpecificNodeContainingIndex_correspondingIndex_(v8, v6, a1[5], a1[6]);
  if (v7)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), v7);
    *a4 = 1;
  }
}

uint64_t sub_22124BEDC(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_22107C148();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    sub_22124BFEC(a1, v7);
  }

  v8 = (16 * v2);
  v17 = 0;
  v18 = v8;
  *(&v19 + 1) = 0;
  v9 = *a2;
  v10 = *(a2 + 8);
  *v8 = v9;
  v8[1] = v10;
  *&v19 = v8 + 2;
  v11 = a1[1];
  v12 = (v8 + *a1 - v11);
  sub_22124C034(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_22124C090(&v17);
  return v16;
}

void sub_22124BFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_22124C090(va);
  _Unwind_Resume(a1);
}

void sub_22124BFEC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_22107C238();
}

void sub_22124C034(uint64_t a1, void **a2, void **a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      *v6 = 0;
      v6 += 2;
      *a4 = v7;
      a4[1] = v8;
      a4 += 2;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v9 = *v5;
      v5 += 2;
    }
  }
}

uint64_t sub_22124C090(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_22124C0E4(void ***a1)
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
        v6 = *(v4 - 2);
        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_22124C6E0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSTFormula;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_22124D130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TSTParser::~TSTParser(&a9);

  _Unwind_Resume(a1);
}

void sub_22124D1D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x277CCA900];
  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"'%C%C", a4, 65287, 8217);
  v7 = objc_msgSend_characterSetWithCharactersInString_(v4, v5, v9, v6);
  v8 = qword_27CFB52E8;
  qword_27CFB52E8 = v7;
}

void sub_22124D2B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x277CCA900];
  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"'%C%C%C%C", a4, 65287, 8216, 8217, 8218);
  v7 = objc_msgSend_characterSetWithCharactersInString_(v4, v5, v9, v6);
  v8 = qword_27CFB52F8;
  qword_27CFB52F8 = v7;
}

void sub_22124D3A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x277CCA900];
  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%C%C%C%C%C%C%C%C%C%C%C", a4, 34, 8216, 8218, 8220, 8221, 8222, 171, 187, 12300, 12301, 1524);
  v7 = objc_msgSend_characterSetWithCharactersInString_(v4, v5, v9, v6);
  v8 = qword_27CFB5308;
  qword_27CFB5308 = v7;
}

void sub_22124D4BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x277CCA900];
  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(%C"), a4, 65288;
  v7 = objc_msgSend_characterSetWithCharactersInString_(v4, v5, v9, v6);
  v8 = qword_27CFB5318;
  qword_27CFB5318 = v7;
}

void sub_22124D598(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x277CCA900];
  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%C"), a4, 65289);
  v7 = objc_msgSend_characterSetWithCharactersInString_(v4, v5, v9, v6);
  v8 = qword_27CFB5328;
  qword_27CFB5328 = v7;
}

void sub_22124DCB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v24 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCAB50], a2, @"+-*/^&=><:", a4);
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"%C%C%C%C%C%C%C%C", v5, 45, 8722, 65123, 65293, 12540, 43, 65122, 65291);
  objc_msgSend_addCharactersInString_(v24, v7, v6, v8);

  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%C%C%C%C%C%C%C%C%C%C", v10, 65290, 65295, 65342, 65285, 65306, 65309, 65308, 65310, 65284, 1642);
  objc_msgSend_addCharactersInString_(v24, v12, v11, v13);

  v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%C%C%C%C%C", v15, *MEMORY[0x277D81580], *MEMORY[0x277D81548], *MEMORY[0x277D81578], *MEMORY[0x277D81560], *MEMORY[0x277D81588]);
  objc_msgSend_addCharactersInString_(v24, v17, v16, v18);

  v22 = objc_msgSend_copy(v24, v19, v20, v21);
  v23 = qword_27CFB5338;
  qword_27CFB5338 = v22;
}

void sub_22124DE50(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_22124E808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18)
{
  _Block_object_dispose((v20 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_22124EA24(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  objc_opt_class();
  v8 = objc_msgSend_attachmentAtCharIndex_(*(a1 + 32), v6, a2, v7);
  v14 = TSUDynamicCast();

  if (!v14)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    if (a3)
    {
      *a3 = 1;
    }
  }

  v12 = objc_msgSend_formulaPlainText(v14, v9, v10, v11);
  objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(*(a1 + 32), v13, a2, 1, v12, 0);
}

void sub_22124EB24(uint64_t a1, void *a2)
{
  v14 = a2;
  if (objc_msgSend_firstIndex(v14, v3, v4, v5) >= *(a1 + 32))
  {
    objc_msgSend_setLastIndex_(v14, v14, 0x7FFFFFFFFFFFFFFFLL, v7);
    objc_msgSend_setFirstIndex_(v14, v12, 0x7FFFFFFFFFFFFFFFLL, v13);
  }

  else
  {
    Index = objc_msgSend_lastIndex(v14, v14, v6, v7);
    v11 = *(a1 + 32);
    if (Index >= v11)
    {
      objc_msgSend_setLastIndex_(v14, v9, v11 - 1, v10);
    }
  }
}

void *sub_22124EEF4(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_length(a1, a2, a3, a4);
  if (result)
  {
    v9 = objc_msgSend_characterAtIndex_(a1, v6, 0, v7);

    return objc_msgSend_isFormulaEqualsCharacter_(TSTFormula, v8, v9, v10);
  }

  return result;
}

uint64_t sub_22124EF54(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_length(a1, a2, a3, a4) != 1)
  {
    return 0;
  }

  v8 = objc_msgSend_characterAtIndex_(a1, v5, 0, v6);

  return objc_msgSend_isFormulaEqualsCharacter_(TSTFormula, v7, v8, v9);
}

uint64_t sub_22124EFBC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_leadingSingleQuoteEscapeCharacters(TSTFormula, a2, a3, a4);
  hasLeadingCharacterInSet = objc_msgSend_tst_hasLeadingCharacterInSet_(a1, v6, v5, v7);

  return hasLeadingCharacterInSet;
}

uint64_t sub_22124F018(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_msgSend_length(a1, v5, v6, v7) == 1)
  {
    hasLeadingCharacterInSet = objc_msgSend_tst_hasLeadingCharacterInSet_(a1, v8, v4, v9);
  }

  else
  {
    hasLeadingCharacterInSet = 0;
  }

  return hasLeadingCharacterInSet;
}

uint64_t sub_22124F080(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_msgSend_length(a1, v5, v6, v7))
  {
    v10 = objc_msgSend_characterAtIndex_(a1, v8, 0, v9);
    IsMember = objc_msgSend_characterIsMember_(v4, v11, v10, v12);
  }

  else
  {
    IsMember = 0;
  }

  return IsMember;
}

uint64_t sub_22124F0F0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (qword_27CFB5350 != -1)
  {
    sub_2216F7524();
  }

  v5 = qword_27CFB5348;

  return objc_msgSend_tsu_stringByRemovingCharactersInSet_(a1, a2, v5, a4);
}

void sub_22124F144(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_characterSetWithRange_(MEMORY[0x277CCA900], a2, 65532, 1);
  v3 = qword_27CFB5348;
  qword_27CFB5348 = v2;
}

void sub_221250360(unsigned int a1, double a2)
{
  if (a1 <= 0)
  {
    sub_22137A674("stdtr", 1);
  }

  else if (a2 != 0.0)
  {
    if (a2 >= -2.0)
    {
      v4 = -a2;
      if (a2 >= 0.0)
      {
        v4 = a2;
      }

      v5 = 1.0;
      v6 = v4 * v4 / a1 + 1.0;
      if (a1)
      {
        atan(v4 / sqrt(a1));
        if (a1 != 1)
        {
          v9 = 1.0;
          if (a1 >= 5)
          {
            v10 = 1.0;
            v11 = 3;
            do
            {
              if (v10 / v9 <= *&qword_27CFB4C50)
              {
                break;
              }

              v10 = v10 * ((v11 - 1) / (v6 * v11));
              v9 = v9 + v10;
              v11 += 2;
            }

            while (v11 <= (a1 - 2));
          }
        }
      }

      else if (a1 >= 4)
      {
        v7 = 1.0;
        v8 = 2;
        do
        {
          if (v7 / v5 <= *&qword_27CFB4C50)
          {
            break;
          }

          v7 = v7 * ((v8 - 1) / (v6 * v8));
          v5 = v5 + v7;
          v8 += 2;
        }

        while (v8 <= (a1 - 2));
      }
    }

    else
    {
      sub_2212F4E64(vcvtd_n_f64_u32(a1, 1uLL), 0.5, a1 / (a1 + a2 * a2));
    }
  }
}

void sub_221250524(int a1, double a2)
{
  v2 = a2 >= 1.0 || a1 < 1;
  if (v2 || a2 <= 0.0)
  {
    sub_22137A674("stdtri", 1);
  }

  else
  {
    v3 = a1;
    if (a2 > 0.25 && a2 < 0.75)
    {
      if (a2 != 0.5)
      {
        sub_221125004(0.5, v3 * 0.5, fabs(a2 * -2.0 + 1.0));
      }
    }

    else
    {
      v5 = 1.0 - a2;
      if (a2 < 0.5)
      {
        v5 = a2;
      }

      sub_221125004(v3 * 0.5, 0.5, v5 + v5);
    }
  }
}

void sub_22125063C(void *a1, void *a2)
{
  v3 = a1;
  v7 = a2;
  if (v3)
  {
    *&v144 = objc_msgSend_tableUID(v3, v4, v5, v6);
    *(&v144 + 1) = v8;
    if (!(v144 | v8))
    {
      v144 = *objc_msgSend_containingTable(v7, v8, v9, v10);
    }

    v11 = objc_msgSend_calcEngine(v7, v8, v9, v10);
    v14 = objc_msgSend_tableResolverWrapperForTableUID_(v11, v12, &v144, v13);

    if (v14)
    {
      v18 = objc_msgSend_tableUID(v3, v15, v16, v17);
      if (!(v18 | v19))
      {
        v22 = objc_msgSend_containingTable(v7, v19, v20, v21);
        objc_msgSend_setTableUID_(v3, v23, *v22, v22[1]);
      }

      if (TSCETableResolverWrapper::isPivotTable(v14, v19, v20, v21))
      {
        objc_msgSend_setPreserveFlags_(v3, v24, 15, v26);
      }

      v27 = &v142;
      v143[0] = 0;
      v143[1] = 0;
      v142 = v143;
      if (!objc_msgSend_wantsCalculatedPrecedents(v7, v24, v25, v26))
      {
        v27 = 0;
      }

      v31 = objc_msgSend_hidingActionMask(v7, v28, v29, v30);
      v141 = 0;
      v35 = objc_msgSend_isForChartFormulas(v7, v32, v33, v34);
      v36 = TSCETableResolverWrapper::valuesForViewTractRef(&v14->var0, v3, v31, &v141, v27, v35 ^ 1u);
      v37 = v141;
      v40 = TSCETableResolverWrapper::cellTractRefForViewTractRef(v14, v3, v38, v39);
      v44 = objc_msgSend_boundingRange(v40, v41, v42, v43);
      v46 = v45;
      objc_msgSend_addCalculatedPrecedents_(v7, v45, &v142, v47);
      if (v37)
      {
        v51 = objc_msgSend_evaluationStack(v7, v48, v49, v50);
        v54 = objc_msgSend_errorValue_(TSCEErrorValue, v52, v37, v53);
        TSCEEvaluationStack::push_back(v51, v54);
LABEL_13:

        sub_22107C800(&v142, v143[0]);
LABEL_24:

        goto LABEL_25;
      }

      if (v36)
      {
        if (objc_msgSend_numberOfRows(v36, v48, v49, v50) == 1 && objc_msgSend_numberOfColumns(v36, v64, v65, v66) == 1 && (objc_msgSend_spansAllRows(v3, v64, v65, v66) & 1) == 0)
        {
          v67 = objc_msgSend_spansAllColumns(v3, v64, v65, v66) ^ 1;
        }

        else
        {
          v67 = 0;
        }

        if (objc_msgSend_pivotRefsReturnsValueGrid(v7, v64, v65, v66))
        {
          v71 = objc_msgSend_evaluationStack(v7, v68, v69, v70);
          v54 = objc_msgSend_valueGridValue_(TSCEValueGridValue, v72, v36, v73);
          TSCEEvaluationStack::push_back(v71, v54);
        }

        else if (v67)
        {
          v81 = [TSCEReferenceValue alloc];
          *&v136 = v44;
          v136._singleRange._begin = v46;
          *&v136._singleRange._end = v144;
          v140 = objc_msgSend_preserveFlags(v3, v82, v83, v84);
          v88 = objc_msgSend_firstValue(v36, v85, v86, v87);
          v54 = objc_msgSend_initWithContext_rangeRef_preserveFlags_cacheValue_wasFetchedWithRichTextAttributes_(v81, v89, v7, &v136, &v140, v88, 1);

          v93 = objc_msgSend_evaluationStack(v7, v90, v91, v92);
          TSCEEvaluationStack::push_back(v93, v54);
        }

        else
        {
          v54 = objc_msgSend_valueGridValue_(TSCEValueGridValue, v68, v36, v70);
          if (objc_msgSend_spansAllRows(v3, v94, v95, v96))
          {
            if (WORD2(v46) == WORD2(v44))
            {
              *(&v100 + 1) = *objc_msgSend_containingCell(v7, v97, v98, v99);
              *&v100 = v44;
              objc_msgSend_setImplicitIntersectionCoord_(v54, v101, (v100 >> 32) & 0xFFFFFFFF0000FFFFLL, v102);
              *&v136 = v44 & 0xFFFF00000000 | *(&v100 + 1);
              v136._singleRange._begin = v136;
              *&v136._singleRange._end = v144;
              if ((TSCETableResolverWrapper::rangeIsWithinTableInView(v14, &v136, v103, v104) & 1) == 0)
              {
                objc_msgSend_setImplicitIntersectionOffTable_(v54, v97, 1, v99);
              }
            }

            objc_msgSend_setSpansAllRows_(v40, v97, 1, v99);
          }

          else if (objc_msgSend_spansAllColumns(v3, v97, v98, v99))
          {
            if (v46 == v44)
            {
              v108 = *(objc_msgSend_containingCell(v7, v105, v106, v107) + 4);
              objc_msgSend_setImplicitIntersectionCoord_(v54, v109, v108 | (v44 << 32), v110);
              *&v136 = v44;
              *(&v136 + 1) = v108;
              v136._singleRange._begin = v136;
              *&v136._singleRange._end = v144;
              if ((TSCETableResolverWrapper::rangeIsWithinTableInView(v14, &v136, v111, v112) & 1) == 0)
              {
                objc_msgSend_setImplicitIntersectionOffTable_(v54, v105, 1, v107);
              }
            }

            objc_msgSend_setSpansAllColumns_(v40, v105, 1, v107);
          }

          v116 = [TSCEEvalRef alloc];
          if (v40)
          {
            objc_msgSend_cppCellTractRef(v40, v113, v114, v115);
          }

          else
          {
            v139 = 0;
            v138 = 0u;
            memset(&v137, 0, sizeof(v137));
            memset(&v136, 0, sizeof(v136));
          }

          v117 = objc_msgSend_initWithTableResolver_tractRefCore_(v116, v113, v14, &v136);
          TSUIndexSet::~TSUIndexSet(&v137);
          TSUIndexSet::~TSUIndexSet(&v136);
          objc_msgSend_setCachedValue_(v117, v118, v54, v119);
          objc_msgSend_setCachedValueWasFetchedWithRichTextAttributes_(v117, v120, 1, v121);
          v122 = [TSCEReferenceValue alloc];
          v126 = objc_msgSend_containingCell(v7, v123, v124, v125);
          *&v136 = objc_msgSend_preserveFlags(v3, v127, v128, v129);
          isOutputOfAFunction = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v122, v130, v117, v126, &v136, 0, 0);
          v135 = objc_msgSend_evaluationStack(v7, v132, v133, v134);
          TSCEEvaluationStack::push_back(v135, isOutputOfAFunction);
        }

        goto LABEL_13;
      }

      sub_22107C800(&v142, v143[0]);
    }

    v74 = objc_msgSend_invalidReferenceError(TSCEError, v15, v16, v17);
    v37 = objc_msgSend_errorValue_(TSCEErrorValue, v75, v74, v76);

    v80 = objc_msgSend_evaluationStack(v7, v77, v78, v79);
    TSCEEvaluationStack::push_back(v80, v37);
    goto LABEL_24;
  }

  v55 = MEMORY[0x277D81150];
  v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "void TSCEEvaluateViewTractRefWithContext(TSCEViewTractRef *__strong, TSCEEvaluationContext *__strong)", v6);
  v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTEvaluation.mm", v58);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v60, v56, v59, 44, 0, "invalid nil value for '%{public}s'", "vtr");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63);
LABEL_25:
}

void sub_221250BAC(_Unwind_Exception *a1, uint64_t a2, TSUIndexSet *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  sub_22107C800(&a24, a25);

  _Unwind_Resume(a1);
}

id sub_221250CB8(TSCEASTNodeArray *a1, void *a2, void *a3)
{
  v965 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v942 = v7;
  if (!a1 || !a1->var1)
  {
    objc_msgSend_addPartialResult_(v7, v8, 0, v9);
    i = objc_msgSend_nilValue(TSCENilValue, v18, v19, v20);
    goto LABEL_271;
  }

  v10 = objc_autoreleasePoolPush();
  memset(v961, 0, sizeof(v961));
  v962 = 1065353216;
  v17 = objc_msgSend_calcEngine(v6, v11, v12, v13);
  context = v10;
  if (v6)
  {
    objc_msgSend_containingCellRef(v6, v14, v15, v16);
  }

  else
  {
    memset(&v955, 0, 24);
  }

  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v960, v17, &v955);

  v21 = [TSCEEvaluationState alloc];
  v23 = objc_msgSend_initWithAST_rewriteContext_warnings_(v21, v22, a1, &v960, 0);
  v958 = 0;
  v959 = v23;
  v956 = 0;
  v957 = 0;
  sub_2212543AC(&v956, &v959);
  v25 = v956;
  v24 = v957;
  if (v956 == v957)
  {
LABEL_261:
    while (v24 != v25)
    {
      v877 = *(v24 - 8);
      v24 -= 8;
    }

    v957 = v25;
    v878 = 1;
    goto LABEL_264;
  }

  v939 = 0;
  v940 = 0;
  while (2)
  {
    v26 = *(v24 - 8);
    v30 = objc_msgSend_elementIterator(v26, v27, v28, v29);
    for (i = sub_22134B3CC(v30); !i || (*(*i + 128))(i); i = sub_22134B3CC(v30))
    {
      v34 = objc_msgSend_warnings(v26, v31, v32, v33);
      v35 = v34 == 0;

      if (!v35)
      {
        i = objc_msgSend_evaluationStack(v6, v36, v37, v38);
        if (TSCEEvaluationStack::size(i))
        {
          v39 = TSCEEvaluationStack::back(i);
          TSCEEvaluationStack::pop_back(i);
          v43 = objc_msgSend_warnings(v26, v40, v41, v42);
          objc_msgSend_attachWarnings_(v39, v44, v43, v45);

          TSCEEvaluationStack::push_back(i, v39);
        }
      }

      v46 = v957 - 8;

      v957 = v46;
      if (v956 == v957)
      {
        goto LABEL_260;
      }

      v26 = *(v957 - 8);
      v30 = objc_msgSend_elementIterator(v26, v47, v48, v49);
      v53 = objc_msgSend_evaluationStack(v6, v50, v51, v52);
      if (TSCEEvaluationStack::size(v53))
      {
        v57 = objc_msgSend_evaluationStack(v6, v54, v55, v56);
        v58 = TSCEEvaluationStack::back(v57);
        if (objc_msgSend_isReferenceValue(v58, v59, v60, v61))
        {
          v65 = objc_msgSend_asReferenceValue(v58, v62, v63, v64);
          v69 = v65;
          if (v65)
          {
            if ((objc_msgSend_isOutputOfAFunction(v65, v66, v67, v68) & 1) == 0)
            {
              v73 = objc_msgSend_copy(v69, v70, v71, v72);
              objc_msgSend_setIsOutputOfAFunction_(v73, v74, 1, v75);
              v79 = objc_msgSend_evaluationStack(v6, v76, v77, v78);
              TSCEEvaluationStack::pop_back(v79);
              v83 = objc_msgSend_evaluationStack(v6, v80, v81, v82);
              TSCEEvaluationStack::push_back(v83, v73);
            }
          }
        }
      }
    }

    if (v956 == v957)
    {

LABEL_260:
      v25 = v956;
      v24 = v957;
      goto LABEL_261;
    }

    v87 = TSCEASTElement::tag(i, v30);
    v938 = *(i + 8);
    switch(v87)
    {
      case 1:
        v102 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_Add, v84, v6, 2);
        v242 = objc_msgSend_evaluationStack(v6, v239, v240, v241);
        TSCEEvaluationStack::push_back(v242, v102);
        if (v942)
        {
          v243 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v243, v244, v102, 2, v938);
          objc_msgSend_addPartialResult_(v942, v245, i, v246);
        }

        goto LABEL_134;
      case 2:
        v102 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_Subtract, v84, v6, 2);
        v274 = objc_msgSend_evaluationStack(v6, v271, v272, v273);
        TSCEEvaluationStack::push_back(v274, v102);
        if (v942)
        {
          v275 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v275, v276, v102, 2, v938);
          objc_msgSend_addPartialResult_(v942, v277, i, v278);
        }

        goto LABEL_134;
      case 3:
        v102 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_Multiply, v84, v6, 2);
        v250 = objc_msgSend_evaluationStack(v6, v247, v248, v249);
        TSCEEvaluationStack::push_back(v250, v102);
        if (v942)
        {
          v251 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v251, v252, v102, 2, v938);
          objc_msgSend_addPartialResult_(v942, v253, i, v254);
        }

        goto LABEL_134;
      case 4:
        v102 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_Divide, v84, v6, 2);
        v306 = objc_msgSend_evaluationStack(v6, v303, v304, v305);
        TSCEEvaluationStack::push_back(v306, v102);
        if (v942)
        {
          v307 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v307, v308, v102, 2, v938);
          objc_msgSend_addPartialResult_(v942, v309, i, v310);
        }

        goto LABEL_134;
      case 5:
        v102 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_Power, v84, v6, 2);
        v314 = objc_msgSend_evaluationStack(v6, v311, v312, v313);
        TSCEEvaluationStack::push_back(v314, v102);
        if (v942)
        {
          v315 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v315, v316, v102, 2, v938);
          objc_msgSend_addPartialResult_(v942, v317, i, v318);
        }

        goto LABEL_134;
      case 6:
        v102 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_Concat, v84, v6, 2);
        v282 = objc_msgSend_evaluationStack(v6, v279, v280, v281);
        TSCEEvaluationStack::push_back(v282, v102);
        if (v942)
        {
          v283 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v283, v284, v102, 2, v938);
          objc_msgSend_addPartialResult_(v942, v285, i, v286);
        }

        goto LABEL_134;
      case 7:
        v102 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_GT, v84, v6, 2);
        v298 = objc_msgSend_evaluationStack(v6, v295, v296, v297);
        TSCEEvaluationStack::push_back(v298, v102);
        if (v942)
        {
          v299 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v299, v300, v102, 2, v938);
          objc_msgSend_addPartialResult_(v942, v301, i, v302);
        }

        goto LABEL_134;
      case 8:
        v102 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_GE, v84, v6, 2);
        v258 = objc_msgSend_evaluationStack(v6, v255, v256, v257);
        TSCEEvaluationStack::push_back(v258, v102);
        if (v942)
        {
          v259 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v259, v260, v102, 2, v938);
          objc_msgSend_addPartialResult_(v942, v261, i, v262);
        }

        goto LABEL_134;
      case 9:
        v102 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_LT, v84, v6, 2);
        v290 = objc_msgSend_evaluationStack(v6, v287, v288, v289);
        TSCEEvaluationStack::push_back(v290, v102);
        if (v942)
        {
          v291 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v291, v292, v102, 2, v938);
          objc_msgSend_addPartialResult_(v942, v293, i, v294);
        }

        goto LABEL_134;
      case 10:
        v102 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_LE, v84, v6, 2);
        v330 = objc_msgSend_evaluationStack(v6, v327, v328, v329);
        TSCEEvaluationStack::push_back(v330, v102);
        if (v942)
        {
          v331 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v331, v332, v102, 2, v938);
          objc_msgSend_addPartialResult_(v942, v333, i, v334);
        }

        goto LABEL_134;
      case 11:
        v102 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_EQ, v84, v6, 2);
        v322 = objc_msgSend_evaluationStack(v6, v319, v320, v321);
        TSCEEvaluationStack::push_back(v322, v102);
        if (v942)
        {
          v323 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v323, v324, v102, 2, v938);
          objc_msgSend_addPartialResult_(v942, v325, i, v326);
        }

        goto LABEL_134;
      case 12:
        v102 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_NE, v84, v6, 2);
        v266 = objc_msgSend_evaluationStack(v6, v263, v264, v265);
        TSCEEvaluationStack::push_back(v266, v102);
        if (v942)
        {
          v267 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v267, v268, v102, 2, v938);
          objc_msgSend_addPartialResult_(v942, v269, i, v270);
        }

        goto LABEL_134;
      case 13:
        v102 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_Negate, v84, v6, 1);
        v427 = objc_msgSend_evaluationStack(v6, v424, v425, v426);
        TSCEEvaluationStack::push_back(v427, v102);
        if (v942)
        {
          v428 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v428, v429, v102, 1, v938);
          objc_msgSend_addPartialResult_(v942, v430, i, v431);
        }

        goto LABEL_134;
      case 14:
        v102 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_PlusSign, v84, v6, 1);
        v435 = objc_msgSend_evaluationStack(v6, v432, v433, v434);
        TSCEEvaluationStack::push_back(v435, v102);
        if (v942)
        {
          v436 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v436, v437, v102, 1, v938);
          objc_msgSend_addPartialResult_(v942, v438, i, v439);
        }

        goto LABEL_134;
      case 15:
        v102 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_Percent, v84, v6, 1);
        v166 = objc_msgSend_evaluationStack(v6, v163, v164, v165);
        TSCEEvaluationStack::push_back(v166, v102);
        if (v942)
        {
          v167 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v167, v168, v102, 1, v938);
          objc_msgSend_addPartialResult_(v942, v169, i, v170);
        }

        goto LABEL_134;
      case 16:
      case 17:
      case 33:
      case 34:
        v88 = TSCEASTFunctionElement::functionIndex(i, v30, v85, v86);
        v89 = (*(*i + 48))(i, v30);
        v90 = sub_2212544A0(v6, v88, v89, 0);
        i = objc_msgSend_isThunk(v90, v91, v92, v93);
        if (i)
        {
          v97 = objc_msgSend_asThunkValue(v90, v94, v95, v96);
          v101 = objc_msgSend_ast(v97, v98, v99, v100);
          TSCEASTNodeArray::shallowCopy(v101);
        }

        v128 = objc_msgSend_evaluationStack(v6, v94, v95, v96);
        TSCEEvaluationStack::push_back(v128, v90);
        if (v942)
        {
          v129 = [TSCEPartialResult alloc];
          v131 = objc_msgSend_initWithValue_numArgs_offset_(v129, v130, v90, v89, v938);
          objc_msgSend_addPartialResult_(v942, v132, v131, v133);

          v134 = 1;
        }

        else
        {
          v134 = 0;
        }

        goto LABEL_250;
      case 18:
        v955.range._topLeft = TSCEASTNumberElement::value(i, v30, v85, v86);
        v955.range._bottomRight = v335;
        v337 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v335, &v955, v336);
        v341 = objc_msgSend_evaluationStack(v6, v338, v339, v340);
        TSCEEvaluationStack::push_back(v341, v337);

        goto LABEL_249;
      case 19:
        v440 = TSCEASTBooleanElement::value(i, v30, v85, v86);
        v443 = objc_msgSend_BOOLValue_(TSCEBooleanValue, v441, v440, v442);
        v447 = objc_msgSend_evaluationStack(v6, v444, v445, v446);
        TSCEEvaluationStack::push_back(v447, v443);

        goto LABEL_249;
      case 20:
        v396 = TSCEASTStringElement::string(i, v30, v85, v86);
        v955.range._topLeft = 0;
        v955.range._bottomRight.row = 0;
        LOBYTE(v955.range._bottomRight.column) = 0;
        LOWORD(v955._tableUID._lower) = v955._tableUID._lower & 0xC080 | 0x421;
        BYTE2(v955._tableUID._lower) = BYTE2(v955._tableUID._lower) & 0xF8 | 1;
        HIDWORD(v955._tableUID._lower) = -50266102;
        LOBYTE(v955._tableUID._upper) = -3;
        BYTE1(v955._tableUID._upper) &= 0xE0u;
        WORD1(v955._tableUID._upper) = 0;
        i = objc_msgSend_stringValue_format_isRegex_isCaseSensitiveRegex_isLiteralString_(TSCEStringValue, v397, v396, &v955, 0, 0, 1);
        v401 = objc_msgSend_evaluationStack(v6, v398, v399, v400);
        TSCEEvaluationStack::push_back(v401, i);

        goto LABEL_249;
      case 21:
        v482 = TSCEASTDateElement::valueAsIntervalSinceReferenceDate(i, v30, v85, v86);
        v485 = TSCEASTDateElement::dateTimeFormat(i, v30, v483, v484);
        v488 = TSCEASTDateElement::suppressDateFormat(i, v30, v486, v487);
        v494 = TSCEASTDateElement::suppressTimeFormat(i, v30, v489, v490);
        v955.range._topLeft = 0;
        v955.range._bottomRight.row = 0;
        LOBYTE(v955.range._bottomRight.column) = 0;
        LOWORD(v955._tableUID._lower) = v955._tableUID._lower & 0xC080 | 0x421;
        BYTE2(v955._tableUID._lower) = BYTE2(v955._tableUID._lower) & 0xF8 | 1;
        HIDWORD(v955._tableUID._lower) = -50266102;
        LOBYTE(v955._tableUID._upper) = -3;
        BYTE1(v955._tableUID._upper) &= 0xE0u;
        WORD1(v955._tableUID._upper) = 0;
        if (!((v485 != 0) | (v488 | v494) & 1))
        {
          goto LABEL_215;
        }

        if (v485)
        {
          v497 = v485;
        }

        else
        {
          v776 = objc_msgSend_locale(v6, v491, v492, v493);
          v497 = TSUDefaultDateTimeFormat();
        }

        if (v488)
        {
          v777 = objc_msgSend_timePortionOfDateTimeFormatString_(MEMORY[0x277D811A0], v495, v497, v496);
LABEL_198:
          v778 = v777;

          goto LABEL_214;
        }

        if (v494)
        {
          v777 = objc_msgSend_datePortionOfDateTimeFormatString_(MEMORY[0x277D811A0], v495, v497, v496);
          goto LABEL_198;
        }

        v778 = v497;
LABEL_214:
        v804 = objc_alloc(MEMORY[0x277D80658]);
        v807 = objc_msgSend_initWithFormatString_(v804, v805, v778, v806);
        TSCEFormat::TSCEFormat(&v954, v807, 0);
        TSCEFormat::operator=(&v955, &v954);

LABEL_215:
        i = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v491, v492, v493, v482);
        v809 = objc_msgSend_dateValue_format_(TSCEDateValue, v808, i, &v955);

        v813 = objc_msgSend_evaluationStack(v6, v810, v811, v812);
        TSCEEvaluationStack::push_back(v813, v809);

        goto LABEL_249;
      case 22:
        TSCEASTDurationElement::unitNum(i, v30, v85, v86);
        v344 = TSCEASTDurationElement::unit(i, v30, v342, v343);
        v347 = TSCEASTDurationElement::durationFormat(i, v30, v345, v346);
        *v950 = v347;
        *(v950 + 2) = BYTE2(v347);
        v348 = TSCEDurationFormat::asTSKDurationFormat(v950);
        v349 = [TSCENumberValue alloc];
        TSUDecimal::operator=();
        TSCEFormat::TSCEFormat(&v955, v348, 0);
        i = objc_msgSend_initWithDecimal_format_baseUnit_(v349, v350, &v954, &v955, v344);
        v354 = objc_msgSend_evaluationStack(v6, v351, v352, v353);
        TSCEEvaluationStack::push_back(v354, i);

        goto LABEL_249;
      case 23:
        v228 = objc_msgSend_evaluationStack(v6, v84, v85, v86);
        v232 = objc_msgSend_emptyArgumentValue(TSCEEmptyArgumentValue, v229, v230, v231);
        TSCEEvaluationStack::push_back(v228, v232);

        goto LABEL_249;
      case 24:
        if (TSCEASTTokenElement::isOptional(i, v30, v85, v86))
        {
          v195 = objc_msgSend_tokenValue(TSCETokenValue, v189, v190, v191);
        }

        else
        {
          i = objc_msgSend_requiredArgumentMissingError(TSCEError, v189, v190, v191);
          v195 = objc_msgSend_errorValue_(TSCEErrorValue, v639, i, v640);
        }

        goto LABEL_52;
      case 25:
        v355 = TSCEASTArrayElement::numColumns(i, v30, v85, v86);
        v358 = TSCEASTArrayElement::numRows(i, v30, v356, v357);
        v362 = objc_msgSend_evaluationStack(v6, v359, v360, v361);
        v363 = v358 * v355;
        TSCEEvaluationStack::setArgumentCount(v362, v358 * v355);
        memset(&v955, 0, 24);
        if (v363)
        {
          v367 = -v363;
          do
          {
            v368 = objc_msgSend_evaluationStack(v6, v364, v365, v366);
            v372 = objc_msgSend_evaluationStack(v6, v369, v370, v371);
            v373 = TSCEEvaluationStack::size(v372);
            v954._tskFormat = TSCEEvaluationStack::at(v368, v367 + v373);
            sub_221179A54(&v955, &v954._tskFormat);

            v374 = __CFADD__(v367++, 1);
          }

          while (!v374);
        }

        v954._tskFormat = __PAIR64__(v358, v355);
        v375 = [TSCEDenseGrid alloc];
        i = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v375, v376, &v955, 0, 0, &v954);
        v379 = objc_msgSend_gridValue_(TSCEGridValue, v377, i, v378);
        v383 = objc_msgSend_evaluationStack(v6, v380, v381, v382);
        TSCEEvaluationStack::clearArgument(v383, v384, v385, v386);
        v390 = objc_msgSend_evaluationStack(v6, v387, v388, v389);
        TSCEEvaluationStack::push_back(v390, v379);
        if (v942)
        {
          v391 = [TSCEPartialResult alloc];
          v393 = objc_msgSend_initWithValue_numArgs_offset_(v391, v392, v379, v363, v938);
          objc_msgSend_addPartialResult_(v942, v394, v393, v395);
        }

        goto LABEL_163;
      case 26:
        v415 = (*(*i + 48))(i, v30);
        if (v415 != 1)
        {
          v641 = objc_msgSend_evaluationStack(v6, v84, v85, v86);
          TSCEEvaluationStack::setArgumentCount(v641, v415);
          memset(&v955, 0, 24);
          if (v415)
          {
            v645 = -v415;
            do
            {
              v646 = objc_msgSend_evaluationStack(v6, v642, v643, v644);
              v650 = objc_msgSend_evaluationStack(v6, v647, v648, v649);
              v651 = TSCEEvaluationStack::size(v650);
              v954._tskFormat = TSCEEvaluationStack::at(v646, v645 + v651);
              sub_221179A54(&v955, &v954._tskFormat);

              v374 = __CFADD__(v645++, 1);
            }

            while (!v374);
          }

          v652 = [TSCEDenseGrid alloc];
          i = objc_msgSend_initWithValues_gridKind_isFlattened_(v652, v653, &v955, 1, 0);
          v379 = objc_msgSend_gridValue_(TSCEGridValue, v654, i, v655);
          v659 = objc_msgSend_evaluationStack(v6, v656, v657, v658);
          TSCEEvaluationStack::clearArgument(v659, v660, v661, v662);
          v666 = objc_msgSend_evaluationStack(v6, v663, v664, v665);
          TSCEEvaluationStack::push_back(v666, v379);
          if (v942)
          {
            v667 = [TSCEPartialResult alloc];
            v669 = objc_msgSend_initWithValue_numArgs_offset_(v667, v668, v379, v415, v938);
            objc_msgSend_addPartialResult_(v942, v670, v669, v671);
          }

LABEL_163:

          v954._tskFormat = &v955;
          sub_22107C2C0(&v954);
LABEL_185:
          v134 = v942 != 0;
          goto LABEL_250;
        }

        if (!v942)
        {
          goto LABEL_256;
        }

        v416 = [TSCEPartialResult alloc];
        v420 = objc_msgSend_evaluationStack(v6, v417, v418, v419);
        i = TSCEEvaluationStack::back(v420);
        v412 = objc_msgSend_initWithValue_numArgs_offset_(v416, v421, i, 1, v938);

        objc_msgSend_addPartialResult_(v942, v422, v412, v423);
        goto LABEL_254;
      case 27:
      case 56:
        TSCEASTThunkElement::nodeArray(i, v30, 1, v86);
      case 28:
      case 45:
        v102 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_Colon, v84, v6, 2);
        v106 = objc_msgSend_evaluationStack(v6, v103, v104, v105);
        TSCEEvaluationStack::push_back(v106, v102);
        if (v942)
        {
          v107 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v107, v108, v102, 2, v938);
          objc_msgSend_addPartialResult_(v942, v109, i, v110);
        }

        goto LABEL_134;
      case 29:
        goto LABEL_166;
      case 30:
        v136 = TSCEASTUnknownFunctionElement::unknownFunctionName(i, v30, v85, v86);
        v137 = (*(*i + 48))(i, v30);
        v141 = objc_msgSend_evaluationStack(v6, v138, v139, v140);
        TSCEEvaluationStack::setArgumentCount(v141, v137);
        v145 = objc_msgSend_evaluationStack(v6, v142, v143, v144);
        TSCEEvaluationStack::clearArgument(v145, v146, v147, v148);
        v151 = objc_msgSend_unknownFunctionError_(TSCEError, v149, v136, v150);
        i = objc_msgSend_errorValue_(TSCEErrorValue, v152, v151, v153);

        v157 = objc_msgSend_evaluationStack(v6, v154, v155, v156);
        TSCEEvaluationStack::push_back(v157, i);
        if (v942)
        {
          v158 = [TSCEPartialResult alloc];
          v160 = objc_msgSend_initWithValue_numArgs_offset_(v158, v159, i, v137, v938);
          objc_msgSend_addPartialResult_(v942, v161, v160, v162);
        }

        goto LABEL_185;
      case 31:
      case 32:
        goto LABEL_256;
      case 36:
        v233 = TSCEASTElement::refFlags(i, v30);
        *v950 = TSCEASTRelativeCoordRefElement::relativeCoord(i, v30, v234, v235);
        v954._tskFormat = 0;
        *&v954._formatType = 0;
        if (v233)
        {
          v954._tskFormat = TSCEASTRelativeCoordRefElement::tableUID(i, v30, v237, v238);
          *&v954._formatType = v84;
        }

        else
        {
          *&v954._tskFormat = *objc_msgSend_containingTable(v6, v236, v237, v238);
        }

        v672 = v233 & 0xC;
        if (v672 == 12)
        {
LABEL_166:
          i = objc_msgSend_invalidReferenceError(TSCEError, v84, v85, v86);
          v675 = objc_msgSend_errorValue_(TSCEErrorValue, v673, i, v674);

          v679 = objc_msgSend_evaluationStack(v6, v676, v677, v678);
          TSCEEvaluationStack::push_back(v679, v675);

          goto LABEL_249;
        }

        v680 = TSCEASTRelativeCoordRefElement::preserveFlags(i, v30);
        LOBYTE(v953) = v680 & 3 | (4 * (v680 & 3));
        if (sub_2210875C4(v961, &v954))
        {
          goto LABEL_168;
        }

        if (v233)
        {
          v827 = objc_msgSend_calcEngine(v6, v681, v682, v683);
          v830 = objc_msgSend_tableResolverWrapperForTableUID_(v827, v828, &v954, v829);

          if (!v830)
          {
            goto LABEL_236;
          }

          sub_2210C2B00(v961, &v954, &v954);
        }

        else
        {
          if (v940)
          {
            v940 = 1;
            if ((v939 & 1) == 0)
            {
              v939 = 0;
LABEL_236:
              i = objc_msgSend_referenceToNonexistentTableError_(TSCEError, v681, v954._tskFormat, *&v954._formatType);
              v689 = objc_msgSend_errorValue_(TSCEErrorValue, v844, i, v845);

              v849 = objc_msgSend_evaluationStack(v6, v846, v847, v848);
              TSCEEvaluationStack::push_back(v849, v689);
              goto LABEL_237;
            }
          }

          else
          {
            if (!objc_msgSend_containingTableResolverWrapper(v6, v681, v682, v683))
            {
              v939 = 0;
              v940 = 1;
              goto LABEL_236;
            }

            sub_2210C2B00(v961, &v954, &v954);
            v940 = 1;
          }

          v939 = 1;
        }

LABEL_168:
        if (v672 == 8)
        {
          v787 = objc_msgSend_containingCell(v6, v681, v682, v683);
          v789 = sub_221255F08(*v787, *&v950[1], (v233 & 0x10) != 0, v788);
          v790 = [TSCEReferenceValue alloc];
          v955.range._topLeft = ((v789 << 32) | 0x7FFFFFFF);
          v955.range._bottomRight = v955.range._topLeft;
          v955._tableUID = *&v954._tskFormat;
          v689 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v790, v791, v6, &v955, &v953);
          if (objc_msgSend_rangeContextOverride(v26, v792, v793, v794) != 3)
          {
            v795 = objc_msgSend_rangeContextOverride(v26, v693, v694, v695);
            objc_msgSend_setRangeContextOverride_(v689, v796, v795, v797);
          }

          goto LABEL_172;
        }

        if (v672 == 4)
        {
          v684 = objc_msgSend_containingCell(v6, v681, v682, v683);
          v686 = sub_221255D48(*v684, v950[0], (v233 & 0x20) != 0, v685);
          v687 = [TSCEReferenceValue alloc];
          v955.range._topLeft = (v686 | 0x7FFF00000000);
          v955.range._bottomRight = v955.range._topLeft;
          v955._tableUID = *&v954._tskFormat;
          v689 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v687, v688, v6, &v955, &v953);
          if (objc_msgSend_rangeContextOverride(v26, v690, v691, v692) != 3)
          {
            v696 = objc_msgSend_rangeContextOverride(v26, v693, v694, v695);
            objc_msgSend_setRangeContextOverride_(v689, v697, v696, v698);
          }

LABEL_172:
          v699 = objc_msgSend_evaluationStack(v6, v693, v694, v695);
          TSCEEvaluationStack::push_back(v699, v689);
          goto LABEL_237;
        }

        v798 = [TSCEReferenceValue alloc];
        v689 = objc_msgSend_initWithContext_tableUID_relativeCellCoord_preserveFlags_(v798, v799, v6, &v954, v950, &v953);
        v803 = objc_msgSend_evaluationStack(v6, v800, v801, v802);
        TSCEEvaluationStack::push_back(v803, v689);
LABEL_237:

LABEL_249:
        v134 = 0;
        goto LABEL_250;
      case 50:
        v510 = objc_msgSend_invalidReferenceError(TSCEError, v84, v85, v86);
        v513 = objc_msgSend_errorValue_(TSCEErrorValue, v511, v510, v512);

        v517 = objc_msgSend_evaluationStack(v6, v514, v515, v516);
        TSCEEvaluationStack::push_back(v517, v513);
        v518 = MEMORY[0x277D81150];
        i = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v519, "TSCEValue *TSCEEvaluateASTNodeArrayWithContext(const TSCEASTNodeArray *, TSCEEvaluationContext *__strong, TSCEPartialResultTree *__strong)", v520);
        v523 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v521, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTEvaluation.mm", v522);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v518, v524, i, v523, 825, 0, "Not expecting to see UID references during evaluation.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v525, v526, v527);
        goto LABEL_249;
      case 52:
        v197 = objc_msgSend_symbolTable(v6, v84, v85, v86);
        TSCESymbolTable::beginScope(v197);
        v200 = TSCEASTLetBindElement::identifier(i, v30, v198, v199);
        v955.range._topLeft.row = TSCEASTLetBindElement::symbol(i, v30, v201, v202);
        v206 = objc_msgSend_evaluationStack(v6, v203, v204, v205);
        if (!TSCEEvaluationStack::size(v206))
        {
          v134 = 0;
LABEL_192:

LABEL_250:
          if (v942 && !v134)
          {
            v863 = objc_msgSend_evaluationStack(v6, v84, v85, v86);
            if (TSCEEvaluationStack::size(v863))
            {
              v866 = [TSCEPartialResult alloc];
              v870 = objc_msgSend_evaluationStack(v6, v867, v868, v869);
              i = TSCEEvaluationStack::back(v870);
              v412 = objc_msgSend_initWithValue_numArgs_offset_(v866, v871, i, 0, v938);

              objc_msgSend_addPartialResult_(v942, v872, v412, v873);
LABEL_254:
            }

            else
            {
              objc_msgSend_addPartialResult_(v942, v864, 0, v865);
            }
          }

LABEL_256:
          if (objc_msgSend_evaluationAborted(v6, v84, v85, v86))
          {
            i = objc_msgSend_abortError(TSCEError, v874, v875, v876);
            v917 = objc_msgSend_errorValue_(TSCEErrorValue, v915, i, v916);

            v921 = objc_msgSend_evaluationStack(v6, v918, v919, v920);
            TSCEEvaluationStack::push_back(v921, v917);

            v25 = v956;
            v24 = v957;
            goto LABEL_261;
          }

          v25 = v956;
          v24 = v957;
          if (v956 == v957)
          {
            goto LABEL_261;
          }

          continue;
        }

        v210 = objc_msgSend_evaluationStack(v6, v207, v208, v209);
        v214 = TSCEEvaluationStack::back(v210);
        if (v955.range._topLeft.row)
        {
          v215 = objc_msgSend_symbolTable(v6, v211, v212, v213);
          TSCESymbolTable::setSymbol(v215, v955.range._topLeft.row, v200);
          v218 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v216, 363, v217);
          i = objc_msgSend_argumentSpecForIndex_numArgs_(v218, v219, 1, 3);
          if (objc_msgSend_rangeContext(i, v220, v221, v222) == 3)
          {
            v226 = objc_msgSend_valueBindingEnvironment(v6, v223, v224, v225);
            objc_msgSend_bindValue_atSymbol_(v226, v227, v214, &v955);
          }

          else
          {
            v226 = objc_msgSend_copy(v214, v223, v224, v225);
            v756 = objc_msgSend_rangeContext(i, v753, v754, v755);
            objc_msgSend_setRangeContextOverride_(v226, v757, v756, v758);
            v762 = objc_msgSend_valueBindingEnvironment(v6, v759, v760, v761);
            objc_msgSend_bindValue_atSymbol_(v762, v763, v226, &v955);
          }

          if (v942)
          {
            objc_msgSend_addSymbol_mappedToIdentifier_(v942, v764, v955.range._topLeft.row, v200);
            v767 = [TSCEPartialResult alloc];
            v770 = objc_msgSend_stringValue_(TSCEStringValue, v768, v200, v769);
            v772 = objc_msgSend_initWithValue_numArgs_offset_(v767, v771, v770, 1, v938);

            objc_msgSend_addPartialResult_(v942, v773, v772, v774);
          }

          v775 = objc_msgSend_evaluationStack(v6, v764, v765, v766);
          TSCEEvaluationStack::pop_back(v775);

          v134 = v942 != 0;
          goto LABEL_192;
        }

        v922 = MEMORY[0x277D81150];
        v923 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v211, "TSCEValue *TSCEEvaluateASTNodeArrayWithContext(const TSCEASTNodeArray *, TSCEEvaluationContext *__strong, TSCEPartialResultTree *__strong)", v213);
        v926 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v924, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTEvaluation.mm", v925);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v922, v927, v923, v926, 919, 0, "Should not be choosing a variable symbol during evaluation - likely an older Madrox LET() format in use here");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v928, v929, v930);
        v934 = objc_msgSend_syntaxError(TSCEError, v931, v932, v933);
        i = objc_msgSend_raiseErrorOrConvert_(v6, v935, v934, v936);

        v878 = 0;
LABEL_264:
        v955.range._topLeft = &v956;
        sub_22107C2C0(&v955);

        sub_2210BDEC0(v961);
        objc_autoreleasePoolPop(context);
        if (v878)
        {
          v882 = objc_msgSend_evaluationStack(v6, v879, v880, v881);
          if (TSCEEvaluationStack::size(v882))
          {
            v886 = objc_msgSend_evaluationStack(v6, v883, v884, v885);
            v887 = TSCEEvaluationStack::back(v886);
            v891 = objc_msgSend_evaluationStack(v6, v888, v889, v890);
            i = v887;
            TSCEEvaluationStack::pop_back(v891);
          }

          else
          {
            v895 = MEMORY[0x277D81150];
            v896 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v883, "TSCEValue *TSCEEvaluateASTNodeArrayWithContext(const TSCEASTNodeArray *, TSCEEvaluationContext *__strong, TSCEPartialResultTree *__strong)", v885);
            v899 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v897, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTEvaluation.mm", v898);
            v900 = TSCEASTNodeArray::description(a1);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v895, v901, v896, v899, 1046, 0, "TSCEEvaluateASTNodeArrayWithContext ended up with an empty evaluation stack for %@", v900);

            i = 0;
            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v902, v903, v904);
          }

          if (objc_msgSend_hasWarnings(v6, v892, v893, v894) && objc_msgSend_nativeType(i, v905, v906, v907) != 16)
          {
            v911 = objc_msgSend_warningsSet(v6, v908, v909, v910);
            objc_msgSend_attachWarnings_(i, v912, v911, v913);
          }
        }

LABEL_271:

        return i;
      case 53:
        v955.range._topLeft.row = TSCEASTVariableElement::symbol(i, v30, v85, v86);
        i = objc_msgSend_evaluationStack(v6, v179, v180, v181);
        v185 = objc_msgSend_valueBindingEnvironment(v6, v182, v183, v184);
        v188 = objc_msgSend_lookup_(v185, v186, &v955, v187);
        TSCEEvaluationStack::push_back(i, v188);

        goto LABEL_249;
      case 54:
        v402 = objc_msgSend_symbolTable(v6, v84, v85, v86);
        TSCESymbolTable::endScope(v402, v403, v404, v405);
        if (!v942)
        {
          goto LABEL_256;
        }

        objc_msgSend_addPartialResult_(v942, v84, 0, v86);
        v406 = [TSCEPartialResult alloc];
        v410 = objc_msgSend_evaluationStack(v6, v407, v408, v409);
        i = TSCEEvaluationStack::back(v410);
        v412 = objc_msgSend_initWithValue_numArgs_offset_(v406, v411, i, 3, v938);

        objc_msgSend_addPartialResult_(v942, v413, v412, v414);
        goto LABEL_254;
      case 55:
        Symbol = TSCEASTLambdaElement::firstSymbol(i, v30, v85, v86);
        v454 = TSCEASTLambdaElement::numIdentifiers(i, v30, v449, v450);
        if (v942)
        {
          v455 = TSCEASTLambdaElement::identifiers(i, v30, v452, v453);
          v945 = 0u;
          v946 = 0u;
          v943 = 0u;
          v944 = 0u;
          v456 = v455;
          v459 = objc_msgSend_countByEnumeratingWithState_objects_count_(v456, v457, &v943, v964, 16);
          v937 = v454;
          if (v459)
          {
            v460 = *v944;
            v461 = Symbol;
            do
            {
              for (j = 0; j != v459; ++j)
              {
                if (*v944 != v460)
                {
                  objc_enumerationMutation(v456);
                }

                objc_msgSend_addSymbol_mappedToIdentifier_(v942, v458, v461, *(*(&v943 + 1) + 8 * j));
                v461 = (v461 + 1);
              }

              v459 = objc_msgSend_countByEnumeratingWithState_objects_count_(v456, v458, &v943, v964, 16);
            }

            while (v459);
          }

          v454 = v937;
        }

        v463 = objc_msgSend_evaluationStack(v6, v451, v452, v453);
        v464 = TSCEEvaluationStack::back(v463);
        i = objc_msgSend_asThunkValue(v464, v465, v466, v467);
        if (i)
        {
          TSCEFunctor::TSCEFunctor(&v955, i, v454, Symbol);
          v474 = objc_msgSend_evaluationStack(v6, v471, v472, v473);
          TSCEEvaluationStack::pop_back(v474);
          v478 = objc_msgSend_evaluationStack(v6, v475, v476, v477);
          v481 = objc_msgSend_functorValue_(TSCEFunctorValue, v479, &v955, v480);
          TSCEEvaluationStack::push_back(v478, v481);
        }

        else
        {
          v729 = objc_msgSend_unsupportedFunctionError(TSCEError, v468, v469, v470);
          v733 = objc_msgSend_evaluationStack(v6, v730, v731, v732);
          v736 = objc_msgSend_errorValue_(TSCEErrorValue, v734, v729, v735);
          TSCEEvaluationStack::push_back(v733, v736);
        }

        if (v942)
        {
          v737 = [TSCEPartialResult alloc];
          v741 = objc_msgSend_evaluationStack(v6, v738, v739, v740);
          v742 = TSCEEvaluationStack::back(v741);
          v744 = objc_msgSend_initWithValue_numArgs_offset_(v737, v743, v742, 0, v938);

          objc_msgSend_addPartialResult_(v942, v745, v744, v746);
        }

        goto LABEL_185;
      case 63:
        v953 = 0uLL;
        *&v953 = (*(*i + 136))(i, v30);
        *(&v953 + 1) = v577;
        v963 = 0x101000000000000;
        v580 = objc_msgSend_calcEngine(v6, v577, v578, v579);
        v583 = objc_msgSend_tableResolverForTableUID_(v580, v581, &v953, v582);

        if (v583)
        {
          if (objc_msgSend_isPivotTable(v583, v584, v585, v586))
          {
            i = objc_msgSend_tableTranslator(v583, v587, v588, v589);
            v593 = objc_msgSend_containingCell(v6, v590, v591, v592);
            v596 = objc_msgSend_viewCellCoordForBaseCellCoord_(i, v594, *v593, v595);
            v600 = *objc_msgSend_containingCell(v6, v597, v598, v599);
            objc_msgSend_columnUIDForBaseColumnIndex_(i, v601, WORD2(v600), v602);
            objc_msgSend_rowUIDForBaseRowIndex_(i, v603, v600, v604);
            memset(&v955, 0, sizeof(v955));
            TSKMakeUIDStructCoord();
            *v950 = 0x7FFF7FFFFFFFLL;
            v951 = 0;
            v952 = 0;
            v606 = objc_msgSend_valueForCellUID_outGeometricPrecedent_fetchRichTextAttributesIfPlainText_(v583, v605, &v955, v950, 0);
            v607 = [TSCEReferenceValue alloc];
            v954._tskFormat = v596;
            *&v954._formatType = v596;
            *&v954._durationFormat = v953;
            v949 = 0;
            v609 = objc_msgSend_initWithContext_rangeRef_preserveFlags_cacheValue_wasFetchedWithRichTextAttributes_(v607, v608, v6, &v954, &v949, v606, 1);
            v613 = objc_msgSend_evaluationStack(v6, v610, v611, v612);
            TSCEEvaluationStack::push_back(v613, v609);
          }

          else
          {
            v747 = [TSCEReferenceValue alloc];
            LOBYTE(v955.range._topLeft.row) = 0;
            i = objc_msgSend_initWithContext_tableUID_relativeCellCoord_preserveFlags_(v747, v748, v6, &v953, &v963, &v955);
            v752 = objc_msgSend_evaluationStack(v6, v749, v750, v751);
            TSCEEvaluationStack::push_back(v752, i);
          }
        }

        else
        {
          v722 = objc_msgSend_referenceToNonexistentTableError_(TSCEError, v584, v953, *(&v953 + 1));
          i = objc_msgSend_errorValue_(TSCEErrorValue, v723, v722, v724);

          v728 = objc_msgSend_evaluationStack(v6, v725, v726, v727);
          TSCEEvaluationStack::push_back(v728, i);
        }

        goto LABEL_249;
      case 64:
      case 65:
        v954._tskFormat = 0;
        *&v954._formatType = 0;
        v954._tskFormat = (*(*i + 136))(i, v30);
        *&v954._formatType = v111;
        if (v87 == 64)
        {
          v117 = *objc_msgSend_containingCell(v6, v111, v112, v113);
          if (WORD2(v117) >= 0x7FFFu)
          {
            v118 = MEMORY[0x277D81150];
            v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v114, "TSUColumnIndex TSCEMakeAbsoluteColumnFromRelativeColumn(TSUCellCoord, TSURelativeColumnIndex, BOOL)", v116);
            v122 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v121);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v118, v123, v119, v122, 168, 0, "overflow in column");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v124, v125, v126);
          }

          v127 = v117 & 0xFFFF00000000 | 0x7FFFFFFF;
        }

        else
        {
          v628 = objc_msgSend_containingCell(v6, v111, v112, v113);
          v127 = sub_221255D48(*v628, 0, 0, v629) | 0x7FFF00000000;
        }

        v630 = objc_msgSend_calcEngine(v6, v114, v115, v116);
        v633 = objc_msgSend_tableResolverForTableUID_(v630, v631, &v954, v632);
        i = v633 == 0;

        if (i)
        {
          i = objc_msgSend_referenceToNonexistentTableError_(TSCEError, v634, v954._tskFormat, *&v954._formatType);
          v195 = objc_msgSend_errorValue_(TSCEErrorValue, v637, i, v638);
        }

        else
        {
          v635 = [TSCEReferenceValue alloc];
          v955.range._topLeft = v127;
          v955.range._bottomRight = v127;
          v955._tableUID = *&v954._tskFormat;
          *v950 = 0;
          v195 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v635, v636, v6, &v955, v950);
        }

LABEL_52:
        v196 = objc_msgSend_evaluationStack(v6, v192, v193, v194);
        TSCEEvaluationStack::push_back(v196, v195);

        goto LABEL_249;
      case 66:
        v528 = TSCEASTCategoryRefElement::categoryRef(i, v30, v85, v86);
        v953 = 0uLL;
        v532 = objc_msgSend_relativeGroupUid(v528, v529, v530, v531);
        if (v532 | v533)
        {
          *&v953 = objc_msgSend_containingRowUid(v6, v533, v534, v535);
          *(&v953 + 1) = v533;
        }

        if (!objc_msgSend_pivotRefsReturnsValueGrid(v6, v533, v534, v535))
        {
          v700 = objc_msgSend_calcEngine(v6, v536, v537, v538);
          v704 = objc_msgSend_hidingActionMask(v6, v701, v702, v703);
          v947 = 0;
          if (v700)
          {
            objc_msgSend_valuesForCategoryRef_atRowUid_hidingActionMask_error_(v700, v705, v528, &v953, v704, &v947);
            v546 = v947;

            if (v546)
            {
              if (objc_msgSend_isCircularReferenceError(v546, v705, v706, v707))
              {
                v711 = objc_msgSend_calcEngine(v6, v708, v709, v710);
                v715 = objc_msgSend_containingTable(v6, v712, v713, v714);
                v717 = objc_msgSend_ownerKindForOwnerUID_(v711, v716, *v715, v715[1]);

                if (v717 == 1)
                {
                  v721 = objc_msgSend_calcEngine(v6, v708, v709, v710);
                  if (v6)
                  {
                    objc_msgSend_containingCellRef(v6, v718, v719, v720);
                  }

                  else
                  {
                    memset(&v955, 0, 24);
                  }

                  v839 = objc_msgSend_cellIsInACycle_(v721, v718, &v955, v720);

                  if ((v839 & 1) == 0)
                  {
                    v840 = objc_msgSend_calcEngine(v6, v708, v709, v710);
                    v843 = v840;
                    if (v840)
                    {
                      objc_msgSend_aggregateRangeRefForCategoryRef_(v840, v841, v528, v842);
                    }

                    else
                    {
                      memset(&v955, 0, sizeof(v955));
                    }

                    if (TSCERangeRef::isValid(&v955))
                    {
                      v954 = v955;
                      v856 = objc_msgSend_containingTable(v6, v708, v709, v710);
                      v858 = objc_msgSend_indirectErrorForRangeReference_hostTableUID_(TSCEError, v857, &v954, v856);

                      v546 = v858;
                    }
                  }
                }
              }

              v859 = objc_msgSend_evaluationStack(v6, v708, v709, v710);
              v862 = objc_msgSend_errorValue_(TSCEErrorValue, v860, v546, v861);
              TSCEEvaluationStack::push_back(v859, v862);

              goto LABEL_247;
            }
          }

          else
          {
            *v950 = 0;
            v951 = 0;
            v952 = 0;
          }

          v779 = (v951 - *v950) >> 3;
          if (v779)
          {
            if (v779 == 1)
            {
              v780 = objc_msgSend_evaluationStack(v6, v705, v706, v707);
              v546 = 0;
              TSCEEvaluationStack::push_back(v780, **v950);
LABEL_247:
              v955.range._topLeft = v950;
              sub_22107C2C0(&v955);
              goto LABEL_248;
            }

            v955.range._topLeft.row = 1;
            *&v955.range._topLeft.column = (v951 - *v950) >> 3;
            v818 = [TSCEDenseGrid alloc];
            isFlattened_dimensions = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v818, v819, v950, 0, 1, &v955);
            i = objc_msgSend_gridValue_(TSCEGridValue, v821, isFlattened_dimensions, v822);
            v826 = objc_msgSend_evaluationStack(v6, v823, v824, v825);
            TSCEEvaluationStack::push_back(v826, i);
          }

          else
          {
            i = objc_msgSend_evaluationStack(v6, v705, v706, v707);
            v817 = objc_msgSend_nilValue(TSCENilValue, v814, v815, v816);
            TSCEEvaluationStack::push_back(i, v817);
          }

          v546 = 0;
          goto LABEL_247;
        }

        v539 = objc_msgSend_calcEngine(v6, v536, v537, v538);
        v543 = objc_msgSend_hidingActionMask(v6, v540, v541, v542);
        v948 = 0;
        v545 = objc_msgSend_valueGridForCategoryRef_atRowUid_hidingActionMask_error_(v539, v544, v528, &v953, v543, &v948);
        v546 = v948;

        if (v546)
        {
          if (objc_msgSend_isCircularReferenceError(v546, v547, v548, v549))
          {
            v553 = objc_msgSend_calcEngine(v6, v550, v551, v552);
            v557 = objc_msgSend_containingTable(v6, v554, v555, v556);
            v559 = objc_msgSend_ownerKindForOwnerUID_(v553, v558, *v557, v557[1]);

            if (v559 == 1)
            {
              v563 = objc_msgSend_calcEngine(v6, v550, v551, v552);
              if (v6)
              {
                objc_msgSend_containingCellRef(v6, v560, v561, v562);
              }

              else
              {
                memset(&v955, 0, 24);
              }

              v834 = objc_msgSend_cellIsInACycle_(v563, v560, &v955, v562);

              if ((v834 & 1) == 0)
              {
                v835 = objc_msgSend_calcEngine(v6, v550, v551, v552);
                v838 = v835;
                if (v835)
                {
                  objc_msgSend_aggregateRangeRefForCategoryRef_(v835, v836, v528, v837);
                }

                else
                {
                  memset(&v955, 0, sizeof(v955));
                }

                if (TSCERangeRef::isValid(&v955))
                {
                  v954 = v955;
                  v850 = objc_msgSend_containingTable(v6, v550, v551, v552);
                  v852 = objc_msgSend_indirectErrorForRangeReference_hostTableUID_(TSCEError, v851, &v954, v850);

                  v546 = v852;
                }
              }
            }
          }

          v853 = objc_msgSend_evaluationStack(v6, v550, v551, v552);
          i = objc_msgSend_errorValue_(TSCEErrorValue, v854, v546, v855);
          TSCEEvaluationStack::push_back(v853, i);
        }

        else
        {
          if (objc_msgSend_count(v545, v547, v548, v549))
          {
            v784 = objc_msgSend_evaluationStack(v6, v781, v782, v783);
            objc_msgSend_valueGridValue_(TSCEValueGridValue, v785, v545, v786);
          }

          else
          {
            v784 = objc_msgSend_evaluationStack(v6, v781, v782, v783);
            objc_msgSend_nilValue(TSCENilValue, v831, v832, v833);
          }
          i = ;
          TSCEEvaluationStack::push_back(v784, i);
          v546 = 0;
        }

LABEL_248:
        goto LABEL_249;
      case 67:
        v564 = TSCEASTColonTractElement::relativeTractRef(i, v30, v85, v86);
        if ((objc_msgSend_hasTableUID(v564, v565, v566, v567) & 1) == 0)
        {
          v571 = objc_msgSend_containingTable(v6, v568, v569, v570);
          objc_msgSend_setTableUID_(v564, v572, *v571, v571[1]);
        }

        i = objc_msgSend_evaluateWithContext_relativeTractRef_(TSCEFunction_op_Colon, v568, v6, v564);
        v576 = objc_msgSend_evaluationStack(v6, v573, v574, v575);
        TSCEEvaluationStack::push_back(v576, i);

        goto LABEL_249;
      case 68:
        v135 = TSCEASTViewTractRefElement::viewTractRef(i, v30, v85, v86);
        sub_22125063C(v135, v6);

        goto LABEL_249;
      case 69:
        v498 = TSCEASTIntersectionElement::rangeContext(i, v30, v85, v86);
        objc_msgSend_setIntersectionRangeContext_(v6, v499, v498, v500);
        v102 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_ExplicitIntersection, v501, v6, 1);
        v505 = objc_msgSend_evaluationStack(v6, v502, v503, v504);
        TSCEEvaluationStack::push_back(v505, v102);
        if (v942)
        {
          v506 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v506, v507, v102, 1, v938);
          objc_msgSend_addPartialResult_(v942, v508, i, v509);
        }

        goto LABEL_134;
      case 70:
        v102 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_SpillRange, v84, v6, 1);
        v174 = objc_msgSend_evaluationStack(v6, v171, v172, v173);
        TSCEEvaluationStack::push_back(v174, v102);
        if (v942)
        {
          v175 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v175, v176, v102, 1, v938);
          objc_msgSend_addPartialResult_(v942, v177, i, v178);
        }

LABEL_134:

        goto LABEL_185;
      default:
        v614 = MEMORY[0x277D81150];
        v615 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, "TSCEValue *TSCEEvaluateASTNodeArrayWithContext(const TSCEASTNodeArray *, TSCEEvaluationContext *__strong, TSCEPartialResultTree *__strong)", v86);
        i = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v616, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTEvaluation.mm", v617);
        v621 = TSCEASTNodeArray::codeString(a1, v618, v619, v620);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v614, v622, v615, i, 1010, 0, "%d is not a valid node tag, seen in: %{public}@", v87, v621);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v623, v624, v625);
        objc_msgSend_addPartialResult_(v942, v626, 0, v627);
        goto LABEL_256;
    }
  }
}

void sub_2212537A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, id a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, ...)
{
  va_start(va, a58);

  a28 = &a42;
  sub_22107C2C0(&a28);

  sub_2210BDEC0(va);
  _Unwind_Resume(a1);
}

id sub_2212543AC(void *a1, id *a2)
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

void sub_22125448C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

id sub_2212544A0(void *a1, int a2, unsigned int a3, int a4)
{
  v10 = a1;
  v11 = 0;
  v12 = off_27845CC80;
  switch(a2)
  {
    case 0:
      goto LABEL_367;
    case 1:
      v12 = off_27845C1A8;
      goto LABEL_366;
    case 2:
      v12 = off_27845C1B0;
      goto LABEL_366;
    case 3:
      v12 = off_27845C1B8;
      goto LABEL_366;
    case 4:
      v12 = off_27845C1C0;
      goto LABEL_366;
    case 5:
      v12 = off_27845C1C8;
      goto LABEL_366;
    case 6:
      v12 = off_27845C1D0;
      goto LABEL_366;
    case 7:
      v12 = off_27845C1D8;
      goto LABEL_366;
    case 8:
      v12 = off_27845C1E0;
      goto LABEL_366;
    case 9:
      v12 = off_27845C1F0;
      goto LABEL_366;
    case 10:
      v12 = off_27845C1F8;
      goto LABEL_366;
    case 11:
      v12 = off_27845C200;
      goto LABEL_366;
    case 12:
      v12 = off_27845C208;
      goto LABEL_366;
    case 13:
      v12 = off_27845C210;
      goto LABEL_366;
    case 14:
      v12 = off_27845C218;
      goto LABEL_366;
    case 15:
      v12 = off_27845C220;
      goto LABEL_366;
    case 16:
      v12 = off_27845C228;
      goto LABEL_366;
    case 17:
      v12 = off_27845C2D0;
      goto LABEL_366;
    case 18:
      v12 = off_27845C2D8;
      goto LABEL_366;
    case 19:
      v12 = off_27845C2F8;
      goto LABEL_366;
    case 20:
      v12 = off_27845C310;
      goto LABEL_366;
    case 21:
      v12 = off_27845C318;
      goto LABEL_366;
    case 22:
      v12 = off_27845C320;
      goto LABEL_366;
    case 23:
      v12 = off_27845C328;
      goto LABEL_366;
    case 24:
      v12 = off_27845C330;
      goto LABEL_366;
    case 25:
      v12 = off_27845C340;
      goto LABEL_366;
    case 26:
      v12 = off_27845C348;
      goto LABEL_366;
    case 27:
      v12 = off_27845C360;
      goto LABEL_366;
    case 28:
      v12 = off_27845C368;
      goto LABEL_366;
    case 29:
      v12 = off_27845C370;
      goto LABEL_366;
    case 30:
      v12 = off_27845C378;
      goto LABEL_366;
    case 31:
      v12 = off_27845C380;
      goto LABEL_366;
    case 32:
      v12 = off_27845C388;
      goto LABEL_366;
    case 33:
      v12 = off_27845C390;
      goto LABEL_366;
    case 34:
      v12 = off_27845C3A8;
      goto LABEL_366;
    case 35:
      v12 = off_27845C3B0;
      goto LABEL_366;
    case 36:
      v12 = off_27845C3B8;
      goto LABEL_366;
    case 37:
      v12 = off_27845C3C0;
      goto LABEL_366;
    case 38:
      v12 = off_27845C3C8;
      goto LABEL_366;
    case 39:
      v12 = off_27845C410;
      goto LABEL_366;
    case 40:
      v12 = off_27845C418;
      goto LABEL_366;
    case 41:
      v12 = off_27845C428;
      goto LABEL_366;
    case 42:
      v12 = off_27845C440;
      goto LABEL_366;
    case 43:
      v12 = off_27845C448;
      goto LABEL_366;
    case 44:
      v12 = off_27845C468;
      goto LABEL_366;
    case 45:
      v12 = off_27845C480;
      goto LABEL_366;
    case 46:
      v12 = off_27845C488;
      goto LABEL_366;
    case 47:
      v12 = off_27845C4D0;
      goto LABEL_366;
    case 48:
      v12 = off_27845C4F8;
      goto LABEL_366;
    case 49:
      v12 = off_27845C500;
      goto LABEL_366;
    case 50:
      v12 = off_27845C508;
      goto LABEL_366;
    case 51:
      v12 = off_27845C520;
      goto LABEL_366;
    case 52:
      v12 = off_27845C530;
      goto LABEL_366;
    case 53:
      v12 = off_27845C548;
      goto LABEL_366;
    case 54:
      v12 = off_27845C560;
      goto LABEL_366;
    case 55:
      v12 = off_27845C568;
      goto LABEL_366;
    case 56:
      v12 = off_27845C570;
      goto LABEL_366;
    case 57:
      v12 = off_27845C588;
      goto LABEL_366;
    case 58:
      v12 = off_27845C5A8;
      goto LABEL_366;
    case 59:
      v12 = off_27845C5E8;
      goto LABEL_366;
    case 60:
      v12 = off_27845C5F0;
      goto LABEL_366;
    case 61:
      v12 = off_27845C600;
      goto LABEL_366;
    case 62:
      v12 = off_27845C608;
      goto LABEL_366;
    case 63:
      v12 = off_27845C620;
      goto LABEL_366;
    case 64:
      v12 = off_27845C628;
      goto LABEL_366;
    case 65:
      v12 = off_27845C630;
      goto LABEL_366;
    case 66:
      v12 = off_27845C638;
      goto LABEL_366;
    case 67:
      v12 = off_27845C650;
      goto LABEL_366;
    case 68:
      v12 = off_27845C658;
      goto LABEL_366;
    case 69:
      v12 = off_27845C660;
      goto LABEL_366;
    case 70:
      v12 = off_27845C670;
      goto LABEL_366;
    case 71:
      v12 = off_27845C678;
      goto LABEL_366;
    case 72:
      v12 = off_27845C690;
      goto LABEL_366;
    case 73:
      v12 = off_27845C6A8;
      goto LABEL_366;
    case 74:
      v12 = off_27845C6C0;
      goto LABEL_366;
    case 75:
      v12 = off_27845C6C8;
      goto LABEL_366;
    case 76:
      v12 = off_27845C6D0;
      goto LABEL_366;
    case 77:
      v12 = off_27845C6D8;
      goto LABEL_366;
    case 78:
      v12 = off_27845C6E8;
      goto LABEL_366;
    case 79:
      v12 = off_27845C6F0;
      goto LABEL_366;
    case 80:
      v12 = off_27845C6F8;
      goto LABEL_366;
    case 81:
      v12 = off_27845C710;
      goto LABEL_366;
    case 82:
      v12 = off_27845C718;
      goto LABEL_366;
    case 83:
      v12 = off_27845C730;
      goto LABEL_366;
    case 84:
      v12 = off_27845C738;
      goto LABEL_366;
    case 85:
      v12 = off_27845C740;
      goto LABEL_366;
    case 86:
      v12 = off_27845C758;
      goto LABEL_366;
    case 87:
      v12 = off_27845C760;
      goto LABEL_366;
    case 88:
      v12 = off_27845C768;
      goto LABEL_366;
    case 89:
      v12 = off_27845C770;
      goto LABEL_366;
    case 90:
      v12 = off_27845C780;
      goto LABEL_366;
    case 91:
      v12 = off_27845C790;
      goto LABEL_366;
    case 92:
      v12 = off_27845C7A0;
      goto LABEL_366;
    case 93:
      v12 = off_27845C7A8;
      goto LABEL_366;
    case 94:
      v12 = off_27845C7B8;
      goto LABEL_366;
    case 95:
      v12 = off_27845C7C8;
      goto LABEL_366;
    case 96:
      v12 = off_27845C818;
      goto LABEL_366;
    case 97:
      v12 = off_27845C820;
      goto LABEL_366;
    case 98:
      v12 = off_27845C828;
      goto LABEL_366;
    case 99:
      v12 = off_27845C830;
      goto LABEL_366;
    case 100:
      v12 = off_27845C858;
      goto LABEL_366;
    case 101:
      v12 = off_27845C860;
      goto LABEL_366;
    case 102:
      v12 = off_27845C868;
      goto LABEL_366;
    case 103:
      v12 = off_27845C870;
      goto LABEL_366;
    case 104:
      v12 = off_27845C898;
      goto LABEL_366;
    case 105:
      v12 = off_27845C8A8;
      goto LABEL_366;
    case 106:
      v12 = off_27845C8B0;
      goto LABEL_366;
    case 107:
      v12 = off_27845C8C0;
      goto LABEL_366;
    case 108:
      v12 = off_27845C8C8;
      goto LABEL_366;
    case 109:
      v12 = off_27845C8D0;
      goto LABEL_366;
    case 110:
      v12 = off_27845C8D8;
      goto LABEL_366;
    case 111:
      v12 = off_27845C8E0;
      goto LABEL_366;
    case 112:
      v12 = off_27845C8E8;
      goto LABEL_366;
    case 113:
      v12 = off_27845C8F0;
      goto LABEL_366;
    case 114:
      v12 = off_27845C8F8;
      goto LABEL_366;
    case 115:
      v12 = off_27845C900;
      goto LABEL_366;
    case 116:
      v12 = off_27845C918;
      goto LABEL_366;
    case 117:
      v12 = off_27845C920;
      goto LABEL_366;
    case 118:
      v12 = off_27845C928;
      goto LABEL_366;
    case 119:
      v12 = off_27845C938;
      goto LABEL_366;
    case 120:
      v12 = off_27845C940;
      goto LABEL_366;
    case 121:
      v12 = off_27845C950;
      goto LABEL_366;
    case 122:
      v12 = off_27845C980;
      goto LABEL_366;
    case 123:
      v12 = off_27845C988;
      goto LABEL_366;
    case 124:
      v12 = off_27845C990;
      goto LABEL_366;
    case 125:
      v12 = off_27845C998;
      goto LABEL_366;
    case 126:
      v12 = off_27845C9A0;
      goto LABEL_366;
    case 127:
      v12 = off_27845C9A8;
      goto LABEL_366;
    case 128:
      v12 = off_27845C9B0;
      goto LABEL_366;
    case 129:
      v12 = off_27845C9B8;
      goto LABEL_366;
    case 130:
      v12 = off_27845C9C0;
      goto LABEL_366;
    case 131:
      v12 = off_27845C9D0;
      goto LABEL_366;
    case 132:
      v12 = off_27845C9D8;
      goto LABEL_366;
    case 133:
      v12 = off_27845C9F0;
      goto LABEL_366;
    case 134:
      v12 = off_27845C9F8;
      goto LABEL_366;
    case 135:
      v12 = off_27845CA00;
      goto LABEL_366;
    case 136:
      v12 = off_27845CA08;
      goto LABEL_366;
    case 137:
      v12 = off_27845CA10;
      goto LABEL_366;
    case 138:
      v12 = off_27845CA18;
      goto LABEL_366;
    case 139:
      v12 = off_27845CA38;
      goto LABEL_366;
    case 140:
      v12 = off_27845CA50;
      goto LABEL_366;
    case 141:
      v12 = off_27845CA58;
      goto LABEL_366;
    case 142:
      v12 = off_27845CA60;
      goto LABEL_366;
    case 143:
      v12 = off_27845CA68;
      goto LABEL_366;
    case 144:
      v12 = off_27845CA88;
      goto LABEL_366;
    case 145:
      v12 = off_27845CAA0;
      goto LABEL_366;
    case 146:
      v12 = off_27845CAB0;
      goto LABEL_366;
    case 147:
      v12 = off_27845CAB8;
      goto LABEL_366;
    case 148:
      v12 = off_27845CAE0;
      goto LABEL_366;
    case 149:
      v12 = off_27845CAE8;
      goto LABEL_366;
    case 150:
      v12 = off_27845CAF8;
      goto LABEL_366;
    case 151:
      v12 = off_27845CB00;
      goto LABEL_366;
    case 152:
      v12 = off_27845CB38;
      goto LABEL_366;
    case 153:
      v12 = off_27845CB40;
      goto LABEL_366;
    case 154:
      v12 = off_27845CB58;
      goto LABEL_366;
    case 155:
      v12 = off_27845CB70;
      goto LABEL_366;
    case 156:
      v12 = off_27845CB78;
      goto LABEL_366;
    case 157:
      v12 = off_27845CB80;
      goto LABEL_366;
    case 158:
      v12 = off_27845CBA0;
      goto LABEL_366;
    case 159:
      v12 = off_27845CBA8;
      goto LABEL_366;
    case 160:
      v12 = off_27845CBB0;
      goto LABEL_366;
    case 161:
      v12 = off_27845CBB8;
      goto LABEL_366;
    case 162:
      v12 = off_27845CBC0;
      goto LABEL_366;
    case 163:
      v12 = off_27845CBC8;
      goto LABEL_366;
    case 164:
      v12 = off_27845CBD0;
      goto LABEL_366;
    case 165:
      v12 = off_27845CBD8;
      goto LABEL_366;
    case 166:
      v12 = off_27845CBE8;
      goto LABEL_366;
    case 167:
      v12 = off_27845CC38;
      goto LABEL_366;
    case 168:
      v12 = off_27845CA98;
      goto LABEL_366;
    case 169:
      v12 = off_27845CCD0;
      goto LABEL_366;
    case 170:
      v12 = off_27845CC98;
      goto LABEL_366;
    case 171:
      v12 = off_27845CCF8;
      goto LABEL_366;
    case 172:
      v12 = off_27845CCE8;
      goto LABEL_366;
    case 173:
      v12 = off_27845CCF0;
      goto LABEL_366;
    case 174:
      v12 = off_27845CCE0;
      goto LABEL_366;
    case 175:
      v12 = off_27845CC70;
      goto LABEL_366;
    case 176:
      goto LABEL_366;
    case 177:
      v12 = off_27845CD08;
      goto LABEL_366;
    case 178:
      v12 = off_27845CC90;
      goto LABEL_366;
    case 179:
      v12 = off_27845CCC8;
      goto LABEL_366;
    case 180:
      v12 = off_27845CCB8;
      goto LABEL_366;
    case 181:
      v12 = off_27845CCC0;
      goto LABEL_366;
    case 182:
      v12 = off_27845CCB0;
      goto LABEL_366;
    case 183:
      v12 = off_27845CCA0;
      goto LABEL_366;
    case 184:
      v12 = off_27845CCD8;
      goto LABEL_366;
    case 185:
      v12 = off_27845C4D8;
      goto LABEL_366;
    case 186:
      v12 = off_27845C7F0;
      goto LABEL_366;
    case 187:
      v12 = off_27845C7F8;
      goto LABEL_366;
    case 188:
      v12 = off_27845C808;
      goto LABEL_366;
    case 189:
      v12 = off_27845C800;
      goto LABEL_366;
    case 190:
      v12 = off_27845C810;
      goto LABEL_366;
    case 191:
      v12 = off_27845CC48;
      goto LABEL_366;
    case 192:
      v12 = off_27845CC50;
      goto LABEL_366;
    case 193:
      v12 = off_27845CC58;
      goto LABEL_366;
    case 194:
      v12 = off_27845C2B0;
      goto LABEL_366;
    case 195:
      v12 = off_27845C2B8;
      goto LABEL_366;
    case 196:
      v12 = off_27845C4E8;
      goto LABEL_366;
    case 197:
      v12 = off_27845C4F0;
      goto LABEL_366;
    case 198:
      v12 = off_27845CA48;
      goto LABEL_366;
    case 199:
      v12 = off_27845C648;
      goto LABEL_366;
    case 200:
      v12 = off_27845C958;
      goto LABEL_366;
    case 201:
      v12 = off_27845C3E0;
      goto LABEL_366;
    case 202:
      v12 = off_27845C3E8;
      goto LABEL_366;
    case 203:
      v12 = off_27845C4E0;
      goto LABEL_366;
    case 204:
      v12 = off_27845CC00;
      goto LABEL_366;
    case 205:
      v12 = off_27845C7C0;
      goto LABEL_366;
    case 206:
      v12 = off_27845CBF0;
      goto LABEL_366;
    case 207:
      v12 = off_27845C4A0;
      goto LABEL_366;
    case 208:
      v12 = off_27845C4B0;
      goto LABEL_366;
    case 209:
      v12 = off_27845C4B8;
      goto LABEL_366;
    case 210:
      v12 = off_27845C498;
      goto LABEL_366;
    case 211:
      v12 = off_27845C4C0;
      goto LABEL_366;
    case 212:
      v12 = off_27845C4C8;
      goto LABEL_366;
    case 213:
      v12 = off_27845C518;
      goto LABEL_366;
    case 214:
      v12 = off_27845CC40;
      goto LABEL_366;
    case 215:
      v12 = off_27845CC60;
      goto LABEL_366;
    case 216:
      v12 = off_27845CAC0;
      goto LABEL_366;
    case 217:
      v12 = off_27845CAC8;
      goto LABEL_366;
    case 218:
      v12 = off_27845CAD0;
      goto LABEL_366;
    case 219:
      v12 = off_27845CA40;
      goto LABEL_366;
    case 220:
      v12 = off_27845CB68;
      goto LABEL_366;
    case 221:
      v12 = off_27845C478;
      goto LABEL_366;
    case 222:
      v12 = off_27845C580;
      goto LABEL_366;
    case 223:
      v12 = off_27845C470;
      goto LABEL_366;
    case 224:
      v12 = off_27845C528;
      goto LABEL_366;
    case 225:
      v12 = off_27845C5B8;
      goto LABEL_366;
    case 226:
      v12 = off_27845C880;
      goto LABEL_366;
    case 227:
      v12 = off_27845C5A0;
      goto LABEL_366;
    case 228:
      v12 = off_27845C420;
      goto LABEL_366;
    case 229:
      v12 = off_27845C590;
      goto LABEL_366;
    case 230:
      v12 = off_27845C598;
      goto LABEL_366;
    case 231:
      v12 = off_27845CAA8;
      goto LABEL_366;
    case 232:
      v12 = off_27845C238;
      goto LABEL_366;
    case 233:
      v12 = off_27845C398;
      goto LABEL_366;
    case 234:
      v12 = off_27845C230;
      goto LABEL_366;
    case 235:
      v12 = off_27845C610;
      goto LABEL_366;
    case 236:
      v12 = off_27845C430;
      goto LABEL_366;
    case 237:
      v12 = off_27845C248;
      goto LABEL_366;
    case 238:
      v12 = off_27845C250;
      goto LABEL_366;
    case 239:
      v12 = off_27845C708;
      goto LABEL_366;
    case 240:
      v12 = off_27845C700;
      goto LABEL_366;
    case 241:
      v12 = off_27845CB08;
      goto LABEL_366;
    case 242:
      v12 = off_27845C280;
      goto LABEL_366;
    case 243:
      v12 = off_27845C7E0;
      goto LABEL_366;
    case 244:
      v12 = off_27845C538;
      goto LABEL_366;
    case 245:
      v12 = off_27845C890;
      goto LABEL_366;
    case 246:
      v12 = off_27845C2E0;
      goto LABEL_366;
    case 247:
      v12 = off_27845C2F0;
      goto LABEL_366;
    case 248:
      v12 = off_27845CB88;
      goto LABEL_366;
    case 249:
      v12 = off_27845C908;
      goto LABEL_366;
    case 250:
      v12 = off_27845C7D0;
      goto LABEL_366;
    case 251:
      v12 = off_27845C3D8;
      goto LABEL_366;
    case 252:
      v12 = off_27845C240;
      goto LABEL_366;
    case 253:
      v12 = off_27845C838;
      goto LABEL_366;
    case 254:
      v12 = off_27845CB48;
      goto LABEL_366;
    case 255:
      v12 = off_27845C358;
      goto LABEL_366;
    case 256:
      v12 = off_27845C2E8;
      goto LABEL_366;
    case 257:
      v12 = off_27845C558;
      goto LABEL_366;
    case 258:
      v12 = off_27845C258;
      goto LABEL_366;
    case 259:
      v12 = off_27845C260;
      goto LABEL_366;
    case 260:
      v12 = off_27845C7E8;
      goto LABEL_366;
    case 261:
      v12 = off_27845C438;
      goto LABEL_366;
    case 262:
      v12 = off_27845C5C8;
      goto LABEL_366;
    case 263:
      v12 = off_27845C5B0;
      goto LABEL_366;
    case 264:
      v12 = off_27845C458;
      goto LABEL_366;
    case 265:
      v12 = off_27845C450;
      goto LABEL_366;
    case 266:
      v12 = off_27845C460;
      goto LABEL_366;
    case 267:
      v12 = off_27845C270;
      goto LABEL_366;
    case 268:
      v12 = off_27845C268;
      goto LABEL_366;
    case 269:
      v12 = off_27845C278;
      goto LABEL_366;
    case 270:
      v12 = off_27845C840;
      goto LABEL_366;
    case 271:
      v12 = off_27845C848;
      goto LABEL_366;
    case 272:
      v12 = off_27845C850;
      goto LABEL_366;
    case 273:
      v12 = off_27845C5D0;
      goto LABEL_366;
    case 274:
      v12 = off_27845C5D8;
      goto LABEL_366;
    case 275:
      v12 = off_27845C5E0;
      goto LABEL_366;
    case 276:
      v12 = off_27845C6E0;
      goto LABEL_366;
    case 277:
      v12 = off_27845C4A8;
      goto LABEL_366;
    case 278:
      v12 = off_27845CA80;
      goto LABEL_366;
    case 279:
      v12 = off_27845CC88;
      goto LABEL_366;
    case 280:
      v12 = off_27845C640;
      goto LABEL_366;
    case 285:
      v12 = off_27845CB90;
      goto LABEL_366;
    case 286:
      v12 = off_27845C9E8;
      goto LABEL_366;
    case 287:
      v12 = off_27845C8B8;
      goto LABEL_366;
    case 288:
      v12 = off_27845CBF8;
      goto LABEL_366;
    case 289:
      v12 = off_27845C350;
      goto LABEL_366;
    case 290:
      v12 = off_27845C3D0;
      goto LABEL_366;
    case 291:
      v12 = off_27845C7B0;
      goto LABEL_366;
    case 292:
      v12 = off_27845C878;
      goto LABEL_366;
    case 293:
      v12 = off_27845C888;
      goto LABEL_366;
    case 294:
      v12 = off_27845C910;
      goto LABEL_366;
    case 295:
      v12 = off_27845C948;
      goto LABEL_366;
    case 296:
      v12 = off_27845C550;
      goto LABEL_366;
    case 297:
      v12 = off_27845C8A0;
      goto LABEL_366;
    case 298:
      v12 = off_27845CA70;
      goto LABEL_366;
    case 299:
      v12 = off_27845CA78;
      goto LABEL_366;
    case 300:
      v12 = off_27845C3F0;
      goto LABEL_366;
    case 301:
      v12 = off_27845C408;
      goto LABEL_366;
    case 302:
      v12 = off_27845C400;
      goto LABEL_366;
    case 303:
      v12 = off_27845C3F8;
      goto LABEL_366;
    case 304:
      v12 = off_27845C680;
      goto LABEL_366;
    case 305:
      v12 = off_27845C6B0;
      goto LABEL_366;
    case 306:
      v12 = off_27845C668;
      goto LABEL_366;
    case 309:
      v12 = off_27845C748;
      goto LABEL_366;
    case 310:
      v12 = off_27845C778;
      goto LABEL_366;
    case 311:
      v12 = off_27845CC18;
      goto LABEL_366;
    case 312:
      v12 = off_27845CC30;
      goto LABEL_366;
    case 313:
      v12 = off_27845C618;
      goto LABEL_366;
    case 314:
      v12 = off_27845CC20;
      goto LABEL_366;
    case 315:
      v12 = off_27845CC28;
      goto LABEL_366;
    case 316:
      v12 = off_27845CA90;
      goto LABEL_366;
    case 317:
      v12 = off_27845C3A0;
      goto LABEL_366;
    case 318:
      v12 = off_27845CB18;
      goto LABEL_366;
    case 319:
      v12 = off_27845CB20;
      goto LABEL_366;
    case 320:
      v12 = off_27845CB10;
      goto LABEL_366;
    case 321:
      v12 = off_27845C970;
      goto LABEL_366;
    case 322:
      v12 = off_27845C968;
      goto LABEL_366;
    case 323:
      v12 = off_27845C578;
      goto LABEL_366;
    case 324:
      v12 = off_27845C978;
      goto LABEL_366;
    case 325:
      v12 = off_27845C5C0;
      goto LABEL_366;
    case 326:
      v12 = off_27845CC78;
      goto LABEL_366;
    case 327:
      v12 = off_27845CC68;
      goto LABEL_366;
    case 328:
      v12 = off_27845CB28;
      goto LABEL_366;
    case 329:
      v12 = off_27845C338;
      goto LABEL_366;
    case 330:
      v12 = off_27845C288;
      goto LABEL_366;
    case 331:
      v12 = off_27845C298;
      goto LABEL_366;
    case 332:
      v12 = off_27845C2A8;
      goto LABEL_366;
    case 333:
      v12 = off_27845C290;
      goto LABEL_366;
    case 334:
      v12 = off_27845C2A0;
      goto LABEL_366;
    case 335:
      v12 = off_27845C6A0;
      goto LABEL_366;
    case 336:
      v12 = off_27845CAD8;
      goto LABEL_366;
    case 337:
      v12 = off_27845CA30;
      goto LABEL_366;
    case 338:
      v12 = off_27845C9E0;
      goto LABEL_366;
    case 339:
      v12 = off_27845CCA8;
      goto LABEL_366;
    case 340:
      v12 = off_27845CD00;
      goto LABEL_366;
    case 341:
      v12 = off_27845C1E8;
      goto LABEL_366;
    case 342:
      v12 = off_27845C540;
      goto LABEL_366;
    case 343:
      v12 = off_27845CA20;
      goto LABEL_366;
    case 344:
      v12 = off_27845CA28;
      goto LABEL_366;
    case 345:
      v12 = off_27845CB98;
      goto LABEL_366;
    case 346:
      v12 = off_27845C930;
      goto LABEL_366;
    case 347:
      v12 = off_27845CB30;
      goto LABEL_366;
    case 348:
      v12 = off_27845CB50;
      goto LABEL_366;
    case 349:
      v12 = off_27845CB60;
      goto LABEL_366;
    case 350:
      v12 = off_27845CAF0;
      goto LABEL_366;
    case 351:
      v12 = off_27845C490;
      goto LABEL_366;
    case 352:
      v12 = off_27845C510;
      goto LABEL_366;
    case 353:
      v12 = off_27845C308;
      goto LABEL_366;
    case 354:
      v12 = off_27845C300;
      goto LABEL_366;
    case 355:
      v12 = off_27845C5F8;
      goto LABEL_366;
    case 356:
      v12 = off_27845CBE0;
      goto LABEL_366;
    case 357:
      v12 = off_27845CC08;
      goto LABEL_366;
    case 358:
      v12 = off_27845CC10;
      goto LABEL_366;
    case 359:
      v12 = off_27845C750;
      goto LABEL_366;
    case 360:
      v12 = off_27845C788;
      goto LABEL_366;
    case 361:
      v12 = off_27845C798;
      goto LABEL_366;
    case 362:
      v12 = off_27845C7D8;
      goto LABEL_366;
    case 365:
      v12 = off_27845C720;
      goto LABEL_366;
    case 366:
      v12 = off_27845C728;
      goto LABEL_366;
    case 367:
      v12 = off_27845C960;
      goto LABEL_366;
    case 368:
      v12 = off_27845C9C8;
      goto LABEL_366;
    case 369:
      v12 = off_27845C2C8;
      goto LABEL_366;
    case 370:
      v12 = off_27845C2C0;
      goto LABEL_366;
    case 371:
      v12 = off_27845C698;
      goto LABEL_366;
    case 372:
      v12 = off_27845C6B8;
      goto LABEL_366;
    case 373:
      v12 = off_27845C688;
LABEL_366:
      v11 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(*v12, v7, v10, a3);
LABEL_367:
      if (!a4 || !objc_msgSend_isThunk(v11, v7, v8, v9))
      {
        goto LABEL_371;
      }

      v16 = objc_msgSend_copy(v10, v13, v14, v15);
      v20 = objc_msgSend_asThunkValue(v11, v17, v18, v19);
      v24 = objc_msgSend_ast(v20, v21, v22, v23);
      v25 = sub_221250CB8(v24, v16, 0);
      v29 = objc_msgSend_warnings(v11, v26, v27, v28);
      objc_msgSend_attachWarnings_(v25, v30, v29, v31);

      v32 = v25;
      objc_msgSend_takeSideEffectsFrom_(v10, v33, v16, v34);

LABEL_370:
      v11 = v32;
LABEL_371:

      return v11;
    default:
      v16 = objc_msgSend_unsupportedFunctionError(TSCEError, v7, v8, v9);
      v32 = objc_msgSend_raiseErrorOrConvert_(v10, v36, v16, v37);
      goto LABEL_370;
  }
}

uint64_t sub_221255D48(uint64_t a1, const char *a2, char a3, uint64_t a4)
{
  if (a3)
  {
    return a2;
  }

  v6 = a1;
  result = 0x7FFFFFFFLL;
  if (a2 != 0x7FFFFFFF)
  {
    if (a2 < 1)
    {
      if (a2 && v6 < -a2)
      {
        return result;
      }
    }

    else if (999999 - a2 < v6)
    {
      return result;
    }

    if (v6 == 0x7FFFFFFF)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", a4);
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v10);
      v12 = NSStringFromTSUCellCoord();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v11, 195, 0, "Calling TSCEMakeAbsoluteRowFromRelativeRow with an invalid hostCell row: %@", v12);
    }

    else
    {
      result = v6 + a2;
      if (result < 0x7FFFFFFF)
      {
        return result;
      }

      v14 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", a4);
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v17, v8, v11, 191, 0, "overflow in row, input row: %d with host row: %lu", a2, v6);
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
    return 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t sub_221255F08(uint64_t a1, const char *a2, char a3, uint64_t a4)
{
  if (a3)
  {
    return a2;
  }

  v4 = 0x7FFF;
  if (a2 == 0x7FFF)
  {
    return v4;
  }

  if (a2 < 1)
  {
    if ((a2 & 0x80000000) != 0 && -a2 > WORD2(a1))
    {
      return v4;
    }
  }

  else if (999 - a2 < WORD2(a1))
  {
    return v4;
  }

  v4 = WORD2(a1) + a2;
  if ((WORD2(a1) + a2) >= 0x7FFFu)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUColumnIndex TSCEMakeAbsoluteColumnFromRelativeColumn(TSUCellCoord, TSURelativeColumnIndex, BOOL)", a4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 168, 0, "overflow in column");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  return v4;
}

const TSCEFormat **sub_221256020@<X0>(const TSCEFormat **result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  *(a2 + 16) = *(a2 + 16) & 0xC080 | 0x421;
  *(a2 + 18) = *(a2 + 18) & 0xF8 | 1;
  *(a2 + 20) = -50266102;
  *(a2 + 24) = -3;
  *(a2 + 25) &= 0xE0u;
  *(a2 + 26) = 0;
  v3 = *result;
  v4 = result[1];
  if (v4 != *result)
  {
    result = TSCEFormat::operator=(a2, v3);
    for (i = (v3 + 32); i != v4; ++i)
    {
      TSCEFormat::formatByMergingWithFormat(&v8, a2, i, v5, v6);
      result = TSCEFormat::operator=(a2, &v8);
    }
  }

  return result;
}

uint64_t sub_2212560F4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v10 = a3;
  TSUDecimal::operator=();
  if (objc_msgSend_deepType_(v10, v11, v9, v12) == 3)
  {
    v14 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v10, v13, v9, a2, a4, a5);
    objc_msgSend_mapDateToDouble_(TSCECalendar, v15, v14, v16);
    TSUDecimal::operator=();
  }

  else
  {
    v14 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v13, v9, a2, a4, a5);
    if ((objc_msgSend_isNil(v14, v17, v18, v19) & 1) == 0)
    {
      v24 = *objc_msgSend_rawDecimalValue(v14, v20, v21, v22);
    }
  }

  return v24;
}

TSCENumberValue *sub_22125621C(TSUDecimal *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  if (objc_msgSend_deepType_(v9, v11, v10, v12) == 3)
  {
    TSUDecimal::doubleValue(a1);
    v17 = objc_msgSend_dateValueWithDays_(TSCEDateValue, v14, v15, v16);
  }

  else
  {
    v33 = 0;
    v18 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v13, v10, a4, a5, &v33);
    v22 = v33;
    if (v22)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(v10, v19, v22, v21);

      v18 = v22;
    }

    else
    {
      if (objc_msgSend_hasUnits(v18, v19, v20, v21))
      {
        v25 = [TSCENumberValue alloc];
        v29 = objc_msgSend_unit(v18, v26, v27, v28);
        v31 = objc_msgSend_initWithDecimal_baseUnit_(v25, v30, a1, v29);
      }

      else
      {
        v31 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v23, a1, v24);
      }

      v17 = v31;
    }
  }

  return v17;
}

id sub_221256390(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v11 = a1;
  v12 = [TSCEEvaluationContext alloc];
  v14 = objc_msgSend_initWithCalcEngine_containingTable_containingCell_inArrayMode_(v12, v13, v11, a3, a2, 0);
  v18 = objc_msgSend_calcEngine(v14, v15, v16, v17);
  IsRegistered = objc_msgSend_ownerIsRegistered_(v18, v19, *a6, a6[1]);

  if (IsRegistered)
  {
    v23 = [TSCEReferenceValue alloc];
    v74[0] = a4;
    v74[1] = a5;
    v75 = *a6;
    v73 = 0;
    v25 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v23, v24, v14, v74, &v73);
    v29 = objc_msgSend_evaluationStack(v14, v26, v27, v28);
    TSCEEvaluationStack::push_back(v29, v25);
  }

  else
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "TSCEValue *TSCEEvaluateAverageIgnoringError(TSCECalculationEngine *__strong, TSUCellCoord, const TSCEOwnerUID &, TSCERangeCoordinate, const TSCEOwnerUID &)", v22);
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTEvaluation.mm", v36);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v38, v34, v37, 1190, 0, "Unregistered tableUID found when calculating average");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41);
  }

  v42 = objc_msgSend_evaluationStack(v14, v30, v31, v32);
  TSCEEvaluationStack::setArgumentCount(v42, 1u);
  v45 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v43, 15, v44);
  v49 = objc_msgSend_evaluationStack(v14, v46, v47, v48);
  v50 = TSCEEvaluationStack::valueForArgumentAtIndex(v49, 0, v45, v14);
  v72 = 0;
  v52 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v50, v51, v14, v45, 0, 1, &v72);
  v53 = v72;
  v57 = objc_msgSend_evaluationStack(v14, v54, v55, v56);
  TSCEEvaluationStack::clearArgument(v57, v58, v59, v60);
  if (v53)
  {
    v63 = objc_msgSend_errorValue_(TSCEErrorValue, v61, v53, v62);
  }

  else
  {
    v63 = objc_msgSend_averageOfVector_functionSpec_argVector_argumentIndex_criteria_criteriaVectorIndex_ignoreError_(TSCEFunction_AVERAGE, v61, v14, v45, v52, 0, 0, 0, 1);
    if (objc_msgSend_isError(v63, v64, v65, v66))
    {
      v70 = objc_msgSend_nilValue(TSCENilValue, v67, v68, v69);

      v63 = v70;
    }
  }

  return v63;
}

id sub_22125668C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v11 = a1;
  v12 = [TSCEEvaluationContext alloc];
  v14 = objc_msgSend_initWithCalcEngine_containingTable_containingCell_inArrayMode_(v12, v13, v11, a3, a2, 0);
  v18 = objc_msgSend_calcEngine(v14, v15, v16, v17);
  IsRegistered = objc_msgSend_ownerIsRegistered_(v18, v19, *a6, a6[1]);

  if (IsRegistered)
  {
    v23 = [TSCEReferenceValue alloc];
    v76[0] = a4;
    v76[1] = a5;
    v77 = *a6;
    v75 = 0;
    v25 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v23, v24, v14, v76, &v75);
    v29 = objc_msgSend_evaluationStack(v14, v26, v27, v28);
    TSCEEvaluationStack::push_back(v29, v25);
  }

  else
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "NSDictionary<NSString *,NSMutableIndexSet *> *TSCEEvaluateUniqueIgnoringError(TSCECalculationEngine *__strong, TSUCellCoord, const TSCEOwnerUID &, TSCERangeCoordinate, const TSCEOwnerUID &)", v22);
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTEvaluation.mm", v36);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v38, v34, v37, 1235, 0, "Unregistered tableUID found when calculating unique");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41);
  }

  v42 = objc_msgSend_evaluationStack(v14, v30, v31, v32);
  TSCEEvaluationStack::setArgumentCount(v42, 1u);
  v45 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v43, 297, v44);
  v49 = objc_msgSend_evaluationStack(v14, v46, v47, v48);
  v50 = TSCEEvaluationStack::valueForArgumentAtIndex(v49, 0, v45, v14);
  v54 = objc_msgSend_evaluationStack(v14, v51, v52, v53);
  TSCEEvaluationStack::clearArgument(v54, v55, v56, v57);
  v74 = 0;
  v59 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v50, v58, v14, v45, 0, 0, &v74);
  v60 = v74;
  v63 = objc_msgSend_tableResolverForTableUID_(v11, v61, a6, v62);
  v67 = v63;
  if (v63)
  {
    v68 = objc_msgSend_bodyRangeCoordinate(v63, v64, v65, v66);
  }

  else
  {
    v68 = 0;
  }

  if (a5 == 0x7FFFFFFF && (a5 & 0xFFFF00000000) != 0x7FFF00000000 && (a4 & 0xFFFF00000000) != 0x7FFF00000000 && a4 == 0x7FFFFFFFLL)
  {
    objc_msgSend_uniqueIndexForGrid_functionSpec_argumentIndex_considerTypeForUnique_rowOffset_(v59, v64, v14, v45, 0, 0, v68);
  }

  else
  {
    objc_msgSend_uniqueIndexForGrid_functionSpec_argumentIndex_considerTypeForUnique_rowOffset_(v59, v64, v14, v45, 0, 0, a4);
  }
  v72 = ;

  return v72;
}

id sub_221256984(void *a1, uint64_t a2, uint64_t a3, void **a4, void **a5, uint64_t *a6, uint64_t a7, uint64_t a8, double a9)
{
  v16 = a1;
  v17 = [TSCEEvaluationContext alloc];
  v19 = objc_msgSend_initWithCalcEngine_containingTable_containingCell_inArrayMode_(v17, v18, v16, a3, a2, 0);
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v23 = objc_msgSend_calcEngine(v19, v20, v21, v22);
  IsRegistered = objc_msgSend_ownerIsRegistered_(v23, v24, *a6, a6[1]);

  if (IsRegistered)
  {
    v28 = [TSCEReferenceValue alloc];
    v67 = a4;
    v68 = a5;
    v69 = *a6;
    LOBYTE(v66) = 0;
    v30 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v28, v29, v19, &v67, &v66);
    v40 = (v64 - v63) >> 3;
    if ((v40 + 1) >> 61)
    {
      sub_22107C148();
    }

    v41 = (v65 - v63) >> 2;
    if (v41 <= v40 + 1)
    {
      v41 = v40 + 1;
    }

    if ((v65 - v63) >= 0x7FFFFFFFFFFFFFF8)
    {
      v42 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v42 = v41;
    }

    v70 = &v63;
    if (v42)
    {
      sub_22107C1F0(&v63, v42);
    }

    v67 = 0;
    v68 = (8 * v40);
    *(&v69 + 1) = 0;
    *v68 = v30;
    *&v69 = 8 * v40 + 8;
    sub_22107C098(&v63, &v67);
    v43 = v64;
    sub_22107C26C(&v67);
    v64 = v43;
  }

  else
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "TSCEValue *TSCEEvaluateLargeOrSmallIgnoringError(TSCECalculationEngine *__strong, TSUCellCoord, const TSCEOwnerUID &, TSCERangeCoordinate, const TSCEOwnerUID &, BOOL, double, BOOL)", v27);
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTEvaluation.mm", v34);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v36, v32, v35, 1276, 0, "Unregistered tableUID found when calculating large/small");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39);
  }

  TSUDecimal::operator=();
  v66 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v44, &v67, v45);
  sub_221179A54(&v63, &v66);
  if (a7)
  {
    v48 = objc_msgSend_functionSpecForFunctionName_(TSCEFunctionSpec, v46, @"LARGE", v47);
  }

  else
  {
    v48 = objc_msgSend_functionSpecForFunctionName_(TSCEFunctionSpec, v46, @"SMALL", v47);
  }

  v49 = v48;
  v51 = objc_msgSend_evaluateForArgsWithContext_functionSpec_arguments_isLarge_ignoreError_ignoreDuplicate_(TSCEFunction_LARGE, v50, v19, v49, &v63, a7, 1, a8);
  if (objc_msgSend_isNumberValue(v51, v52, v53, v54))
  {
    v62 = 0;
    v56 = objc_msgSend_asNumber_outError_(v51, v55, v19, &v62);
    v57 = v62;
    objc_msgSend_rawDoubleValue(v56, v58, v59, v60);
  }

  else
  {
    v57 = 0;
  }

  v67 = &v63;
  sub_22107C2C0(&v67);

  return v51;
}

void sub_221256D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  sub_22107C2C0(&a14);

  _Unwind_Resume(a1);
}

id sub_221256DB8(void *a1, uint64_t a2, uint64_t a3, TSKFormat *a4, uint64_t a5, uint64_t *a6)
{
  v11 = a1;
  v12 = [TSCEEvaluationContext alloc];
  v14 = objc_msgSend_initWithCalcEngine_containingTable_containingCell_inArrayMode_(v12, v13, v11, a3, a2, 0);
  v18 = objc_msgSend_calcEngine(v14, v15, v16, v17);
  IsRegistered = objc_msgSend_ownerIsRegistered_(v18, v19, *a6, a6[1]);

  if (IsRegistered)
  {
    v23 = [TSCEReferenceValue alloc];
    v76._tskFormat = a4;
    *&v76._formatType = a5;
    *&v76._durationFormat = *a6;
    v75 = 0;
    v25 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v23, v24, v14, &v76, &v75);
    v29 = objc_msgSend_evaluationStack(v14, v26, v27, v28);
    TSCEEvaluationStack::push_back(v29, v25);
  }

  else
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "TSCEValue *TSCEEvaluateCountIgnoringError(TSCECalculationEngine *__strong, TSUCellCoord, const TSCEOwnerUID &, TSCERangeCoordinate, const TSCEOwnerUID &)", v22);
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTEvaluation.mm", v36);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v38, v34, v37, 1320, 0, "Unregistered tableUID found when calculating count");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41);
  }

  v42 = objc_msgSend_evaluationStack(v14, v30, v31, v32);
  TSCEEvaluationStack::setArgumentCount(v42, 1u);
  v45 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v43, 30, v44);
  v49 = objc_msgSend_evaluationStack(v14, v46, v47, v48);
  v50 = TSCEEvaluationStack::valueForArgumentAtIndex(v49, 0, v45, v14);
  v54 = objc_msgSend_evaluationStack(v14, v51, v52, v53);
  TSCEEvaluationStack::clearArgument(v54, v55, v56, v57);
  v74 = 0;
  v59 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v50, v58, v14, v45, 0, 0, &v74);
  v60 = v74;
  v62 = objc_msgSend_getResultWithVector_context_functionSpec_index_countBehavior_(TSCEFunction_COUNT, v61, v59, v14, v45, 0, 0);
  v65 = objc_msgSend_errorWithContext_(v62, v63, v14, v64);

  if (v65)
  {
    v69 = objc_msgSend_nilValue(TSCENilValue, v66, v67, v68);

    v62 = v69;
  }

  else
  {
    TSCEFormat::TSCEFormat(&v73, 256);
    TSCEFormat::TSCEFormat(&v76, &v73);
    objc_msgSend_setFormat_(v62, v70, &v76, v71);
  }

  return v62;
}

id sub_2212570BC(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v81 = 0;
  v14 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v13, v9, a2, 0, &v81);
  v15 = v81;
  v19 = objc_msgSend_floor(v14, v16, v17, v18);

  if (v15)
  {
    v22 = objc_msgSend_raiseErrorOrConvert_(v9, v20, v15, v21);
    goto LABEL_27;
  }

  v26 = objc_msgSend_errorForDuration_argumentIndex_(v19, v20, a2, 0);
  if (v26)
  {
    v22 = objc_msgSend_raiseErrorOrConvert_(v9, v23, v26, v25);
    v15 = v26;
    goto LABEL_27;
  }

  v73 = v11;
  v74 = objc_msgSend_zero(TSCENumberValue, v23, v24, v25);
  if (objc_msgSend_lt_(v12, v27, v74, v28))
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "TSCEValue *TSCEMultifactorial(TSCEEvaluationContext *__strong, TSCEFunctionSpec *__unsafe_unretained, TSCEValue *__strong, TSCENumberValue *__strong, TSCENumberValue *__strong)", v30);
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTEvaluation.mm", v34);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v36, v32, v35, 1363, 0, "Multifactorial shouldn't have i less than zero.  Please file a bug.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39);
  }

  v40 = v19;
  v80 = 0;
  v42 = objc_msgSend_eq_outError_(v40, v41, v74, &v80);
  v43 = v80;
  v45 = v43;
  if (v42)
  {
    goto LABEL_10;
  }

  v79 = v43;
  v46 = objc_msgSend_eq_outError_(v40, v44, v12, &v79);
  v47 = v79;

  if (v46)
  {
    v45 = v47;
LABEL_10:
    TSUDecimal::operator=();
    v51 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v49, &v76, v50);

    v54 = v40;
    v40 = v51;
    goto LABEL_11;
  }

  v78 = v47;
  v56 = objc_msgSend_subtract_functionSpec_outError_(v40, v48, v73, a2, &v78);
  v45 = v78;

  v54 = v56;
  while (objc_msgSend_gt_(v54, v57, v74, v58) && objc_msgSend_gt_(v54, v59, v12, v61) && (objc_msgSend_isInf(v40, v59, v60, v61) & 1) == 0)
  {
    v55 = objc_msgSend_multiply_context_(v40, v59, v54, v9);

    v77 = v45;
    v19 = objc_msgSend_subtract_functionSpec_outError_(v54, v62, v73, a2, &v77);
    v15 = v77;

    v45 = 0;
    v54 = v19;
    v40 = v55;
    if (v15)
    {
      v22 = objc_msgSend_raiseErrorOrConvert_(v9, v57, v15, v58);
      goto LABEL_26;
    }
  }

  if (objc_msgSend_isInf(v40, v59, v60, v61))
  {
    v64 = objc_msgSend_functionName(a2, v52, v63, v53);
    v67 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v65, v64, v66);
    v22 = objc_msgSend_raiseErrorOrConvert_(v9, v68, v67, v69);

    goto LABEL_13;
  }

LABEL_11:
  if (!v45)
  {
    if (v10)
    {
      objc_msgSend_formatWithContext_(v10, v52, v9, v53);
    }

    else
    {
      memset(&v75, 0, sizeof(v75));
    }

    TSCEFormat::TSCEFormat(&v76, &v75);
    objc_msgSend_setFormat_(v40, v70, &v76, v71);
    v22 = v40;
    v15 = 0;
    v19 = v54;
    v55 = v22;
    goto LABEL_26;
  }

  v22 = objc_msgSend_raiseErrorOrConvert_(v9, v52, v45, v53);
LABEL_13:
  v15 = v45;
  v19 = v54;
  v55 = v40;
LABEL_26:

  v11 = v73;
LABEL_27:

  return v22;
}

TSUCellCoord sub_2212575BC(void *a1, TSCERangeRef *this, uint64_t a3)
{
  if (TSCERangeRef::isSingleCell(this) && !TSCERangeRef::isSpanning(this))
  {
    return this->range._topLeft;
  }

  v8 = objc_msgSend_tableResolverForTableUID_(a1, v6, &this->_tableUID, v7);
  if (!v8)
  {
    return this->range._topLeft;
  }

  v10 = v8;
  v11 = objc_msgSend_resolvedCellCoordForIntersection_hostCell_useImplicitIntersection_(v8, v9, this, a3, 1);

  return v11;
}

void sub_221257650(void *a1, uint64_t a2, void *a3, void *a4)
{
  v24 = a3;
  v6 = a4;
  v10 = objc_msgSend_length(a1, v7, v8, v9);
  v15 = objc_msgSend_length(v6, v11, v12, v13);
  for (i = 0; i != 0x7FFFFFFFFFFFFFFFLL; v10 = objc_msgSend_length(a1, v21, v22, v23) - i)
  {
    v17 = objc_msgSend_rangeOfCharacterFromSet_options_range_(a1, v14, v24, 0, i, v10);
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v19 = v17;
    v20 = v18;
    objc_msgSend_replaceCharactersInRange_withString_(a1, v18, v17, v18, v6);
    i = &v20[v19 + &v20[-v15]];
  }
}

void sub_221257730(uint64_t a1)
{
  if (!qword_27CFB5358)
  {
    obj = objc_opt_class();
    objc_sync_enter(obj);
    if (!qword_27CFB5358)
    {
      v1 = objc_alloc(MEMORY[0x277CCACA8]);
      v4 = objc_msgSend_initWithFormat_(v1, v2, @"'%C", v3, 65287);
      v5 = qword_27CFB5360;
      qword_27CFB5360 = v4;

      v6 = objc_alloc(MEMORY[0x277CCACA8]);
      v9 = objc_msgSend_initWithFormat_(v6, v7, @"%C", v8, 8217);
      v10 = qword_27CFB5368;
      qword_27CFB5368 = v9;

      v11 = objc_alloc(MEMORY[0x277CCACA8]);
      v14 = objc_msgSend_initWithFormat_(v11, v12, @"'%C", v13, 8217);
      v15 = qword_27CFB5370;
      qword_27CFB5370 = v14;

      v16 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = objc_msgSend_initWithFormat_(v16, v17, @"%C", v18, 8216);
      v20 = qword_27CFB5378;
      qword_27CFB5378 = v19;

      v21 = objc_alloc(MEMORY[0x277CCACA8]);
      v24 = objc_msgSend_initWithFormat_(v21, v22, @"'%C", v23, 8216);
      v25 = qword_27CFB5380;
      qword_27CFB5380 = v24;

      v26 = objc_alloc(MEMORY[0x277CCACA8]);
      v29 = objc_msgSend_initWithFormat_(v26, v27, @"%C", v28, 65287);
      v30 = qword_27CFB5358;
      qword_27CFB5358 = v29;

      v33 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v31, @"%C%C%C%%C", v32, 0xFFFFLL, 65520, 65520);
      v34 = objc_alloc(MEMORY[0x277CCACA8]);
      v37 = objc_msgSend_initWithFormat_(v34, v35, v33, v36, 65532);
      v38 = qword_27CFB5388;
      qword_27CFB5388 = v37;

      v39 = objc_alloc(MEMORY[0x277CCACA8]);
      v42 = objc_msgSend_initWithFormat_(v39, v40, v33, v41, 65533);
      v43 = qword_27CFB5390;
      qword_27CFB5390 = v42;

      v44 = objc_alloc(MEMORY[0x277CCACA8]);
      v47 = objc_msgSend_initWithFormat_(v44, v45, v33, v46, 65534);
      v48 = qword_27CFB5398;
      qword_27CFB5398 = v47;

      v49 = objc_alloc(MEMORY[0x277CCACA8]);
      v52 = objc_msgSend_initWithFormat_(v49, v50, v33, v51, 0xFFFFLL);
      v53 = qword_27CFB53A0;
      qword_27CFB53A0 = v52;

      __dmb(0xBu);
    }

    objc_sync_exit(obj);
  }
}

uint64_t sub_221257994(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_tsce_p_initializeQuotes(a1, a2, a3, a4);
  v8 = objc_msgSend_tsce_characterSetRequiringSingleQuotes(MEMORY[0x277CCA900], v5, v6, v7);
  v12 = objc_msgSend_tsce_internationalWhitespaceCharacterSet(MEMORY[0x277CCA900], v9, v10, v11);
  v16 = objc_msgSend_tsce_singleQuoteCharacterSet(MEMORY[0x277CCA900], v13, v14, v15);
  v20 = objc_msgSend_length(a1, v17, v18, v19);
  if (objc_msgSend_rangeOfCharacterFromSet_(a1, v21, v8, v22) != 0x7FFFFFFFFFFFFFFFLL || v20 && ((v25 = objc_msgSend_characterAtIndex_(a1, v23, 0, v24), (objc_msgSend_characterIsMember_(v12, v26, v25, v27) & 1) != 0) || (v31 = objc_msgSend_length(a1, v28, v29, v30), v34 = objc_msgSend_characterAtIndex_(a1, v32, v31 - 1, v33), (objc_msgSend_characterIsMember_(v12, v35, v34, v36) & 1) != 0) || (v39 = objc_msgSend_characterAtIndex_(a1, v37, 0, v38), (objc_msgSend_characterIsMember_(v16, v40, v39, v41) & 1) != 0) || (objc_msgSend_tsce_periodCharacterSet(MEMORY[0x277CCA900], v42, v43, v44), v45 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend_characterAtIndex_(a1, v46, 0, v47), IsMember = objc_msgSend_characterIsMember_(v45, v49, v48, v50), v45, (IsMember & 1) != 0)))
  {
    LOBYTE(v52) = 1;
  }

  else
  {
    v53 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v23, a1, v24);
    v52 = 0;
    if ((objc_msgSend_isAtEnd(v53, v54, v55, v56) & 1) == 0)
    {
      do
      {
        objc_msgSend_scanUpToCharactersFromSet_intoString_(v53, v57, v12, 0);
        objc_msgSend_scanCharactersFromSet_intoString_(v53, v58, v12, 0);
        v52 |= objc_msgSend_scanCharactersFromSet_intoString_(v53, v59, v16, 0);
      }

      while (!objc_msgSend_isAtEnd(v53, v60, v61, v62));
    }
  }

  return v52 & 1;
}

id sub_221257B34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if ((a3 & 1) != 0 || (v5 = objc_msgSend_tsce_needsReferenceSingleQuoteEscaping(a1, a1, a3, a4), v4 = a1, v5))
  {
    v6 = objc_msgSend_mutableCopyWithZone_(v4, v4, 0, a4);
    v10 = objc_msgSend_length(v6, v7, v8, v9);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v6, v11, @"'", @"''", 2, 0, v10);
    v12 = qword_27CFB5358;
    v13 = qword_27CFB5360;
    v17 = objc_msgSend_length(v6, v14, v15, v16);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v6, v18, v12, v13, 2, 0, v17);
    v19 = qword_27CFB5368;
    v20 = qword_27CFB5370;
    v24 = objc_msgSend_length(v6, v21, v22, v23);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v6, v25, v19, v20, 2, 0, v24);
    v26 = qword_27CFB5378;
    v27 = qword_27CFB5380;
    v31 = objc_msgSend_length(v6, v28, v29, v30);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v6, v32, v26, v27, 2, 0, v31);
    objc_msgSend_insertString_atIndex_(v6, v33, @"'", 0);
    v37 = objc_msgSend_length(v6, v34, v35, v36);
    objc_msgSend_insertString_atIndex_(v6, v38, @"'", v37);
    return v6;
  }

  else
  {

    return a1;
  }
}

id sub_221257CA4(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_tsce_newStringByForcingSingleQuoteEscapes_(a1, a2, 1, a4);

  return v4;
}

id sub_221257CD0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_tsce_newStringByForcingSingleQuoteEscapes_(a1, a2, 0, a4);

  return v4;
}

id sub_221257CFC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_tsce_newStringByForcingSingleQuoteEscapes_(a1, a2, a3, a4);

  return v4;
}

id sub_221257D2C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_tsce_p_initializeQuotes(a1, a2, a3, a4);
  v8 = objc_msgSend_tsce_singleQuoteCharacterSet(MEMORY[0x277CCA900], v5, v6, v7);
  v12 = objc_msgSend_tsce_internationalWhitespaceCharacterSet(MEMORY[0x277CCA900], v9, v10, v11);
  v15 = objc_msgSend_stringByTrimmingCharactersInSet_(a1, v13, v12, v14);

  if (objc_msgSend_length(v15, v16, v17, v18) >= 2 && (v21 = objc_msgSend_characterAtIndex_(v15, v19, 0, v20), objc_msgSend_characterIsMember_(v8, v22, v21, v23)) && (v27 = objc_msgSend_length(v15, v24, v25, v26), v30 = objc_msgSend_characterAtIndex_(v15, v28, v27 - 1, v29), objc_msgSend_characterIsMember_(v8, v31, v30, v32)))
  {
    v35 = objc_msgSend_mutableCopyWithZone_(v15, v33, 0, v34);
    v39 = objc_msgSend_length(v35, v36, v37, v38);
    objc_msgSend_deleteCharactersInRange_(v35, v40, v39 - 1, 1);
    objc_msgSend_deleteCharactersInRange_(v35, v41, 0, 1);
    if (objc_msgSend_length(v35, v42, v43, v44))
    {
      v48 = objc_msgSend_length(v35, v45, v46, v47);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v35, v49, @"''", @"'", 2, 0, v48);
      v50 = qword_27CFB5360;
      v51 = qword_27CFB5358;
      v55 = objc_msgSend_length(v35, v52, v53, v54);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v35, v56, v50, v51, 2, 0, v55);
      v57 = qword_27CFB5370;
      v58 = qword_27CFB5368;
      v62 = objc_msgSend_length(v35, v59, v60, v61);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v35, v63, v57, v58, 2, 0, v62);
      v64 = qword_27CFB5380;
      v65 = qword_27CFB5378;
      v69 = objc_msgSend_length(v35, v66, v67, v68);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v35, v70, v64, v65, 2, 0, v69);
    }
  }

  else
  {
    v35 = a1;
  }

  return v35;
}

uint64_t sub_221257F1C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_tsce_singleQuoteCharacterSet(MEMORY[0x277CCA900], a2, a3, a4);
  if (objc_msgSend_length(a1, v6, v7, v8) >= 2 && (v11 = objc_msgSend_characterAtIndex_(a1, v9, 0, v10), objc_msgSend_characterIsMember_(v5, v12, v11, v13)))
  {
    v17 = objc_msgSend_length(a1, v14, v15, v16);
    v20 = objc_msgSend_characterAtIndex_(a1, v18, v17 - 1, v19);
    IsMember = objc_msgSend_characterIsMember_(v5, v21, v20, v22);
  }

  else
  {
    IsMember = 0;
  }

  return IsMember;
}

id sub_221257FC4(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  objc_msgSend_tsce_p_initializeQuotes(a1, a2, a3, a4);
  v10 = objc_msgSend_tsce_singleQuoteCharacterSet(MEMORY[0x277CCA900], v7, v8, v9);
  v14 = objc_msgSend_tsce_internationalWhitespaceCharacterSet(MEMORY[0x277CCA900], v11, v12, v13);
  v17 = objc_msgSend_stringByTrimmingCharactersInSet_(a1, v15, v14, v16);

  v21 = objc_msgSend_length(v17, v18, v19, v20);
  if (v21 >= objc_msgSend_length(a1, v22, v23, v24))
  {
    v31 = &stru_2834BADA0;
  }

  else
  {
    v28 = objc_msgSend_length(v17, v25, v26, v27);
    v31 = objc_msgSend_substringFromIndex_(a1, v29, v28, v30);
  }

  if (!objc_msgSend_length(v17, v25, v26, v27))
  {
    goto LABEL_14;
  }

  v34 = objc_msgSend_characterAtIndex_(v17, v32, 0, v33);
  IsMember = objc_msgSend_characterIsMember_(v10, v35, v34, v36);
  if (IsMember)
  {
    if ((v5 & 1) == 0 && objc_msgSend_length(a1, v37, v38, v39) == 2)
    {
      v41 = objc_msgSend_characterAtIndex_(a1, v37, 1, v39);
      if (objc_msgSend_characterIsMember_(v10, v42, v41, v43))
      {
        v44 = objc_msgSend_substringFromIndex_(a1, v37, 1, v39);
LABEL_15:
        v100 = v44;
        goto LABEL_26;
      }
    }
  }

  if (!IsMember)
  {
LABEL_14:
    v44 = a1;
    goto LABEL_15;
  }

  v45 = objc_msgSend_mutableCopyWithZone_(v17, v37, 0, v39);
  objc_msgSend_deleteCharactersInRange_(v45, v46, 0, 1);
  if (objc_msgSend_length(v45, v47, v48, v49))
  {
    objc_msgSend_rangeOfString_(v45, v50, qword_27CFB5388, v52);
    objc_msgSend_rangeOfString_(v45, v53, qword_27CFB5390, v54);
    objc_msgSend_rangeOfString_(v45, v55, qword_27CFB53A0, v56);
    objc_msgSend_rangeOfString_(v45, v57, qword_27CFB5398, v58);
    v59 = qword_27CFB5388;
    v63 = objc_msgSend_length(v45, v60, v61, v62);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v45, v64, @"''", v59, 2, 0, v63);
    v65 = qword_27CFB5360;
    v66 = qword_27CFB5390;
    v70 = objc_msgSend_length(v45, v67, v68, v69);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v45, v71, v65, v66, 2, 0, v70);
    v72 = qword_27CFB5370;
    v73 = qword_27CFB53A0;
    v77 = objc_msgSend_length(v45, v74, v75, v76);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v45, v78, v72, v73, 2, 0, v77);
    v79 = qword_27CFB5380;
    v80 = qword_27CFB5398;
    v84 = objc_msgSend_length(v45, v81, v82, v83);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v45, v85, v79, v80, 2, 0, v84);
    v89 = objc_msgSend_length(v45, v86, v87, v88) - 1;
    v92 = objc_msgSend_characterAtIndex_(v45, v90, v89, v91);
    if (objc_msgSend_characterIsMember_(v10, v93, v92, v94))
    {
      objc_msgSend_deleteCharactersInRange_(v45, v95, v89, 1);
    }

    else
    {
      objc_msgSend_appendString_(v45, v95, v31, v96);

      v31 = &stru_2834BADA0;
    }

    if (objc_msgSend_length(v45, v97, v98, v99))
    {
      v101 = qword_27CFB5388;
      v102 = objc_msgSend_length(v45, v50, v51, v52);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v45, v103, v101, @"'", 2, 0, v102);
      v104 = qword_27CFB5390;
      v105 = qword_27CFB5358;
      v109 = objc_msgSend_length(v45, v106, v107, v108);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v45, v110, v104, v105, 2, 0, v109);
      v111 = qword_27CFB53A0;
      v112 = qword_27CFB5368;
      v116 = objc_msgSend_length(v45, v113, v114, v115);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v45, v117, v111, v112, 2, 0, v116);
      v118 = qword_27CFB5398;
      v119 = qword_27CFB5378;
      v123 = objc_msgSend_length(v45, v120, v121, v122);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v45, v124, v118, v119, 2, 0, v123);
    }
  }

  v125 = objc_msgSend_tsce_stringByAddingSingleQuoteEscapes(v45, v50, v51, v52);
  v128 = objc_msgSend_stringByAppendingString_(v125, v126, v31, v127);
  hasPrefix = objc_msgSend_hasPrefix_(v128, v129, a1, v130);

  if (hasPrefix)
  {
    v134 = v45;
  }

  else
  {
    v134 = a1;
  }

  if (hasPrefix && v4)
  {
    objc_msgSend_appendString_(v45, v132, v31, v133);
    v134 = v45;
  }

  v100 = v134;

LABEL_26:

  return v100;
}

void *sub_2212583E0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_mutableCopy(a1, a2, a3, a4);
  v8 = objc_msgSend_length(v4, v5, v6, v7);
  objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v4, v9, @"", @"", 2, 0, v8);
  return v4;
}

id sub_221258430(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_mutableCopyWithZone_(a1, a2, 0, a4);
  if (objc_msgSend_length(v4, v5, v6, v7))
  {
    v11 = objc_msgSend_length(v4, v8, v9, v10);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v4, v12, @"\\s+", @" ", 1024, 0, v11);
  }

  return v4;
}

id sub_2212584A0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_mutableCopyWithZone_(a1, a2, 0, a4);
  if (objc_msgSend_length(v4, v5, v6, v7))
  {
    v11 = objc_msgSend_length(v4, v8, v9, v10);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v4, v12, @"\n", &stru_2834BADA0, 2, 0, v11);
  }

  return v4;
}

id sub_221258510(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_length(a1, a2, a3, a4);
  v36 = objc_msgSend_tsce_singleQuoteCharacterSet(MEMORY[0x277CCA900], v6, v7, v8);
  v12 = objc_msgSend_tsce_internationalColonCharacterSet(MEMORY[0x277CCA900], v9, v10, v11);
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v5)
  {
    v15 = 0;
    v16 = 0;
    v35 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 1;
    do
    {
      v20 = objc_msgSend_characterAtIndex_(a1, v13, v17, v14);
      IsMember = objc_msgSend_characterIsMember_(v36, v21, v20, v22);
      v26 = objc_msgSend_characterIsMember_(v12, v24, v20, v25);
      if (v19)
      {
        v18 = IsMember;
      }

      if ((v18 & 1) != 0 && IsMember)
      {
        v19 = 0;
        v16 = 0;
        v15 ^= 1u;
        v18 = 1;
      }

      else if (v26)
      {
        if (v15)
        {
          v19 = 0;
          v16 = 0;
          v15 = 1;
        }

        else if (v16)
        {
          v27 = objc_msgSend_substringWithRange_(a1, v13, v35, ~v35 + v17);
          objc_msgSend_addObject_(v34, v28, v27, v29);
          v35 = v17 + 1;

          v18 = 0;
          v16 = 0;
          v15 = 0;
          v19 = 1;
        }

        else
        {
          v19 = 0;
          v15 = 0;
          v16 = 1;
        }
      }

      else
      {
        v19 = 0;
        v16 = 0;
      }

      ++v17;
    }

    while (v5 != v17);
  }

  else
  {
    v35 = 0;
  }

  v30 = objc_msgSend_substringWithRange_(a1, v13, v35, v5 - v35);
  objc_msgSend_addObject_(v34, v31, v30, v32);

  return v34;
}

id sub_2212586DC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = objc_msgSend_length(a1, v5, v6, v7);
  v12 = objc_msgSend_tsce_singleQuoteCharacterSet(MEMORY[0x277CCA900], v9, v10, v11);
  v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v8)
  {
    v15 = 0;
    v39 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 1;
    do
    {
      v19 = objc_msgSend_characterAtIndex_(a1, v13, v16, v14, v37);
      IsMember = objc_msgSend_characterIsMember_(v12, v20, v19, v21);
      v25 = objc_msgSend_characterIsMember_(v4, v23, v19, v24);
      if (v18)
      {
        v17 = IsMember;
      }

      if ((v17 & 1) != 0 && IsMember)
      {
        v18 = 0;
        v15 ^= 1u;
        v17 = 1;
      }

      else if (v25)
      {
        if (v15)
        {
          v18 = 0;
          v15 = 1;
        }

        else
        {
          v26 = objc_msgSend_substringWithRange_(a1, v13, v39, v16 - v39);
          objc_msgSend_addObject_(v37, v27, v26, v28);
          v39 = v16 + 1;

          v17 = 0;
          v15 = 0;
          v18 = 1;
        }
      }

      else
      {
        v18 = 0;
      }

      ++v16;
    }

    while (v8 != v16);
  }

  else
  {
    v39 = 0;
  }

  v29 = objc_msgSend_substringWithRange_(a1, v13, v39, v8 - v39, v37);
  objc_msgSend_addObject_(v38, v30, v29, v31);
  v35 = objc_msgSend_copy(v38, v32, v33, v34);

  return v35;
}

id sub_221258884(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_tsce_internationalColonCharacterSet(MEMORY[0x277CCA900], a2, a3, a4);
  v8 = objc_msgSend_ptsce_referenceComponentsSeparatedByCharacterInSet_(a1, v6, v5, v7);

  return v8;
}

id sub_2212588E4(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], a2, @" ", a4);
  v8 = objc_msgSend_ptsce_referenceComponentsSeparatedByCharacterInSet_(a1, v6, v5, v7);

  return v8;
}

id sub_22125894C(void *a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_stringByFoldingWithOptions_locale_(a1, a2, 385, a3);
  if (qword_27CFB53B8 != -1)
  {
    sub_2216F7538();
  }

  v7 = objc_msgSend_mutableCopy(v6, v3, v4, v5);
  objc_msgSend_tsce_replaceCharactersInSet_withString_(v7, v8, qword_27CFB53A8, @"");
  objc_msgSend_tsce_replaceCharactersInSet_withString_(v7, v9, qword_27CFB53B0, @"'");

  return v7;
}

void sub_2212589E4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%C%C%C%C%C%C%C%C%C", a4, 8220, 8221, 171, 187, 8222, 8223, 12317, 12318, 1524);
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"'%C%C%C%C%C%C%C", v5, 65287, 8217, 8216, 8218, 8219, 8249, 8250);
  v9 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v7, v15, v8);
  v10 = qword_27CFB53A8;
  qword_27CFB53A8 = v9;

  v13 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v11, v6, v12);
  v14 = qword_27CFB53B0;
  qword_27CFB53B0 = v13;
}

void sub_221258E28(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id sub_22125B3AC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a1)
  {
    v12 = a2;
    if (!v12 || (v16 = v12, (objc_msgSend_isNil(v12, v13, v14, v15) & 1) == 0) && (v18 = objc_msgSend_deepType_outError_(v16, v17, a3, a7), !*a7) && (objc_msgSend_boundsCheckAndCoerce_valueDeepType_context_functionSpec_argIndex_outError_(a1, v19, v16, v18, a3, a4, a5, a7), v20 = objc_claimAutoreleasedReturnValue(), v16, (v16 = v20) == 0))
    {
      v16 = objc_msgSend_nilValue(TSCENilValue, v13, v14, v15);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

TSCEArgumentAccessor *sub_22125B498(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, TSCEValue *a6, void *a7)
{
  if (!a1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  v13 = a2;
  v17 = objc_msgSend_nativeType(v13, v14, v15, v16);
  v19 = objc_msgSend_deepType_outError_(v13, v18, a3, a7);
  if (TSCEArgumentAccessor::isFromAReference(v13, a6, v20, v21))
  {
    if ((v19 & 0xFFFFFFFB) == 3)
    {

LABEL_19:
      v13 = objc_msgSend_nilValue(TSCENilValue, v22, v23, v24);
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  v25 = objc_msgSend_locale(a3, v22, v23, v24);
  if (v17 == 3)
  {
    *a7 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v22, v13, a3, a4, a5);
LABEL_10:
    if (!v13)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (v17 != 7)
  {
    goto LABEL_10;
  }

  v26 = v25;
  v30 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v13, v22, a3, a4, a5, a7);
  if (*a7)
  {
    v31 = objc_msgSend_nilValue(TSCENilValue, v27, v28, v29);

    v13 = v31;
    goto LABEL_20;
  }

  if ((objc_msgSend_localizedStringIsTrue_(v26, v27, v30, v29) & 1) == 0 && (objc_msgSend_localizedStringIsFalse_(v26, v34, v30, v35) & 1) == 0)
  {
    *a7 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v36, v13, a3, a4, a5);
  }

  if (!v13)
  {
    goto LABEL_19;
  }

LABEL_11:
  if ((objc_msgSend_isNil(v13, v22, v23, v24) & 1) == 0 && !*a7)
  {
    v33 = objc_msgSend_boundsCheckAndCoerce_valueDeepType_context_functionSpec_argIndex_outError_(a1, v32, v13, v19, a3, a4, a5, a7);

    v13 = v33;
    if (!v33)
    {
      goto LABEL_19;
    }
  }

LABEL_20:

  return v13;
}

TSCEArgumentAccessor *sub_22125B6D4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, TSCEValue *a6, void *a7)
{
  if (!a1)
  {
    v13 = 0;
    goto LABEL_30;
  }

  v13 = a2;
  v17 = objc_msgSend_nativeType(v13, v14, v15, v16);
  v19 = objc_msgSend_deepType_outError_(v13, v18, a3, a7);
  if (TSCEArgumentAccessor::isFromAReference(v13, a6, v20, v21))
  {
    if (v19 == 7 || v19 == 2)
    {
      v25 = objc_msgSend_nilValue(TSCENilValue, v22, v23, v24);

      v13 = v25;
      if (!v25)
      {
        goto LABEL_29;
      }

      goto LABEL_13;
    }

LABEL_12:
    if (!v13)
    {
LABEL_29:
      v13 = objc_msgSend_nilValue(TSCENilValue, v22, v23, v24);
      goto LABEL_30;
    }

    goto LABEL_13;
  }

  v26 = objc_msgSend_locale(a3, v22, v23, v24);
  if (v17 == 2)
  {
    *a7 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v22, v13, a3, a4, a5);
    goto LABEL_12;
  }

  if (v17 != 7)
  {
    goto LABEL_12;
  }

  v27 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v13, v22, a3, a4, a5, a7);
  v31 = v27;
  if (*a7)
  {
    v32 = objc_msgSend_nilValue(TSCENilValue, v28, v29, v30);

    v13 = v32;
    goto LABEL_30;
  }

  if (objc_msgSend_length(v27, v28, v29, v30))
  {
    v38 = TSUCreateDateFromString();
    if (v38)
    {
      v39 = objc_msgSend_dateValue_(TSCEDateValue, v35, v38, v37);

      v19 = 3;
      v13 = v39;
    }

    else
    {
      v40 = objc_msgSend_asStringValue(v13, v35, v36, v37);
      if (v40)
      {
        v50 = 0;
        v49 = v40;
        v48 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v40, v41, a3, a4, a5, &v50);
        v42 = v50;

        if (v42)
        {
          v47 = objc_msgSend_nilValue(TSCENilValue, v43, v44, v45);

          v13 = v47;
        }

        else
        {
          v19 = 5;
          v13 = v48;
        }

        v40 = v49;
      }
    }
  }

  else
  {

    v13 = 0;
  }

  if (!v13)
  {
    goto LABEL_29;
  }

LABEL_13:
  if ((objc_msgSend_isNil(v13, v22, v23, v24) & 1) == 0 && !*a7)
  {
    v34 = objc_msgSend_boundsCheckAndCoerce_valueDeepType_context_functionSpec_argIndex_outError_(a1, v33, v13, v19, a3, a4, a5, a7);

    v13 = v34;
    if (!v34)
    {
      goto LABEL_29;
    }
  }

LABEL_30:

  return v13;
}

TSCEArgumentAccessor *sub_22125BA08(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, TSCEValue *a6, void *a7)
{
  if (!a1)
  {
    v13 = 0;
    goto LABEL_30;
  }

  v13 = a2;
  v17 = objc_msgSend_nativeType(v13, v14, v15, v16);
  v19 = objc_msgSend_deepType_outError_(v13, v18, a3, a7);
  if (TSCEArgumentAccessor::isFromAReference(v13, a6, v20, v21))
  {
    if (v19 == 7 || v19 == 2)
    {

LABEL_29:
      v13 = objc_msgSend_nilValue(TSCENilValue, v22, v23, v24);
      goto LABEL_30;
    }

    goto LABEL_17;
  }

  v25 = objc_msgSend_locale(a3, v22, v23, v24);
  if (v17 <= 6u)
  {
    if (v17 == 2 || v17 == 3)
    {
      *a7 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v22, v13, a3, a4, a5);
      if (!v13)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v13)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  if (v17 == 10)
  {
    v32 = objc_msgSend_nilValue(TSCENilValue, v22, v23, v24);

    v13 = v32;
    goto LABEL_17;
  }

  if (v17 != 7)
  {
    goto LABEL_17;
  }

  v26 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v13, v22, a3, a4, a5, a7);
  v30 = v26;
  if (*a7)
  {
    v31 = objc_msgSend_nilValue(TSCENilValue, v27, v28, v29);

    v13 = v31;
    goto LABEL_30;
  }

  if (objc_msgSend_length(v26, v27, v28, v29))
  {
    v37 = TSUCreateDateFromString();
    if (v37)
    {
      v38 = objc_msgSend_dateValue_(TSCEDateValue, v35, v37, v36);
      v19 = 3;
    }

    else
    {
      v38 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v13, v35, a3, a4, a5, a7);
      v19 = 5;
    }
  }

  else
  {
    v19 = 0;
    v38 = 0;
    v37 = v13;
  }

  v13 = v38;
  if (!v38)
  {
    goto LABEL_29;
  }

LABEL_18:
  if ((objc_msgSend_isNil(v13, v22, v23, v24) & 1) == 0 && !*a7)
  {
    v34 = objc_msgSend_boundsCheckAndCoerce_valueDeepType_context_functionSpec_argIndex_outError_(a1, v33, v13, v19, a3, a4, a5, a7);

    v13 = v34;
    if (!v34)
    {
      goto LABEL_29;
    }
  }

LABEL_30:

  return v13;
}

TSCEArgumentAccessor *sub_22125BCF8(void *a1, void *a2, void *a3, void *a4, uint64_t a5, TSCEValue *a6, void *a7, uint64_t a8)
{
  v55 = a5;
  if (!a1)
  {
    v13 = 0;
    goto LABEL_41;
  }

  v13 = a2;
  v17 = objc_msgSend_nativeType(v13, v14, v15, v16);
  v19 = objc_msgSend_deepType_outError_(v13, v18, a3, a7);
  v23 = objc_msgSend_argumentType(a1, v20, v21, v22);
  v29 = v17;
  if (objc_msgSend_valueIsEmptyWithContext_(v13, v24, a3, v25))
  {
    if (v17 != 6 || (v29 = 6, v23 != 6) && v23 != 255)
    {
      if ((TSCERangeRef::isReferenceRange(a8) & 1) == 0)
      {
        v41 = objc_msgSend_functionName(a4, v30, v31, v32);
        v42 = *(a8 + 16);
        v57[0] = *a8;
        v57[1] = v42;
        *a7 = objc_msgSend_referenceToEmptyCellErrorForFunctionName_rangeReference_(TSCEError, v43, v41, v57);

        v40 = objc_msgSend_nilValue(TSCENilValue, v44, v45, v46);
        goto LABEL_25;
      }

      if (v17 != 6 || (objc_msgSend_referenceForGeometryOnly(a1, v30, v31, v32) & 1) == 0)
      {

        goto LABEL_40;
      }

      v29 = 6;
    }
  }

  if (!v13)
  {
    goto LABEL_40;
  }

  if (!TSCEArgumentAccessor::isFromAReference(v13, a6, v27, v28))
  {
    if (v29 == 2)
    {
LABEL_28:
      v47 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v26, v13, a3, a4, v55, v55);
LABEL_30:
      *a7 = v47;
      goto LABEL_31;
    }

    if (v29 == 10)
    {
      v47 = objc_msgSend_emptyArgumentError(TSCEError, v26, v27, v28);
      goto LABEL_30;
    }

    if (v29 != 7)
    {
      goto LABEL_31;
    }

    v33 = objc_msgSend_locale(a3, v26, v27, v28);
    v35 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v13, v34, a3, a4, v55, a7);
    v39 = v35;
    if (!*a7)
    {
      if (objc_msgSend_length(v35, v36, v37, v38))
      {
        v52 = TSUCreateDateFromString();
        if (v52)
        {
          v53 = objc_msgSend_dateValue_(TSCEDateValue, v50, v52, v51);
          v19 = 3;
        }

        else
        {
          v53 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v13, v50, a3, a4, v55, a7);
          v19 = 5;
        }

        v13 = v53;
        if (!v53)
        {
          goto LABEL_40;
        }

        goto LABEL_31;
      }

      v13 = v39;
LABEL_39:

LABEL_40:
      v13 = objc_msgSend_nilValue(TSCENilValue, v26, v27, v28, v55);
      goto LABEL_41;
    }

    v40 = objc_msgSend_nilValue(TSCENilValue, v36, v37, v38);

LABEL_25:
    v13 = v40;
    goto LABEL_41;
  }

  if (!v19)
  {
    goto LABEL_39;
  }

  if (v19 == 2 || v19 == 7)
  {
    if (TSCERangeRef::isReferenceRange(a8))
    {
      if (v19 != 2 && v19 != 7)
      {
        goto LABEL_31;
      }

      goto LABEL_39;
    }

    goto LABEL_28;
  }

LABEL_31:
  if ((objc_msgSend_isNil(v13, v26, v27, v28, v55) & 1) == 0 && !*a7)
  {
    v49 = objc_msgSend_boundsCheckAndCoerce_valueDeepType_context_functionSpec_argIndex_outError_(a1, v48, v13, v19, a3, a4, v55, a7);

    v13 = v49;
    if (!v49)
    {
      goto LABEL_40;
    }
  }

LABEL_41:

  return v13;
}

TSCEArgumentAccessor *sub_22125C0A8(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, TSCEValue *a6, void *a7, TSCERangeRef *a8)
{
  if (!a1)
  {
    v14 = 0;
    goto LABEL_27;
  }

  v14 = a2;
  v17 = TSCEArgumentAccessor::isFromAReference(v14, a6, v15, v16);
  v21 = objc_msgSend_nativeType(v14, v18, v19, v20);
  v23 = objc_msgSend_deepType_outError_(v14, v22, a3, a7);
  if (sub_2216F754C(a1, v14, a3, v24))
  {
    v28 = objc_msgSend_nilValue(TSCENilValue, v25, v26, v27);

    v14 = v28;
  }

  if (v17)
  {
    if (TSCERangeRef::isReferenceRange(a8))
    {
      if (objc_msgSend_isNil(v14, v25, v26, v27))
      {
        v29 = objc_msgSend_zero(TSCENumberValue, v25, v26, v27);
LABEL_20:
        v36 = v29;

        v23 = 5;
        goto LABEL_21;
      }

      if (v23 == 7)
      {
        v37 = objc_msgSend_locale(a3, v25, v26, v27);
        TSUDecimal::operator=();
        v38 = MEMORY[0x277D81290];
        v40 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v14, v39, a3, a4, a5, a7);
        v42 = objc_msgSend_numberValueFromString_locale_outDecimalValue_(v38, v41, v40, v37, v50);

        if ((v42 & 1) == 0)
        {
          *a7 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v43, v14, a3, a4, a5);
        }

        v29 = objc_msgSend_zero(TSCENumberValue, v43, v44, v45);
        goto LABEL_20;
      }

      if ((v23 & 0xFFFFFFFE) != 2)
      {
        goto LABEL_22;
      }

      goto LABEL_12;
    }

    if (!v21)
    {
      v36 = objc_msgSend_nilValue(TSCENilValue, v25, v26, v27);

LABEL_21:
      v14 = v36;
    }
  }

  else if (v21 == 7)
  {
    v30 = objc_msgSend_locale(a3, v25, v26, v27);
    TSUDecimal::operator=();
    v31 = MEMORY[0x277D81290];
    v33 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v14, v32, a3, a4, a5, a7);
    LOBYTE(v30) = objc_msgSend_numberValueFromString_locale_outDecimalValue_(v31, v34, v33, v30, v50);

    if ((v30 & 1) == 0)
    {
      v35 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v25, v14, a3, a4, a5);
LABEL_13:
      *a7 = v35;
    }
  }

  else if ((v21 & 0xFFFFFFFE) == 2)
  {
LABEL_12:
    v35 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v25, v14, a3, a4, a5);
    goto LABEL_13;
  }

LABEL_22:
  if (!v14 || (objc_msgSend_isNil(v14, v25, v26, v27) & 1) == 0 && !*a7 && (objc_msgSend_boundsCheckAndCoerce_valueDeepType_context_functionSpec_argIndex_outError_(a1, v46, v14, v23, a3, a4, a5, a7), v47 = objc_claimAutoreleasedReturnValue(), v14, (v14 = v47) == 0))
  {
    v14 = objc_msgSend_nilValue(TSCENilValue, v25, v26, v27);
  }

LABEL_27:

  return v14;
}

TSCEArgumentAccessor *sub_22125C434(_DWORD *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, TSCEValue *a6, void *a7)
{
  if (!a1)
  {
    v12 = 0;
    goto LABEL_28;
  }

  v12 = a2;
  v16 = objc_msgSend_nativeType(v12, v13, v14, v15);
  v18 = objc_msgSend_deepType_outError_(v12, v17, a3, a7);
  v21 = TSCEArgumentAccessor::isFromAReference(v12, a6, v19, v20);
  v25 = a1[11];
  if (v25 == 6)
  {
    if (!v21)
    {
      if (v16 == 2)
      {
        *a7 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v22, v12, a3, a4, a5);
        goto LABEL_23;
      }

      if (v16 != 7)
      {
        goto LABEL_23;
      }

      v43 = objc_msgSend_locale(a3, v22, v23, v24);
      v45 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v12, v44, a3, a4, a5, a7);
      v42 = v45;
      if (*a7)
      {
LABEL_20:
        v46 = objc_msgSend_nilValue(TSCENilValue, v39, v40, v41);

        v12 = v46;
        goto LABEL_28;
      }

      if (objc_msgSend_length(v45, v39, v40, v41))
      {
        v55 = TSUCreateDateFromString();
        if (v55)
        {
          v56 = objc_msgSend_dateValue_(TSCEDateValue, v57, v55, v58);

          v18 = 3;
          goto LABEL_46;
        }

        v56 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v12, v57, a3, a4, a5, a7);

        if (*a7)
        {
LABEL_44:
          *a7 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v59, v12, a3, a4, a5);
          v18 = 9;
          goto LABEL_46;
        }

LABEL_45:
        v18 = 5;
        goto LABEL_46;
      }

LABEL_40:
      v56 = objc_msgSend_nilValue(TSCENilValue, v50, v51, v52);
      v18 = 0;
LABEL_47:

      v12 = v56;
      goto LABEL_23;
    }

    if (v18 != 7 && v18 != 2)
    {
      goto LABEL_23;
    }

LABEL_11:
    v26 = objc_msgSend_nilValue(TSCENilValue, v22, v23, v24);

    goto LABEL_22;
  }

  if (v25 != 7)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSCEFunctionArgSpec _convertToNilIfIgnoring_Stat:context:functionSpec:argIndex:fromInsideArray:outError:]", v24);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionArgSpec.mm", v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v28, v31, 1076, 0, "Wrong context for this method.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35);
    goto LABEL_23;
  }

  if (!v21)
  {
    if (v16 != 2)
    {
      if (v16 != 7)
      {
        goto LABEL_23;
      }

      v36 = objc_msgSend_locale(a3, v22, v23, v24);
      v38 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v12, v37, a3, a4, a5, a7);
      v42 = v38;
      if (*a7)
      {
        goto LABEL_20;
      }

      if (objc_msgSend_length(v38, v39, v40, v41))
      {
        v55 = TSUCreateDateFromString();
        if (v55)
        {
          v56 = objc_msgSend_dateValue_(TSCEDateValue, v53, v55, v54);

LABEL_46:
          v12 = v55;
          goto LABEL_47;
        }

        v56 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v12, v53, a3, a4, a5, a7);

        if (*a7)
        {
          goto LABEL_44;
        }

        goto LABEL_45;
      }

      goto LABEL_40;
    }

    if (!a6)
    {
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (v18 == 7)
  {
    v26 = objc_msgSend_zero(TSCENumberValue, v22, v23, v24);

    v18 = 5;
    goto LABEL_22;
  }

  if (!v18)
  {
    v26 = objc_msgSend_nilValue(TSCENilValue, v22, v23, v24);

    v18 = 0;
LABEL_22:
    v12 = v26;
  }

LABEL_23:
  if (!v12 || (objc_msgSend_isNil(v12, v22, v23, v24) & 1) == 0 && !*a7 && (objc_msgSend_boundsCheckAndCoerce_valueDeepType_context_functionSpec_argIndex_outError_(a1, v47, v12, v18, a3, a4, a5, a7), v48 = objc_claimAutoreleasedReturnValue(), v12, (v12 = v48) == 0))
  {
    v12 = objc_msgSend_nilValue(TSCENilValue, v22, v23, v24);
  }

LABEL_28:

  return v12;
}

TSCEArgumentAccessor *sub_22125C95C(_DWORD *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, TSCEValue *a6, id *a7)
{
  if (!a1)
  {
    v12 = 0;
    goto LABEL_35;
  }

  v12 = a2;
  v16 = objc_msgSend_nativeType(v12, v13, v14, v15);
  v18 = objc_msgSend_deepType_outError_(v12, v17, a3, a7);
  v21 = TSCEArgumentAccessor::isFromAReference(v12, a6, v19, v20);
  v25 = a1[11];
  if (v25 == 8)
  {
    if (!v18 || v21 && (v18 == 7 || v18 == 2))
    {
      v28 = objc_msgSend_nilValue(TSCENilValue, v22, v23, v24);

      v12 = v28;
    }

    isNil = objc_msgSend_isNil(v12, v22, v23, v24);
    if (v16 == 9)
    {
      v33 = 1;
    }

    else
    {
      v33 = isNil;
    }

    if ((v33 & 1) == 0 && (TSCEArgumentAccessor::valueSufficesForArgumentType(v12, 5, v16, v18, a3, 0) & 1) == 0 && (TSCEArgumentAccessor::valueSufficesForArgumentType(v12, 3, v16, v18, a3, 0) & 1) == 0)
    {
      v34 = objc_msgSend_nilValue(TSCENilValue, v30, v31, v32);

      v12 = v34;
    }

    if (objc_msgSend_isNil(v12, v30, v31, v32))
    {
      goto LABEL_30;
    }

    if (v18 == 2)
    {
      objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v12, v22, a3, a4, a5, a7);
    }

    else
    {
      v47 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v12, v22, a3, a4, a5, a7);
    }

    if ((objc_msgSend_isInvalidReferenceError(*a7, v35, v36, v37) & 1) != 0 || objc_msgSend_isCircularReferenceError(*a7, v22, v48, v24))
    {
      v27 = objc_msgSend_errorValue_(TSCEErrorValue, v22, *a7, v24);
      goto LABEL_29;
    }

    if (*a7)
    {
      if (v18 == 3)
      {
        *a7 = 0;
        v53 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v12, v22, a3, a4, a5, a7);
        if (*a7)
        {
LABEL_8:
          v27 = objc_msgSend_nilValue(TSCENilValue, v22, v23, v24);
LABEL_29:
          v49 = v27;

          v12 = v49;
        }
      }
    }
  }

  else if (v25 == 9)
  {
    if (v18)
    {
      v26 = 0;
    }

    else
    {
      v26 = v21;
    }

    if (v26 == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSCEFunctionArgSpec _convertToNilIfIgnoring_Count:context:functionSpec:argIndex:fromInsideArray:outError:]", v24);
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionArgSpec.mm", v41);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v43, v39, v42, 1162, 0, "Wrong context for this method.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46);
  }

LABEL_30:
  if (!v12 || (objc_msgSend_isNil(v12, v22, v23, v24) & 1) == 0 && !*a7 && (objc_msgSend_boundsCheckAndCoerce_valueDeepType_context_functionSpec_argIndex_outError_(a1, v50, v12, v18, a3, a4, a5, a7), v51 = objc_claimAutoreleasedReturnValue(), v12, (v12 = v51) == 0))
  {
    v12 = objc_msgSend_nilValue(TSCENilValue, v22, v23, v24);
  }

LABEL_35:

  return v12;
}

TSCEArgumentAccessor *sub_22125CCD0(_DWORD *a1, void *a2, void *a3, void *a4, uint64_t a5, TSCEValue *a6, void *a7)
{
  if (!a1)
  {
    v12 = 0;
    goto LABEL_48;
  }

  v12 = a2;
  v16 = objc_msgSend_nativeType(v12, v13, v14, v15);
  v18 = objc_msgSend_deepType_outError_(v12, v17, a3, a7);
  v21 = TSCEArgumentAccessor::isFromAReference(v12, a6, v19, v20);
  v25 = a1[11];
  if (v25 != 10)
  {
    if (v25 != 11)
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSCEFunctionArgSpec _convertToNilIfIgnoring_Var:context:functionSpec:argIndex:fromInsideArray:outError:]", v24);
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionArgSpec.mm", v30);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v28, v31, 1277, 0, "Wrong context for this method.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35);
      goto LABEL_32;
    }

    if (v21)
    {
      if (v18 == 7)
      {
        goto LABEL_26;
      }

      goto LABEL_32;
    }

    if (v16 != 2)
    {
      if (v16 != 3)
      {
        if (v16 != 7)
        {
          goto LABEL_32;
        }

        v36 = objc_msgSend_locale(a3, v22, v23, v24);
        v38 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v12, v37, a3, a4, a5, a7);
        v42 = v38;
        if (*a7)
        {
          goto LABEL_22;
        }

        if (objc_msgSend_length(v38, v39, v40, v41))
        {
          v60 = TSUCreateDateFromString();
          if (v60)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        }

        goto LABEL_43;
      }

LABEL_31:
      *a7 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v22, v12, a3, a4, a5);
      goto LABEL_32;
    }

    if (!a6)
    {
      goto LABEL_32;
    }

LABEL_11:
    v26 = objc_msgSend_nilValue(TSCENilValue, v22, v23, v24);

    goto LABEL_27;
  }

  if (v21)
  {
    if (v18 != 2)
    {
      if (v18 == 9)
      {
        v47 = objc_msgSend_functionName(a4, v22, v23, v24);
        *a7 = objc_msgSend_argumentErrorForFunctionName_(TSCEError, v48, v47, v49);

        v46 = objc_msgSend_nilValue(TSCENilValue, v50, v51, v52);
        goto LABEL_25;
      }

      if (v18 != 7)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_11;
  }

  if (v16 == 2)
  {
    goto LABEL_31;
  }

  if (v16 == 10)
  {
LABEL_26:
    v26 = objc_msgSend_zero(TSCENumberValue, v22, v23, v24);

    v18 = 5;
LABEL_27:
    v12 = v26;
    if (!v26)
    {
      goto LABEL_47;
    }

    goto LABEL_33;
  }

  if (v16 == 7)
  {
    v43 = objc_msgSend_locale(a3, v22, v23, v24);
    v45 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v12, v44, a3, a4, a5, a7);
    v42 = v45;
    if (*a7)
    {
LABEL_22:
      v46 = objc_msgSend_nilValue(TSCENilValue, v39, v40, v41);

LABEL_25:
      v12 = v46;
      goto LABEL_48;
    }

    if (objc_msgSend_length(v45, v39, v40, v41))
    {
      v60 = TSUCreateDateFromString();
      if (v60)
      {
LABEL_42:
        v61 = objc_msgSend_dateValue_(TSCEDateValue, v58, v60, v59);
        v18 = 3;
LABEL_45:

LABEL_46:
        v12 = v61;
        if (v61)
        {
          goto LABEL_33;
        }

LABEL_47:
        v12 = objc_msgSend_nilValue(TSCENilValue, v22, v23, v24);
        goto LABEL_48;
      }

LABEL_44:
      v61 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v12, v58, a3, a4, a5, a7);
      v18 = 5;
      goto LABEL_45;
    }

LABEL_43:
    v61 = objc_msgSend_nilValue(TSCENilValue, v55, v56, v57);
    v18 = 0;
    v60 = v12;
    goto LABEL_46;
  }

LABEL_32:
  if (!v12)
  {
    goto LABEL_47;
  }

LABEL_33:
  if ((objc_msgSend_isNil(v12, v22, v23, v24) & 1) == 0 && !*a7)
  {
    v54 = objc_msgSend_boundsCheckAndCoerce_valueDeepType_context_functionSpec_argIndex_outError_(a1, v53, v12, v18, a3, a4, a5, a7);

    v12 = v54;
    if (!v54)
    {
      goto LABEL_47;
    }
  }

LABEL_48:

  return v12;
}

TSCEArgumentAccessor *sub_22125D204(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, TSCEValue *a6, void *a7)
{
  if (a1)
  {
    v13 = a2;
    v15 = objc_msgSend_deepType_outError_(v13, v14, a3, a7);
    v18 = TSCEArgumentAccessor::isFromAReference(v13, a6, v16, v17);
    if (v15)
    {
      v22 = 0;
    }

    else
    {
      v22 = v18;
    }

    if (v22 == 1)
    {

LABEL_11:
      v13 = objc_msgSend_nilValue(TSCENilValue, v19, v20, v21);
      goto LABEL_12;
    }

    if (!v13)
    {
      goto LABEL_11;
    }

    if ((objc_msgSend_isNil(v13, v19, v20, v21) & 1) == 0 && !*a7)
    {
      v24 = objc_msgSend_boundsCheckAndCoerce_valueDeepType_context_functionSpec_argIndex_outError_(a1, v23, v13, v15, a3, a4, a5, a7);

      v13 = v24;
      if (!v24)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_12:

  return v13;
}

TSCEArgumentAccessor *sub_22125D324(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, TSCEValue *a6, void *a7)
{
  if (a1)
  {
    v13 = a2;
    v15 = objc_msgSend_deepType_outError_(v13, v14, a3, a7);
    v18 = TSCEArgumentAccessor::isFromAReference(v13, a6, v16, v17);
    if (v15 == 2)
    {
      v22 = v18;
    }

    else
    {
      v22 = 0;
    }

    if (v22 == 1)
    {
      *a7 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v19, v13, a3, a4, a5);
    }

    if (!v13 || (objc_msgSend_isNil(v13, v19, v20, v21) & 1) == 0 && !*a7 && (objc_msgSend_boundsCheckAndCoerce_valueDeepType_context_functionSpec_argIndex_outError_(a1, v23, v13, v15, a3, a4, a5, a7), v24 = objc_claimAutoreleasedReturnValue(), v13, (v13 = v24) == 0))
    {
      v13 = objc_msgSend_nilValue(TSCENilValue, v19, v20, v21);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_22125D468(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a1)
  {
    v12 = a2;
    v14 = objc_msgSend_deepType_outError_(v12, v13, a3, a7);
    v18 = v14;
    if (v14 && v14 != 5)
    {
      *a7 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v15, v12, a3, a4, a5);
    }

    if (!v12 || (objc_msgSend_isNil(v12, v15, v16, v17) & 1) == 0 && !*a7 && (objc_msgSend_boundsCheckAndCoerce_valueDeepType_context_functionSpec_argIndex_outError_(a1, v19, v12, v18, a3, a4, a5, a7), v20 = objc_claimAutoreleasedReturnValue(), v12, (v12 = v20) == 0))
    {
      v12 = objc_msgSend_nilValue(TSCENilValue, v15, v16, v17);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void TSCEFormulaRewriteContextRecord::TSCEFormulaRewriteContextRecord(TSCEFormulaRewriteContextRecord *this, TSCEFormulaContainingCell *a2)
{
  sub_2212C72BC(this, a2);
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 256;
  *(v2 + 82) = 0;
  *(v2 + 86) = 0;
}

{
  sub_2212C72BC(this, a2);
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 256;
  *(v2 + 82) = 0;
  *(v2 + 86) = 0;
}

TSCEFormulaRewriteContextRecord *TSCEFormulaRewriteContextRecord::reset(TSCEFormulaRewriteContextRecord *this)
{
  this->var2 = 0;
  *&this->var3 = 256;
  *&this->var5 = 0;
  this->var9 = 0;
  return this;
}

uint64_t TSCEFormulaRewriteContextRecord::operator=(uint64_t a1, uint64_t a2)
{
  sub_2212C72E8(a1, a2);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 86) = *(a2 + 86);
  return a1;
}

void TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(TSCEFormulaRewriteContext *this)
{
  this->var0 = 0;
  this->var1 = 0;
  sub_2212C7250(v2);
  sub_2212C72BC(&this->var2, v2);
  this->var2.var1._lower = 0;
  this->var2.var1._upper = 0;
  this->var2.var2 = 0;
  *&this->var2.var3 = 256;
  *&this->var2.var5 = 0;
  *&this->var2.var8 = 0;
}

void TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(TSCEFormulaRewriteContext *this, TSCECalculationEngine *a2, __n128 *a3)
{
  this->var0 = a2;
  this->var1 = 0;
  sub_2212C7294(v4, a3);
  sub_2212C72BC(&this->var2, v4);
  this->var2.var1._lower = 0;
  this->var2.var1._upper = 0;
  this->var2.var2 = 0;
  *&this->var2.var3 = 256;
  *&this->var2.var5 = 0;
  *&this->var2.var8 = 0;
}

void TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(TSCEFormulaRewriteContext *this, TSCECalculationEngine *a2, TSCEFormulaContainingCell *a3)
{
  this->var0 = a2;
  this->var1 = 0;
  sub_2212C72BC(v4, a3);
  sub_2212C72BC(&this->var2, v4);
  this->var2.var1._lower = 0;
  this->var2.var1._upper = 0;
  this->var2.var2 = 0;
  *&this->var2.var3 = 256;
  *&this->var2.var5 = 0;
  *&this->var2.var8 = 0;
}

__n128 TSCEFormulaRewriteContext::setResolverTableUID(TSCEFormulaRewriteContext *this, const TSKUIDStruct *a2)
{
  result = *a2;
  this->var2.var1 = *a2;
  return result;
}

uint64_t sub_22125F1C8(TSUIndexSet *a1)
{
  if (!TSUIndexSet::count(a1))
  {
    v3 = 1;
    goto LABEL_7;
  }

  Index = TSUIndexSet::lastIndex(a1);
  v3 = Index + 1;
  if (Index != 65534)
  {
LABEL_7:
    TSUIndexSet::addIndex(a1);
    return v3;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0xFFFFLL;
  TSUIndexSet::enumerateRangesUsingBlock();
  v3 = -1;
  if (v6[3] != 0xFFFF)
  {
    TSUIndexSet::addIndex(a1);
    v3 = *(v6 + 12);
  }

  _Block_object_dispose(&v5, 8);
  return v3;
}

void sub_22125F2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22125F2E0(uint64_t result, uint64_t *a2, _BYTE *a3)
{
  if (*a2 < 2)
  {
    v4 = a2[1];
    if (v4 > 65533)
    {
      return result;
    }

    v3 = v4 + 1;
  }

  else
  {
    v3 = *a2 - 1;
  }

  *(*(*(result + 32) + 8) + 24) = v3;
  *a3 = 1;
  return result;
}

uint64_t sub_22125F320(uint64_t a1)
{
  TSUIndexSet::TSUIndexSet((a1 + 8));
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 1065353216;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 1065353216;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 1065353216;
  *a1 = 0;
  __dmb(0xBu);
  return a1;
}

void sub_22125F390(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v27[0] = 0;
  v27[1] = 0;
  v25[1] = 0;
  v26 = v27;
  v24 = v25;
  v25[0] = 0;
  for (i = *(a1 + 56); i; i = *i)
  {
    v28 = i + 2;
    *(sub_221260474(&v26, i + 8, &unk_2217E0E20, &v28) + 5) = *(i + 3);
  }

  for (j = *(a1 + 216); j; j = *j)
  {
    LOWORD(v28) = *(j + 8);
    sub_221260548(&v24, &v28, &v28);
  }

  os_unfair_lock_unlock(a1);
  v6 = v26;
  if (v26 != v27)
  {
    while (1)
    {
      v7 = *(a2 + 32);
      if (!v7)
      {
        goto LABEL_11;
      }

      v8 = *(a2 + 24);
      v9 = *v7;
      if (v8 >= *v7)
      {
        break;
      }

      *(a2 + 24) = v8 + 1;
      v10 = *&v7[2 * v8 + 2];
LABEL_13:
      v13 = *(v10 + 16);
      *(v10 + 32) = *(v6 + 16);
      *(v10 + 16) = v13 | 3;
      v14 = *(v10 + 24);
      if (!v14)
      {
        v15 = *(v10 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = MEMORY[0x223DA0300](v15);
        *(v10 + 24) = v14;
      }

      TSKUIDStruct::saveToMessage((v6 + 5), v14);
      v16 = v6[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v6[2];
          v18 = *v17 == v6;
          v6 = v17;
        }

        while (!v18);
      }

      v6 = v17;
      if (v17 == v27)
      {
        goto LABEL_23;
      }
    }

    if (v9 == *(a2 + 28))
    {
LABEL_11:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16));
      v7 = *(a2 + 32);
      v9 = *v7;
    }

    *v7 = v9 + 1;
    v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry>(*(a2 + 16));
    v11 = *(a2 + 24);
    v12 = *(a2 + 32) + 8 * v11;
    *(a2 + 24) = v11 + 1;
    *(v12 + 8) = v10;
    goto LABEL_13;
  }

LABEL_23:
  v19 = v24;
  if (v24 != v25)
  {
    v20 = *(a2 + 40);
    do
    {
      v21 = *(v19 + 13);
      if (v20 == *(a2 + 44))
      {
        sub_2210BBC64((a2 + 40), v20 + 1);
      }

      *(*(a2 + 48) + 4 * v20++) = v21;
      *(a2 + 40) = v20;
      v22 = v19[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v19[2];
          v18 = *v23 == v19;
          v19 = v23;
        }

        while (!v18);
      }

      v19 = v23;
    }

    while (v23 != v25);
  }

  sub_2210BC9F8(&v24, v25[0]);
  sub_2210BC9F8(&v26, v27[0]);
}

void sub_22125F610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_2210BC9F8(&a9, a10);
  sub_2210BC9F8(&a12, a13);
  _Unwind_Resume(a1);
}

void sub_22125F640(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0x277D81000uLL;
    do
    {
      v40 = *(*(*(a2 + 32) + 8 * v5 + 8) + 32);
      *&v39[2] = 0;
      *&v39[6] = 0;
      *&v39[2] = TSKUIDStruct::loadFromMessage();
      *&v39[6] = v7;
      if (*&v39[2] | v7)
      {
        if (sub_2210875C4((a1 + 80), &v39[2]))
        {
          v39[1] = *(sub_2210875C4((a1 + 80), &v39[2]) + 16);
          v9 = v39[1];
          if (v39[1] >= v40)
          {
            v10 = v40;
          }

          else
          {
            v10 = v39[1];
          }

          v39[0] = v10;
          if (v40 > v39[1])
          {
            v9 = v40;
          }

          v38 = v9;
          v11 = TSKUIDStruct::description(&v39[2]);
          NSLog(&cfstr_FoundDuplicate.isa, v11, v40, v39[1]);

          if (v39[1] == v38)
          {
            sub_221142C34((a1 + 40), &v39[1]);
            v41 = v39;
            v12 = sub_221260614((a1 + 40), v39, &unk_2217E0E20, &v41);
            *(v12 + 3) = *&v39[2];
          }

          v13 = v39[0];
          v41 = &v39[2];
          *(sub_221260850((a1 + 80), &v39[2], &unk_2217E0E20, &v41) + 16) = v13;
          v14 = *(a1 + 136);
          v15 = v39[0];
          if (v14)
          {
            v16 = v38;
            do
            {
              if (*(v14 + 9) == v16)
              {
                *(v14 + 9) = v15;
              }

              v14 = *v14;
            }

            while (v14);
          }

          v41 = &v38;
          *(sub_2211DBBEC((a1 + 120), &v38, &unk_2217E0E20, &v41) + 9) = v15;
          v17 = v39[0];
          v40 = v39[0];
        }

        else
        {
          v41 = &v40;
          v28 = sub_221260614((a1 + 40), &v40, &unk_2217E0E20, &v41);
          *(v28 + 3) = *&v39[2];
          v29 = v40;
          v41 = &v39[2];
          *(sub_221260850((a1 + 80), &v39[2], &unk_2217E0E20, &v41) + 16) = v29;
          v17 = v40;
        }

        if (v17 != 0xFFFF)
        {
          TSUIndexSet::addIndex((a1 + 8));
        }
      }

      else
      {
        v18 = v6;
        v19 = *(v6 + 336);
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "void TSCEIDMap::loadFromArchive(const TSCE::OwnerIDMapArchive &)", v8);
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEIDMap.mm", v22);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 141, 0, "Got an invalid ownerUID during loadFromArchive, internalOwnerID: %lu", v40);

        v6 = v18;
        objc_msgSend_logBacktraceThrottled(*(v18 + 336), v25, v26, v27);
      }

      ++v5;
    }

    while (v5 != v4);
  }

  v30 = *(a2 + 40);
  if (v30 >= 1)
  {
    v31 = 0;
    v32 = 4 * v30;
    do
    {
      v39[2] = *(*(a2 + 48) + v31);
      sub_22123E79C((a1 + 200), &v39[2], &v39[2]);
      if (v39[2] != 0xFFFFLL)
      {
        TSUIndexSet::addIndex((a1 + 8));
      }

      v31 += 4;
    }

    while (v32 != v31);
  }

  if (*(a1 + 144))
  {
    NSLog(&cfstr_RepairedDuplic.isa);
    for (i = *(a1 + 136); i; i = *i)
    {
      v34 = i[9];
      v35 = i[8];
      *&v39[2] = i + 9;
      v36 = sub_221260614((a1 + 40), i + 9, &unk_2217E0E20, &v39[2]);
      v37 = TSKUIDStruct::description((v36 + 3));
      NSLog(&cfstr_DD_0.isa, v35, v34, v37);
    }
  }
}

uint64_t sub_22125FA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  if (!(a2 | a3))
  {
    return 0xFFFFLL;
  }

  os_unfair_lock_lock(a1);
  v4 = sub_221119F90((a1 + 80), v7);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0xFFFFLL;
  }

  os_unfair_lock_unlock(a1);
  return v5;
}

uint64_t sub_22125FA70(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v55._lower = a2;
  v55._upper = a3;
  if (!(a2 | a3))
  {
    return 0xFFFFLL;
  }

  os_unfair_lock_lock(a1);
  v4 = sub_2210875C4((a1 + 80), &v55);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v6 = sub_22125F1C8((a1 + 8));
    v54 = v6;
    if (v6 == 0xFFFF)
    {
      v44 = MEMORY[0x277D81150];
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "TSCEInternalFormulaOwnerID TSCEIDMap::registerUID(TSCEOwnerUID)", v8);
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEIDMap.mm", v47);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v49, v45, v48, 195, 0, "Warning: internal ownerID map is full - too many owners.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52);
    }

    else
    {
      if (sub_2210C3024((a1 + 40), &v54))
      {
        v11 = MEMORY[0x277D81150];
        v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "TSCEInternalFormulaOwnerID TSCEIDMap::registerUID(TSCEOwnerUID)", v10);
        v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEIDMap.mm", v14);
        v16 = v54;
        v56 = &v54;
        v17 = sub_221260614((a1 + 40), &v54, &unk_2217E0E20, &v56);
        v18 = TSKUIDStruct::description((v17 + 3));
        v19 = TSKUIDStruct::description(&v55);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v20, v12, v15, 202, 0, "new ID %lu is already in use by %@ - attempted reuse by %@", v16, v18, v19);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
      }

      v56 = &v54;
      v24 = sub_221260614((a1 + 40), &v54, &unk_2217E0E20, &v56);
      *(v24 + 3) = v55;
      if (sub_2210875C4((a1 + 80), &v55))
      {
        v27 = MEMORY[0x277D81150];
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "TSCEInternalFormulaOwnerID TSCEIDMap::registerUID(TSCEOwnerUID)", v26);
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEIDMap.mm", v30);
        v56 = &v55;
        v32 = *(sub_221260850((a1 + 80), &v55, &unk_2217E0E20, &v56) + 16);
        v33 = v54;
        v34 = TSKUIDStruct::description(&v55);
        v38 = sub_22125FDC8(a1, v35, v36, v37);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v39, v28, v31, 205, 0, "About to overwrite a reference in _uidToInternalIDMap: %d -> %d for ownerUID: %{public}@ in Map: %{public}@", v32, v33, v34, v38);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42);
      }

      v43 = v54;
      v56 = &v55;
      *(sub_221260850((a1 + 80), &v55, &unk_2217E0E20, &v56) + 16) = v43;
    }

    v5 = v54;
  }

  os_unfair_lock_unlock(a1);
  return v5;
}

id sub_22125FDC8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], a2, @"TSCEIDMap:\n", a4);
  os_unfair_lock_lock(a1);
  for (i = *(a1 + 56); i; i = *i)
  {
    v9 = *(i + 8);
    v10 = TSKUIDStruct::description((i + 3));
    objc_msgSend_appendFormat_(v5, v11, @"  %d -> %@\n", v12, v9, v10);
  }

  for (j = (a1 + 216); ; objc_msgSend_appendFormat_(v5, v6, @"  %d -> <UNREGISTERED>\n", v7, *(j + 8)))
  {
    j = *j;
    if (!j)
    {
      break;
    }
  }

  os_unfair_lock_unlock(a1);

  return v5;
}

uint64_t sub_22125FECC(os_unfair_lock_t lock, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  result = 0xFFFFLL;
  v6 = -1;
  if (a2 | a3)
  {
    os_unfair_lock_lock(lock);
    v5 = sub_2210875C4(&lock[20]._os_unfair_lock_opaque, v7);
    if (v5)
    {
      v6 = *(v5 + 16);
      sub_2211F2EF4(&lock[20]._os_unfair_lock_opaque, v7);
      sub_221142C34(&lock[10]._os_unfair_lock_opaque, &v6);
      sub_22123E79C(&lock[50]._os_unfair_lock_opaque, &v6, &v6);
    }

    os_unfair_lock_unlock(lock);
    return v6;
  }

  return result;
}

uint64_t **sub_22125FF5C(uint64_t **result, uint64_t a2)
{
  v5 = a2;
  if (a2 != 0xFFFF)
  {
    v2 = result;
    v3 = sub_22125FFE0(result, a2);
    if (v3 | v4)
    {

      return sub_22125FECC(v2, v3, v4);
    }

    else
    {
      return sub_22123E79C(v2 + 25, &v5, &v5);
    }
  }

  return result;
}