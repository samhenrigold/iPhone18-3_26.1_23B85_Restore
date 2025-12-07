void sub_2212C9944()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_2212C9D28()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_2212CB1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  _Block_object_dispose(&a20, 8);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2212CB1FC(__n128 *a1, __n128 *a2)
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

void sub_2212CB220(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2212CB238(uint64_t a1, unsigned int a2, int a3)
{
  v3 = a3 + a2 - 1;
  *&v4 = a2;
  *(&v4 + 1) = v3 | 0x3E700000000;
  if (a2 != 0x7FFFFFFFLL && v3 != 0x7FFFFFFFLL && a2 <= v3)
  {
    sub_221083454(*(*(a1 + 32) + 8) + 48, &v4);
  }
}

void sub_2212CB2A8(uint64_t a1, unsigned __int16 a2, __int16 a3)
{
  *&v4 = a2 << 32;
  *(&v4 + 1) = ((a3 + a2 - 1) << 32) | 0xF423F;
  if (a2 != 0x7FFFLL)
  {
    v3 = (a3 + a2 - 1);
    if (v3 != 0x7FFF && a2 <= v3)
    {
      sub_221083454(*(*(a1 + 32) + 8) + 48, &v4);
    }
  }
}

void sub_2212CB598(_Unwind_Exception *a1)
{
  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_2212CB7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2212CB830(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    objc_msgSend_uuidsInRange_(v4, a2, a2, a3);
    v5 = *__p;
  }

  else
  {
    v5 = 0uLL;
    __p[0] = 0;
  }

  sub_2210F0C88((*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 40) + 8) + 56), v5, *(&v5 + 1), (*(&v5 + 1) - v5) >> 4);
  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

void sub_2212CB8B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2212CBA68(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

uint64_t *sub_2212CBCA0(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_221086F38(result, a4);
  }

  return result;
}

void sub_2212CBD00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2212CBD1C(uint64_t a1, const void *a2, CC_LONG a3)
{
  if (a3 >= 0x14)
  {
    v4 = 20;
  }

  else
  {
    v4 = a3;
  }

  v5 = a1 + 96;
  if (a3)
  {
    memmove((a1 + 96), a2, v4);
    if (a3 <= 0x13)
    {
      bzero((v5 + v4), (20 - v4));
    }

    CC_SHA1_Init(a1);
    CC_SHA1_Update(a1, a2, a3);
  }

  else
  {
    bzero((v5 + v4), (20 - v4));
    CC_SHA1_Init(a1);
  }

  result = CC_SHA1_Final((a1 + 116), a1);
  *(a1 + 136) = 0;
  return result;
}

CC_SHA1_CTX *sub_2212CBDCC(CC_SHA1_CTX *c, char *__dst, unsigned int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = c;
    p_Nl = &c[1].Nl;
    for (i = c[1].data[3]; ; i = 0)
    {
      if (i != 20)
      {
        if (v3 >= 20 - i)
        {
          v8 = 20 - i;
        }

        else
        {
          v8 = v3;
        }

        c = memmove(__dst, p_Nl + i, v8);
        v5[1].data[3] += v8;
        v3 -= v8;
        if (!v3)
        {
          return c;
        }

        __dst += v8;
      }

      CC_SHA1_Init(v5);
      CC_SHA1_Update(v5, p_Nl, 0x14u);
      CC_SHA1_Update(v5, &v5[1], 0x14u);
      CC_SHA1_Final(p_Nl, v5);
      v5[1].data[3] = 0;
    }
  }

  return c;
}

double sub_2212CBE94(CC_SHA1_CTX *a1)
{
  __dst = 0;
  sub_2212CBDCC(a1, &__dst, 8u);
  return __dst * 5.42101086e-20;
}

void sub_2212CD2D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_msgSend_children(*(a1 + 32), a2, a3, a4);
  *(*(a1 + 32) + 128) = objc_msgSend_count(v8, v5, v6, v7) | 0x100000000;
}

TSCEASTRelativeCoordRefElement *sub_2212CE9E4(TSCEFormulaRewriteContext **a1, TSCEASTRelativeCoordRefElement *a2)
{
  if (TSCEASTElement::hasUidTracts(a2, a1))
  {
    if (TSCEASTElement::refFlags(a2, a1))
    {
      v6 = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v4, v5);
      v7 = v8;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v14._lower = v6;
    v14._upper = v7;
    v13 = TSCEASTRelativeCoordRefElement::relativeCoord(a2, a1, v4, v5);
    v12._flags = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
    v9 = TSCEFormulaRewriteContext::containingCell(a1[1]);
    if (v6 == v9->var0.var0._tableUID._lower && v7 == v9->var0.var0._tableUID._upper)
    {
      v14._lower = 0;
      v14._upper = 0;
    }

    TSCEASTIteratorBase::createRelativeCoordReference(a1, &v14, &v13, &v12, 0);
  }

  return a2;
}

uint64_t sub_2212CEAB8(uint64_t a1, uint64_t a2)
{
  v4 = TSCEASTElement::tag(a2, a1);
  if (TSCEASTElement::tagHasUidTractList(v4))
  {

    TSCEASTIteratorBase::createTagOnlyOp(a1, 0x1C, v5, v6);
  }

  return a2;
}

TSCEASTColonTractElement *sub_2212CEB18(uint64_t a1, TSCEASTColonTractElement *a2)
{
  if (TSCEASTElement::hasUidTracts(a2, a1))
  {
    v6 = TSCEASTColonTractElement::relativeTractRef(a2, a1, v4, v5);
    v7 = TSCEASTElement::refFlags(a2, a1);
    v10 = TSCEASTColonTractElement::colonTractFlags(a2, a1, v8, v9);
    sub_22120CA10(a1, v11, v12, v13);
    v14._flags = v10;
    TSCEASTColonTractElement::appendColonTractElement((a1 + 24), v7, v14, v6, 0, v15);
    operator new();
  }

  return a2;
}

uint64_t sub_2212CEC40(TSCEASTIteratorBase *a1, uint64_t a2)
{
  if (TSCEASTElement::hasUidTracts(a2, a1))
  {

    TSCEASTIteratorBase::createReferenceError(a1, v4, v5, v6);
  }

  return a2;
}

void sub_2212CEC9C(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, a2);

  JUMPOUT(0x223DA1450);
}

void TSCEEvaluationStack::TSCEEvaluationStack(TSCEEvaluationStack *this)
{
  this->_evaluationStack.__begin_ = 0;
  this->_evaluationStack.var0 = 0;
  this->_evaluationStack.var1 = 0;
  this->_argumentCount = -1;
}

{
  this->_evaluationStack.__begin_ = 0;
  this->_evaluationStack.var0 = 0;
  this->_evaluationStack.var1 = 0;
  this->_argumentCount = -1;
}

__end_ *TSCEEvaluationStack::at(TSCEEvaluationStack *this, unint64_t a2)
{
  if (a2 >= this->_evaluationStack.var0 - this->_evaluationStack.__begin_)
  {
    sub_2211E631C();
  }

  v3 = this->_evaluationStack.__begin_[a2];

  return v3;
}

void TSCEEvaluationStack::push_back(TSCEEvaluationStack *this, TSCEValue *a2)
{
  v14 = a2;
  if (!v14)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "void TSCEEvaluationStack::push_back(TSCEValue *__strong)", v4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEvaluationStack.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 40, 0, "invalid nil value for '%{public}s'", "value", 0);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  sub_221179A54(this, &v14);
}

void TSCEEvaluationStack::pop_back(TSCEEvaluationStack *this)
{
  var0 = this->_evaluationStack.var0;

  this->_evaluationStack.var0 = var0 - 1;
}

void TSCEEvaluationStack::addValueArgs(TSCEEvaluationStack *a1, id **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v5 = *v2;
      TSCEEvaluationStack::push_back(a1, v5);

      ++v2;
    }

    while (v2 != v3);
  }
}

__end_ *TSCEEvaluationStack::rawArgumentAtIndex(TSCEEvaluationStack *this, uint64_t a2)
{
  v3 = this->_evaluationStack.var0 - this->_evaluationStack.__begin_;
  v4 = v3 - this->_argumentCount + a2;
  if (v3 <= v4)
  {
    sub_2211E631C();
  }

  v5 = this->_evaluationStack.__begin_[v4];

  return v5;
}

void TSCEEvaluationStack::replaceValueForArgumentAtIndexSingletonMode(id *a1, uint64_t a2, void *a3, void *a4, void *a5, const char *a6)
{
  v11 = a4;
  if (objc_msgSend_isThunk(*a1, v12, v13, v14))
  {
    goto LABEL_60;
  }

  v18 = objc_msgSend_nativeType(*a1, v15, v16, v17);
  v22 = v18;
  if (v18 == 9)
  {
    goto LABEL_60;
  }

  if (v18 != 6)
  {
    goto LABEL_16;
  }

  v23 = objc_msgSend_asReferenceValue(*a1, v19, v20, v21);
  v27 = v23;
  if (a5)
  {
    v28 = objc_msgSend_referenceForGeometryOnly(a5, v24, v25, v26);
    if (v27)
    {
      v29 = v28;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      goto LABEL_15;
    }

LABEL_11:
    if (objc_msgSend_isOutputOfAFunction(v27, v24, v25, v26))
    {
      objc_msgSend_anyRef(v27, v30, v31, v32);
      if (LOWORD(v71._tskFormat) - 3 < 0x10)
      {
        v67 = MEMORY[0x277D81150];
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "static void TSCEEvaluationStack::replaceValueForArgumentAtIndexSingletonMode(TSCEValue *__autoreleasing *, uint32_t, TSCEFunctionSpec *__unsafe_unretained, TSCEEvaluationContext *__strong, TSCEFunctionArgSpec *__unsafe_unretained, TSCEArgumentType, uint32_t)", v34);
        v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEvaluationStack.mm", v37);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v39, v35, v38, 109, 0, "unsupported computed reference type found. See TSCECalcEngine::referenceWasGuaranteedCleanAtRecalcCycleStart");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42);
      }

      objc_msgSend_addCalculatedPrecedent_(v11, v33, &v71, v34);
    }

    goto LABEL_15;
  }

  if (v23)
  {
    goto LABEL_11;
  }

LABEL_15:

LABEL_16:
  v43 = a6;
  if (a6 != 1)
  {
    v43 = a6;
    if (a6 != 6)
    {
      v43 = objc_msgSend_deepType_(*a1, v19, v11, v21);
    }
  }

  if (!TSCEArgumentAccessor::valueSufficesForArgumentType(*a1, a6, v22, v43, v11, 0))
  {
    goto LABEL_24;
  }

  if (a5)
  {
    v47 = 0;
    if (a6 == 1 || a6 == 6)
    {
      goto LABEL_35;
    }

    if (objc_msgSend_typeIsDisallowed_value_(a5, v44, v43, *a1))
    {
LABEL_24:
      if (v43 == 9)
      {
        objc_msgSend_errorWithContext_(*a1, v44, v11, v46);
      }

      else
      {
        objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v44, *a1, v11, a3, a2);
      }
      v48 = ;
      if (v48)
      {
        v49 = objc_msgSend_errorValue_(TSCEErrorValue, v44, v48, v46);
LABEL_32:
        *a1 = v49;

        goto LABEL_60;
      }
    }
  }

  if (a6 == 8)
  {
    v50 = *a1;
    v70 = 0;
    v51 = TSCEArgumentAccessor::coerceValueToNumberOrDate(v50, v11, a3, a2, v43, &v70);
    v48 = v70;
    v52 = v51;
    *a1 = v51;
    if (v48)
    {
      v49 = objc_msgSend_errorValue_(TSCEErrorValue, v44, v48, v46);
      goto LABEL_32;
    }

    v47 = 1;
  }

  else
  {
    v47 = 0;
  }

LABEL_35:
  if (objc_msgSend_isNil(*a1, v44, v45, v46))
  {
    v55 = *a1;
    v69._tskFormat = 0;
    v69._formatType = 0;
    v69._formatState = 0;
    *&v69._durationFormat = *&v69._durationFormat & 0xC080 | 0x421;
    *(&v69._durationFormat + 2) = *(&v69._durationFormat + 2) & 0xF8 | 1;
    *&v69._baseFormat.base = -50266102;
    v69._numberFormat.decimalPlaces = -3;
    *(&v69._numberFormat + 1) &= 0xE0u;
    v69._numberFormat.currencyCodeIndex = 0;
    TSCEFormat::TSCEFormat(&v71, &v69);
    objc_msgSend_setFormat_(v55, v56, &v71, v57);
  }

  if (a6 == 5)
  {
    if (v43 == 10 || v43 == 12)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v58 = v47 ^ 1;
    if (v43 != 5)
    {
      v58 = 1;
    }

    if (v58)
    {
      goto LABEL_46;
    }
  }

  v59 = TSCEArgumentAccessor::checkBoundsAndUnits(*a1, v11, a3, a5, a2, v43);
  if (v59)
  {
    *a1 = objc_msgSend_errorValue_(TSCEErrorValue, v53, v59, v54);

    goto LABEL_60;
  }

LABEL_46:
  if (v43 != 2)
  {
    if (a6 != 7)
    {
      goto LABEL_60;
    }

    if (v43 != 7)
    {
      goto LABEL_60;
    }

    if (!*a1)
    {
      goto LABEL_60;
    }

    objc_msgSend_formatWithContext_(*a1, v53, v11, v54);
    if (v71._formatType != 271)
    {
      goto LABEL_60;
    }

    v63 = *a1;
    v68 = 0;
    if (v63)
    {
      objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v63, v60, v11, a3, a2, &v68);
      v64 = v68;
      if (v64)
      {
        v65 = v64;
        v66 = objc_msgSend_errorValue_(TSCEErrorValue, v60, v64, v62);
LABEL_59:
        *a1 = v66;

        goto LABEL_60;
      }
    }

    else
    {
      memset(&v71, 0, 24);
    }

    v65 = 0;
    v66 = sub_2210789F4(&v71, v60, v61, v62);
    goto LABEL_59;
  }

  if (a6 == 8 || a6 == 5)
  {
    objc_msgSend_reportBoolToNumberConversionWarningInContext_(TSCEWarning, v53, v11, v54);
  }

LABEL_60:
}

id TSCEEvaluationStack::valueForArgumentAtIndexSingletonMode(TSCEEvaluationStack *a1, uint64_t a2, void *a3, void *a4, void *a5, const char *a6)
{
  v13 = a4;
  if ((a2 - a1->_argumentCount + a1->_evaluationStack.var0 - a1->_evaluationStack.__begin_) < 0)
  {
    v19 = objc_msgSend_nilValue(TSCENilValue, a2, v11, v12);
  }

  else
  {
    v14 = TSCEEvaluationStack::rawArgumentAtIndex(a1, a2);
    if ((objc_msgSend_isThunk(v14, v15, v16, v17) & 1) == 0)
    {
      v21 = v14;
      TSCEEvaluationStack::replaceValueForArgumentAtIndexSingletonMode(&v21, a2, a3, v13, a5, a6);
      v18 = v21;

      v14 = v18;
    }

    v19 = v14;
  }

  return v19;
}

void TSCEEvaluationStack::replaceValueForArgumentAtIndexListLikeMode(id *a1, uint64_t a2, void *a3, void *a4, void *a5, int a6)
{
  v11 = a4;
  v15 = objc_msgSend_nativeType(*a1, v12, v13, v14);
  v19 = v15;
  if (v15 == 9)
  {
    v20 = objc_msgSend_errorWithContext_(*a1, v16, v11, v18);
    v23 = objc_msgSend_errorValue_(TSCEErrorValue, v21, v20, v22);
LABEL_6:
    *a1 = v23;

    goto LABEL_7;
  }

  if (a6 == 6 && v15 != 6)
  {
    v20 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v16, *a1, v11, a3, a2);
    v23 = objc_msgSend_errorValue_(TSCEErrorValue, v24, v20, v25);
    goto LABEL_6;
  }

  if (a5 && v15 == 10)
  {
    if (objc_msgSend_typeIsDisallowed_value_(a5, v16, 10, *a1))
    {
      v20 = objc_msgSend_emptyArgumentSpecificErrorForArgumentNumber_(TSCEError, v16, (a2 + 1), v26);
      v23 = objc_msgSend_errorValue_(TSCEErrorValue, v27, v20, v28);
      goto LABEL_6;
    }
  }

  else if (v15 == 6 && (!a5 || (objc_msgSend_referenceForGeometryOnly(a5, v16, v17, v18) & 1) == 0))
  {
    v29 = objc_msgSend_asReferenceValue(*a1, v16, v17, v18);
    v33 = v29;
    if (v29 && objc_msgSend_isOutputOfAFunction(v29, v30, v31, v32))
    {
      objc_msgSend_anyRef(v33, v34, v35, v36);
      objc_msgSend_addCalculatedPrecedent_(v11, v37, v60, v38);
    }
  }

  v39 = *a1;
  v59 = 0;
  v40 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v39, v16, v11, a3, a2, 1, &v59);
  v44 = v59;
  if (v44)
  {
    *a1 = objc_msgSend_errorValue_(TSCEErrorValue, v41, v44, v43);
  }

  else if (v19 == 1 && objc_msgSend_gridKind(v40, v41, v42, v43) == 1 && objc_msgSend_count(v40, v45, v46, v47) >= 2 && (v51 = objc_msgSend_functionIndex(a3, v48, v49, v50), v51 != 8) && v51 != 63)
  {
    v56 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v52, v53, v54);
    *a1 = objc_msgSend_errorValue_(TSCEErrorValue, v57, v56, v58);
  }

  else
  {
    v55 = v40;
    *a1 = v40;
  }

LABEL_7:
}

id TSCEEvaluationStack::valueForArgumentAtIndexListLikeMode(TSCEEvaluationStack *a1, uint64_t a2, void *a3, void *a4, void *a5, int a6)
{
  v11 = a4;
  v12 = TSCEEvaluationStack::rawArgumentAtIndex(a1, a2);
  v16 = v12;
  TSCEEvaluationStack::replaceValueForArgumentAtIndexListLikeMode(&v16, a2, a3, v11, a5, a6);
  v13 = v16;
  v14 = v16;

  return v13;
}

id TSCEEvaluationStack::valueForArgumentAtIndexRepeatingMode(TSCEEvaluationStack *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, int a7)
{
  v117 = a4;
  if (a7 - 1 == a2)
  {
    v15 = a1->_evaluationStack.var0 - a1->_evaluationStack.__begin_;
    if (!v15 || (v15 >> 3) + a2 - a1->_argumentCount >= v15 >> 3)
    {
      v16 = objc_msgSend_invalidReferenceError(TSCEError, v12, v13, v14);
      v79 = objc_msgSend_errorValue_(TSCEErrorValue, v77, v16, v78);
LABEL_38:
      v80 = v79;
LABEL_39:

      goto LABEL_48;
    }

    v16 = TSCEEvaluationStack::rawArgumentAtIndex(a1, a2);
    if (!objc_msgSend_isError(v16, v17, v18, v19))
    {
LABEL_60:
      if (objc_msgSend_isReferenceValue(v16, v20, v21, v22) && (!a5 || (objc_msgSend_referenceForGeometryOnly(a5, v94, v95, v96) & 1) == 0))
      {
        v97 = objc_msgSend_asReferenceValue(v16, v94, v95, v96);
        v101 = v97;
        if (v97 && objc_msgSend_isOutputOfAFunction(v97, v98, v99, v100))
        {
          objc_msgSend_anyRef(v101, v102, v103, v104);
          objc_msgSend_addCalculatedPrecedent_(v117, v105, v128, v106);
        }
      }

      if (objc_msgSend_isGridValue(v16, v94, v95, v96))
      {
        v127 = 0;
        v108 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v16, v107, v117, a3, a2, 1, &v127);
        v111 = v127;
        if (v111)
        {
          v80 = objc_msgSend_errorValue_(TSCEErrorValue, v109, v111, v110);

          goto LABEL_39;
        }

        *v128 = v117;
        *&v128[8] = a3;
        *&v128[16] = 0;
        *&v128[24] = a2;
        *&v128[28] = 0;
        *&v128[31] = 0;
        v129 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v130 = 0;
        v131 = 0;
        if (v108)
        {
          objc_msgSend_format(v108, v112, v113, v114);
        }

        else
        {
          memset(&v126, 0, sizeof(v126));
        }

        v115 = objc_msgSend_flattenedGrid_format_(v108, v112, v128, &v126);

        v16 = v115;
      }

      v79 = v16;
      v16 = v79;
      goto LABEL_38;
    }

    v26 = objc_msgSend_errorWithContext_(v16, v20, v117, v22);
    if (a5)
    {
      v27 = objc_msgSend_argumentContext(a5, v23, v24, v25);
      if ((v27 & 0xFFFFFFFE) == 8)
      {
        memset(&v126, 0, 24);
        v133[0] = objc_msgSend_errorValue_(TSCEErrorValue, v23, v26, v25);
        sub_2210ED5B8(&v126, v133);

        v29 = [TSCEDenseGrid alloc];
        isFlattened = objc_msgSend_initWithValues_gridKind_isFlattened_(v29, v30, &v126, 0, 0);
        if (v16)
        {
          objc_msgSend_format(v16, v31, v32, v33);
        }

        else
        {
          memset(v128, 0, 32);
        }

        v91 = objc_msgSend_gridValue_format_(TSCEGridValue, v31, isFlattened, v128);

        *v128 = &v126;
        sub_22107C2C0(v128);
        v16 = v91;
        goto LABEL_56;
      }

      if ((v27 & 0xFFFFFFFD) == 0xC)
      {
LABEL_56:
        if (objc_msgSend_errorType(v26, v23, v28, v25) == 25)
        {
          v90 = objc_msgSend_errorValue_(TSCEErrorValue, v92, v26, v93);
          goto LABEL_58;
        }

        goto LABEL_60;
      }
    }

    v90 = objc_msgSend_errorValue_(TSCEErrorValue, v23, v26, v25);
LABEL_58:
    v80 = v90;

    goto LABEL_39;
  }

  v124 = 0;
  v125 = 0;
  memset(&__p, 0, sizeof(__p));
  if (a2 < a7)
  {
    a2 = a2;
    v116 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    while (1)
    {
      v35 = TSCEEvaluationStack::rawArgumentAtIndex(a1, a2);
      if ((objc_msgSend_isNil(v35, v36, v37, v38) & 1) == 0)
      {
        v42 = objc_msgSend_nativeType(v35, v39, v40, v41);
        if (v42 != 12)
        {
          if (v42 == 6 && (!a5 || (objc_msgSend_referenceForGeometryOnly(a5, v43, v44, v45) & 1) == 0))
          {
            v46 = objc_msgSend_asReferenceValue(v35, v43, v44, v45, *&v116);
            v50 = v46;
            if (v46 && objc_msgSend_isOutputOfAFunction(v46, v47, v48, v49))
            {
              objc_msgSend_anyRef(v50, v51, v52, v53);
              objc_msgSend_addCalculatedPrecedent_(v117, v54, v128, v55);
            }
          }

          v122 = 0;
          v56 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v35, v43, v117, a3, a2, 1, &v122, *&v116);
          v60 = v122;
          if (v60)
          {
            if (!a5 || (objc_msgSend_argumentContext(a5, v57, v58, v59) & 0xFFFFFFFE) != 8)
            {
              v80 = objc_msgSend_errorValue_(TSCEErrorValue, v57, v60, v59);

              goto LABEL_45;
            }

            memset(v128, 0, 24);
            v121 = objc_msgSend_errorValue_(TSCEErrorValue, v57, v60, v59);
            sub_2210ED5B8(v128, &v121);

            v61 = [TSCEDenseGrid alloc];
            v64 = objc_msgSend_initWithValues_(v61, v62, v128, v63);
            v120 = objc_msgSend_gridValue_(TSCEGridValue, v65, v64, v66);
            sub_2212D01C8(&__p._numberFormat.decimalPlaces, &v120);

            v126._tskFormat = v128;
            sub_22107C2C0(&v126);
          }

          else
          {
            *v128 = v117;
            *&v128[8] = a3;
            *&v128[16] = 0;
            *&v128[24] = a2;
            *&v128[28] = 0;
            *&v128[31] = 0;
            v129 = v116;
            v130 = 0;
            v131 = 0;
            if (v56)
            {
              objc_msgSend_format(v56, v67, v68, v69);
            }

            else
            {
              memset(&v126, 0, sizeof(v126));
            }

            v119 = objc_msgSend_flattenedGrid_format_(v56, v67, v128, &v126);
            sub_2212D01C8(&__p._numberFormat.decimalPlaces, &v119);

            if (v56)
            {
              objc_msgSend_format(v56, v70, v71, v72);
            }

            else
            {
              memset(&v126, 0, sizeof(v126));
            }

            v73 = *&__p._formatType;
            if (*&__p._formatType >= *&__p._durationFormat)
            {
              v74 = sub_22114F468(&__p, &v126);
            }

            else
            {
              TSCEFormat::TSCEFormat(*&__p._formatType, &v126);
              v74 = v73 + 32;
            }

            *&__p._formatType = v74;
          }
        }
      }

      if (a7 == ++a2)
      {
        v75 = *&__p._numberFormat.decimalPlaces;
        v76 = v124;
        goto LABEL_41;
      }
    }
  }

  v75 = 0;
  v76 = 0;
LABEL_41:
  if (v76 - v75 == 8)
  {
    v80 = *v75;
  }

  else
  {
    v81 = [TSCEAggregateGrid alloc];
    v84 = objc_msgSend_initWithGrids_(v81, v82, &__p._numberFormat, v83);
    v80 = objc_msgSend_gridValue_(TSCEGridValue, v85, v84, v86);
  }

  sub_221256020(&__p, &v118);
  TSCEFormat::TSCEFormat(v128, &v118);
  objc_msgSend_setFormat_(v80, v87, v128, v88);
LABEL_45:
  if (__p._tskFormat)
  {
    *&__p._formatType = __p._tskFormat;
    operator delete(__p._tskFormat);
  }

  *v128 = &__p._numberFormat;
  sub_22107C2C0(v128);
LABEL_48:

  return v80;
}

void *sub_2212D01C8(void *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *result) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - *result;
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

    v13[4] = result;
    if (v11)
    {
      sub_22107C1F0(result, v11);
    }

    v13[0] = 0;
    v13[1] = 8 * v8;
    v13[3] = 0;
    v12 = *a2;
    *a2 = 0;
    *(8 * v8) = v12;
    v13[2] = 8 * v8 + 8;
    sub_22107C098(result, v13);
    v7 = v3[1];
    result = sub_22107C26C(v13);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
    result[1] = v7;
  }

  v3[1] = v7;
  return result;
}

void sub_2212D02AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

id TSCEEvaluationStack::valueForArgumentAtIndexSwitch(TSCEEvaluationStack *a1, uint64_t a2, void *a3, void *a4, void *a5, const char *a6, uint64_t a7, int a8)
{
  v17 = a4;
  if (a7 > 2)
  {
    if (a7 == 3)
    {
      v18 = TSCEEvaluationStack::valueForArgumentAtIndexListLikeMode(a1, a2, a3, v17, a5, a6);
      goto LABEL_11;
    }

    if (a7 == 4)
    {
      v18 = TSCEEvaluationStack::valueForArgumentAtIndexRepeatingMode(a1, a2, a3, v17, a5, 0, a8);
      goto LABEL_11;
    }
  }

  else
  {
    if ((a7 - 1) < 2)
    {
      v18 = TSCEEvaluationStack::valueForArgumentAtIndexSingletonMode(a1, a2, a3, v17, a5, a6);
      goto LABEL_11;
    }

    if (!a7)
    {
      v18 = TSCEEvaluationStack::rawArgumentAtIndex(a1, a2);
      goto LABEL_11;
    }
  }

  v19 = MEMORY[0x277D81150];
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "TSCEValue *TSCEEvaluationStack::valueForArgumentAtIndexSwitch(uint32_t, TSCEFunctionSpec *__unsafe_unretained, TSCEEvaluationContext *__strong, TSCEFunctionArgSpec *__unsafe_unretained, TSCEArgumentType, TSCEArgumentAccessorMode, uint32_t)", v16);
  v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEvaluationStack.mm", v22);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 478, 0, "Invalid accessorMode (%d)", a7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
  v18 = objc_msgSend_nilValue(TSCENilValue, v28, v29, v30);
LABEL_11:
  v31 = v18;

  return v31;
}

