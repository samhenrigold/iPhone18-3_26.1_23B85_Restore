uint64_t sub_22130C688(uint64_t a1, uint64_t a2)
{
  v8[0] = (*(*a2 + 136))(a2, a1);
  v8[1] = v4;
  if (sub_2210875C4(*(a1 + 136), v8))
  {
    v5 = *(a1 + 136);
    *&v7 = v8;
    v7 = *(sub_221230440(v5, v8, &unk_2217E1397, &v7) + 2);
    (*(*a2 + 144))(a2, &v7, a1);
  }

  return a2;
}

TSCEASTRelativeCoordRefElement *sub_22130C75C(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  v2 = a2;
  if (TSCEASTElement::refFlags(a2, a1))
  {
    v13[0] = TSCEASTRelativeCoordRefElement::tableUID(v2, a1, v4, v5);
    v13[1] = v6;
    if (sub_2210875C4(*(a1 + 136), v13))
    {
      v7 = *(a1 + 136);
      v12._lower = v13;
      v12 = *(sub_221230440(v7, v13, &unk_2217E1397, &v12) + 2);
      TSCEASTRelativeCoordRefElement::setTableUID(v2, &v12, a1, v8);
      if ((*&TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
      {
        tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
        coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
        return TSCEASTIteratorBase::convertReferenceErrorToRef(a1, v2, &tableUID, &coordinate, 0);
      }
    }
  }

  return v2;
}

TSCEASTUidReferenceElement *sub_22130C860(TSCEASTIteratorBase *a1, TSCEASTUidReferenceElement *a2)
{
  if (TSCEASTElement::refFlags(a2, a1))
  {
    v11[0] = TSCEASTUidReferenceElement::tableUID(a2, a1, v4, v5);
    v11[1] = v6;
    if (sub_2210875C4(*(a1 + 17), v11))
    {
      v7 = *(a1 + 17);
      v10._lower = v11;
      v10 = *(sub_221230440(v7, v11, &unk_2217E1397, &v10) + 2);
      TSCEASTUidReferenceElement::setTableUID(a2, &v10, a1, v8);
    }
  }

  return a2;
}

TSCEASTCategoryRefElement *sub_22130C904(TSCEASTIteratorBase *a1, TSCEASTCategoryRefElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTCategoryRefElement::mutableCategoryRef(this, a1, a3, a4);
  v12 = (*(*this + 136))(this, a1);
  v13 = v7;
  if (v12 | v7 && sub_2210875C4(*(a1 + 17), &v12))
  {
    v8 = *(a1 + 17);
    v14 = &v12;
    v9 = sub_221230440(v8, &v12, &unk_2217E1397, &v14);
    objc_msgSend_setGroupByUid_(v6, v10, v9[4], v9[5], v12, v13);
    TSCEASTCategoryRefElement::setCategoryRef(this, v6, a1);
  }

  return this;
}

TSCEASTRelativeCoordRefElement *sub_22130C9F4(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  if (TSCEASTElement::refFlags(a2, a1))
  {
    TSCEASTRelativeCoordRefElement::setTableUID(a2, (a1 + 136), a1, v4);
  }

  return a2;
}

TSCEASTColonTractElement *sub_22130CA3C(TSCEASTIteratorBase *a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTColonTractElement::tableUID(this, a1, a3, a4);
  if (v6 | v8)
  {
    TSCEASTColonTractElement::setTableUID(this, (a1 + 136), a1, v7);
  }

  return this;
}

TSCEASTRelativeCoordRefElement *sub_22130CADC(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  if (TSCEASTElement::refFlags(a2, a1))
  {
    TSCEASTRelativeCoordRefElement::setTableUID(a2, (a1 + 136), a1, v4);
  }

  return a2;
}

TSCEASTViewTractRefElement *sub_22130CB24(uint64_t a1, TSCEASTViewTractRefElement *a2)
{
  if (TSCEASTElement::refFlags(a2, a1))
  {
    TSCEASTViewTractRefElement::setTableUID(a2, (a1 + 136), a1, v4);
  }

  return a2;
}

TSCEASTUidReferenceElement *sub_22130CB6C(uint64_t a1, TSCEASTUidReferenceElement *a2)
{
  if (TSCEASTElement::refFlags(a2, a1))
  {
    TSCEASTUidReferenceElement::setTableUID(a2, (a1 + 136), a1, v4);
  }

  return a2;
}

void sub_22130CC14(TSCEASTStreamIterator *a1)
{
  *a1 = &unk_2834A4B40;
  sub_2210BDEC0(a1 + 152);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);

  JUMPOUT(0x223DA1450);
}

void sub_22130CC80(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, a2);

  JUMPOUT(0x223DA1450);
}

void sub_22130CCB8(TSCEASTStreamIterator *a1)
{
  *a1 = &unk_2834A4B40;
  sub_2210BDEC0(a1 + 152);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_22130CD0C(TSCEASTStreamIterator *a1)
{
  *a1 = &unk_2834A4B40;
  sub_2210BDEC0(a1 + 152);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);

  JUMPOUT(0x223DA1450);
}

void sub_22130CD78(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, a2);

  JUMPOUT(0x223DA1450);
}

void sub_22130CED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t *sub_22130CF08(uint64_t *result, unsigned int a2)
{
  v6 = a2;
  v2 = *(result[5] + 8);
  v3 = *(v2 + 24);
  if (v3 != a2)
  {
    v4 = result;
    v5 = result[4];
    v7 = &v6;
    result = sub_2211DB9B8((v5 + 8), &v6, &unk_2217E1398, &v7);
    *(result + 5) = v3;
    v2 = *(v4[5] + 8);
    a2 = *(v2 + 24);
  }

  *(v2 + 24) = a2 + 1;
  return result;
}

void TSCEFunctor::TSCEFunctor(TSCEFunctor *this)
{
  this->_formula = 0;
  *&this->_numArgs = 0;
}

{
  this->_formula = 0;
  *&this->_numArgs = 0;
}

void TSCEFunctor::TSCEFunctor(TSCEFunctor *this, TSCEFormulaCreator a2, unsigned int a3, unsigned int a4)
{
  this->_formula = 0;
  this->_numArgs = a3;
  this->_firstSymbol = a4;
  v6 = [TSCEFormulaObject alloc];
  TSCEFormulaCreator::TSCEFormulaCreator(&v11, a2.var0);
  v9 = objc_msgSend_initWithCreator_(v6, v7, &v11, v8);
  formula = this->_formula;
  this->_formula = v9;
}

void TSCEFunctor::TSCEFunctor(TSCEFunctor *this, TSCEFormulaObject *a2, unsigned int a3, unsigned int a4)
{
  this->_formula = a2;
  this->_numArgs = a3;
  this->_firstSymbol = a4;
}

{
  this->_formula = a2;
  this->_numArgs = a3;
  this->_firstSymbol = a4;
}

void TSCEFunctor::TSCEFunctor(TSCEFunctor *this, TSCEThunkValue *a2, unsigned int a3, unsigned int a4)
{
  v7 = a2;
  this->_formula = 0;
  this->_numArgs = a3;
  this->_firstSymbol = a4;
  v8 = [TSCEFormulaObject alloc];
  v12 = objc_msgSend_ast(v7, v9, v10, v11);
  v15 = objc_msgSend_initWithNodeArray_(v8, v13, v12, v14);
  formula = this->_formula;
  this->_formula = v15;
}

void TSCEFunctor::TSCEFunctor(TSCEFunctor *this, const TSCEFunctor *a2)
{
  this->_formula = a2->_formula;
  *&this->_numArgs = *&a2->_numArgs;
}

{
  this->_formula = a2->_formula;
  *&this->_numArgs = *&a2->_numArgs;
}

id *TSCEFunctor::operator=(id *location, uint64_t a2)
{
  if (location != a2)
  {
    objc_storeStrong(location, *a2);
    location[1] = *(a2 + 8);
  }

  return location;
}

TSCEFormulaObject *TSCEFunctor::isValid(TSCEFunctor *this, const char *a2, uint64_t a3, uint64_t a4)
{
  result = this->_formula;
  if (result)
  {
    return (objc_msgSend_isEmpty(result, a2, a3, a4) ^ 1);
  }

  return result;
}

id TSCEFunctor::description(TSCEFunctor *this, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x277CCACA8];
  numArgs = this->_numArgs;
  v6 = objc_msgSend_description(this->_formula, a2, a3, a4);
  v9 = objc_msgSend_stringWithFormat_(v4, v7, @"TSCEFunctor(%u args)=%@", v8, numArgs, v6);

  return v9;
}

id TSCEFunctor::evaluateWithArgs(TSCEFunctor *a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v9 = a3;
  if (v9)
  {
    numArgs = a1->_numArgs;
    if ((v5 || numArgs) && objc_msgSend_count(v5, v6, v7, v8) != numArgs)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "TSCECellValue *TSCEFunctor::evaluateWithArgs(NSArray<TSCECellValue *> *__strong, TSCECalculationEngine *__strong) const", v11);
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctor.mm", v15);
      v20 = TSCEFunctor::description(a1, v17, v18, v19);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v21, v13, v16, 102, 0, "Wrong number of arguments for functor: %@, args: %@", v20, v5);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
    }

    v63[0] = 0;
    v63[1] = 0;
    v25 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_(TSCEEvaluationContext, v6, v9, v63, 0);
    LODWORD(v63[0]) = a1->_firstSymbol;
    v29 = objc_msgSend_valueBindingEnvironment(v25, v26, v27, v28);
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v30 = v5;
    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v59, v64, 16);
    if (v35)
    {
      v36 = *v60;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v60 != v36)
          {
            objc_enumerationMutation(v30);
          }

          v38 = objc_msgSend_tsceValue(*(*(&v59 + 1) + 8 * i), v32, v33, v34);
          objc_msgSend_bindValue_atSymbol_(v29, v39, v38, v63);

          ++LODWORD(v63[0]);
        }

        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v59, v64, 16);
      }

      while (v35);
    }

    v42 = objc_msgSend_evaluateWithContext_(a1->_formula, v40, v25, v41);
    v46 = objc_msgSend_locale(v25, v43, v44, v45);
    v48 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v47, v42, v46);
  }

  else
  {
    v49 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "TSCECellValue *TSCEFunctor::evaluateWithArgs(NSArray<TSCECellValue *> *__strong, TSCECalculationEngine *__strong) const", v8);
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctor.mm", v52);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v54, v50, v53, 98, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57);
    v48 = 0;
  }

  return v48;
}

id TSCEFunctor::evaluateWithArgs(TSCEFunctor *a1, void *a2, id **a3)
{
  v7 = a2;
  numArgs = a1->_numArgs;
  if (numArgs && numArgs != a3[1] - *a3)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "TSCEValue *TSCEFunctor::evaluateWithArgs(TSCEEvaluationContext *__strong, const TSCEValueVector &) const", v6);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctor.mm", v12);
    v17 = TSCEFunctor::description(a1, v14, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v18, v10, v13, 121, 0, "Wrong number of arguments for functor: %@, args: %lu", v17, a3[1] - *a3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  firstSymbol = a1->_firstSymbol;
  if (objc_msgSend_insideFunctor_(v7, v5, firstSymbol, v6))
  {
    v25 = objc_msgSend_evaluationRecursingTooDeepError_(TSCEError, v23, 0, v24);
    v28 = objc_msgSend_errorValue_(TSCEErrorValue, v26, v25, v27);
  }

  else
  {
    objc_msgSend_enteringFunctor_(v7, v23, firstSymbol, v24);
    v51 = a1->_firstSymbol;
    v25 = objc_msgSend_valueBindingEnvironment(v7, v29, v30, v31);
    objc_msgSend_pushScope(v25, v32, v33, v34);
    v38 = *a3;
    v37 = a3[1];
    while (v38 != v37)
    {
      v39 = *v38;
      objc_msgSend_bindValue_atSymbol_(v25, v40, v39, &v51);
      ++v51;

      ++v38;
    }

    v28 = objc_msgSend_evaluateWithContext_(a1->_formula, v35, v7, v36);
    if (objc_msgSend_isThunk(v28, v41, v42, v43))
    {
      v47 = objc_msgSend_unwrapThunk_(v7, v44, v28, v46);

      v28 = v47;
    }

    objc_msgSend_popScope(v25, v44, v45, v46);
    objc_msgSend_exitingFunctor_(v7, v48, firstSymbol, v49);
  }

  return v28;
}

void TSCEFunctor::TSCEFunctor(TSCEFunctor *this, const TSCE::FunctorArchive *a2)
{
  this->_formula = 0;
  this->_numArgs = 0;
  v4 = [TSCEFormulaObject alloc];
  if (*(a2 + 3))
  {
    isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v4, v5, *(a2 + 3), 0);
  }

  else
  {
    isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v4, v5, TSCE::_FormulaArchive_default_instance_, 0);
  }

  formula = this->_formula;
  this->_formula = isPreUFF;

  *&this->_numArgs = *(a2 + 4);
}

void TSCEFunctor::encodeToArchive(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *a1;
  *(a2 + 16) |= 1u;
  v7 = *(a2 + 24);
  v12 = v5;
  if (!v7)
  {
    v8 = *(a2 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v8);
    *(a2 + 24) = v7;
    v5 = v12;
  }

  objc_msgSend_encodeToArchive_archiver_(v6, v5, v7, v5);
  v9 = *(a1 + 8);
  v10 = *(a2 + 16);
  *(a2 + 16) = v10 | 2;
  v11 = *(a1 + 12);
  *(a2 + 16) = v10 | 6;
  *(a2 + 32) = v9;
  *(a2 + 36) = v11;
}

void sub_22130DFE8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_22130EA8C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_22130F73C()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v3 = objc_msgSend_initWithProperties_(v0, v1, 907, v2, 0);
  v4 = qword_27CFB5460;
  qword_27CFB5460 = v3;
}

uint64_t sub_221310568(TSCEASTIteratorBase *a1, TSCEASTNumberElement *this, uint64_t a3, uint64_t a4)
{
  v22[0] = TSCEASTNumberElement::value(this, a1, a3, a4);
  v22[1] = v5;
  v6 = sub_221387C78(*(a1 + 136));
  v7 = [TSCENumberValue alloc];
  v9 = objc_msgSend_initWithDecimal_baseUnit_(v7, v8, v22, v6);
  v12 = objc_msgSend_variantWithDecimal_(v9, v10, v22, v11);

  v13 = *(a1 + 13);
  objc_msgSend_rawDoubleValue(v12, v14, v15, v16);
  v20 = 1057;
  v21 = 1;
  TSCEASTDurationElement::appendDurationElement(v13, v18, v6, &v20, v17);

  return 0;
}

void sub_22131063C(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, a2);

  JUMPOUT(0x223DA1450);
}

void sub_221313618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28)
{
  v34 = *(v32 - 160);
  if (v34)
  {
    *(v32 - 152) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

void sub_221314758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20)
{
  v28 = *(v26 - 112);
  if (v28)
  {
    *(v26 - 104) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

void sub_2213150A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20)
{
  v28 = *(v26 - 112);
  if (v28)
  {
    *(v26 - 104) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

void sub_221315860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14)
{
  v20 = *(v18 - 128);
  if (v20)
  {
    *(v18 - 120) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void sub_221315FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14)
{
  v20 = *(v18 - 128);
  if (v20)
  {
    *(v18 - 120) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void sub_221316718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14)
{
  v20 = *(v18 - 128);
  if (v20)
  {
    *(v18 - 120) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void sub_221316E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14)
{
  v20 = *(v18 - 128);
  if (v20)
  {
    *(v18 - 120) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void sub_2213188C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v21 = v3;
  if (*(a1 + 12) == 1)
  {
    v7 = objc_msgSend_functionName(*a1, v4, v5, v6);
    v10 = objc_msgSend_mismatchedCurrenciesErrorForFunctionName_(TSCEError, v8, v7, v9);
LABEL_3:
    v11 = *(a1 + 16);
    *(a1 + 16) = v10;

    goto LABEL_9;
  }

  if (objc_msgSend_hasUnits(v3, v4, v5, v6))
  {
    v15 = objc_msgSend_unit(v21, v12, v13, v14);
    if (*(a1 + 8))
    {
      if (v15 != *(a1 + 8))
      {
        *(a1 + 12) = 1;
        *(a1 + 8) = 0;
        v7 = objc_msgSend_functionName(*a1, v16, v17, v18);
        v10 = objc_msgSend_mismatchedCurrenciesErrorForFunctionName_(TSCEError, v19, v7, v20);
        goto LABEL_3;
      }
    }

    else
    {
      *(a1 + 8) = v15;
    }
  }

LABEL_9:
}

uint64_t sub_2213189D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 12) == 1)
  {
    v5 = objc_msgSend_functionName(*a1, a2, a3, a4);
    v8 = objc_msgSend_mismatchedCurrenciesErrorForFunctionName_(TSCEError, v6, v5, v7);
    v9 = *(a1 + 16);
    *(a1 + 16) = v8;

    return 0;
  }

  else
  {
    result = *(a1 + 8);
    if (!*(a1 + 8))
    {
      return *(a1 + 10);
    }
  }

  return result;
}

void sub_22131BE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12)
{
  v20 = *(v18 - 112);
  if (v20)
  {
    *(v18 - 104) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22131C960(TSUDecimal *a1)
{
  TSUDecimal::doubleValue(a1);
  log(v1);
  TSUDecimal::operator=();
  return v3;
}

void sub_22131CFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v22 = *(v20 - 112);
  if (v22)
  {
    *(v20 - 104) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void sub_22131EF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24)
{
  v33 = *(v31 - 128);
  if (v33)
  {
    *(v31 - 120) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void sub_22131F7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18)
{
  v26 = *(v24 - 128);
  if (v26)
  {
    *(v24 - 120) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

void sub_221320330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18)
{
  v25 = *(v23 - 128);
  if (v25)
  {
    *(v23 - 120) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void sub_22132218C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, void *a20)
{
  v28 = *(v26 - 128);
  if (v28)
  {
    *(v26 - 120) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_221327DF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  v11 = objc_msgSend_documentLocale(v6, v8, v9, v10);
  v15 = objc_msgSend_currencyCode(v11, v12, v13, v14);
  *(a1 + 10) = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v16, v15, v17);

  return a1;
}

void sub_22132886C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2210BDEC0(va);
  _Unwind_Resume(a1);
}

void *sub_221328E10(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 32);
  *&v6 = a2;
  v4 = sub_2213295A8((v3 + 104), a2, &unk_2217E14B1, &v6);
  v6 = *(a1 + 40);
  v7 = 0;
  v8 = 0;
  return sub_221329838(v4 + 3, &v6, &v6);
}

void *sub_221328E74(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 32);
  *&v7[0] = a2;
  v4 = sub_2213295A8((v3 + 104), a2, &unk_2217E14B1, v7);
  v5 = *(a1 + 56);
  v7[0] = *(a1 + 40);
  v7[1] = v5;
  return sub_221329838(v4 + 3, v7, v7);
}

void *sub_2213292E0(void *a1, void *a2, uint64_t a3, _OWORD **a4)
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

void sub_221329548(uint64_t a1, char **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_22107C860((a2 + 6), a2[7]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *sub_2213295A8(void *a1, unsigned int *a2, uint64_t a3, void **a4)
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

void sub_221329824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2210BE018(va);
  _Unwind_Resume(a1);
}

void *sub_221329838(void *a1, void *a2, _OWORD *a3)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = v3 ^ *a2 ^ v4 ^ v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v3 ^ *a2 ^ v4 ^ v5;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_21;
    }

LABEL_20:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  if (v11[2] != *a2 || v11[3] != v3 || v11[4] != v4 || v11[5] != v5)
  {
    goto LABEL_20;
  }

  return v11;
}

uint64_t sub_221329A98(void *a1, void *a2)
{
  result = sub_221329AD0(a1, a2);
  if (result)
  {
    sub_2210CDD3C(a1, result);
    return 1;
  }

  return result;
}

void *sub_221329AD0(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = v3 ^ *a2 ^ v4 ^ v5;
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v3 ^ *a2 ^ v4 ^ v5;
    if (v6 >= *&v2)
    {
      v8 = v6 % *&v2;
    }
  }

  else
  {
    v8 = (*&v2 - 1) & v6;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (result = *v9; result; result = *result)
  {
    v11 = result[1];
    if (v11 == v6)
    {
      if (result[2] == *a2 && result[3] == v3 && result[4] == v4 && result[5] == v5)
      {
        return result;
      }
    }

    else
    {
      if (v7.u32[0] > 1uLL)
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

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_221329BB8(void *a1, void *a2, uint64_t a3, _OWORD **a4)
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

void sub_221329E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221329E2C(va);
  _Unwind_Resume(a1);
}

char **sub_221329E2C(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_22132A294(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_221329E78(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_221087270(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_221329EF0(a1, i + 2, i + 1);
  }

  return a1;
}

void *sub_221329EF0(void *a1, void *a2, _OWORD *a3)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = v3 ^ *a2 ^ v4 ^ v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v3 ^ *a2 ^ v4 ^ v5;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_21;
    }

LABEL_20:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  if (v11[2] != *a2 || v11[3] != v3 || v11[4] != v4 || v11[5] != v5)
  {
    goto LABEL_20;
  }

  return v11;
}

void sub_22132A150(uint64_t result)
{
  if (*(result + 24))
  {
    sub_22132A1AC(result, *(result + 16));
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

void sub_22132A1AC(uint64_t a1, char **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_22107C860((v2 + 6), v2[7]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_22132A1F4(uint64_t result)
{
  if (*(result + 24))
  {
    sub_22132A250(result, *(result + 16));
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

void sub_22132A250(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_22132A294((v2 + 4));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_22132A294(uint64_t a1)
{
  sub_22132A1AC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_22132A2D0(uint64_t a1)
{
  sub_22132A250(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_22132A30C(uint64_t a1)
{
  sub_2210BD91C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_22132A4D4(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_22132AD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  sub_2211B182C(va);
  _Unwind_Resume(a1);
}

void sub_22132B0D8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_22132B2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2211B182C(va);

  _Unwind_Resume(a1);
}

void sub_22132B860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  sub_2211B182C(va);

  sub_22109DBB8(v24);
  _Unwind_Resume(a1);
}

void sub_22132BCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2211B182C(va);

  _Unwind_Resume(a1);
}

void sub_22132C070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2211B182C(va);

  _Unwind_Resume(a1);
}

void sub_22132CA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22132CB94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22132D280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  v34 = *(v32 - 112);
  if (v34)
  {
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

void sub_22132D398(uint64_t *result, unint64_t a2, int a3)
{
  v4 = result[1];
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    result[1] = a2;
    return;
  }

  v7 = result[2];
  v8 = v7 << 6;
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    v20 = 0;
    v21 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      sub_22107C148();
    }

    v10 = v7 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_22133500C(&v20, v11);
    v12 = *result;
    v13 = result[1];
    *&v21 = v13 + v5;
    v22 = v20;
    v23 = 0;
    sub_221335310(&v18, v12, 0, &v12[v13 >> 6], v13 & 0x3F, &v22);
    v14 = v18;
    LODWORD(v15) = v19;
    v16 = *result;
    *result = v20;
    v20 = v16;
    v17 = *(result + 1);
    *(result + 1) = v21;
    v21 = v17;
    if (v16)
    {
      operator delete(v16);
    }

    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v20 = v14;
    LODWORD(v21) = v15;
    sub_221335444(&v20, v5);
    return;
  }

  v14 = (*result + 8 * (v4 >> 6));
  v15 = result[1] & 0x3F;
  result[1] = a2;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = v14;
  LODWORD(v21) = v15;
  sub_2213354F8(&v20, v5);
}

void sub_22132D4E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22132D504(uint64_t a1, int a2)
{
  v2 = *(a1 + 112);
  v3 = v2 + (a2 << 8) + 255;
  if (*(a1 + 116) < v3)
  {
    v3 = *(a1 + 116);
  }

  if (*(a1 + 56) >= 2uLL)
  {
    v4 = v2 + (a2 << 8);
  }

  else
  {
    v3 = *(a1 + 116);
    v4 = *(a1 + 112);
  }

  if (v4 <= v3)
  {
    v6 = *(a1 + 72);
    v7 = *v6;
    v28 = v3;
    do
    {
      if (*(a1 + 120) < ((v6[1] - v7) >> 4))
      {
        v8 = *(a1 + 120);
        do
        {
          v9 = objc_autoreleasePoolPush();
          v32 = 0u;
          v33 = 0u;
          TSKMakeUIDStructCoord();
          v12 = objc_msgSend_aggregateForUidCoord_(*(*(a1 + 32) + 176), v10, &v32, v11);
          v18 = objc_msgSend_showAsType(v12, v13, v14, v15);
          if (*(a1 + 122) != 1 || (v19 = objc_msgSend_aggregateIndexForUidCoord_(*(*(a1 + 32) + 176), v16, &v32, v17), ((*(*(a1 + 80) + ((v19 >> 3) & 0x1FF8)) >> v19) & 1) == 0) || (v20 = [TSCEFormulaObject alloc], TSCEFormulaCreationMagic::refError(&v31, v21, v22, v23), v26 = objc_msgSend_initWithCreator_(v20, v24, &v31, v25), v31, !v26))
          {
            if (*(a1 + 104))
            {
              v29 = v32;
              v30 = v33;
              v26 = objc_msgSend_p_formulaForCellCoord_runningTotalContext_(*(a1 + 32), v16, &v29, *(a1 + 40));
            }

            else
            {
              v26 = 0;
            }
          }

          if (*(a1 + 123) != 1 || (v18 & 0xFE) == 6)
          {
            v27 = *(a1 + 48);
            v29 = v32;
            v30 = v33;
            objc_msgSend_applyFormula_atUidCoord_(v27, v16, v26, &v29);
          }

          objc_autoreleasePoolPop(v9);
          ++v8;
          v6 = *(a1 + 72);
          v7 = *v6;
        }

        while (v8 < ((v6[1] - *v6) >> 4));
        v3 = v28;
      }

      ++v4;
    }

    while (v4 <= v3);
  }
}

void sub_22132D740(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    operator delete(v1);
  }
}

void sub_22132E134(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_22132E25C(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_22132F798(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = a3;
  if (objc_msgSend_hideTotals(v14, v5, v6, v7))
  {
    v11 = *(a1 + 32);
    v12 = objc_msgSend_hideTotals(v14, v8, v9, v10);
    objc_msgSend_p_resetHiddenTotalsForGroupingColumnUid_hideTotals_(v11, v13, a2, v12);
  }
}

void sub_22132FCB4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_22132FD84(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_221330BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_221330D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_221331260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41, uint64_t a42, id a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, ...)
{
  va_start(va, a51);

  sub_2210BC9F8(v54 + 96, a28);
  _Block_object_dispose(&a33, 8);

  sub_2210BC9F8(&a44, a45);
  sub_2210BC9F8(&a49, a50);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v55 - 248), 8);
  v57 = *(v55 - 200);
  if (v57)
  {
    *(v55 - 192) = v57;
    operator delete(v57);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2213313E8(__n128 *a1, __n128 *a2)
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

void sub_22133140C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_221331424(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v43 = 0;
  v6 = objc_msgSend_translator(*(a1 + 32), a2, a3, a4);
  v8 = objc_msgSend_rowGroupLevelAtRow_outAggregateIndex_(v6, v7, a2, &v43);

  v11 = v8;
  if (v8)
  {
    if (v8 == 255)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTPivotOwner p_sortRowsInMode:sortDirection:columnIndex:level:aggregateIndex:resetLabels:]_block_invoke", v10);
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotOwner.mm", v15);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 1883, 0, "Expected a valid category level for all body rows");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
    }

    v21 = *(a1 + 40);
    if (*(v21 + 168))
    {
      v22 = 0;
    }

    else if (*(a1 + 88) == 1)
    {
      v23 = objc_msgSend_ruleAtGroupLevel_(*(v21 + 152), v9, v8, v10);
      v24 = *(*(a1 + 40) + 80);
      v28 = objc_msgSend_groupingColumnUid(v23, v25, v26, v27);
      v30 = objc_msgSend_pivotOptionsForUID_(v24, v29, v28, v29);
      if (!objc_msgSend_sortByGrandTotal(v30, v31, v32, v33) || (v42[0] = objc_msgSend_sortingAggregateRuleUid(v30, v34, v35, v36), v42[1] = v37, v38 = sub_22112C8D0(a1 + 56, v42), (a1 + 64) == v38))
      {
        v22 = 0;
      }

      else
      {
        v22 = v38[6];
      }
    }

    else
    {
      v22 = *(a1 + 80);
    }
  }

  else
  {
    v22 = 0;
  }

  if (v43 == v22)
  {
    v39 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 48), v9, v11, v10);
    objc_msgSend_addIndex_(v39, v40, a2, v41);
  }
}

void sub_221331648(uint64_t a1, void *a2, uint64_t a3)
{
  v80[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(*(a1 + 32) + 80);
  v10 = objc_msgSend_groupingColumnUid(v5, v7, v8, v9);
  v12 = objc_msgSend_pivotOptionsForUID_(v6, v11, v10, v11);
  v16 = v12;
  v17 = a3 + 1;
  if (*(a1 + 136) == 1)
  {
    if (!objc_msgSend_sortByGrandTotal(v12, v13, v14, v15) || (v70 = objc_msgSend_sortingAggregateRuleUid(v16, v18, v19, v20), v71 = v21, v22 = sub_22112C8D0(a1 + 96, &v70), (a1 + 104) == v22) || (v23 = v22[6], v23 == 10))
    {
      v23 = 0;
      v24 = (*(a1 + 120) & 0xFFFFFFFFFFFFFFFDLL) == 0;
      v25 = 1;
    }

    else
    {
      LODWORD(a3) = objc_msgSend_numberOfColumns(*(a1 + 40), v18, v19, v20) - 1;
      v54 = *(a1 + 32);
      if (*(v54 + 168) == 1)
      {
        LODWORD(a3) = a3 + v23 + 1 - objc_msgSend_count(*(v54 + 160), v18, v19, v20);
      }

      v25 = 0;
      v24 = (*(a1 + 120) - 1) < 2;
    }

    v26 = objc_msgSend_sortDescending(v16, v18, v19, v20);
  }

  else
  {
    LODWORD(v27) = *(a1 + 128);
    v26 = *(a1 + 132);
    v23 = *(a1 + 88);
    v24 = *(a1 + 120) == 4 || *(a1 + 137) == v17;
    if (v27 == 0x7FFF)
    {
      v27 = a3;
    }

    else
    {
      v27 = v27;
    }

    v25 = v27 == a3;
    LODWORD(a3) = v27;
  }

  v31 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 48), v13, v17, v15);
  if (v24)
  {
    v32 = [TSTTableViewSortRule alloc];
    v34 = objc_msgSend_initWithViewIndex_direction_(v32, v33, a3, v26);
    v38 = objc_msgSend_tableInfo(*(*(a1 + 32) + 64), v35, v36, v37);
    v80[0] = v34;
    v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v39, v80, 1);
    v42 = objc_msgSend_mappingForSortingRows_withRules_(v38, v41, v31, v40);
  }

  else
  {
    v42 = 0;
  }

  v43 = objc_msgSend_rowUIDs(*(a1 + 40), v28, v29, v30);
  v77 = 0;
  v78 = 0;
  v79 = 0;
  sub_221086EBC(&v77, *v43, *(v43 + 8), (*(v43 + 8) - *v43) >> 4);
  v70 = 0;
  v71 = &v70;
  v72 = 0x4812000000;
  v73 = sub_2213313E8;
  v74 = sub_22133140C;
  v75 = 0u;
  v76 = 0u;
  v55 = MEMORY[0x277D85DD0];
  v56 = 3321888768;
  v57 = sub_221331B48;
  v58 = &unk_2834A52F8;
  v44 = v42;
  v45 = *(a1 + 64);
  v46 = *(a1 + 32);
  v59 = v44;
  v60 = v46;
  v62 = v45;
  v65 = v23;
  __p = 0;
  v67 = 0;
  v68 = 0;
  sub_221086EBC(&__p, v77, v78, (v78 - v77) >> 4);
  v69 = v25;
  v61 = *(a1 + 56);
  v47 = *(a1 + 72);
  v63 = &v70;
  v64 = v47;
  objc_msgSend_enumerateIndexesUsingBlock_(v31, v48, &v55, v49);
  v51 = v71[6];
  v52 = v71[7];
  if (v52 != v51)
  {
    sub_22133594C((*(*(a1 + 72) + 8) + 48), *(*(*(a1 + 72) + 8) + 56), v51, v52, (v52 - v51) >> 4);
  }

  if (*(*(*(a1 + 80) + 8) + 24))
  {
    v53 = 1;
  }

  else if (objc_msgSend_repeatLabels(v16, v50, v51, v52, v55, v56, v57, v58, v59, v60))
  {
    v53 = 0;
  }

  else
  {
    v53 = *(*(*(a1 + 64) + 8) + 24);
  }

  *(*(*(a1 + 80) + 8) + 24) = v53 & 1;

  if (__p)
  {
    v67 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v70, 8);
  if (*(&v75 + 1))
  {
    *&v76 = *(&v75 + 1);
    operator delete(*(&v75 + 1));
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }
}

void sub_221331A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a24, 8);
  if (a30)
  {
    a31 = a30;
    operator delete(a30);
  }

  v37 = *(v35 - 128);
  if (v37)
  {
    *(v35 - 120) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void sub_221331B48(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = objc_msgSend_reverseMapIndex_(v6, a2, a2, a4);
  }

  else
  {
    v7 = a2;
  }

  v8 = v7;
  if (v7 != a2)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  if (!*(*(a1 + 40) + 168))
  {
    v8 = v7 - *(a1 + 80);
  }

  v9 = (*(a1 + 88) + 16 * v8);
  if (*(a1 + 112) == 1 && (objc_msgSend_isBlankGroupUid_(*(a1 + 48), a2, v9, a4) & 1) != 0)
  {
    v10 = 64;
  }

  else
  {
    v10 = 72;
  }

  v11 = *(*(a1 + v10) + 8) + 48;

  sub_221083454(v11, v9);
}

uint64_t *sub_221331C0C(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v2 = (a1 + 88);
  v2[2] = 0;
  return sub_221086EBC(v2, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 4);
}

void sub_221331C28(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }
}

void sub_221332134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41, uint64_t a42, id a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, ...)
{
  va_start(va, a51);

  sub_2210BC9F8(v54 + 96, a28);
  _Block_object_dispose(&a33, 8);

  sub_2210BC9F8(&a44, a45);
  sub_2210BC9F8(&a49, a50);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v55 - 248), 8);
  v57 = *(v55 - 200);
  if (v57)
  {
    *(v55 - 192) = v57;
    operator delete(v57);
  }

  _Unwind_Resume(a1);
}

void sub_2213322BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v43 = 0;
  v6 = objc_msgSend_translator(*(a1 + 32), a2, a3, a4);
  v8 = objc_msgSend_columnGroupLevelAtColumn_outAggregateIndex_(v6, v7, a2, &v43);

  v11 = v8;
  if (v8)
  {
    if (v8 == 255)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTPivotOwner p_sortColumnsInMode:sortDirection:rowIndex:level:aggregateIndex:resetLabels:]_block_invoke", v10);
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotOwner.mm", v15);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 2043, 0, "Expected a valid category level for all body columns");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
    }

    v21 = *(a1 + 40);
    if (*(v21 + 168) == 1)
    {
      if (*(a1 + 88) == 1)
      {
        v22 = objc_msgSend_ruleAtGroupLevel_(*(v21 + 144), v9, v8, v10);
        v23 = *(*(a1 + 40) + 80);
        v27 = objc_msgSend_groupingColumnUid(v22, v24, v25, v26);
        v29 = objc_msgSend_pivotOptionsForUID_(v23, v28, v27, v28);
        if (!objc_msgSend_sortByGrandTotal(v29, v30, v31, v32) || (v42[0] = objc_msgSend_sortingAggregateRuleUid(v29, v33, v34, v35), v42[1] = v36, v37 = sub_22112C8D0(a1 + 56, v42), (a1 + 64) == v37))
        {
          v38 = 0;
        }

        else
        {
          v38 = v37[6];
        }
      }

      else
      {
        v38 = *(a1 + 80);
      }
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

  if (v43 == v38)
  {
    v39 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 48), v9, v11, v10);
    objc_msgSend_addIndex_(v39, v40, a2, v41);
  }
}

void sub_2213324CC(uint64_t a1, void *a2, uint64_t a3)
{
  v80[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(*(a1 + 32) + 80);
  v10 = objc_msgSend_groupingColumnUid(v5, v7, v8, v9);
  v12 = objc_msgSend_pivotOptionsForUID_(v6, v11, v10, v11);
  v16 = v12;
  v17 = a3 + 1;
  if (*(a1 + 136) == 1)
  {
    if (!objc_msgSend_sortByGrandTotal(v12, v13, v14, v15) || (v70 = objc_msgSend_sortingAggregateRuleUid(v16, v18, v19, v20), v71 = v21, v22 = sub_22112C8D0(a1 + 96, &v70), (a1 + 104) == v22) || (v23 = v22[6], v23 == 10))
    {
      v23 = 0;
      v24 = (*(a1 + 120) & 0xFFFFFFFFFFFFFFFDLL) == 0;
      v25 = 1;
    }

    else
    {
      LODWORD(a3) = objc_msgSend_numberOfRows(*(a1 + 40), v18, v19, v20) - 1;
      v54 = *(a1 + 32);
      if (!*(v54 + 168))
      {
        LODWORD(a3) = a3 + v23 + 1 - objc_msgSend_count(*(v54 + 160), v18, v19, v20);
      }

      v25 = 0;
      v24 = (*(a1 + 120) - 1) < 2;
    }

    v26 = objc_msgSend_sortDescending(v16, v18, v19, v20);
  }

  else
  {
    LODWORD(v27) = *(a1 + 128);
    v26 = *(a1 + 132);
    v23 = *(a1 + 88);
    v24 = *(a1 + 120) == 4 || *(a1 + 137) == v17;
    if (v27 == 0x7FFFFFFF)
    {
      v27 = a3;
    }

    else
    {
      v27 = v27;
    }

    v25 = v27 == a3;
    LODWORD(a3) = v27;
  }

  v31 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 48), v13, v17, v15);
  if (v24)
  {
    v32 = [TSTTableViewSortRule alloc];
    v34 = objc_msgSend_initWithViewIndex_direction_(v32, v33, a3, v26);
    v38 = objc_msgSend_tableInfo(*(*(a1 + 32) + 64), v35, v36, v37);
    v80[0] = v34;
    v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v39, v80, 1);
    v42 = objc_msgSend_mappingForSortingColumns_withRules_(v38, v41, v31, v40);
  }

  else
  {
    v42 = 0;
  }

  v43 = objc_msgSend_columnUIDs(*(a1 + 40), v28, v29, v30);
  v77 = 0;
  v78 = 0;
  v79 = 0;
  sub_221086EBC(&v77, *v43, *(v43 + 8), (*(v43 + 8) - *v43) >> 4);
  v70 = 0;
  v71 = &v70;
  v72 = 0x4812000000;
  v73 = sub_2213313E8;
  v74 = sub_22133140C;
  v75 = 0u;
  v76 = 0u;
  v55 = MEMORY[0x277D85DD0];
  v56 = 3321888768;
  v57 = sub_2213329C8;
  v58 = &unk_2834A52F8;
  v44 = v42;
  v45 = *(a1 + 64);
  v46 = *(a1 + 32);
  v59 = v44;
  v60 = v46;
  v62 = v45;
  v65 = v23;
  __p = 0;
  v67 = 0;
  v68 = 0;
  sub_221086EBC(&__p, v77, v78, (v78 - v77) >> 4);
  v69 = v25;
  v61 = *(a1 + 56);
  v47 = *(a1 + 72);
  v63 = &v70;
  v64 = v47;
  objc_msgSend_enumerateIndexesUsingBlock_(v31, v48, &v55, v49);
  v51 = v71[6];
  v52 = v71[7];
  if (v52 != v51)
  {
    sub_22133594C((*(*(a1 + 72) + 8) + 48), *(*(*(a1 + 72) + 8) + 56), v51, v52, (v52 - v51) >> 4);
  }

  if (*(*(*(a1 + 80) + 8) + 24))
  {
    v53 = 1;
  }

  else if (objc_msgSend_repeatLabels(v16, v50, v51, v52, v55, v56, v57, v58, v59, v60))
  {
    v53 = 0;
  }

  else
  {
    v53 = *(*(*(a1 + 64) + 8) + 24);
  }

  *(*(*(a1 + 80) + 8) + 24) = v53 & 1;

  if (__p)
  {
    v67 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v70, 8);
  if (*(&v75 + 1))
  {
    *&v76 = *(&v75 + 1);
    operator delete(*(&v75 + 1));
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }
}

void sub_2213328F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a24, 8);
  if (a30)
  {
    a31 = a30;
    operator delete(a30);
  }

  v37 = *(v35 - 128);
  if (v37)
  {
    *(v35 - 120) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void sub_2213329C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = objc_msgSend_reverseMapIndex_(v6, a2, a2, a4);
  }

  else
  {
    v7 = a2;
  }

  v8 = v7;
  if (v7 != a2)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  if (*(*(a1 + 40) + 168) == 1)
  {
    v8 = v7 - *(a1 + 80);
  }

  v9 = (*(a1 + 88) + 16 * v8);
  if (*(a1 + 112) == 1 && (objc_msgSend_isBlankGroupUid_(*(a1 + 48), a2, v9, a4) & 1) != 0)
  {
    v10 = 64;
  }

  else
  {
    v10 = 72;
  }

  v11 = *(*(a1 + v10) + 8) + 48;

  sub_221083454(v11, v9);
}

void sub_221332C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  if (v9)
  {
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void sub_221332D70(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_221332F54(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_221333294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22133333C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_hasUnfilteredRows(v3, v4, v5, v6))
  {
    v10 = *(a1 + 56);
    v11 = *(a1 + 32);
    v12 = objc_msgSend_rowHiddenStateExtent(*(a1 + 40), v7, v8, v9);
    VisibleNodeUsingColumnRowUIDMap_forDimension_leafLevel_pivotTableHiddenExtent = objc_msgSend_firstVisibleNodeUsingColumnRowUIDMap_forDimension_leafLevel_pivotTableHiddenExtent_(v3, v13, v11, 0, v10, v12);
    v16 = v15;
    *&v17 = VisibleNodeUsingColumnRowUIDMap_forDimension_leafLevel_pivotTableHiddenExtent;
    *(&v17 + 1) = v15;

    if (VisibleNodeUsingColumnRowUIDMap_forDimension_leafLevel_pivotTableHiddenExtent | v16)
    {
      sub_221083454(*(*(a1 + 48) + 8) + 48, &v17);
    }
  }
}

void sub_221333590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2213335E8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_hasUnfilteredRows(v3, v4, v5, v6))
  {
    v10 = *(*(a1 + 32) + 8);
    *&v12 = objc_msgSend_groupUid(v3, v7, v8, v9);
    *(&v12 + 1) = v11;
    sub_221083454(v10 + 48, &v12);
  }
}

void sub_221333954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2213339FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_hasUnfilteredRows(v3, v4, v5, v6))
  {
    v10 = *(a1 + 56);
    v11 = *(a1 + 32);
    v12 = objc_msgSend_columnHiddenStateExtent(*(a1 + 40), v7, v8, v9);
    VisibleNodeUsingColumnRowUIDMap_forDimension_leafLevel_pivotTableHiddenExtent = objc_msgSend_firstVisibleNodeUsingColumnRowUIDMap_forDimension_leafLevel_pivotTableHiddenExtent_(v3, v13, v11, 1, v10, v12);
    v16 = v15;
    *&v17 = VisibleNodeUsingColumnRowUIDMap_forDimension_leafLevel_pivotTableHiddenExtent;
    *(&v17 + 1) = v15;

    if (VisibleNodeUsingColumnRowUIDMap_forDimension_leafLevel_pivotTableHiddenExtent | v16)
    {
      sub_221083454(*(*(a1 + 48) + 8) + 48, &v17);
    }
  }
}

void sub_221333C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_221333CA8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_hasUnfilteredRows(v3, v4, v5, v6))
  {
    v10 = *(*(a1 + 32) + 8);
    *&v12 = objc_msgSend_groupUid(v3, v7, v8, v9);
    *(&v12 + 1) = v11;
    sub_221083454(v10 + 48, &v12);
  }
}

void sub_22133476C(uint64_t a1, char *__s)
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

void sub_221334864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22133500C(char **a1, unint64_t a2)
{
  if (a2 > a1[2] << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_2213350C8(&v2, a2);
    }

    sub_22107C148();
  }
}

void sub_2213350B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2213350C8(uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_2210874C4(a1, v2);
  }

  sub_22107C148();
}

void sub_22133510C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 2);
  v10 = *a3;
  v11 = *(a3 + 2);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  sub_2213351B0(&v18, &v16, &v14, v13);
}

void sub_2213351B0(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  sub_221335240(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void sub_221335240(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

unint64_t *sub_221335310@<X0>(unint64_t **__return_ptr a1@<X8>, unint64_t *__src@<X0>, unsigned int a3@<W1>, uint64_t a4@<X2>, unsigned int a5@<W3>, uint64_t a6@<X4>)
{
  v8 = a5 - a3 + 8 * (a4 - __src);
  if (v8 <= 0)
  {
    v16 = *a6;
  }

  else
  {
    v9 = __src;
    __src = *a6;
    if (a3)
    {
      if (v8 >= (64 - a3))
      {
        v10 = 64 - a3;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = *v9++;
      *__src = *__src & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - a3 - v10)) & (-1 << a3)) | v11 & (0xFFFFFFFFFFFFFFFFLL >> (64 - a3 - v10)) & (-1 << a3);
      v12 = v10 + *(a6 + 8);
      __src = (__src + ((v12 >> 3) & 0x3FFFFFF8));
      *a6 = __src;
      *(a6 + 8) = v12 & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    if ((v8 + 63) >= 0x7F)
    {
      memmove(__src, v9, 8 * v14);
      __src = *a6;
    }

    v15 = v8 - (v14 << 6);
    v16 = &__src[v14];
    *a6 = v16;
    if (v15 >= 1)
    {
      *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8)) | v9[v14] & (0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8));
      *(a6 + 8) = v15;
    }
  }

  *a1 = v16;
  *(a1 + 2) = *(a6 + 8);
  return __src;
}