id TSCEEvaluationStack::typeCheckArgumentsForFunction(void *a1, void *a2, void *a3)
{
  v62 = a1;
  v64 = a3;
  v6 = a3[1] - *a3;
  if ((v6 >> 3) < 1)
  {
LABEL_34:
    v35 = 0;
    goto LABEL_36;
  }

  v7 = 0;
  v8 = 0;
  v61 = (v6 >> 3) & 0x7FFFFFFF;
  while (1)
  {
    v9 = objc_msgSend_argumentSpecForIndex_(a2, v4, v8, v5, v61);
    v13 = v9;
    if (v9)
    {
      v14 = objc_msgSend_argumentType(v9, v10, v11, v12);
      v18 = objc_msgSend_accessorMode(v13, v15, v16, v17);
      v22 = objc_msgSend_argumentContext(v13, v19, v20, v21);
      v26 = objc_msgSend_allowError(v13, v23, v24, v25);
    }

    else
    {
      v14 = 0;
      v26 = 0;
      v18 = 1;
      v22 = 14;
    }

    v27 = *(*v64 + 8 * v8);
    if (objc_msgSend_unwrapThunk(v13, v28, v29, v30) && objc_msgSend_isThunk(v27, v31, v32, v33))
    {
      v34 = objc_msgSend_unwrapThunk_(v62, v31, v27, v33);

      v27 = v34;
    }

    if ((v22 == 14) | v26 & 1)
    {
      v35 = 0;
    }

    else
    {
      v36 = *(*v64 + 8 * v8);
      if (objc_msgSend_isError(v36, v37, v38, v39))
      {
        v35 = objc_msgSend_errorWithContext_(v36, v40, v62, v41);
      }

      else
      {
        v35 = 0;
      }
    }

    if ((v18 - 1) >= 2)
    {
      break;
    }

    if (v22 != 14 && (!objc_msgSend_isTokenOrEmptyArg(v27, v31, v32, v33) || (objc_msgSend_isOptional(v13, v42, v43, v44) & 1) == 0))
    {
      v66 = v27;
      TSCEEvaluationStack::replaceValueForArgumentAtIndexSingletonMode(&v66, v8, a2, v62, v13, v14);
      v45 = v66;
      v46 = v66;

      objc_storeStrong((*v64 + v7), v45);
      if ((v26 & 1) == 0)
      {
        if (!objc_msgSend_isError(v46, v47, v48, v49))
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      goto LABEL_28;
    }

LABEL_25:
    if (!v26)
    {
      v46 = v27;
      goto LABEL_32;
    }

LABEL_29:

    v46 = v27;
LABEL_33:

    ++v8;
    v7 += 8;
    if (v61 == v8)
    {
      goto LABEL_34;
    }
  }

  if (v18 != 3 || objc_msgSend_isTokenOrEmptyArg(v27, v31, v32, v33) && (objc_msgSend_isOptional(v13, v52, v53, v54) & 1) != 0)
  {
    goto LABEL_25;
  }

  v65 = v27;
  TSCEEvaluationStack::replaceValueForArgumentAtIndexListLikeMode(&v65, v8, a2, v62, v13, v14);
  v55 = v65;
  v46 = v65;

  objc_storeStrong((*v64 + v7), v55);
  if (v26)
  {
LABEL_28:
    v27 = v46;
    goto LABEL_29;
  }

  if (!objc_msgSend_isError(v46, v56, v57, v58))
  {
    goto LABEL_32;
  }

LABEL_31:
  v59 = objc_msgSend_errorWithContext_(v46, v50, v62, v51);

  v35 = v59;
LABEL_32:
  if (!v35)
  {
    goto LABEL_33;
  }

LABEL_36:

  return v35;
}

id TSCEEvaluationStack::valueForArgumentAtIndex(TSCEEvaluationStack *this, uint64_t a2, TSCEFunctionSpec *a3, TSCEEvaluationContext *a4)
{
  v7 = a4;
  argumentCount = this->_argumentCount;
  v12 = objc_msgSend_maxArguments(a3, v9, v10, v11);
  v16 = objc_msgSend_minArguments(a3, v13, v14, v15);
  v19 = objc_msgSend_argumentSpecForIndex_(a3, v17, a2, v18);
  v23 = v19;
  if (v19)
  {
    v24 = objc_msgSend_argumentType(v19, v20, v21, v22);
    v28 = objc_msgSend_accessorMode(v23, v25, v26, v27);
  }

  else
  {
    v24 = 0;
    v28 = 1;
  }

  if (v16 <= argumentCount && (v12 == -1 || v12 >= argumentCount) && (argumentCount > a2 || ((v28 & 0xFFFFFFFB) != 0 ? (v36 = v28 == 2) : (v36 = 1), !v36 ? (v37 = 0) : (v37 = 1), !a2 && v37 && !objc_msgSend_minArguments(a3, v20, v21, v22))))
  {
    v34 = TSCEEvaluationStack::valueForArgumentAtIndexSwitch(this, a2, a3, v7, v23, v24, v28, argumentCount);
  }

  else
  {
    v29 = objc_msgSend_functionName(a3, v20, v21, v22);
    v31 = objc_msgSend_wrongNumberOfArgumentsErrorForFunctionName_provided_(TSCEError, v30, v29, argumentCount);
    v34 = objc_msgSend_raiseErrorOrConvert_(v7, v32, v31, v33);
  }

  return v34;
}

void TSCEEvaluationStack::replaceArgumentAtIndex(TSCEEvaluationStack *this, unsigned int a2, TSCEValue *a3)
{
  v7 = a3;
  argumentCount = this->_argumentCount;
  if (argumentCount <= a2)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "void TSCEEvaluationStack::replaceArgumentAtIndex(uint32_t, TSCEValue *__strong)", v6);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEvaluationStack.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 590, 0, "cannot replace an invalid index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
    argumentCount = this->_argumentCount;
  }

  v18 = &this->_evaluationStack.__begin_[((this->_evaluationStack.var0 - this->_evaluationStack.__begin_) >> 3) - argumentCount];
  v19 = v18[a2];
  v18[a2] = v7;
}

void TSCEEvaluationStack::clearArgument(TSCEEvaluationStack *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = this->_evaluationStack.var0 - this->_evaluationStack.__begin_;
  argumentCount = this->_argumentCount;
  v7 = (v5 - argumentCount);
  if (v5 >= argumentCount)
  {
    sub_2212D0BF4(this, v7);
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "void TSCEEvaluationStack::clearArgument()", a4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEvaluationStack.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 598, 0, "Messed up arguments on _evaluationStack");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    begin = this->_evaluationStack.__begin_;
    for (i = this->_evaluationStack.var0; i != begin; --i)
    {
      v19 = *(i - 1);
    }

    this->_evaluationStack.var0 = begin;
  }

  this->_argumentCount = 0;
}

void sub_2212D0BF4(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        v3 -= 8;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_2212D0D48(a1, v5);
  }
}

void TSCEEvaluationStack::clearArgumentsAndPush(TSCEEvaluationStack *this, TSCEValue *a2)
{
  v4 = a2;
  v11 = v4;
  var0 = this->_evaluationStack.var0;
  if (this->_evaluationStack.__begin_ == var0)
  {
    sub_221179A54(this, &v11);
    v6 = v11;
  }

  else
  {
    v6 = v4;
    v7 = var0 - 1;
    objc_storeStrong(&var0[-(this->_argumentCount - 1) - 1], a2);
    argumentCount = this->_argumentCount;
    v9 = argumentCount >= 2;
    v10 = argumentCount - 2;
    if (v9)
    {
      sub_221165C5C(this, &v7[-v10], this->_evaluationStack.var0);
    }
  }

  this->_argumentCount = -1;
}

void sub_2212D0D48(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_22107C148();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v11[4] = a1;
    if (v10)
    {
      sub_22107C1F0(a1, v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v8;
    v11[3] = 0;
    bzero((8 * v8), 8 * a2);
    v11[2] = 8 * v8 + 8 * a2;
    sub_22107C098(a1, v11);
    sub_22107C26C(v11);
  }
}

void sub_2212D0E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void TSCEASTStreamIterator::TSCEASTStreamIterator(TSCEASTStreamIterator *this, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3)
{
  TSCEASTIteratorBase::TSCEASTIteratorBase(this, a2, a3);
  *v3 = &unk_2834A4338;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
}

{
  TSCEASTIteratorBase::TSCEASTIteratorBase(this, a2, a3);
  *v3 = &unk_2834A4338;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
}

void TSCEASTStreamIterator::~TSCEASTStreamIterator(TSCEASTStreamIterator *this, TSCEASTNodeArray *a2)
{
  *this = &unk_2834A4338;
  v3 = *(this + 13);
  if (v3)
  {
    TSCEASTNodeArray::~TSCEASTNodeArray(v3);
    MEMORY[0x223DA1450]();
  }

  v4 = *(this + 14);
  if (v4)
  {
    v5 = *v4;
    v6 = *(v4 + 8);
    if (*v4 == v6)
    {
      goto LABEL_9;
    }

    do
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    while (v5 != v6);
    v4 = *(this + 14);
    if (v4)
    {
LABEL_9:
      v7 = *v4;
      if (*v4)
      {
        *(v4 + 8) = v7;
        operator delete(v7);
      }

      MEMORY[0x223DA1450](v4, 0x80C40D6874129);
    }
  }

  v8 = *(this + 15);
  if (v8)
  {
    v9 = *v8;
    if (*v8)
    {
      *(v8 + 8) = v9;
      operator delete(v9);
    }

    MEMORY[0x223DA1450](v8, 0x80C40D6874129);
  }

  v10 = *(this + 16);
  if (v10)
  {
    v11 = *v10;
    if (*v10)
    {
      *(v10 + 8) = v11;
      operator delete(v11);
    }

    MEMORY[0x223DA1450](v10, 0x10C402FEFCB83);
  }

  TSCEASTIteratorBase::~TSCEASTIteratorBase(this, a2);
}

{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(this, a2);

  JUMPOUT(0x223DA1450);
}

void TSCEASTStreamIterator::deleteInDestructor(TSCEASTStreamIterator *this, TSCEASTElement *a2)
{
  if (a2)
  {
    v3 = *(this + 14);
    if (!v3)
    {
      operator new();
    }

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
        sub_221122DC8(v3, v10);
      }

      v11 = (8 * v7);
      *v11 = a2;
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
      *v5 = a2;
      v6 = (v5 + 1);
    }

    *(v3 + 8) = v6;
  }
}

void TSCEASTStreamIterator::pushEmbeddedSizeOffset(TSCEASTStreamIterator *this, uint64_t a2)
{
  v3 = *(this + 16);
  if (!v3)
  {
    operator new();
  }

  v5 = v3[1];
  v4 = v3[2];
  if (v5 >= v4)
  {
    v7 = *v3;
    v8 = v5 - *v3;
    v9 = v8 >> 3;
    v10 = (v8 >> 3) + 1;
    if (v10 >> 61)
    {
      sub_22107C148();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      sub_2210874C4(v3, v13);
    }

    *(8 * v9) = a2;
    v6 = 8 * v9 + 8;
    memcpy(0, v7, v8);
    v14 = *v3;
    *v3 = 0;
    v3[1] = v6;
    v3[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 8);
  }

  v3[1] = v6;
}

uint64_t TSCEASTStreamIterator::popEmbeddedSizeOffset(TSCEASTStreamIterator *this, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(this + 16);
  if (!v5 || *v5 == v5[1])
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "size_t TSCEASTStreamIterator::popEmbeddedSizeOffset()", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTStreamIterator.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 60, 0, "Mismatch in push/popEmbeddedSizeOffset");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
    v5 = *(this + 16);
    if (!v5)
    {
      return 0;
    }
  }

  v15 = v5[1];
  result = *(v15 - 8);
  v5[1] = v15 - 8;
  return result;
}

void TSCEASTStreamIterator::pushIncompleteEmbeddedNode(TSCEASTStreamIterator *this, TSCEASTElementWithChildren *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(this + 15);
  if (!v5)
  {
    operator new();
  }

  v6 = *v5;
  v7 = *(v5 + 8);
  if (*v5 == v7 || *(v7 - 1) != a2)
  {
    v18 = *(v5 + 16);
    if (v7 >= v18)
    {
      v20 = (v7 - v6) >> 3;
      if ((v20 + 1) >> 61)
      {
        sub_22107C148();
      }

      v21 = v18 - v6;
      v22 = v21 >> 2;
      if (v21 >> 2 <= (v20 + 1))
      {
        v22 = v20 + 1;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        v23 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v22;
      }

      if (v23)
      {
        sub_221122DC8(v5, v23);
      }

      *(8 * v20) = a2;
      v19 = 8 * v20 + 8;
      v24 = *(v5 + 8) - *v5;
      v25 = (8 * v20 - v24);
      memcpy(v25, *v5, v24);
      v26 = *v5;
      *v5 = v25;
      *(v5 + 8) = v19;
      *(v5 + 16) = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v7 = a2;
      v19 = (v7 + 8);
    }

    *(v5 + 8) = v19;
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTStreamIterator::pushIncompleteEmbeddedNode(TSCEASTElementWithChildren *)", a4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTStreamIterator.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 81, 0, "Why are we pushing an incomplete embeddedNode multiple times?");

    v17 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v17, v14, v15, v16);
  }
}

uint64_t TSCEASTStreamIterator::popIncompleteEmbeddedNode(TSCEASTStreamIterator *this)
{
  v1 = *(this + 15);
  if (!v1)
  {
    return 0;
  }

  v2 = v1[1];
  if (*v1 == v2)
  {
    return 0;
  }

  result = *(v2 - 8);
  v1[1] = v2 - 8;
  return result;
}

void TSCEASTStreamIterator::appendElement(TSCEASTNodeArray **this, TSCEASTElement *a2)
{
  if (a2)
  {
    v4 = TSCEASTElement::tag(a2, this);
    if (v4 == 56 || v4 == 27)
    {
      if ((this[12] & 1) == 0)
      {
        TSCEASTNodeArray::writeUInt8(this[13], v4, v5, v6);
        TSCEASTStreamIterator::pushEmbeddedSizeOffset(this, this[13]->var1);
        v17 = 0;
        sub_22120D918(this[13], &v17, v7, v8);
      }

      TSCEASTStreamIterator::pushIncompleteEmbeddedNode(this, a2, v5, v6);
    }

    else if ((this[12] & 1) == 0)
    {
      v9 = (*(*a2 + 72))(a2, this);
      v12 = TSCEASTIteratorBase::readerForElement(this, a2, v10, v11);
      v14 = this[13];
      v15 = v12[1];
      v16 = **v12;
      v12[1] = (v15 + v9);

      sub_22120D7E8(v14, v15 + v16, v9, v13);
    }
  }
}

TSCEASTElement *TSCEASTStreamIterator::visitNode(TSCEASTNodeArray **this, TSCEASTElement *a2)
{
  *(a2 + 16) &= ~2u;
  (*&(*this)[9].var3)(this);

  return TSCEASTIteratorBase::visitNode(this, a2);
}

uint64_t TSCEASTStreamIterator::rewrite(TSCEASTStreamIterator *this, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(this + 2);
  v83 = v5;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  if (v5)
  {
    v5 = v5[1];
  }

  v85 = v5;
  if (!*(this + 13) && (*(this + 96) & 1) == 0)
  {
    operator new();
  }

  if ((*(this + 99) & 1) == 0)
  {
    v7 = "virtual void TSCEASTStreamIterator::rewrite()";
LABEL_9:
    if (v84 >= v85 || v86 && (v8 = v86[1], *v86 != v8) && v84 >= *(v8 - 8))
    {
      v9 = *(this + 15);
      if (!v9 || *v9 == v9[1])
      {
        return sub_22120E388(&v83);
      }
    }

    while (1)
    {
      if ((*(this + 99) & 1) != 0 || v84 < v85 && (!v86 || (v10 = v86[1], *v86 == v10) || v84 < *(v10 - 8)))
      {
LABEL_36:
        if (*(this + 99))
        {
          return sub_22120E388(&v83);
        }

        v29 = v84;
        if (v84 >= v85 || v86 && (v30 = v86[1], *v86 != v30) && v84 >= *(v30 - 8))
        {
          v31 = *(this + 15);
          if (!v31 || *v31 == v31[1])
          {
            return sub_22120E388(&v83);
          }
        }

        v32 = *(*v83 + v84++);
        switch(v32)
        {
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 10:
          case 11:
          case 12:
            v79 = v79 & 0xF8 | 2;
            v81 = 0;
            v82 = 0;
            v80 = 0;
            v77 = &unk_2834A54C8;
            v78 = v29;
            v33 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v33);
            goto LABEL_47;
          case 13:
          case 14:
          case 15:
          case 70:
            v79 = v79 & 0xF8 | 2;
            v81 = 0;
            v82 = 0;
            v80 = 0;
            v77 = &unk_2834A56D8;
            v78 = v29;
            v36 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v36);
LABEL_47:
            TSCEASTElementWithChildren::~TSCEASTElementWithChildren(&v77);
            goto LABEL_48;
          case 16:
          case 17:
          case 33:
          case 34:
            v79 = v79 & 0xF8 | 2;
            v81 = 0;
            v82 = 0;
            v80 = 0;
            v77 = &unk_2834A5D08;
            v78 = v29;
            v34 = TSCEASTFunctionElement::size(&v77, this, a3, a4);
            v35 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v35);
            goto LABEL_66;
          case 18:
            v79 = v79 & 0xF8 | 2;
            v77 = &unk_2834A5998;
            v78 = v29;
            v46 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v46);
            goto LABEL_58;
          case 19:
            v79 = v79 & 0xF8 | 2;
            v77 = &unk_2834A5A48;
            v78 = v29;
            v48 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v48);
            goto LABEL_70;
          case 20:
            v79 = v79 & 0xF8 | 2;
            v77 = &unk_2834A58E8;
            v78 = v29;
            v34 = TSCEASTStringElement::size(&v77, this, a3, a4);
            v50 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v50);
            break;
          case 21:
            v79 = v79 & 0xF8 | 2;
            v77 = &unk_2834A5AF8;
            v78 = v29;
            v34 = TSCEASTDateElement::size(&v77, this, a3, a4);
            v47 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v47);
            break;
          case 22:
            v79 = v79 & 0xF8 | 2;
            v77 = &unk_2834A5BA8;
            v78 = v29;
            v34 = TSCEASTDurationElement::size();
            v49 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v49);
            break;
          case 23:
            v79 = v79 & 0xF8 | 2;
            v77 = &unk_2834A5838;
            v78 = v29;
            v45 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v45);
            goto LABEL_48;
          case 24:
            v79 = v79 & 0xF8 | 2;
            v77 = &unk_2834A5C58;
            v78 = v29;
            v56 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v56);
            goto LABEL_70;
          case 25:
            v79 = v79 & 0xF8 | 2;
            v81 = 0;
            v82 = 0;
            v80 = 0;
            v77 = &unk_2834A6208;
            v78 = v29;
            v54 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v54);
            goto LABEL_72;
          case 26:
            v79 = v79 & 0xF8 | 2;
            v81 = 0;
            v82 = 0;
            v80 = 0;
            v77 = &unk_2834A62B8;
            v78 = v29;
            v57 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v57);
LABEL_72:
            TSCEASTElementWithChildren::~TSCEASTElementWithChildren(&v77);
            goto LABEL_74;
          case 27:
          case 56:
            operator new();
          case 28:
          case 45:
            v79 = v79 & 0xF8 | 2;
            v81 = 0;
            v82 = 0;
            v80 = 0;
            v77 = &unk_2834A5578;
            v78 = v29;
            v34 = TSCEASTColonElement::size(&v77, this);
            v40 = (*(*this + 40))(this, &v77);
            (*(*this + 72))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v40);
            goto LABEL_66;
          case 29:
          case 36:
            v79 = v79 & 0xF8 | 2;
            v77 = &unk_2834A5F18;
            v78 = v29;
            v34 = TSCEASTRelativeCoordRefElement::size(&v77, this);
            v42 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v42);
            break;
          case 30:
            v79 = v79 & 0xF8 | 2;
            v81 = 0;
            v82 = 0;
            v80 = 0;
            v77 = &unk_2834A5DB8;
            v78 = v29;
            v34 = TSCEASTUnknownFunctionElement::size(&v77, this, a3, a4);
            v51 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v51);
            goto LABEL_66;
          case 31:
          case 32:
            v79 = v79 & 0xF8 | 2;
            v81 = 0;
            v82 = 0;
            v80 = 0;
            v77 = &unk_2834A5E68;
            v78 = v29;
            v34 = TSCEASTWhitespaceElement::size(&v77, this, a3, a4);
            v41 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v41);
            goto LABEL_66;
          case 50:
            v79 = v79 & 0xF8 | 2;
            v77 = &unk_2834A60A8;
            v78 = v29;
            v34 = TSCEASTUidReferenceElement::size(&v77, this);
            v55 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v55);
            break;
          case 52:
            v79 = v79 & 0xF8 | 2;
            v81 = 0;
            v82 = 0;
            v80 = 0;
            v77 = &unk_2834A6418;
            v78 = v29;
            v34 = TSCEASTLetBindElement::size(&v77, this, a3, a4);
            v53 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v53);
            goto LABEL_66;
          case 53:
            v79 = v79 & 0xF8 | 2;
            v77 = &unk_2834A64C8;
            v78 = v29;
            v58 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v58);
LABEL_74:
            v34 = 5;
            break;
          case 54:
            v79 = v79 & 0xF8 | 2;
            v77 = &unk_2834A6578;
            v78 = v29;
            v59 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v59);
LABEL_48:
            v34 = 1;
            break;
          case 55:
            v79 = v79 & 0xF8 | 2;
            v81 = 0;
            v82 = 0;
            v80 = 0;
            v77 = &unk_2834A6628;
            v78 = v29;
            v34 = TSCEASTLambdaElement::size(&v77, this, a3, a4);
            v43 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v43);
LABEL_66:
            TSCEASTElementWithChildren::~TSCEASTElementWithChildren(&v77);
            break;
          case 63:
          case 64:
          case 65:
            v79 = v79 & 0xF8 | 2;
            v77 = &unk_2834A5FE8;
            v78 = v29;
            v39 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v39);
LABEL_58:
            v34 = 17;
            break;
          case 66:
            v79 = v79 & 0xF8 | 2;
            v77 = &unk_2834A66D8;
            v78 = v29;
            v34 = TSCEASTCategoryRefElement::size(&v77, this, a3, a4);
            v61 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v61);
            break;
          case 67:
            v79 = v79 & 0xF8 | 2;
            v77 = &unk_2834A5628;
            v78 = v29;
            v34 = TSCEASTColonTractElement::size(&v77, this, a3, a4);
            v44 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v44);
            break;
          case 68:
            v79 = v79 & 0xF8 | 2;
            v77 = &unk_2834A6158;
            v78 = v29;
            v34 = TSCEASTViewTractRefElement::size(&v77, this);
            v60 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v60);
            break;
          case 69:
            v79 = v79 & 0xF8 | 2;
            v81 = 0;
            v82 = 0;
            v80 = 0;
            v77 = &unk_2834A5788;
            v78 = v29;
            v52 = (*(*this + 40))(this, &v77);
            TSCEASTStreamIterator::appendElement(this, v52);
            TSCEASTElementWithChildren::~TSCEASTElementWithChildren(&v77);
LABEL_70:
            v34 = 2;
            break;
          default:
            v62 = MEMORY[0x277D81150];
            v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v7, a4);
            v63 = v7;
            v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTStreamIterator.mm", v65);
            v67 = v84;
            v71 = TSCEASTNodeArray::codeString(*(this + 2), v68, v69, v70);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v72, v76, v66, 398, 0, "%d is not a valid node tag, seen at offset: %lu, seen in %{public}@", v32, v67, v71);

            objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v73, v74, v75);
            v7 = v63;
            v34 = 0;
            *(this + 99) = 1;
            break;
        }

        sub_22120C7F0(&v83, (v34 + v29), v37, v38);
        if ((*(*this + 320))(this))
        {
          *(this + 99) = 1;
          return sub_22120E388(&v83);
        }

        if (*(this + 99))
        {
          return sub_22120E388(&v83);
        }

        goto LABEL_9;
      }

      v11 = *(this + 15);
      if (!v11 || (v12 = v11[1], *v11 == v12))
      {
        v13 = 0;
      }

      else
      {
        v13 = *(v12 - 8);
        v11[1] = v12 - 8;
      }

      v14 = TSCEASTElement::tag(v13, this);
      if (v14 == 56)
      {
        break;
      }

      if (v14 == 52)
      {
        if (!v13 || (*(this + 96) & 1) != 0)
        {
          goto LABEL_34;
        }

LABEL_32:
        v18 = TSCEASTStreamIterator::popEmbeddedSizeOffset(this, v15, v16, v17);
        *(**(this + 13) + v18) = *(*(this + 13) + 8) - v18 - 8;
        goto LABEL_34;
      }

      if (v14 == 27)
      {
        break;
      }

      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v7, v17);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTStreamIterator.mm", v22);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 175, 0, "Unexpected incomplete embedded node type found");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
LABEL_34:
      TSCEASTNodeArrayReader::popEndPoint(&v83);
      v28 = *(this + 15);
      if (!v28 || *v28 == v28[1])
      {
        goto LABEL_36;
      }
    }

    if (!v13)
    {
      goto LABEL_34;
    }

    (*(*this + 192))(this, v13);
    if (*(this + 96))
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  return sub_22120E388(&v83);
}

void sub_2212D28C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  sub_22120E388(va);
  _Unwind_Resume(a1);
}

void sub_2212D35A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v21 - 128), 8);

  _Unwind_Resume(a1);
}

void sub_2212D3700(uint64_t a1, void *a2)
{
  v3 = a2;
  TSCEFormat::TSCEFormat(&v7, v3, 0);
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    TSCEFormat::operator=(*(*(a1 + 40) + 8) + 48, &v7);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  else
  {
    TSCEFormat::formatByMergingWithFormat(&v6, (*(*(a1 + 40) + 8) + 48), &v7, v4, v5);
    TSCEFormat::operator=(*(*(a1 + 40) + 8) + 48, &v6);
  }
}

uint64_t sub_2212D4278(uint64_t a1, TSUIndexRange *this)
{
  v2 = *(a1 + 32);
  v4 = TSUIndexRange::asNSRange(this);

  return objc_msgSend_addIndexesInRange_(v2, v3, v4, v3);
}

uint64_t sub_2212D44EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v9[0] = a2;
  v9[1] = a3;
  v5 = objc_msgSend_lookupKeyForRowUID_(*(a1 + 32), a2, v9, a4);
  return objc_msgSend_addIndex_(*(a1 + 40), v6, v5, v7);
}

void sub_2212D464C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  v9 = *(a1 + 40);
  v10 = *(v9 + 40);
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = *(v9 + 32);
  v12 = *v10;
  if (v11 < *v10)
  {
    *(v9 + 32) = v11 + 1;
    objc_msgSend_encodeToArchive_(v5, v6, *&v10[2 * v11 + 2], v7);
    goto LABEL_8;
  }

  if (v12 == *(v9 + 36))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v9 + 24));
    v10 = *(v9 + 40);
    v12 = *v10;
  }

  *v10 = v12 + 1;
  v15 = MEMORY[0x223DA02D0](*(v9 + 24));
  v16 = *(v9 + 32);
  v17 = *(v9 + 40) + 8 * v16;
  *(v9 + 32) = v16 + 1;
  *(v17 + 8) = v15;
  objc_msgSend_encodeToArchive_(v5, v18, v15, v19);
LABEL_8:
  if (!*(a1 + 32))
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTGroupNodeFormatManager encodeToArchive:forGroupBy:backwardCompat:]_block_invoke", v14);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNodeFormatManager.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 314, 0, "invalid nil value for '%{public}s'", "groupBy");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
  }

  MEMORY[0x223D9F7A0](&v51, v8);
  v29 = *(a1 + 40);
  v30 = *(v29 + 88);
  if (!v30)
  {
    goto LABEL_15;
  }

  v31 = *(v29 + 80);
  v32 = *v30;
  if (v31 >= *v30)
  {
    if (v32 != *(v29 + 84))
    {
LABEL_16:
      *v30 = v32 + 1;
      v33 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(*(v29 + 72));
      v34 = *(v29 + 80);
      v35 = *(v29 + 88) + 8 * v34;
      *(v29 + 80) = v34 + 1;
      *(v35 + 8) = v33;
      goto LABEL_17;
    }

LABEL_15:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v29 + 72));
    v30 = *(v29 + 88);
    v32 = *v30;
    goto LABEL_16;
  }

  *(v29 + 80) = v31 + 1;
  v33 = *&v30[2 * v31 + 2];
LABEL_17:
  sub_22126A644(&v51, v33);
  if (*(a1 + 48) == 1 && (objc_msgSend_isForPivotTable(*(a1 + 32), v36, v37, v38) & 1) == 0)
  {
    v39 = *(a1 + 40);
    v40 = *(v39 + 64);
    if (!v40)
    {
      goto LABEL_24;
    }

    v41 = *(v39 + 56);
    v42 = *v40;
    if (v41 < *v40)
    {
      *(v39 + 56) = v41 + 1;
      v43 = *&v40[2 * v41 + 2];
LABEL_26:
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = sub_2212D49A8;
      v48[3] = &unk_278462B20;
      v49 = *(a1 + 32);
      v50 = v43;
      objc_msgSend_enumerateIndexesUsingBlock_(v8, v46, v48, v47);

      goto LABEL_27;
    }

    if (v42 == *(v39 + 60))
    {
LABEL_24:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v39 + 48));
      v40 = *(v39 + 64);
      v42 = *v40;
    }

    *v40 = v42 + 1;
    v43 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive>(*(v39 + 48));
    v44 = *(v39 + 56);
    v45 = *(v39 + 64) + 8 * v44;
    *(v39 + 56) = v44 + 1;
    *(v45 + 8) = v43;
    goto LABEL_26;
  }

LABEL_27:
  TSUIndexSet::~TSUIndexSet(&v51);
}

void sub_2212D4954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, TSUIndexSet *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17)
{
  TSUIndexSet::~TSUIndexSet(&a17);

  _Unwind_Resume(a1);
}

uint64_t sub_2212D49A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v14._lower = objc_msgSend_rowUIDForLookupKey_(*(a1 + 32), a2, a2, a4);
  v14._upper = v5;
  v6 = *(a1 + 40);
  v7 = *(v6 + 32);
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = *(v6 + 24);
  v9 = *v7;
  if (v8 >= *v7)
  {
    if (v9 != *(v6 + 28))
    {
LABEL_7:
      *v7 = v9 + 1;
      v10 = MEMORY[0x223DA0360](*(v6 + 16));
      v11 = *(v6 + 24);
      v12 = *(v6 + 32) + 8 * v11;
      *(v6 + 24) = v11 + 1;
      *(v12 + 8) = v10;
      return TSKUIDStruct::saveToMessage(&v14, v10);
    }

LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 16));
    v7 = *(v6 + 32);
    v9 = *v7;
    goto LABEL_7;
  }

  *(v6 + 24) = v8 + 1;
  v10 = *&v7[2 * v8 + 2];
  return TSKUIDStruct::saveToMessage(&v14, v10);
}

void sub_2212D5AF4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, a2, a3, a4);
  byte_27CFB44B8 = objc_msgSend_tokenizeFormulaStringLiterals(v7, v4, v5, v6);
}

void sub_2212D61D8(uint64_t a1, char *__s)
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

void sub_2212D62D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TSTParser::TSTParser(TSTParser *this, TSCECalculationEngine *a2, TSWPStorage *a3, TSCEParseOptionsContext *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v7;
  *this = v10;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = v9;
  *(this + 5) = 0;
  v14 = objc_msgSend_documentLocale(v10, v11, v12, v13);
  v18 = objc_msgSend_listSeparator(v14, v15, v16, v17);
  isEqualToString = objc_msgSend_isEqualToString_(v18, v19, @",", v20);

  if (isEqualToString)
  {
    operator new();
  }

  operator new();
}

void sub_2212D64B0(_Unwind_Exception *a1)
{
  v7 = v6;
  MEMORY[0x223DA1450](v7, 0x10B3C40B8042996);

  _Unwind_Resume(a1);
}