void *sub_221335444(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void sub_2213354F8(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t *sub_2213355A8(uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2)
  {
    sub_2213350C8(a1, v2);
  }

  return a1;
}

void sub_221335604(void *a1, void *a2, unsigned int a3, void *a4, int a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = v8 + a6;
  a1[1] = v8 + a6;
  if (!v8 || ((v9 - 1) ^ (v8 - 1)) >= 0x40)
  {
    if (v9 >= 0x41)
    {
      v10 = (v9 - 1) >> 6;
    }

    else
    {
      v10 = 0;
    }

    *(*a1 + 8 * v10) = 0;
  }

  v14 = v6;
  v15 = v7;
  v11 = *a1 + 8 * (v8 >> 6);
  v12 = v8 & 0x3F;
  sub_22133568C(a2, a3, a4, a5, &v11, v13);
}

void sub_22133568C(void *a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  LODWORD(v6) = a2;
  v7 = *a5;
  v8 = *(a5 + 8);
  if (a1 != a3 || a2 != a4)
  {
    do
    {
      v9 = 1 << v8;
      if ((*a1 >> a2))
      {
        v10 = *v7 | v9;
      }

      else
      {
        v10 = *v7 & ~v9;
      }

      *v7 = v10;
      v11 = v6 == 63;
      v12 = v6 == 63;
      v6 = (a2 + 1);
      if (v11)
      {
        v6 = 0;
      }

      if (v8 == 63)
      {
        v8 = 0;
        *a5 = ++v7;
      }

      else
      {
        ++v8;
      }

      a1 += v12;
      a2 = v6 | a2 & 0xFFFFFFFF00000000;
    }

    while (a1 != a3 || v6 != a4);
    *(a5 + 8) = v8;
  }

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v7;
  *(a6 + 24) = v8;
}

uint64_t sub_221335730(uint64_t **a1, unint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *sub_22112C810(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *sub_2213357CC(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_221335824(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_221335824(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_2213358AC(v5, (v5 + 8), v4 + 4, (v4 + 4));
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_2213358AC(uint64_t **a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v4 = *sub_22112C6A8(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

char *sub_22133594C(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
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
    v12 = a5 + ((v10 - *a1) >> 4);
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

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 4;
  if (v18 >= a5)
  {
    v29 = &__dst[16 * a5];
    v30 = (v10 - 16 * a5);
    v31 = a1[1];
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    a1[1] = v31;
    if (v10 != v29)
    {
      memmove(&__dst[16 * a5], __dst, v10 - v29);
    }

    v28 = 16 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(a1[1], &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  a1[1] = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[16 * a5];
    v23 = v10 + v20;
    if (&v21[-16 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -16 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 16;
        v24 += 16;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    a1[1] = v23;
    if (v21 != v22)
    {
      memmove(&v5[16 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void sub_221336BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  *(v12 - 40) = &a11;
  sub_22107C2C0((v12 - 40));
  _Unwind_Resume(a1);
}

uint64_t TSCEASTElement::tag(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v2 = (a2 + 24);
  }

  else
  {
    v2 = *(a2 + 16);
  }

  return *(*v2 + *(a1 + 8));
}

_BYTE *TSCEASTElement::setTag(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  result = sub_22120CA10(a3, a2, a3, a4);
  if (*(a1 + 16))
  {
    v8 = (a3 + 24);
  }

  else
  {
    v8 = *(a3 + 16);
  }

  v9 = *v8;
  if (v9)
  {
    *(v9 + *(a1 + 8)) = v5;
  }

  return result;
}

uint64_t TSCEASTElement::size(TSCEASTElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual size_t TSCEASTElement::size(TSCEASTIteratorBase *) const", a4);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTElements.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 45, 0, "Need to override size() method for derived element types.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  return 0;
}

TSCEUndoTractList *TSCEASTElement::mutableUndoTractList(TSCEASTElement *this, TSCEASTIteratorBase *a2)
{
  v2 = (*(*this + 96))(this, a2);
  v6 = v2;
  if (v2)
  {
    v7 = objc_msgSend_copy(v2, v3, v4, v5);
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  return v8;
}

uint64_t TSCEASTElement::simpleTagForTag(uint64_t result)
{
  if (((1 << result) & 0x200010000000) != 0)
  {
    v1 = 28;
  }

  else
  {
    v1 = result;
  }

  if (((1 << result) & 0x600030000) != 0)
  {
    v1 = 16;
  }

  if (result <= 0x2D)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

id TSCEASTElement::description(TSCEASTElement *this, TSCEASTRewriter *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v9 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3, a4);
  if (v4 >= 1)
  {
    do
    {
      objc_msgSend_appendString_(v9, v7, @"  ", v8);
      --v4;
    }

    while (v4);
  }

  v10 = *(this + 1);
  v11 = (*(*this + 72))(this, a2);
  objc_msgSend_appendFormat_(v9, v12, @"Tag: %@ @offset: %lu size=%lu\n", v13, 0, v10, v11);

  return v9;
}

id TSCEASTElement::functionSpec(TSCEASTElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 16))
  {
    v6 = (a2 + 24);
  }

  else
  {
    v6 = *(a2 + 2);
  }

  v7 = *(*v6 + *(this + 1));
  v8 = 176;
  switch(v7)
  {
    case 1:
      goto LABEL_23;
    case 2:
      v8 = 177;
      goto LABEL_23;
    case 3:
      v8 = 169;
      goto LABEL_23;
    case 4:
      v8 = 170;
      goto LABEL_23;
    case 5:
      v8 = 171;
      goto LABEL_23;
    case 6:
      v8 = 178;
      goto LABEL_23;
    case 7:
      v8 = 180;
      goto LABEL_23;
    case 8:
      v8 = 182;
      goto LABEL_23;
    case 9:
      v8 = 179;
      goto LABEL_23;
    case 10:
      v8 = 181;
      goto LABEL_23;
    case 11:
      v8 = 183;
      goto LABEL_23;
    case 12:
      v8 = 184;
      goto LABEL_23;
    case 13:
      v8 = 174;
      goto LABEL_23;
    case 14:
      v8 = 173;
      goto LABEL_23;
    case 15:
      v8 = 172;
      goto LABEL_23;
    default:
      if (v7 == 69)
      {
        v8 = 339;
LABEL_23:
        v9 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, a2, v8, a4, v4);

        return v9;
      }

      if (v7 == 70)
      {
        v8 = 340;
        goto LABEL_23;
      }

      v9 = 0;

      return v9;
  }
}

id TSCEASTElement::functionArgSpec(TSCEASTElement *this, TSCEASTRewriter *a2)
{
  v3 = *(a2 + 15);
  if (v3 == *(a2 + 14))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v3 - 8);
    if (v4)
    {
      v4 = (*(*v4 + 80))(v4);
      if (v4)
      {
        v4 = objc_msgSend_argumentSpecForIndex_(v4, v6, *(a2 + 34), v7);
      }
    }
  }

  return v4;
}

BOOL TSCEASTElement::isEquivalent(TSCEASTElement *this, TSCEASTIteratorBase *a2, TSCEASTIteratorBase *a3, TSCEASTElement *a4, uint64_t a5, TSCECellRef *a6, TSCECellRef *a7)
{
  v11 = (*(*this + 72))(this, a2, a3, a4, a5, a6, a7);
  v12 = (*(*a4 + 72))(a4, a3);
  v15 = TSCEASTIteratorBase::readerForElement(a2, this, v13, v14);
  v18 = TSCEASTIteratorBase::readerForElement(a3, a4, v16, v17);
  if (v11 != v12)
  {
    return 0;
  }

  v19 = v15[1];
  v20 = **v15;
  v15[1] = (v19 + v11);
  v21 = v18[1];
  v22 = **v18;
  v18[1] = (v21 + v11);
  return memcmp(v19 + v20, v21 + v22, v11) == 0;
}

uint64_t TSCEASTElement::hasRefFlags(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v2 = (a2 + 24);
  }

  else
  {
    v2 = *(a2 + 16);
  }

  v3 = *(*v2 + *(a1 + 8)) - 29;
  return (v3 < 0x28) & (0xC000200081uLL >> v3);
}

uint64_t TSCEASTElement::refFlags(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v2 = (a2 + 24);
  }

  else
  {
    v2 = *(a2 + 16);
  }

  v3 = *(a1 + 8);
  v4 = *(*v2 + v3) - 29;
  v5 = v4 > 0x27;
  v6 = (1 << v4) & 0xC000200081;
  if (v5 || v6 == 0)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    v8 = (a2 + 24);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  return *(*v8 + v3 + 1);
}

_BYTE *TSCEASTElement::setRefFlags(_BYTE *this, const char *a2, TSCEASTIteratorBase *a3, uint64_t a4)
{
  v5 = this;
  if (this[16])
  {
    v6 = (a3 + 24);
  }

  else
  {
    v6 = *(a3 + 2);
  }

  v7 = *(this + 1);
  v8 = *(*v6 + v7) - 29;
  if (v8 > 0x27 || ((1 << v8) & 0xC000200081) == 0)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTElement::setRefFlags(TSCEASTRefFlags, TSCEASTIteratorBase *)", a4);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTElements.mm", v21);
    if (v5[16])
    {
      v24 = (a3 + 24);
    }

    else
    {
      v24 = *(a3 + 2);
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v23, 443, 0, "Don't call setRefFlags() on this node type (%d) - it doesn't support it", *(*v24 + *(v5 + 1)));

    v28 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v28, v25, v26, v27);
  }

  else
  {
    if (this[16])
    {
      v10 = (a3 + 24);
    }

    else
    {
      v10 = *(a3 + 2);
    }

    v11 = a2;
    v12 = *(*v10 + v7) - 29;
    if (v12 > 0x27 || ((1 << v12) & 0xC000200081) == 0)
    {
      v15 = 0;
    }

    else
    {
      if (this[16])
      {
        v14 = (a3 + 24);
      }

      else
      {
        v14 = *(a3 + 2);
      }

      v15 = *(*v14 + v7 + 1);
    }

    if (v15 != a2)
    {
      this = sub_22120CA10(a3, a2, a3, a4);
      if (v5[16])
      {
        v16 = (a3 + 24);
      }

      else
      {
        v16 = *(a3 + 2);
      }

      v17 = *v16;
      if (v17)
      {
        *(v17 + *(v5 + 1) + 1) = v11;
      }
    }
  }

  return this;
}

uint64_t TSCEASTElement::hasUidTracts(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a2 + 24);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  result = 0;
  v6 = *(a1 + 8);
  v7 = *(*v4 + v6) - 29;
  if (v7 <= 0x27)
  {
    if (((1 << (*(*v4 + v6) - 29)) & 0xC000200081) != 0)
    {
      if (v3)
      {
        v8 = (a2 + 24);
      }

      else
      {
        v8 = *(a2 + 16);
      }

      v9 = *(*v8 + v6) - 29;
      if (v9 > 0x27 || ((1 << v9) & 0xC000200081) == 0)
      {
        return 0;
      }

      else
      {
        if (v3)
        {
          v11 = (a2 + 24);
        }

        else
        {
          v11 = *(a2 + 16);
        }

        return (*(*v11 + v6 + 1) >> 1) & 1;
      }
    }

    else if (v7 == 16)
    {
      return 1;
    }
  }

  return result;
}

int64_t TSCEASTElement::sizeOfUndoTractList(TSCEASTElement *this, TSCEASTIteratorBase *a2)
{
  if (*(this + 16))
  {
    v4 = (a2 + 24);
  }

  else
  {
    v4 = *(a2 + 2);
  }

  v5 = *(*v4 + *(this + 1)) - 29;
  v6 = v5 > 0x27;
  v7 = (1 << v5) & 0xC000210081;
  v8 = v6 || v7 == 0;
  if (v8 || !TSCEASTElement::hasUidTracts(this, a2))
  {
    return 0;
  }

  v9 = (*(*this + 64))(this, a2);
  v12 = TSCEASTIteratorBase::readerForElement(a2, this, v10, v11);
  v13 = (*(this + 1) + v9);
  sub_22120C7F0(v12, v13, v14, v15);
  TSCEASTNodeArrayReader::skipUndoTractList(v12);
  return v12[1] - v13;
}

id TSCEASTElement::undoTractList(TSCEASTElement *this, TSCEASTIteratorBase *a2)
{
  if (*(this + 16))
  {
    v4 = (a2 + 24);
  }

  else
  {
    v4 = *(a2 + 2);
  }

  v5 = *(*v4 + *(this + 1)) - 29;
  v6 = v5 > 0x27;
  v7 = (1 << v5) & 0xC000210081;
  v8 = v6 || v7 == 0;
  if (v8 || !TSCEASTElement::hasUidTracts(this, a2))
  {
    v15 = 0;
  }

  else
  {
    v9 = (*(*this + 64))(this, a2);
    v12 = TSCEASTIteratorBase::readerForElement(a2, this, v10, v11);
    sub_22120C7F0(v12, (*(this + 1) + v9), v13, v14);
    v15 = TSCEASTNodeArrayReader::readUndoTractList(v12);
  }

  return v15;
}

void TSCEASTElementWithChildren::~TSCEASTElementWithChildren(TSCEASTElementWithChildren *this)
{
  *this = &unk_2834A5370;
  v2 = *(this + 3);
  v3 = *(this + 4);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 3);
  }

  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

uint64_t TSCEASTElementWithChildren::child(TSCEASTElementWithChildren *this, unsigned int a2)
{
  v2 = *(this + 3);
  if (a2 >= ((*(this + 4) - v2) >> 3))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

void TSCEASTElementWithChildren::appendChild(TSCEASTElementWithChildren *this, TSCEASTElement *a2)
{
  v2 = a2;
  if (a2)
  {
    sub_221126E28(this + 24, &v2);
  }
}

char *TSCEASTElementWithChildren::prependChild(char *this, TSCEASTElement *a2)
{
  v2 = a2;
  if (a2)
  {
    return sub_221337E90(this + 3, *(this + 3), &v2);
  }

  return this;
}

char *sub_221337E90(void *a1, char *__src, char *a3)
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

void sub_22133802C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSCEASTElementWithChildren::setChildAtIndex(TSCEASTElementWithChildren *this, TSCEASTElement *a2, uint64_t a3, TSCEASTRewriter *a4)
{
  v4 = a3;
  v21 = a2;
  *(a4 + 140) = 1;
  sub_22120CA10(a4, a2, a3, a4);
  v9 = *(this + 3);
  v10 = (*(this + 4) - v9) >> 3;
  if (v10 < v4)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "TSCEASTElement *TSCEASTElementWithChildren::setChildAtIndex(TSCEASTElement *, uint32_t, TSCEASTRewriter *)", v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTElements.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 548, 0, "Must set children in order");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    v9 = *(this + 3);
    v10 = (*(this + 4) - v9) >> 3;
  }

  if (v10 == v4)
  {
    sub_221126E28(this + 24, &v21);
  }

  else if (v10 > v4)
  {
    result = *(v9 + 8 * v4);
    *(v9 + 8 * v4) = a2;
    return result;
  }

  return 0;
}

id TSCEASTElementWithChildren::description(TSCEASTElementWithChildren *this, TSCEASTRewriter *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v9 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3, a4);
  if (v4 >= 1)
  {
    v10 = v4;
    do
    {
      objc_msgSend_appendString_(v9, v7, @"  ", v8);
      --v10;
    }

    while (v10);
  }

  v11 = *(this + 1);
  v12 = (*(*this + 72))(this, a2);
  objc_msgSend_appendFormat_(v9, v13, @"Tag: %@ @offset: %lu size=%lu\n", v14, 0, v11, v12);
  for (i = *(this + 3); i != *(this + 4); ++i)
  {
    v16 = (*(**i + 104))(*i, a2, (v4 + 1));
    objc_msgSend_appendString_(v9, v17, v16, v18);
  }

  return v9;
}

unint64_t TSCEASTBinaryElement::appendBinaryElement(TSCEASTNodeArray *a1, char a2, uint64_t a3, uint64_t a4)
{
  var1 = a1->var1;
  TSCEASTNodeArray::writeUInt8(a1, a2, a3, a4);
  return var1;
}

void TSCEASTBinaryElement::copyIntoNodeArray(TSCEASTBinaryElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  sub_22120CA10(a3, a2, a3, a4);
  if (*(this + 16))
  {
    v9 = (a3 + 24);
  }

  else
  {
    v9 = *(a3 + 2);
  }

  TSCEASTNodeArray::writeUInt8(a2, *(*v9 + *(this + 1)), v7, v8);
  operator new();
}

uint64_t TSCEASTBinaryElement::precedenceOfNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = (a2 + 24);
  }

  else
  {
    v3 = *(a2 + 16);
  }

  v4 = *(*v3 + *(a3 + 8));
  if (v4 > 12)
  {
    if (v4 > 44)
    {
      if (v4 == 45)
      {
        return 8;
      }

      if (v4 == 69)
      {
        return 7;
      }

      if (v4 != 70)
      {
        return 0;
      }
    }

    else
    {
      if ((v4 - 13) < 2)
      {
        return 6;
      }

      if (v4 != 15)
      {
        if (v4 != 28)
        {
          return 0;
        }

        return 8;
      }
    }

    return 5;
  }

  if (v4 > 4)
  {
    if (v4 == 5)
    {
      return 4;
    }

    if (v4 == 6)
    {
      return 1;
    }
  }

  else
  {
    if ((v4 - 1) < 2)
    {
      return 2;
    }

    if ((v4 - 3) < 2)
    {
      return 3;
    }
  }

  return 0;
}

TSCEASTBinaryElement *TSCEASTBinaryElement::encapsulateInListIfNecessary(TSCEASTBinaryElement *this, TSCEASTRewriter *a2, TSCEASTElement *a3)
{
  if (a3)
  {
    v5 = TSCEASTBinaryElement::precedenceOfNode(this, a2, a3);
    if (v5 > TSCEASTBinaryElement::precedenceOfNode(v5, a2, this))
    {
      TSCEASTRewriter::createList(a2, this, v6, v7, 0);
    }
  }

  return this;
}

int64_t TSCEASTColonElement::size(TSCEASTColonElement *this, TSCEASTIteratorBase *a2)
{
  if (*(this + 16))
  {
    v2 = (a2 + 24);
  }

  else
  {
    v2 = *(a2 + 2);
  }

  if (*(*v2 + *(this + 1)) == 45)
  {
    return TSCEASTElement::sizeOfUndoTractList(this, a2) + 1;
  }

  else
  {
    return 1;
  }
}

void TSCEASTColonElement::setUndoTractList(TSCEASTColonElement *this, TSCEUndoTractList *a2, TSCEASTIteratorBase *a3)
{
  v9 = a2;
  sub_22120CA10(a3, v5, v6, v7);
  *(this + 1) = TSCEASTColonElement::appendColonWithUidTractListElement((a3 + 24), v9, v8);
  *(this + 16) |= 1u;
}

unint64_t TSCEASTColonElement::appendColonWithUidTractListElement(TSCEASTNodeArray *this, TSCEASTNodeArray *a2, TSCEUndoTractList *a3)
{
  v4 = a2;
  var1 = this->var1;
  if (objc_msgSend_tractCount(v4, v6, v7, v8))
  {
    TSCEASTNodeArray::writeUInt8(this, 45, v9, v10);
    TSCEASTNodeArray::writeUidTractList(this, v4);
  }

  else
  {
    var1 = this->var1;
    TSCEASTNodeArray::writeUInt8(this, 28, v9, v10);
  }

  return var1;
}

void TSCEASTColonElement::copyIntoNodeArray(TSCEASTColonElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  sub_22120CA10(a3, a2, a3, a4);
  v7 = (*(*this + 96))(this, a3);
  TSCEASTColonElement::appendColonWithUidTractListElement(a2, v7, v8);

  operator new();
}

double TSCEASTColonElement::rangeReference@<D0>(TSCERangeCoordinate *__return_ptr a1@<X8>, TSCEASTColonElement *this@<X0>, TSCEFormulaRewriteContext **a3@<X1>, TSUPreserveFlags *a4@<X2>, const TSUCellCoord *a5@<X3>)
{
  v45 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v10 = TSCEFormulaRewriteContext::containingCell(a3[1]);
  lower = v10->var0.var0._tableUID._lower;
  upper = v10->var0.var0._tableUID._upper;
  v13 = *(this + 3);
  if (*(this + 4) - v13 > 8uLL)
  {
    v14 = v13[1];
    if (*v13 && v14 != 0)
    {
      v16 = (*(**v13 + 40))(*v13, a3);
      v17 = (*(*v14 + 40))(v14, a3);
      v18 = v17;
      if (*(v16 + 16))
      {
        v19 = a3 + 3;
      }

      else
      {
        v19 = a3[2];
      }

      v20 = *(&(*v19)->var0 + *(v16 + 8));
      if (*(v17 + 16))
      {
        v21 = a3 + 3;
      }

      else
      {
        v21 = a3[2];
      }

      v22 = *(&(*v21)->var0 + *(v17 + 8));
      if (((1 << v20) & 0x200010000000) != 0)
      {
        v23 = 28;
      }

      else
      {
        v23 = v20;
      }

      if (((1 << v20) & 0x600030000) != 0)
      {
        v24 = 16;
      }

      else
      {
        v24 = v23;
      }

      if (v20 > 0x2D)
      {
        v24 = v20;
      }

      if (((1 << v22) & 0x200010000000) != 0)
      {
        v25 = 28;
      }

      else
      {
        v25 = v22;
      }

      if (((1 << v22) & 0x600030000) != 0)
      {
        v26 = 16;
      }

      else
      {
        v26 = v25;
      }

      if (v22 <= 0x2D)
      {
        v22 = v26;
      }

      if (v24 == v22 && v20 == 36)
      {
        (*(*v16 + 136))(&v43, v16, a3, a5);
        (*(*v18 + 136))(&v42, v18, a3, a5);
        upper = *(&v44 + 1);
        lower = v44;
        if (v44 == 0)
        {
          v27 = TSCEFormulaRewriteContext::containingCell(a3[1]);
          lower = v27->var0.var0._tableUID._lower;
          upper = v27->var0.var0._tableUID._upper;
        }

        v28 = TSCEASTRelativeCoordRefElement::preserveFlags(v16, a3);
        a4->_flags = v28 & 3 | (4 * (TSCEASTRelativeCoordRefElement::preserveFlags(v18, a3) & 3));
        v45._topLeft = v43;
        v45._bottomRight = v42;
        TSCERangeCoordinate::fixInversions(&v45, a4);
      }
    }
  }

  v29 = sub_221089E8C(a3);

  if (!v29)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "TSCERangeRef TSCEASTColonElement::rangeReference(TSCEASTIteratorBase *, TSUPreserveFlags &, const TSUCellCoord &)", v31);
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTElements.mm", v35);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v37, v33, v36, 731, 0, "A calculationEngine needs to be set on this rewriter to use TSCEASTColonElement::rangeReference() method.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40);
  }

  result = *&v45._topLeft;
  *a1 = v45;
  a1[1]._topLeft = lower;
  a1[1]._bottomRight = upper;
  return result;
}

uint64_t TSCEASTRelativeCoordRefElement::preserveFlags(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v2 = (a2 + 24);
  }

  else
  {
    v2 = *(a2 + 16);
  }

  v3 = *(a1 + 8);
  v4 = *(*v2 + v3) - 29;
  v5 = v4 > 0x27;
  v6 = (1 << v4) & 0xC000200081;
  if (v5 || v6 == 0)
  {
    v9 = 0;
    if (*(a1 + 16))
    {
LABEL_12:
      v10 = (a2 + 24);
      goto LABEL_15;
    }
  }

  else
  {
    if (*(a1 + 16))
    {
      v8 = (a2 + 24);
    }

    else
    {
      v8 = *(a2 + 16);
    }

    v9 = *(*v8 + v3 + 1) >> 4;
    if (*(a1 + 16))
    {
      goto LABEL_12;
    }
  }

  v10 = *(a2 + 16);
LABEL_15:
  if (*(*v10 + v3) == 29)
  {
    return v9;
  }

  else
  {
    return v9 & 3;
  }
}

id TSCEASTColonElement::uidsForRangeDirection(TSCEASTColonElement *this, TSCEFormulaRewriteContext **a2, const TSUCellCoord *a3, uint64_t a4)
{
  v21._flags = 0;
  TSCEASTColonElement::rangeReference(&v19, this, a2, &v21, a3);
  v18 = v19;
  if (TSCERangeCoordinate::isValid(&v18))
  {
    v6 = sub_221089E8C(a2);
    v9 = objc_msgSend_tableResolverForTableUID_(v6, v7, &v20, v8);

    if (v9)
    {
      v11 = v18._bottomRight.column == 0x7FFF || v18._topLeft.column == 0x7FFF;
      v12 = v18._bottomRight.column - v18._topLeft.column + 1;
      if (v11)
      {
        v12 = 0;
      }

      v13 = v18._bottomRight.row == 0x7FFFFFFF || v18._topLeft.row == 0x7FFFFFFFLL;
      v14 = v18._bottomRight.row - v18._topLeft.row + 1;
      if (v13)
      {
        v14 = 0;
      }

      if (a4)
      {
        row = v18._topLeft.row;
      }

      else
      {
        row = v18._topLeft.column;
      }

      if (a4)
      {
        objc_msgSend_UIDSetForRange_isRows_(v9, v10, row, v14, a4);
      }

      else
      {
        objc_msgSend_UIDSetForRange_isRows_(v9, v10, row, v12, a4);
      }
      v16 = ;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

BOOL TSCEASTColonElement::isEquivalent(TSCEASTColonElement *this, TSCEASTIteratorBase *a2, TSCEASTIteratorBase *a3, TSCEASTElement *a4, uint64_t a5, TSCECellRef *a6, TSCECellRef *a7)
{
  if ((a5 & 1) == 0)
  {
    return TSCEASTElement::isEquivalent(this, a2, a3, a4, a5, a6, a7);
  }

  if (*(a4 + 16))
  {
    v8 = (a3 + 24);
  }

  else
  {
    v8 = *(a3 + 2);
  }

  v9 = *(*v8 + *(a4 + 1));
  return v9 == 28 || v9 == 45;
}

uint64_t TSCEASTColonTractElement::sizeBeforeUndoTractList(TSCEASTColonTractElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 2);
  }

  v6 = *(this + 1);
  v7 = *(*v5 + v6) - 29;
  v8 = v7 > 0x27;
  v9 = (1 << v7) & 0xC000200081;
  if (v8 || v9 == 0)
  {
    v12 = 0;
  }

  else
  {
    if (*(this + 16))
    {
      v11 = (a2 + 24);
    }

    else
    {
      v11 = *(a2 + 2);
    }

    v12 = *(*v11 + v6 + 1);
  }

  if (v12)
  {
    v13 = 19;
  }

  else
  {
    v13 = 3;
  }

  v14 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v14, (v13 + *(this + 1)), v15, v16);
  v17 = v12 & 0xC;
  TSCEASTNodeArrayReader::skipIndexSet(v14, v18, v19, v20);
  if (v17 != 4 && v17 != 8)
  {
    TSCEASTNodeArrayReader::skipIndexSet(v14, v21, v22, v23);
    TSCEASTNodeArrayReader::skipIndexSet(v14, v24, v25, v26);
  }

  TSCEASTNodeArrayReader::skipIndexSet(v14, v21, v22, v23);
  return v14[1] - *(this + 1);
}

uint64_t TSCEASTColonTractElement::size(TSCEASTColonTractElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 16))
  {
    v6 = (a2 + 24);
  }

  else
  {
    v6 = *(a2 + 2);
  }

  v7 = *(this + 1);
  v8 = *(*v6 + v7) - 29;
  v9 = v8 > 0x27;
  v10 = (1 << v8) & 0xC000200081;
  if (v9 || v10 == 0)
  {

    return TSCEASTColonTractElement::sizeBeforeUndoTractList(this, a2, a3, a4);
  }

  else
  {
    if (*(this + 16))
    {
      v12 = (a2 + 24);
    }

    else
    {
      v12 = *(a2 + 2);
    }

    v13 = *(*v12 + v7 + 1);
    v14 = TSCEASTColonTractElement::sizeBeforeUndoTractList(this, a2, a3, a4);
    if ((v13 & 2) != 0)
    {
      v14 += TSCEASTElement::sizeOfUndoTractList(this, a2);
    }

    return v14;
  }
}

uint64_t TSCEASTColonTractElement::colonTractFlags(TSCEASTColonTractElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, (v4[1] + 2), v5, v6);
  v7 = v4[1];
  result = *(**v4 + v7);
  v4[1] = v7 + 1;
  return result;
}

_BYTE *TSCEASTColonTractElement::setColonTractFlags(TSCEASTColonTractElement *this, TSCEASTColonTractFlags a2, uint64_t **a3, uint64_t a4)
{
  result = TSCEASTColonTractElement::colonTractFlags(this, a3, a3, a4);
  if (result != a2._flags)
  {
    v11 = *(this + 1);
    result = sub_22120CA10(a3, v8, v9, v10);
    if (*(this + 16))
    {
      v12 = a3 + 3;
    }

    else
    {
      v12 = a3[2];
    }

    v13 = *v12;
    if (v13)
    {
      *(v13 + v11 + 2) = a2;
    }
  }

  return result;
}

uint64_t TSCEASTColonTractElement::tableUID(TSCEASTColonTractElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 16))
  {
    v4 = (a2 + 24);
  }

  else
  {
    v4 = *(a2 + 2);
  }

  v5 = *(this + 1);
  v6 = *(*v4 + v5) - 29;
  v7 = v6 > 0x27;
  v8 = (1 << v6) & 0xC000200081;
  if (v7 || v8 == 0)
  {
    return 0;
  }

  v10 = (*(this + 16) & 1) != 0 ? (a2 + 24) : *(a2 + 2);
  if ((*(*v10 + v5 + 1) & 1) == 0)
  {
    return 0;
  }

  v12 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v12, (v12[1] + 3), v13, v14);
  v15 = v12[1];
  result = *(**v12 + v15);
  v12[1] = v15 + 16;
  return result;
}

__n128 TSCEASTColonTractElement::setTableUID(TSCEASTColonTractElement *this, __n128 *a2, TSCEASTIteratorBase *a3, uint64_t a4)
{
  v7 = TSCEASTColonTractElement::tableUID(this, a3, a3, a4);
  if (*(this + 16))
  {
    v12 = (a3 + 24);
  }

  else
  {
    v12 = *(a3 + 2);
  }

  v13 = *(this + 1);
  v14 = *(*v12 + v13) - 29;
  v15 = v14 > 0x27;
  v16 = (1 << v14) & 0xC000200081;
  v17 = v15 || v16 == 0;
  if (!v17 && ((*(this + 16) & 1) == 0 ? (v18 = *(a3 + 2)) : (v18 = (a3 + 24)), (*(*v18 + v13 + 1) & 1) != 0))
  {
    if (a2->n128_u64[0] != v7 || a2->n128_u64[1] != v8)
    {
      sub_22120CA10(a3, v8, v9, v10);
      v29 = (*(this + 16) & 1) != 0 ? (a3 + 24) : *(a3 + 2);
      v30 = *v29;
      if (v30)
      {
        result = *a2;
        *(v30 + *(this + 1) + 3) = *a2;
      }
    }
  }

  else
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "void TSCEASTColonTractElement::setTableUID(const TSCEOwnerUID &, TSCEASTIteratorBase *)", v10);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTElements.mm", v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 873, 0, "TableUID must already been set once to use this API. Otherwise, this is changing the element's size.");

    v28 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v28, v25, v26, v27);
  }

  return result;
}

TSCERelativeTractRef *TSCEASTColonTractElement::relativeTractRef(TSCEASTColonTractElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 2);
  }

  v6 = *(this + 1);
  v7 = *(*v5 + v6) - 29;
  v8 = v7 > 0x27;
  v9 = (1 << v7) & 0xC000200081;
  if (v8 || v9 == 0)
  {
    v12 = 0;
  }

  else
  {
    if (*(this + 16))
    {
      v11 = (a2 + 24);
    }

    else
    {
      v11 = *(a2 + 2);
    }

    v12 = *(*v11 + v6 + 1);
  }

  v13 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v13, (*(this + 1) + 2), v14, v15);
  v16._flags = v12;

  return TSCEASTNodeArrayReader::readRelativeTractRef(v13, v16);
}