void TSTParser::~TSTParser(TSTParser *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

id TSTParser::locale(id *this, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_documentLocale(*this, a2, a3, a4);

  return v4;
}

void *TSTParser::parse(TSTParser *this, TSTTableInfo *a2, const TSUModelCellCoord *a3)
{
  v5 = a2;
  dword_27CFB6C78 = 0;
  v9 = objc_autoreleasePoolPush();
  if (v5)
  {
    v10 = objc_msgSend_context(v5, v6, v7, v8);
    v14 = objc_msgSend_objectLocale(v10, v11, v12, v13);
  }

  else
  {
    v14 = objc_msgSend_documentLocale(*this, v6, v7, v8);
  }

  v15 = *(this + 3);
  *(this + 3) = 0;

  v16 = sub_2216F2CB8(this);
  v20 = *(this + 3);
  if (v16 == 1)
  {
    if (!v20)
    {
      v21 = sub_2212B889C(*(this + 1));
      if (objc_msgSend_length(v21, v22, v23, v24))
      {
        v25 = sub_2212B889C(*(this + 1));
        v28 = objc_msgSend_characterAtIndex_(v25, v26, 0, v27);
        isFormulaEqualsCharacter = objc_msgSend_isFormulaEqualsCharacter_(TSTFormula, v29, v28, v30);

        if (isFormulaEqualsCharacter)
        {
          v35 = objc_msgSend_syntaxLeadingEqualError(TSCEError, v32, v33, v34);
LABEL_15:
          v52 = *(this + 3);
          *(this + 3) = v35;

          goto LABEL_16;
        }
      }

      else
      {
      }

      v35 = objc_msgSend_syntaxError(TSCEError, v32, v33, v34);
      goto LABEL_15;
    }

LABEL_16:
    isSyntaxError = 1;
    goto LABEL_17;
  }

  if (v20)
  {
    goto LABEL_16;
  }

  v36 = objc_msgSend_convertEmptyArgumentsToPlaceholders(*(this + 2), v17, v18, v19);
  v37 = *(this + 2);
  *(this + 2) = v36;

  TSCESymbolTable::TSCESymbolTable(&v61, v14);
  v42 = objc_msgSend_copyByResolvingIdentifiers_hostTable_baseHostCell_forceReferenceInterpretation_symbolTable_oldToNewNodeMap_(*(this + 2), v38, *this, v5, *a3, 0, &v61, 0);
  if (v42)
  {
    TSCESymbolTable::TSCESymbolTable(&v60, v14);
    v45 = objc_msgSend_variableUsageErrorWithSymbolTable_(v42, v43, &v60, v44);
    v46 = *(this + 3);
    *(this + 3) = v45;

    v50 = *(this + 3);
    if (v50)
    {
      isSyntaxError = objc_msgSend_isSyntaxError(v50, v47, v48, v49);
    }

    else
    {
      isSyntaxError = 0;
    }

    p_undoSymbolTableMaps = &v60._undoSymbolTableMaps;
    sub_2210C8268(&p_undoSymbolTableMaps);
    sub_221087B80(&v60._identifierMap);
    sub_2210C82EC(&v60._symbolTableMap);
  }

  else
  {
    v56 = objc_msgSend_syntaxError(TSCEError, v39, v40, v41);
    v57 = *(this + 3);
    *(this + 3) = v56;

    isSyntaxError = *(this + 3) != 0;
  }

  v58 = *(this + 2);
  *(this + 2) = v42;
  v59 = v42;

  v60._locale = &v61._undoSymbolTableMaps;
  sub_2210C8268(&v60);
  sub_221087B80(&v61._identifierMap);
  sub_2210C82EC(&v61._symbolTableMap);

LABEL_17:
  objc_autoreleasePoolPop(v9);
  if (isSyntaxError)
  {
    v53 = 0;
  }

  else
  {
    v53 = *(this + 2);
  }

  v54 = v53;

  return v53;
}

void sub_2212D68B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  sub_2210C8214(va);
  _Unwind_Resume(a1);
}

void sub_2212D696C(id *a1)
{
  TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(a1);

  JUMPOUT(0x223DA1450);
}

void sub_2212D6AB8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    objc_msgSend_cellUIDRangeForCellRange_(v4, a2, a2, a3);
    v6 = v9[0];
    v5 = v9[1];
    v8 = *(&v10 + 1);
    v7 = v11;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v10 = 0u;
    v11 = 0u;
    *v9 = 0u;
  }

  if (((v7 - v8) >> 4) * ((v5 - v6) >> 4) && (v6 != v5 || v8 != v7))
  {
    sub_2210BAF64(*(a1 + 40) + 8, v9);
  }

  if (*(&v10 + 1))
  {
    *&v11 = *(&v10 + 1);
    operator delete(*(&v10 + 1));
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

void sub_2212D6CA8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_columnRowUIDMap(*(a1 + 32), a2, a3, a4);
  v9 = v7;
  if (v7)
  {
    objc_msgSend_cellUIDRangeForCellRange_(v7, v8, a2, a3);
  }

  else
  {
    *__p = 0u;
    v13 = 0u;
    *v11 = 0u;
  }

  v10 = __p[1];
  if (((v13 - __p[1]) >> 4) * ((v11[1] - v11[0]) >> 4) && (v11[0] != v11[1] || __p[1] != v13))
  {
    sub_2210BAF64(*(a1 + 40) + 8, v11);
    v10 = __p[1];
  }

  if (v10)
  {
    *&v13 = v10;
    operator delete(v10);
  }

  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }
}

void sub_2212D7010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  sub_22109DBB8(&__p);

  _Unwind_Resume(a1);
}

void sub_2212D7224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  _Block_object_dispose(&a20, 8);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2212D728C(__n128 *a1, __n128 *a2)
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

void sub_2212D72B0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2212D72C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v6 = v4[7];
  v5 = v4[8];
  if (v6 >= v5)
  {
    v8 = v4[6];
    v9 = (v6 - v8) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      sub_22107C148();
    }

    v11 = v5 - v8;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_221086F74((v4 + 6), v12);
    }

    v13 = (16 * v9);
    *v13 = a2;
    v13[1] = a3;
    v7 = 16 * v9 + 16;
    v14 = v4[6];
    v15 = v4[7] - v14;
    v16 = (16 * v9 - v15);
    memcpy(v16, v14, v15);
    v17 = v4[6];
    v4[6] = v16;
    v4[7] = v7;
    v4[8] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v6 = a2;
    v6[1] = a3;
    v7 = (v6 + 2);
  }

  v4[7] = v7;
}

void sub_2212D7554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  a22 = (v24 - 56);
  sub_2210BC30C(&a22);

  _Unwind_Resume(a1);
}

void sub_2212D76D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2212D79F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose((v24 - 136), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2212D7A68(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (*a3 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_2212D7C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (__p)
  {
    operator delete(__p);
  }

  sub_2210BDEC0(va);

  _Unwind_Resume(a1);
}

void sub_2212D7DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (__p)
  {
    operator delete(__p);
  }

  sub_2210BDEC0(va);

  _Unwind_Resume(a1);
}

void sub_2212D7FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  sub_22109DBB8(&__p);
  sub_2210BC30C(&__p);
  __p = (v19 - 88);
  sub_2210BC30C(&__p);
  _Unwind_Resume(a1);
}

void sub_2212D81A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_22109DBB8(&a9);
  MEMORY[0x223D9FC70](va);

  _Unwind_Resume(a1);
}

uint64_t *sub_2212D82F0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_221086EBC(a2, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 4);
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return sub_221086EBC(a2 + 3, *(a3 + 24), *(a3 + 32), (*(a3 + 32) - *(a3 + 24)) >> 4);
}

void sub_2212D834C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2212D8368(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2210BC8C4(result, a4);
  }

  return result;
}

void sub_2212D83D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2210BC30C(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_2212D83F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_2212D82F0(a1, v4, v6);
      v6 += 48;
      v4 = v12 + 6;
      v12 += 6;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_2210BC734(v9);
  return v4;
}

void **sub_2212D849C(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_221086F38(v6, v10);
    }

    sub_22107C148();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
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
        v13 += 16;
        *v15++ = v16;
        v14 += 16;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void sub_2212D94A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  TST::DateNodeArchive::~DateNodeArchive((v21 + 40));
  TST::DateNodeArchive::~DateNodeArchive(va);

  _Unwind_Resume(a1);
}

void sub_2212D94D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    v5 = *v5;
  }

  v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, a4);
  v9 = objc_msgSend_objectLocale(*(a1 + 32), v6, v7, v8);
  v10 = TSUCreateDateFromString();
  v11 = *(a1 + 32);
  v12 = *(v11 + 136);
  *(v11 + 136) = v10;

  *(*(a1 + 32) + 128) = 0;
  if ((*(*(a1 + 88) + 16) & 2) != 0)
  {
    v23 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v23 + 23) < 0)
    {
      v23 = *v23;
    }

    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v23, v15);
    v25 = *(a1 + 32);
    v17 = *(v25 + 144);
    *(v25 + 144) = v24;
  }

  else
  {
    v16 = MEMORY[0x277D811A0];
    v17 = objc_msgSend_objectLocale(*(a1 + 32), v13, v14, v15);
    v20 = objc_msgSend_defaultDateTimeFormatForLocale_(v16, v18, v17, v19);
    v21 = *(a1 + 32);
    v22 = *(v21 + 144);
    *(v21 + 144) = v20;
  }
}

void sub_2212D9810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2212DBD48(_Unwind_Exception *a1)
{
  v7 = v3;

  _Unwind_Resume(a1);
}

void sub_2212DD1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2212DD2A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 1);
  v18[0] = *a2;
  v18[1] = v5;
  v6 = objc_msgSend_translator(*(a1 + 32), a2, a3, a4);
  v9 = v6;
  if (v6)
  {
    objc_msgSend_chromeRangeRefForViewRangeRef_(v6, v7, v18, v8);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  objc_msgSend_setAllowTableName_(*(a1 + 40), v10, (*(*(*(a1 + 64) + 8) + 24) & 1) == 0, v11);
  v15 = objc_msgSend_nameForChromeRangeRef_namingContext_(*(a1 + 48), v12, v17, *(a1 + 40));
  if (v15)
  {
    v16 = *(a1 + 56);
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      objc_msgSend_appendFormat_(v16, v13, @" | %@", v14, v15);
    }

    else
    {
      objc_msgSend_appendString_(v16, v13, v15, v14);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

void sub_2212DF3A8(uint64_t a1, char *__s)
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

void sub_2212DF4A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2212DFC38(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a1 != a2)
  {
    *(a1 + 32) = *(a2 + 32);
    sub_2212E11A0(a1, *(a2 + 16), 0);
  }

  return a1;
}

uint64_t sub_2212DFCA0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 32) = *(a2 + 32);
    sub_2212E11A0(a1, *(a2 + 16), 0);
  }

  return a1;
}

TSCECellCoordSet *sub_2212DFCE8(void *a1, TSUCellCoord *a2)
{
  v5 = a2 + 1;
  v3 = sub_2212E13E8(a1, &a2[1], &unk_2217E1200, &v5);
  return TSCECellCoordSet::addCellCoord((v3 + 3), a2);
}

void sub_2212DFD38(void *a1, __int16 a2, TSCECellCoordSet *a3)
{
  v5 = a2;
  v6 = &v5;
  v4 = sub_2212E13E8(a1, &v5, &unk_2217E1200, &v6);
  TSCECellCoordSet::addCellCoords((v4 + 3), a3);
}

void sub_2212DFD90(void *a1, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_2212DFD38(a1, *(i + 8), (i + 3));
  }
}

uint64_t ***sub_2212DFDD0(void *a1, uint64_t a2)
{
  result = sub_2210C3024(a1, (a2 + 8));
  if (result)
  {
    v5 = result;
    TSCECellCoordSet::removeCellCoord((result + 3), a2);
    result = TSCECellCoordSet::isEmpty((v5 + 3));
    if (result)
    {

      return sub_2212E10A8(a1, (a2 + 8));
    }
  }

  return result;
}

void sub_2212DFE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2212E0068;
  v3[3] = &unk_27845F588;
  v3[4] = a1;
  sub_2212DFEC0(a2, v3);
}

void sub_2212DFEC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x4012000000;
  v18 = sub_2212E0328;
  v19 = nullsub_35;
  v20 = &unk_22188E88F;
  v4 = (a1 + 16);
  do
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    *(v16 + 28) = *(v4 + 8);
    v5 = objc_autoreleasePoolPush();
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_2212E0340;
    v7[3] = &unk_278462BE8;
    v9 = &v15;
    v8 = v3;
    v10 = &v11;
    TSCECellCoordSet::enumerateCoordsUsingBlock(v4 + 3, v7);
    v6 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
    objc_autoreleasePoolPop(v5);
  }

  while ((v6 & 1) == 0);
  _Block_object_dispose(&v15, 8);
}

void sub_2212E0030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t ***sub_2212E0070(void *a1, unsigned __int16 a2)
{
  v3 = a2;
  result = sub_2210C3024(a1, &v3);
  if (result)
  {
    return !TSCECellCoordSet::isEmpty((result + 3));
  }

  return result;
}

uint64_t **sub_2212E00A8(void *a1, __int16 a2)
{
  v3 = a2;
  v4 = &v3;
  return sub_2212E13E8(a1, &v3, &unk_2217E1200, &v4) + 3;
}

unint64_t sub_2212E00EC(uint64_t a1)
{
  v1 = (a1 + 16);
  while (1)
  {
    v1 = *v1;
    if (!v1)
    {
      break;
    }

    if (!TSCECellCoordSet::isEmpty((v1 + 3)))
    {
      return TSCECellCoordSet::anyCellCoord((v1 + 3));
    }
  }

  return 0x7FFF7FFFFFFFLL;
}

unint64_t sub_2212E014C(void *a1)
{
  v4 = sub_2212E00EC(a1);
  v5 = v2;
  sub_2212DFDD0(a1, &v4);
  return v4;
}

uint64_t ***sub_2212E0198(void *a1, uint64_t a2)
{
  result = sub_2210C3024(a1, (a2 + 8));
  if (result)
  {
    v4 = (result + 3);

    return TSCECellCoordSet::containsCellCoord(v4, a2);
  }

  return result;
}

uint64_t ***sub_2212E01E8(void *a1, uint64_t a2)
{
  result = sub_2210C3024(a1, (a2 + 16));
  if (result)
  {
    v4 = (result + 3);

    return TSCECellCoordSet::intersectsRange(v4, a2);
  }

  return result;
}

uint64_t sub_2212E0238(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v2 += TSCECellCoordSet::count((v1 + 3));
    v1 = *v1;
  }

  while (v1);
  return v2;
}

BOOL sub_2212E0280(uint64_t a1)
{
  v1 = (a1 + 16);
  do
  {
    v1 = *v1;
  }

  while (v1 && TSCECellCoordSet::isEmpty((v1 + 3)));
  return v1 == 0;
}

void sub_2212E02BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  for (i = *(a1 + 16); i; i = *i)
  {
    if (!TSCECellCoordSet::isEmpty((i + 3)))
    {
      sub_221266D14(a2, i + 8);
    }
  }
}

void sub_2212E030C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2212E0328(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 48) = v2;
  return result;
}

uint64_t sub_2212E0340(void *a1, void *a2, _BYTE *a3)
{
  *(*(a1[5] + 8) + 48) = *a2;
  result = (*(a1[4] + 16))();
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

void sub_2212E03B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = 0;
  v4 = (a1 + 16);
  do
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    v3[2](v3, *(v4 + 8), (v4 + 3), &v5);
  }

  while ((v5 & 1) == 0);
}

void sub_2212E0430(uint64_t a1@<X0>, void *a2@<X1>, TSCECellRefSet *a3@<X8>)
{
  v5 = a2;
  v8 = v5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x4812000000;
  v24 = sub_2212E061C;
  v25 = sub_2212E0628;
  v26 = &unk_22188E88F;
  v28[0] = 0;
  v28[1] = 0;
  v27 = v28;
  if (v5)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2212E0634;
    v18[3] = &unk_278462C10;
    v19 = v5;
    v20 = &v21;
    sub_2212E03B0(a1, v18);
  }

  else
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "TSCECellRefSet TSCEInternalCellRefSet::asCellRefSet(TSCEDependencyTracker *__strong) const", v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEInternalCellRefSet.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 212, 0, "Need a dependency tracker to do this conversion");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  TSCECellRefSet::TSCECellRefSet(a3, v22 + 2);
  _Block_object_dispose(&v21, 8);
  sub_22107C800(&v27, v28[0]);
}

void sub_2212E05CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  _Block_object_dispose(&a16, 8);
  sub_22107C800(v26 + 48, a23);

  _Unwind_Resume(a1);
}

void sub_2212E0634(uint64_t a1, const char *a2, TSCECellCoordSet *a3, uint64_t a4)
{
  v7._lower = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(*(a1 + 32), a2, a2, a4);
  v7._upper = v6;
  if (v7._lower | v6)
  {
    TSCECellRefSet::addCellRefs((*(*(a1 + 40) + 8) + 48), &v7, a3);
  }
}

void sub_2212E0690(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    while (1)
    {
      v4 = *(v2 + 8);
      v5 = *(a2 + 32);
      if (!v5)
      {
        goto LABEL_7;
      }

      v6 = *(a2 + 24);
      v7 = *v5;
      if (v6 >= *v5)
      {
        break;
      }

      *(a2 + 24) = v6 + 1;
      v8 = *&v5[2 * v6 + 2];
LABEL_9:
      v11 = *(v8 + 16);
      *(v8 + 32) = v4;
      *(v8 + 16) = v11 | 3;
      v12 = *(v8 + 24);
      if (!v12)
      {
        v13 = *(v8 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v13);
        *(v8 + 24) = v12;
      }

      TSCECellCoordSet::encodeToArchive((v2 + 3), v12);
      v2 = *v2;
      if (!v2)
      {
        return;
      }
    }

    if (v7 == *(a2 + 28))
    {
LABEL_7:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16));
      v5 = *(a2 + 32);
      v7 = *v5;
    }

    *v5 = v7 + 1;
    v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive_OwnerEntry>(*(a2 + 16));
    v9 = *(a2 + 24);
    v10 = *(a2 + 32) + 8 * v9;
    *(a2 + 24) = v9 + 1;
    *(v10 + 8) = v8;
    goto LABEL_9;
  }
}

void sub_2212E0790(void *a1, uint64_t a2)
{
  sub_2212E1650(a1);
  v4 = *(a2 + 24);
  if (v4 >= 1)
  {
    v5 = 8;
    do
    {
      v6 = *(*(a2 + 32) + v5);
      v9 = *(v6 + 32);
      v10 = &v9;
      v7 = sub_2212E13E8(a1, &v9, &unk_2217E1200, &v10);
      if (*(v6 + 24))
      {
        v8 = *(v6 + 24);
      }

      else
      {
        v8 = &TSCE::_CellCoordSetArchive_default_instance_;
      }

      TSCECellCoordSet::loadFromArchive((v7 + 3), v8);
      v5 += 8;
      --v4;
    }

    while (v4);
  }
}

void sub_2212E0848(uint64_t a1@<X0>, void *a2@<X1>, TSCECellRefSet *a3@<X8>)
{
  v5 = a2;
  v6 = v5;
  v11 = 0;
  v12 = &v11;
  v13 = 0x4812000000;
  v14 = sub_2212E061C;
  v15 = sub_2212E0628;
  v16 = &unk_22188E88F;
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  if (v5)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2212E0A38;
    v8[3] = &unk_278462C60;
    v9 = v5;
    v10 = &v11;
    sub_2212E09A4(a1, v8);

    v7 = v12;
  }

  else
  {
    v7 = &v11;
  }

  TSCECellRefSet::TSCECellRefSet(a3, v7 + 2);
  _Block_object_dispose(&v11, 8);
  sub_22107C800(&v17, v18[0]);
}

void sub_2212E096C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  _Block_object_dispose(&a16, 8);
  sub_22107C800(v24 + 48, a23);

  _Unwind_Resume(a1);
}

void sub_2212E09A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = (a1 + 16);
  do
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    v3[2](v3, (v5 + 2), (v5 + 3), &v6);
  }

  while ((v6 & 1) == 0);
  objc_autoreleasePoolPop(v4);
}

void sub_2212E0A38(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v7 = objc_msgSend_dependencyTracker(*(a1 + 32), a2, a3, a4);
  v10 = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(v7, v8, *a2, v9);
  v12 = v11;

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2212E0B08;
  v13[3] = &unk_278462C38;
  v13[4] = *(a1 + 40);
  v13[5] = v10;
  v13[6] = v12;
  TSCECellCoordSet::enumerateCoordsUsingBlock(a3, v13);
}

TSCECellCoordSet *sub_2212E0B08(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4.coordinate.row = *a2;
  v4.coordinate.column = *(a2 + 4);
  v4._tableUID = *(a1 + 40);
  return TSCECellRefSet::addCellRef(v2 + 2, &v4);
}

uint64_t sub_2212E0D78(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  v6 = *a2 & 0xFFFFFFFFFFFFLL;
  v7 = v4;
  return objc_msgSend_addCellRef_(*(a1 + 32), a2, &v6, a4);
}

uint64_t sub_2212E0EB8(uint64_t a1, uint64_t *a2)
{
  sub_221123474((*(a1 + 32) + 48), a2);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t **sub_2212E10A8(void *a1, unsigned __int16 *a2)
{
  result = sub_2210C3024(a1, a2);
  if (result)
  {
    sub_2212E10E0(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_2212E10E0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_221087680(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_22107C860((v3 + 5), v3[6]);
    }

    operator delete(v3);
  }

  return v2;
}

void sub_2212E1140(uint64_t a1, char **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_22107C860((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_2212E11A0(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
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
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        *(v8 + 8) = *(v4 + 8);
        TSCECellCoordSet::operator=(v8 + 3, (v4 + 3));
        v10 = *v8;
        v11 = *(v8 + 8);
        v8[1] = v11;
        v12 = sub_2211DC0DC(a1, v11, v8 + 8);
        sub_2210BD408(a1, v8, v12);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    sub_221122780(a1, v10);
  }

  if (v4 != a3)
  {
    sub_2212E12C0(a1);
  }
}

void sub_2212E1290(void *a1)
{
  __cxa_begin_catch(a1);
  sub_221122780(v1, v2);
  __cxa_rethrow();
}

void sub_2212E131C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char **a10, uint64_t a11)
{
  if (a10)
  {
    sub_2212E1140(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2212E13CC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_2212E1140(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t **sub_2212E13E8(void *a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
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
      v7 = v4 % a1[1];
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

  if (*(v9 + 8) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_2212E1650(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_221122780(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t **sub_2212E16AC(void *a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
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

void sub_2212E1B5C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_2212E22F0(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    os_unfair_lock_unlock(*a1);
    *(a1 + 8) = 0;
  }

  return a1;
}

id sub_2212E2EB8(void *a1, id *a2)
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

void sub_2212E2F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void *sub_2212E30F4(void *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *result) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - *result;
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

    v13[4] = result;
    if (v11)
    {
      sub_22107C1F0(result, v11);
    }

    v13[0] = 0;
    v13[1] = 8 * v8;
    v13[3] = 0;
    v12 = *a2;
    *a2 = 0;
    *(8 * v8) = v12;
    v13[2] = 8 * v8 + 8;
    sub_22107C098(result, v13);
    v7 = v3[1];
    result = sub_22107C26C(v13);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
    result[1] = v7;
  }

  v3[1] = v7;
  return result;
}

void sub_2212E31D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2212E351C(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

void sub_2212E376C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2212E3780(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

void sub_2212E39D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

void *sub_2212E4404(uint64_t **a1, unsigned int *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *sub_2212E44A8(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_2212E44A8(uint64_t a1, uint64_t **a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 2);
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 32);
        if (v6 >= v9 && (v6 != v9 || v7 >= *(v8 + 18)))
        {
          break;
        }

        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_13;
        }
      }

      if (v9 >= v6 && *(v8 + 18) >= v7)
      {
        break;
      }

      result = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = result;
  }

LABEL_13:
  *a2 = v8;
  return result;
}

uint64_t sub_2212E4518(uint64_t **a1, TSUCellRect *this, _OWORD *a3)
{
  v3 = *sub_2212E45AC(a1, &v5, this);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_2212E45AC(uint64_t a1, void *a2, TSUCellRect *this)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = a1;
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_2212E4648(v7, this, (v4 + 28)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (!sub_2212E4648(v7, (v8 + 28), this))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_10:
  *a2 = v8;
  return v5;
}

uint64_t sub_2212E4648(int a1, TSUCellRect *this, TSUCellRect *a3)
{
  v3 = this->size.numberOfColumns * this->size.numberOfRows - a3->size.numberOfColumns * a3->size.numberOfRows;
  if (!v3)
  {
    Row = TSUCellRect::firstRow(this);
    v7 = TSUCellRect::firstRow(a3);
    v3 = Row - v7;
    if (Row == v7)
    {
      Column = TSUCellRect::firstColumn(this);
      v9 = TSUCellRect::firstColumn(a3);
      v3 = Column - v9;
      if (Column == v9)
      {
        v10 = TSUCellRect::numRows(this);
        v3 = v10 - TSUCellRect::numRows(a3);
      }
    }
  }

  return v3 >> 31;
}

uint64_t *sub_2212E46E0(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = v2;
  do
  {
    v8 = *(v3 + 8);
    if (v8 >= v5)
    {
      if (v8 == v5)
      {
        v9 = *(v3 + 18);
        v10 = v9 >= v6;
        v11 = v9 < v6;
        if (v10)
        {
          v7 = v3;
        }

        v3 += v11;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v12 = *(v7 + 8);
  if (v5 < v12 || v5 == v12 && v6 < *(v7 + 18))
  {
    return v2;
  }

  return v7;
}

uint64_t sub_2212E4768(uint64_t **a1, TSUCellRect *a2)
{
  v3 = sub_2212E47BC(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_22112C950(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t sub_2212E47BC(uint64_t a1, TSUCellRect *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1;
  v6 = a1 + 8;
  do
  {
    v7 = sub_2212E4648(v5, (v3 + 28), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_2212E4648(v5, a2, (v6 + 28)))
  {
    return v2;
  }

  return v6;
}

uint64_t sub_2212E484C(uint64_t **a1, unsigned int *a2)
{
  v3 = sub_2212E46E0(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_2212E4894(a1, v3);
  return 1;
}

uint64_t *sub_2212E4894(uint64_t **a1, uint64_t a2)
{
  v3 = sub_22112C950(a1, a2);
  sub_2210BC9F8(a2 + 40, *(a2 + 48));
  operator delete(a2);
  return v3;
}

void sub_2212E4940(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2212E4940(a1, *a2);
    sub_2212E4940(a1, a2[1]);
    sub_2210BC9F8((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

TSCEASTStreamIterator *sub_2212E5ECC(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *a1 = &unk_2834A4698;
  *(a1 + 17) = v9;
  *(a1 + 18) = v10;
  return a1;
}

TSCEFormulaRewriteContextRecord *sub_2212E5F64(uint64_t a1, TSKUIDStruct *a2, uint64_t a3, uint64_t a4)
{
  tableUID = *a2;
  if (tableUID == 0uLL)
  {
    tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  }

  v6 = objc_msgSend_isForTable_(*(a1 + 136), a2, &tableUID, a4);
  v7 = *(a1 + 136);
  v54 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  result = objc_msgSend_isForTable_(v7, v8, &v54, v9);
  v14 = result;
  if ((v6 & 1) != 0 || result)
  {
    lower = a2[1]._lower;
    LOBYTE(v16) = HIBYTE(lower) != 0;
    isRows = objc_msgSend_isRows(*(a1 + 144), v11, v12, v13);
    coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
    if (isRows)
    {
      result = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      v21 = lower;
      if ((lower & 0x1000000000000) != 0)
      {
        goto LABEL_29;
      }

      v21 = 0x7FFFFFFFLL;
      if (lower == 0x7FFFFFFF)
      {
        goto LABEL_29;
      }

      v22 = result->var0.var0.coordinate;
      if (lower < 1)
      {
        if (lower && v22.row < -lower)
        {
          goto LABEL_29;
        }
      }

      else if ((999999 - lower) < v22.row)
      {
        goto LABEL_29;
      }

      if (v22.row == 0x7FFFFFFF)
      {
        v49 = MEMORY[0x277D81150];
        v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v20);
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v26);
        v28 = NSStringFromTSUCellCoord();
        v29 = v51;
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v30, v51, v27, 195, 0, "Calling TSCEMakeAbsoluteRowFromRelativeRow with an invalid hostCell row: %@", v28);
      }

      else
      {
        v21 = (v22.row + lower);
        if (v21 < 0x7FFFFFFF)
        {
LABEL_29:
          v16 = HIWORD(lower) & 1;
          v38 = v21 == 0x7FFFFFFF;
LABEL_30:
          v45 = 0;
          if (v6 && !v38)
          {
            result = objc_msgSend_offsetForRowIndex_(*(a1 + 144), v19, v21, v20);
            v45 = result;
          }

          if (v16 & 1 | ((v14 & 1) == 0))
          {
            v46 = 0;
          }

          else
          {
            result = objc_msgSend_offsetForRowIndex_(*(a1 + 144), v19, coordinate, v20);
            v46 = result;
          }

          if (v45 | v46)
          {
            result = objc_msgSend_isRows(*(a1 + 144), v19, v21, v20);
            LOWORD(v47) = 0x7FFF;
            if (WORD2(lower) != 0x7FFF)
            {
              LOWORD(v47) = v45 + WORD2(lower) - v46;
            }

            if (lower == 0x7FFFFFFF)
            {
              LODWORD(v48) = 0x7FFFFFFF;
            }

            else
            {
              LODWORD(v48) = v45 + lower - v46;
            }

            if (result)
            {
              v47 = HIDWORD(lower);
              v48 = v48;
            }

            else
            {
              v48 = lower;
            }

            a2[1]._lower = (v47 << 32) | lower & 0xFFFF000000000000 | v48;
          }

          return result;
        }

        v53 = MEMORY[0x277D81150];
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v20);
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v40);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v41, v29, v27, 191, 0, "overflow in row, input row: %d with host row: %lu", lower, v22.row);
      }

      result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44);
      v21 = 0x7FFFFFFFLL;
      goto LABEL_29;
    }

    result = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    if (HIBYTE(lower))
    {
      v23 = HIDWORD(lower);
    }

    else
    {
      LOWORD(v23) = 0x7FFF;
      if (WORD2(lower) != 0x7FFF)
      {
        v24 = result->var0.var0.coordinate;
        if ((lower >> 16) >> 16 < 1)
        {
          if ((lower & 0x800000000000) != 0 && -SWORD2(lower) > v24.column)
          {
            goto LABEL_25;
          }
        }

        else if (999 - SWORD2(lower) < v24.column)
        {
          goto LABEL_25;
        }

        LOWORD(v23) = v24.column + WORD2(lower);
        if ((v24.column + WORD2(lower)) >= 0x7FFFu)
        {
          v50 = MEMORY[0x277D81150];
          v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "TSUColumnIndex TSCEMakeAbsoluteColumnFromRelativeColumn(TSUCellCoord, TSURelativeColumnIndex, BOOL)", v20);
          v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v32);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v34, v52, v33, 168, 0, "overflow in column");

          result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37);
        }
      }
    }

LABEL_25:
    coordinate = WORD2(coordinate);
    v21 = v23;
    v38 = v23 == 0x7FFF;
    goto LABEL_30;
  }

  return result;
}

TSCEASTRelativeCoordRefElement *sub_2212E638C(TSCEASTIteratorBase *a1, TSCEASTRelativeCoordRefElement *this, uint64_t a3, uint64_t a4)
{
  TSCEASTRelativeCoordRefElement::crossTableRef(&v10, this, a1, a3, a4);
  sub_2212E5F64(a1, &v10, v6, v7);
  TSCEASTRelativeCoordRefElement::setRelativeCoord(this, &v11, a1, v8);
  return this;
}

void sub_2212E63F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v3 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  v5 = *v3;
  lower = v3[1]._lower;
  if (v2)
  {
    objc_msgSend_updatedCellRefForRewriteType_originalCellRef_(v2, v4, 3, &v5);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  operator new();
}

TSCEASTColonTractElement *sub_2212E6520(TSCEASTIteratorBase *a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4);
  tableUID._lower = objc_msgSend_tableUID(v6, v7, v8, v9);
  tableUID._upper = v10;
  if (!(tableUID._lower | v10))
  {
    tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID;
  }

  v11 = *(a1 + 17);
  *&__p = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID;
  v14 = objc_msgSend_isForTable_(v11, v12, &__p, v13);
  v20 = objc_msgSend_isForTable_(*(a1 + 17), v15, &tableUID, v16);
  if ((v14 | v20))
  {
    v24 = objc_msgSend_rewriteType(*(a1 + 17), v17, v18, v19);
    v25 = *(a1 + 17);
    if (v24 == 4)
    {
      v26 = objc_msgSend_rowColumnInfo(v25, v21, v22, v23);
      v30 = objc_msgSend_auxRowColumnInfo(v26, v27, v28, v29);
    }

    else
    {
      v30 = objc_msgSend_rowColumnInfo(v25, v21, v22, v23);
    }

    v217 = v30;
    *&__p = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
    v33 = objc_msgSend_absoluteCellTractRefForHostCell_(v6, v31, &__p, v32);
    v219 = TSCEASTElement::mutableUndoTractList(this, a1);
    isRectangularRange = objc_msgSend_isRectangularRange(v33, v34, v35, v36);
    v216 = objc_msgSend_preserveRectangular(v33, v38, v39, v40);
    if (v14)
    {
      v44 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
      v45 = sub_2212C7330(v44);
      if (!v20)
      {
LABEL_9:
        v46 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v45 = 0;
      if (!v20)
      {
        goto LABEL_9;
      }
    }

    if (objc_msgSend_isRows(v30, v41, v42, v43))
    {
      v50 = objc_msgSend_rowOrColumnUids(v30, v47, v48, v49);
      v54 = objc_msgSend_indexes(v50, v51, v52, v53);
      inserted = objc_msgSend_insertRowGapsAtIndexes_(v33, v55, v54, v56);
    }

    else
    {
      v50 = objc_msgSend_rowOrColumnUids(v30, v47, v48, v49);
      v54 = objc_msgSend_indexes(v50, v58, v59, v60);
      inserted = objc_msgSend_insertColumnGapsAtIndexes_(v33, v61, v54, v62);
    }

    v46 = inserted;

    v45 |= v46;
LABEL_15:
    v63 = *(a1 + 17);
    v64 = sub_221089E8C(a1);
    v218 = objc_msgSend_coordMapperForTableUID_calcEngine_(v63, v65, &tableUID, v64);

    isRows = objc_msgSend_isRows(v30, v66, v67, v68);
    if (v218)
    {
      v73 = isRows;
    }

    else
    {
      v73 = 0;
    }

    if (v73 == 1 && (objc_msgSend_isIdentityMapping(v218, v70, v71, v72) & 1) == 0)
    {
      v84 = sub_221089E8C(a1);
      v86 = objc_msgSend_resolverForTableUID_(v84, v85, tableUID._lower, tableUID._upper);

      v90 = objc_msgSend_insertAtUid(*(a1 + 18), v87, v88, v89);
      objc_msgSend_rowIndexForRowUID_(v86, v91, v90, v91);
      v95 = objc_msgSend_rows(v33, v92, v93, v94);
      LODWORD(v84) = TSUIndexSet::containsIndex(v95);
      v99 = objc_msgSend_insertOppositeUid(*(a1 + 18), v96, v97, v98);
      objc_msgSend_rowIndexForRowUID_(v86, v100, v99, v100);
      v104 = objc_msgSend_rows(v33, v101, v102, v103);
      if ((v84 & TSUIndexSet::containsIndex(v104)) == 1)
      {
        v108 = objc_msgSend_rowOrColumnUids(v30, v105, v106, v107);
        v112 = objc_msgSend_indexes(v108, v109, v110, v111);
        MEMORY[0x223D9F7A0](&__p, v112);
        objc_msgSend_addRows_(v33, v113, &__p, v114);
        TSUIndexSet::~TSUIndexSet(&__p);

LABEL_37:
        v45 = 1;
      }
    }

    else
    {
      if ((v46 & isRectangularRange & v216) != 1)
      {
LABEL_39:
        if (isRectangularRange)
        {
          v139 = objc_msgSend_insertAtUid(*(a1 + 18), v70, v71, v72);
          if (v139 | v70)
          {
            v140 = objc_msgSend_tableUID(*(a1 + 17), v70, v71, v72);
            if (tableUID == __PAIR128__(v70, v140) && objc_msgSend_rewriteType(*(a1 + 17), v70, v71, v72) == 3 && (*(a1 + 98) & 1) == 0 && objc_msgSend_isRows(*(a1 + 18), v70, v71, v72))
            {
              v141 = sub_221089E8C(a1);
              *&__p = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID;
              v144 = objc_msgSend_tableResolverForTableUID_(v141, v142, &__p, v143);

              if (v144)
              {
                v148 = objc_msgSend_footerRangeCoordinate(v144, v145, v146, v147);
                v150 = v149;
                coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var1.coordinate;
                if (coordinate.column >= WORD2(v148) && coordinate.row <= v150 && coordinate.row >= v148 && coordinate.column <= WORD2(v150))
                {
                  v152 = sub_221089E8C(a1);
                  v154 = objc_msgSend_resolverForTableUID_(v152, v153, tableUID._lower, tableUID._upper);

                  if (v154)
                  {
                    v158 = objc_msgSend_insertAtUid(*(a1 + 18), v155, v156, v157);
                    objc_msgSend_rowIndexForRowUID_(v154, v159, v158, v159);
                    v163 = objc_msgSend_rows(v33, v160, v161, v162);
                    if (TSUIndexSet::containsIndex(v163))
                    {
                      v167 = objc_msgSend_rowOrColumnUids(*(a1 + 18), v164, v165, v166);
                      v171 = objc_msgSend_indexes(v167, v168, v169, v170);
                      v175 = objc_msgSend_isRows(*(a1 + 18), v172, v173, v174);
                      v177 = objc_msgSend_edgeExpandUsingIndexes_forRows_(v33, v176, v171, v175);

                      v45 |= objc_msgSend_count(v177, v178, v179, v180) != 0;
                    }
                  }
                }
              }
            }
          }
        }

        v181 = objc_msgSend_rewriteType(*(a1 + 17), v70, v71, v72) != 4;
        v182 = *(a1 + 98);
        v189 = objc_msgSend_includedUidsTract(v219, v183, v184, v185);
        if (v189)
        {
          v190 = objc_msgSend_tableUID(*(a1 + 17), v186, v187, v188);
          if (tableUID._lower == v190)
          {
            v192 = v191;
            upper = tableUID._upper;

            if (upper == v192)
            {
              if (((v181 | v182) & 1) == 0)
              {
                if (((v45 | objc_msgSend_edgeExpandUsingMovingUids_tractList_(v33, v186, v217, v219)) & 1) == 0)
                {
                  goto LABEL_66;
                }

                goto LABEL_64;
              }

              if (v182)
              {
                v194 = sub_221089E8C(a1);
                v196 = objc_msgSend_resolverForTableUID_(v194, v195, tableUID._lower, tableUID._upper);

                v200 = objc_msgSend_isRows(v217, v197, v198, v199);
                v202 = v45 | objc_msgSend_edgeExpandTractUsingIncludeUidTract_resolver_forRows_isInverse_(v33, v201, v219, v196, v200, v216 ^ 1u);

                if ((v202 & 1) == 0)
                {
LABEL_66:
                  v206 = objc_msgSend_removedByMoveUidTract(v219, v186, v187, v188);
                  v204 = v217;
                  if (v206)
                  {
                    objc_msgSend_dropTract_(v219, v213, v206, v214);
                    TSCEASTColonTractElement::setUndoTractList(this, v219, a1);
                  }

                  goto LABEL_68;
                }

LABEL_64:
                v203 = [TSCERelativeTractRef alloc];
                v204 = v217;
                *&__p = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var1.coordinate;
                v206 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v203, v205, v33, &__p);
                TSCEASTColonTractElement::setRelativeTractRef(this, v206, v6, a1, 0);
                v210 = objc_msgSend_removedByMoveUidTract(v219, v207, v208, v209);
                objc_msgSend_dropTract_(v219, v211, v210, v212);
                TSCEASTColonTractElement::setUndoTractList(this, v219, a1);

LABEL_68:
                goto LABEL_69;
              }
            }
          }

          else
          {
          }
        }

        if ((v45 & 1) == 0)
        {
          goto LABEL_66;
        }

        goto LABEL_64;
      }

      if (objc_msgSend_isRows(v30, v70, v71, v72))
      {
        v77 = objc_msgSend_rowOrColumnUids(v30, v74, v75, v76);
        v81 = objc_msgSend_indexes(v77, v78, v79, v80);
        objc_msgSend_fillInRowGapsUsingIndexes_(v33, v82, v81, v83);
      }

      else
      {
        v77 = objc_msgSend_rowOrColumnUids(v30, v74, v75, v76);
        v81 = objc_msgSend_indexes(v77, v115, v116, v117);
        objc_msgSend_fillInColumnGapsUsingIndexes_(v33, v118, v81, v119);
      }
      v86 = ;

      if (objc_msgSend_count(v86, v120, v121, v122))
      {
        v126 = objc_msgSend_rowOrColumnUids(v30, v123, v124, v125);
        v129 = v126;
        if (v126)
        {
          objc_msgSend_uidsForIndexes_(v126, v127, v86, v128);
        }

        else
        {
          memset(&__p, 0, 24);
        }

        v133 = __p;
        if (__p._singleRange._begin != *&__p)
        {
          if (objc_msgSend_rewriteType(*(a1 + 17), v130, v131, v132) == 4 && (*(a1 + 100) & 1) == 0)
          {
            v137 = objc_msgSend_isRows(v30, v134, v135, v136);
            objc_msgSend_addToExcludedTractUids_isRows_(v219, v138, &__p, v137);
          }

          v133 = __p;
        }

        if (v133)
        {
          __p._singleRange._begin = v133;
          operator delete(v133);
        }

        goto LABEL_37;
      }
    }

    goto LABEL_39;
  }

LABEL_69:

  return this;
}

void sub_2212E6E98(uint64_t a1, TSCEASTUidReferenceElement *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_rewriteType(*(a1 + 136), a2, a3, a4) != 4)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "virtual TSCEASTElement *TSCEASTInsertRowsRewriter::uidReferenceNode(TSCEASTUidReferenceElement *)", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTInsertRowsRewriter.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 336, 0, "TSCEASTInsertRowsRewriter - only move rows uses uuid-form references");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  if (TSCEASTElement::refFlags(a2, a1))
  {
    lower = TSCEASTUidReferenceElement::tableUID(a2, a1, v17, v18);
  }

  else
  {
    v19 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    lower = v19->var0.var0._tableUID._lower;
    upper = v19->var0.var0._tableUID._upper;
  }

  v149._lower = lower;
  v149._upper = upper;
  v22 = TSCEASTElement::mutableUndoTractList(a2, a1);
  v26 = objc_msgSend_activeUidTract(v22, v23, v24, v25);
  v30 = v26;
  v146 = 0;
  v147 = 0;
  v148 = 0;
  v143 = 0;
  v144 = 0;
  v145 = 0;
  if (v26)
  {
    v31 = objc_msgSend_columnUids(v26, v27, v28, v29);
    if (&v146 != v31)
    {
      sub_2210BD068(&v146, *v31, v31[1], (v31[1] - *v31) >> 4);
    }

    v35 = objc_msgSend_rowUids(v30, v32, v33, v34);
    if (&v143 != v35)
    {
      sub_2210BD068(&v143, *v35, v35[1], (v35[1] - *v35) >> 4);
    }

    v39 = objc_msgSend_preserveRectangularRange(v30, v36, v37, v38);
  }

  else
  {
    v39 = 0;
  }

  objc_msgSend_dropTract_(v22, v27, v30, v29);
  v42 = v147 - v146 == 16 && !*v146 && *(v146 + 1) == 0;
  v130 = v42;
  if (v144 - v143 == 16 && !*v143)
  {
    v43 = *(v143 + 1) == 0;
    if (v42 && v43)
    {
      v86 = MEMORY[0x277D81150];
      v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "virtual TSCEASTElement *TSCEASTInsertRowsRewriter::uidReferenceNode(TSCEASTUidReferenceElement *)", v41);
      v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTInsertRowsRewriter.mm", v89);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v86, v91, v87, v90, 359, 0, "Can't be spanning on both row and column, tractList: %{public}@", v22);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v92, v93, v94);
      v44 = 0;
      LOBYTE(v43) = 1;
LABEL_20:
      v141 = 0;
      v142 = 0;
      v45 = TSCEASTRelativeCoordRefElement::tractRefUsingUuids(a1, &v149, &v146, &v143, &v142, &v141, v39);
      if (objc_msgSend_count(v142, v46, v47, v48))
      {
        isAllInvalid = objc_msgSend_isAllInvalid(v142, v49, v50, v51);
      }

      else
      {
        isAllInvalid = 1;
      }

      if (objc_msgSend_count(v141, v49, v50, v51))
      {
        v56 = objc_msgSend_isAllInvalid(v141, v53, v54, v55);
      }

      else
      {
        v56 = 1;
      }

      isValid = objc_msgSend_isValid(v45, v53, v54, v55);
      if (v44)
      {
        v60 = isValid & isAllInvalid & v56;
      }

      else
      {
        v60 = 0;
        v147 = v146;
        v144 = v143;
      }

      v61 = TSCEASTUidReferenceElement::preserveFlags(a2, a1, v58, v59);
      v140._flags = v61;
      v62 = TSCEASTElement::refFlags(a2, a1);
      if (!v60)
      {
        objc_msgSend_addUuidsFromVector_(v142, v63, &v146, v65);
        objc_msgSend_addUuidsFromVector_(v141, v81, &v143, v82);
        if (v142)
        {
          objc_msgSend_uuidsAsVector(v142, v83, v84, v85);
        }

        else
        {
          v137 = 0;
          __dst = 0;
          v139 = 0;
        }

        if (v141)
        {
          objc_msgSend_uuidsAsVector(v141, v83, v84, v85);
        }

        else
        {
          memset(&__p, 0, sizeof(__p));
        }

        objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_(v22, v83, &v137, &__p);
        if (__p.coordinate)
        {
          __p._tableUID._lower = __p.coordinate;
          operator delete(*&__p.coordinate);
        }

        if (v137)
        {
          __dst = v137;
          operator delete(v137);
        }

        TSCEASTIteratorBase::createReferenceErrorWithUidTractList(a1, v22, &v149, &v140);
      }

      v66 = v62;
      v67 = objc_msgSend_includedUidsTract(v22, v63, v64, v65);
      v71 = v67;
      if (v67 && *(a1 + 98) == 1)
      {
        v72 = objc_msgSend_rowUids(v67, v68, v69, v70);
        v137 = 0;
        __dst = 0;
        v139 = 0;
        sub_221086EBC(&v137, *v72, *(v72 + 8), (*(v72 + 8) - *v72) >> 4);
        v76 = objc_msgSend_columnUids(v71, v73, v74, v75);
        memset(&__p, 0, sizeof(__p));
        sub_221086EBC(&__p, *v76, *(v76 + 8), (*(v76 + 8) - *v76) >> 4);
        if (v141)
        {
          objc_msgSend_uuidsAsVector(v141, v77, v78, v79);
          v80 = tableUID;
        }

        else
        {
          v135 = 0;
          v80 = 0;
          tableUID = 0;
        }

        sub_2210F0C88(&v137, __dst, v80._lower, v80._upper, (v80._upper - v80._lower) >> 4);
        if (tableUID._lower)
        {
          tableUID._upper = tableUID._lower;
          operator delete(tableUID._lower);
        }

        if (v142)
        {
          objc_msgSend_uuidsAsVector(v142, v95, v96, v97);
          v98 = tableUID;
        }

        else
        {
          v135 = 0;
          v98 = 0;
          tableUID = 0;
        }

        sub_2210F0C88(&__p, __p._tableUID._lower, v98._lower, v98._upper, (v98._upper - v98._lower) >> 4);
        if (tableUID._lower)
        {
          tableUID._upper = tableUID._lower;
          operator delete(tableUID._lower);
        }

        tableUID._lower = 0;
        tableUID._upper = 0;
        v135 = 0;
        v131 = 0;
        v132 = 0;
        v133 = 0;
        v99 = TSCEASTRelativeCoordRefElement::expandTractRefUsingUuids(a1, &v149, v45, &v137, &tableUID, 1);
        if ((TSCEASTRelativeCoordRefElement::expandTractRefUsingUuids(a1, &v149, v45, &__p, &v131, 0) | v99))
        {
          objc_msgSend_removeAllUuids(v142, v68, v69, v70);
          objc_msgSend_addUuidsFromVector_(v142, v100, &v131, v101);
          objc_msgSend_removeAllUuids(v141, v102, v103, v104);
          objc_msgSend_addUuidsFromVector_(v141, v105, &tableUID, v106);
          objc_msgSend_dropTract_(v22, v107, v71, v108);
        }

        if (v131)
        {
          v132 = v131;
          operator delete(*&v131);
        }

        if (tableUID._lower)
        {
          tableUID._upper = tableUID._lower;
          operator delete(tableUID._lower);
        }

        if (__p.coordinate)
        {
          __p._tableUID._lower = __p.coordinate;
          operator delete(*&__p.coordinate);
        }

        if (v137)
        {
          __dst = v137;
          operator delete(v137);
        }
      }

      if (v43)
      {
        if (v130)
        {
          v109 = 0;
          goto LABEL_71;
        }
      }

      else
      {
        v109 = objc_msgSend_count(v141, v68, v69, v70) != 0;
        if (v109 || v130)
        {
          goto LABEL_71;
        }
      }

      v109 = objc_msgSend_count(v142, v68, v69, v70) != 0;
LABEL_71:
      if (objc_msgSend_isRangeRef(v30, v68, v69, v70))
      {
        v113 = 1;
      }

      else
      {
        v113 = objc_msgSend_isSingleCellOrSpanningRange(v45, v110, v111, v112) ^ 1;
      }

      v114 = *(a1 + 144);
      __p = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0;
      if (v114)
      {
        objc_msgSend_updatedCellRefForRewriteType_originalCellRef_(v114, v115, 3, &__p);
        v118 = v137;
      }

      else
      {
        v118 = 0;
        v137 = 0;
        __dst = 0;
        v139 = 0;
      }

      v131 = v118;
      if ((v109 | v113))
      {
        v119 = v61 & 3;
        if (v113)
        {
          v120 = (v61 >> 2) & 3;
        }

        else
        {
          v120 = v61 & 3;
        }

        if (v109)
        {
          if (v142)
          {
            objc_msgSend_uuidsAsVector(v142, v115, v116, v117);
          }

          else
          {
            memset(&__p, 0, sizeof(__p));
          }

          if (v141)
          {
            objc_msgSend_uuidsAsVector(v141, v115, v116, v117);
          }

          else
          {
            tableUID._lower = 0;
            tableUID._upper = 0;
            v135 = 0;
          }

          objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_(v22, v115, &__p, &tableUID);
          if (tableUID._lower)
          {
            tableUID._upper = tableUID._lower;
            operator delete(tableUID._lower);
          }

          if (__p.coordinate)
          {
            __p._tableUID._lower = __p.coordinate;
            operator delete(*&__p.coordinate);
          }
        }

        objc_msgSend_setPreserveFlags_(v45, v115, v119 | (4 * v120), v117);
        v122 = [TSCERelativeTractRef alloc];
        v124 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v122, v123, v45, &v131);
        v127 = TSCEASTUidReferenceElement::colonTractFlags(a2, a1, v125, v126);
        *&__p.coordinate.row = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
        v128._flags = v66;
        v129._flags = v127;
        TSCEASTIteratorBase::createColonTractRef(a1, v128, v129, v124, v22, &__p);
      }

      __p.coordinate = objc_msgSend_topLeft(v45, v115, v116, v117);
      __p._tableUID = v149;
      tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
      v121._flags = v66;
      TSCEASTIteratorBase::createReference(a1, &__p, v121, &tableUID, &v131, v22);
    }
  }

  else
  {
    LOBYTE(v43) = 0;
  }

  v44 = 1;
  goto LABEL_20;
}

void sub_2212E7670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  v34 = *(v32 - 128);
  if (v34)
  {
    *(v32 - 120) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

void sub_2212E7800(id *a1)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);

  JUMPOUT(0x223DA1450);
}

void sub_2212E801C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_2212E8C80(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"functionNameToLocalizedDictionary", a4);
  if (!v5)
  {
    v357 = objc_alloc(MEMORY[0x277CBEAC0]);
    v686 = objc_msgSend_localizedStringForKey_value_table_(a1, v6, @"DATE", &stru_2834BADA0, @"TSCalculationEngine");
    v685 = objc_msgSend_localizedStringForKey_value_table_(a1, v7, @"DATEDIF", &stru_2834BADA0, @"TSCalculationEngine");
    v684 = objc_msgSend_localizedStringForKey_value_table_(a1, v8, @"DATEVALUE", &stru_2834BADA0, @"TSCalculationEngine");
    v683 = objc_msgSend_localizedStringForKey_value_table_(a1, v9, @"DAY", &stru_2834BADA0, @"TSCalculationEngine");
    v682 = objc_msgSend_localizedStringForKey_value_table_(a1, v10, @"DAYNAME", &stru_2834BADA0, @"TSCalculationEngine");
    v681 = objc_msgSend_localizedStringForKey_value_table_(a1, v11, @"DAYS360", &stru_2834BADA0, @"TSCalculationEngine");
    v680 = objc_msgSend_localizedStringForKey_value_table_(a1, v12, @"EDATE", &stru_2834BADA0, @"TSCalculationEngine");
    v679 = objc_msgSend_localizedStringForKey_value_table_(a1, v13, @"EOMONTH", &stru_2834BADA0, @"TSCalculationEngine");
    v678 = objc_msgSend_localizedStringForKey_value_table_(a1, v14, @"HOUR", &stru_2834BADA0, @"TSCalculationEngine");
    v677 = objc_msgSend_localizedStringForKey_value_table_(a1, v15, @"ISOWEEKNUM", &stru_2834BADA0, @"TSCalculationEngine");
    v676 = objc_msgSend_localizedStringForKey_value_table_(a1, v16, @"MINUTE", &stru_2834BADA0, @"TSCalculationEngine");
    v675 = objc_msgSend_localizedStringForKey_value_table_(a1, v17, @"MONTH", &stru_2834BADA0, @"TSCalculationEngine");
    v674 = objc_msgSend_localizedStringForKey_value_table_(a1, v18, @"MONTHNAME", &stru_2834BADA0, @"TSCalculationEngine");
    v673 = objc_msgSend_localizedStringForKey_value_table_(a1, v19, @"NETWORKDAYS", &stru_2834BADA0, @"TSCalculationEngine");
    v672 = objc_msgSend_localizedStringForKey_value_table_(a1, v20, @"NOW", &stru_2834BADA0, @"TSCalculationEngine");
    v671 = objc_msgSend_localizedStringForKey_value_table_(a1, v21, @"SECOND", &stru_2834BADA0, @"TSCalculationEngine");
    v670 = objc_msgSend_localizedStringForKey_value_table_(a1, v22, @"TIME", &stru_2834BADA0, @"TSCalculationEngine");
    v669 = objc_msgSend_localizedStringForKey_value_table_(a1, v23, @"TIMEVALUE", &stru_2834BADA0, @"TSCalculationEngine");
    v668 = objc_msgSend_localizedStringForKey_value_table_(a1, v24, @"TODAY", &stru_2834BADA0, @"TSCalculationEngine");
    v667 = objc_msgSend_localizedStringForKey_value_table_(a1, v25, @"WEEKDAY", &stru_2834BADA0, @"TSCalculationEngine");
    v666 = objc_msgSend_localizedStringForKey_value_table_(a1, v26, @"WEEKNUM", &stru_2834BADA0, @"TSCalculationEngine");
    v665 = objc_msgSend_localizedStringForKey_value_table_(a1, v27, @"WORKDAY", &stru_2834BADA0, @"TSCalculationEngine");
    v664 = objc_msgSend_localizedStringForKey_value_table_(a1, v28, @"YEAR", &stru_2834BADA0, @"TSCalculationEngine");
    v663 = objc_msgSend_localizedStringForKey_value_table_(a1, v29, @"YEARFRAC", &stru_2834BADA0, @"TSCalculationEngine");
    v662 = objc_msgSend_localizedStringForKey_value_table_(a1, v30, @"DURATION", &stru_2834BADA0, @"TSCalculationEngine");
    v661 = objc_msgSend_localizedStringForKey_value_table_(a1, v31, @"DUR2DAYS", &stru_2834BADA0, @"TSCalculationEngine");
    v660 = objc_msgSend_localizedStringForKey_value_table_(a1, v32, @"DUR2HOURS", &stru_2834BADA0, @"TSCalculationEngine");
    v659 = objc_msgSend_localizedStringForKey_value_table_(a1, v33, @"DUR2MILLISECONDS", &stru_2834BADA0, @"TSCalculationEngine");
    v658 = objc_msgSend_localizedStringForKey_value_table_(a1, v34, @"DUR2MINUTES", &stru_2834BADA0, @"TSCalculationEngine");
    v657 = objc_msgSend_localizedStringForKey_value_table_(a1, v35, @"DUR2SECONDS", &stru_2834BADA0, @"TSCalculationEngine");
    v656 = objc_msgSend_localizedStringForKey_value_table_(a1, v36, @"DUR2WEEKS", &stru_2834BADA0, @"TSCalculationEngine");
    v655 = objc_msgSend_localizedStringForKey_value_table_(a1, v37, @"STRIPDURATION", &stru_2834BADA0, @"TSCalculationEngine");
    v654 = objc_msgSend_localizedStringForKey_value_table_(a1, v38, @"BASETONUM", &stru_2834BADA0, @"TSCalculationEngine");
    v653 = objc_msgSend_localizedStringForKey_value_table_(a1, v39, @"BESSELJ", &stru_2834BADA0, @"TSCalculationEngine");
    v652 = objc_msgSend_localizedStringForKey_value_table_(a1, v40, @"BESSELY", &stru_2834BADA0, @"TSCalculationEngine");
    v651 = objc_msgSend_localizedStringForKey_value_table_(a1, v41, @"BIN2DEC", &stru_2834BADA0, @"TSCalculationEngine");
    v650 = objc_msgSend_localizedStringForKey_value_table_(a1, v42, @"BIN2HEX", &stru_2834BADA0, @"TSCalculationEngine");
    v649 = objc_msgSend_localizedStringForKey_value_table_(a1, v43, @"BIN2OCT", &stru_2834BADA0, @"TSCalculationEngine");
    v648 = objc_msgSend_localizedStringForKey_value_table_(a1, v44, @"BITAND", &stru_2834BADA0, @"TSCalculationEngine");
    v647 = objc_msgSend_localizedStringForKey_value_table_(a1, v45, @"BITLSHIFT", &stru_2834BADA0, @"TSCalculationEngine");
    v646 = objc_msgSend_localizedStringForKey_value_table_(a1, v46, @"BITRSHIFT", &stru_2834BADA0, @"TSCalculationEngine");
    v645 = objc_msgSend_localizedStringForKey_value_table_(a1, v47, @"BITOR", &stru_2834BADA0, @"TSCalculationEngine");
    v644 = objc_msgSend_localizedStringForKey_value_table_(a1, v48, @"BITXOR", &stru_2834BADA0, @"TSCalculationEngine");
    v643 = objc_msgSend_localizedStringForKey_value_table_(a1, v49, @"CONVERT", &stru_2834BADA0, @"TSCalculationEngine");
    v642 = objc_msgSend_localizedStringForKey_value_table_(a1, v50, @"DEC2BIN", &stru_2834BADA0, @"TSCalculationEngine");
    v641 = objc_msgSend_localizedStringForKey_value_table_(a1, v51, @"DEC2HEX", &stru_2834BADA0, @"TSCalculationEngine");
    v640 = objc_msgSend_localizedStringForKey_value_table_(a1, v52, @"DEC2OCT", &stru_2834BADA0, @"TSCalculationEngine");
    v639 = objc_msgSend_localizedStringForKey_value_table_(a1, v53, @"DELTA", &stru_2834BADA0, @"TSCalculationEngine");
    v638 = objc_msgSend_localizedStringForKey_value_table_(a1, v54, @"ERF", &stru_2834BADA0, @"TSCalculationEngine");
    v637 = objc_msgSend_localizedStringForKey_value_table_(a1, v55, @"ERFC", &stru_2834BADA0, @"TSCalculationEngine");
    v636 = objc_msgSend_localizedStringForKey_value_table_(a1, v56, @"GESTEP", &stru_2834BADA0, @"TSCalculationEngine");
    v635 = objc_msgSend_localizedStringForKey_value_table_(a1, v57, @"HEX2BIN", &stru_2834BADA0, @"TSCalculationEngine");
    v634 = objc_msgSend_localizedStringForKey_value_table_(a1, v58, @"HEX2DEC", &stru_2834BADA0, @"TSCalculationEngine");
    v633 = objc_msgSend_localizedStringForKey_value_table_(a1, v59, @"HEX2OCT", &stru_2834BADA0, @"TSCalculationEngine");
    v632 = objc_msgSend_localizedStringForKey_value_table_(a1, v60, @"NUMTOBASE", &stru_2834BADA0, @"TSCalculationEngine");
    v631 = objc_msgSend_localizedStringForKey_value_table_(a1, v61, @"OCT2BIN", &stru_2834BADA0, @"TSCalculationEngine");
    v630 = objc_msgSend_localizedStringForKey_value_table_(a1, v62, @"OCT2DEC", &stru_2834BADA0, @"TSCalculationEngine");
    v629 = objc_msgSend_localizedStringForKey_value_table_(a1, v63, @"OCT2HEX", &stru_2834BADA0, @"TSCalculationEngine");
    v628 = objc_msgSend_localizedStringForKey_value_table_(a1, v64, @"ACCRINT", &stru_2834BADA0, @"TSCalculationEngine");
    v627 = objc_msgSend_localizedStringForKey_value_table_(a1, v65, @"ACCRINTM", &stru_2834BADA0, @"TSCalculationEngine");
    v626 = objc_msgSend_localizedStringForKey_value_table_(a1, v66, @"BONDDURATION", &stru_2834BADA0, @"TSCalculationEngine");
    v625 = objc_msgSend_localizedStringForKey_value_table_(a1, v67, @"BONDMDURATION", &stru_2834BADA0, @"TSCalculationEngine");
    v624 = objc_msgSend_localizedStringForKey_value_table_(a1, v68, @"COUPDAYBS", &stru_2834BADA0, @"TSCalculationEngine");
    v623 = objc_msgSend_localizedStringForKey_value_table_(a1, v69, @"COUPDAYS", &stru_2834BADA0, @"TSCalculationEngine");
    v622 = objc_msgSend_localizedStringForKey_value_table_(a1, v70, @"COUPDAYSNC", &stru_2834BADA0, @"TSCalculationEngine");
    v621 = objc_msgSend_localizedStringForKey_value_table_(a1, v71, @"COUPNUM", &stru_2834BADA0, @"TSCalculationEngine");
    v620 = objc_msgSend_localizedStringForKey_value_table_(a1, v72, @"CUMIPMT", &stru_2834BADA0, @"TSCalculationEngine");
    v619 = objc_msgSend_localizedStringForKey_value_table_(a1, v73, @"CUMPRINC", &stru_2834BADA0, @"TSCalculationEngine");
    v618 = objc_msgSend_localizedStringForKey_value_table_(a1, v74, @"CURRENCY", &stru_2834BADA0, @"TSCalculationEngine");
    v617 = objc_msgSend_localizedStringForKey_value_table_(a1, v75, @"CURRENCYCODE", &stru_2834BADA0, @"TSCalculationEngine");
    v616 = objc_msgSend_localizedStringForKey_value_table_(a1, v76, @"CURRENCYCONVERT", &stru_2834BADA0, @"TSCalculationEngine");
    v615 = objc_msgSend_localizedStringForKey_value_table_(a1, v77, @"CURRENCYH", &stru_2834BADA0, @"TSCalculationEngine");
    v614 = objc_msgSend_localizedStringForKey_value_table_(a1, v78, @"DB", &stru_2834BADA0, @"TSCalculationEngine");
    v613 = objc_msgSend_localizedStringForKey_value_table_(a1, v79, @"DDB", &stru_2834BADA0, @"TSCalculationEngine");
    v612 = objc_msgSend_localizedStringForKey_value_table_(a1, v80, @"DISC", &stru_2834BADA0, @"TSCalculationEngine");
    v611 = objc_msgSend_localizedStringForKey_value_table_(a1, v81, @"EFFECT", &stru_2834BADA0, @"TSCalculationEngine");
    v610 = objc_msgSend_localizedStringForKey_value_table_(a1, v82, @"FV", &stru_2834BADA0, @"TSCalculationEngine");
    v609 = objc_msgSend_localizedStringForKey_value_table_(a1, v83, @"INTRATE", &stru_2834BADA0, @"TSCalculationEngine");
    v608 = objc_msgSend_localizedStringForKey_value_table_(a1, v84, @"IPMT", &stru_2834BADA0, @"TSCalculationEngine");
    v607 = objc_msgSend_localizedStringForKey_value_table_(a1, v85, @"IRR", &stru_2834BADA0, @"TSCalculationEngine");
    v606 = objc_msgSend_localizedStringForKey_value_table_(a1, v86, @"ISPMT", &stru_2834BADA0, @"TSCalculationEngine");
    v605 = objc_msgSend_localizedStringForKey_value_table_(a1, v87, @"MIRR", &stru_2834BADA0, @"TSCalculationEngine");
    v604 = objc_msgSend_localizedStringForKey_value_table_(a1, v88, @"NOMINAL", &stru_2834BADA0, @"TSCalculationEngine");
    v603 = objc_msgSend_localizedStringForKey_value_table_(a1, v89, @"NPER", &stru_2834BADA0, @"TSCalculationEngine");
    v602 = objc_msgSend_localizedStringForKey_value_table_(a1, v90, @"NPV", &stru_2834BADA0, @"TSCalculationEngine");
    v601 = objc_msgSend_localizedStringForKey_value_table_(a1, v91, @"PMT", &stru_2834BADA0, @"TSCalculationEngine");
    v600 = objc_msgSend_localizedStringForKey_value_table_(a1, v92, @"PPMT", &stru_2834BADA0, @"TSCalculationEngine");
    v599 = objc_msgSend_localizedStringForKey_value_table_(a1, v93, @"PRICE", &stru_2834BADA0, @"TSCalculationEngine");
    v598 = objc_msgSend_localizedStringForKey_value_table_(a1, v94, @"PRICEDISC", &stru_2834BADA0, @"TSCalculationEngine");
    v597 = objc_msgSend_localizedStringForKey_value_table_(a1, v95, @"PRICEMAT", &stru_2834BADA0, @"TSCalculationEngine");
    v596 = objc_msgSend_localizedStringForKey_value_table_(a1, v96, @"PV", &stru_2834BADA0, @"TSCalculationEngine");
    v595 = objc_msgSend_localizedStringForKey_value_table_(a1, v97, @"RATE", &stru_2834BADA0, @"TSCalculationEngine");
    v594 = objc_msgSend_localizedStringForKey_value_table_(a1, v98, @"RECEIVED", &stru_2834BADA0, @"TSCalculationEngine");
    v593 = objc_msgSend_localizedStringForKey_value_table_(a1, v99, @"SLN", &stru_2834BADA0, @"TSCalculationEngine");
    v592 = objc_msgSend_localizedStringForKey_value_table_(a1, v100, @"STOCK", &stru_2834BADA0, @"TSCalculationEngine");
    v591 = objc_msgSend_localizedStringForKey_value_table_(a1, v101, @"STOCKH", &stru_2834BADA0, @"TSCalculationEngine");
    v590 = objc_msgSend_localizedStringForKey_value_table_(a1, v102, @"SYD", &stru_2834BADA0, @"TSCalculationEngine");
    v589 = objc_msgSend_localizedStringForKey_value_table_(a1, v103, @"VDB", &stru_2834BADA0, @"TSCalculationEngine");
    v588 = objc_msgSend_localizedStringForKey_value_table_(a1, v104, @"XIRR", &stru_2834BADA0, @"TSCalculationEngine");
    v587 = objc_msgSend_localizedStringForKey_value_table_(a1, v105, @"XNPV", &stru_2834BADA0, @"TSCalculationEngine");
    v586 = objc_msgSend_localizedStringForKey_value_table_(a1, v106, @"YIELD", &stru_2834BADA0, @"TSCalculationEngine");
    v585 = objc_msgSend_localizedStringForKey_value_table_(a1, v107, @"YIELDDISC", &stru_2834BADA0, @"TSCalculationEngine");
    v584 = objc_msgSend_localizedStringForKey_value_table_(a1, v108, @"YIELDMAT", &stru_2834BADA0, @"TSCalculationEngine");
    v583 = objc_msgSend_localizedStringForKey_value_table_(a1, v109, @"AND", &stru_2834BADA0, @"TSCalculationEngine");
    v582 = objc_msgSend_localizedStringForKey_value_table_(a1, v110, @"FALSE", &stru_2834BADA0, @"TSCalculationEngine");
    v581 = objc_msgSend_localizedStringForKey_value_table_(a1, v111, @"IF", &stru_2834BADA0, @"TSCalculationEngine");
    v580 = objc_msgSend_localizedStringForKey_value_table_(a1, v112, @"IFS", &stru_2834BADA0, @"TSCalculationEngine");
    v579 = objc_msgSend_localizedStringForKey_value_table_(a1, v113, @"IFERROR", &stru_2834BADA0, @"TSCalculationEngine");
    v578 = objc_msgSend_localizedStringForKey_value_table_(a1, v114, @"ISBLANK", &stru_2834BADA0, @"TSCalculationEngine");
    v577 = objc_msgSend_localizedStringForKey_value_table_(a1, v115, @"ISDATE", &stru_2834BADA0, @"TSCalculationEngine");
    v576 = objc_msgSend_localizedStringForKey_value_table_(a1, v116, @"ISERROR", &stru_2834BADA0, @"TSCalculationEngine");
    v575 = objc_msgSend_localizedStringForKey_value_table_(a1, v117, @"ISEVEN", &stru_2834BADA0, @"TSCalculationEngine");
    v574 = objc_msgSend_localizedStringForKey_value_table_(a1, v118, @"ISNUMBER", &stru_2834BADA0, @"TSCalculationEngine");
    v573 = objc_msgSend_localizedStringForKey_value_table_(a1, v119, @"ISNUMBERORDATE", &stru_2834BADA0, @"TSCalculationEngine");
    v572 = objc_msgSend_localizedStringForKey_value_table_(a1, v120, @"ISODD", &stru_2834BADA0, @"TSCalculationEngine");
    v571 = objc_msgSend_localizedStringForKey_value_table_(a1, v121, @"ISTEXT", &stru_2834BADA0, @"TSCalculationEngine");
    v570 = objc_msgSend_localizedStringForKey_value_table_(a1, v122, @"NOT", &stru_2834BADA0, @"TSCalculationEngine");
    v569 = objc_msgSend_localizedStringForKey_value_table_(a1, v123, @"OR", &stru_2834BADA0, @"TSCalculationEngine");
    v568 = objc_msgSend_localizedStringForKey_value_table_(a1, v124, @"SWITCH", &stru_2834BADA0, @"TSCalculationEngine");
    v567 = objc_msgSend_localizedStringForKey_value_table_(a1, v125, @"TRUE", &stru_2834BADA0, @"TSCalculationEngine");
    v566 = objc_msgSend_localizedStringForKey_value_table_(a1, v126, @"ADDRESS", &stru_2834BADA0, @"TSCalculationEngine");
    v565 = objc_msgSend_localizedStringForKey_value_table_(a1, v127, @"AREAS", &stru_2834BADA0, @"TSCalculationEngine");
    v564 = objc_msgSend_localizedStringForKey_value_table_(a1, v128, @"ARRAYTOTEXT", &stru_2834BADA0, @"TSCalculationEngine");
    v563 = objc_msgSend_localizedStringForKey_value_table_(a1, v129, @"BYCOL", &stru_2834BADA0, @"TSCalculationEngine");
    v562 = objc_msgSend_localizedStringForKey_value_table_(a1, v130, @"BYROW", &stru_2834BADA0, @"TSCalculationEngine");
    v561 = objc_msgSend_localizedStringForKey_value_table_(a1, v131, @"CHOOSE", &stru_2834BADA0, @"TSCalculationEngine");
    v560 = objc_msgSend_localizedStringForKey_value_table_(a1, v132, @"CHOOSECOLS", &stru_2834BADA0, @"TSCalculationEngine");
    v559 = objc_msgSend_localizedStringForKey_value_table_(a1, v133, @"CHOOSEROWS", &stru_2834BADA0, @"TSCalculationEngine");
    v558 = objc_msgSend_localizedStringForKey_value_table_(a1, v134, @"COLUMN", &stru_2834BADA0, @"TSCalculationEngine");
    v557 = objc_msgSend_localizedStringForKey_value_table_(a1, v135, @"COLUMNS", &stru_2834BADA0, @"TSCalculationEngine");
    v556 = objc_msgSend_localizedStringForKey_value_table_(a1, v136, @"DROP", &stru_2834BADA0, @"TSCalculationEngine");
    v555 = objc_msgSend_localizedStringForKey_value_table_(a1, v137, @"EXPAND", &stru_2834BADA0, @"TSCalculationEngine");
    v554 = objc_msgSend_localizedStringForKey_value_table_(a1, v138, @"FILTER", &stru_2834BADA0, @"TSCalculationEngine");
    v553 = objc_msgSend_localizedStringForKey_value_table_(a1, v139, @"FORMULATEXT", &stru_2834BADA0, @"TSCalculationEngine");
    v552 = objc_msgSend_localizedStringForKey_value_table_(a1, v140, @"GETPIVOTDATA", &stru_2834BADA0, @"TSCalculationEngine");
    v551 = objc_msgSend_localizedStringForKey_value_table_(a1, v141, @"HLOOKUP", &stru_2834BADA0, @"TSCalculationEngine");
    v550 = objc_msgSend_localizedStringForKey_value_table_(a1, v142, @"HSTACK", &stru_2834BADA0, @"TSCalculationEngine");
    v549 = objc_msgSend_localizedStringForKey_value_table_(a1, v143, @"HYPERLINK", &stru_2834BADA0, @"TSCalculationEngine");
    v548 = objc_msgSend_localizedStringForKey_value_table_(a1, v144, @"INDEX", &stru_2834BADA0, @"TSCalculationEngine");
    v547 = objc_msgSend_localizedStringForKey_value_table_(a1, v145, @"INDIRECT", &stru_2834BADA0, @"TSCalculationEngine");
    v546 = objc_msgSend_localizedStringForKey_value_table_(a1, v146, @"INTERSECT.RANGES", &stru_2834BADA0, @"TSCalculationEngine");
    v545 = objc_msgSend_localizedStringForKey_value_table_(a1, v147, @"ISOMITTED", &stru_2834BADA0, @"TSCalculationEngine");
    v544 = objc_msgSend_localizedStringForKey_value_table_(a1, v148, @"LOOKUP", &stru_2834BADA0, @"TSCalculationEngine");
    v543 = objc_msgSend_localizedStringForKey_value_table_(a1, v149, @"MAKEARRAY", &stru_2834BADA0, @"TSCalculationEngine");
    v542 = objc_msgSend_localizedStringForKey_value_table_(a1, v150, @"MAP", &stru_2834BADA0, @"TSCalculationEngine");
    v541 = objc_msgSend_localizedStringForKey_value_table_(a1, v151, @"MATCH", &stru_2834BADA0, @"TSCalculationEngine");
    v540 = objc_msgSend_localizedStringForKey_value_table_(a1, v152, @"OFFSET", &stru_2834BADA0, @"TSCalculationEngine");
    v539 = objc_msgSend_localizedStringForKey_value_table_(a1, v153, @"RANDARRAY", &stru_2834BADA0, @"TSCalculationEngine");
    v538 = objc_msgSend_localizedStringForKey_value_table_(a1, v154, @"REDUCE", &stru_2834BADA0, @"TSCalculationEngine");
    v537 = objc_msgSend_localizedStringForKey_value_table_(a1, v155, @"REFERENCE.NAME", &stru_2834BADA0, @"TSCalculationEngine");
    v536 = objc_msgSend_localizedStringForKey_value_table_(a1, v156, @"ROW", &stru_2834BADA0, @"TSCalculationEngine");
    v535 = objc_msgSend_localizedStringForKey_value_table_(a1, v157, @"ROWS", &stru_2834BADA0, @"TSCalculationEngine");
    v534 = objc_msgSend_localizedStringForKey_value_table_(a1, v158, @"SCAN", &stru_2834BADA0, @"TSCalculationEngine");
    v533 = objc_msgSend_localizedStringForKey_value_table_(a1, v159, @"SEQUENCE", &stru_2834BADA0, @"TSCalculationEngine");
    v532 = objc_msgSend_localizedStringForKey_value_table_(a1, v160, @"SORT", &stru_2834BADA0, @"TSCalculationEngine");
    v531 = objc_msgSend_localizedStringForKey_value_table_(a1, v161, @"SORTBY", &stru_2834BADA0, @"TSCalculationEngine");
    v530 = objc_msgSend_localizedStringForKey_value_table_(a1, v162, @"TAKE", &stru_2834BADA0, @"TSCalculationEngine");
    v529 = objc_msgSend_localizedStringForKey_value_table_(a1, v163, @"TOCOL", &stru_2834BADA0, @"TSCalculationEngine");
    v528 = objc_msgSend_localizedStringForKey_value_table_(a1, v164, @"TOROW", &stru_2834BADA0, @"TSCalculationEngine");
    v527 = objc_msgSend_localizedStringForKey_value_table_(a1, v165, @"TRANSPOSE", &stru_2834BADA0, @"TSCalculationEngine");
    v526 = objc_msgSend_localizedStringForKey_value_table_(a1, v166, @"UNION.RANGES", &stru_2834BADA0, @"TSCalculationEngine");
    v525 = objc_msgSend_localizedStringForKey_value_table_(a1, v167, @"UNIQUE", &stru_2834BADA0, @"TSCalculationEngine");
    v524 = objc_msgSend_localizedStringForKey_value_table_(a1, v168, @"VLOOKUP", &stru_2834BADA0, @"TSCalculationEngine");
    v523 = objc_msgSend_localizedStringForKey_value_table_(a1, v169, @"VSTACK", &stru_2834BADA0, @"TSCalculationEngine");
    v522 = objc_msgSend_localizedStringForKey_value_table_(a1, v170, @"WRAPCOLS", &stru_2834BADA0, @"TSCalculationEngine");
    v521 = objc_msgSend_localizedStringForKey_value_table_(a1, v171, @"WRAPROWS", &stru_2834BADA0, @"TSCalculationEngine");
    v520 = objc_msgSend_localizedStringForKey_value_table_(a1, v172, @"XLOOKUP", &stru_2834BADA0, @"TSCalculationEngine");
    v519 = objc_msgSend_localizedStringForKey_value_table_(a1, v173, @"XMATCH", &stru_2834BADA0, @"TSCalculationEngine");
    v518 = objc_msgSend_localizedStringForKey_value_table_(a1, v174, @"ABS", &stru_2834BADA0, @"TSCalculationEngine");
    v517 = objc_msgSend_localizedStringForKey_value_table_(a1, v175, @"ACOS", &stru_2834BADA0, @"TSCalculationEngine");
    v516 = objc_msgSend_localizedStringForKey_value_table_(a1, v176, @"ACOSH", &stru_2834BADA0, @"TSCalculationEngine");
    v515 = objc_msgSend_localizedStringForKey_value_table_(a1, v177, @"ASIN", &stru_2834BADA0, @"TSCalculationEngine");
    v514 = objc_msgSend_localizedStringForKey_value_table_(a1, v178, @"ASINH", &stru_2834BADA0, @"TSCalculationEngine");
    v513 = objc_msgSend_localizedStringForKey_value_table_(a1, v179, @"ATAN", &stru_2834BADA0, @"TSCalculationEngine");
    v512 = objc_msgSend_localizedStringForKey_value_table_(a1, v180, @"ATAN2", &stru_2834BADA0, @"TSCalculationEngine");
    v511 = objc_msgSend_localizedStringForKey_value_table_(a1, v181, @"ATANH", &stru_2834BADA0, @"TSCalculationEngine");
    v510 = objc_msgSend_localizedStringForKey_value_table_(a1, v182, @"CEILING", &stru_2834BADA0, @"TSCalculationEngine");
    v509 = objc_msgSend_localizedStringForKey_value_table_(a1, v183, @"COMBIN", &stru_2834BADA0, @"TSCalculationEngine");
    v508 = objc_msgSend_localizedStringForKey_value_table_(a1, v184, @"COS", &stru_2834BADA0, @"TSCalculationEngine");
    v507 = objc_msgSend_localizedStringForKey_value_table_(a1, v185, @"COSH", &stru_2834BADA0, @"TSCalculationEngine");
    v506 = objc_msgSend_localizedStringForKey_value_table_(a1, v186, @"DEGREES", &stru_2834BADA0, @"TSCalculationEngine");
    v505 = objc_msgSend_localizedStringForKey_value_table_(a1, v187, @"EVEN", &stru_2834BADA0, @"TSCalculationEngine");
    v504 = objc_msgSend_localizedStringForKey_value_table_(a1, v188, @"EXP", &stru_2834BADA0, @"TSCalculationEngine");
    v503 = objc_msgSend_localizedStringForKey_value_table_(a1, v189, @"FACT", &stru_2834BADA0, @"TSCalculationEngine");
    v502 = objc_msgSend_localizedStringForKey_value_table_(a1, v190, @"FACTDOUBLE", &stru_2834BADA0, @"TSCalculationEngine");
    v501 = objc_msgSend_localizedStringForKey_value_table_(a1, v191, @"FLOOR", &stru_2834BADA0, @"TSCalculationEngine");
    v500 = objc_msgSend_localizedStringForKey_value_table_(a1, v192, @"GCD", &stru_2834BADA0, @"TSCalculationEngine");
    v499 = objc_msgSend_localizedStringForKey_value_table_(a1, v193, @"INT", &stru_2834BADA0, @"TSCalculationEngine");
    v498 = objc_msgSend_localizedStringForKey_value_table_(a1, v194, @"LAMBDA", &stru_2834BADA0, @"TSCalculationEngine");
    v497 = objc_msgSend_localizedStringForKey_value_table_(a1, v195, @"LAMBDA.APPLY", &stru_2834BADA0, @"TSCalculationEngine");
    v496 = objc_msgSend_localizedStringForKey_value_table_(a1, v196, @"LCM", &stru_2834BADA0, @"TSCalculationEngine");
    v495 = objc_msgSend_localizedStringForKey_value_table_(a1, v197, @"LET", &stru_2834BADA0, @"TSCalculationEngine");
    v494 = objc_msgSend_localizedStringForKey_value_table_(a1, v198, @"LN", &stru_2834BADA0, @"TSCalculationEngine");
    v493 = objc_msgSend_localizedStringForKey_value_table_(a1, v199, @"LOG", &stru_2834BADA0, @"TSCalculationEngine");
    v492 = objc_msgSend_localizedStringForKey_value_table_(a1, v200, @"LOG10", &stru_2834BADA0, @"TSCalculationEngine");
    v491 = objc_msgSend_localizedStringForKey_value_table_(a1, v201, @"MDETERM", &stru_2834BADA0, @"TSCalculationEngine");
    v490 = objc_msgSend_localizedStringForKey_value_table_(a1, v202, @"MINVERSE", &stru_2834BADA0, @"TSCalculationEngine");
    v489 = objc_msgSend_localizedStringForKey_value_table_(a1, v203, @"MMULT", &stru_2834BADA0, @"TSCalculationEngine");
    v488 = objc_msgSend_localizedStringForKey_value_table_(a1, v204, @"MOD", &stru_2834BADA0, @"TSCalculationEngine");
    v487 = objc_msgSend_localizedStringForKey_value_table_(a1, v205, @"MROUND", &stru_2834BADA0, @"TSCalculationEngine");
    v486 = objc_msgSend_localizedStringForKey_value_table_(a1, v206, @"MULTINOMIAL", &stru_2834BADA0, @"TSCalculationEngine");
    v485 = objc_msgSend_localizedStringForKey_value_table_(a1, v207, @"MUNIT", &stru_2834BADA0, @"TSCalculationEngine");
    v484 = objc_msgSend_localizedStringForKey_value_table_(a1, v208, @"ODD", &stru_2834BADA0, @"TSCalculationEngine");
    v483 = objc_msgSend_localizedStringForKey_value_table_(a1, v209, @"PI", &stru_2834BADA0, @"TSCalculationEngine");
    v482 = objc_msgSend_localizedStringForKey_value_table_(a1, v210, @"POLYNOMIAL", &stru_2834BADA0, @"TSCalculationEngine");
    v481 = objc_msgSend_localizedStringForKey_value_table_(a1, v211, @"POWER", &stru_2834BADA0, @"TSCalculationEngine");
    v480 = objc_msgSend_localizedStringForKey_value_table_(a1, v212, @"PRODUCT", &stru_2834BADA0, @"TSCalculationEngine");
    v479 = objc_msgSend_localizedStringForKey_value_table_(a1, v213, @"QUOTIENT", &stru_2834BADA0, @"TSCalculationEngine");
    v478 = objc_msgSend_localizedStringForKey_value_table_(a1, v214, @"RADIANS", &stru_2834BADA0, @"TSCalculationEngine");
    v477 = objc_msgSend_localizedStringForKey_value_table_(a1, v215, @"RAND", &stru_2834BADA0, @"TSCalculationEngine");
    v476 = objc_msgSend_localizedStringForKey_value_table_(a1, v216, @"RANDBETWEEN", &stru_2834BADA0, @"TSCalculationEngine");
    v475 = objc_msgSend_localizedStringForKey_value_table_(a1, v217, @"ROMAN", &stru_2834BADA0, @"TSCalculationEngine");
    v474 = objc_msgSend_localizedStringForKey_value_table_(a1, v218, @"ROUND", &stru_2834BADA0, @"TSCalculationEngine");
    v473 = objc_msgSend_localizedStringForKey_value_table_(a1, v219, @"ROUNDDOWN", &stru_2834BADA0, @"TSCalculationEngine");
    v472 = objc_msgSend_localizedStringForKey_value_table_(a1, v220, @"ROUNDUP", &stru_2834BADA0, @"TSCalculationEngine");
    v471 = objc_msgSend_localizedStringForKey_value_table_(a1, v221, @"SERIESSUM", &stru_2834BADA0, @"TSCalculationEngine");
    v470 = objc_msgSend_localizedStringForKey_value_table_(a1, v222, @"SIGN", &stru_2834BADA0, @"TSCalculationEngine");
    v469 = objc_msgSend_localizedStringForKey_value_table_(a1, v223, @"SIN", &stru_2834BADA0, @"TSCalculationEngine");
    v468 = objc_msgSend_localizedStringForKey_value_table_(a1, v224, @"SINH", &stru_2834BADA0, @"TSCalculationEngine");
    v467 = objc_msgSend_localizedStringForKey_value_table_(a1, v225, @"SQRT", &stru_2834BADA0, @"TSCalculationEngine");
    v466 = objc_msgSend_localizedStringForKey_value_table_(a1, v226, @"SQRTPI", &stru_2834BADA0, @"TSCalculationEngine");
    v465 = objc_msgSend_localizedStringForKey_value_table_(a1, v227, @"SUBTOTAL", &stru_2834BADA0, @"TSCalculationEngine");
    v464 = objc_msgSend_localizedStringForKey_value_table_(a1, v228, @"SUM", &stru_2834BADA0, @"TSCalculationEngine");
    v463 = objc_msgSend_localizedStringForKey_value_table_(a1, v229, @"SUMIF", &stru_2834BADA0, @"TSCalculationEngine");
    v462 = objc_msgSend_localizedStringForKey_value_table_(a1, v230, @"SUMIFS", &stru_2834BADA0, @"TSCalculationEngine");
    v461 = objc_msgSend_localizedStringForKey_value_table_(a1, v231, @"SUMPRODUCT", &stru_2834BADA0, @"TSCalculationEngine");
    v460 = objc_msgSend_localizedStringForKey_value_table_(a1, v232, @"SUMSQ", &stru_2834BADA0, @"TSCalculationEngine");
    v459 = objc_msgSend_localizedStringForKey_value_table_(a1, v233, @"SUMX2MY2", &stru_2834BADA0, @"TSCalculationEngine");
    v458 = objc_msgSend_localizedStringForKey_value_table_(a1, v234, @"SUMX2PY2", &stru_2834BADA0, @"TSCalculationEngine");
    v457 = objc_msgSend_localizedStringForKey_value_table_(a1, v235, @"SUMXMY2", &stru_2834BADA0, @"TSCalculationEngine");
    v456 = objc_msgSend_localizedStringForKey_value_table_(a1, v236, @"TAN", &stru_2834BADA0, @"TSCalculationEngine");
    v455 = objc_msgSend_localizedStringForKey_value_table_(a1, v237, @"TANH", &stru_2834BADA0, @"TSCalculationEngine");
    v454 = objc_msgSend_localizedStringForKey_value_table_(a1, v238, @"TRUNC", &stru_2834BADA0, @"TSCalculationEngine");
    v453 = objc_msgSend_localizedStringForKey_value_table_(a1, v239, @"AVEDEV", &stru_2834BADA0, @"TSCalculationEngine");
    v452 = objc_msgSend_localizedStringForKey_value_table_(a1, v240, @"AVERAGE", &stru_2834BADA0, @"TSCalculationEngine");
    v451 = objc_msgSend_localizedStringForKey_value_table_(a1, v241, @"AVERAGEA", &stru_2834BADA0, @"TSCalculationEngine");
    v450 = objc_msgSend_localizedStringForKey_value_table_(a1, v242, @"AVERAGEIF", &stru_2834BADA0, @"TSCalculationEngine");
    v449 = objc_msgSend_localizedStringForKey_value_table_(a1, v243, @"AVERAGEIFS", &stru_2834BADA0, @"TSCalculationEngine");
    v448 = objc_msgSend_localizedStringForKey_value_table_(a1, v244, @"BETADIST", &stru_2834BADA0, @"TSCalculationEngine");
    v447 = objc_msgSend_localizedStringForKey_value_table_(a1, v245, @"BETAINV", &stru_2834BADA0, @"TSCalculationEngine");
    v446 = objc_msgSend_localizedStringForKey_value_table_(a1, v246, @"BINOMDIST", &stru_2834BADA0, @"TSCalculationEngine");
    v445 = objc_msgSend_localizedStringForKey_value_table_(a1, v247, @"CHIDIST", &stru_2834BADA0, @"TSCalculationEngine");
    v444 = objc_msgSend_localizedStringForKey_value_table_(a1, v248, @"CHIINV", &stru_2834BADA0, @"TSCalculationEngine");
    v443 = objc_msgSend_localizedStringForKey_value_table_(a1, v249, @"CHITEST", &stru_2834BADA0, @"TSCalculationEngine");
    v442 = objc_msgSend_localizedStringForKey_value_table_(a1, v250, @"CONFIDENCE", &stru_2834BADA0, @"TSCalculationEngine");
    v441 = objc_msgSend_localizedStringForKey_value_table_(a1, v251, @"CORREL", &stru_2834BADA0, @"TSCalculationEngine");
    v440 = objc_msgSend_localizedStringForKey_value_table_(a1, v252, @"COUNT", &stru_2834BADA0, @"TSCalculationEngine");
    v439 = objc_msgSend_localizedStringForKey_value_table_(a1, v253, @"COUNTA", &stru_2834BADA0, @"TSCalculationEngine");
    v438 = objc_msgSend_localizedStringForKey_value_table_(a1, v254, @"COUNTBLANK", &stru_2834BADA0, @"TSCalculationEngine");
    v437 = objc_msgSend_localizedStringForKey_value_table_(a1, v255, @"COUNTIF", &stru_2834BADA0, @"TSCalculationEngine");
    v436 = objc_msgSend_localizedStringForKey_value_table_(a1, v256, @"COUNTIFS", &stru_2834BADA0, @"TSCalculationEngine");
    v435 = objc_msgSend_localizedStringForKey_value_table_(a1, v257, @"COVAR", &stru_2834BADA0, @"TSCalculationEngine");
    v434 = objc_msgSend_localizedStringForKey_value_table_(a1, v258, @"CRITBINOM", &stru_2834BADA0, @"TSCalculationEngine");
    v433 = objc_msgSend_localizedStringForKey_value_table_(a1, v259, @"DEVSQ", &stru_2834BADA0, @"TSCalculationEngine");
    v432 = objc_msgSend_localizedStringForKey_value_table_(a1, v260, @"EXPONDIST", &stru_2834BADA0, @"TSCalculationEngine");
    v431 = objc_msgSend_localizedStringForKey_value_table_(a1, v261, @"FDIST", &stru_2834BADA0, @"TSCalculationEngine");
    v430 = objc_msgSend_localizedStringForKey_value_table_(a1, v262, @"FINV", &stru_2834BADA0, @"TSCalculationEngine");
    v429 = objc_msgSend_localizedStringForKey_value_table_(a1, v263, @"FORECAST", &stru_2834BADA0, @"TSCalculationEngine");
    v428 = objc_msgSend_localizedStringForKey_value_table_(a1, v264, @"FREQUENCY", &stru_2834BADA0, @"TSCalculationEngine");
    v427 = objc_msgSend_localizedStringForKey_value_table_(a1, v265, @"GAMMADIST", &stru_2834BADA0, @"TSCalculationEngine");
    v426 = objc_msgSend_localizedStringForKey_value_table_(a1, v266, @"GAMMAINV", &stru_2834BADA0, @"TSCalculationEngine");
    v425 = objc_msgSend_localizedStringForKey_value_table_(a1, v267, @"GAMMALN", &stru_2834BADA0, @"TSCalculationEngine");
    v424 = objc_msgSend_localizedStringForKey_value_table_(a1, v268, @"GEOMEAN", &stru_2834BADA0, @"TSCalculationEngine");
    v423 = objc_msgSend_localizedStringForKey_value_table_(a1, v269, @"HARMEAN", &stru_2834BADA0, @"TSCalculationEngine");
    v422 = objc_msgSend_localizedStringForKey_value_table_(a1, v270, @"INTERCEPT", &stru_2834BADA0, @"TSCalculationEngine");
    v421 = objc_msgSend_localizedStringForKey_value_table_(a1, v271, @"LARGE", &stru_2834BADA0, @"TSCalculationEngine");
    v420 = objc_msgSend_localizedStringForKey_value_table_(a1, v272, @"LINEST", &stru_2834BADA0, @"TSCalculationEngine");
    v419 = objc_msgSend_localizedStringForKey_value_table_(a1, v273, @"LOGINV", &stru_2834BADA0, @"TSCalculationEngine");
    v418 = objc_msgSend_localizedStringForKey_value_table_(a1, v274, @"LOGNORMDIST", &stru_2834BADA0, @"TSCalculationEngine");
    v417 = objc_msgSend_localizedStringForKey_value_table_(a1, v275, @"MAX", &stru_2834BADA0, @"TSCalculationEngine");
    v416 = objc_msgSend_localizedStringForKey_value_table_(a1, v276, @"MAXA", &stru_2834BADA0, @"TSCalculationEngine");
    v415 = objc_msgSend_localizedStringForKey_value_table_(a1, v277, @"MAXIFS", &stru_2834BADA0, @"TSCalculationEngine");
    v414 = objc_msgSend_localizedStringForKey_value_table_(a1, v278, @"MEDIAN", &stru_2834BADA0, @"TSCalculationEngine");
    v413 = objc_msgSend_localizedStringForKey_value_table_(a1, v279, @"MIN", &stru_2834BADA0, @"TSCalculationEngine");
    v412 = objc_msgSend_localizedStringForKey_value_table_(a1, v280, @"MINA", &stru_2834BADA0, @"TSCalculationEngine");
    v411 = objc_msgSend_localizedStringForKey_value_table_(a1, v281, @"MINIFS", &stru_2834BADA0, @"TSCalculationEngine");
    v410 = objc_msgSend_localizedStringForKey_value_table_(a1, v282, @"MODE", &stru_2834BADA0, @"TSCalculationEngine");
    v409 = objc_msgSend_localizedStringForKey_value_table_(a1, v283, @"NEGBINOMDIST", &stru_2834BADA0, @"TSCalculationEngine");
    v408 = objc_msgSend_localizedStringForKey_value_table_(a1, v284, @"NORMDIST", &stru_2834BADA0, @"TSCalculationEngine");
    v407 = objc_msgSend_localizedStringForKey_value_table_(a1, v285, @"NORMINV", &stru_2834BADA0, @"TSCalculationEngine");
    v406 = objc_msgSend_localizedStringForKey_value_table_(a1, v286, @"NORMSDIST", &stru_2834BADA0, @"TSCalculationEngine");
    v405 = objc_msgSend_localizedStringForKey_value_table_(a1, v287, @"NORMSINV", &stru_2834BADA0, @"TSCalculationEngine");
    v404 = objc_msgSend_localizedStringForKey_value_table_(a1, v288, @"PERCENTILE", &stru_2834BADA0, @"TSCalculationEngine");
    v403 = objc_msgSend_localizedStringForKey_value_table_(a1, v289, @"PERCENTRANK", &stru_2834BADA0, @"TSCalculationEngine");
    v402 = objc_msgSend_localizedStringForKey_value_table_(a1, v290, @"PERMUT", &stru_2834BADA0, @"TSCalculationEngine");
    v401 = objc_msgSend_localizedStringForKey_value_table_(a1, v291, @"POISSON", &stru_2834BADA0, @"TSCalculationEngine");
    v400 = objc_msgSend_localizedStringForKey_value_table_(a1, v292, @"PROB", &stru_2834BADA0, @"TSCalculationEngine");
    v399 = objc_msgSend_localizedStringForKey_value_table_(a1, v293, @"QUARTILE", &stru_2834BADA0, @"TSCalculationEngine");
    v398 = objc_msgSend_localizedStringForKey_value_table_(a1, v294, @"RANK", &stru_2834BADA0, @"TSCalculationEngine");
    v397 = objc_msgSend_localizedStringForKey_value_table_(a1, v295, @"SLOPE", &stru_2834BADA0, @"TSCalculationEngine");
    v396 = objc_msgSend_localizedStringForKey_value_table_(a1, v296, @"SMALL", &stru_2834BADA0, @"TSCalculationEngine");
    v395 = objc_msgSend_localizedStringForKey_value_table_(a1, v297, @"STANDARDIZE", &stru_2834BADA0, @"TSCalculationEngine");
    v394 = objc_msgSend_localizedStringForKey_value_table_(a1, v298, @"STDEV", &stru_2834BADA0, @"TSCalculationEngine");
    v393 = objc_msgSend_localizedStringForKey_value_table_(a1, v299, @"STDEVA", &stru_2834BADA0, @"TSCalculationEngine");
    v392 = objc_msgSend_localizedStringForKey_value_table_(a1, v300, @"STDEVP", &stru_2834BADA0, @"TSCalculationEngine");
    v391 = objc_msgSend_localizedStringForKey_value_table_(a1, v301, @"STDEVPA", &stru_2834BADA0, @"TSCalculationEngine");
    v390 = objc_msgSend_localizedStringForKey_value_table_(a1, v302, @"SUBTOTAL", &stru_2834BADA0, @"TSCalculationEngine");
    v389 = objc_msgSend_localizedStringForKey_value_table_(a1, v303, @"TDIST", &stru_2834BADA0, @"TSCalculationEngine");
    v388 = objc_msgSend_localizedStringForKey_value_table_(a1, v304, @"TINV", &stru_2834BADA0, @"TSCalculationEngine");
    v387 = objc_msgSend_localizedStringForKey_value_table_(a1, v305, @"TTEST", &stru_2834BADA0, @"TSCalculationEngine");
    v386 = objc_msgSend_localizedStringForKey_value_table_(a1, v306, @"VAR", &stru_2834BADA0, @"TSCalculationEngine");
    v385 = objc_msgSend_localizedStringForKey_value_table_(a1, v307, @"VARA", &stru_2834BADA0, @"TSCalculationEngine");
    v384 = objc_msgSend_localizedStringForKey_value_table_(a1, v308, @"VARP", &stru_2834BADA0, @"TSCalculationEngine");
    v383 = objc_msgSend_localizedStringForKey_value_table_(a1, v309, @"VARPA", &stru_2834BADA0, @"TSCalculationEngine");
    v382 = objc_msgSend_localizedStringForKey_value_table_(a1, v310, @"WEIBULL", &stru_2834BADA0, @"TSCalculationEngine");
    v381 = objc_msgSend_localizedStringForKey_value_table_(a1, v311, @"ZTEST", &stru_2834BADA0, @"TSCalculationEngine");
    v380 = objc_msgSend_localizedStringForKey_value_table_(a1, v312, @"CHAR", &stru_2834BADA0, @"TSCalculationEngine");
    v379 = objc_msgSend_localizedStringForKey_value_table_(a1, v313, @"CLEAN", &stru_2834BADA0, @"TSCalculationEngine");
    v378 = objc_msgSend_localizedStringForKey_value_table_(a1, v314, @"CODE", &stru_2834BADA0, @"TSCalculationEngine");
    v377 = objc_msgSend_localizedStringForKey_value_table_(a1, v315, @"CONCAT", &stru_2834BADA0, @"TSCalculationEngine");
    v376 = objc_msgSend_localizedStringForKey_value_table_(a1, v316, @"CONCATENATE", &stru_2834BADA0, @"TSCalculationEngine");
    v375 = objc_msgSend_localizedStringForKey_value_table_(a1, v317, @"COUNTMATCHES", &stru_2834BADA0, @"TSCalculationEngine");
    v374 = objc_msgSend_localizedStringForKey_value_table_(a1, v318, @"DOLLAR", &stru_2834BADA0, @"TSCalculationEngine");
    v373 = objc_msgSend_localizedStringForKey_value_table_(a1, v319, @"EXACT", &stru_2834BADA0, @"TSCalculationEngine");
    v372 = objc_msgSend_localizedStringForKey_value_table_(a1, v320, @"FIND", &stru_2834BADA0, @"TSCalculationEngine");
    v371 = objc_msgSend_localizedStringForKey_value_table_(a1, v321, @"FIXED", &stru_2834BADA0, @"TSCalculationEngine");
    v370 = objc_msgSend_localizedStringForKey_value_table_(a1, v322, @"LEFT", &stru_2834BADA0, @"TSCalculationEngine");
    v369 = objc_msgSend_localizedStringForKey_value_table_(a1, v323, @"LEN", &stru_2834BADA0, @"TSCalculationEngine");
    v368 = objc_msgSend_localizedStringForKey_value_table_(a1, v324, @"LOWER", &stru_2834BADA0, @"TSCalculationEngine");
    v367 = objc_msgSend_localizedStringForKey_value_table_(a1, v325, @"MID", &stru_2834BADA0, @"TSCalculationEngine");
    v366 = objc_msgSend_localizedStringForKey_value_table_(a1, v326, @"PLAINTEXT", &stru_2834BADA0, @"TSCalculationEngine");
    v365 = objc_msgSend_localizedStringForKey_value_table_(a1, v327, @"PROPER", &stru_2834BADA0, @"TSCalculationEngine");
    v364 = objc_msgSend_localizedStringForKey_value_table_(a1, v328, @"REGEX", &stru_2834BADA0, @"TSCalculationEngine");
    v363 = objc_msgSend_localizedStringForKey_value_table_(a1, v329, @"REGEX.EXTRACT", &stru_2834BADA0, @"TSCalculationEngine");
    v362 = objc_msgSend_localizedStringForKey_value_table_(a1, v330, @"REPLACE", &stru_2834BADA0, @"TSCalculationEngine");
    v361 = objc_msgSend_localizedStringForKey_value_table_(a1, v331, @"REPT", &stru_2834BADA0, @"TSCalculationEngine");
    v360 = objc_msgSend_localizedStringForKey_value_table_(a1, v332, @"RIGHT", &stru_2834BADA0, @"TSCalculationEngine");
    v359 = objc_msgSend_localizedStringForKey_value_table_(a1, v333, @"SEARCH", &stru_2834BADA0, @"TSCalculationEngine");
    v358 = objc_msgSend_localizedStringForKey_value_table_(a1, v334, @"SUBSTITUTE", &stru_2834BADA0, @"TSCalculationEngine");
    v356 = objc_msgSend_localizedStringForKey_value_table_(a1, v335, @"T", &stru_2834BADA0, @"TSCalculationEngine");
    v355 = objc_msgSend_localizedStringForKey_value_table_(a1, v336, @"TEXTAFTER", &stru_2834BADA0, @"TSCalculationEngine");
    v354 = objc_msgSend_localizedStringForKey_value_table_(a1, v337, @"TEXTBEFORE", &stru_2834BADA0, @"TSCalculationEngine");
    v353 = objc_msgSend_localizedStringForKey_value_table_(a1, v338, @"TEXTBETWEEN", &stru_2834BADA0, @"TSCalculationEngine");
    v352 = objc_msgSend_localizedStringForKey_value_table_(a1, v339, @"TEXTJOIN", &stru_2834BADA0, @"TSCalculationEngine");
    v351 = objc_msgSend_localizedStringForKey_value_table_(a1, v340, @"TEXTSPLIT", &stru_2834BADA0, @"TSCalculationEngine");
    v350 = objc_msgSend_localizedStringForKey_value_table_(a1, v341, @"TRIM", &stru_2834BADA0, @"TSCalculationEngine");
    v349 = objc_msgSend_localizedStringForKey_value_table_(a1, v342, @"UPPER", &stru_2834BADA0, @"TSCalculationEngine");
    v348 = objc_msgSend_localizedStringForKey_value_table_(a1, v343, @"VALUE", &stru_2834BADA0, @"TSCalculationEngine");
    v5 = objc_msgSend_initWithObjectsAndKeys_(v357, v344, v686, v345, @"DATE", v685, @"DATEDIF", v684, @"DATEVALUE", v683, @"DAY", v682, @"DAYNAME", v681, @"DAYS360", v680, @"EDATE", v679, @"EOMONTH", v678, @"HOUR", v677, @"ISOWEEKNUM", v676, @"MINUTE", v675, @"MONTH", v674, @"MONTHNAME", v673, @"NETWORKDAYS", v672, @"NOW", v671, @"SECOND", v670, @"TIME", v669, @"TIMEVALUE", v668, @"TODAY", v667, @"WEEKDAY", v666, @"WEEKNUM", v665, @"WORKDAY", v664, @"YEAR", v663, @"YEARFRAC", v662, @"DURATION", v661, @"DUR2DAYS", v660, @"DUR2HOURS", v659, @"DUR2MILLISECONDS", v658, @"DUR2MINUTES", v657, @"DUR2SECONDS");

    objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v346, v5, @"functionNameToLocalizedDictionary");
  }

  return v5;
}

id sub_2212EFD74(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"localizedFunctionNameToEnglishDictionary", a4);
  if (!v7)
  {
    v27 = objc_msgSend_functionNameForwardLocalizationDictionary(a1, v4, v5, v6);
    v8 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = v27;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v29, v33, 16);
    if (v13)
    {
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          v17 = objc_msgSend_objectForKey_(v9, v11, v16, v12, v27);
          v20 = objc_msgSend_objectForKeyedSubscript_(v8, v18, v17, v19);
          v21 = v20 == 0;

          if (v21 || (objc_msgSend_isEqualToString_(v16, v22, @"op_Subtract", v23) & 1) != 0 || objc_msgSend_isEqualToString_(v16, v22, @"op_Add", v24))
          {
            objc_msgSend_setObject_forKeyedSubscript_(v8, v22, v16, v17);
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v29, v33, 16);
      }

      while (v13);
    }

    v7 = v8;
    objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v25, v7, @"localizedFunctionNameToEnglishDictionary");
  }

  return v7;
}