void TSCEASTColonTractElement::setRelativeTractRef(TSCEASTColonTractElement *this, TSCERelativeTractRef *a2, TSCERelativeTractRef *a3, TSCEASTIteratorBase *a4, char a5)
{
  v54 = a2;
  v11 = a3;
  if (v54)
  {
    v12 = (*(this + 16) & 1) != 0 ? (a4 + 24) : *(a4 + 2);
    v13 = *(this + 1);
    v14 = *(*v12 + v13) - 29;
    v15 = v14 > 0x27;
    v16 = (1 << v14) & 0xC000200081;
    if (v15 || v16 == 0)
    {
      v19 = 0;
    }

    else
    {
      v18 = (*(this + 16) & 1) != 0 ? (a4 + 24) : *(a4 + 2);
      v19 = *(*v18 + v13 + 1);
    }

    v20 = TSCEASTColonTractElement::colonTractFlags(this, a4, v9, v10);
    v24 = objc_msgSend_preserveFlags(v54, v21, v22, v23);
    v28 = objc_msgSend_spansAllColumns(v54, v25, v26, v27);
    v32 = objc_msgSend_spansAllRows(v54, v29, v30, v31);
    v36 = v20 & 0xFFFFFFCF | (16 * ((v24 >> 2) & 3));
    v37 = v28 ? 4 : 0;
    v38 = (16 * (v24 & 3)) | v19 & 0xC3 | v37;
    v39 = v32 ? 8 : 0;
    v40 = v38 | v39;
    if ((a5 & 1) != 0 || v19 != v40 || v36 != v20)
    {
      goto LABEL_38;
    }

    if (!v11)
    {
      v11 = TSCEASTColonTractElement::relativeTractRef(this, a4, v34, v35);
    }

    v41 = objc_msgSend_tableUID(v54, v33, v34, v35);
    if (v41 | v42)
    {
      v45 = objc_msgSend_tableUID(v11, v42, v43, v44);
      if (!(v45 | v42))
      {
        v46 = TSCEFormulaRewriteContext::containingCell(*(a4 + 1));
        objc_msgSend_setTableUID_(v11, v47, v46->var0.var0._tableUID._lower, v46->var0.var0._tableUID._upper);
      }
    }

    if ((objc_msgSend_isEqual_(v54, v42, v11, v44) & 1) == 0)
    {
LABEL_38:
      if (TSCEASTElement::hasUidTracts(this, a4))
      {
        v51 = TSCEASTElement::mutableUndoTractList(this, a4);
      }

      else
      {
        v51 = 0;
      }

      sub_22120CA10(a4, v48, v49, v50);
      v52._flags = v36;
      *(this + 1) = TSCEASTColonTractElement::appendColonTractElement((a4 + 24), v40, v52, v54, v51, v53);
      *(this + 16) |= 1u;
    }
  }
}

unint64_t TSCEASTColonTractElement::appendColonTractElement(TSCEASTNodeArray *this, TSCEASTNodeArray *a2, TSCEASTRefFlags a3, void *a4, TSCERelativeTractRef *a5, TSCEUndoTractList *a6)
{
  v8 = a2;
  v10 = a4;
  v11 = a5;
  v15 = v11;
  var1 = this->var1;
  if (v10)
  {
    if (!objc_msgSend_tractCount(v11, v12, v13, v14))
    {

      v15 = 0;
    }

    v20 = objc_msgSend_tableUID(v10, v17, v18, v19);
    if (v20 | v23)
    {
      v24 = (v8 & 0xFC | (2 * (v15 != 0))) + 1;
    }

    else
    {
      v24 = v8 & 0xFC | (2 * (v15 != 0));
    }

    TSCEASTNodeArray::writeUInt8(this, 67, v21, v22);
    TSCEASTNodeArray::writeUInt8(this, v24, v25, v26);
    v27._flags = v24;
    v28._flags = a3._flags;
    TSCEASTNodeArray::writeRelativeTractRef(this, v27, v28, v10);
    if (v15)
    {
      TSCEASTNodeArray::writeUidTractList(this, v15);
    }
  }

  return var1;
}

void TSCEASTColonTractElement::setUndoTractList(TSCEASTColonTractElement *this, TSCEUndoTractList *a2, TSCEASTIteratorBase *a3)
{
  v31 = a2;
  if (TSCEASTElement::hasUidTracts(this, a3))
  {
    v8 = (*(*this + 96))(this, a3);
  }

  else
  {
    v8 = 0;
  }

  if (objc_msgSend_tractCount(v31, v5, v6, v7))
  {
    v11 = v31;
  }

  else
  {

    v11 = 0;
  }

  v32 = v11;
  if (v11 != v8 && (objc_msgSend_isEqual_(v8, v9, v11, v10) & 1) == 0)
  {
    v16 = TSCEASTColonTractElement::relativeTractRef(this, a3, v12, v13);
    if (*(this + 16))
    {
      v17 = (a3 + 24);
    }

    else
    {
      v17 = *(a3 + 2);
    }

    v18 = *(this + 1);
    v19 = *(*v17 + v18) - 29;
    v20 = v19 > 0x27;
    v21 = (1 << v19) & 0xC000200081;
    if (v20 || v21 == 0)
    {
      v24 = 0;
    }

    else
    {
      if (*(this + 16))
      {
        v23 = (a3 + 24);
      }

      else
      {
        v23 = *(a3 + 2);
      }

      v24 = *(*v23 + v18 + 1);
    }

    v25 = TSCEASTColonTractElement::colonTractFlags(this, a3, v14, v15);
    sub_22120CA10(a3, v26, v27, v28);
    v29._flags = v25;
    *(this + 1) = TSCEASTColonTractElement::appendColonTractElement((a3 + 24), v24, v29, v16, v32, v30);
    *(this + 16) |= 1u;
  }
}

BOOL sub_22133975C(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, int a5, _BYTE *a6)
{
  if (*a1)
  {
    v6 = 0;
  }

  else if ((*a1 & 2) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(*(a1 + 24) + 8);
  }

  if (*a2)
  {
    v7 = 0;
  }

  else if ((*a2 & 2) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(*(a2 + 24) + 8);
  }

  if (v6 != v7)
  {
    return 1;
  }

  if ((*a1 & 2) == 0)
  {
    v8 = *(a1 + 24) + 16 * *(*(a1 + 24) + 24) + 64;
    if ((*a2 & 2) != 0)
    {
      goto LABEL_14;
    }

LABEL_71:
    v9 = *(a2 + 24) + 16 * *(*(a2 + 24) + 24) + 64;
    if (v6)
    {
      goto LABEL_15;
    }

    return 1;
  }

  v8 = a1 + 8;
  if ((*a2 & 2) == 0)
  {
    goto LABEL_71;
  }

LABEL_14:
  v9 = a2 + 8;
  if (v6)
  {
LABEL_15:
    v10 = 0;
    v11 = v6 - 1;
    v12 = (v9 + 8);
    v13 = (v8 + 8);
    while (1)
    {
      v14 = *(v13 - 1);
      v15 = *v13;
      if (a5)
      {
        v16 = (*a6 & 2) != 0 && v10 == 0;
        v17 = !v16;
        if (!v16)
        {
          v14 -= *a3;
        }

        v18 = (*a6 & 8) != 0 && v11 == v10;
        v19 = !v18;
        if (!v18)
        {
          v15 -= *a3;
        }

        v20 = *(v12 - 1);
        if (v17)
        {
          v20 -= *a4;
        }

        v21 = *v12;
        if (!v19)
        {
          goto LABEL_58;
        }

        v22 = *a4;
      }

      else
      {
        v23 = (*a6 & 1) != 0 && v10 == 0;
        v24 = !v23;
        if (!v23)
        {
          v14 -= *(a3 + 2);
        }

        v25 = (*a6 & 4) != 0 && v11 == v10;
        v26 = !v25;
        if (!v25)
        {
          v15 -= *(a3 + 2);
        }

        v20 = *(v12 - 1);
        if (v24)
        {
          v20 -= *(a4 + 2);
        }

        v21 = *v12;
        if (!v26)
        {
          goto LABEL_58;
        }

        v22 = *(a4 + 2);
      }

      v21 -= v22;
LABEL_58:
      v13 += 2;
      result = v14 == v20 && v15 == v21;
      v29 = !result || v11 == v10++;
      v12 += 2;
      if (v29)
      {
        return result;
      }
    }
  }

  return 1;
}

BOOL TSCEASTColonTractElement::isEquivalent(TSCEASTColonTractElement *this, TSCEFormulaRewriteContext **a2, TSCEASTIteratorBase *a3, TSCEASTElement *a4, unint64_t a5, TSCECellRef *a6, TSCECellRef *a7)
{
  if (*(a4 + 16))
  {
    v12 = (a3 + 24);
  }

  else
  {
    v12 = *(a3 + 2);
  }

  if (*(*v12 + *(a4 + 1)) == 67)
  {
    v13 = TSCEASTColonTractElement::relativeTractRef(this, a2, a3, a4);
    v16 = TSCEASTColonTractElement::relativeTractRef(a4, a3, v14, v15);
    if (objc_msgSend_hasTableUID(v13, v17, v18, v19))
    {
      lower = objc_msgSend_tableUID(v13, v20, v21, v22);
      upper = v23;
    }

    else
    {
      v29 = TSCEFormulaRewriteContext::containingCell(a2[1]);
      lower = v29->var0.var0._tableUID._lower;
      upper = v29->var0.var0._tableUID._upper;
    }

    if (objc_msgSend_hasTableUID(v16, v23, v24, v25))
    {
      v33 = objc_msgSend_tableUID(v16, v30, v31, v32);
    }

    else
    {
      v37 = TSCEFormulaRewriteContext::containingCell(*(a3 + 1));
      v33 = v37->var0.var0._tableUID._lower;
      v34 = v37->var0.var0._tableUID._upper;
    }

    v28 = 0;
    if (lower != v33 || upper != v34)
    {
      goto LABEL_18;
    }

    v38 = objc_msgSend_preserveFlags(v13, v34, v35, v36);
    if (v38 != objc_msgSend_preserveFlags(v16, v39, v40, v41) || (v45 = objc_msgSend_spansAllColumns(v13, v42, v43, v44), v45 != objc_msgSend_spansAllColumns(v16, v46, v47, v48)) || (v52 = objc_msgSend_spansAllRows(v13, v49, v50, v51), v52 != objc_msgSend_spansAllRows(v16, v53, v54, v55)))
    {
      v28 = 0;
LABEL_18:

      return v28;
    }

    if (objc_msgSend_spansAllColumns(v13, v56, v57, v58))
    {
      v63 = 1;
    }

    else
    {
      objc_msgSend_columns(v13, v60, v61, v62);
      objc_msgSend_columns(v16, v64, v65, v66);
      if (TSUIndexSet::operator==())
      {
        objc_msgSend_relativeColumns(v13, v60, v61, v62);
        objc_msgSend_relativeColumns(v16, v67, v68, v69);
        v63 = TSUIndexSet::operator==();
      }

      else
      {
        v63 = 0;
      }
    }

    if (!(objc_msgSend_spansAllRows(v13, v60, v61, v62) & 1 | ((v63 & 1) == 0)))
    {
      objc_msgSend_rows(v13, v70, v71, v72);
      objc_msgSend_rows(v16, v73, v74, v75);
      if (!TSUIndexSet::operator==())
      {
        goto LABEL_30;
      }

      objc_msgSend_relativeRows(v13, v70, v76, v72);
      objc_msgSend_relativeRows(v16, v77, v78, v79);
      v63 = TSUIndexSet::operator==();
    }

    if (v63)
    {
      v28 = 1;
      goto LABEL_18;
    }

LABEL_30:
    v28 = 0;
    if (a6 && a7)
    {
      *&v125 = a6->coordinate;
      v80 = objc_msgSend_absoluteCellTractRefForHostCell_(v13, v70, &v125, v72);
      *&v125 = a7->coordinate;
      v83 = objc_msgSend_absoluteCellTractRefForHostCell_(v16, v81, &v125, v82);
      if (objc_msgSend_isRectangularRange(v80, v84, v85, v86) && objc_msgSend_isRectangularRange(v83, v87, v88, v89))
      {
        v90 = objc_msgSend_relativeTopLeft(v13, v87, v88, v89);
        v28 = v90 == objc_msgSend_relativeTopLeft(v16, v91, v92, v93) && (v97 = objc_msgSend_relativeBottomRight(v13, v94, v95, v96), v101 = objc_msgSend_relativeBottomRight(v16, v98, v99, v100), (v97 & 0xFFFFFFFFFFFFFFLL) == (v101 & 0xFFFFFFFFFFFFFFLL)) && (v101 ^ v97) >> 56 == 0;
      }

      else
      {
        objc_msgSend_columns(v80, v87, v88, v89);
        *&v125 = -1;
        *&v102.f64[0] = 0x8000000080000000;
        *&v102.f64[1] = 0x8000000080000000;
        v125._singleRange = vnegq_f64(v102);
        v125._multipleRanges = 0;
        TSUIndexSet::operator=();
        objc_msgSend_columns(v83, v103, v104, v105);
        *&v124 = -1;
        *&v106.f64[0] = 0x8000000080000000;
        *&v106.f64[1] = 0x8000000080000000;
        v124._singleRange = vnegq_f64(v106);
        v124._multipleRanges = 0;
        TSUIndexSet::operator=();
        *&v123 = objc_msgSend_preserveFlags(v13, v107, v108, v109);
        v28 = 0;
        if (sub_22133975C(&v125, &v124, &a6->coordinate, &a7->coordinate, 0, &v123))
        {
          objc_msgSend_rows(v80, v110, v111, v112);
          *&v123 = -1;
          *&v113.f64[0] = 0x8000000080000000;
          *&v113.f64[1] = 0x8000000080000000;
          v123._singleRange = vnegq_f64(v113);
          v123._multipleRanges = 0;
          TSUIndexSet::operator=();
          objc_msgSend_rows(v83, v114, v115, v116);
          *&v122 = -1;
          *&v117.f64[0] = 0x8000000080000000;
          *&v117.f64[1] = 0x8000000080000000;
          v122._singleRange = vnegq_f64(v117);
          v122._multipleRanges = 0;
          TSUIndexSet::operator=();
          v121 = objc_msgSend_preserveFlags(v13, v118, v119, v120);
          v28 = sub_22133975C(&v123, &v122, &a6->coordinate, &a7->coordinate, 1, &v121);
          TSUIndexSet::~TSUIndexSet(&v122);
          TSUIndexSet::~TSUIndexSet(&v123);
        }

        TSUIndexSet::~TSUIndexSet(&v124);
        TSUIndexSet::~TSUIndexSet(&v125);
      }
    }

    goto LABEL_18;
  }

  return 0;
}

uint64_t TSCEASTColonTractElement::mayHaveBeenImplicitIntersection(TSCEASTColonTractElement *this, TSCEFormulaRewriteContext **a2, uint64_t a3, uint64_t a4)
{
  v5 = TSCEASTColonTractElement::relativeTractRef(this, a2, a3, a4);
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  if ((objc_msgSend_spansAllColumns(v5, v6, v7, v8) & 1) != 0 || objc_msgSend_spansAllRows(v5, v9, v10, v11))
  {
    *(v42 + 24) = 1;
  }

  else
  {
    v17 = objc_msgSend_numColumns(v5, v12, v13, v14);
    if (objc_msgSend_numRelativeColumns(v5, v18, v19, v20) + v17 > 1 || (v24 = objc_msgSend_numRows(v5, v21, v22, v23), objc_msgSend_numRelativeRows(v5, v25, v26, v27) + v24 >= 2))
    {
      coordinate = TSCEFormulaRewriteContext::containingCell(a2[1])->var0.var0.coordinate;
      v30 = objc_msgSend_absoluteCellTractRefForHostCell_(v5, v28, &coordinate, v29);
      v34 = objc_msgSend_tableUID(v30, v31, v32, v33);
      if (!(v34 | v35))
      {
        v37 = TSCEFormulaRewriteContext::containingCell(a2[1]);
        objc_msgSend_setTableUID_(v30, v38, v37->var0.var0._tableUID._lower, v37->var0.var0._tableUID._upper);
      }

      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = sub_221339F48;
      v39[3] = &unk_278462E68;
      v39[4] = &v41;
      v39[5] = a2;
      objc_msgSend_foreachRangeRef_(v30, v35, v39, v36);
    }
  }

  v15 = *(v42 + 24);
  _Block_object_dispose(&v41, 8);

  return v15;
}

void sub_221339F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221339F48(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = TSCEFormulaRewriteContext::containingCell(*(*(a1 + 40) + 8));
  v9 = *&v6->var0.var0.coordinate.row;
  upper = v6->var0.var0._tableUID._upper;
  v7 = sub_221089E8C(*(a1 + 40));
  LODWORD(a2) = objc_msgSend_hasValidNontrivialIntersection_containingCellRef_calcEngine_(TSCEFunction_op_ExplicitIntersection, v8, a2, &v9, v7);

  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

unint64_t TSCEASTColonTractElement::appendColonTractElement(TSCEASTNodeArray *this, TSCEASTNodeArray *a2, TSCERelativeTractRef *a3, TSCEUndoTractList *a4)
{
  v6 = a2;
  v7 = a3;
  v11 = objc_msgSend_preserveFlags(v6, v8, v9, v10);
  v15 = objc_msgSend_spansAllRows(v6, v12, v13, v14);
  v19 = objc_msgSend_spansAllColumns(v6, v16, v17, v18);
  v23 = objc_msgSend_preserveRectangular(v6, v20, v21, v22);
  if (v15)
  {
    v25 = 8;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25 & 0xFFFFFFCF | (16 * (v11 & 3));
  if (v19)
  {
    v27 = 4;
  }

  else
  {
    v27 = 0;
  }

  if (v23)
  {
    v28 = 2;
  }

  else
  {
    v28 = 0;
  }

  v29._flags = v28 & 0xCF | (16 * ((v11 >> 2) & 3));
  appended = TSCEASTColonTractElement::appendColonTractElement(this, (v26 | v27), v29, v6, v7, v24);

  return appended;
}

void TSCEASTColonTractElement::copyIntoNodeArray(TSCEASTColonTractElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  sub_22120CA10(a3, a2, a3, a4);
  if (*(this + 16))
  {
    v9 = (a3 + 24);
  }

  else
  {
    v9 = *(a3 + 2);
  }

  v10 = *(this + 1);
  v11 = *(*v9 + v10) - 29;
  v12 = v11 > 0x27;
  v13 = (1 << v11) & 0xC000200081;
  if (v12 || v13 == 0)
  {
    v16 = 0;
  }

  else
  {
    if (*(this + 16))
    {
      v15 = (a3 + 24);
    }

    else
    {
      v15 = *(a3 + 2);
    }

    v16 = *(*v15 + v10 + 1);
  }

  v17 = TSCEASTColonTractElement::colonTractFlags(this, a3, v7, v8);
  v20 = TSCEASTColonTractElement::relativeTractRef(this, a3, v18, v19);
  v21 = (*(*this + 96))(this, a3);
  v22._flags = v17;
  TSCEASTColonTractElement::appendColonTractElement(a2, v16, v22, v20, v21, v23);

  operator new();
}

unint64_t TSCEASTUnaryElement::appendUnaryElement(TSCEASTNodeArray *a1, char a2, uint64_t a3, uint64_t a4)
{
  var1 = a1->var1;
  TSCEASTNodeArray::writeUInt8(a1, a2, a3, a4);
  return var1;
}

void TSCEASTUnaryElement::copyIntoNodeArray(TSCEASTUnaryElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  sub_22120CA10(a3, a2, a3, a4);
  if (*(this + 16))
  {
    v9 = (a3 + 24);
  }

  else
  {
    v9 = *(a3 + 2);
  }

  TSCEASTNodeArray::writeUInt8(a2, *(*v9 + *(this + 1)), v7, v8);
  operator new();
}

BOOL TSCEASTUnaryElement::mayHaveBeenImplicitIntersection(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v2 = (a2 + 24);
  }

  else
  {
    v2 = *(a2 + 16);
  }

  return *(*v2 + *(a1 + 8)) == 70;
}

uint64_t TSCEASTIntersectionElement::rangeContext(TSCEASTIntersectionElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, (v4[1] + 1), v5, v6);
  v7 = v4[1];
  result = *(**v4 + v7);
  v4[1] = v7 + 1;
  return result;
}

_BYTE *TSCEASTIntersectionElement::setRangeContext(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  result = sub_22120CA10(a3, a2, a3, a4);
  if (*(a1 + 16))
  {
    v8 = (a3 + 24);
  }

  else
  {
    v8 = *(a3 + 16);
  }

  v9 = *v8;
  if (v9)
  {
    *(v9 + *(a1 + 8) + 1) = v5;
  }

  return result;
}

void TSCEASTIntersectionElement::copyIntoNodeArray(TSCEASTIntersectionElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  v4 = a3;
  sub_22120CA10(a3, a2, a3, a4);
  LOBYTE(v4) = TSCEASTIntersectionElement::rangeContext(this, v4, v7, v8);
  TSCEASTNodeArray::writeUInt8(a2, 69, v9, v10);
  TSCEASTNodeArray::writeUInt8(a2, v4, v11, v12);
  operator new();
}

unint64_t TSCEASTIntersectionElement::appendIntersectionElement(TSCEASTNodeArray *a1, char a2, uint64_t a3, uint64_t a4)
{
  var1 = a1->var1;
  TSCEASTNodeArray::writeUInt8(a1, 69, a3, a4);
  TSCEASTNodeArray::writeUInt8(a1, a2, v7, v8);
  return var1;
}

unint64_t TSCEASTTagOnlyElement::appendTagOnlyElement(TSCEASTNodeArray *a1, char a2, uint64_t a3, uint64_t a4)
{
  var1 = a1->var1;
  TSCEASTNodeArray::writeUInt8(a1, a2, a3, a4);
  return var1;
}

void TSCEASTTagOnlyElement::copyIntoNodeArray(TSCEASTTagOnlyElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  sub_22120CA10(a3, a2, a3, a4);
  if (*(this + 16))
  {
    v9 = (a3 + 24);
  }

  else
  {
    v9 = *(a3 + 2);
  }

  TSCEASTNodeArray::writeUInt8(a2, *(*v9 + *(this + 1)), v7, v8);
  operator new();
}

uint64_t TSCEASTStringElement::size(TSCEASTStringElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v5 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v5, (v5[1] + 1), v6, v7);
  v8 = v5[1] + *(**v5 + v5[1]) + 8;
  v5[1] = v8;
  return v8 - *(this + 1);
}

id TSCEASTStringElement::string(TSCEASTStringElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, v4[1] + 1, v5, v6);
  v9 = v4[1];
  v10 = **v4;
  v11 = *(v9 + v10);
  v12 = v9 + 1;
  v4[1] = v12;
  if (v11)
  {
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v12 + v10, v8);
    v4[1] = (v4[1] + v11);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void TSCEASTStringElement::setString(TSCEASTStringElement *this, NSString *a2, TSCEASTIteratorBase *a3)
{
  v9 = a2;
  sub_22120CA10(a3, v5, v6, v7);
  *(this + 1) = TSCEASTStringElement::appendStringElement((a3 + 24), v9, v8);
  *(this + 16) |= 1u;
}

unint64_t TSCEASTStringElement::appendStringElement(TSCEASTNodeArray *this, TSCEASTNodeArray *a2, NSString *a3)
{
  v4 = a2;
  var1 = this->var1;
  TSCEASTNodeArray::writeUInt8(this, 20, v6, v7);
  TSCEASTNodeArray::writeString(this, v4);

  return var1;
}

void TSCEASTStringElement::copyIntoNodeArray(TSCEASTStringElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  sub_22120CA10(a3, a2, a3, a4);
  v9 = TSCEASTStringElement::string(this, a3, v7, v8);
  TSCEASTStringElement::appendStringElement(a2, v9, v10);

  operator new();
}

unint64_t TSCEASTNumberElement::value(TSCEASTNumberElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, (v4[1] + 1), v5, v6);
  v7 = v4[1];
  v4[1] = v7 + 8;
  v4[1] = v7 + 16;
  TSUDecimal::TSUDecimal(&v9);
  return v9._decimal.w[0];
}

uint64_t TSCEASTNumberElement::setValue(TSCEASTNumberElement *this, TSUDecimal *a2, TSCEASTIteratorBase *a3, uint64_t a4)
{
  sub_22120CA10(a3, a2, a3, a4);
  if (*(this + 16))
  {
    v7 = (a3 + 24);
  }

  else
  {
    v7 = *(a3 + 2);
  }

  v8 = *(this + 1);
  v9 = TSUDecimal::low(a2);
  result = TSUDecimal::high(a2);
  if (*v7)
  {
    *(*v7 + v8 + 1) = v9;
    if (*v7)
    {
      *(*v7 + v8 + 9) = result;
    }
  }

  return result;
}

unint64_t TSCEASTNumberElement::appendNumberElement(TSCEASTNodeArray *this, TSUDecimal *a2, const TSUDecimal *a3, uint64_t a4)
{
  var1 = this->var1;
  TSCEASTNodeArray::writeUInt8(this, 18, a3, a4);
  v7 = TSUDecimal::low(a2);
  v8 = TSUDecimal::high(a2);
  TSCEASTNodeArray::writeUInt64(this, v7, v9, v10);
  TSCEASTNodeArray::writeUInt64(this, v8, v11, v12);
  return var1;
}

void TSCEASTNumberElement::copyIntoNodeArray(TSCEASTNumberElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  sub_22120CA10(a3, a2, a3, a4);
  v12._decimal.w[0] = TSCEASTNumberElement::value(this, a3, v7, v8);
  v12._decimal.w[1] = v9;
  TSCEASTNumberElement::appendNumberElement(a2, &v12, v10, v11);
  operator new();
}

BOOL TSCEASTBooleanElement::value(TSCEASTBooleanElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, (v4[1] + 1), v5, v6);
  v7 = v4[1];
  v8 = *(**v4 + v7);
  v4[1] = v7 + 1;
  return v8 != 0;
}