id sub_2212EFFAC(void *a1, const char *a2, void *a3, uint64_t a4)
{
  v5 = objc_msgSend_uppercaseString(a3, a2, a3, a4);
  v9 = objc_msgSend_functionLocalizationDictionary(a1, v6, v7, v8);
  v12 = objc_msgSend_objectForKey_(v9, v10, v5, v11);

  return v12;
}

id sub_2212F003C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_functionLocalizationDictionary(a1, a2, a3, a4);
  v8 = objc_msgSend_allKeys(v4, v5, v6, v7);

  return v8;
}

id sub_2212F0098(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"mappings_localizedTypeStringForArgumentType", a4);
  if (!v7)
  {
    v8 = objc_alloc(MEMORY[0x277CBEAC0]);
    v81 = objc_msgSend_localizedStringForKey_value_table_(a1, v9, @"an error", &stru_2834BADA0, @"TSCalculationEngine");
    v12 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v10, 9, v11);
    v14 = objc_msgSend_localizedStringForKey_value_table_(a1, v13, @"an empty cell", &stru_2834BADA0, @"TSCalculationEngine");
    v103 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v15, 0, v16);
    v18 = objc_msgSend_localizedStringForKey_value_table_(a1, v17, @"empty", &stru_2834BADA0, @"TSCalculationEngine");
    objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v19, 10, v20);
    v101 = v18;
    v102 = v80 = a3;
    v22 = objc_msgSend_localizedStringForKey_value_table_(a1, v21, @"a number", &stru_2834BADA0, @"TSCalculationEngine");
    v100 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v23, 5, v24);
    v99 = objc_msgSend_localizedStringForKey_value_table_(a1, v25, @"a string", &stru_2834BADA0, @"TSCalculationEngine");
    v98 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v26, 7, v27);
    v97 = objc_msgSend_localizedStringForKey_value_table_(a1, v28, @"a Boolean", &stru_2834BADA0, @"TSCalculationEngine");
    v96 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v29, 2, v30);
    v95 = objc_msgSend_localizedStringForKey_value_table_(a1, v31, @"a date", &stru_2834BADA0, @"TSCalculationEngine");
    v94 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v32, 3, v33);
    v93 = objc_msgSend_localizedStringForKey_value_table_(a1, v34, @"a reference", &stru_2834BADA0, @"TSCalculationEngine");
    v92 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v35, 6, v36);
    v91 = objc_msgSend_localizedStringForKey_value_table_(a1, v37, @"an array", &stru_2834BADA0, @"TSCalculationEngine");
    v90 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v38, 1, v39);
    v89 = objc_msgSend_localizedStringForKey_value_table_(a1, v40, @"an array", &stru_2834BADA0, @"TSCalculationEngine");
    v88 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v41, 16, v42);
    v87 = objc_msgSend_localizedStringForKey_value_table_(a1, v43, @"a duration", &stru_2834BADA0, @"TSCalculationEngine");
    v86 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v44, 4, v45);
    v85 = objc_msgSend_localizedStringForKey_value_table_(a1, v46, @"anything", &stru_2834BADA0, @"TSCalculationEngine");
    v84 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v47, 0xFFFFFFFFLL, v48);
    v83 = objc_msgSend_localizedStringForKey_value_table_(a1, v49, @"a number, date, or duration", &stru_2834BADA0, @"TSCalculationEngine");
    v82 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v50, 8, v51);
    v79 = objc_msgSend_localizedStringForKey_value_table_(a1, v52, @"a variable", &stru_2834BADA0, @"TSCalculationEngine");
    v78 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v53, 18, v54);
    v77 = objc_msgSend_localizedStringForKey_value_table_(a1, v55, @"an identifier", &stru_2834BADA0, @"TSCalculationEngine");
    v76 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v56, 20, v57);
    v59 = objc_msgSend_localizedStringForKey_value_table_(a1, v58, @"a lambda", &stru_2834BADA0, @"TSCalculationEngine");
    v75 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v60, 19, v61);
    v63 = objc_msgSend_localizedStringForKey_value_table_(a1, v62, @"a number, or BOOLean", &stru_2834BADA0, @"TSCalculationEngine");
    v66 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v64, 21, v65);
    v7 = objc_msgSend_initWithObjectsAndKeys_(v8, v67, v81, v68, v12, v14, v103, v18, v102, v22, v100, v99, v98, v97, v96, v95, v94, v93, v92, v91, v90, v89, v88, v87, v86, v85, v84, v83, v82, v79, v78, v77, v76, v59, v75, v63, v66, 0);

    objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v69, v7, @"mappings_localizedTypeStringForArgumentType");
    a3 = v80;
  }

  v70 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v5, a3, v6);
  v73 = objc_msgSend_objectForKey_(v7, v71, v70, v72);

  return v73;
}

void sub_2212F07A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, void *a44, void *a45, void *a46, void *a47, void *a48, void *a49, void *a50, uint64_t a51, void *a52, void *a53, void *a54)
{
  v58 = *(v57 - 120);

  _Unwind_Resume(a1);
}

uint64_t sub_2212F0A40(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = objc_msgSend_localizedTrueString(a1, v5, v6, v7);
  IsEqual_toString = objc_msgSend_localizedCaseInsensitiveIsEqual_toString_(a1, v9, v4, v8);

  return IsEqual_toString;
}

id sub_2212F0ABC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"sLocalizedTrue", a4);
  if (!v6)
  {
    v6 = objc_msgSend_localizedStringForKey_value_table_(a1, v5, @"TRUE", &stru_2834BADA0, @"TSCalculationEngine");
    objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v7, v6, @"sLocalizedTrue");
  }

  return v6;
}

uint64_t sub_2212F0B64(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = objc_msgSend_localizedFalseString(a1, v5, v6, v7);
  IsEqual_toString = objc_msgSend_localizedCaseInsensitiveIsEqual_toString_(a1, v9, v4, v8);

  return IsEqual_toString;
}

id sub_2212F0BE0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"sLocalizedFalse", a4);
  if (!v6)
  {
    v6 = objc_msgSend_localizedStringForKey_value_table_(a1, v5, @"FALSE", &stru_2834BADA0, @"TSCalculationEngine");
    objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v7, v6, @"sLocalizedFalse");
  }

  return v6;
}

id sub_2212F0C88(void *a1, const char *a2, unsigned int a3, uint64_t a4)
{
  v7 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"localizedFunctionNameForMenuTag", a4);
  if (!v7)
  {
    v8 = objc_alloc(MEMORY[0x277CBEA60]);
    v40 = objc_msgSend_localizedStringForKey_value_table_(a1, v9, @"SUM", &stru_2834BADA0, @"TSCalculationEngine");
    v11 = objc_msgSend_localizedStringForKey_value_table_(a1, v10, @"AVERAGE", &stru_2834BADA0, @"TSCalculationEngine");
    v13 = objc_msgSend_localizedStringForKey_value_table_(a1, v12, @"COUNT", &stru_2834BADA0, @"TSCalculationEngine");
    v37 = objc_msgSend_localizedStringForKey_value_table_(a1, v14, @"MAX", &stru_2834BADA0, @"TSCalculationEngine");
    v16 = objc_msgSend_localizedStringForKey_value_table_(a1, v15, @"MIN", &stru_2834BADA0, @"TSCalculationEngine");
    v39 = objc_msgSend_localizedStringForKey_value_table_(a1, v17, @"PRODUCT", &stru_2834BADA0, @"TSCalculationEngine");
    v38 = objc_msgSend_localizedStringForKey_value_table_(a1, v18, @"STDEVA", &stru_2834BADA0, @"TSCalculationEngine");
    v36 = objc_msgSend_localizedStringForKey_value_table_(a1, v19, @"STDEVPA", &stru_2834BADA0, @"TSCalculationEngine");
    v35 = objc_msgSend_localizedStringForKey_value_table_(a1, v20, @"VARA", &stru_2834BADA0, @"TSCalculationEngine");
    v34 = objc_msgSend_localizedStringForKey_value_table_(a1, v21, @"VARPA", &stru_2834BADA0, @"TSCalculationEngine");
    v33 = objc_msgSend_localizedStringForKey_value_table_(a1, v22, @"Mean", &stru_2834BADA0, @"TSCalculationEngine");
    v32 = objc_msgSend_localizedStringForKey_value_table_(a1, v23, @"Median", &stru_2834BADA0, @"TSCalculationEngine");
    v31 = v13;
    v25 = objc_msgSend_localizedStringForKey_value_table_(a1, v24, @"Mode", &stru_2834BADA0, @"TSCalculationEngine");
    v7 = objc_msgSend_initWithObjects_(v8, v26, v40, v27, v11, v31, v37, v16, v39, v38, v36, v35, v34, v33, v32, v25, 0);

    objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v28, v7, @"localizedFunctionNameForMenuTag");
  }

  v29 = objc_msgSend_objectAtIndex_(v7, v5, a3, v6);

  return v29;
}

void sub_2212F0FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, void *a25, void *a26, void *a27, void *a28)
{
  v32 = *(v30 - 120);
  v31 = *(v30 - 112);
  v33 = *(v30 - 128);

  _Unwind_Resume(a1);
}

id sub_2212F1160(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = objc_msgSend_functionNameForwardLocalizationDictionary(a1, v5, v6, v7);
  v11 = objc_msgSend_objectForKey_(v8, v9, v4, v10);

  if (v4 && !v11)
  {
    if (objc_msgSend_hasPrefix_(v4, v12, @"__", v13))
    {
      v11 = 0;
    }

    else
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSULocale(TSCELocalization) localizedNameForFunction:]", v15);
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELocalization.mm", v19);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 597, 0, "ERROR: No localized name found for '%{public}@', reverting to english name.", v4);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
      v11 = v4;
    }
  }

  return v11;
}

id sub_2212F12B0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@_TOOLTIP", a4, a3);
  v8 = objc_msgSend__localizedStringFromArgumentsTable_(a1, v6, v5, v7);

  return v8;
}

id sub_2212F1334(void *a1, uint64_t a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v37 = v4;
  v9 = objc_msgSend_localeSpecificStorageForKey_(a1, v5, @"localizedCategoryForFunction:", v6);
  if (!v9)
  {
    v36 = a1;
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v14 = objc_msgSend_localizedFunctionCategoryDictionary(v36, v11, v12, v13);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v18 = objc_msgSend_allKeys(v14, v15, v16, v17);
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v43, v48, 16);
    if (v22)
    {
      v23 = *v44;
      obj = v18;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v44 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v43 + 1) + 8 * i);
          v26 = objc_msgSend_objectForKey_(v14, v20, v25, v21);
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v27 = v26;
          v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v39, v47, 16);
          if (v30)
          {
            v31 = *v40;
            do
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v40 != v31)
                {
                  objc_enumerationMutation(v27);
                }

                objc_msgSend_setObject_forKey_(v10, v29, v25, *(*(&v39 + 1) + 8 * j));
              }

              v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v39, v47, 16);
            }

            while (v30);
          }
        }

        v18 = obj;
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v43, v48, 16);
      }

      while (v22);
    }

    objc_msgSend_setLocaleSpecificStorage_forKey_(v36, v33, v10, @"localizedCategoryForFunction:");
    v9 = v10;
    v4 = v37;
  }

  v34 = objc_msgSend_objectForKey_(v9, v7, v4, v8);

  return v34;
}

id sub_2212F15F8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@_ARGUMENT_%lu", a4, a4, a3);
  v8 = objc_msgSend__localizedStringFromArgumentsTable_(a1, v6, v5, v7);

  return v8;
}

id sub_2212F167C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@_ARGUMENT_%lu_TOOLTIP", a4, a4, a3);
  v8 = objc_msgSend__localizedStringFromArgumentsTable_(a1, v6, v5, v7);

  return v8;
}

id sub_2212F1700(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@_ARGUMENT_%lu_MODE_%d", a4, a5, a3, a4);
  v9 = objc_msgSend__localizedStringFromArgumentsTable_(a1, v7, v6, v8);

  return v9;
}

id sub_2212F178C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@_ARGUMENT_%lu_MODE_%d_TOOLTIP", a4, a5, a3, a4);
  v9 = objc_msgSend__localizedStringFromArgumentsTable_(a1, v7, v6, v8);

  return v9;
}

id sub_2212F1818(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@_ARGUMENT_%lu_LAMBDA_%d", a4, a5, a3, a4);
  v9 = objc_msgSend__localizedStringFromArgumentsTable_(a1, v7, v6, v8);

  return v9;
}

id sub_2212F18A4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@_ARGUMENT_%lu_LAMBDA_%d_TOOLTIP", a4, a5, a3, a4);
  v9 = objc_msgSend__localizedStringFromArgumentsTable_(a1, v7, v6, v8);

  return v9;
}

id sub_2212F1930(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(a1, a2, a3, &stru_2834BADA0, @"arguments");

  return v3;
}

void sub_2212F196C(void *a1)
{
  v63 = sub_2212F6DF8(a1);
  v60 = objc_msgSend_localizations(v63, v1, v2, v3);
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_count(v60, v5, v6, v7);
  v62 = objc_msgSend_initWithCapacity_(v4, v9, v8, v10);
  v11 = objc_alloc(MEMORY[0x277CBEB18]);
  v15 = objc_msgSend_count(v60, v12, v13, v14);
  v61 = objc_msgSend_initWithCapacity_(v11, v16, v15, v17);
  v64 = objc_msgSend_objectEnumerator(v60, v18, v19, v20);
  for (i = 0; ; i = v25)
  {
    v25 = objc_msgSend_nextObject(v64, v21, v22, v23);

    if (!v25)
    {
      break;
    }

    v30 = objc_msgSend_pathForResource_ofType_inDirectory_forLocalization_(v63, v27, @"Localizable", @"strings", 0, v25);
    v33 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x277CBEAC0], v31, v30, v32);
    v36 = objc_msgSend_objectForKey_(v33, v34, @"TRUE", v35);
    v41 = objc_msgSend_objectForKey_(v33, v37, @"FALSE", v38);
    if (v36)
    {
      objc_msgSend_addObject_(v62, v39, v36, v40);
    }

    if (v41)
    {
      objc_msgSend_addObject_(v61, v39, v41, v40);
    }
  }

  if (!v62 || (v26 = objc_msgSend_count(v62, v27, v28, v29)) == 0)
  {
    v45 = sub_2212F6DF8(v26);
    v47 = objc_msgSend_localizedStringForKey_value_table_(v45, v46, @"TRUE", &stru_2834BADA0, @"TSCalculationEngine");

    if (v47)
    {
      v48 = objc_alloc(MEMORY[0x277CBEB18]);
      v62 = objc_msgSend_initWithObjects_(v48, v49, v47, v50, 0);
    }

    else
    {
      v62 = 0;
    }
  }

  if (!v61 || (v26 = objc_msgSend_count(v61, v42, v43, v44)) == 0)
  {
    v52 = sub_2212F6DF8(v26);
    v54 = objc_msgSend_localizedStringForKey_value_table_(v52, v53, @"FALSE", &stru_2834BADA0, @"TSCalculationEngine");

    if (v54)
    {
      v55 = objc_alloc(MEMORY[0x277CBEB18]);
      v61 = objc_msgSend_initWithObjects_(v55, v56, v54, v57, 0);
    }

    else
    {
      v61 = 0;
    }
  }

  __dmb(0xBu);
  objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v51, v62, @"sLocalizedTrueStrings");
  objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v58, v61, @"sLocalizedFalseStrings");
}