_BYTE *TSCEASTBooleanElement::setValue(TSCEASTBooleanElement *this, const char *a2, TSCEASTIteratorBase *a3, uint64_t a4)
{
  v5 = a2;
  result = sub_22120CA10(a3, a2, a3, a4);
  if (*(this + 16))
  {
    v8 = (a3 + 24);
  }

  else
  {
    v8 = *(a3 + 2);
  }

  v9 = *v8;
  if (v9)
  {
    *(v9 + *(this + 1) + 1) = v5;
  }

  return result;
}

unint64_t TSCEASTBooleanElement::appendBooleanElement(TSCEASTNodeArray *this, TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  var1 = this->var1;
  TSCEASTNodeArray::writeUInt8(this, 19, a3, a4);
  TSCEASTNodeArray::writeUInt8(this, v4, v7, v8);
  return var1;
}

void TSCEASTBooleanElement::copyIntoNodeArray(TSCEASTBooleanElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  v4 = a3;
  sub_22120CA10(a3, a2, a3, a4);
  LOBYTE(v4) = TSCEASTBooleanElement::value(this, v4, v7, v8);
  TSCEASTNodeArray::writeUInt8(a2, 19, v9, v10);
  TSCEASTNodeArray::writeUInt8(a2, v4, v11, v12);
  operator new();
}

uint64_t TSCEASTDateElement::size(TSCEASTDateElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v5 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v5, (v5[1] + 9), v6, v7);
  v8 = v5[1] + *(**v5 + v5[1]);
  v5[1] = v8 + 8;
  sub_22120C7F0(v5, (v8 + 9), v9, v10);
  return v5[1] - *(this + 1);
}

double TSCEASTDateElement::valueAsIntervalSinceReferenceDate(TSCEASTDateElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, (v4[1] + 1), v5, v6);
  v7 = v4[1];
  result = *(**v4 + v7);
  v4[1] = v7 + 8;
  return result;
}

uint64_t TSCEASTDateElement::value(TSCEASTDateElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v7 = TSCEASTDateElement::valueAsIntervalSinceReferenceDate(this, a2, a3, a4);
  v8 = MEMORY[0x277CBEAA8];

  return objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v8, v4, v5, v6, v7);
}

void TSCEASTDateElement::setValue(TSCEASTDateElement *this, NSDate *a2, TSCEASTIteratorBase *a3)
{
  v14 = a2;
  sub_22120CA10(a3, v5, v6, v7);
  if (*(this + 16))
  {
    v11 = (a3 + 24);
  }

  else
  {
    v11 = *(a3 + 2);
  }

  v12 = *(this + 1);
  objc_msgSend_timeIntervalSinceReferenceDate(v14, v8, v9, v10);
  if (*v11)
  {
    *(*v11 + v12 + 1) = v13;
  }
}

id TSCEASTDateElement::dateTimeFormat(TSCEASTDateElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, v4[1] + 9, v5, v6);
  v9 = v4[1];
  v10 = **v4;
  v11 = *(v9 + v10);
  v12 = v9 + 1;
  v4[1] = v12;
  if (v11)
  {
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v12 + v10, v8);
    v4[1] = (v4[1] + v11);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void TSCEASTDateElement::setDateTimeFormat(TSCEASTDateElement *this, NSString *a2, uint64_t **a3)
{
  v43 = a2;
  sub_22120CA10(a3, v5, v6, v7);
  v10 = TSCEASTDateElement::dateTimeFormat(this, a3, v8, v9);
  v13 = v10;
  if (v10 != v43 && (objc_msgSend_isEqualToString_(v10, v11, v43, v12) & 1) == 0)
  {
    v17 = objc_msgSend_length(v13, v14, v15, v16);
    if (v17 == objc_msgSend_length(v43, v18, v19, v20))
    {
      if (*(this + 16))
      {
        v23 = a3 + 3;
      }

      else
      {
        v23 = a3[2];
      }

      v35 = *(this + 1);
      v36 = v43;
      v40 = objc_msgSend_UTF8String(v36, v37, v38, v39);
      __src = v40;
      if (v40)
      {
        v41 = *v23;
        if (v41)
        {
          v42 = strlen(v40);
          memcpy(v41 + v35 + 17, &__src, v42 + 1);
        }
      }
    }

    else
    {
      v24 = TSCEASTDateElement::valueAsIntervalSinceReferenceDate(this, a3, v21, v22);
      v28 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v25, v26, v27, v24);
      v31 = TSCEASTDateElement::suppressDateFormat(this, a3, v29, v30);
      v34 = TSCEASTDateElement::suppressTimeFormat(this, a3, v32, v33);
      *(this + 1) = TSCEASTDateElement::appendDateElement((a3 + 3), v28, v43, v31, v34);
      *(this + 16) |= 1u;
    }
  }
}

uint64_t TSCEASTDateElement::suppressDateFormat(TSCEASTDateElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, v4[1] + 9, v5, v6);
  v7 = **v4;
  v8 = v4[1] + *(v4[1] + v7);
  v4[1] = (v8 + 8);
  LOBYTE(v7) = *(v7 + v8 + 8);
  v4[1] = (v8 + 9);
  return v7 & 1;
}

uint64_t TSCEASTDateElement::suppressTimeFormat(TSCEASTDateElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, v4[1] + 9, v5, v6);
  v7 = **v4;
  v8 = v4[1] + *(v4[1] + v7);
  v4[1] = (v8 + 8);
  LODWORD(v7) = *(v7 + v8 + 8);
  v4[1] = (v8 + 9);
  return (v7 >> 1) & 1;
}

unint64_t TSCEASTDateElement::appendDateElement(TSCEASTNodeArray *this, TSCEASTNodeArray *a2, NSDate *a3, NSString *a4, int a5)
{
  v6 = a4;
  v9 = a2;
  v10 = a3;
  var1 = this->var1;
  TSCEASTNodeArray::writeUInt8(this, 21, v12, v13);
  objc_msgSend_timeIntervalSinceReferenceDate(v9, v14, v15, v16);
  TSCEASTNodeArray::writeDouble(this, v20, v17, v18, v19);
  TSCEASTNodeArray::writeString(this, v10);
  if (a5)
  {
    v23 = 2;
  }

  else
  {
    v23 = 0;
  }

  TSCEASTNodeArray::writeUInt8(this, v23 | v6, v21, v22);

  return var1;
}

void *TSCEASTDateElement::setSuppressDateTimeFormats(TSCEASTDateElement *this, const char *a2, uint64_t a3, uint64_t **a4)
{
  v5 = a3;
  v6 = a2;
  sub_22120CA10(a4, a2, a3, a4);
  v10 = TSCEASTIteratorBase::readerForElement(a4, this, v8, v9);
  result = sub_22120C7F0(v10, (v10[1] + 9), v11, v12);
  v14 = v10[1] + *(**v10 + v10[1]) + 8;
  v10[1] = v14;
  if (*(this + 16))
  {
    v15 = a4 + 3;
  }

  else
  {
    v15 = a4[2];
  }

  v16 = *v15;
  if (v16)
  {
    if (v5)
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    *(v16 + v14) = v17 | v6;
  }

  return result;
}

void TSCEASTDateElement::copyIntoNodeArray(TSCEASTDateElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  sub_22120CA10(a3, a2, a3, a4);
  v9 = TSCEASTDateElement::valueAsIntervalSinceReferenceDate(this, a3, v7, v8);
  v13 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v10, v11, v12, v9);
  v16 = TSCEASTDateElement::dateTimeFormat(this, a3, v14, v15);
  v19 = TSCEASTDateElement::suppressDateFormat(this, a3, v17, v18);
  v22 = TSCEASTDateElement::suppressTimeFormat(this, a3, v20, v21);
  TSCEASTDateElement::appendDateElement(a2, v13, v16, v19, v22);

  operator new();
}

double TSCEASTDurationElement::unitNum(TSCEASTDurationElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, (v4[1] + 1), v5, v6);
  v7 = v4[1];
  result = *(**v4 + v7);
  v4[1] = v7 + 8;
  return result;
}

_BYTE *TSCEASTDurationElement::setUnitNum(TSCEASTDurationElement *this, double a2, TSCEASTIteratorBase *a3, uint64_t a4, uint64_t a5)
{
  result = sub_22120CA10(a3, a3, a4, a5);
  if (*(this + 16))
  {
    v9 = (a3 + 24);
  }

  else
  {
    v9 = *(a3 + 2);
  }

  v10 = *v9;
  if (v10)
  {
    *(v10 + *(this + 1) + 1) = a2;
  }

  return result;
}

uint64_t TSCEASTDurationElement::unit(TSCEASTDurationElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, (v4[1] + 9), v5, v6);
  v7 = v4[1];
  result = *(**v4 + v7);
  v4[1] = v7 + 2;
  return result;
}

_BYTE *TSCEASTDurationElement::setUnit(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  result = sub_22120CA10(a3, a2, a3, a4);
  if (*(a1 + 16))
  {
    v8 = (a3 + 24);
  }

  else
  {
    v8 = *(a3 + 16);
  }

  v9 = *v8;
  if (v9)
  {
    *(v9 + *(a1 + 8) + 9) = v5;
  }

  return result;
}

uint64_t TSCEASTDurationElement::durationFormat(TSCEASTDurationElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, v4[1] + 11, v5, v6);
  v7 = v4[1];
  v8 = **v4;
  v9 = *(v7 + v8);
  v4[1] = (v7 + 1);
  v10 = *(v7 + v8 + 1);
  v4[1] = (v7 + 2);
  v11 = *(v7 + v8 + 2);
  v4[1] = (v7 + 3);
  LOBYTE(v8) = *(v7 + v8 + 3);
  v4[1] = (v7 + 4);
  return v8 & 1 | (2 * (v9 & 0x3F)) | ((v10 & 0x3F) << 8) | ((v11 & 7) << 16);
}

_BYTE *TSCEASTDurationElement::setDurationFormat(TSCEASTDurationElement *this, const TSCEDurationFormat *a2, TSCEASTIteratorBase *a3, uint64_t a4)
{
  result = sub_22120CA10(a3, a2, a3, a4);
  if (*(this + 16))
  {
    v8 = (a3 + 24);
  }

  else
  {
    v8 = *(a3 + 2);
  }

  if (*v8)
  {
    v9 = *(this + 1);
    v10 = *a2;
    v11 = *(a2 + 2);
    *(*v8 + v9 + 11) = (v10 >> 1) & 0x3F;
    if (*v8)
    {
      *(*v8 + v9 + 12) = BYTE1(v10) & 0x3F;
      if (*v8)
      {
        *(*v8 + v9 + 13) = v11 & 7;
        v12 = *v8;
        if (v12)
        {
          *(v12 + v9 + 14) = *a2 & 1;
        }
      }
    }
  }

  return result;
}

unint64_t TSCEASTDurationElement::appendDurationElement(TSCEASTNodeArray *a1, double a2, __int16 a3, _BYTE *a4, uint64_t a5)
{
  v27 = a3;
  var1 = a1->var1;
  TSCEASTNodeArray::writeUInt8(a1, 22, a4, a5);
  TSCEASTNodeArray::writeDouble(a1, a2, v9, v10, v11);
  sub_22133B660(a1, &v27, v12, v13);
  v26 = (*a4 >> 1) & 0x3F;
  sub_22133B77C(a1, &v26, v14, v15);
  v25 = a4[1] & 0x3F;
  sub_22133B77C(a1, &v25, v16, v17);
  v24 = a4[2] & 7;
  sub_22133B894(a1, &v24, v18, v19);
  v23 = *a4 & 1;
  sub_22133B9AC(a1, &v23, v20, v21);
  return var1;
}

void sub_22133B660(TSCEASTNodeArray *this, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!this->var0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTNodeArray::write(const T &) [T = TSCEBaseUnit]", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.h", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 171, 0, "invalid nil value for '%{public}s'", "_nodeArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  var1 = this->var1;
  if (this->var2 - var1 < 2 || (var0 = this->var0) == 0)
  {
    TSCEASTNodeArray::resizeCapacity(this, 2uLL, a3, a4);
    var0 = this->var0;
    if (!this->var0)
    {
      return;
    }

    var1 = this->var1;
  }

  *&var0[var1] = *a2;
  this->var1 += 2;
}

void sub_22133B77C(TSCEASTNodeArray *this, char *a2, uint64_t a3, uint64_t a4)
{
  if (!this->var0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTNodeArray::write(const T &) [T = unsigned char]", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.h", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 171, 0, "invalid nil value for '%{public}s'", "_nodeArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  var1 = this->var1;
  if (this->var2 == var1 || (var0 = this->var0) == 0)
  {
    TSCEASTNodeArray::resizeCapacity(this, 1uLL, a3, a4);
    var0 = this->var0;
    if (!this->var0)
    {
      return;
    }

    var1 = this->var1;
  }

  var0[var1] = *a2;
  ++this->var1;
}

void sub_22133B894(TSCEASTNodeArray *this, char *a2, uint64_t a3, uint64_t a4)
{
  if (!this->var0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTNodeArray::write(const T &) [T = TSUDurationStyle]", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.h", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 171, 0, "invalid nil value for '%{public}s'", "_nodeArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  var1 = this->var1;
  if (this->var2 == var1 || (var0 = this->var0) == 0)
  {
    TSCEASTNodeArray::resizeCapacity(this, 1uLL, a3, a4);
    var0 = this->var0;
    if (!this->var0)
    {
      return;
    }

    var1 = this->var1;
  }

  var0[var1] = *a2;
  ++this->var1;
}

void sub_22133B9AC(TSCEASTNodeArray *this, char *a2, uint64_t a3, uint64_t a4)
{
  if (!this->var0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTNodeArray::write(const T &) [T = BOOL]", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.h", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 171, 0, "invalid nil value for '%{public}s'", "_nodeArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  var1 = this->var1;
  if (this->var2 == var1 || (var0 = this->var0) == 0)
  {
    TSCEASTNodeArray::resizeCapacity(this, 1uLL, a3, a4);
    var0 = this->var0;
    if (!this->var0)
    {
      return;
    }

    var1 = this->var1;
  }

  var0[var1] = *a2;
  ++this->var1;
}

void TSCEASTDurationElement::copyIntoNodeArray(TSCEASTDurationElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  sub_22120CA10(a3, a2, a3, a4);
  v9 = TSCEASTDurationElement::unitNum(this, a3, v7, v8);
  v12 = TSCEASTDurationElement::unit(this, a3, v10, v11);
  v15 = TSCEASTDurationElement::durationFormat(this, a3, v13, v14);
  v17 = v15;
  v18 = BYTE2(v15);
  TSCEASTDurationElement::appendDurationElement(a2, v9, v12, &v17, v16);
  operator new();
}

BOOL TSCEASTTokenElement::isOptional(TSCEASTTokenElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, (v4[1] + 1), v5, v6);
  v7 = v4[1];
  v8 = *(**v4 + v7);
  v4[1] = v7 + 1;
  return v8 != 0;
}

_BYTE *TSCEASTTokenElement::setIsOptional(TSCEASTTokenElement *this, const char *a2, TSCEASTIteratorBase *a3, uint64_t a4)
{
  v5 = a2;
  result = sub_22120CA10(a3, a2, a3, a4);
  if (*(this + 16))
  {
    v8 = (a3 + 24);
  }

  else
  {
    v8 = *(a3 + 2);
  }

  v9 = *v8;
  if (v9)
  {
    *(v9 + *(this + 1) + 1) = v5;
  }

  return result;
}

unint64_t TSCEASTTokenElement::appendTokenElement(TSCEASTNodeArray *this, TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  var1 = this->var1;
  TSCEASTNodeArray::writeUInt8(this, 24, a3, a4);
  TSCEASTNodeArray::writeUInt8(this, v4, v7, v8);
  return var1;
}

void TSCEASTTokenElement::copyIntoNodeArray(TSCEASTTokenElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  v4 = a3;
  sub_22120CA10(a3, a2, a3, a4);
  LOBYTE(v4) = TSCEASTTokenElement::isOptional(this, v4, v7, v8);
  TSCEASTNodeArray::writeUInt8(a2, 24, v9, v10);
  TSCEASTNodeArray::writeUInt8(a2, v4, v11, v12);
  operator new();
}

const char *TSCEASTFunctionElement::size(TSCEASTFunctionElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 2);
  }

  v6 = *(this + 1);
  v7 = v6[*v5];
  v8 = v6 + 3;
  if (v7 <= 0x20)
  {
    if (v7 == 16)
    {
      v8 = v6 + 4;
      return &v8[-*(this + 1)];
    }

    if (v7 == 17)
    {
      v8 = v6 + 7;
      return &v8[-*(this + 1)];
    }

LABEL_11:
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual size_t TSCEASTFunctionElement::size(TSCEASTIteratorBase *) const", a4);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTElements.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 1685, 0, "Unknown tag for TSCEASTFunctionElement: %d", v7);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
    return &v8[-*(this + 1)];
  }

  if (v7 == 33)
  {
    v9 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
    sub_22120C7F0(v9, v8, v27, v28);
    v29 = v9[1];
    v15 = **v9;
    v9[1] = (v29 + 1);
    v16 = *(v29 + v15 + 1);
    v17 = (v29 + 9);
  }

  else
  {
    if (v7 != 34)
    {
      goto LABEL_11;
    }

    v9 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
    sub_22120C7F0(v9, v8, v10, v11);
    v14 = v9[1];
    v15 = **v9;
    v9[1] = (v14 + 4);
    v16 = *(v14 + v15 + 4);
    v17 = (v14 + 12);
  }

  v9[1] = v17;
  if (v16)
  {
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v17 + v15, v13);
    v9[1] = (v9[1] + v16);
  }

  else
  {
    v30 = 0;
  }

  v8 = v9[1];
  return &v8[-*(this + 1)];
}

uint64_t TSCEASTFunctionElement::functionIndex(TSCEASTFunctionElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, (v4[1] + 1), v5, v6);
  v7 = v4[1];
  result = *(**v4 + v7);
  v4[1] = v7 + 2;
  return result;
}

_BYTE *TSCEASTFunctionElement::setFunctionIndex(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  result = sub_22120CA10(a3, a2, a3, a4);
  if (*(a1 + 16))
  {
    v8 = (a3 + 24);
  }

  else
  {
    v8 = *(a3 + 16);
  }

  v9 = *v8;
  if (v9)
  {
    *(v9 + *(a1 + 8) + 1) = v5;
  }

  return result;
}

uint64_t TSCEASTFunctionElement::numArgs(TSCEASTFunctionElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 16))
  {
    v4 = (a2 + 24);
  }

  else
  {
    v4 = *(a2 + 2);
  }

  v5 = *(*v4 + *(this + 1));
  v6 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v6, (v6[1] + 3), v7, v8);
  v9 = v5 == 34 || v5 == 17;
  v10 = v6[1];
  if (v9)
  {
    result = *(**v6 + v10);
    v12 = v10 + 4;
  }

  else
  {
    result = *(**v6 + v10);
    v12 = v10 + 1;
  }

  v6[1] = v12;
  return result;
}

_BYTE *TSCEASTFunctionElement::setNumArgs(TSCEASTFunctionElement *this, const char *a2, TSCEASTIteratorBase *a3, uint64_t a4)
{
  v5 = a2;
  result = sub_22120CA10(a3, a2, a3, a4);
  if (*(this + 16))
  {
    v10 = (a3 + 24);
  }

  else
  {
    v10 = *(a3 + 2);
  }

  v11 = *(this + 1);
  v12 = *v10;
  v13 = *(v12 + v11);
  v14 = v11 + 3;
  if (v13 > 32)
  {
    if (v13 == 34)
    {
LABEL_12:
      if (v12)
      {
        *(v12 + v14) = v5;
      }

      return result;
    }

    if (v13 != 33)
    {
LABEL_15:
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "void TSCEASTFunctionElement::setNumArgs(uint32_t, TSCEASTIteratorBase *)", v9);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTElements.mm", v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 1750, 0, "Unhandled function tag: %d", v13);

      v24 = MEMORY[0x277D81150];

      return objc_msgSend_logBacktraceThrottled(v24, v21, v22, v23);
    }
  }

  else if (v13 != 16)
  {
    if (v13 != 17)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v12)
  {
    *(v12 + v14) = v5;
  }

  return result;
}

BOOL TSCEASTFunctionElement::hasWhiteSpace(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v2 = (a2 + 24);
  }

  else
  {
    v2 = *(a2 + 16);
  }

  return *(*v2 + *(a1 + 8)) - 33 < 2;
}

id TSCEASTFunctionElement::whitespace(TSCEASTFunctionElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 2);
  }

  v6 = *(*v5 + *(this + 1));
  if ((v6 - 33) <= 1 && ((v7 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4), sub_22120C7F0(v7, v7[1] + 3, v8, v9), v12 = v7[1], v6 != 34) ? (v13 = v12 + 1) : (v13 = v12 + 4), sub_22120C7F0(v7, v13, v10, v11), v16 = v7[1], v17 = **v7, v18 = *(v16 + v17), v19 = v16 + 1, v7[1] = v19, v18))
  {
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v19 + v17, v15);
    v7[1] = (v7[1] + v18);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t TSCEASTFunctionElement::functionSpec(TSCEASTFunctionElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v5 = TSCEASTFunctionElement::functionIndex(this, a2, a3, a4);

  return objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v4, v5, v6);
}

uint64_t TSCEASTFunctionElement::mayHaveBeenImplicitIntersection(TSCEASTFunctionElement *this, TSCEASTRewriter *a2)
{
  v4 = (*(*this + 80))(this);
  LOBYTE(v8) = objc_msgSend_mayHaveBeenImplicitIntersection(v4, v5, v6, v7);
  v12 = objc_msgSend_functionIndex(v4, v9, v10, v11);
  v13 = (*(*this + 48))(this, a2);
  v14 = v13;
  if (v12 <= 128)
  {
    if (v12 == 19)
    {
      goto LABEL_5;
    }

    if (v12 != 22)
    {
      if (v12 != 62)
      {
        return v8 & 1;
      }

LABEL_5:
      if (v13 >= 2)
      {
        v15 = v13 - 2;
        v16 = 1;
        do
        {
          v17 = v15;
          v18 = *(*(this + 3) + 8 * v16);
          LOBYTE(v8) = (*(*v18 + 88))(v18, a2);
          if (v8)
          {
            break;
          }

          ++v16;
          v15 = v17 - 1;
        }

        while (v17);
        return v8 & 1;
      }

LABEL_32:
      LOBYTE(v8) = 0;
      return v8 & 1;
    }

    goto LABEL_17;
  }

  if (v12 == 129)
  {
LABEL_17:
    if (!v13)
    {
      goto LABEL_32;
    }

    v22 = *(this + 3);
    v23 = *(this + 4);
    v24 = v23 == v22 ? 0 : *v22;
    v31 = (*(v24 + 16) & 1) != 0 ? (a2 + 24) : *(a2 + 2);
    v32 = *(*v31 + *(v24 + 8));
    if ((v32 - 23) < 2)
    {
      goto LABEL_32;
    }

    if (v32 != 36)
    {
      return v8 & 1;
    }

    if (v23 == v22)
    {
      v34 = 0;
    }

    else
    {
      v34 = *v22;
    }

    v35 = *(v34 + 16);
    if (v35)
    {
      v36 = (a2 + 24);
    }

    else
    {
      v36 = *(a2 + 2);
    }

    v37 = *(v34 + 8);
    v38 = *(*v36 + v37) - 29;
    if (v38 <= 0x27 && ((1 << v38) & 0xC000200081) != 0)
    {
      v40 = (v35 & 1) != 0 ? (a2 + 24) : *(a2 + 2);
      if ((*(*v40 + v37 + 1) & 0xC) == 8)
      {
        LOBYTE(v8) = 1;
        return v8 & 1;
      }
    }

    v41 = (v35 & 1) != 0 ? (a2 + 24) : *(a2 + 2);
    v42 = *(*v41 + v37) - 29;
    if (v42 > 0x27 || ((1 << v42) & 0xC000200081) == 0)
    {
      goto LABEL_32;
    }

    if (v35)
    {
      v44 = (a2 + 24);
    }

    else
    {
      v44 = *(a2 + 2);
    }

    LOBYTE(v8) = (*(*v44 + v37 + 1) & 0xC) == 4;
    return v8 & 1;
  }

  if (v12 != 336)
  {
    if (v12 != 235)
    {
      return v8 & 1;
    }

    if (v13)
    {
      v19 = 0;
      v8 = 0;
      v20 = v13;
      do
      {
        v21 = *(*(this + 3) + 8 * v19);
        v8 |= (*(*v21 + 88))(v21, a2);
        ++v19;
      }

      while (v20 != v19);
      return v8 & 1;
    }

    goto LABEL_32;
  }

  if (!v13)
  {
    goto LABEL_32;
  }

  v25 = *(*(this + 3) + 8 * (v13 - 1));
  v26 = (*(*v25 + 88))(v25, a2);
  v27 = v26;
  if (v14 < 3)
  {
    LOBYTE(v8) = v26;
  }

  else
  {
    v28 = 4;
    do
    {
      v29 = *(*(this + 3) + 8 * (v28 - 2));
      LOBYTE(v8) = (*(*v29 + 88))(v29, a2) | v27;
      if (v8)
      {
        break;
      }

      v27 = 0;
      v30 = v28 >= v14;
      v28 += 2;
    }

    while (!v30);
  }

  return v8 & 1;
}

BOOL TSCEASTRelativeCoordRefElement::spansAllRows(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v2 = (a2 + 24);
  }

  else
  {
    v2 = *(a2 + 16);
  }

  v3 = *(a1 + 8);
  v4 = *(*v2 + v3) - 29;
  v5 = v4 > 0x27;
  v6 = (1 << v4) & 0xC000200081;
  if (v5 || v6 == 0)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    v8 = (a2 + 24);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  return (*(*v8 + v3 + 1) & 0xC) == 8;
}

BOOL TSCEASTRelativeCoordRefElement::spansAllColumns(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v2 = (a2 + 24);
  }

  else
  {
    v2 = *(a2 + 16);
  }

  v3 = *(a1 + 8);
  v4 = *(*v2 + v3) - 29;
  v5 = v4 > 0x27;
  v6 = (1 << v4) & 0xC000200081;
  if (v5 || v6 == 0)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    v8 = (a2 + 24);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  return (*(*v8 + v3 + 1) & 0xC) == 4;
}