id sub_2212F1D28(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"sLocalizedTrueStrings", a4);
  if (!v5)
  {
    v6 = a1;
    objc_sync_enter(v6);
    objc_msgSend_loadLocalizedStrings(v6, v7, v8, v9);
    objc_sync_exit(v6);

    v5 = objc_msgSend_localizedTrueStrings(v6, v10, v11, v12);
  }

  return v5;
}

void sub_2212F1D98(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id sub_2212F1DB0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"sLocalizedFalseStrings", a4);
  if (!v5)
  {
    v6 = a1;
    objc_sync_enter(v6);
    objc_msgSend_loadLocalizedStrings(v6, v7, v8, v9);
    objc_sync_exit(v6);

    v5 = objc_msgSend_localizedFalseStrings(v6, v10, v11, v12);
  }

  return v5;
}

void sub_2212F1E20(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id sub_2212F1E38(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_count(v4, v6, v7, v8);
  v12 = objc_msgSend_initWithCapacity_(v5, v10, v9, v11);
  v41 = v4;
  v19 = objc_msgSend_objectEnumerator(v4, v13, v14, v15);
  for (i = 0; ; i = v21)
  {
    v21 = objc_msgSend_nextObject(v19, v16, v17, v18);

    if (!v21)
    {
      break;
    }

    v26 = objc_msgSend_localizedNameForFunction_(a1, v22, v21, v23);
    if (v26)
    {
      v27 = objc_msgSend_localizedNameForFunction_(a1, v24, v21, v25);
      objc_msgSend_addObject_(v12, v28, v27, v29);
    }

    else
    {
      v30 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSULocale(TSCELocalization) localizedNamesForFunctions:]", v25);
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELocalization.mm", v33);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v35, v31, v34, 763, 0, "Either %@ was translated improperly, or some other function was translated to the same name.", v21);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38);
    }
  }

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_2212F2090;
  v42[3] = &unk_278462D28;
  v42[4] = a1;
  v39 = objc_msgSend_sortedArrayUsingComparator_(v12, v22, v42, v23);

  return v39;
}

id sub_2212F20A0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"localizedFunctionCategoryDictionary", a4);
  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBEAC0]);
    v82 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v6, @"DATE", v7, @"DATEDIF", @"DATEVALUE", @"DAY", @"DAYNAME", @"DAYS360", @"EDATE", @"EOMONTH", @"HOUR", @"ISOWEEKNUM", @"MINUTE", @"MONTH", @"MONTHNAME", @"NETWORKDAYS", @"NOW", @"SECOND", @"TIME", @"TIMEVALUE", @"TODAY", @"WEEKDAY", @"WEEKNUM", @"WORKDAY", @"YEAR", @"YEARFRAC", 0);
    v10 = objc_msgSend_localizedNamesForFunctions_(a1, v8, v82, v9);
    v90 = objc_msgSend_localizedStringForKey_value_table_(a1, v11, @"Date and Time", &stru_2834BADA0, @"TSCalculationEngine");
    v81 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v12, @"DURATION", v13, @"DUR2DAYS", @"DUR2HOURS", @"DUR2MILLISECONDS", @"DUR2MINUTES", @"DUR2SECONDS", @"DUR2WEEKS", @"STRIPDURATION", 0);
    v89 = objc_msgSend_localizedNamesForFunctions_(a1, v14, v81, v15);
    v80 = objc_msgSend_localizedStringForKey_value_table_(a1, v16, @"Duration", &stru_2834BADA0, @"TSCalculationEngine");
    v79 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v17, @"BASETONUM", v18, @"BESSELJ", @"BESSELY", @"BIN2DEC", @"BIN2HEX", @"BIN2OCT", @"BITAND", @"BITLSHIFT", @"BITOR", @"BITRSHIFT", @"BITXOR", @"CONVERT", @"DEC2BIN", @"DEC2HEX", @"DEC2OCT", @"DELTA", @"ERF", @"ERFC", @"GESTEP", @"HEX2BIN", @"HEX2DEC", @"HEX2OCT", @"NUMTOBASE", @"OCT2BIN", @"OCT2DEC", @"OCT2HEX", 0);
    v78 = objc_msgSend_localizedNamesForFunctions_(a1, v19, v79, v20);
    v88 = objc_msgSend_localizedStringForKey_value_table_(a1, v21, @"Engineering", &stru_2834BADA0, @"TSCalculationEngine");
    v77 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v22, @"ACCRINT", v23, @"ACCRINTM", @"BONDDURATION", @"BONDMDURATION", @"COUPDAYBS", @"COUPDAYS", @"COUPDAYSNC", @"COUPNUM", @"CUMIPMT", @"CUMPRINC", @"CURRENCY", @"CURRENCYCODE", @"CURRENCYCONVERT", @"CURRENCYH", @"DB", @"DDB", @"DISC", @"EFFECT", @"FV", @"INTRATE", @"IPMT", @"IRR", @"ISPMT", @"MIRR", @"NOMINAL", @"NPER", @"NPV", @"PMT", @"PPMT", @"PRICE", @"PRICEDISC", @"PRICEMAT", @"PV", @"RATE", @"RECEIVED", @"SLN", @"STOCK", @"STOCKH", @"SYD", @"VDB", @"XIRR", @"XNPV", @"YIELD", @"YIELDDISC", @"YIELDMAT", 0);
    v76 = objc_msgSend_localizedNamesForFunctions_(a1, v24, v77, v25);
    v27 = objc_msgSend_localizedStringForKey_value_table_(a1, v26, @"Financial", &stru_2834BADA0, @"TSCalculationEngine");
    v75 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v28, @"AND", v29, @"BYCOL", @"BYROW", @"FALSE", @"IF", @"IFS", @"IFERROR", @"ISBLANK", @"ISDATE", @"ISERROR", @"ISEVEN", @"ISNUMBER", @"ISNUMBERORDATE", @"ISODD", @"ISOMITTED", @"ISTEXT", @"LAMBDA", @"LAMBDA.APPLY", @"LET", @"MAKEARRAY", @"MAP", @"NOT", @"OR", @"REDUCE", @"SCAN", @"SWITCH", @"TRUE", 0);
    v74 = objc_msgSend_localizedNamesForFunctions_(a1, v30, v75, v31);
    v73 = objc_msgSend_localizedStringForKey_value_table_(a1, v32, @"Logical and Information", &stru_2834BADA0, @"TSCalculationEngine");
    v72 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v33, @"ADDRESS", v34, @"AREAS", @"CHOOSE", @"CHOOSECOLS", @"CHOOSEROWS", @"COLUMN", @"COLUMNS", @"DROP", @"EXPAND", @"FILTER", @"FORMULATEXT", @"GETPIVOTDATA", @"HLOOKUP", @"HSTACK", @"HYPERLINK", @"INDEX", @"INDIRECT", @"INTERSECT.RANGES", @"LOOKUP", @"MATCH", @"OFFSET", @"REFERENCE.NAME", @"ROW", @"ROWS", @"SEQUENCE", @"SORT", @"SORTBY", @"TAKE", @"TOCOL", @"TOROW", @"TRANSPOSE", @"UNION.RANGES", @"UNIQUE", @"VLOOKUP", @"VSTACK", @"WRAPCOLS", @"WRAPROWS", @"XLOOKUP", @"XMATCH", 0);
    v87 = objc_msgSend_localizedNamesForFunctions_(a1, v35, v72, v36);
    v86 = objc_msgSend_localizedStringForKey_value_table_(a1, v37, @"Reference", &stru_2834BADA0, @"TSCalculationEngine");
    v71 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v38, @"ABS", v39, @"CEILING", @"COMBIN", @"EVEN", @"EXP", @"FACT", @"FACTDOUBLE", @"FLOOR", @"GCD", @"INT", @"LCM", @"LN", @"LOG", @"LOG10", @"MDETERM", @"MINVERSE", @"MMULT", @"MOD", @"MROUND", @"MULTINOMIAL", @"MUNIT", @"ODD", @"PI", @"POLYNOMIAL", @"POWER", @"PRODUCT", @"QUOTIENT", @"RAND", @"RANDARRAY", @"RANDBETWEEN", @"ROMAN", @"ROUND", @"ROUNDDOWN", @"ROUNDUP", @"SERIESSUM", @"SIGN", @"SQRT", @"SQRTPI", @"SUBTOTAL", @"SUM", @"SUMIF", @"SUMIFS", @"SUMPRODUCT", @"SUMSQ", @"SUMX2MY2", @"SUMX2PY2", @"SUMXMY2", @"TRUNC", 0);
    v85 = objc_msgSend_localizedNamesForFunctions_(a1, v40, v71, v41);
    v84 = objc_msgSend_localizedStringForKey_value_table_(a1, v42, @"Numeric", &stru_2834BADA0, @"TSCalculationEngine");
    v70 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v43, @"ACOS", v44, @"ACOSH", @"ASIN", @"ASINH", @"ATAN", @"ATAN2", @"ATANH", @"COS", @"COSH", @"DEGREES", @"RADIANS", @"SIN", @"SINH", @"TAN", @"TANH", 0);
    v69 = objc_msgSend_localizedNamesForFunctions_(a1, v45, v70, v46);
    v48 = objc_msgSend_localizedStringForKey_value_table_(a1, v47, @"Trigonometric", &stru_2834BADA0, @"TSCalculationEngine");
    v68 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v49, @"AVEDEV", v50, @"AVERAGE", @"AVERAGEA", @"AVERAGEIF", @"AVERAGEIFS", @"BETADIST", @"BETAINV", @"BINOMDIST", @"CHIDIST", @"CHIINV", @"CHITEST", @"CONFIDENCE", @"CORREL", @"COUNT", @"COUNTA", @"COUNTBLANK", @"COUNTIF", @"COUNTIFS", @"COVAR", @"CRITBINOM", @"DEVSQ", @"EXPONDIST", @"FDIST", @"FINV", @"FORECAST", @"FREQUENCY", @"GAMMADIST", @"GAMMAINV", @"GAMMALN", @"GEOMEAN", @"HARMEAN", @"INTERCEPT", @"LARGE", @"LINEST", @"LOGINV", @"LOGNORMDIST", @"MAX", @"MAXA", @"MAXIFS", @"MEDIAN", @"MIN", @"MINA", @"MINIFS", @"MODE", @"NEGBINOMDIST", @"NORMDIST", @"NORMINV", @"NORMSDIST", @"NORMSINV", @"PERCENTILE", @"PERCENTRANK", @"PERMUT", @"POISSON", @"PROB", @"QUARTILE", @"RANK", @"SLOPE", @"SMALL", @"STANDARDIZE", @"STDEV");
    v67 = objc_msgSend_localizedNamesForFunctions_(a1, v51, v68, v52);
    v66 = objc_msgSend_localizedStringForKey_value_table_(a1, v53, @"Statistical", &stru_2834BADA0, @"TSCalculationEngine");
    v65 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v54, @"ARRAYTOTEXT", v55, @"CHAR", @"CLEAN", @"CODE", @"COUNTMATCHES", @"DOLLAR", @"FIXED", @"CONCAT", @"CONCATENATE", @"EXACT", @"FIND", @"LEFT", @"LEN", @"LOWER", @"MID", @"PLAINTEXT", @"PROPER", @"REGEX", @"REGEX.EXTRACT", @"REPLACE", @"REPT", @"RIGHT", @"SEARCH", @"SUBSTITUTE", @"T", @"TEXTAFTER", @"TEXTBEFORE", @"TEXTBETWEEN", @"TEXTJOIN", @"TEXTSPLIT", @"TRIM", @"UPPER", @"VALUE", 0);
    v64 = objc_msgSend_localizedNamesForFunctions_(a1, v56, v65, v57);
    v83 = v10;
    v59 = objc_msgSend_localizedStringForKey_value_table_(a1, v58, @"Text", &stru_2834BADA0, @"TSCalculationEngine");
    v4 = objc_msgSend_initWithObjectsAndKeys_(v5, v60, v10, v61, v90, v89, v80, v78, v88, v76, v27, v74, v73, v87, v86, v85, v84, v69, v48, v67, v66, v64, v59, 0);

    objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v62, v4, @"localizedFunctionCategoryDictionary");
  }

  return v4;
}

void sub_2212F331C(_Unwind_Exception *a1)
{
  v3 = STACK[0x240];
  v4 = STACK[0x248];
  v5 = *(v2 - 160);

  _Unwind_Resume(a1);
}

id sub_2212F3568(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"localizedCategoryArray", a4);
  if (!v8)
  {
    v9 = objc_msgSend_localizedFunctionCategoryDictionary(a1, v5, v6, v7);
    v13 = objc_msgSend_allKeys(v9, v10, v11, v12);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2212F367C;
    v18[3] = &unk_278462D28;
    v18[4] = a1;
    v8 = objc_msgSend_sortedArrayUsingComparator_(v13, v14, v18, v15);

    objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v16, v8, @"localizedCategoryArray");
  }

  return v8;
}

id sub_2212F368C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"allLocalizedFunctions", a4);
  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = objc_msgSend_localizedFunctionCategoryDictionary(a1, v7, v8, v9);
    v14 = objc_msgSend_allValues(v10, v11, v12, v13);

    v20 = objc_msgSend_count(v14, v15, v16, v17);
    if (v20)
    {
      for (i = 0; i != v20; ++i)
      {
        v22 = objc_msgSend_objectAtIndex_(v14, v18, i, v19);
        objc_msgSend_addObjectsFromArray_(v6, v23, v22, v24);
      }
    }

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_2212F3824;
    v27[3] = &unk_278462D28;
    v27[4] = a1;
    v5 = objc_msgSend_sortedArrayUsingComparator_(v6, v18, v27, v19);
    objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v25, v5, @"allLocalizedFunctions");
  }

  return v5;
}

__CFString *sub_2212F3834(void *a1, const char *a2, unsigned int a3, uint64_t a4)
{
  v8 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"localizedLabelForAggType", a4);
  if (!v8)
  {
    v9 = objc_alloc(MEMORY[0x277CBEA60]);
    v56 = objc_msgSend_localizedStringForKey_value_table_(a1, v10, @"No Summary", &stru_2834BADA0, @"TSCalculationEngine");
    v72 = objc_msgSend_localizedStringForKey_value_table_(a1, v11, @"Count (All)", &stru_2834BADA0, @"TSCalculationEngine");
    v13 = objc_msgSend_localizedStringForKey_value_table_(a1, v12, @"Sum", &stru_2834BADA0, @"TSCalculationEngine");
    v71 = objc_msgSend_localizedStringForKey_value_table_(a1, v14, @"Average (All)", &stru_2834BADA0, @"TSCalculationEngine");
    v70 = objc_msgSend_localizedStringForKey_value_table_(a1, v15, @"Minimum", &stru_2834BADA0, @"TSCalculationEngine");
    v69 = objc_msgSend_localizedStringForKey_value_table_(a1, v16, @"Maximum", &stru_2834BADA0, @"TSCalculationEngine");
    v18 = objc_msgSend_localizedStringForKey_value_table_(a1, v17, @"Category", &stru_2834BADA0, @"TSCalculationEngine");
    v68 = objc_msgSend_localizedStringForKey_value_table_(a1, v19, @"Group Name", &stru_2834BADA0, @"TSCalculationEngine");
    v67 = objc_msgSend_localizedStringForKey_value_table_(a1, v20, @"Body", &stru_2834BADA0, @"TSCalculationEngine");
    v66 = objc_msgSend_localizedStringForKey_value_table_(a1, v21, @"Label", &stru_2834BADA0, @"TSCalculationEngine");
    v23 = objc_msgSend_localizedStringForKey_value_table_(a1, v22, @"Count", &stru_2834BADA0, @"TSCalculationEngine");
    v65 = objc_msgSend_localizedStringForKey_value_table_(a1, v24, @"Count (Unique)", &stru_2834BADA0, @"TSCalculationEngine");
    v64 = objc_msgSend_localizedStringForKey_value_table_(a1, v25, @"Rows", &stru_2834BADA0, @"TSCalculationEngine");
    v63 = objc_msgSend_localizedStringForKey_value_table_(a1, v26, @"Count (Duplicates)", &stru_2834BADA0, @"TSCalculationEngine");
    v28 = objc_msgSend_localizedStringForKey_value_table_(a1, v27, @"Count (Blank)", &stru_2834BADA0, @"TSCalculationEngine");
    v62 = objc_msgSend_localizedStringForKey_value_table_(a1, v29, @"Average", &stru_2834BADA0, @"TSCalculationEngine");
    v61 = objc_msgSend_localizedStringForKey_value_table_(a1, v30, @"Median", &stru_2834BADA0, @"TSCalculationEngine");
    v60 = objc_msgSend_localizedStringForKey_value_table_(a1, v31, @"MODE", &stru_2834BADA0, @"TSCalculationEngine");
    v59 = objc_msgSend_localizedStringForKey_value_table_(a1, v32, @"Product", &stru_2834BADA0, @"TSCalculationEngine");
    v58 = objc_msgSend_localizedStringForKey_value_table_(a1, v33, @"RANGE", &stru_2834BADA0, @"TSCalculationEngine");
    v57 = objc_msgSend_localizedStringForKey_value_table_(a1, v34, @"STDEV", &stru_2834BADA0, @"TSCalculationEngine");
    v55 = objc_msgSend_localizedStringForKey_value_table_(a1, v35, @"STDEVA", &stru_2834BADA0, @"TSCalculationEngine");
    v54 = objc_msgSend_localizedStringForKey_value_table_(a1, v36, @"STDEVP", &stru_2834BADA0, @"TSCalculationEngine");
    v53 = objc_msgSend_localizedStringForKey_value_table_(a1, v37, @"STDEVPA", &stru_2834BADA0, @"TSCalculationEngine");
    v52 = objc_msgSend_localizedStringForKey_value_table_(a1, v38, @"VAR", &stru_2834BADA0, @"TSCalculationEngine");
    v51 = objc_msgSend_localizedStringForKey_value_table_(a1, v39, @"VARA", &stru_2834BADA0, @"TSCalculationEngine");
    v50 = objc_msgSend_localizedStringForKey_value_table_(a1, v40, @"VARP", &stru_2834BADA0, @"TSCalculationEngine");
    v42 = objc_msgSend_localizedStringForKey_value_table_(a1, v41, @"VARPA", &stru_2834BADA0, @"TSCalculationEngine");
    v8 = objc_msgSend_initWithObjects_(v9, v43, v56, v44, v72, v13, v71, v70, v69, &stru_2834BADA0, v18, &stru_2834BADA0, v68, v67, &stru_2834BADA0, v66, v23, v65, v64, v63, v28, v62, v61, v60, v59, v58, &stru_2834BADA0, &stru_2834BADA0, &stru_2834BADA0, v57, v55, v54, v53, v52, v51, v50, v42, 0);

    objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v45, v8, @"localizedLabelForAggType");
  }

  if (objc_msgSend_count(v8, v5, v6, v7) <= a3)
  {
    v48 = &stru_2834BADA0;
  }

  else
  {
    v48 = objc_msgSend_objectAtIndex_(v8, v46, a3, v47);
  }

  return v48;
}

void sub_2212F3F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, void *a45, void *a46, void *a47, void *a48, void *a49, void *a50)
{
  v53 = *(v51 - 248);
  v52 = *(v51 - 240);
  v55 = *(v51 - 112);
  v54 = *(v51 - 104);
  v56 = *(v51 - 232);

  _Unwind_Resume(a1);
}

__CFString *sub_2212F4184(void *a1, const char *a2, unsigned int a3, uint64_t a4)
{
  v8 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"localizedShortLabelForAggType", a4);
  if (!v8)
  {
    v9 = objc_alloc(MEMORY[0x277CBEA60]);
    v56 = objc_msgSend_localizedStringForKey_value_table_(a1, v10, @"No Summary", &stru_2834BADA0, @"TSCalculationEngine");
    v72 = objc_msgSend_localizedStringForKey_value_table_(a1, v11, @"Count All", &stru_2834BADA0, @"TSCalculationEngine");
    v13 = objc_msgSend_localizedStringForKey_value_table_(a1, v12, @"Sum", &stru_2834BADA0, @"TSCalculationEngine");
    v71 = objc_msgSend_localizedStringForKey_value_table_(a1, v14, @"Average All", &stru_2834BADA0, @"TSCalculationEngine");
    v70 = objc_msgSend_localizedStringForKey_value_table_(a1, v15, @"Min.", &stru_2834BADA0, @"TSCalculationEngine");
    v69 = objc_msgSend_localizedStringForKey_value_table_(a1, v16, @"Max.", &stru_2834BADA0, @"TSCalculationEngine");
    v18 = objc_msgSend_localizedStringForKey_value_table_(a1, v17, @"Category", &stru_2834BADA0, @"TSCalculationEngine");
    v68 = objc_msgSend_localizedStringForKey_value_table_(a1, v19, @"Group Name", &stru_2834BADA0, @"TSCalculationEngine");
    v67 = objc_msgSend_localizedStringForKey_value_table_(a1, v20, @"Body", &stru_2834BADA0, @"TSCalculationEngine");
    v66 = objc_msgSend_localizedStringForKey_value_table_(a1, v21, @"Label", &stru_2834BADA0, @"TSCalculationEngine");
    v23 = objc_msgSend_localizedStringForKey_value_table_(a1, v22, @"Count", &stru_2834BADA0, @"TSCalculationEngine");
    v65 = objc_msgSend_localizedStringForKey_value_table_(a1, v24, @"Unique", &stru_2834BADA0, @"TSCalculationEngine");
    v64 = objc_msgSend_localizedStringForKey_value_table_(a1, v25, @"Rows", &stru_2834BADA0, @"TSCalculationEngine");
    v63 = objc_msgSend_localizedStringForKey_value_table_(a1, v26, @"Count Duplicates", &stru_2834BADA0, @"TSCalculationEngine");
    v28 = objc_msgSend_localizedStringForKey_value_table_(a1, v27, @"Count Blank", &stru_2834BADA0, @"TSCalculationEngine");
    v62 = objc_msgSend_localizedStringForKey_value_table_(a1, v29, @"Average", &stru_2834BADA0, @"TSCalculationEngine");
    v61 = objc_msgSend_localizedStringForKey_value_table_(a1, v30, @"Median", &stru_2834BADA0, @"TSCalculationEngine");
    v60 = objc_msgSend_localizedStringForKey_value_table_(a1, v31, @"MODE", &stru_2834BADA0, @"TSCalculationEngine");
    v59 = objc_msgSend_localizedStringForKey_value_table_(a1, v32, @"Product", &stru_2834BADA0, @"TSCalculationEngine");
    v58 = objc_msgSend_localizedStringForKey_value_table_(a1, v33, @"RANGE", &stru_2834BADA0, @"TSCalculationEngine");
    v57 = objc_msgSend_localizedStringForKey_value_table_(a1, v34, @"STDEV", &stru_2834BADA0, @"TSCalculationEngine");
    v55 = objc_msgSend_localizedStringForKey_value_table_(a1, v35, @"STDEVA", &stru_2834BADA0, @"TSCalculationEngine");
    v54 = objc_msgSend_localizedStringForKey_value_table_(a1, v36, @"STDEVP", &stru_2834BADA0, @"TSCalculationEngine");
    v53 = objc_msgSend_localizedStringForKey_value_table_(a1, v37, @"STDEVPA", &stru_2834BADA0, @"TSCalculationEngine");
    v52 = objc_msgSend_localizedStringForKey_value_table_(a1, v38, @"VAR", &stru_2834BADA0, @"TSCalculationEngine");
    v51 = objc_msgSend_localizedStringForKey_value_table_(a1, v39, @"VARA", &stru_2834BADA0, @"TSCalculationEngine");
    v50 = objc_msgSend_localizedStringForKey_value_table_(a1, v40, @"VARP", &stru_2834BADA0, @"TSCalculationEngine");
    v42 = objc_msgSend_localizedStringForKey_value_table_(a1, v41, @"VARPA", &stru_2834BADA0, @"TSCalculationEngine");
    v8 = objc_msgSend_initWithObjects_(v9, v43, v56, v44, v72, v13, v71, v70, v69, &stru_2834BADA0, v18, &stru_2834BADA0, v68, v67, &stru_2834BADA0, v66, v23, v65, v64, v63, v28, v62, v61, v60, v59, v58, &stru_2834BADA0, &stru_2834BADA0, &stru_2834BADA0, v57, v55, v54, v53, v52, v51, v50, v42, 0);

    objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v45, v8, @"localizedShortLabelForAggType");
  }

  if (objc_msgSend_count(v8, v5, v6, v7) <= a3)
  {
    v48 = &stru_2834BADA0;
  }

  else
  {
    v48 = objc_msgSend_objectAtIndex_(v8, v46, a3, v47);
  }

  return v48;
}

void sub_2212F486C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, void *a45, void *a46, void *a47, void *a48, void *a49, void *a50)
{
  v53 = *(v51 - 248);
  v52 = *(v51 - 240);
  v55 = *(v51 - 112);
  v54 = *(v51 - 104);
  v56 = *(v51 - 232);

  _Unwind_Resume(a1);
}

__CFString *sub_2212F4AD4(void *a1, uint64_t a2, unsigned int a3)
{
  v4 = objc_alloc(MEMORY[0x277CBEA60]);
  v6 = objc_msgSend_localizedStringForKey_value_table_(a1, v5, @"Base Value", &stru_2834BADA0, @"TSCalculationEngine");
  v8 = objc_msgSend_localizedStringForKey_value_table_(a1, v7, @"% of Grand Total", &stru_2834BADA0, @"TSCalculationEngine");
  v10 = objc_msgSend_localizedStringForKey_value_table_(a1, v9, @"% of Column Total", &stru_2834BADA0, @"TSCalculationEngine");
  v12 = objc_msgSend_localizedStringForKey_value_table_(a1, v11, @"% of Row Total", &stru_2834BADA0, @"TSCalculationEngine");
  v14 = objc_msgSend_localizedStringForKey_value_table_(a1, v13, @"% of Parent Column Total", &stru_2834BADA0, @"TSCalculationEngine");
  v16 = objc_msgSend_localizedStringForKey_value_table_(a1, v15, @"% of Parent Row Total", &stru_2834BADA0, @"TSCalculationEngine");
  v18 = objc_msgSend_localizedStringForKey_value_table_(a1, v17, @"Running Total In…", &stru_2834BADA0, @"TSCalculationEngine");
  v20 = objc_msgSend_localizedStringForKey_value_table_(a1, v19, @"% of Running Total In…", &stru_2834BADA0, @"TSCalculationEngine");
  v22 = objc_msgSend_localizedStringForKey_value_table_(a1, v21, @"Index", &stru_2834BADA0, @"TSCalculationEngine");
  v25 = objc_msgSend_initWithObjects_(v4, v23, v6, v24, v8, v10, v12, v14, v16, v18, v20, v22, 0);

  if (objc_msgSend_count(v25, v26, v27, v28) <= a3)
  {
    v31 = &stru_2834BADA0;
  }

  else
  {
    v31 = objc_msgSend_objectAtIndex_(v25, v29, a3, v30);
  }

  return v31;
}

int *sub_2212F4DA8(uint64_t a1, uint64_t a2)
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

    v4 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeCoordinateArchive>(v5);
    *(a2 + 24) = v4;
  }

  result = sub_221269844(a1, v4);
  v7 = *(a1 + 16);
  *(a2 + 16) |= 2u;
  *(a2 + 32) = v7;
  return result;
}

unint64_t sub_2212F4E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 24);
  }

  else
  {
    v4 = &TSCE::_RangeCoordinateArchive_default_instance_;
  }

  result = sub_22126987C(v4);
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = *(a1 + 32);
  return result;
}