unint64_t TSCEASTFunctionElement::appendFunctionElement(TSCEASTNodeArray *this, TSCEASTNodeArray *a2, unsigned int a3, void *a4, NSString *a5)
{
  v6 = a2;
  v8 = a4;
  var1 = this->var1;
  v13 = objc_msgSend_length(v8, v10, v11, v12);
  v16 = v13;
  if (a3 < 0x100)
  {
    if (v13)
    {
      v22 = 33;
    }

    else
    {
      v22 = 16;
    }

    TSCEASTNodeArray::writeUInt8(this, v22, v14, v15);
    TSCEASTNodeArray::writeUInt16(this, v6, v23, v24);
    TSCEASTNodeArray::writeUInt8(this, a3, v25, v26);
  }

  else
  {
    if (v13)
    {
      v17 = 34;
    }

    else
    {
      v17 = 17;
    }

    TSCEASTNodeArray::writeUInt8(this, v17, v14, v15);
    TSCEASTNodeArray::writeUInt16(this, v6, v18, v19);
    TSCEASTNodeArray::writeUInt32(this, a3, v20, v21);
  }

  if (v16)
  {
    TSCEASTNodeArray::writeString(this, v8);
  }

  return var1;
}

void TSCEASTFunctionElement::copyIntoNodeArray(TSCEASTFunctionElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  sub_22120CA10(a3, a2, a3, a4);
  v9 = TSCEASTFunctionElement::functionIndex(this, a3, v7, v8);
  v10 = (*(*this + 48))(this, a3);
  v13 = TSCEASTFunctionElement::whitespace(this, a3, v11, v12);
  TSCEASTFunctionElement::appendFunctionElement(a2, v9, v10, v13, v14);

  operator new();
}

uint64_t TSCEASTUnknownFunctionElement::size(TSCEASTUnknownFunctionElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v5 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  v7 = *v5;
  v6 = v5[1];
  v5[1] = v6 + 1;
  v8 = v6 + *(*v7 + v6 + 1) + 13;
  v5[1] = v8;
  return v8 - *(this + 1);
}

id TSCEASTUnknownFunctionElement::unknownFunctionName(TSCEASTUnknownFunctionElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, v4[1] + 1, v5, v6);
  v9 = v4[1];
  v10 = **v4;
  v11 = *(v9 + v10);
  v12 = v9 + 1;
  v4[1] = v12;
  if (v11)
  {
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v12 + v10, v8);
    v4[1] = (v4[1] + v11);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void TSCEASTUnknownFunctionElement::setUnknownFunctionName(TSCEASTUnknownFunctionElement *this, NSString *a2, TSCEASTIteratorBase *a3)
{
  v9 = a2;
  sub_22120CA10(a3, v5, v6, v7);
  v8 = (*(*this + 48))(this, a3);
  *(this + 1) = TSCEASTUnknownFunctionElement::appendUnknownFunctionElement((a3 + 24), v9, v8);
  *(this + 16) |= 1u;
}

unint64_t TSCEASTUnknownFunctionElement::appendUnknownFunctionElement(TSCEASTNodeArray *this, TSCEASTNodeArray *a2, NSString *a3)
{
  v3 = a3;
  v5 = a2;
  var1 = this->var1;
  TSCEASTNodeArray::writeUInt8(this, 30, v7, v8);
  TSCEASTNodeArray::writeString(this, v5);
  TSCEASTNodeArray::writeUInt32(this, v3, v9, v10);

  return var1;
}

uint64_t TSCEASTUnknownFunctionElement::numArgs(TSCEASTUnknownFunctionElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  v6 = *v4;
  v5 = v4[1];
  v4[1] = (v5 + 1);
  v7 = *v6;
  v8 = v5 + *(v5 + v7 + 1);
  v4[1] = (v8 + 9);
  v9 = *(v7 + v8 + 9);
  v4[1] = (v8 + 13);
  return v9;
}

void *TSCEASTUnknownFunctionElement::setNumArgs(TSCEASTUnknownFunctionElement *this, const char *a2, TSCEASTIteratorBase *a3, uint64_t a4)
{
  v5 = a2;
  sub_22120CA10(a3, a2, a3, a4);
  if (*(this + 16))
  {
    v9 = (a3 + 24);
  }

  else
  {
    v9 = *(a3 + 2);
  }

  v10 = TSCEASTIteratorBase::readerForElement(a3, this, v7, v8);
  result = sub_22120C7F0(v10, (v10[1] + 1), v11, v12);
  v14 = v10[1] + *(**v10 + v10[1]) + 8;
  v10[1] = v14;
  if (*v9)
  {
    *(*v9 + v14) = v5;
  }

  return result;
}

void TSCEASTUnknownFunctionElement::copyIntoNodeArray(TSCEASTUnknownFunctionElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  sub_22120CA10(a3, a2, a3, a4);
  v9 = TSCEASTUnknownFunctionElement::unknownFunctionName(this, a3, v7, v8);
  v10 = (*(*this + 48))(this, a3);
  TSCEASTUnknownFunctionElement::appendUnknownFunctionElement(a2, v9, v10);

  operator new();
}

uint64_t TSCEASTWhitespaceElement::size(TSCEASTWhitespaceElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v5 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v5, v5[1] + 1, v6, v7);
  v10 = v5[1];
  v11 = **v5;
  v12 = *(v10 + v11);
  v13 = v10 + 1;
  v5[1] = v13;
  if (v12)
  {
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v13 + v11, v9);
    v5[1] = (v5[1] + v12);
  }

  else
  {
    v14 = 0;
  }

  return v5[1] - *(this + 1);
}

id TSCEASTWhitespaceElement::whitespace(TSCEASTWhitespaceElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, v4[1] + 1, v5, v6);
  v9 = v4[1];
  v10 = **v4;
  v11 = *(v9 + v10);
  v12 = v9 + 1;
  v4[1] = v12;
  if (v11)
  {
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v12 + v10, v8);
    v4[1] = (v4[1] + v11);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

unint64_t TSCEASTWhitespaceElement::appendWhitespaceElement(TSCEASTNodeArray *a1, char a2, void *a3)
{
  v8 = a3;
  if ((a2 - 31) >= 2u)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "static size_t TSCEASTWhitespaceElement::appendWhitespaceElement(TSCEASTNodeArray *, TSCEASTNodeTag, NSString *__strong)", v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTElements.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1979, 0, "Not a whitespace tag");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  var1 = a1->var1;
  if (objc_msgSend_length(v8, v5, v6, v7))
  {
    TSCEASTNodeArray::writeUInt8(a1, a2, v19, v20);
    TSCEASTNodeArray::writeString(a1, v8);
  }

  return var1;
}

void TSCEASTWhitespaceElement::copyIntoNodeArray(TSCEASTWhitespaceElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  sub_22120CA10(a3, a2, a3, a4);
  if (*(this + 16))
  {
    v9 = (a3 + 24);
  }

  else
  {
    v9 = *(a3 + 2);
  }

  v10 = *(*v9 + *(this + 1));
  v11 = TSCEASTWhitespaceElement::whitespace(this, a3, v7, v8);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a2, v10, v11);

  operator new();
}

BOOL TSCEASTRelativeCoordRefElement::mayHaveBeenImplicitIntersection(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v2 = (a2 + 24);
  }

  else
  {
    v2 = *(a2 + 16);
  }

  v3 = *(a1 + 8);
  v4 = *(*v2 + v3) - 29;
  if (v4 <= 0x27 && ((1 << v4) & 0xC000200081) != 0)
  {
    v6 = (*(a1 + 16) & 1) != 0 ? (a2 + 24) : *(a2 + 16);
    if ((*(*v6 + v3 + 1) & 0xC) == 8)
    {
      return 1;
    }
  }

  if (*(a1 + 16))
  {
    v8 = (a2 + 24);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  v9 = *(*v8 + v3) - 29;
  if (v9 > 0x27 || ((1 << v9) & 0xC000200081) == 0)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    v11 = (a2 + 24);
  }

  else
  {
    v11 = *(a2 + 16);
  }

  return (*(*v11 + v3 + 1) & 0xC) == 4;
}

TSCECellTractRef *TSCEASTRelativeCoordRefElement::tractRefUsingUuids(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, id *a5, id *a6, int a7)
{
  v14 = *a4;
  v15 = *(a4 + 8) - *a4 == 16 && !*v14 && *(v14 + 1) == 0;
  v16 = *a3;
  if (*(a3 + 8) - *a3 == 16 && !*v16)
  {
    v17 = *(v16 + 1) == 0;
    if (v17 && v15)
    {
      v34 = MEMORY[0x277D81150];
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "static TSCECellTractRef *TSCEASTRelativeCoordRefElement::tractRefUsingUuids(TSCEASTIteratorBase *, const TSCEOwnerUID &, const TSKUIDStructVector &, const TSKUIDStructVector &, TSCEMutableUIDSet *__autoreleasing &, TSCEMutableUIDSet *__autoreleasing &, BOOL)", a4);
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTElements.mm", v37);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v39, v35, v38, 2029, 0, "How can we be spanning in both rows and columns.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42);
LABEL_21:
      v43 = 0;
      goto LABEL_63;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = [TSCEMutableUIDSet alloc];
  *a5 = objc_msgSend_initWithUUIDVector_(v18, v19, a3, v20);
  v21 = [TSCEMutableUIDSet alloc];
  *a6 = objc_msgSend_initWithUUIDVector_(v21, v22, a4, v23);
  if (!v17 && *a3 == *(a3 + 8) || !v15 && *a4 == *(a4 + 8))
  {
    goto LABEL_21;
  }

  v72 = a5;
  v24 = sub_221089E8C(a1);
  v73 = a2;
  v27 = objc_msgSend_tableOrLinkedResolverForTableUID_(v24, v25, a2, v26);

  v28 = objc_opt_new();
  v32 = objc_opt_new();
  if (v15)
  {
    goto LABEL_12;
  }

  if (v27)
  {
    if (*(a4 + 8) - *a4 == 16)
    {
      *&__p = **a4;
      v33 = objc_msgSend_rowIndexForRowUID_(v27, v29, &__p, v31);
      if (v33 != 0x7FFFFFFF)
      {
        objc_msgSend_addIndex_(v32, v29, v33, v31);
        *a6 = objc_opt_new();
      }

LABEL_12:
      if (v17)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    }

    v44 = objc_msgSend_mutableRowIndexesForUIDs_(v27, v29, a4, v31);
    if (!a7)
    {
      goto LABEL_25;
    }

LABEL_23:
    *&__p = 0;
    __p._singleRange._begin = &__p;
    __p._singleRange._end = 0x4012000000;
    __p._multipleRanges = sub_22133D838;
    v78 = nullsub_36;
    v79 = &unk_22188E88F;
    v80 = 0;
    v81 = 0;
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = sub_22133D848;
    v76[3] = &unk_278462AA8;
    v76[4] = &__p;
    objc_msgSend_enumerateRangesUsingBlock_(v44, v29, v76, v31, v72);
    objc_msgSend_addIndexesInRange_(v32, v45, *(__p._singleRange._begin + 48), *(__p._singleRange._begin + 56));
    _Block_object_dispose(&__p, 8);
    goto LABEL_26;
  }

  v44 = 0;
  if (a7)
  {
    goto LABEL_23;
  }

LABEL_25:
  objc_msgSend_addIndexes_(v32, v29, v44, v31, v72);
LABEL_26:
  if (objc_msgSend_count(v32, v46, v47, v48))
  {
    objc_msgSend_removeIndexes_(v44, v49, v32, v50);
    memset(&__p, 0, 24);
    if (v27)
    {
      objc_msgSend_rowUIDsForRowIndexes_(v27, v51, v32, v52);
      if (*&__p)
      {
        __p._singleRange._begin = __p;
        operator delete(*&__p);
      }

      *&__p = v74;
      __p._singleRange._end = v74._singleRange._end;
    }

    objc_msgSend_removeUuidsFromVector_(*a6, v51, &__p, v52);
    if (*&__p)
    {
      __p._singleRange._begin = __p;
      operator delete(*&__p);
    }
  }

  if (v17)
  {
LABEL_38:
    if (v15)
    {
      goto LABEL_53;
    }

LABEL_52:
    if (!objc_msgSend_count(v32, v29, v30, v31, v72))
    {
      goto LABEL_57;
    }

    goto LABEL_53;
  }

LABEL_34:
  if (v27)
  {
    if (*(a3 + 8) - *a3 == 16)
    {
      *&__p = **a3;
      v53 = objc_msgSend_columnIndexForColumnUID_(v27, v29, &__p, v31);
      if (v53 != 0x7FFF)
      {
        objc_msgSend_addIndex_(v28, v29, v53, v31);
        *v72 = objc_opt_new();
      }

      goto LABEL_38;
    }

    v54 = objc_msgSend_mutableColumnIndexesForUIDs_(v27, v29, a3, v31);
    if (!a7)
    {
      goto LABEL_43;
    }

LABEL_41:
    *&__p = 0;
    __p._singleRange._begin = &__p;
    __p._singleRange._end = 0x4012000000;
    __p._multipleRanges = sub_22133D838;
    v78 = nullsub_36;
    v79 = &unk_22188E88F;
    v80 = 0;
    v81 = 0;
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = sub_22133D864;
    v75[3] = &unk_278462AA8;
    v75[4] = &__p;
    objc_msgSend_enumerateRangesUsingBlock_(v54, v29, v75, v31, v72);
    objc_msgSend_addIndexesInRange_(v28, v55, *(__p._singleRange._begin + 48), *(__p._singleRange._begin + 56));
    _Block_object_dispose(&__p, 8);
    goto LABEL_44;
  }

  v54 = 0;
  if (a7)
  {
    goto LABEL_41;
  }

LABEL_43:
  objc_msgSend_addIndexes_(v28, v29, v54, v31, v72);
LABEL_44:
  if (objc_msgSend_count(v28, v56, v57, v58))
  {
    objc_msgSend_removeIndexes_(v54, v59, v28, v60);
    memset(&__p, 0, 24);
    if (v27)
    {
      objc_msgSend_columnUIDsForColumnIndexes_(v27, v61, v28, v62);
      if (*&__p)
      {
        __p._singleRange._begin = __p;
        operator delete(*&__p);
      }

      *&__p = v74;
      __p._singleRange._end = v74._singleRange._end;
    }

    objc_msgSend_removeUuidsFromVector_(*v72, v61, &__p, v62);
    if (*&__p)
    {
      __p._singleRange._begin = __p;
      operator delete(*&__p);
    }
  }

  if (!v15)
  {
    goto LABEL_52;
  }

LABEL_53:
  if (v17 || objc_msgSend_count(v28, v29, v30, v31))
  {
    MEMORY[0x223D9F7A0](&__p, v28);
    MEMORY[0x223D9F7A0](&v74, v32);
    v63 = [TSCECellTractRef alloc];
    v65 = objc_msgSend_initWithColumns_rows_tableUID_(v63, v64, &__p, &v74, v73);
    v43 = v65;
    if (v15)
    {
      objc_msgSend_setSpansAllRows_(v65, v66, 1, v67);
    }

    else
    {
      if (!v17)
      {
LABEL_61:
        TSUIndexSet::~TSUIndexSet(&v74);
        TSUIndexSet::~TSUIndexSet(&__p);
        goto LABEL_62;
      }

      objc_msgSend_setSpansAllColumns_(v65, v66, 1, v67);
      a6 = v72;
    }

    objc_msgSend_removeAllUuids(*a6, v68, v69, v70, v72);
    goto LABEL_61;
  }

LABEL_57:
  v43 = 0;
LABEL_62:

LABEL_63:

  return v43;
}

void sub_22133D74C(_Unwind_Exception *a1, uint64_t a2, TSUIndexSet *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__pa)
{
  if (__pa)
  {
    operator delete(__pa);
  }

  _Unwind_Resume(a1);
}

__n128 sub_22133D838(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_22133D848(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  if (a3 > *(v3 + 56))
  {
    *(v3 + 48) = a2;
    *(v3 + 56) = a3;
  }

  return result;
}

uint64_t sub_22133D864(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  if (a3 > *(v3 + 56))
  {
    *(v3 + 48) = a2;
    *(v3 + 56) = a3;
  }

  return result;
}

uint64_t TSCEASTRelativeCoordRefElement::rangeCoordinateUsingUuids(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, id *a5, id *a6)
{
  v6 = TSCEASTRelativeCoordRefElement::tractRefUsingUuids(a1, a2, a3, a4, a5, a6, 0);
  if (objc_msgSend_isValid(v6, v7, v8, v9))
  {
    objc_msgSend_isRectangularRange(v6, v10, v11, v12);
    v16 = objc_msgSend_boundingRange(v6, v13, v14, v15);
  }

  else
  {
    v16 = 0x7FFF7FFFFFFFLL;
  }

  return v16;
}

uint64_t TSCEASTRelativeCoordRefElement::expandTractRefUsingUuids(uint64_t a1, const char *a2, void *a3, char **a4, uint64_t a5, uint64_t a6)
{
  v11 = a3;
  if ((objc_msgSend_isValid(v11, v12, v13, v14) & 1) == 0)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "static BOOL TSCEASTRelativeCoordRefElement::expandTractRefUsingUuids(TSCEASTIteratorBase *, const TSCEOwnerUID &, TSCECellTractRef *__strong, const TSKUIDStructVector &, TSKUIDStructVector &, BOOL)", v17);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTElements.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 2185, 0, "Don't use this method for non-existing ranges, use tractRefUsingUuids() instead.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }

  v53._topLeft = objc_msgSend_boundingRange(v11, v15, v16, v17);
  v53._bottomRight = v27;
  v31 = TSCEASTRelativeCoordRefElement::expandRangeCoordinateUsingUuids(a1, a2, &v53._topLeft, a4, a5, a6);
  if (v31)
  {
    if ((objc_msgSend_spansAllColumns(v11, v28, v29, v30) & 1) == 0)
    {
      TSCERangeCoordinate::asCellRect(&v53);
      v50.origin = v35;
      v50.size = v36;
      v37 = TSUCellRect::columns(&v50);
      v39 = v38;
      v54.location = v37;
      v54.length = v39;
      TSUIndexRange::TSUIndexRange(&v51, v54);
      TSUIndexSet::TSUIndexSet(&v52, &v51);
      objc_msgSend_setColumns_(v11, v40, &v52, v41);
      TSUIndexSet::~TSUIndexSet(&v52);
    }

    if ((objc_msgSend_spansAllRows(v11, v32, v33, v34) & 1) == 0)
    {
      TSCERangeCoordinate::asCellRect(&v53);
      v50.origin = v42;
      v50.size = v43;
      v44 = TSUCellRect::rows(&v50);
      v46 = v45;
      v55.location = v44;
      v55.length = v46;
      TSUIndexRange::TSUIndexRange(&v51, v55);
      TSUIndexSet::TSUIndexSet(&v52, &v51);
      objc_msgSend_setRows_(v11, v47, &v52, v48);
      TSUIndexSet::~TSUIndexSet(&v52);
    }
  }

  return v31;
}

void sub_22133DAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, TSUIndexSet *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  TSUIndexSet::~TSUIndexSet(&a13);

  _Unwind_Resume(a1);
}

uint64_t TSCEASTRelativeCoordRefElement::expandRangeCoordinateUsingUuids(uint64_t a1, const char *a2, unsigned int *a3, char **a4, uint64_t a5, uint64_t a6)
{
  if ((*a3 & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL && (*(a3 + 1) & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "static BOOL TSCEASTRelativeCoordRefElement::expandRangeCoordinateUsingUuids(TSCEASTIteratorBase *, const TSCEOwnerUID &, TSCERangeCoordinate &, const TSKUIDStructVector &, TSKUIDStructVector &, BOOL)", a4);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTElements.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 2211, 0, "Don't use this method for non-existing ranges, use rangeCoordinateUsingUuids() instead.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  if (a4[1] != *a4)
  {
    v21 = sub_221089E8C(a1);
    v23 = objc_msgSend_resolverForTableUID_(v21, v22, *a2, *(a2 + 1));

    v25 = objc_msgSend_mutableIndexesForUIDs_isRows_(v23, v24, a4, a6);
    if (objc_msgSend_count(v25, v26, v27, v28))
    {
      v76 = v23;
      v31 = objc_opt_new();
      v74 = a3;
      v75 = a6;
      v32 = a6 == 0;
      if (a6)
      {
        v33 = *a3;
      }

      else
      {
        v33 = *(a3 + 2);
      }

      if (v32)
      {
        v34 = *(a3 + 6);
      }

      else
      {
        v34 = a3[2];
      }

      v37 = objc_msgSend_indexLessThanIndex_(v25, v29, v33, v30);
      while (v37 != 0x7FFFFFFFFFFFFFFFLL && v33 - 1 == v37)
      {
        v38 = v37;
        objc_msgSend_addIndex_(v31, v35, v37, v36);
        v37 = objc_msgSend_indexLessThanIndex_(v25, v39, v37, v40);
        LODWORD(v33) = v38;
      }

      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = sub_22133E010;
      v80[3] = &unk_27845E1D0;
      v41 = v31;
      v81 = v41;
      objc_msgSend_enumerateRangesInRange_options_usingBlock_(v25, v42, v33, (v34 - v33 + 1), 0, v80);
      v48 = objc_msgSend_indexGreaterThanIndex_(v25, v43, v34, v44);
      while (v48 != 0x7FFFFFFFFFFFFFFFLL && v34 + 1 == v48)
      {
        v50 = v48;
        objc_msgSend_addIndex_(v41, v45, v48, v47);
        v48 = objc_msgSend_indexGreaterThanIndex_(v25, v51, v48, v52);
        LODWORD(v34) = v50;
      }

      if (objc_msgSend_count(v41, v45, v46, v47))
      {
        if (v75)
        {
          *v74 = v33;
          v74[2] = v34;
        }

        else
        {
          *(v74 + 2) = v33;
          *(v74 + 6) = v34;
        }

        if (v76)
        {
          objc_msgSend_UIDsForIndexes_isRows_(v76, v54, v41, v75);
        }

        else
        {
          __p = 0;
          v78 = 0;
          v79 = 0;
        }

        v56 = [TSCEUIDSet alloc];
        v60 = objc_msgSend_initWithUUIDVector_(v56, v57, &__p, v58);
        v62 = *a4;
        v61 = a4[1];
        while (v62 != v61)
        {
          if ((objc_msgSend_containsUuid_(v60, v59, *v62, v62[1]) & 1) == 0)
          {
            v64 = *(a5 + 8);
            v63 = *(a5 + 16);
            if (v64 >= v63)
            {
              v66 = (v64 - *a5) >> 4;
              v67 = v66 + 1;
              if ((v66 + 1) >> 60)
              {
                sub_22107C148();
              }

              v68 = v63 - *a5;
              if (v68 >> 3 > v67)
              {
                v67 = v68 >> 3;
              }

              if (v68 >= 0x7FFFFFFFFFFFFFF0)
              {
                v69 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v69 = v67;
              }

              if (v69)
              {
                sub_221086F74(a5, v69);
              }

              v70 = (16 * v66);
              *v70 = *v62;
              v65 = 16 * v66 + 16;
              v71 = *(a5 + 8) - *a5;
              v72 = 16 * v66 - v71;
              memcpy(v70 - v71, *a5, v71);
              v73 = *a5;
              *a5 = v72;
              *(a5 + 8) = v65;
              *(a5 + 16) = 0;
              if (v73)
              {
                operator delete(v73);
              }
            }

            else
            {
              *v64 = *v62;
              v65 = (v64 + 1);
            }

            *(a5 + 8) = v65;
          }

          v62 += 2;
        }

        if (__p)
        {
          v78 = __p;
          operator delete(__p);
        }

        return 1;
      }
    }

    else
    {
    }
  }

  if (a5 != a4)
  {
    sub_2210BD068(a5, *a4, a4[1], (a4[1] - *a4) >> 4);
  }

  return 0;
}

uint64_t TSCEASTRelativeCoordRefElement::columnUid(TSCEASTRelativeCoordRefElement *this, TSCEFormulaRewriteContext **a2)
{
  coordinate = TSCEFormulaRewriteContext::containingCell(a2[1])->var0.var0.coordinate;
  (*(*this + 136))(v13, this, a2, &coordinate);
  v4 = sub_221089E8C(a2);
  v6 = objc_msgSend_resolverForTableUID_(v4, v5, v13[1], v13[2]);

  if (v6)
  {
    v9 = WORD2(v13[0]) == 0x7FFF;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_columnUIDForColumnIndex_(v6, v7, WORD2(v13[0]), v8);
  }

  return v10;
}

uint64_t TSCEASTRelativeCoordRefElement::rowUid(TSCEASTRelativeCoordRefElement *this, TSCEFormulaRewriteContext **a2)
{
  coordinate = TSCEFormulaRewriteContext::containingCell(a2[1])->var0.var0.coordinate;
  (*(*this + 136))(v13, this, a2, &coordinate);
  v4 = sub_221089E8C(a2);
  v6 = objc_msgSend_resolverForTableUID_(v4, v5, v13[1], v13[2]);

  if (v6)
  {
    v9 = LODWORD(v13[0]) == 0x7FFFFFFF;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_rowUIDForRowIndex_(v6, v7, LODWORD(v13[0]), v8);
  }

  return v10;
}

unint64_t TSCEASTRelativeCoordRefElement::appendReference(TSCEASTNodeArray *this, TSCEASTNodeArray *a2, const TSCECellRef *a3, const TSUPreserveFlags *a4, TSCECellRef *a5, TSCEUndoTractList *a6)
{
  v12 = a5;
  var1 = this->var1;
  var0 = a2->var0;
  v16 = *&a4[8]._flags != a2->var1 || *&a4[16]._flags != a2->var2;
  if ((*&var0 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    v23.var0 = 0;
    v23.var1 = 0;
    v23.var2 = 0x7FFF7FFFFFFFLL;
    TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement(this, &v23, &v23.var2, 0, 0, v11);
  }

  else
  {
    v17 = a3;
    RelativeCellCoordinateFromAbsoluteCoordinates = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(*&a4->_flags, var0, v17, v10);
    v20 = a2->var1;
    var2 = a2->var2;
    if (!v16)
    {
      v20 = 0;
      var2 = 0;
    }

    v23.var0 = v20;
    v23.var1 = var2;
    v23.var2 = RelativeCellCoordinateFromAbsoluteCoordinates;
    TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement(this, &v23, &v23.var2, (16 * (a3->coordinate.row & 3)), v12, v19);
  }

  return var1;
}

unint64_t TSCEASTRelativeCoordRefElement::appendReferenceError(TSCEASTNodeArray *this, TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, TSCEUndoTractList *a6)
{
  var18.var0 = 0;
  var18.var1 = 0;
  var18.var2 = 0x7FFF7FFFFFFFLL;
  return TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement(this, &var18, &var18.var2, 0, 0, a6);
}

unint64_t TSCEASTRelativeCoordRefElement::appendRangeReference(TSCEASTNodeArray *this, TSCEASTNodeArray *a2, const TSCERangeRef *a3, const TSUPreserveFlags *a4, const TSCECellRef *a5, TSCEUndoTractList *a6)
{
  var1 = this->var1;
  v18.var0 = a2->var0;
  *&v18.var1 = *&a2->var2;
  v17 = a3->range._topLeft.row & 3;
  TSCEASTRelativeCoordRefElement::appendReference(this, &v18, &v17, a4, 0, a6);
  v12 = a2->var1;
  if (a2->var0 != v12 || ((v12 ^ a2->var0) & 0x101FFFF00000000) != 0)
  {
    v18.var0 = a2->var1;
    *&v18.var1 = *&a2->var2;
    v17 = (LOBYTE(a3->range._topLeft.row) >> 2) & 3;
    TSCEASTRelativeCoordRefElement::appendReference(this, &v18, &v17, a4, 0, v11);
    TSCEASTNodeArray::writeUInt8(this, 28, v14, v15);
  }

  return var1;
}

uint64_t TSCEASTRelativeCoordRefElement::sizeBeforeUndoTractList(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v2 = (a2 + 24);
  }

  else
  {
    v2 = *(a2 + 16);
  }

  v3 = *(a1 + 8);
  v4 = *(*v2 + v3) - 29;
  v5 = v4 > 0x27;
  v6 = (1 << v4) & 0xC000200081;
  if (v5 || v6 == 0)
  {
    return 8;
  }

  if (*(a1 + 16))
  {
    v8 = (a2 + 24);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  v9 = *(*v8 + v3 + 1);
  if (v9)
  {
    result = 18;
  }

  else
  {
    result = 2;
  }

  v11 = v9 & 0xC;
  if (v11 != 12)
  {
    if (v11 == 8)
    {
      v12 = result;
    }

    else
    {
      v12 = result | 4;
    }

    v13 = v12 + 2;
    if (v11 == 4)
    {
      return result | 4;
    }

    else
    {
      return v13;
    }
  }

  return result;
}

uint64_t TSCEASTRelativeCoordRefElement::size(TSCEASTRelativeCoordRefElement *this, TSCEASTIteratorBase *a2)
{
  if (*(this + 16))
  {
    v4 = (a2 + 24);
  }

  else
  {
    v4 = *(a2 + 2);
  }

  v5 = *(this + 1);
  v6 = *(*v4 + v5) - 29;
  v7 = v6 > 0x27;
  v8 = (1 << v6) & 0xC000200081;
  if (v7 || v8 == 0)
  {

    return TSCEASTRelativeCoordRefElement::sizeBeforeUndoTractList(this, a2);
  }

  else
  {
    if (*(this + 16))
    {
      v10 = (a2 + 24);
    }

    else
    {
      v10 = *(a2 + 2);
    }

    v11 = *(*v10 + v5 + 1);
    v12 = TSCEASTRelativeCoordRefElement::sizeBeforeUndoTractList(this, a2);
    if ((v11 & 2) != 0)
    {
      v12 += TSCEASTElement::sizeOfUndoTractList(this, a2);
    }

    return v12;
  }
}

uint64_t TSCEASTRelativeCoordRefElement::tableUID(TSCEASTRelativeCoordRefElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 2);
  }

  v6 = *(this + 1);
  v7 = *(*v5 + v6) - 29;
  v8 = v7 > 0x27;
  v9 = (1 << v7) & 0xC000200081;
  if (v8 || v9 == 0)
  {
    return 0;
  }

  v11 = (*(this + 16) & 1) != 0 ? (a2 + 24) : *(a2 + 2);
  if ((*(*v11 + v6 + 1) & 1) == 0)
  {
    return 0;
  }

  v13 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v13, (*(this + 1) + 2), v14, v15);
  v16 = v13[1];
  result = *(**v13 + v16);
  v13[1] = v16 + 16;
  return result;
}

__n128 TSCEASTRelativeCoordRefElement::setTableUID(TSCEASTRelativeCoordRefElement *this, __n128 *a2, TSCEASTIteratorBase *a3, uint64_t a4)
{
  if (*(this + 16))
  {
    v7 = (a3 + 24);
  }

  else
  {
    v7 = *(a3 + 2);
  }

  v8 = *(this + 1);
  v9 = *(*v7 + v8) - 29;
  v10 = v9 > 0x27;
  v11 = (1 << v9) & 0xC000200081;
  v12 = v10 || v11 == 0;
  if (!v12 && ((*(this + 16) & 1) == 0 ? (v13 = *(a3 + 2)) : (v13 = (a3 + 24)), (*(*v13 + v8 + 1) & 1) != 0))
  {
    if (a2->n128_u64[0] != TSCEASTRelativeCoordRefElement::tableUID(this, a3, a3, a4) || a2->n128_u64[1] != v25)
    {
      sub_22120CA10(a3, v25, v26, v27);
      v28 = (*(this + 16) & 1) != 0 ? (a3 + 24) : *(a3 + 2);
      v29 = *v28;
      if (v29)
      {
        result = *a2;
        *(v29 + *(this + 1) + 2) = *a2;
      }
    }
  }

  else if (*a2 != 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTRelativeCoordRefElement::setTableUID(const TSCEOwnerUID &, TSCEASTIteratorBase *)", a4);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTElements.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 2441, 0, "Cannot use setTableUID on a tag that isn't already cross-table");

    v23 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v23, v20, v21, v22);
  }

  return result;
}

_BYTE *TSCEASTRelativeCoordRefElement::setPreserveFlags(TSCEASTRelativeCoordRefElement *this, const TSUPreserveFlags *a2, TSCEASTIteratorBase *a3, uint64_t a4)
{
  if (*(this + 16))
  {
    v4 = (a3 + 24);
  }

  else
  {
    v4 = *(a3 + 2);
  }

  v5 = *(this + 1);
  v6 = *(*v4 + v5) - 29;
  v7 = v6 > 0x27;
  v8 = (1 << v6) & 0xC000200081;
  if (v7 || v8 == 0)
  {
    v11 = 0;
  }

  else
  {
    if (*(this + 16))
    {
      v10 = (a3 + 24);
    }

    else
    {
      v10 = *(a3 + 2);
    }

    v11 = *(*v10 + v5 + 1) & 0xCF;
  }

  if (*(this + 16))
  {
    v12 = (a3 + 24);
  }

  else
  {
    v12 = *(a3 + 2);
  }

  v13 = (16 * (a2->_flags & 3)) | v11;
  if (*(*v12 + v5) == 29)
  {
    v14 = v13 & 0x3F | (((a2->_flags >> 2) & 3) << 6);
  }

  else
  {
    v14 = v13;
  }

  return TSCEASTElement::setRefFlags(this, v14, a3, a4);
}

unint64_t TSCEASTRelativeCoordRefElement::relativeCoord(TSCEASTRelativeCoordRefElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 16))
  {
    v6 = (a2 + 24);
  }

  else
  {
    v6 = *(a2 + 2);
  }

  v7 = *(this + 1);
  v8 = *(*v6 + v7) - 29;
  v9 = v8 > 0x27;
  v10 = (1 << v8) & 0xC000200081;
  if (v9 || v10 == 0)
  {
    v13 = 0;
    v15 = 0;
    v14 = 2;
    goto LABEL_18;
  }

  if (*(this + 16))
  {
    v12 = (a2 + 24);
  }

  else
  {
    v12 = *(a2 + 2);
  }

  v13 = *(*v12 + v7 + 1);
  if (v13)
  {
    v14 = 18;
  }

  else
  {
    v14 = 2;
  }

  v15 = v13 & 0xC;
  v16 = 0x7FFFFFFF;
  if (v15 == 8)
  {
    goto LABEL_21;
  }

  if (v15 != 12)
  {
LABEL_18:
    v17 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
    sub_22120C7F0(v17, (*(this + 1) + v14), v18, v19);
    v20 = v17[1];
    v16 = *(**v17 + v20);
    v17[1] = v20 + 4;
    if (v15 == 4)
    {
      goto LABEL_19;
    }

    v14 |= 4uLL;
LABEL_21:
    v22 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
    sub_22120C7F0(v22, (*(this + 1) + v14), v23, v24);
    v25 = v22[1];
    v26 = *(**v22 + v25);
    v22[1] = v25 + 2;
    v21 = v26 << 32;
    return v21 | (((v13 >> 5) & 1) << 48) | (((v13 >> 4) & 1) << 56) | v16;
  }

LABEL_19:
  v21 = 0x7FFF00000000;
  return v21 | (((v13 >> 5) & 1) << 48) | (((v13 >> 4) & 1) << 56) | v16;
}

unint64_t TSCEASTRelativeCoordRefElement::setRelativeCoord(TSCEASTRelativeCoordRefElement *this, const TSCERelativeCellCoordinate *a2, TSCEASTIteratorBase *a3, uint64_t a4)
{
  if (*(this + 16))
  {
    v7 = (a3 + 24);
  }

  else
  {
    v7 = *(a3 + 2);
  }

  v8 = *(this + 1);
  v9 = *(*v7 + v8);
  if ((v9 - 29) > 0x27 || ((1 << (v9 - 29)) & 0xC000200081) == 0)
  {
    v12 = 0;
  }

  else
  {
    if (*(this + 16))
    {
      v11 = (a3 + 24);
    }

    else
    {
      v11 = *(a3 + 2);
    }

    v12 = *(*v11 + v8 + 1) & 0xC;
  }

  sub_2210898C4(a2->_column, a2, a3, a4);
  sub_2210899C8(a2->_row, v13, v14, v15);
  if (v9 != 36)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "void TSCEASTRelativeCoordRefElement::setRelativeCoord(const TSCERelativeCellCoordinate &, TSCEASTIteratorBase *)", v18);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTElements.mm", v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v24, v27, 2541, 0, "Can't setRelativeCoord on type: %d", v9);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
    goto LABEL_22;
  }

  column = a2->_column;
  row = a2->_row;
  if (v12 != 4)
  {
    if (v12 == 8)
    {
      v22 = column != 0x7FFF && row == 0x7FFFFFFF;
      goto LABEL_35;
    }

    if (column == 0x7FFF)
    {
      if (row == 0x7FFFFFFF)
      {
        goto LABEL_34;
      }
    }

    else if (row != 0x7FFFFFFF)
    {
LABEL_34:
      v22 = 1;
      goto LABEL_35;
    }

LABEL_22:
    v22 = 0;
    goto LABEL_35;
  }

  v22 = column == 0x7FFF && row != 0x7FFFFFFF;
LABEL_35:
  result = TSCEASTRelativeCoordRefElement::relativeCoord(this, a3, v17, v18);
  v37 = result;
  v38 = HIDWORD(result);
  v39 = a2->_column;
  v40 = a2->_row;
  v42 = v39 == 0x7FFF && v40 == 0x7FFFFFFF;
  if (!v22 && !v42)
  {
    v43 = MEMORY[0x277D81150];
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "void TSCEASTRelativeCoordRefElement::setRelativeCoord(const TSCERelativeCellCoordinate &, TSCEASTIteratorBase *)", v36);
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTElements.mm", v46);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v48, v44, v47, 2549, 0, "Can't use setRelativeCoord to switch from spanning (%d,%d) to not spanning (%d,%d)", v38, v37, a2->_column, a2->_row);

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51);
    v40 = a2->_row;
    v39 = a2->_column;
  }

  v52 = 0;
  if (v40 == v37 && v39 == v38)
  {
    v52 = __PAIR64__(a2->_preserveColumn, a2->_preserveRow) == __PAIR64__(HIBYTE(v37), BYTE6(v37));
  }

  if (v22 && !v52)
  {
    v53 = *(this + 16);
    if (v53)
    {
      v54 = (a3 + 24);
    }

    else
    {
      v54 = *(a3 + 2);
    }

    v55 = *(this + 1);
    v56 = 2;
    v57 = *(*v54 + v55) - 29;
    if (v57 <= 0x27 && ((1 << v57) & 0xC000200081) != 0)
    {
      if (*(this + 16))
      {
        v58 = (a3 + 24);
      }

      else
      {
        v58 = *(a3 + 2);
      }

      if (*(*v58 + v55 + 1))
      {
        v56 = 18;
      }

      else
      {
        v56 = 2;
      }
    }

    if (*(this + 16))
    {
      v59 = (a3 + 24);
    }

    else
    {
      v59 = *(a3 + 2);
    }

    v60 = *(*v59 + v55) - 29;
    if (v60 > 0x27 || ((1 << v60) & 0xC000200081) == 0 || ((*(this + 16) & 1) == 0 ? (v61 = *(a3 + 2)) : (v61 = (a3 + 24)), (*(*v61 + v55 + 1) & 0xC) != 8))
    {
      sub_22120CA10(a3, v34, v35, v36);
      v53 = *(this + 16);
      if (v53)
      {
        v62 = (a3 + 24);
      }

      else
      {
        v62 = *(a3 + 2);
      }

      v63 = *v62;
      if (v63)
      {
        *(v63 + *(this + 1) + v56) = a2->_row;
        v53 = *(this + 16);
      }

      v56 |= 4uLL;
    }

    if (v53)
    {
      v64 = (a3 + 24);
      v65 = 1;
    }

    else
    {
      v65 = 0;
      v64 = *(a3 + 2);
    }

    v66 = *(this + 1);
    v67 = *(*v64 + v66) - 29;
    if (v67 > 0x27 || ((1 << v67) & 0xC000200081) == 0 || (!v65 ? (v68 = *(a3 + 2)) : (v68 = (a3 + 24)), (*(*v68 + v66 + 1) & 0xC) != 4))
    {
      sub_22120CA10(a3, v34, v35, v36);
      if (*(this + 16))
      {
        v69 = (a3 + 24);
      }

      else
      {
        v69 = *(a3 + 2);
      }

      v70 = *v69;
      if (v70)
      {
        *(v70 + *(this + 1) + v56) = a2->_column;
      }
    }

    if (a2->_preserveRow)
    {
      v71 = 2;
    }

    else
    {
      v71 = 0;
    }

    v72._flags = v71 | a2->_preserveColumn;
    return TSCEASTRelativeCoordRefElement::setPreserveFlags(this, &v72, a3, v36);
  }

  return result;
}

TSCERelativeCellCoordinate *TSCEASTRelativeCoordRefElement::crossTableRef@<X0>(TSCERelativeCellCoordinate *__return_ptr a1@<X8>, TSCEASTRelativeCoordRefElement *this@<X0>, TSCEASTIteratorBase *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  if (*(this + 16))
  {
    v8 = (a3 + 24);
  }

  else
  {
    v8 = *(a3 + 2);
  }

  v9 = *(*v8 + *(this + 1));
  if (v9 != 36)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "TSCECrossTableReference TSCEASTRelativeCoordRefElement::crossTableRef(TSCEASTIteratorBase *) const", a5);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTElements.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 2593, 0, "Incorrect tag for use with crossTableRef: %d", v9);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  v19 = TSCEASTRelativeCoordRefElement::tableUID(this, a3, a4, a5);
  v21 = v20;
  v24 = TSCEASTRelativeCoordRefElement::relativeCoord(this, a3, v22, v23);
  v26._flags = TSCEASTRelativeCoordRefElement::preserveFlags(this, a3);
  *a1 = v19;
  a1[1] = v21;
  a1[2] = v24;
  return TSCERelativeCellCoordinate::setPreserveFlags(a1 + 2, &v26);
}

unint64_t TSCEASTRelativeCoordRefElement::absoluteCellRef@<X0>(TSCEASTRelativeCoordRefElement *this@<X0>, TSCEASTIteratorBase *a2@<X1>, const TSUCellCoord *a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  if (*(this + 16))
  {
    v9 = (a2 + 24);
  }

  else
  {
    v9 = *(a2 + 2);
  }

  v10 = *(this + 1);
  v11 = *(*v9 + v10);
  v12 = (v11 - 29) > 0x27 || ((1 << (v11 - 29)) & 0xC000200081) == 0;
  if (!v12 && ((*(this + 16) & 1) == 0 ? (v13 = *(a2 + 2)) : (v13 = (a2 + 24)), (*(*v13 + v10 + 1) & 1) != 0))
  {
    lower = TSCEASTRelativeCoordRefElement::tableUID(this, a2, a3, a5);
    upper = v19;
  }

  else
  {
    v14 = TSCEFormulaRewriteContext::containingCell(*(a2 + 1));
    lower = v14->var0.var0._tableUID._lower;
    upper = v14->var0.var0._tableUID._upper;
  }

  result = TSCEASTRelativeCoordRefElement::relativeCoord(this, a2, v15, v16);
  v23 = result;
  if (*(this + 16))
  {
    v24 = (a2 + 24);
  }

  else
  {
    v24 = *(a2 + 2);
  }

  v25 = *(this + 1);
  v26 = *(*v24 + v25) - 29;
  v27 = v26 > 0x27;
  v28 = (1 << v26) & 0xC000200081;
  if (v27 || v28 == 0)
  {
    v31 = 0;
  }

  else
  {
    if (*(this + 16))
    {
      v30 = (a2 + 24);
    }

    else
    {
      v30 = *(a2 + 2);
    }

    v31 = *(*v30 + v25 + 1);
  }

  if (v11 != 36)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "virtual TSCECellRef TSCEASTRelativeCoordRefElement::absoluteCellRef(TSCEASTIteratorBase *, const TSUCellCoord &) const", v22);
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTElements.mm", v37);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v39, v35, v38, 2613, 0, "Invalid tag: %d", v11);
    v40 = 0x7FFF7FFFFFFFLL;

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43);
    goto LABEL_63;
  }

  if ((v31 & 0xC) == 4)
  {
    v32 = 0;
    LOWORD(v33) = 0x7FFF;
    goto LABEL_43;
  }

  v33 = HIDWORD(result);
  if (WORD2(result) == 0x7FFF)
  {
    v32 = 0;
    LOWORD(v33) = 0x7FFF;
    goto LABEL_41;
  }

  if ((v31 & 0x10) == 0)
  {
    v44 = *a3;
    if ((result >> 16) >> 16 < 1)
    {
      if ((result & 0x800000000000) != 0 && -SWORD2(result) > WORD2(v44))
      {
        goto LABEL_35;
      }
    }

    else if (999 - SWORD2(result) < WORD2(v44))
    {
LABEL_35:
      LOWORD(v33) = 0x7FFF;
      goto LABEL_40;
    }

    LOWORD(v33) = WORD2(v44) + WORD2(result);
    if ((WORD2(v44) + WORD2(result)) >= 0x7FFFu)
    {
      v70 = MEMORY[0x277D81150];
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "TSUColumnIndex TSCEMakeAbsoluteColumnFromRelativeColumn(TSUCellCoord, TSURelativeColumnIndex, BOOL)", v22);
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v47);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v49, v45, v48, 168, 0, "overflow in column");

      result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52);
    }
  }

LABEL_40:
  v32 = v33 == 0x7FFF;
LABEL_41:
  if ((v31 & 0xC) == 8)
  {
    v53 = 0x7FFFFFFFLL;
    goto LABEL_60;
  }

LABEL_43:
  v53 = 0x7FFFFFFFLL;
  if (v23 != 0x7FFFFFFF)
  {
    if ((v31 & 0x20) != 0)
    {
      LODWORD(v53) = v23;
    }

    else
    {
      v54 = *a3;
      if (v23 < 1)
      {
        if (v23 && v54 < -v23)
        {
          goto LABEL_56;
        }
      }

      else if (999999 - v23 < v54)
      {
        goto LABEL_56;
      }

      if (v54 == 0x7FFFFFFF)
      {
        v55 = MEMORY[0x277D81150];
        v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v22);
        v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v58);
        v60 = NSStringFromTSUCellCoord();
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v61, v56, v59, 195, 0, "Calling TSCEMakeAbsoluteRowFromRelativeRow with an invalid hostCell row: %@", v60);

LABEL_55:
        result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68);
LABEL_56:
        LODWORD(v53) = 0x7FFFFFFF;
        goto LABEL_57;
      }

      LODWORD(v53) = v54 + v23;
      if ((v54 + v23) >= 0x7FFFFFFF)
      {
        v62 = MEMORY[0x277D81150];
        v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v22);
        v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v64);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v65, v56, v59, 191, 0, "overflow in row, input row: %d with host row: %lu", v23, v54);
        goto LABEL_55;
      }
    }

LABEL_57:
    if (v53 == 0x7FFFFFFF)
    {
      v32 = 1;
    }

    v53 = v53;
  }

LABEL_60:
  v69 = v53 | (v33 << 32);
  if (v32)
  {
    v40 = 0x7FFF7FFFFFFFLL;
  }

  else
  {
    v40 = v69;
  }

LABEL_63:
  *a4 = v40;
  a4[1] = lower;
  a4[2] = upper;
  return result;
}