double sub_2212F4E64(long double a1, long double a2, long double a3)
{
  if (a1 <= 0.0 || a2 <= 0.0)
  {
    goto LABEL_9;
  }

  if (a3 > 0.0 && a3 < 1.0)
  {
    if (a3 <= 0.95 && a2 * a3 <= 1.0)
    {

      return sub_2212F537C(a1, a2, a3);
    }

    v9 = 1.0 - a3;
    v10 = a1 + a2;
    v11 = a1 / (a1 + a2);
    if (v11 >= a3)
    {
      v12 = a1;
    }

    else
    {
      v12 = a2;
    }

    if (v11 >= a3)
    {
      v13 = a2;
    }

    else
    {
      v13 = a1;
    }

    if (v11 >= a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = 1.0 - a3;
    }

    if (v11 >= a3)
    {
      v15 = 1.0 - a3;
    }

    else
    {
      v15 = a3;
    }

    if (v11 >= a3 || (v9 <= 0.95 ? (v16 = v9 * a1 > 1.0) : (v16 = 1), v16))
    {
      __y = v13;
      v85 = a1 / (a1 + a2);
      v17 = v12 + 1.0;
      if (-(v12 + -1.0 - v14 * (v10 + -2.0)) >= 0.0)
      {
        v46 = v14 / (1.0 - v14);
        v47 = xmmword_2217E1230;
        __asm { FMOV            V26.2D, #1.0 }

        v49 = 300;
        v50 = vdupq_n_s64(0x3CB0000000000000uLL);
        v51 = vdupq_n_s64(0x4330000000000000uLL);
        v52 = v12;
        v53 = v13;
        v54 = v12;
        v55 = 1.0;
        v56 = v10;
        v57 = v12 + 1.0;
        v58 = v12;
        v59 = 1.0;
        v60 = 1.0;
        do
        {
          v53 = v53 + -1.0;
          v58 = v58 + 2.0;
          v61 = vmlaq_n_f64(_Q26, v47, v52 * -v46 * v53 / (v54 * v17));
          v62 = vmlaq_n_f64(v61, _Q26, v46 * v55 * v56 / (v57 * v58));
          *&v63 = *&vdivq_f64(vdupq_laneq_s64(v62, 1), v62);
          if (v62.f64[0] != 0.0)
          {
            v59 = v63;
          }

          v64 = fabs((v60 - v59) / v59);
          if (v59 == 0.0)
          {
            v64 = 1.0;
          }

          else
          {
            v60 = v59;
          }

          if (v64 < *&qword_27CFB4C50 * 3.0)
          {
            break;
          }

          v52 = v52 + 1.0;
          v54 = v54 + 2.0;
          v17 = v17 + 2.0;
          v55 = v55 + 1.0;
          v56 = v56 + 1.0;
          v65 = vabsq_f64(v62);
          v4.f64[0] = 4.50359963e15;
          v66 = vdupq_lane_s64(vcgtq_f64(vaddq_f64(v65, vdupq_laneq_s64(v65, 1)), v4).i64[0], 0);
          v67 = vbslq_s8(v66, vmulq_f64(v62, v50), v62);
          v68 = vbslq_s8(v66, vmulq_f64(v61, v50), v61);
          *&v65.f64[0] = vmovn_s64(vcgtq_f64(v50, v65));
          v57 = v57 + 2.0;
          v69 = vorr_s8(*&v65.f64[0], vdup_lane_s32(*&v65.f64[0], 1)).u8[0];
          v70 = vmulq_f64(v68, v51);
          v71 = vmulq_f64(v67, v51);
          v72 = (v69 & 1) != 0 ? -1 : 0;
          v4 = vdupq_n_s64(v72);
          _Q26 = vbslq_s8(v4, v71, v67);
          v47 = vbslq_s8(v4, v70, v68);
          --v49;
        }

        while (v49);
        v33 = v60 / v15;
      }

      else
      {
        v18 = xmmword_2217E1230;
        __asm { FMOV            V23.2D, #1.0 }

        v23 = 300;
        v24 = vdupq_n_s64(0x3CB0000000000000uLL);
        v25 = vdupq_n_s64(0x4330000000000000uLL);
        v26 = v12;
        v27 = v10;
        v28 = v12;
        v29 = 1.0;
        v30 = v12 + 1.0;
        v31 = v12;
        v32 = 1.0;
        v33 = 1.0;
        do
        {
          v13 = v13 + -1.0;
          v31 = v31 + 2.0;
          v34 = vmlaq_n_f64(_Q23, v18, -(v26 * v14) * v27 / (v28 * v17));
          v35 = vmlaq_n_f64(v34, _Q23, v14 * v29 * v13 / (v30 * v31));
          *&v36 = *&vdivq_f64(vdupq_laneq_s64(v35, 1), v35);
          if (v35.f64[0] != 0.0)
          {
            v32 = v36;
          }

          v37 = fabs((v33 - v32) / v32);
          if (v32 == 0.0)
          {
            v37 = 1.0;
          }

          else
          {
            v33 = v32;
          }

          if (v37 < *&qword_27CFB4C50 * 3.0)
          {
            break;
          }

          v26 = v26 + 1.0;
          v27 = v27 + 1.0;
          v28 = v28 + 2.0;
          v17 = v17 + 2.0;
          v29 = v29 + 1.0;
          v38 = vabsq_f64(v35);
          v3.f64[0] = 4.50359963e15;
          v39 = vdupq_lane_s64(vcgtq_f64(vaddq_f64(v38, vdupq_laneq_s64(v38, 1)), v3).i64[0], 0);
          v40 = vbslq_s8(v39, vmulq_f64(v35, v24), v35);
          v41 = vbslq_s8(v39, vmulq_f64(v34, v24), v34);
          *&v38.f64[0] = vmovn_s64(vcgtq_f64(v24, v38));
          v30 = v30 + 2.0;
          v42 = vorr_s8(*&v38.f64[0], vdup_lane_s32(*&v38.f64[0], 1)).u8[0];
          v43 = vmulq_f64(v41, v25);
          v44 = vmulq_f64(v40, v25);
          v45 = (v42 & 1) != 0 ? -1 : 0;
          v3 = vdupq_n_s64(v45);
          _Q23 = vbslq_s8(v3, v44, v40);
          v18 = vbslq_s8(v3, v43, v41);
          --v23;
        }

        while (v23);
      }

      v73 = v12 * log(v14);
      v74 = v15;
      v75 = __y * log(v15);
      if (v10 >= 171.624377 || fabs(v73) >= *&qword_27CFB4C58 || fabs(v75) >= *&qword_27CFB4C58)
      {
        v80 = v75 + sub_221289DC8(v10);
        v81 = v80 - sub_221289DC8(v12);
        v82 = v73 + v81 - sub_221289DC8(__y);
        v83 = log(v33 / v12) + v82;
        result = 0.0;
        if (v83 >= *&qword_27CFB4C60)
        {
          result = exp(v83);
        }
      }

      else
      {
        v76 = pow(v74, __y);
        v77 = v76 * pow(v14, v12) / v12 * v33;
        v78 = sub_221289AE8(v10);
        v79 = sub_221289AE8(v12);
        result = v77 * (v78 / (v79 * sub_221289AE8(__y)));
      }

      if (v85 >= a3)
      {
        return result;
      }
    }

    else
    {
      result = sub_2212F537C(a2, a1, v9);
    }

    if (result <= *&qword_27CFB4C50)
    {
      return 1.0 - *&qword_27CFB4C50;
    }

    else
    {
      return 1.0 - result;
    }
  }

  result = 0.0;
  if (a3 != 0.0)
  {
    result = 1.0;
    if (a3 != 1.0)
    {
LABEL_9:
      sub_22137A674("incbet", 1);
      return 0.0;
    }
  }

  return result;
}

long double sub_2212F537C(long double a1, long double a2, long double a3)
{
  v6 = 1.0 / a1;
  v7 = (1.0 - a2) * a3;
  v8 = v7 / (a1 + 1.0);
  v9 = 0.0;
  if (fabs(v8) > v6 * *&qword_27CFB4C50)
  {
    v10 = 2.0;
    do
    {
      v7 = v7 * ((v10 - a2) * a3 / v10);
      v11 = v7 / (v10 + a1);
      v9 = v9 + v11;
      v10 = v10 + 1.0;
    }

    while (fabs(v11) > v6 * *&qword_27CFB4C50);
  }

  v12 = v6 + v8 + v9;
  v13 = log(a3) * a1;
  v14 = a1 + a2;
  if (a1 + a2 >= 171.624377 || fabs(v13) >= *&qword_27CFB4C58)
  {
    v19 = sub_221289DC8(v14);
    v20 = v19 - sub_221289DC8(a1);
    v21 = v13 + v20 - sub_221289DC8(a2);
    v22 = log(v12) + v21;
    result = 0.0;
    if (v22 >= *&qword_27CFB4C60)
    {

      return exp(v22);
    }
  }

  else
  {
    v15 = sub_221289AE8(v14);
    v16 = sub_221289AE8(a1);
    v17 = v12 * (v15 / (v16 * sub_221289AE8(a2)));
    return pow(a3, a1) * v17;
  }

  return result;
}

uint64_t sub_2212F6D90(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_gregorianCalendar(TSCECalendar, a2, a3, a4);
  v7 = objc_msgSend_components_fromDate_(v5, v6, 4, a1);
  v11 = objc_msgSend_year(v7, v8, v9, v10);

  return v11;
}

id sub_2212F6DF8(uint64_t a1)
{
  if (qword_27CFB5410 != -1)
  {
    sub_2216F76EC();
  }

  v2 = qword_27CFB5408;

  return v2;
}

void sub_2212F6E3C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], a2, a3, a4);
  v5 = qword_27CFB5408;
  qword_27CFB5408 = v4;
}

TSCEASTRewriter *sub_2212F7968(TSCEASTRewriter *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4)
{
  v7 = a4;
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *a1 = &unk_2834A4828;
  *(a1 + 25) = v7;
  return a1;
}

TSCEASTRelativeCoordRefElement *sub_2212F79EC(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  v4 = TSCEASTElement::refFlags(a2, a1);
  if (v4)
  {
    v7 = v4;
    v8 = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v5, v6);
    v10 = v9;
    v69._lower = v8;
    v69._upper = v9;
    if (v8 == objc_msgSend_tableUID(*(a1 + 200), v9, v11, v12) && v10 == v13)
    {
      v17 = TSCEASTRelativeCoordRefElement::relativeCoord(a2, a1, v14, v15);
      v18 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      if ((v7 & 0x20) != 0)
      {
        v21 = v17;
        goto LABEL_13;
      }

      v21 = 0x7FFFFFFFLL;
      if (v17 == 0x7FFFFFFF)
      {
        goto LABEL_13;
      }

      coordinate = v18->var0.var0.coordinate;
      if (v17 < 1)
      {
        if (v17 && coordinate.row < -v17)
        {
          goto LABEL_13;
        }
      }

      else if ((999999 - v17) < coordinate.row)
      {
        goto LABEL_13;
      }

      if (coordinate.row == 0x7FFFFFFF)
      {
        v45 = MEMORY[0x277D81150];
        v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v20);
        v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v48);
        v50 = NSStringFromTSUCellCoord();
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v51, v46, v49, 195, 0, "Calling TSCEMakeAbsoluteRowFromRelativeRow with an invalid hostCell row: %@", v50);
      }

      else
      {
        v21 = (coordinate.row + v17);
        if (v21 < 0x7FFFFFFF)
        {
          goto LABEL_13;
        }

        v61 = MEMORY[0x277D81150];
        v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v20);
        v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v63);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v64, v46, v49, 191, 0, "overflow in row, input row: %d with host row: %lu", v17, coordinate.row);
      }

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67);
      v21 = 0x7FFFFFFFLL;
LABEL_13:
      v23 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      if ((v7 & 0x10) != 0)
      {
        v26 = HIDWORD(v17);
        goto LABEL_19;
      }

      LOWORD(v26) = 0x7FFF;
      if (WORD2(v17) == 0x7FFF)
      {
        goto LABEL_19;
      }

      v27 = v23->var0.var0.coordinate;
      if ((v17 >> 16) >> 16 < 1)
      {
        if ((v17 & 0x800000000000) != 0 && -SWORD2(v17) > v27.column)
        {
          goto LABEL_19;
        }
      }

      else if (999 - SWORD2(v17) < v27.column)
      {
        goto LABEL_19;
      }

      LOWORD(v26) = v27.column + WORD2(v17);
      if ((v27.column + WORD2(v17)) >= 0x7FFFu)
      {
        v52 = MEMORY[0x277D81150];
        v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "TSUColumnIndex TSCEMakeAbsoluteColumnFromRelativeColumn(TSUCellCoord, TSURelativeColumnIndex, BOOL)", v25);
        v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v55);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v57, v53, v56, 168, 0, "overflow in column");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60);
      }

LABEL_19:
      v28 = sub_221089E8C(a1);
      v30 = objc_msgSend_uuidForTableUID_andIndex_direction_(v28, v29, v8, v10, v21, 1);
      v32 = v31;

      v33 = sub_221089E8C(a1);
      v35 = objc_msgSend_uuidForTableUID_andIndex_direction_(v33, v34, v8, v10, v26, 0);
      v37 = v36;

      if ((v7 & 0xC) == 4)
      {
        if (!(v30 | v32))
        {
          return a2;
        }
      }

      else if (((v7 & 0xC) != 8 || !(v35 | v37)) && (!(v30 | v32) || !(v35 | v37)))
      {
        return a2;
      }

      v38 = TSCEASTElement::mutableUndoTractList(a2, a1);
      objc_msgSend_addToIncludedUidsTractColumnUid_rowUid_(v38, v39, v35, v37, v30, v32);
      v40 = sub_221089E8C(a1);
      v69._lower = objc_msgSend_mapOwnerUID_(v40, v41, &v69, v42);
      v69._upper = v43;

      v68._flags = (v7 >> 4) & 3;
      TSCEASTIteratorBase::createReferenceErrorWithUidTractList(a1, v38, &v69, &v68);
    }
  }

  return a2;
}

TSCEASTElementWithChildren *sub_2212F7E8C(uint64_t a1, TSCEASTElementWithChildren *this)
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
      if (v11 == TSCEASTElement::simpleTagForTag(v10) && v9 == 36 && (TSCEASTElement::refFlags(v7, a1) & 1) != 0 && (TSCEASTElement::refFlags(v8, a1) & 1) != 0)
      {
        v56[0] = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
        (*(*v7 + 136))(&v57, v7, a1, v56);
        v51[0] = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
        (*(*v8 + 136))(v56, v8, a1, v51);
        upper = *(&v58 + 1);
        lower = v58;
        if (v58 == 0)
        {
          v18 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
          lower = v18->var0.var0._tableUID._lower;
          upper = v18->var0.var0._tableUID._upper;
        }

        v55._lower = lower;
        v55._upper = upper;
        if (lower == objc_msgSend_tableUID(*(a1 + 200), v13, v14, v15) && upper == v19 && (*&v57 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && sub_2212F83DC(&v57, v56))
        {
          v20 = TSCEASTRelativeCoordRefElement::preserveFlags(v7, a1);
          v54._flags = v20 & 3 | (4 * (TSCEASTRelativeCoordRefElement::preserveFlags(v8, a1) & 3));
          v53._topLeft = v57;
          v53._bottomRight = v56[0];
          TSCERangeCoordinate::fixInversions(&v53, &v54);
          row = v57.row;
          if (v57.row != v53._topLeft.row || ((*&v53._topLeft ^ *&v57) & 0x101FFFF00000000) != 0)
          {
            TSCEASTElementWithChildren::setChildAtIndex(this, v6, 0, a1);
            TSCEASTElementWithChildren::setChildAtIndex(this, v4, 1, a1);
            row = v53._topLeft.row;
          }

          v22 = v53._bottomRight.row;
          v51[0] = 0;
          v51[1] = 0;
          v52 = 0;
          if (row == 0x7FFFFFFF)
          {
            sub_2212F8464(__p);
          }

          v23 = sub_221089E8C(a1);
          v27 = objc_msgSend_tableUID(*(a1 + 200), v24, v25, v26);
          v29 = objc_msgSend_resolverForTableUID_(v23, v28, v27, v28);

          if (v29)
          {
            objc_msgSend_UIDsForRange_isRows_(v29, v30, row, v22 - row + 1, 1);
          }

          else
          {
            __p[0] = 0;
            __p[1] = 0;
            v50 = 0;
          }

          *v51 = *__p;
          v52 = v50;

          column = v53._topLeft.column;
          v32 = v53._bottomRight.column;
          __p[0] = 0;
          __p[1] = 0;
          v50 = 0;
          if (v53._topLeft.column == 0x7FFFLL)
          {
            sub_2212F8464(&v47);
          }

          v33 = sub_221089E8C(a1);
          v37 = objc_msgSend_tableUID(*(a1 + 200), v34, v35, v36);
          v39 = objc_msgSend_resolverForTableUID_(v33, v38, v37, v38);

          if (v39)
          {
            objc_msgSend_UIDsForRange_isRows_(v39, v40, column, (v32 - column + 1), 0);
          }

          else
          {
            v47 = 0uLL;
            v48 = 0;
          }

          *__p = v47;
          v50 = v48;

          v41 = TSCEASTElement::mutableUndoTractList(this, a1);
          objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_isRangeRef_preserveRectangularRange_(v41, v42, __p, v51, 1, 1);
          v43 = sub_221089E8C(a1);
          v55._lower = objc_msgSend_mapOwnerUID_(v43, v44, &v55, v45);
          v55._upper = v46;

          TSCEASTIteratorBase::createReferenceErrorWithUidTractList(a1, v41, &v55, &v54);
        }
      }
    }
  }

  return this;
}

void sub_2212F8354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2212F83DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*a1 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || (*a2 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    return 0;
  }

  v5 = (v2 & 0xFFFF00000000) != 0x7FFF00000000 || v2 == 0x7FFFFFFFLL;
  v6 = !v5;
  v7 = (v3 & 0xFFFF00000000) != 0x7FFF00000000 || v3 == 0x7FFFFFFFLL;
  v8 = !v7;
  if (v6 != v8)
  {
    return 0;
  }

  v11 = v2 == 0x7FFFFFFFLL && (v2 & 0xFFFF00000000) != 0x7FFF00000000;
  v13 = v3 != 0x7FFFFFFFLL || (v3 & 0xFFFF00000000) == 0x7FFF00000000;
  return v11 ^ v13;
}

void sub_2212F8464(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_221086F74(a1, 1uLL);
}

void sub_2212F84DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

TSCEASTElement *sub_2212F84F8(TSCEASTIteratorBase *a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4);
  v85[0] = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
  v9 = objc_msgSend_absoluteCellTractRefForHostCell_(v6, v7, v85, v8);
  lower = objc_msgSend_tableUID(v9, v10, v11, v12);
  upper = v13;
  if (!lower)
  {
    if (v13)
    {
      lower = 0;
    }

    else
    {
      v18 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
      lower = v18->var0.var0._tableUID._lower;
      upper = v18->var0.var0._tableUID._upper;
    }
  }

  v87._lower = lower;
  v87._upper = upper;
  v19 = objc_msgSend_topLeft(v9, v13, v14, v15);
  v23 = objc_msgSend_bottomRight(v9, v20, v21, v22);
  if (lower == objc_msgSend_tableUID(*(a1 + 25), v24, v25, v26) && upper == v27 && (v19 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && (v23 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    v30 = (v19 & 0xFFFF00000000) != 0x7FFF00000000 || v19 == 0x7FFFFFFFLL;
    v31 = !v30;
    v32 = (v23 & 0xFFFF00000000) != 0x7FFF00000000 || v23 == 0x7FFFFFFFLL;
    v33 = !v32;
    if (v31 == v33)
    {
      v34 = v19 != 0x7FFFFFFFLL || (v19 & 0xFFFF00000000) == 0x7FFF00000000;
      v35 = !v34;
      v36 = v23 != 0x7FFFFFFFLL || (v23 & 0xFFFF00000000) == 0x7FFF00000000;
      v37 = v36;
      if (v35 != v37)
      {
        v85[0] = 0;
        v85[1] = 0;
        v86 = 0;
        if (objc_msgSend_spansAllRows(v9, v27, v28, v29))
        {
          operator new();
        }

        v38 = sub_221089E8C(a1);
        v42 = objc_msgSend_tableUID(*(a1 + 25), v39, v40, v41);
        v44 = objc_msgSend_resolverForTableUID_(v38, v43, v42, v43);

        v48 = objc_msgSend_rows(v9, v45, v46, v47);
        v50 = TSUIndexSet::asNSIndexSet(v48);
        if (v44)
        {
          objc_msgSend_UIDsForIndexes_isRows_(v44, v49, v50, 1);
        }

        else
        {
          __p[0] = 0;
          __p[1] = 0;
          v84 = 0;
        }

        *v85 = *__p;
        v86 = v84;

        __p[0] = 0;
        __p[1] = 0;
        v84 = 0;
        if (objc_msgSend_spansAllColumns(v9, v51, v52, v53))
        {
          operator new();
        }

        v54 = sub_221089E8C(a1);
        v58 = objc_msgSend_tableUID(*(a1 + 25), v55, v56, v57);
        v60 = objc_msgSend_resolverForTableUID_(v54, v59, v58, v59);

        v64 = objc_msgSend_columns(v9, v61, v62, v63);
        v66 = TSUIndexSet::asNSIndexSet(v64);
        if (v60)
        {
          objc_msgSend_UIDsForIndexes_isRows_(v60, v65, v66, 0);
        }

        else
        {
          memset(v81, 0, sizeof(v81));
          v82 = 0;
        }

        *__p = *&v81[0]._flags;
        v84 = v82;
        v82 = 0;
        memset(v81, 0, sizeof(v81));

        v67 = TSCEASTElement::mutableUndoTractList(this, a1);
        isRectangularRange = objc_msgSend_isRectangularRange(v9, v68, v69, v70);
        objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_isRangeRef_preserveRectangularRange_(v67, v72, __p, v85, 1, isRectangularRange);
        v73 = sub_221089E8C(a1);
        v87._lower = objc_msgSend_mapOwnerUID_(v73, v74, &v87, v75);
        v87._upper = v76;

        v81[0]._flags = objc_msgSend_preserveFlags(v9, v77, v78, v79);
        TSCEASTIteratorBase::createReferenceErrorWithUidTractList(a1, v67, &v87, v81);
      }
    }
  }

  return this;
}

void sub_2212F88CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2212F89A8(id *a1)
{

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_2212F89E4(id *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

uint64_t sub_2212FA10C(void *a1, const char *a2)
{
  v2 = 16;
  if (a2 == 1)
  {
    v2 = 15;
  }

  if (!a2)
  {
    v2 = 4;
  }

  return objc_msgSend_applyStroke_atIndexes_order_applyStroke_atIndexes_order_applyStroke_atIndexes_order_applyStroke_atIndexes_order_applyStroke_atIndexes_order_(a1[v2], a2, a1[5], a1[6], 1, a1[7], a1[8], 1, a1[9], a1[10], 1, a1[11], a1[12], 1, a1[13], a1[14], 1);
}

id sub_2213000E8(void *a1, id *a2)
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

void sub_2213001C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

id sub_2213001DC(void *a1, id *a2)
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

void sub_2213002BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_2213008C8(void *a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4)
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
      v7 = v4 % a1[1];
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

  if (*(v9 + 16) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t **sub_221300B0C(void *a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
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
      v7 = v4 % a1[1];
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

  if (*(v9 + 8) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t **sub_221300D50(void *a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
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
      v7 = v4 % a1[1];
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

  if (*(v9 + 8) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_221300FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221300FC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_221300FC8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_221087AA4(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_221301014(void *a1, void *a2, uint64_t a3, _OWORD **a4)
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

void sub_221301268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087224(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22130127C(uint64_t a1)
{
  sub_2213012B8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_2213012B8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_221087AA4((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_221301328(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_availableCurrencyCodes(MEMORY[0x277D81228], a2, a3, a4);
  objc_msgSend_count(v7, v4, v5, v6);
  operator new();
}

void sub_221307314(_Unwind_Exception *a1)
{
  v2 = STACK[0x9E8];
  v3 = STACK[0x9F0];
  v4 = STACK[0xEC0];
  v5 = STACK[0x9E0];

  v7 = STACK[0xED0];
  v8 = STACK[0xE08];
  v9 = STACK[0xE00];
  v10 = STACK[0xDF8];
  v11 = STACK[0xDF0];

  v12 = STACK[0xEB8];
  sub_2211AF274((v1 - 208));

  _Unwind_Resume(a1);
}

uint64_t **sub_2213097B8(void *a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
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
      v7 = v4 % a1[1];
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

  if (*(v9 + 8) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t ***sub_2213099F4(void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    sub_221309C20();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 8) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_221309C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_221309CA4(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t **sub_221309CBC(void *a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
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
      v7 = v4 % a1[1];
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

  if (*(v9 + 8) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t ***sub_221309EF8(void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    sub_22130A124();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 8) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_22130A108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22130A1A8(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

double sub_22130ABA8(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v3 = &unk_2834A49B0;
  result = 0.0;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 1065353216;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 1065353216;
  *(v3 + 96) = 1;
  return result;
}

TSCEASTRelativeCoordRefElement *sub_22130AC00(TSCEASTIteratorBase *a1, TSCEASTRelativeCoordRefElement *this, uint64_t a3, uint64_t a4)
{
  *&v8 = TSCEASTRelativeCoordRefElement::tableUID(this, a1, a3, a4);
  *(&v8 + 1) = v6;
  if (v8 | v6)
  {
    sub_2210C2B00(a1 + 17, &v8, &v8);
  }

  return this;
}

TSCEASTRelativeCoordRefElement *sub_22130AC58(TSCEASTIteratorBase *a1, TSCEASTRelativeCoordRefElement *this, uint64_t a3, uint64_t a4)
{
  *&v8 = TSCEASTRelativeCoordRefElement::tableUID(this, a1, a3, a4);
  *(&v8 + 1) = v6;
  if (v8 | v6)
  {
    sub_2210C2B00(a1 + 17, &v8, &v8);
  }

  return this;
}

uint64_t sub_22130ACB0(uint64_t a1, uint64_t a2)
{
  *&v6 = (*(*a2 + 136))(a2, a1);
  *(&v6 + 1) = v4;
  if (v6 | v4)
  {
    sub_2210C2B00((a1 + 136), &v6, &v6);
  }

  return a2;
}

TSCEASTUidReferenceElement *sub_22130AD28(TSCEASTIteratorBase *a1, TSCEASTUidReferenceElement *this, uint64_t a3, uint64_t a4)
{
  *&v8 = TSCEASTUidReferenceElement::tableUID(this, a1, a3, a4);
  *(&v8 + 1) = v6;
  if (v8 | v6)
  {
    sub_2210C2B00(a1 + 17, &v8, &v8);
  }

  return this;
}

TSCEASTCategoryRefElement *sub_22130AD80(TSCEASTIteratorBase *a1, TSCEASTCategoryRefElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTCategoryRefElement::categoryRef(this, a1, a3, a4);
  *&v16 = objc_msgSend_pivotTableUid(v6, v7, v8, v9);
  *(&v16 + 1) = v10;
  if (v16 | v10)
  {
    sub_2210C2B00(a1 + 17, &v16, &v16);
  }

  else
  {
    *&v15 = objc_msgSend_groupByUid(v6, v10, v11, v12);
    *(&v15 + 1) = v13;
    if (v15 | v13)
    {
      sub_2210C2B00(a1 + 22, &v15, &v15);
    }
  }

  return this;
}

TSCEASTColonTractElement *sub_22130AE2C(TSCEASTIteratorBase *a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4);
  v10 = objc_msgSend_tableUID(v6, v7, v8, v9);
  if (v10 | v11)
  {
    *&v16 = objc_msgSend_tableUID(v6, v11, v12, v13);
    *(&v16 + 1) = v14;
    sub_2211D6484(a1 + 17, &v16, &v16);
  }

  return this;
}

TSCEASTViewTractRefElement *sub_22130AEB8(TSCEASTIteratorBase *a1, TSCEASTViewTractRefElement *this, uint64_t a3, uint64_t a4)
{
  *&v8 = TSCEASTViewTractRefElement::tableUID(this, a1, a3, a4);
  *(&v8 + 1) = v6;
  if (v8 | v6)
  {
    sub_2210C2B00(a1 + 17, &v8, &v8);
  }

  return this;
}

void sub_22130AF10(TSCEASTStreamIterator *a1)
{
  *a1 = &unk_2834A49B0;
  v2 = a1 + 136;
  sub_2210BDEC0(a1 + 176);
  sub_2210BDEC0(v2);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v3);
}

void sub_22130AF74(TSCEASTStreamIterator *a1)
{
  *a1 = &unk_2834A49B0;
  v2 = a1 + 136;
  sub_2210BDEC0(a1 + 176);
  sub_2210BDEC0(v2);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v3);

  JUMPOUT(0x223DA1450);
}

void sub_22130B75C(void *a1, unint64_t a2, id *a3)
{
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v7 = *a1 + 8 * a2;
      while (v4 != v7)
      {
        v8 = *(v4 - 8);
        v4 -= 8;
      }

      a1[1] = v7;
    }
  }

  else
  {
    v6 = a2 - v5;

    sub_22130BE9C(a1, v6, a3);
  }
}

void sub_22130B9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_22107C26C(va);

  _Unwind_Resume(a1);
}

id sub_22130BAC8(void *a1, id *a2)
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

void sub_22130BBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22130BC80(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_msgSend_syntaxError(TSCEError, a2, a3, a4);
  v6 = objc_msgSend_errorValue_(TSCEErrorValue, v4, v8, v5);
  v7 = qword_27CFB5450;
  qword_27CFB5450 = v6;
}

void *sub_22130BE9C(void *result, unint64_t a2, id *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (a2 <= (v6 - v7) >> 3)
  {
    if (a2)
    {
      v12 = 8 * a2;
      v13 = &v7[a2];
      do
      {
        result = *a3;
        *v7++ = result;
        v12 -= 8;
      }

      while (v12);
      v7 = v13;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = v7 - *result;
    v9 = a2 + (v8 >> 3);
    if (v9 >> 61)
    {
      sub_22107C148();
    }

    v10 = v6 - *result;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v17[4] = result;
    if (v11)
    {
      sub_22107C1F0(result, v11);
    }

    v14 = (8 * (v8 >> 3));
    v17[0] = 0;
    v17[1] = v14;
    v17[3] = 0;
    v15 = 8 * a2;
    v16 = &v14[a2];
    do
    {
      *v14++ = *a3;
      v15 -= 8;
    }

    while (v15);
    v17[2] = v16;
    sub_22107C098(v5, v17);
    return sub_22107C26C(v17);
  }

  return result;
}

void sub_22130BFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22130C3B0(void *a1, uint64_t *a2)
{
  v2 = a1[18];
  if (v2 && (*v2 & 1) == 0)
  {
    if (!a1[22])
    {
      v8 = a1[17];
      if (*(v8 + 24))
      {
        for (i = *(v8 + 16); i; i = *i)
        {
          sub_2210C2B00(a1 + 19, i + 2, i + 1);
          sub_2210C2B00(a1 + 19, i + 4, i + 2);
        }
      }
    }

    if (!sub_2210875C4(a1 + 19, a2))
    {
      v5 = sub_221089E8C(a1);
      IsRegistered = objc_msgSend_ownerIsRegistered_(v5, v6, *a2, a2[1]);

      if ((IsRegistered & 1) == 0)
      {
        *a1[18] = 1;
      }
    }
  }
}

TSCEASTColonTractElement *sub_22130C484(TSCEASTIteratorBase *a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4)
{
  v10._lower = TSCEASTColonTractElement::tableUID(this, a1, a3, a4);
  v10._upper = v6;
  if (v10._lower | v6)
  {
    if (sub_2210875C4(*(a1 + 17), &v10))
    {
      v7 = *(a1 + 17);
      v11 = &v10;
      v10 = *(sub_221230440(v7, &v10, &unk_2217E1397, &v11) + 2);
      TSCEASTColonTractElement::setTableUID(this, &v10, a1, v8);
    }

    else
    {
      sub_22130C3B0(a1, &v10);
    }
  }

  return this;
}

TSCEASTViewTractRefElement *sub_22130C530(TSCEASTIteratorBase *a1, TSCEASTViewTractRefElement *a2)
{
  if (TSCEASTElement::refFlags(a2, a1))
  {
    v11[0] = TSCEASTViewTractRefElement::tableUID(a2, a1, v4, v5);
    v11[1] = v6;
    if (sub_2210875C4(*(a1 + 17), v11))
    {
      v7 = *(a1 + 17);
      v10._lower = v11;
      v10 = *(sub_221230440(v7, v11, &unk_2217E1397, &v10) + 2);
      TSCEASTViewTractRefElement::setTableUID(a2, &v10, a1, v8);
    }
  }

  return a2;
}

TSCEASTRelativeCoordRefElement *sub_22130C5D4(TSCEASTIteratorBase *a1, TSCEASTRelativeCoordRefElement *a2)
{
  if (TSCEASTElement::refFlags(a2, a1))
  {
    v11[0] = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v4, v5);
    v11[1] = v6;
    if (sub_2210875C4(*(a1 + 17), v11))
    {
      v7 = *(a1 + 17);
      v10._lower = v11;
      v10 = *(sub_221230440(v7, v11, &unk_2217E1397, &v10) + 2);
      TSCEASTRelativeCoordRefElement::setTableUID(a2, &v10, a1, v8);
    }

    else
    {
      sub_22130C3B0(a1, v11);
    }
  }

  return a2;
}