_BYTE *TSCEASTRelativeCoordRefElement::setAbsoluteCellCoordinate(TSCEASTRelativeCoordRefElement *this, TSUCellCoord a2, const TSUPreserveFlags *a3, TSCEASTIteratorBase *a4, const TSUCellCoord *a5)
{
  row = a5->row;
  v9 = *&a5->column;
  flags = a3->_flags;
  v11 = a3->_flags & 1;
  if (v11)
  {
    LOWORD(v9) = 0;
  }

  v12 = a2.column - v9;
  if (a2.column == 0x7FFF)
  {
    column = a2.column;
  }

  else
  {
    column = v12;
  }

  if ((a3->_flags & 2) != 0)
  {
    row = 0;
  }

  v14 = a2.row - row;
  if (a2.row == 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v17._row = v14;
  v17._column = column;
  v17._preserveRow = (flags & 2) >> 1;
  v17._preserveColumn = v11;
  TSCEASTRelativeCoordRefElement::setRelativeCoord(this, &v17, a4, a4);

  return TSCEASTRelativeCoordRefElement::setPreserveFlags(this, a3, a4, v15);
}

BOOL TSCEASTRelativeCoordRefElement::isEquivalent(TSCEASTRelativeCoordRefElement *this, TSCEASTIteratorBase *a2, TSCEASTIteratorBase *a3, TSCEASTElement *a4, uint64_t a5, TSCECellRef *a6, TSCECellRef *a7)
{
  if (a5)
  {
    if (*(this + 16))
    {
      v12 = (a2 + 24);
    }

    else
    {
      v12 = *(a2 + 2);
    }

    v13 = *(*v12 + *(this + 1));
    if (v13 <= 0x2D)
    {
      if (((1 << v13) & 0x600030000) != 0)
      {
        v13 = 16;
      }

      else if (((1 << v13) & 0x200010000000) != 0)
      {
        v13 = 28;
      }
    }

    if (*(a4 + 16))
    {
      v14 = (a3 + 24);
    }

    else
    {
      v14 = *(a3 + 2);
    }

    v15 = *(*v14 + *(a4 + 1));
    if (((1 << v15) & 0x200010000000) != 0)
    {
      v16 = 28;
    }

    else
    {
      v16 = v15;
    }

    if (((1 << v15) & 0x600030000) != 0)
    {
      v17 = 16;
    }

    else
    {
      v17 = v16;
    }

    if (v15 <= 0x2D)
    {
      v15 = v17;
    }

    if (v13 == v15)
    {
      if (v13 == 29)
      {
        v18 = 1;
        return v18 & 1;
      }

      v19 = TSCEASTRelativeCoordRefElement::relativeCoord(this, a2, a3, a4);
      v20 = TSCEASTRelativeCoordRefElement::preserveFlags(this, a2);
      v23 = TSCEASTRelativeCoordRefElement::relativeCoord(a4, a3, v21, v22);
      v24 = TSCEASTRelativeCoordRefElement::preserveFlags(a4, a3);
      v18 = 0;
      if (v19 != v23 || v20 != v24)
      {
        return v18 & 1;
      }

      if (*(this + 16))
      {
        v27 = (a2 + 24);
      }

      else
      {
        v27 = *(a2 + 2);
      }

      v28 = *(this + 1);
      v29 = *(*v27 + v28) - 29;
      if (v29 > 0x27 || ((1 << v29) & 0xC000200081) == 0)
      {
        v32 = 0;
      }

      else
      {
        if (*(this + 16))
        {
          v31 = (a2 + 24);
        }

        else
        {
          v31 = *(a2 + 2);
        }

        v32 = *(*v31 + v28 + 1) & 1;
      }

      if (*(a4 + 16))
      {
        v33 = (a3 + 24);
      }

      else
      {
        v33 = *(a3 + 2);
      }

      v34 = *(a4 + 1);
      v35 = *(*v33 + v34) - 29;
      if (v35 > 0x27 || ((1 << v35) & 0xC000200081) == 0)
      {
        v18 = v32 ^ 1;
        return v18 & 1;
      }

      if (*(a4 + 16))
      {
        v36 = (a3 + 24);
      }

      else
      {
        v36 = *(a3 + 2);
      }

      v37 = *(*v36 + v34 + 1);
      if ((v32 & v37) != 1)
      {
        v18 = v32 ^ v37 ^ 1;
        return v18 & 1;
      }

      v38 = TSCEASTRelativeCoordRefElement::tableUID(this, a2, v25, v26);
      v40 = v39;
      if (v38 == TSCEASTRelativeCoordRefElement::tableUID(a4, a3, v41, v42))
      {
        v18 = v40 == v43;
        return v18 & 1;
      }
    }

    v18 = 0;
    return v18 & 1;
  }

  return TSCEASTElement::isEquivalent(this, a2, a3, a4, a5, a6, a7);
}

unint64_t TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement(TSCEASTNodeArray *this, __n128 *a2, const TSKUIDStruct *a3, const TSCERelativeCellCoordinate *a4, void *a5, TSCEUndoTractList *a6)
{
  v6 = a4;
  v10 = a5;
  v14 = v10;
  v15 = *a2 != 0;
  lower = a3->_lower;
  v17 = LODWORD(a3->_lower) == 0x7FFFFFFF && WORD2(a3->_lower) == 0x7FFF;
  v18 = lower != 0x7FFFFFFF && WORD2(a3->_lower) == 0x7FFF;
  v19 = lower == 0x7FFFFFFF && WORD2(a3->_lower) != 0x7FFF;
  if (!objc_msgSend_tractCount(v10, v11, v12, v13))
  {

    v14 = 0;
  }

  v22 = v6 & 0xF0 | v15 | (2 * (v14 != 0));
  if (v18)
  {
    v23 = 4;
  }

  else
  {
    v23 = 0;
  }

  if (v19)
  {
    v24 = 8;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24 | v23 | v22;
  v26 = v22 | 0xC;
  v27 = !v17;
  if (v17)
  {
    v28 = v26;
  }

  else
  {
    v28 = v25;
  }

  if (v27)
  {
    v29 = 36;
  }

  else
  {
    v29 = 29;
  }

  if (!v27)
  {
    LOBYTE(v18) = 1;
    LOBYTE(v19) = 1;
  }

  var1 = this->var1;
  TSCEASTNodeArray::writeUInt8(this, v29, v20, v21);
  TSCEASTNodeArray::writeUInt8(this, v28, v31, v32);
  if (v15)
  {
    sub_22122C498(this, a2, v33, v34);
  }

  if (!v19)
  {
    v37 = a3->_lower;
    sub_22122C908(this, &v37, v33, v34);
  }

  if (!v18)
  {
    v36 = WORD2(a3->_lower);
    sub_22133FA18(this, &v36, v33, v34);
  }

  if ((v28 & 2) != 0)
  {
    TSCEASTNodeArray::writeUidTractList(this, v14);
  }

  return var1;
}

void sub_22133FA18(TSCEASTNodeArray *this, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!this->var0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTNodeArray::write(const T &) [T = short]", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.h", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 171, 0, "invalid nil value for '%{public}s'", "_nodeArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  var1 = this->var1;
  if (this->var2 - var1 < 2 || (var0 = this->var0) == 0)
  {
    TSCEASTNodeArray::resizeCapacity(this, 2uLL, a3, a4);
    var0 = this->var0;
    if (!this->var0)
    {
      return;
    }

    var1 = this->var1;
  }

  *&var0[var1] = *a2;
  this->var1 += 2;
}

void TSCEASTRelativeCoordRefElement::copyIntoNodeArray(TSCEASTRelativeCoordRefElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  sub_22120CA10(a3, a2, a3, a4);
  v22._upper = TSCEASTRelativeCoordRefElement::tableUID(this, a3, v7, v8);
  v23 = v9;
  v22._lower = TSCEASTRelativeCoordRefElement::relativeCoord(this, a3, v10, v11);
  if (*(this + 16))
  {
    v12 = (a3 + 24);
  }

  else
  {
    v12 = *(a3 + 2);
  }

  v13 = *(this + 1);
  v14 = *(*v12 + v13) - 29;
  v15 = v14 > 0x27;
  v16 = (1 << v14) & 0xC000200081;
  if (v15 || v16 == 0)
  {
    v19 = 0;
  }

  else
  {
    if (*(this + 16))
    {
      v18 = (a3 + 24);
    }

    else
    {
      v18 = *(a3 + 2);
    }

    v19 = *(*v18 + v13 + 1);
  }

  v20 = (*(*this + 96))(this, a3);
  TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement(a2, &v22._upper, &v22, v19, v20, v21);

  operator new();
}

unint64_t TSCEASTRelativeCoordRefElement::appendReferenceErrorWithTractList(TSCEASTNodeArray *this, unint64_t a2, void *a3, TSCEUndoTractList *a4, uint64_t a5, TSCEUndoTractList *a6)
{
  var18.var0 = 0;
  var18.var1 = 0;
  var18.var2 = (a2 << 43) & 0x1000000000000 | (((a2 >> 4) & 1) << 56) | 0x7FFF7FFFFFFFLL;
  return TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement(this, &var18, &var18.var2, a2, a3, a6);
}

unint64_t TSCEASTRelativeCoordRefElement::appendLocalCellReferenceElement(TSCEASTNodeArray *this, TSCEASTNodeArray *a2, void *a3, unsigned int a4, int a5, void *a6, TSCEUndoTractList *a7)
{
  v15 = a6;
  if (a5)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  v31._upper = 0;
  v32 = 0;
  sub_2210898C4(a2, v12, v13, v14);
  sub_2210899C8(a3, v17, v18, v19);
  sub_2210898C4(a2, v20, v21, v22);
  sub_2210899C8(a3, v23, v24, v25);
  v27 = 0x100000000000000;
  if (!a4)
  {
    v27 = 0;
  }

  v28 = 0x1000000000000;
  if (!a5)
  {
    v28 = 0;
  }

  v31._lower = v27 | v28 | (a2 << 32) | a3;
  appended = TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement(this, &v31._upper, &v31, (16 * (v16 | a4)), v15, v26);

  return appended;
}

unint64_t TSCEASTRelativeCoordRefElement::appendLocalColumnReferenceElement(TSCEASTNodeArray *this, TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v14._upper = 0;
  v15 = 0;
  sub_2210898C4(a2, a2, a3, a4);
  sub_2210898C4(a2, v7, v8, v9);
  v11 = 0x100000000000000;
  if (!v4)
  {
    v11 = 0;
  }

  v14._lower = v11 | (a2 << 32) | 0x7FFFFFFF;
  if (v4)
  {
    v12 = 16;
  }

  else
  {
    v12 = 0;
  }

  return TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement(this, &v14._upper, &v14, v12, 0, v10);
}

unint64_t TSCEASTRelativeCoordRefElement::appendLocalRowReferenceElement(TSCEASTNodeArray *this, TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v14._upper = 0;
  v15 = 0;
  sub_2210899C8(a2, a2, a3, a4);
  sub_2210899C8(a2, v7, v8, v9);
  v11 = 0x7FFF00000000;
  if (v4)
  {
    v11 = 0x17FFF00000000;
  }

  v14._lower = v11 | a2;
  if (v4)
  {
    v12 = 32;
  }

  else
  {
    v12 = 0;
  }

  return TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement(this, &v14._upper, &v14, v12, 0, v10);
}

unint64_t TSCEASTRelativeCoordRefElement::appendCrossTableCellReferenceElement(TSCEASTNodeArray *this, const TSKUIDStruct *a2, const TSCERelativeCellCoordinate *a3, int a4, __n128 *a5, TSCEUndoTractList *a6, TSCEUndoTractList *a7)
{
  v7 = 2;
  if (!a4)
  {
    v7 = 0;
  }

  return TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement(this, a5, a2, (16 * (v7 | a3)), a6, a6);
}

unint64_t TSCEASTRelativeCoordRefElement::appendCrossTableColumnReferenceElement(TSCEASTNodeArray *this, TSCEASTNodeArray *a2, uint64_t a3, __n128 *a4, const TSKUIDStruct *a5)
{
  v6 = a3;
  sub_2210898C4(a2, a2, a3, a4);
  sub_2210898C4(a2, v9, v10, v11);
  v13 = 0x100000000000000;
  if (!v6)
  {
    v13 = 0;
  }

  v16._lower = v13 | (a2 << 32) | 0x7FFFFFFF;
  if (v6)
  {
    v14 = 16;
  }

  else
  {
    v14 = 0;
  }

  return TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement(this, a4, &v16, v14, 0, v12);
}

unint64_t TSCEASTRelativeCoordRefElement::appendCrossTableRowReferenceElement(TSCEASTNodeArray *this, TSCEASTNodeArray *a2, uint64_t a3, __n128 *a4, const TSKUIDStruct *a5)
{
  v6 = a3;
  sub_2210899C8(a2, a2, a3, a4);
  sub_2210899C8(a2, v9, v10, v11);
  v13 = 0x7FFF00000000;
  if (v6)
  {
    v13 = 0x17FFF00000000;
  }

  v16._lower = v13 | a2;
  if (v6)
  {
    v14 = 32;
  }

  else
  {
    v14 = 0;
  }

  return TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement(this, a4, &v16, v14, 0, v12);
}

uint64_t TSCEASTLinkedRefElement::tableUID(TSCEASTLinkedRefElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, (v4[1] + 1), v5, v6);
  v7 = v4[1];
  result = *(**v4 + v7);
  v4[1] = v7 + 16;
  return result;
}

__n128 TSCEASTLinkedRefElement::setTableUID(TSCEASTLinkedRefElement *this, __n128 *a2, TSCEASTIteratorBase *a3)
{
  if (a2->n128_u64[0] != (*(*this + 136))(this, a3) || a2->n128_u64[1] != v6)
  {
    sub_22120CA10(a3, v6, v7, v8);
    if (*(this + 16))
    {
      v11 = (a3 + 24);
    }

    else
    {
      v11 = *(a3 + 2);
    }

    v12 = *v11;
    if (v12)
    {
      result = *a2;
      *(v12 + *(this + 1) + 1) = *a2;
    }
  }

  return result;
}

BOOL TSCEASTLinkedRefElement::mayHaveBeenImplicitIntersection(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v2 = (a2 + 24);
  }

  else
  {
    v2 = *(a2 + 16);
  }

  return (*(*v2 + *(a1 + 8)) & 0xFE) == 64;
}

unint64_t TSCEASTLinkedRefElement::appendLinkedRefElement(TSCEASTNodeArray *a1, char a2, __n128 *a3, uint64_t a4)
{
  var1 = a1->var1;
  TSCEASTNodeArray::writeUInt8(a1, a2, a3, a4);
  sub_22122C498(a1, a3, v7, v8);
  return var1;
}

unint64_t TSCEASTLinkedRefElement::appendLinkedCellRefElement(TSCEASTNodeArray *this, __n128 *a2, const TSKUIDStruct *a3, uint64_t a4)
{
  var1 = this->var1;
  TSCEASTNodeArray::writeUInt8(this, 63, a3, a4);
  sub_22122C498(this, a2, v7, v8);
  return var1;
}

void TSCEASTLinkedRefElement::copyIntoNodeArray(TSCEASTLinkedRefElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  sub_22120CA10(a3, a2, a3, a4);
  if (*(this + 16))
  {
    v7 = (a3 + 24);
  }

  else
  {
    v7 = *(a3 + 2);
  }

  v8 = *(*v7 + *(this + 1));
  v14.n128_u64[0] = (*(*this + 136))(this, a3);
  v14.n128_u64[1] = v9;
  TSCEASTNodeArray::writeUInt8(a2, v8, v10, v11);
  sub_22122C498(a2, &v14, v12, v13);
  operator new();
}

uint64_t TSCEASTUidReferenceElement::sizeBeforeUndoTractList(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v2 = (a2 + 24);
  }

  else
  {
    v2 = *(a2 + 16);
  }

  v3 = *(a1 + 8);
  v4 = *(*v2 + v3) - 29;
  v5 = v4 > 0x27;
  v6 = (1 << v4) & 0xC000200081;
  if (v5 || v6 == 0)
  {
    return 3;
  }

  if (*(a1 + 16))
  {
    v8 = (a2 + 24);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  if (*(*v8 + v3 + 1))
  {
    return 19;
  }

  else
  {
    return 3;
  }
}

int64_t TSCEASTUidReferenceElement::size(TSCEASTUidReferenceElement *this, TSCEASTIteratorBase *a2)
{
  if (*(this + 16))
  {
    v2 = (a2 + 24);
  }

  else
  {
    v2 = *(a2 + 2);
  }

  v3 = *(this + 1);
  v4 = *(*v2 + v3) - 29;
  v5 = v4 > 0x27;
  v6 = (1 << v4) & 0xC000200081;
  if (v5 || v6 == 0)
  {
    v9 = 3;
  }

  else
  {
    if (*(this + 16))
    {
      v8 = (a2 + 24);
    }

    else
    {
      v8 = *(a2 + 2);
    }

    if (*(*v8 + v3 + 1))
    {
      v9 = 19;
    }

    else
    {
      v9 = 3;
    }
  }

  return TSCEASTElement::sizeOfUndoTractList(this, a2) + v9;
}

uint64_t TSCEASTUidReferenceElement::colonTractFlags(TSCEASTUidReferenceElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v5 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v5, (*(this + 1) + 2), v6, v7);
  v8 = v5[1];
  result = *(**v5 + v8);
  v5[1] = v8 + 1;
  return result;
}

_BYTE *TSCEASTUidReferenceElement::setColonTractFlags(TSCEASTUidReferenceElement *this, const TSCEASTColonTractFlags *a2, TSCEASTIteratorBase *a3, uint64_t a4)
{
  v7 = *(this + 1);
  result = sub_22120CA10(a3, a2, a3, a4);
  if (*(this + 16))
  {
    v9 = (a3 + 24);
  }

  else
  {
    v9 = *(a3 + 2);
  }

  v10 = *v9;
  if (v10)
  {
    *(v10 + v7 + 2) = a2->_flags;
  }

  return result;
}

uint64_t TSCEASTUidReferenceElement::tableUID(TSCEASTUidReferenceElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 2);
  }

  v6 = *(this + 1);
  v7 = *(*v5 + v6) - 29;
  v8 = v7 > 0x27;
  v9 = (1 << v7) & 0xC000200081;
  if (v8 || v9 == 0)
  {
    return 0;
  }

  v11 = (*(this + 16) & 1) != 0 ? (a2 + 24) : *(a2 + 2);
  if ((*(*v11 + v6 + 1) & 1) == 0)
  {
    return 0;
  }

  v13 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v13, (*(this + 1) + 3), v14, v15);
  v16 = v13[1];
  result = *(**v13 + v16);
  v13[1] = v16 + 16;
  return result;
}

__n128 TSCEASTUidReferenceElement::setTableUID(TSCEASTUidReferenceElement *this, __n128 *a2, TSCEASTIteratorBase *a3, uint64_t a4)
{
  if (*(this + 16))
  {
    v7 = (a3 + 24);
  }

  else
  {
    v7 = *(a3 + 2);
  }

  v8 = *(this + 1);
  v9 = *(*v7 + v8) - 29;
  v10 = v9 > 0x27;
  v11 = (1 << v9) & 0xC000200081;
  v12 = v10 || v11 == 0;
  if (!v12 && ((*(this + 16) & 1) == 0 ? (v13 = *(a3 + 2)) : (v13 = (a3 + 24)), (*(*v13 + v8 + 1) & 1) != 0))
  {
    sub_22120CA10(a3, a2, a3, a4);
    if (*(this + 16))
    {
      v25 = (a3 + 24);
    }

    else
    {
      v25 = *(a3 + 2);
    }

    v26 = *v25;
    if (v26)
    {
      result = *a2;
      *(v26 + *(this + 1) + 3) = *a2;
    }
  }

  else if (*a2 != 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTUidReferenceElement::setTableUID(const TSCEOwnerUID &, TSCEASTIteratorBase *)", a4);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTElements.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 2951, 0, "Cannot use setTableUID on a tag that isn't already cross-table");

    v23 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v23, v20, v21, v22);
  }

  return result;
}

uint64_t TSCEASTUidReferenceElement::preserveFlags(TSCEASTUidReferenceElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 16))
  {
    v4 = (a2 + 24);
  }

  else
  {
    v4 = *(a2 + 2);
  }

  v5 = *(this + 1);
  v6 = *(*v4 + v5) - 29;
  v7 = v6 > 0x27;
  v8 = (1 << v6) & 0xC000200081;
  if (v7 || v8 == 0)
  {
    v11 = 0;
  }

  else
  {
    if (*(this + 16))
    {
      v10 = (a2 + 24);
    }

    else
    {
      v10 = *(a2 + 2);
    }

    v11 = (*(*v10 + v5 + 1) >> 4) & 3;
  }

  return (TSCEASTUidReferenceElement::colonTractFlags(this, a2, a3, a4) >> 2) & 0xC | v11;
}

_BYTE *TSCEASTUidReferenceElement::setPreserveFlags(TSCEASTUidReferenceElement *this, const TSUPreserveFlags *a2, TSCEASTIteratorBase *a3, uint64_t a4)
{
  if (*(this + 16))
  {
    v7 = (a3 + 24);
  }

  else
  {
    v7 = *(a3 + 2);
  }

  v8 = *(this + 1);
  v9 = *(*v7 + v8) - 29;
  v10 = v9 > 0x27;
  v11 = (1 << v9) & 0xC000200081;
  if (v10 || v11 == 0)
  {
    v14 = 0;
  }

  else
  {
    if (*(this + 16))
    {
      v13 = (a3 + 24);
    }

    else
    {
      v13 = *(a3 + 2);
    }

    v14 = *(*v13 + v8 + 1) & 0xCF;
  }

  TSCEASTElement::setRefFlags(this, ((16 * (a2->_flags & 3)) | v14), a3, a4);
  v17 = TSCEASTUidReferenceElement::colonTractFlags(this, a3, v15, v16);
  flags = a2->_flags;
  v19 = *(this + 1);
  result = sub_22120CA10(a3, v20, v21, v22);
  if (*(this + 16))
  {
    v24 = (a3 + 24);
  }

  else
  {
    v24 = *(a3 + 2);
  }

  v25 = *v24;
  if (v25)
  {
    *(v25 + v19 + 2) = v17 & 0xCF | (16 * ((flags >> 2) & 3));
  }

  return result;
}

BOOL TSCEASTUidReferenceElement::mayHaveBeenImplicitIntersection(TSCEASTUidReferenceElement *this, TSCEASTRewriter *a2)
{
  v2 = (*(*this + 96))(this, a2);
  if (objc_msgSend_tractCount(v2, v3, v4, v5))
  {
    v9 = objc_msgSend_activeUidTract(v2, v6, v7, v8);
    v13 = v9;
    v21 = 0;
    if (v9)
    {
      if ((v14 = objc_msgSend_columnUids(v9, v10, v11, v12), v18 = *v14, *(v14 + 8) - *v14 == 16) && !*v18 && !v18[1] || (v19 = objc_msgSend_rowUids(v13, v15, v16, v17), v20 = *v19, *(v19 + 8) - *v19 == 16) && !*v20 && !v20[1])
      {
        v21 = 1;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void TSCEASTUidReferenceElement::uidReference(uint64_t *__return_ptr a1@<X8>, TSCEASTUidReferenceElement *this@<X0>, TSCEASTIteratorBase *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v20 = TSCEASTUidReferenceElement::preserveFlags(this, a3, a4, a5);
  v10 = TSCEASTElement::mutableUndoTractList(this, a3);
  if (*(this + 16))
  {
    v11 = (a3 + 24);
  }

  else
  {
    v11 = *(a3 + 2);
  }

  v12 = *(this + 1);
  v13 = *(*v11 + v12) - 29;
  v14 = v13 > 0x27;
  v15 = (1 << v13) & 0xC000200081;
  v16 = v14 || v15 == 0;
  if (!v16 && ((*(this + 16) & 1) == 0 ? (v17 = *(a3 + 2)) : (v17 = (a3 + 24)), (*(*v17 + v12 + 1) & 1) != 0))
  {
    *&v19 = TSCEASTUidReferenceElement::tableUID(this, a3, v8, v9);
    *(&v19 + 1) = v18;
    sub_22122B9B8(a1, &v19, v10, &v20);
  }

  else
  {
    sub_22122B92C(a1, v10, &v20);
  }
}

unint64_t TSCEASTUidReferenceElement::appendUidReferenceElement(TSCEASTNodeArray *a1, uint64_t a2)
{
  LOBYTE(v9._lower) = 0;
  v7._flags = sub_22122B9BC(a2);
  TSCEASTRefFlags::setPreserveFlags(&v9, &v7);
  v4 = (4 * sub_22122B9BC(a2)) & 0x10;
  v8._flags = v4 & 0xDF | (32 * ((sub_22122B9BC(a2) & 8) != 0));
  return TSCEASTUidReferenceElement::appendUidReferenceElement(a1, (a2 + 8), &v9, &v8, *a2, v5);
}

unint64_t TSCEASTUidReferenceElement::appendUidReferenceElement(TSCEASTNodeArray *this, __n128 *a2, const TSKUIDStruct *a3, const TSCEASTRefFlags *a4, TSCEASTColonTractFlags *a5, TSCEUndoTractList *a6)
{
  v10 = a5;
  lower = a3->_lower;
  if (!objc_msgSend_tractCount(v10, v12, v13, v14))
  {

    v10 = 0;
  }

  v18 = objc_msgSend_activeUidTract(v10, v15, v16, v17);
  v22 = v18;
  if (v18)
  {
    v23 = objc_msgSend_columnUids(v18, v19, v20, v21);
    v27 = *v23;
    if (*(v23 + 8) - *v23 == 16 && !*v27 && !v27[1])
    {
      lower |= 4u;
    }

    v28 = objc_msgSend_rowUids(v22, v24, v25, v26);
    v29 = *v28;
    if (*(v28 + 8) - *v28 == 16 && !*v29 && !v29[1])
    {
      lower |= 8u;
    }
  }

  v30 = *a2 != 0;
  var1 = this->var1;
  TSCEASTNodeArray::writeUInt8(this, 50, v20, v21);
  TSCEASTNodeArray::writeUInt8(this, lower & 0xFC | (2 * (v10 != 0)) | v30, v32, v33);
  __src = a4->_flags;
  sub_22120D7E8(this, &__src, 1uLL, v34);
  if (v30)
  {
    sub_22122C498(this, a2, v35, v36);
  }

  if (v10)
  {
    TSCEASTNodeArray::writeUidTractList(this, v10);
  }

  return var1;
}

void TSCEASTUidReferenceElement::copyIntoNodeArray(TSCEASTUidReferenceElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  sub_22120CA10(a3, a2, a3, a4);
  *&v23[1] = TSCEASTUidReferenceElement::tableUID(this, a3, v7, v8);
  *&v23[9] = v9;
  if (*(this + 16))
  {
    v12 = (a3 + 24);
  }

  else
  {
    v12 = *(a3 + 2);
  }

  v13 = *(this + 1);
  v14 = *(*v12 + v13) - 29;
  v15 = v14 > 0x27;
  v16 = (1 << v14) & 0xC000200081;
  if (v15 || v16 == 0)
  {
    v19 = 0;
  }

  else
  {
    if (*(this + 16))
    {
      v18 = (a3 + 24);
    }

    else
    {
      v18 = *(a3 + 2);
    }

    v19 = *(*v18 + v13 + 1);
  }

  v23[0] = v19;
  v22._flags = TSCEASTUidReferenceElement::colonTractFlags(this, a3, v10, v11);
  v20 = (*(*this + 96))(this, a3);
  TSCEASTUidReferenceElement::appendUidReferenceElement(a2, &v23[1], v23, &v22, v20, v21);

  operator new();
}

uint64_t TSCEASTViewTractRefElement::sizeBeforeUndoTractList(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v2 = (a2 + 24);
  }

  else
  {
    v2 = *(a2 + 16);
  }

  v3 = *(a1 + 8);
  v4 = *(*v2 + v3) - 29;
  v5 = v4 > 0x27;
  v6 = (1 << v4) & 0xC000200081;
  if (v5 || v6 == 0)
  {
    return 7;
  }

  if (*(a1 + 16))
  {
    v8 = (a2 + 24);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  if (*(*v8 + v3 + 1))
  {
    return 23;
  }

  else
  {
    return 7;
  }
}

int64_t TSCEASTViewTractRefElement::size(TSCEASTViewTractRefElement *this, TSCEASTIteratorBase *a2)
{
  if (*(this + 16))
  {
    v2 = (a2 + 24);
  }

  else
  {
    v2 = *(a2 + 2);
  }

  v3 = *(this + 1);
  v4 = *(*v2 + v3) - 29;
  v5 = v4 > 0x27;
  v6 = (1 << v4) & 0xC000200081;
  if (v5 || v6 == 0)
  {
    v9 = 7;
  }

  else
  {
    if (*(this + 16))
    {
      v8 = (a2 + 24);
    }

    else
    {
      v8 = *(a2 + 2);
    }

    if (*(*v8 + v3 + 1))
    {
      v9 = 23;
    }

    else
    {
      v9 = 7;
    }
  }

  return TSCEASTElement::sizeOfUndoTractList(this, a2) + v9;
}

uint64_t TSCEASTViewTractRefElement::colonTractFlags(TSCEASTViewTractRefElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v5 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v5, (*(this + 1) + 2), v6, v7);
  v8 = v5[1];
  result = *(**v5 + v8);
  v5[1] = v8 + 1;
  return result;
}

_BYTE *TSCEASTViewTractRefElement::setColonTractFlags(TSCEASTViewTractRefElement *this, const TSCEASTColonTractFlags *a2, TSCEASTIteratorBase *a3, uint64_t a4)
{
  v7 = *(this + 1);
  result = sub_22120CA10(a3, a2, a3, a4);
  if (*(this + 16))
  {
    v9 = (a3 + 24);
  }

  else
  {
    v9 = *(a3 + 2);
  }

  v10 = *v9;
  if (v10)
  {
    *(v10 + v7 + 2) = a2->_flags;
  }

  return result;
}

uint64_t TSCEASTViewTractRefElement::tableUID(TSCEASTViewTractRefElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 2);
  }

  v6 = *(this + 1);
  v7 = *(*v5 + v6) - 29;
  v8 = v7 > 0x27;
  v9 = (1 << v7) & 0xC000200081;
  if (v8 || v9 == 0)
  {
    return 0;
  }

  v11 = (*(this + 16) & 1) != 0 ? (a2 + 24) : *(a2 + 2);
  if ((*(*v11 + v6 + 1) & 1) == 0)
  {
    return 0;
  }

  v13 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v13, (*(this + 1) + 3), v14, v15);
  v16 = v13[1];
  result = *(**v13 + v16);
  v13[1] = v16 + 16;
  return result;
}