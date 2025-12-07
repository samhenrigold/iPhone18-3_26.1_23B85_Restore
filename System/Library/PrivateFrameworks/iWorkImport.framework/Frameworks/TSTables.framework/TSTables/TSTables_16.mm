TSCEASTBinaryElement *TSTExpressionTreeCreator::binaryInfixOperatorNode(TSTExpressionTreeCreator *this, TSCEASTBinaryElement *a2)
{
  v4 = TSCEASTElement::tag(a2, this);
  v8 = sub_2213F63D8(v4, v5, v6, v7);
  v9 = [TSTOperatorNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v9, v10, *(this + 25), v8, 0, 0, 0);
  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, 2);

  return a2;
}

uint64_t sub_2213F63D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
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
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeCreator.mm", v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 378, 0, "Unknown operator tag: %d", a1);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  return 0;
}

TSCEASTUnaryElement *TSTExpressionTreeCreator::unaryOperatorNode(TSTExpressionTreeCreator *this, TSCEASTUnaryElement *a2, int a3)
{
  v6 = TSCEASTElement::tag(a2, this);
  v10 = sub_2213F63D8(v6, v7, v8, v9);
  if (a3)
  {
    v11 = [TSTPostfixOperatorNode alloc];
  }

  else
  {
    v11 = [TSTPrefixOperatorNode alloc];
  }

  Index_lastIndex = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v11, v12, *(this + 25), v10, 0, 0, 0);
  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, 1);

  return a2;
}

TSCEASTFunctionElement *TSTExpressionTreeCreator::functionNode(TSTExpressionTreeCreator *this, TSCEASTFunctionElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTFunctionElement::functionIndex(a2, this, a3, a4);
  v7 = (*(*a2 + 48))(a2, this);
  v10 = TSCEASTFunctionElement::whitespace(a2, this, v8, v9);
  v11 = [TSTFunctionNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(v11, v12, *(this + 25), v6, 0, 0, 0);
  objc_msgSend_setWhitespaceAfterFunctionName_(Index_lastIndex, v14, v10, v15);
  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, v7);

  return a2;
}

TSCEASTUnknownFunctionElement *TSTExpressionTreeCreator::unknownFunctionNode(TSTExpressionTreeCreator *this, TSCEASTUnknownFunctionElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTUnknownFunctionElement::unknownFunctionName(a2, this, a3, a4);
  v7 = (*(*a2 + 48))(a2, this);
  v8 = [TSTFunctionNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(v8, v9, *(this + 25), 0, 0, 0, 0);
  objc_msgSend_setInvalidFunctionName_(Index_lastIndex, v11, v6, v12);
  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, v7);

  return a2;
}

TSCEASTColonElement *TSTExpressionTreeCreator::colonNode(TSTExpressionTreeCreator *this, TSCEASTColonElement *a2)
{
  v4 = [TSTOperatorNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v4, v5, *(this + 25), *MEMORY[0x277D81538], 0, 0, 0);
  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, 2);

  return a2;
}

TSCEASTColonTractElement *TSTExpressionTreeCreator::colonTractNode(TSTExpressionTreeCreator *this, TSCEASTColonTractElement *a2, uint64_t a3, uint64_t a4)
{
  TSCEASTColonTractElement::relativeTractRef(a2, this, a3, a4);
  v76 = v81 = 0;
  v79.i64[0] = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0.coordinate;
  v7 = objc_msgSend_absoluteCellTractRefForHostCell_offTable_(v76, v6, &v79, &v81);
  if ((objc_msgSend_hasTableUID(v7, v8, v9, v10) & 1) == 0)
  {
    v14 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
    objc_msgSend_setTableUID_(v7, v15, v14->var0.var0._tableUID._lower, v14->var0.var0._tableUID._upper);
  }

  v16 = objc_msgSend_tableUID(v7, v11, v12, v13);
  v18 = v17;
  v19 = sub_221089E8C(this);
  v21 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v20, v16, v18, v19);

  v75 = v21;
  v25 = objc_msgSend_translator(v21, v22, v23, v24);
  v29 = objc_msgSend_coordinateMapper(v25, v26, v27, v28);

  v32 = objc_msgSend_viewTractRefForBaseTractRef_(v29, v30, v7, v31);
  v33 = [TSTUIDRectRef alloc];
  v34 = sub_221089E8C(this);
  v36 = objc_msgSend_initWithCalcEngine_viewTractRef_(v33, v35, v34, v32);

  v40 = objc_msgSend_preserveFlags(v7, v37, v38, v39);
  objc_msgSend_setBasePreserveFlags_(v36, v41, v40, v42);
  if ((v81 & 1) == 0 && objc_msgSend_isValid(v36, v43, v44, v45) && ((objc_msgSend_spansAllColumns(v7, v46, v47, v48) & 1) != 0 || (v52 = objc_msgSend_numColumns(v7, v49, v50, v51), objc_msgSend_numberOfColumns(v36, v53, v54, v55) == v52)) && ((objc_msgSend_spansAllRows(v7, v49, v50, v51) & 1) != 0 || (v59 = objc_msgSend_numRows(v7, v56, v57, v58), objc_msgSend_numberOfRows(v36, v60, v61, v62) == v59)))
  {
    v63 = [TSTReferenceNode alloc];
    v64 = *(this + 25);
    v65 = sub_221089E8C(this);
    v66 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
    v79 = *&v66->var0.var0.coordinate.row;
    v80._lower = v66->var0.var0._tableUID._upper;
    v68 = objc_msgSend_initWithContext_calculationEngine_uidRectRef_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v63, v67, v64, v65, v36, &v79, 0, *(this + 208));
  }

  else
  {
    v69 = [TSTReferenceNode alloc];
    v64 = *(this + 25);
    v65 = sub_221089E8C(this);
    tableUID = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0._tableUID;
    v79 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v80 = tableUID;
    v71 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
    v77 = *&v71->var0.var0.coordinate.row;
    upper = v71->var0.var0._tableUID._upper;
    v68 = objc_msgSend_initWithContext_calculationEngine_baseRangeRef_preserveFlags_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v69, v72, v64, v65, &v79, 0, &v77, 0, *(this + 208));
  }

  v73 = v68;

  if (v73)
  {
    TSTExpressionTreeCreator::addExpression(this, v73, 0);
  }

  return a2;
}

TSCEASTNumberElement *TSTExpressionTreeCreator::numberNode(id *this, TSCEASTNumberElement *a2, uint64_t a3, uint64_t a4)
{
  v17 = TSCEASTNumberElement::value(a2, this, a3, a4);
  v18 = v6;
  v7 = [TSTNumberNode alloc];
  v8 = this[25];
  v9 = sub_221089E8C(this);
  v13 = objc_msgSend_documentLocale(v9, v10, v11, v12, v17, v18);
  Index_lastIndex = objc_msgSend_initWithContext_number_locale_firstIndex_lastIndex_(v7, v14, v8, &v17, v13, 0, 0);

  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, 0);
  return a2;
}

TSCEASTBooleanElement *TSTExpressionTreeCreator::BOOLeanNode(TSTExpressionTreeCreator *this, TSCEASTBooleanElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTBooleanElement::value(a2, this, a3, a4);
  v7 = [TSTBooleanNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_BOOLValue_firstIndex_lastIndex_(v7, v8, *(this + 25), v6, 0, 0);
  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, 0);

  return a2;
}

TSCEASTStringElement *TSTExpressionTreeCreator::stringNode(TSTExpressionTreeCreator *this, TSCEASTStringElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTStringElement::string(a2, this, a3, a4);
  v7 = [TSTStringNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_stringValue_firstIndex_lastIndex_(v7, v8, *(this + 25), v6, 0, 0);
  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, 0);

  return a2;
}

TSCEASTDateElement *TSTExpressionTreeCreator::dateNode(TSTExpressionTreeCreator *this, TSCEASTDateElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTDateElement::value(a2, this, a3, a4);
  v9 = TSCEASTDateElement::dateTimeFormat(a2, this, v7, v8);
  v10 = [TSTDateNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_dateValue_firstIndex_lastIndex_(v10, v11, *(this + 25), v6, 0, 0);
  if (objc_msgSend_length(v9, v13, v14, v15))
  {
    objc_msgSend_setDateFormat_(Index_lastIndex, v16, v9, v17);
  }

  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, 0);

  return a2;
}

TSCEASTDurationElement *TSTExpressionTreeCreator::durationNode(id *this, TSCEASTDurationElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTDurationElement::durationFormat(a2, this, a3, a4);
  *&v16 = v6;
  *(&v16 + 2) = BYTE2(v6);
  v7 = [TSTDurationNode alloc];
  v8 = this[25];
  v11 = TSCEASTDurationElement::unitNum(a2, this, v9, v10);
  v12 = TSCEDurationFormat::asTSKDurationFormat(&v16);
  Index_lastIndex = objc_msgSend_initWithContext_durationInterval_durationFormat_firstIndex_lastIndex_(v7, v13, v8, v12, 0, 0, v11);

  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, 0);
  return a2;
}

TSCEASTTagOnlyElement *TSTExpressionTreeCreator::emptyArgumentNode(TSTExpressionTreeCreator *this, TSCEASTTagOnlyElement *a2)
{
  v4 = [TSTEmptyExpressionNode alloc];
  v7 = objc_msgSend_initWithContext_(v4, v5, *(this + 25), v6);
  TSTExpressionTreeCreator::addExpression(this, v7, 0);

  return a2;
}

TSCEASTTokenElement *TSTExpressionTreeCreator::tokenNode(TSTExpressionTreeCreator *this, TSCEASTTokenElement *a2)
{
  v4 = [TSTArgumentPlaceholderNode alloc];
  v7 = objc_msgSend_initWithContext_(v4, v5, *(this + 25), v6);
  TSTExpressionTreeCreator::addExpression(this, v7, 0);

  return a2;
}

TSCEASTArrayElement *TSTExpressionTreeCreator::arrayNode(TSTExpressionTreeCreator *this, TSCEASTArrayElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTArrayElement::numColumns(a2, this, a3, a4);
  v9 = TSCEASTArrayElement::numRows(a2, this, v7, v8);
  v10 = [TSTArrayNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_children_columns_rows_firstIndex_lastIndex_(v10, v11, *(this + 25), 0, v6, v9, 0, 0);
  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, v9 * v6);

  return a2;
}

TSCEASTListElement *TSTExpressionTreeCreator::listNode(TSTExpressionTreeCreator *this, TSCEASTListElement *a2)
{
  v4 = (*(*a2 + 48))(a2, this);
  v5 = [TSTListNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_children_firstIndex_lastIndex_(v5, v6, *(this + 25), 0, 0, 0);
  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, v4);

  return a2;
}

TSCEASTRelativeCoordRefElement *TSTExpressionTreeCreator::anyReferenceNode(TSCEFormulaRewriteContext **this, TSCEASTRelativeCoordRefElement *a2)
{
  v4 = TSCEASTElement::refFlags(a2, this);
  v7 = TSCEASTRelativeCoordRefElement::relativeCoord(a2, this, v5, v6);
  v8 = (v7 << 16) >> 48;
  v9 = TSCEFormulaRewriteContext::containingCell(this[1]);
  if (v4)
  {
    lower = TSCEASTRelativeCoordRefElement::tableUID(a2, this, v10, v11);
    upper = v14;
  }

  else
  {
    lower = v9->var0.var0._tableUID._lower;
    upper = v9->var0.var0._tableUID._upper;
  }

  tableUID = TSCEFormulaRewriteContext::containingCell(this[1])->var0.var0._tableUID;
  if ((v4 & 0xC) == 8)
  {
    v18._lower = lower;
    v18._upper = upper;
    TSTExpressionTreeCreator::processColumnReferenceNode(this, tableUID, v18, v8, (v4 >> 4) & 1);
  }

  else
  {
    v16._lower = lower;
    v16._upper = upper;
    if ((v4 & 0xC) == 4)
    {
      TSTExpressionTreeCreator::processRowReferenceNode(this, tableUID, v16, v7, (v4 >> 5) & 1);
    }

    else
    {
      TSTExpressionTreeCreator::processCellReferenceNode(this, tableUID, v16, v7, v8, (v4 >> 5) & 1, (v4 & 0x10) != 0);
    }
  }

  return a2;
}

void TSTExpressionTreeCreator::processRowReferenceNode(TSTExpressionTreeCreator *this, TSKUIDStruct a2, TSKUIDStruct a3, uint64_t a4, int a5)
{
  v5 = a5;
  upper = a3._upper;
  lower = a3._lower;
  v9 = a2._upper;
  v10 = a2._lower;
  if (a5)
  {
    v12 = 10;
  }

  else
  {
    v12 = 0;
  }

  v13 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
  if ((v5 & 1) == 0)
  {
    v16 = 0x7FFFFFFF;
    if (a4 == 0x7FFFFFFF)
    {
      goto LABEL_18;
    }

    coordinate = v13->var0.var0.coordinate;
    if (a4 < 1)
    {
      if (a4 && coordinate.row < -a4)
      {
        goto LABEL_17;
      }
    }

    else if ((999999 - a4) < coordinate.row)
    {
      goto LABEL_17;
    }

    if (coordinate.row == 0x7FFFFFFF)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v15);
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v21);
      v23 = NSStringFromTSUCellCoord();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v22, 195, 0, "Calling TSCEMakeAbsoluteRowFromRelativeRow with an invalid hostCell row: %@", v23);
    }

    else
    {
      v16 = coordinate.row + a4;
      if ((coordinate.row + a4) < 0x7FFFFFFF)
      {
        goto LABEL_18;
      }

      v38 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v15);
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v26);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v27, v19, v22, 191, 0, "overflow in row, input row: %d with host row: %lu", a4, coordinate.row);
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
LABEL_17:
    v16 = 0x7FFFFFFF;
    goto LABEL_18;
  }

  v16 = a4;
LABEL_18:
  v31 = v16 | 0x7FFF00000000;
  v32 = [TSTReferenceNode alloc];
  v33 = *(this + 25);
  v34 = sub_221089E8C(this);
  v40[0] = v31;
  v40[1] = v31;
  v40[2] = lower;
  v40[3] = upper;
  v39[0] = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0.coordinate;
  v39[1] = v10;
  v39[2] = v9;
  LOBYTE(v37) = *(this + 208);
  v36 = objc_msgSend_initWithContext_calculationEngine_baseRangeRef_preserveFlags_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v32, v35, v33, v34, v40, v12, v39, 0, v37);

  TSTExpressionTreeCreator::addExpression(this, v36, 0);
}

void TSTExpressionTreeCreator::processColumnReferenceNode(TSTExpressionTreeCreator *this, TSKUIDStruct a2, TSKUIDStruct a3, int a4, unsigned int a5)
{
  upper = a3._upper;
  lower = a3._lower;
  v9 = a2._upper;
  v10 = a2._lower;
  if (a5)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  v33 = v12;
  v13 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
  if (a5)
  {
    v16 = a4;
    goto LABEL_14;
  }

  v16 = 0x7FFF;
  if (a4 == 0x7FFF)
  {
    goto LABEL_14;
  }

  coordinate = v13->var0.var0.coordinate;
  if (a4 < 1)
  {
    if (a4 < 0 && -a4 > coordinate.column)
    {
      goto LABEL_14;
    }
  }

  else if (999 - a4 < coordinate.column)
  {
    goto LABEL_14;
  }

  v16 = coordinate.column + a4;
  if ((coordinate.column + a4) >= 0x7FFFu)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "TSUColumnIndex TSCEMakeAbsoluteColumnFromRelativeColumn(TSUCellCoord, TSURelativeColumnIndex, BOOL)", v15);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 168, 0, "overflow in column");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }

LABEL_14:
  v27 = (v16 << 32) | 0x7FFFFFFF;
  v28 = [TSTReferenceNode alloc];
  v29 = *(this + 25);
  v30 = sub_221089E8C(this);
  v35[0] = v27;
  v35[1] = v27;
  v35[2] = lower;
  v35[3] = upper;
  v34[0] = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0.coordinate;
  v34[1] = v10;
  v34[2] = v9;
  v32 = objc_msgSend_initWithContext_calculationEngine_baseRangeRef_preserveFlags_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v28, v31, v29, v30, v35, v33 | a5, v34, 0, *(this + 208));

  TSTExpressionTreeCreator::addExpression(this, v32, 0);
}

void TSTExpressionTreeCreator::processCellReferenceNode(TSTExpressionTreeCreator *this, TSKUIDStruct a2, TSKUIDStruct a3, void *a4, void *a5, int a6, BOOL a7)
{
  upper = a3._upper;
  lower = a3._lower;
  v12 = a2._upper;
  v13 = a2._lower;
  sub_2210898C4(a5, a2._lower, a2._upper, a3._lower);
  sub_2210899C8(a4, v15, v16, v17);
  sub_2210898C4(a5, v18, v19, v20);
  sub_2210899C8(a4, v21, v22, v23);
  v24 = 0x100000000000000;
  if (a7)
  {
    v25 = 4;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v26 = a6 == 0;
  v27 = 0x1000000000000;
  if (!a6)
  {
    v27 = 0;
  }

  v28 = v27 | v24 | (a5 << 32);
  if (v26)
  {
    v29 = 0;
  }

  else
  {
    v29 = 10;
  }

  v45._flags = v29 | a7 | v25;
  coordinate = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0.coordinate;
  v32 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(coordinate, (v28 | a4), &v45, v31);
  v33 = v32;
  v34 = v32 & 0xFFFF00000000;
  v35 = v32 != 0x7FFFFFFFLL || v34 == 0x7FFF00000000;
  if (!v35 || (v34 == 0x7FFF00000000 ? (v36 = v32 == 0x7FFFFFFFLL) : (v36 = 1), !v36))
  {
    v33 = 0x7FFF7FFFFFFFLL;
  }

  v37 = [TSTReferenceNode alloc];
  v38 = *(this + 25);
  v39 = sub_221089E8C(this);
  v44[0] = v33;
  v44[1] = v33;
  v44[2] = lower;
  v44[3] = upper;
  flags = v45._flags;
  v43[0] = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0.coordinate;
  v43[1] = v13;
  v43[2] = v12;
  v42 = objc_msgSend_initWithContext_calculationEngine_baseRangeRef_preserveFlags_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v37, v41, v38, v39, v44, flags, v43, 0, *(this + 208));

  TSTExpressionTreeCreator::addExpression(this, v42, 0);
}

TSCEASTRelativeCoordRefElement *TSTExpressionTreeCreator::referenceErrorNode(TSTExpressionTreeCreator *this, TSCEASTRelativeCoordRefElement *a2)
{
  v4 = [TSTReferenceNode alloc];
  v5 = *(this + 25);
  v6 = sub_221089E8C(this);
  tableUID = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0._tableUID;
  v15[0] = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v15[1] = tableUID;
  v8 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
  v13 = *&v8->var0.var0.coordinate.row;
  upper = v8->var0.var0._tableUID._upper;
  v12 = *(this + 208);
  v10 = objc_msgSend_initWithContext_calculationEngine_baseRangeRef_preserveFlags_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v4, v9, v5, v6, v15, 0, &v13, 0, v12);

  TSTExpressionTreeCreator::addExpression(this, v10, 0);
  return a2;
}

TSCEASTRelativeCoordRefElement *TSTExpressionTreeCreator::referenceErrorWithUidsNode(TSTExpressionTreeCreator *this, TSCEASTRelativeCoordRefElement *a2)
{
  v4 = (*(*a2 + 96))(a2, this);
  v39[0] = TSCEASTRelativeCoordRefElement::tableUID(a2, this, v5, v6);
  v39[1] = v7;
  v10 = objc_msgSend_includedUidsTract(v4, v7, v8, v9);
  v14 = v10;
  memset(v38, 0, sizeof(v38));
  *__p = 0u;
  if (v10)
  {
    v15 = objc_msgSend_columnUids(v10, v11, v12, v13);
    v19 = objc_msgSend_rowUids(v14, v16, v17, v18);
    sub_2210BBBE8(v33, v15, v19);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *v33;
    v38[0] = upper;
    v33[1] = 0;
    upper = 0;
    v33[0] = 0;
    v20 = v38[1];
    if (v38[1])
    {
      v38[2] = v38[1];
      operator delete(v38[1]);
      v20 = v33[0];
    }

    *&v38[1] = v35;
    v38[3] = v36;
    v36 = 0;
    v35 = 0uLL;
    if (v20)
    {
      v33[1] = v20;
      operator delete(v20);
    }
  }

  v21 = TSCEASTRelativeCoordRefElement::preserveFlags(a2, this);
  v22 = [TSTUIDRectRef alloc];
  v23 = sub_221089E8C(this);
  v25 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v22, v24, v23, v39, __p, v21);

  v26 = [TSTReferenceNode alloc];
  v27 = *(this + 25);
  v28 = sub_221089E8C(this);
  v29 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
  *v33 = *&v29->var0.var0.coordinate.row;
  upper = v29->var0.var0._tableUID._upper;
  v31 = objc_msgSend_initWithContext_calculationEngine_uidRectRef_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v26, v30, v27, v28, v25, v33, 0, *(this + 208));

  TSTExpressionTreeCreator::addExpression(this, v31, 0);
  if (v38[1])
  {
    v38[2] = v38[1];
    operator delete(v38[1]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a2;
}

void sub_2213F7E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  sub_22109DBB8(va);
  _Unwind_Resume(a1);
}

TSCEASTWhitespaceElement *TSTExpressionTreeCreator::appendWhitespaceNode(TSTExpressionTreeCreator *this, TSCEASTWhitespaceElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTWhitespaceElement::whitespace(a2, this, a3, a4);
  TSTExpressionTreeCreator::addWhitespaceAfter(this, v6);

  return a2;
}

TSCEASTWhitespaceElement *TSTExpressionTreeCreator::prependWhitespaceNode(TSTExpressionTreeCreator *this, TSCEASTWhitespaceElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTWhitespaceElement::whitespace(a2, this, a3, a4);
  TSTExpressionTreeCreator::addWhitespaceBefore(this, v6);

  return a2;
}

TSCEASTLetBindElement *TSTExpressionTreeCreator::letBindNode(TSCESymbolTable **this, TSCEASTLetBindElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTLetBindElement::identifier(a2, this, a3, a4);
  Symbol = TSCEASTLetBindElement::symbol(a2, this, v7, v8);
  isContinuation = TSCEASTLetBindElement::isContinuation(a2, this, v10, v11);
  TSCEASTLetBindElement::letWhitespace(a2, this, v13, v14, v45);
  TSCESymbolTable::beginScope(this[18]);
  if (v6)
  {
    v18 = TSCESymbolTable::trimIdentifierString(v6, v15, v16, v17);

    v19 = this[18];
    if (Symbol)
    {
      TSCESymbolTable::setSymbol(v19, Symbol, v18);
    }

    else
    {
      Symbol = TSCESymbolTable::createSymbol(v19, v18);
    }
  }

  else
  {
    v18 = 0;
  }

  v20 = [TSTIdentifierNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_identifier_firstIndex_lastIndex_(v20, v21, this[25], v18, 0, 0);
  objc_msgSend_setSymbol_(Index_lastIndex, v23, Symbol, v24);
  v25 = TSCEASTCompactWhitespace::whitespaceStringForIndex(v45, 0);
  objc_msgSend_setWhitespaceBefore_(Index_lastIndex, v26, v25, v27);

  v28 = TSCEASTCompactWhitespace::whitespaceStringForIndex(v45, 1uLL);
  objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v29, v28, v30);

  if (isContinuation)
  {
    v31 = [TSTContinuedLetNode alloc];
    v33 = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(v31, v32, this[25], 363, 0, 0, 0);
  }

  else
  {
    v34 = [TSTFunctionNode alloc];
    v33 = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(v34, v35, this[25], 363, 0, 0, 0);
    v39 = objc_msgSend_whitespaceBefore(Index_lastIndex, v36, v37, v38);
    objc_msgSend_setWhitespaceAfterLeftParen_(v33, v40, v39, v41);

    objc_msgSend_setWhitespaceBefore_(Index_lastIndex, v42, 0, v43);
  }

  TSTExpressionTreeCreator::addExpression(this, v33, 3);
  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, 0);

  v46 = v45;
  sub_22107C2C0(&v46);

  return a2;
}

void sub_2213F8190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_22107C2C0(&a12);

  _Unwind_Resume(a1);
}

TSCEASTLambdaElement *TSTExpressionTreeCreator::lambdaNode(TSTExpressionTreeCreator *this, TSCEASTLambdaElement *a2, uint64_t a3, uint64_t a4)
{
  v72 = *MEMORY[0x277D85DE8];
  v59 = TSCEASTLambdaElement::identifiers(a2, this, a3, a4);
  TSCEASTLambdaElement::whitespaceBefore(a2, this, v5, v6, v69);
  TSCEASTLambdaElement::whitespaceAfter(a2, this, v7, v8, v68);
  v12 = objc_msgSend_count(v59, v9, v10, v11);
  v13 = [TSTFunctionNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(v13, v14, *(this + 25), 364, 0, 0, 0);
  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, v12 + 1);
  TSCESymbolTable::beginScope(*(this + 18));
  Symbol = TSCEASTLambdaElement::firstSymbol(a2, this, v15, v16);
  v62 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v18, 364, v19);
  v20 = sub_221089E8C(this);
  v61 = objc_msgSend_documentLocale(v20, v21, v22, v23);

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v59;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v64, v71, 16);
  if (v28)
  {
    v29 = 0;
    v30 = *v65;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v65 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = TSCESymbolTable::trimIdentifierString(*(*(&v64 + 1) + 8 * i), v25, v26, v27);
        if (!objc_msgSend_length(v32, v33, v34, v35, Index_lastIndex))
        {
          v39 = objc_msgSend_count(obj, v36, v37, v38);
          v41 = objc_msgSend_argumentSpecForIndex_numArgs_(v62, v40, v29, v39 + 1);
          v44 = objc_msgSend_localizedArgumentNameForLocale_(v41, v42, v61, v43);

          v32 = v44;
        }

        TSCESymbolTable::setSymbol(*(this + 18), Symbol, v32);
        v45 = [TSTIdentifierNode alloc];
        v46 = *(this + 25);
        v48 = objc_msgSend_initWithContext_identifier_firstIndex_lastIndex_(v45, v47, v46, v32, 0, 0);

        objc_msgSend_setSymbol_(v48, v49, Symbol, v50);
        v51 = TSCEASTCompactWhitespace::whitespaceStringForIndex(v69, v29);
        objc_msgSend_setWhitespaceBefore_(v48, v52, v51, v53);

        v54 = TSCEASTCompactWhitespace::whitespaceStringForIndex(v68, v29);
        objc_msgSend_setWhitespaceAfter_(v48, v55, v54, v56);

        TSTExpressionTreeCreator::addExpression(this, v48, 0);
        ++v29;
        Symbol = (Symbol + 1);
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v64, v71, 16);
    }

    while (v28);
  }

  v70 = v68;
  sub_22107C2C0(&v70);
  v68[0] = v69;
  sub_22107C2C0(v68);

  return a2;
}

void sub_2213F8534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void ***a30)
{
  a30 = &a24;
  sub_22107C2C0(&a30);
  a24 = &a27;
  sub_22107C2C0(&a24);

  _Unwind_Resume(a1);
}

TSCEASTVariableElement *TSTExpressionTreeCreator::variableNode(TSCESymbolTable **this, TSCEASTVariableElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTVariableElement::symbol(a2, this, a3, a4);
  v7 = TSCESymbolTable::identifierForSymbol(this[18], v6);
  if (objc_msgSend_length(v7, v8, v9, v10))
  {
    v11 = [TSTVariableNode alloc];
    Index_lastIndex = objc_msgSend_initWithContext_identifier_symbol_firstIndex_lastIndex_(v11, v12, this[25], v7, v6, 0, 0);
    TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, 0);
  }

  else
  {
    ((*this)[2]._locale)(this, 0);
  }

  return a2;
}

TSCEASTViewTractRefElement *TSTExpressionTreeCreator::viewTractRefNode(TSTExpressionTreeCreator *this, TSCEASTViewTractRefElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTViewTractRefElement::tableUID(a2, this, a3, a4);
  v76 = v6;
  v77 = v7;
  if (v6 | v7)
  {
    lower = v6;
    upper = v7;
  }

  else
  {
    v12 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
    lower = v12->var0.var0._tableUID._lower;
    upper = v12->var0.var0._tableUID._upper;
    v76 = lower;
    v77 = upper;
  }

  TSCEASTViewTractRefElement::uidReference(v75, a2, this, v8, v9);
  v16 = objc_msgSend_activeUidTract(v75[0], v13, v14, v15);
  v20 = v16;
  if (v16)
  {
    v21 = objc_msgSend_columnUids(v16, v17, v18, v19);
    v25 = objc_msgSend_rowUids(v20, v22, v23, v24);
    v26 = sub_221089E8C(this);
    v28 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v27, lower, upper, v26);

    if (!v28)
    {
      (*(*this + 240))(this, 0);
LABEL_31:

      goto LABEL_32;
    }

    v31 = TSCEASTViewTractRefElement::viewTractRef(a2, this, v29, v30);
    memset(v74, 0, sizeof(v74));
    *__p = 0u;
    if (objc_msgSend_isFixedAtZeroRef(v31, v32, v33, v34))
    {
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v63[0] = objc_msgSend_columnUIDForColumnIndex_(v28, v35, 0, v36);
      v63[1] = v37;
      sub_221083454(&v70, v63);
      v63[0] = objc_msgSend_rowUIDForRowIndex_(v28, v38, 0, v39);
      v63[1] = v40;
      sub_221083454(&v67, v63);
      sub_2210BBBE8(v63, &v70, &v67);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = *v63;
      v74[0] = v64;
      v63[1] = 0;
      v64 = 0;
      v63[0] = 0;
      v41 = v74[1];
      if (v74[1])
      {
        v74[2] = v74[1];
        operator delete(v74[1]);
        v41 = v63[0];
      }

      *&v74[1] = v65;
      v74[3] = v66;
      v66 = 0;
      v65 = 0uLL;
      if (v41)
      {
        v63[1] = v41;
        operator delete(v41);
      }

      if (v67)
      {
        v68 = v67;
        operator delete(v67);
      }

      v42 = v70;
      if (!v70)
      {
        goto LABEL_26;
      }

      v71 = v70;
    }

    else
    {
      sub_2210BBBE8(v63, v21, v25);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = *v63;
      v74[0] = v64;
      v63[1] = 0;
      v64 = 0;
      v63[0] = 0;
      v42 = v74[1];
      if (v74[1])
      {
        v74[2] = v74[1];
        operator delete(v74[1]);
        v42 = v63[0];
      }

      *&v74[1] = v65;
      v74[3] = v66;
      v66 = 0;
      v65 = 0uLL;
      if (!v42)
      {
        goto LABEL_26;
      }

      v63[1] = v42;
    }

    operator delete(v42);
LABEL_26:
    v52 = [TSTUIDRectRef alloc];
    v53 = sub_221089E8C(this);
    v55 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v52, v54, v53, &v76, __p, 15);

    v56 = [TSTReferenceNode alloc];
    v57 = *(this + 25);
    v58 = sub_221089E8C(this);
    v59 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
    *v63 = *&v59->var0.var0.coordinate.row;
    v64 = v59->var0.var0._tableUID._upper;
    v61 = objc_msgSend_initWithContext_calculationEngine_uidRectRef_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v56, v60, v57, v58, v55, v63, 0, *(this + 208));

    TSTExpressionTreeCreator::addExpression(this, v61, 0);
    if (v74[1])
    {
      v74[2] = v74[1];
      operator delete(v74[1]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    goto LABEL_31;
  }

  v43 = MEMORY[0x277D81150];
  v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "virtual TSCEASTElement *TSTExpressionTreeCreator::viewTractRefNode(TSCEASTViewTractRefElement *)", v19);
  v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeCreator.mm", v46);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v48, v44, v47, 794, 0, "viewTractRef is expected to have an active tract");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51);
LABEL_32:

  return a2;
}

void sub_2213F8B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, ...)
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

TSCEASTCategoryRefElement *TSTExpressionTreeCreator::categoryRefNode(TSTExpressionTreeCreator *this, TSCEASTCategoryRefElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTCategoryRefElement::categoryRef(a2, this, a3, a4);
  if ((objc_msgSend_preserveFlags(v6, v7, v8, v9) & 2) == 0)
  {
    v13 = objc_msgSend_groupByUid(v6, v10, v11, v12);
    v15 = v14;
    v16 = sub_221089E8C(this);
    v18 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v17, v13, v15, v16);

    if (v18)
    {
      v22 = objc_msgSend_tableInfo(v18, v19, v20, v21);
      v26 = objc_msgSend_tableUID(v22, v23, v24, v25);
      v28 = v27;
      v29 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
      if (v26 == v29->var0.var0._tableUID._lower)
      {
        upper = v29->var0.var0._tableUID._upper;

        if (v28 == upper)
        {
          v31 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
          lower = v31->var0.var0._tableUID._lower;
          v33 = v31->var0.var0._tableUID._upper;
          v34 = sub_221089E8C(this);
          v36 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v35, lower, v33, v34);

          v40 = objc_msgSend_translator(v36, v37, v38, v39);
          v41 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
          *&v54 = objc_msgSend_rowUIDForBaseRowIndex_(v40, v42, v41->var0.var0.coordinate.row, v43);
          *(&v54 + 1) = v44;

          tableUID = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0._tableUID;
          v46 = objc_msgSend_resolveCategoryRef_atRowUid_inHostTable_(v18, v45, v6, &v54, &tableUID);

          v6 = v46;
        }
      }

      else
      {
      }
    }
  }

  v47 = [TSTReferenceNode alloc];
  v48 = *(this + 25);
  v49 = sub_221089E8C(this);
  v50 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
  v54 = *&v50->var0.var0.coordinate.row;
  v55 = v50->var0.var0._tableUID._upper;
  v52 = objc_msgSend_initWithContext_calculationEngine_categoryRef_hostCellRef_referenceColorHelper_(v47, v51, v48, v49, v6, &v54, 0);

  TSTExpressionTreeCreator::addExpression(this, v52, 0);
  return a2;
}

TSTExpressionNode *TSTExpressionTreeCreator::combineSpillRangeOpIntoRefNode(TSTExpressionTreeCreator *this, TSTExpressionNode *a2)
{
  v129 = *MEMORY[0x277D85DE8];
  v118 = a2;
  v5 = objc_msgSend_tokenType(v118, v2, v3, v4);
  v8 = MEMORY[0x277D815A8];
  if (!v5)
  {
    objc_opt_class();
    v9 = TSUDynamicCast();
    if (objc_msgSend_operatorChar(v9, v10, v11, v12) == *v8)
    {
      v16 = objc_msgSend_children(v9, v13, v14, v15);
      v19 = objc_msgSend_objectAtIndexedSubscript_(v16, v17, 0, v18);
      isReferenceNode = objc_msgSend_isReferenceNode(v19, v20, v21, v22);

      if (isReferenceNode)
      {
        objc_opt_class();
        v27 = objc_msgSend_children(v9, v24, v25, v26);
        v30 = objc_msgSend_objectAtIndexedSubscript_(v27, v28, 0, v29);
        v31 = TSUDynamicCast();

        v35 = objc_msgSend_baseTractRef(v31, v32, v33, v34);
        if (objc_msgSend_isSingleCell(v35, v36, v37, v38))
        {
          v42 = objc_msgSend_spillRangeSuffix(v31, v39, v40, v41);

          if ((v42 & 1) == 0)
          {
            objc_msgSend_setSpillRangeSuffix_(v31, v43, 1, v44);

            goto LABEL_43;
          }
        }

        else
        {
        }
      }
    }
  }

  v48 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v6, v118, v7);
  v122 = *v8;
LABEL_11:
  if (objc_msgSend_count(v48, v45, v46, v47))
  {
    v120 = objc_msgSend_lastObject(v48, v49, v50, v51);
    objc_msgSend_removeLastObject(v48, v52, v53, v54);
    v119 = objc_msgSend_children(v120, v55, v56, v57);
    if (!objc_msgSend_count(v119, v58, v59, v60))
    {
      goto LABEL_41;
    }

    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    obj = v119;
    v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v61, &v124, v128, 16);
    if (!v65)
    {

      goto LABEL_39;
    }

    v121 = 0;
    v66 = 0;
    v67 = *v125;
    while (1)
    {
      v68 = 0;
      do
      {
        if (*v125 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v69 = *(*(&v124 + 1) + 8 * v68);
        if (objc_msgSend_tokenType(v69, v62, v63, v64))
        {
          v72 = 0;
          objc_msgSend_addObject_(v48, v70, v69, v71);
          goto LABEL_26;
        }

        objc_opt_class();
        v73 = TSUDynamicCast();
        if (objc_msgSend_operatorChar(v73, v74, v75, v76) != v122 || (objc_msgSend_children(v73, v77, v78, v79), v80 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectAtIndexedSubscript_(v80, v81, 0, v82), v83 = objc_claimAutoreleasedReturnValue(), v87 = objc_msgSend_isReferenceNode(v83, v84, v85, v86), v83, v80, !v87))
        {
          objc_msgSend_addObject_(v48, v77, v69, v79);

          v72 = 0;
          goto LABEL_26;
        }

        objc_opt_class();
        v91 = objc_msgSend_children(v73, v88, v89, v90);
        v94 = objc_msgSend_objectAtIndexedSubscript_(v91, v92, 0, v93);
        v95 = TSUDynamicCast();

        v99 = objc_msgSend_baseTractRef(v95, v96, v97, v98);
        if (!objc_msgSend_isSingleCell(v99, v100, v101, v102))
        {

LABEL_29:
          v72 = 0;
          goto LABEL_30;
        }

        v106 = objc_msgSend_spillRangeSuffix(v95, v103, v104, v105);

        if (v106)
        {
          goto LABEL_29;
        }

        objc_msgSend_setSpillRangeSuffix_(v95, v107, 1, v108);
        v72 = v95;
LABEL_30:

        if (v72 && v72 != v69)
        {
          v112 = v121;
          if (!v121)
          {
            v112 = objc_msgSend_mutableCopy(obj, v109, v110, v111);
          }

          v121 = v112;
          objc_msgSend_setObject_atIndexedSubscript_(v112, v109, v72, v66);
        }

LABEL_26:

        ++v66;
        ++v68;
      }

      while (v65 != v68);
      v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v62, &v124, v128, 16);
      v65 = v113;
      if (!v113)
      {

        if (v121)
        {
          objc_msgSend_setChildren_(v120, v114, v121, v115);
          v116 = v121;
          goto LABEL_40;
        }

LABEL_39:
        v116 = 0;
LABEL_40:

LABEL_41:
        goto LABEL_11;
      }
    }
  }

  v31 = v118;

LABEL_43:

  return v31;
}

uint64_t sub_2213F9488(uint64_t a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, TSCESymbolTable *a4, void *a5, char a6)
{
  v11 = a5;
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, a4);
  *a1 = &unk_2834A7C30;
  v12 = v11;
  *(a1 + 200) = v12;
  *(a1 + 208) = a6;
  *(a1 + 216) = 0;
  *(a1 + 224) = objc_msgSend_array(MEMORY[0x277CBEB18], v13, v14, v15);
  *(a1 + 232) = objc_msgSend_array(MEMORY[0x277CBEB18], v16, v17, v18);
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 96) = 1;

  return a1;
}

void sub_2213F9558(_Unwind_Exception *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(v1);

  _Unwind_Resume(a1);
}

void sub_2213F97DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void sub_2213F9890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

uint64_t sub_2213F9C80(uint64_t a1)
{
  *a1 = &unk_2834A7E10;
  sub_2210BDEC0(a1 + 48);
  v3 = (a1 + 24);
  sub_2213FB81C(&v3);
  return a1;
}

void sub_2213F9E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_2210BDEC0(v19 + 32);
  sub_2210BDEC0(va);
  v21 = *v18;
  if (*v18)
  {
    *(v18 + 8) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(a1);
}

_OWORD *sub_2213F9E8C(_OWORD *a1, _OWORD *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  if (a1 != a2)
  {
    v6 = a1;
    while ((v5[2](v5, v6) & 1) == 0)
    {
      if (++v6 == a2)
      {
        v6 = a2;
        break;
      }
    }

    if (v6 != a2)
    {
      for (i = v6 + 1; i != a2; ++i)
      {
        if ((v5[2](v5, i) & 1) == 0)
        {
          *v6++ = *i;
        }
      }
    }
  }

  return v6;
}

void sub_2213FA280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  v22 = *v19;
  if (*v19)
  {
    *(v19 + 8) = v22;
    operator delete(v22);
  }

  sub_2213F9C80(va);

  _Unwind_Resume(a1);
}

void sub_2213FA620(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  v23 = WeakRetained;
  if (v4 == 1)
  {
    v8 = objc_msgSend_rowUIDForRowIndex_(WeakRetained, v6, a2, v7);
  }

  else
  {
    v8 = objc_msgSend_columnUIDForColumnIndex_(WeakRetained, v6, a2, v7);
  }

  v10 = v8;
  v11 = v9;

  v15 = objc_msgSend_groupBy(*(a1 + 32), v12, v13, v14);
  v24 = objc_msgSend_groupNodeForGroupUid_(v15, v16, v10, v11);

  if (objc_msgSend_groupLevel(v24, v17, v18, v19) < *(*(*(a1 + 40) + 8) + 24))
  {
    *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_groupLevel(v24, v20, v21, v22);
  }
}

void sub_2213FA9A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  sub_2210BDEC0(&a23);
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2213FB4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2213FB64C(uint64_t a1, void *a2, char a3, char a4)
{
  v7 = a2;
  sub_22149C4FC(a1, v7);
  *a1 = &unk_2834A7DC8;
  *(a1 + 96) = v7;
  *(a1 + 104) = a3;
  *(a1 + 105) = a4;
  return a1;
}

uint64_t sub_2213FB6CC(uint64_t a1)
{
  *a1 = &unk_2834A7E10;
  sub_2210BDEC0(a1 + 48);
  v3 = (a1 + 24);
  sub_2213FB81C(&v3);
  return MEMORY[0x223DA1450](a1, 0x10A1C409560A3FCLL);
}

void *sub_2213FB748(void *a1)
{
  *a1 = &unk_2834A7E10;
  v2 = (a1 + 3);
  sub_2210BDEC0((a1 + 6));
  v4 = v2;
  sub_2213FB81C(&v4);
  return a1;
}

uint64_t sub_2213FB7A8(void *a1)
{
  *a1 = &unk_2834A7E10;
  v2 = (a1 + 3);
  sub_2210BDEC0((a1 + 6));
  v4 = v2;
  sub_2213FB81C(&v4);
  return MEMORY[0x223DA1450](a1, 0x10A1C403FF451B7);
}

void sub_2213FB81C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 12;
      v7 = v4 - 12;
      v8 = v4 - 12;
      do
      {
        v9 = *v8;
        v8 -= 12;
        (*v9)(v7);
        v6 -= 12;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2213FB8DC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_221087270(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_2210C2B00(a1, i + 2, i + 1);
  }

  return a1;
}

void sub_2213FBDA4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSTCompletionToken;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_2213FC284(uint64_t a1, char *__s)
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

void sub_2213FC37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2213FC7C4(void *a1, void *a2)
{
  v3 = a1;
  v6 = a2;
  if (v3 == v6)
  {
    isEqual = 1;
  }

  else
  {
    isEqual = objc_msgSend_isEqual_(v3, v4, v6, v5);
  }

  return isEqual;
}

void *sub_2213FD474(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v9 = (v4 - *result) >> 5;
    v10 = v9 + 1;
    if ((v9 + 1) >> 59)
    {
      sub_22107C148();
    }

    v11 = v5 - *result;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v16[4] = result;
    if (v12)
    {
      sub_2213FFF74(result, v12);
    }

    v13 = 32 * v9;
    v16[0] = 0;
    v16[1] = 32 * v9;
    v16[3] = 0;
    v14 = *a2;
    *a2 = 0;
    *v13 = v14;
    v15 = *(a2 + 1);
    *(v13 + 24) = *(a2 + 6);
    *(v13 + 8) = v15;
    v16[2] = 32 * v9 + 32;
    sub_2213FFFBC(result, v16);
    v8 = v3[1];
    result = sub_221400084(v16);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v4 = v6;
    v7 = *(a2 + 1);
    *(v4 + 24) = *(a2 + 6);
    *(v4 + 8) = v7;
    v8 = v4 + 32;
  }

  v3[1] = v8;
  return result;
}

void sub_2213FD57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221400084(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2213FD8F0(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = ((v6 - *a1) >> 5) + 1;
    if (v12 >> 59)
    {
      sub_22107C148();
    }

    v13 = a2 - v11;
    v14 = v7 - v11;
    v15 = v14 >> 4;
    if (v14 >> 4 <= v12)
    {
      v15 = ((v6 - *a1) >> 5) + 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v16 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    v17 = v13 >> 5;
    v21[4] = a1;
    if (v16)
    {
      sub_2213FFF74(a1, v16);
    }

    v21[0] = 0;
    v21[1] = 32 * v17;
    v21[2] = 32 * v17;
    v21[3] = 0;
    sub_22140018C(v21, a3);
    v4 = sub_221400310(a1, v21, v4);
    sub_221400084(v21);
  }

  else if (a2 == v6)
  {
    v18 = *a3;
    *a3 = 0;
    *v6 = v18;
    v19 = *(a3 + 1);
    *(v6 + 24) = *(a3 + 6);
    *(v6 + 8) = v19;
    a1[1] = v6 + 32;
  }

  else
  {
    sub_2214000D8(a1, a2, v6, a2 + 32);
    v8 = *a3;
    *a3 = 0;
    v9 = *v4;
    *v4 = v8;

    v10 = *(a3 + 1);
    *(v4 + 24) = *(a3 + 6);
    *(v4 + 8) = v10;
  }

  return v4;
}

void sub_2213FDA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221400084(va);
  _Unwind_Resume(a1);
}

unint64_t sub_2213FE164(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v12 = *a1;
    v13 = ((v7 - *a1) >> 5) + 1;
    if (v13 >> 59)
    {
      sub_22107C148();
    }

    v14 = a2 - v12;
    v15 = v6 - v12;
    v16 = v15 >> 4;
    if (v15 >> 4 <= v13)
    {
      v16 = ((v7 - *a1) >> 5) + 1;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFE0)
    {
      v17 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v16;
    }

    v18 = v14 >> 5;
    v21[4] = a1;
    if (v17)
    {
      sub_2213FFF74(a1, v17);
    }

    v21[0] = 0;
    v21[1] = 32 * v18;
    v21[2] = 32 * v18;
    v21[3] = 0;
    sub_221400444(v21, a3);
    v4 = sub_221400310(a1, v21, v4);
    sub_221400084(v21);
  }

  else if (a2 == v7)
  {
    *v7 = *a3;
    v19 = *(a3 + 24);
    *(v7 + 8) = *(a3 + 8);
    *(v7 + 24) = v19;
    a1[1] = v7 + 32;
  }

  else
  {
    sub_2214000D8(a1, a2, a1[1], a2 + 32);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 32;
    if (v8)
    {
      v9 = 0;
    }

    v10 = a3 + v9;
    objc_storeStrong(v4, *(a3 + v9));
    v11 = *(v10 + 8);
    *(v4 + 24) = *(v10 + 24);
    *(v4 + 8) = v11;
  }

  return v4;
}

void sub_2213FE2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221400084(va);
  _Unwind_Resume(a1);
}

void sub_2213FEA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2213FEA5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  *a6 = 1;
  *(*(*(result + 32) + 8) + 24) = 1;
  return result;
}

void sub_2213FEE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  a12 = &a16;
  sub_221400634(&a12);
  _Unwind_Resume(a1);
}

__n128 sub_2213FF890(__n128 *a1, __n128 *a2)
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

id sub_2213FF8E0(void *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v9 = (v5 - *a1) >> 5;
    if ((v9 + 1) >> 59)
    {
      sub_22107C148();
    }

    v10 = v4 - *a1;
    v11 = v10 >> 4;
    if (v10 >> 4 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v15[4] = a1;
    if (v12)
    {
      sub_2213FFF74(a1, v12);
    }

    v13 = 32 * v9;
    v15[0] = 0;
    v15[1] = v13;
    v15[3] = 0;
    *v13 = *a2;
    v14 = *(a2 + 8);
    *(v13 + 24) = *(a2 + 24);
    *(v13 + 8) = v14;
    v15[2] = v13 + 32;
    sub_2213FFFBC(a1, v15);
    v8 = a1[1];
    result = sub_221400084(v15);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = *(a2 + 24);
    *(v5 + 8) = *(a2 + 8);
    *(v5 + 24) = v7;
    v8 = v5 + 32;
  }

  a1[1] = v8;
  return result;
}

void sub_2213FF9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221400084(va);
  _Unwind_Resume(a1);
}

void sub_2213FF9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 8);
  sub_2213FFC6C(v4, *(a1 + 32), a2, a3, *(a1 + 48));
  sub_2213FD474((v3 + 48), v4);
}

void sub_2213FFA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 8);
  sub_2213FFC6C(v4, *(a1 + 32), a2, a3, *(a1 + 48));
  sub_2213FD474((v3 + 48), v4);
}

void sub_2213FFACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 8);
  sub_2213FFC6C(v4, *(a1 + 32), a2, a3, *(a1 + 48));
  sub_2213FD474((v3 + 48), v4);
}

void sub_2213FFB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 8);
  sub_2213FFC6C(v4, *(a1 + 32), a2, a3, *(a1 + 48));
  sub_2213FD474((v3 + 48), v4);
}

void sub_2213FFB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 8);
  sub_2213FFC6C(v4, *(a1 + 32), a2, a3, *(a1 + 48));
  sub_2213FD474((v3 + 48), v4);
}

void sub_2213FFC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 8);
  sub_2213FFC6C(v4, *(a1 + 32), a2, a3, *(a1 + 48));
  sub_2213FD474((v3 + 48), v4);
}

uint64_t sub_2213FFC6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = a2;
  objc_opt_class();
  *a1 = TSUDynamicCast();
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;

  return a1;
}

void sub_2213FFCEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 5)
  {
    sub_2213FFE64(a1);
    if (!(a4 >> 59))
    {
      v8 = *(a1 + 16) - *a1;
      v9 = v8 >> 4;
      if (v8 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_2213FFEC8(a1, v10);
    }

    sub_22107C148();
  }

  v11 = *(a1 + 8) - v7;
  if (a4 <= v11 >> 5)
  {
    sub_2213FFF04(&v21, a2, a3, v7);
    v17 = v16;
    v18 = *(a1 + 8);
    if (v18 != v16)
    {
      do
      {
        v19 = *(v18 - 32);
        v18 -= 32;
      }

      while (v18 != v17);
    }

    *(a1 + 8) = v17;
  }

  else
  {
    v12 = a2 + v11;
    sub_2213FFF04(&v20, a2, a2 + v11, v7);
    v13 = *(a1 + 8);
    if (v12 != a3)
    {
      v14 = *(a1 + 8);
      do
      {
        *v14 = *v12;
        v15 = *(v12 + 24);
        *(v14 + 8) = *(v12 + 8);
        *(v14 + 24) = v15;
        v12 += 32;
        v14 += 32;
        v13 += 32;
      }

      while (v12 != a3);
    }

    *(a1 + 8) = v13;
  }
}

void sub_2213FFE64(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 4);
        v3 -= 32;
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_2213FFEC8(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_2213FFF74(a1, a2);
  }

  sub_22107C148();
}

uint64_t sub_2213FFF04(int a1, uint64_t a2, uint64_t a3, id *location)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      objc_storeStrong(location, *v5);
      v7 = *(v5 + 8);
      *(location + 6) = *(v5 + 24);
      *(location + 1) = v7;
      v5 += 32;
      location += 4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_2213FFF74(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_22107C238();
}

void sub_2213FFFBC(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      *v7 = 0;
      *v8 = v9;
      v10 = *(v7 + 1);
      *(v8 + 24) = *(v7 + 6);
      *(v8 + 8) = v10;
      v7 += 4;
      v8 += 32;
    }

    while (v7 != v4);
    do
    {
      v11 = *v5;
      v5 += 4;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v12 = *a1;
  *a1 = v6;
  *(a1 + 8) = v12;
  a2[1] = v12;
  v13 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v13;
  v14 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t sub_221400084(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_2214000D8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  v6 = v4;
  while (v5 < a3)
  {
    v7 = *v5;
    *v5 = 0;
    *v6 = v7;
    result = *(v5 + 8);
    *(v6 + 24) = *(v5 + 24);
    *(v6 + 8) = result;
    v5 += 32;
    v6 += 32;
  }

  *(a1 + 8) = v6;
  if (v4 != a4)
  {
    v9 = v4 - 32;
    v10 = (a2 + v4 - 32 - a4);
    v11 = a4 - v4;
    do
    {
      v12 = *v10;
      *v10 = 0;
      v13 = *v9;
      *v9 = v12;

      result = *(v10 + 1);
      *(v9 + 24) = *(v10 + 6);
      *(v9 + 8) = result;
      v10 -= 4;
      v9 -= 32;
      v11 += 32;
    }

    while (v11);
  }

  return result;
}

__n128 sub_22140018C(unint64_t *a1, uint64_t *a2)
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
        v12 = 1;
      }

      else
      {
        v12 = (v4 - *a1) >> 4;
      }

      v13 = a1[4];
      v16 = a1[4];
      sub_2213FFF74(v13, v12);
    }

    v8 = ((v7 >> 5) + 1) / -2;
    v5 = v6 - 32 * (((v7 >> 5) + 1) / 2);
    if (v6 != v4)
    {
      do
      {
        v9 = *v6;
        *v6 = 0;
        v10 = *v5;
        *v5 = v9;

        v11 = *(v6 + 8);
        *(v5 + 24) = *(v6 + 24);
        *(v5 + 8) = v11;
        v6 += 32;
        v5 += 32;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = v6 + 32 * v8;
    a1[2] = v5;
  }

  v14 = *a2;
  *a2 = 0;
  *v5 = v14;
  result = *(a2 + 1);
  *(v5 + 24) = *(a2 + 6);
  *(v5 + 8) = result;
  a1[2] += 32;
  return result;
}

uint64_t sub_221400310(uint64_t a1, void *a2, void **a3)
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
      *v9 = 0;
      *v8 = v10;
      v11 = *(v9 + 1);
      *(v8 + 24) = *(v9 + 6);
      *(v8 + 8) = v11;
      v9 += 4;
      v8 += 32;
    }

    while (v9 != v7);
    v12 = a3;
    do
    {
      v13 = *v12;
      v12 += 4;
    }

    while (v12 != v7);
  }

  v14 = *a1;
  v15 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v16 = v15 + v14 - a3;
  if (v14 != a3)
  {
    v17 = v14;
    v18 = v15 + v14 - a3;
    do
    {
      v19 = *v17;
      *v17 = 0;
      *v18 = v19;
      v20 = *(v17 + 1);
      *(v18 + 24) = *(v17 + 6);
      *(v18 + 8) = v20;
      v17 += 4;
      v18 += 32;
    }

    while (v17 != a3);
    do
    {
      v21 = *v14;
      v14 += 4;
    }

    while (v14 != a3);
  }

  a2[1] = v16;
  v22 = *a1;
  *a1 = v16;
  *(a1 + 8) = v22;
  a2[1] = v22;
  v23 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v23;
  v24 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v24;
  *a2 = a2[1];
  return v6;
}

__n128 sub_221400444(unint64_t *a1, uint64_t a2)
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
        v12 = 1;
      }

      else
      {
        v12 = (v4 - *a1) >> 4;
      }

      v13 = a1[4];
      v16 = a1[4];
      sub_2213FFF74(v13, v12);
    }

    v8 = ((v7 >> 5) + 1) / -2;
    v5 = v6 - 32 * (((v7 >> 5) + 1) / 2);
    if (v6 != v4)
    {
      do
      {
        v9 = *v6;
        *v6 = 0;
        v10 = *v5;
        *v5 = v9;

        v11 = *(v6 + 8);
        *(v5 + 24) = *(v6 + 24);
        *(v5 + 8) = v11;
        v6 += 32;
        v5 += 32;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = v6 + 32 * v8;
    a1[2] = v5;
  }

  *v5 = *a2;
  v14 = *(a2 + 24);
  result = *(a2 + 8);
  *(v5 + 8) = result;
  *(v5 + 24) = v14;
  a1[2] += 32;
  return result;
}

void sub_221400634(void ***a1)
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
        v6 = *(v4 - 4);
        v4 -= 32;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

double sub_2214006B4(uint64_t *result, unint64_t a2, uint64_t (**a3)(id *, uint64_t), uint64_t a4, char a5, __n128 a6)
{
  v8 = a2;
  v9 = result;
  v73 = a2;
  v74 = result;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v11 = (v8 - v9) >> 5;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return a6.n128_f64[0];
    }

    if (v11 == 2)
    {
      v58 = *a3;
      v73 = v8 - 4;
      if ((v58)(v8 - 4))
      {
        v60 = &v74;
        v61 = &v73;
        goto LABEL_99;
      }

      return a6.n128_f64[0];
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        sub_221400F1C(v9, v8, a3);
      }

      else
      {
        sub_221401064(v9, v8, a3);
      }

      return a6.n128_f64[0];
    }

    if (i == 1)
    {
      if (v9 != v8)
      {
        sub_2214018F4(v9, v8, v8, a3, a6);
      }

      return a6.n128_f64[0];
    }

    v12 = v11 >> 1;
    v13 = &v9[4 * (v11 >> 1)];
    v14 = (v8 - 4);
    if (v11 < 0x81)
    {
      v78 = v9;
      v79.n128_u64[0] = &v9[4 * (v11 >> 1)];
      v77 = v14;
      v19 = (*a3)(v9, v13);
      v20 = (*a3)(v14, v9);
      if (v19)
      {
        if (v20)
        {
          v22 = &v79;
          goto LABEL_37;
        }

        v35 = sub_221400D50(&v79, &v78);
        if ((*a3)(v77, v78, v35))
        {
          v22 = &v78;
LABEL_37:
          v26 = &v77;
LABEL_38:
          v21 = sub_221400D50(v22, v26);
        }
      }

      else if (v20)
      {
        v25 = sub_221400D50(&v78, &v77);
        if ((*a3)(v78, v79.n128_u64[0], v25))
        {
          v22 = &v79;
          v26 = &v78;
          goto LABEL_38;
        }
      }

      v9 = v74;
      if (a5)
      {
        goto LABEL_67;
      }

      goto LABEL_40;
    }

    v78 = &v9[4 * (v11 >> 1)];
    v79.n128_u64[0] = v9;
    v77 = v14;
    v15 = (*a3)(v13, v9);
    v16 = (*a3)(v14, v13);
    if (v15)
    {
      if (v16)
      {
        v18 = &v79;
      }

      else
      {
        v27 = sub_221400D50(&v79, &v78);
        if (!(*a3)(v77, v78, v27))
        {
          goto LABEL_29;
        }

        v18 = &v78;
      }

      v24 = &v77;
      goto LABEL_28;
    }

    if (v16)
    {
      v23 = sub_221400D50(&v78, &v77);
      if ((*a3)(v78, v79.n128_u64[0], v23))
      {
        v18 = &v79;
        v24 = &v78;
LABEL_28:
        v17 = sub_221400D50(v18, v24);
      }
    }

LABEL_29:
    v9 = v74;
    v28 = &v74[4 * v12];
    v78 = v28 - 4;
    v79.n128_u64[0] = (v74 + 4);
    v77 = v73 - 8;
    v29 = (*a3)(v28 - 4, v17);
    v30 = (*a3)(v73 - 8, (v28 - 4));
    if (v29)
    {
      if (v30)
      {
        v32 = &v79;
      }

      else
      {
        v36 = sub_221400D50(&v79, &v78);
        if (!(*a3)(v77, v78, v36))
        {
          goto LABEL_46;
        }

        v32 = &v78;
      }

      v34 = &v77;
      goto LABEL_45;
    }

    if (v30)
    {
      v33 = sub_221400D50(&v78, &v77);
      if ((*a3)(v78, v79.n128_u64[0], v33))
      {
        v32 = &v79;
        v34 = &v78;
LABEL_45:
        v31 = sub_221400D50(v32, v34);
      }
    }

LABEL_46:
    v78 = v28 + 4;
    v79.n128_u64[0] = (v74 + 8);
    v77 = v73 - 12;
    v37 = (*a3)(v28 + 4, v31);
    v38 = (*a3)(v73 - 12, (v28 + 4));
    if (v37)
    {
      if (v38)
      {
        v40 = &v79;
      }

      else
      {
        v43 = sub_221400D50(&v79, &v78);
        if (!(*a3)(v77, v78, v43))
        {
          goto LABEL_56;
        }

        v40 = &v78;
      }

      v42 = &v77;
      goto LABEL_55;
    }

    if (v38)
    {
      v41 = sub_221400D50(&v78, &v77);
      if ((*a3)(v78, v79.n128_u64[0], v41))
      {
        v40 = &v79;
        v42 = &v78;
LABEL_55:
        v39 = sub_221400D50(v40, v42);
      }
    }

LABEL_56:
    v78 = &v74[4 * v12];
    v79.n128_u64[0] = (v28 - 4);
    v77 = (v28 + 4);
    v44 = (*a3)(v28, v28 - 4, v39);
    v45 = (*a3)(v28 + 4, v28);
    if (v44)
    {
      if (v45)
      {
        v46 = &v79;
      }

      else
      {
        v49 = sub_221400D50(&v79, &v78);
        if (!(*a3)(v77, v78, v49))
        {
          goto LABEL_66;
        }

        v46 = &v78;
      }

      v48 = &v77;
      goto LABEL_65;
    }

    if (v45)
    {
      v47 = sub_221400D50(&v78, &v77);
      if ((*a3)(v78, v79.n128_u64[0], v47))
      {
        v46 = &v79;
        v48 = &v78;
LABEL_65:
        sub_221400D50(v46, v48);
      }
    }

LABEL_66:
    v50 = *v74;
    *v74 = 0;
    v79 = *(v9 + 1);
    v80 = *(v9 + 6);
    v51 = *v28;
    *v28 = 0;
    v52 = *v9;
    *v9 = v51;

    v53 = *(v28 + 1);
    *(v9 + 6) = *(v28 + 6);
    *(v9 + 1) = v53;
    v54 = *v28;
    *v28 = v50;

    v21 = v79;
    *(v28 + 1) = v79;
    *(v28 + 6) = v80;
    if (a5)
    {
LABEL_67:
      v8 = v73;
      goto LABEL_68;
    }

LABEL_40:
    v8 = v73;
    if (((*a3)(v9 - 4, v9, v21) & 1) == 0)
    {
      v9 = sub_221401188(v9, v73, a3);
      goto LABEL_76;
    }

LABEL_68:
    v55 = sub_221401360(v9, v8, a3);
    if ((v56 & 1) == 0)
    {
      goto LABEL_75;
    }

    v57 = sub_221401530(v9, v55, a3);
    if (!sub_221401530(v55 + 4, v8, a3))
    {
      if (v57)
      {
        v74 = v55 + 4;
        v9 = v55 + 4;
        continue;
      }

LABEL_75:
      sub_2214006B4(v9, v55, a3, -i, a5 & 1);
      v9 = v55 + 4;
LABEL_76:
      a5 = 0;
      v74 = v9;
      a4 = -i;
      goto LABEL_2;
    }

    if (v57)
    {
      return a6.n128_f64[0];
    }

    v73 = v55;
    v8 = v55;
  }

  if (v11 == 3)
  {
    v67 = v9 + 4;
    v73 = v8 - 4;
    v78 = v9 + 4;
    v79.n128_u64[0] = v9;
    v77 = v8 - 4;
    v68 = (*a3)(v9 + 4, v9);
    v69 = (*a3)(v8 - 4, v67);
    if (v68)
    {
      if (v69)
      {
        v60 = &v79;
      }

      else
      {
        v71 = sub_221400D50(&v79, &v78);
        if (!(*a3)(v77, v78, v71))
        {
          return a6.n128_f64[0];
        }

        v60 = &v78;
      }

      v61 = &v77;
    }

    else
    {
      if (!v69)
      {
        return a6.n128_f64[0];
      }

      v70 = sub_221400D50(&v78, &v77);
      v66 = (*a3)(v78, v79.n128_u64[0], v70);
LABEL_93:
      if (!v66)
      {
        return a6.n128_f64[0];
      }

      v60 = &v79;
      v61 = &v78;
    }

LABEL_99:
    a6.n128_u64[0] = sub_221400D50(v60, v61).n128_u64[0];
    return a6.n128_f64[0];
  }

  if (v11 == 4)
  {
    v73 = v8 - 4;
    a6.n128_f64[0] = sub_221400DDC(v9, v9 + 4, v9 + 8, v8 - 4, a3);
    return a6.n128_f64[0];
  }

  if (v11 != 5)
  {
    goto LABEL_10;
  }

  v73 = v8 - 4;
  v78 = v9 + 4;
  v79.n128_u64[0] = v9;
  v76 = v9 + 12;
  v77 = (v9 + 8);
  v75 = v8 - 4;
  v62 = sub_221400DDC(v9, v9 + 4, v9 + 8, v9 + 12, a3);
  if ((*a3)(v8 - 4, v9 + 12, v62))
  {
    v63 = sub_221400D50(&v76, &v75);
    if ((*a3)(v76, v9 + 8, v63))
    {
      v64 = sub_221400D50(&v77, &v76);
      if ((*a3)(v77, v9 + 4, v64))
      {
        v65 = sub_221400D50(&v78, &v77);
        v66 = (*a3)(v78, v9, v65);
        goto LABEL_93;
      }
    }
  }

  return a6.n128_f64[0];
}

__n128 sub_221400D50(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  *v2 = 0;
  v10 = *(v2 + 1);
  v11 = *(v2 + 6);
  v5 = *v3;
  *v3 = 0;
  v6 = *v2;
  *v2 = v5;

  v7 = *(v3 + 8);
  *(v2 + 6) = *(v3 + 24);
  *(v2 + 1) = v7;
  v8 = *v3;
  *v3 = v4;

  result = v10;
  *(v3 + 8) = v10;
  *(v3 + 24) = v11;
  return result;
}

double sub_221400DDC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, unsigned int (**a5)(uint64_t *, uint64_t *, __n128))
{
  v22 = a2;
  v23 = a1;
  v20 = a4;
  v21 = a3;
  v25 = a2;
  v26 = a1;
  v24 = a3;
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v13 = &v26;
LABEL_9:
      v15 = &v24;
      goto LABEL_10;
    }

    v16 = sub_221400D50(&v26, &v25);
    if ((*a5)(v24, v25, v16))
    {
      v13 = &v25;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v14 = sub_221400D50(&v25, &v24);
    if ((*a5)(v25, v26, v14))
    {
      v13 = &v26;
      v15 = &v25;
LABEL_10:
      v12 = sub_221400D50(v13, v15);
    }
  }

  if ((*a5)(a4, a3, v12))
  {
    v18 = sub_221400D50(&v21, &v20);
    if ((*a5)(v21, a2, v18))
    {
      v19 = sub_221400D50(&v22, &v21);
      if ((*a5)(v22, a1, v19))
      {
        *&result = sub_221400D50(&v23, &v22).n128_u64[0];
      }
    }
  }

  return result;
}

void sub_221400F1C(void **a1, void **a2, uint64_t (**a3)(id *, uint64_t))
{
  if (a1 != a2)
  {
    v5 = a1 + 4;
    if (a1 + 4 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        if ((*a3)(v5, v8))
        {
          v10 = *v9;
          *v9 = 0;
          v18 = v10;
          v19 = *(v8 + 5);
          v20 = *(v8 + 14);
          v11 = v7;
          while (1)
          {
            v12 = a1 + v11;
            v13 = *(a1 + v11);
            *v12 = 0;
            v14 = *(a1 + v11 + 32);
            *(v12 + 4) = v13;

            *(v12 + 40) = *(v12 + 8);
            *(v12 + 14) = *(v12 + 6);
            if (!v11)
            {
              break;
            }

            v11 -= 32;
            if (((*a3)(&v18, (v12 - 32)) & 1) == 0)
            {
              v15 = (a1 + v11 + 32);
              goto LABEL_10;
            }
          }

          v15 = a1;
LABEL_10:
          v16 = v18;
          v18 = 0;
          v17 = *v15;
          *v15 = v16;

          *(v12 + 8) = v19;
          *(v12 + 6) = v20;
        }

        v5 = v9 + 4;
        v7 += 32;
        v8 = v9;
      }

      while (v9 + 4 != a2);
    }
  }
}

void sub_221401064(void **a1, void **a2, uint64_t (**a3)(id *, void **))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 4;
    if (a1 + 4 != a2)
    {
      v7 = a1 - 4;
      do
      {
        v8 = v5;
        if ((*a3)(v5, v4))
        {
          v9 = *v8;
          *v8 = 0;
          v16 = v9;
          v17 = *(v4 + 5);
          v18 = *(v4 + 14);
          v10 = v7;
          do
          {
            v11 = v10[4];
            v10[4] = 0;
            v12 = v10[8];
            v10[8] = v11;

            *(v10 + 9) = *(v10 + 5);
            *(v10 + 22) = *(v10 + 14);
            v13 = (*a3)(&v16, v10);
            v10 -= 4;
          }

          while ((v13 & 1) != 0);
          v14 = v16;
          v16 = 0;
          v15 = v10[8];
          v10[8] = v14;

          *(v10 + 9) = v17;
          *(v10 + 22) = v18;
        }

        v5 = v8 + 4;
        v7 += 4;
        v4 = v8;
      }

      while (v8 + 4 != a2);
    }
  }
}

uint64_t *sub_221401188(uint64_t a1, unint64_t a2, uint64_t (**a3)(id *, uint64_t *))
{
  v22 = a2;
  v23 = a1;
  v5 = *a1;
  *a1 = 0;
  v19 = v5;
  v20 = *(a1 + 8);
  v21 = *(a1 + 24);
  if ((*a3)(&v19, (a2 - 32)))
  {
    v6 = a1;
    do
    {
      v6 += 4;
      v23 = v6;
    }

    while (((*a3)(&v19, v6) & 1) == 0);
  }

  else
  {
    v7 = (a1 + 32);
    do
    {
      v6 = v7;
      v23 = v7;
      if (v7 >= v22)
      {
        break;
      }

      v8 = (*a3)(&v19, v7);
      v7 = v6 + 4;
    }

    while (!v8);
  }

  v9 = v22;
  if (v6 < v22)
  {
    do
    {
      v9 -= 32;
      v22 = v9;
    }

    while (((*a3)(&v19, v9) & 1) != 0);
    v6 = v23;
  }

  if (v6 < v9)
  {
    do
    {
      v10 = sub_221400D50(&v23, &v22);
      do
      {
        v23 += 4;
      }

      while (!(*a3)(&v19, v10));
      do
      {
        v22 -= 32;
      }

      while (((*a3)(&v19) & 1) != 0);
      v6 = v23;
    }

    while (v23 < v22);
  }

  if (v6 - 4 != a1)
  {
    v11 = *(v6 - 4);
    *(v6 - 4) = 0;
    v12 = *a1;
    *a1 = v11;

    v13 = *(v6 - 3);
    *(a1 + 24) = *(v6 - 2);
    *(a1 + 8) = v13;
  }

  v14 = v19;
  v19 = 0;
  v15 = *(v6 - 4);
  *(v6 - 4) = v14;

  v16 = v20;
  *(v6 - 2) = v21;
  *(v6 - 3) = v16;
  v17 = v23;

  return v17;
}

uint64_t *sub_221401360(uint64_t a1, unint64_t a2, uint64_t (**a3)(__n128))
{
  v5 = 0;
  v24 = a2;
  v6 = *a1;
  *a1 = 0;
  v21 = v6;
  v22 = *(a1 + 8);
  v23 = *(a1 + 24);
  do
  {
    v25 = (a1 + v5 + 32);
    v5 += 32;
  }

  while (((*a3)() & 1) != 0);
  v7 = v24;
  if (v5 == 32)
  {
    v10 = (a1 + 32);
    do
    {
      if (v10 >= v7)
      {
        break;
      }

      v11 = *a3;
      v7 -= 32;
      v24 = v7;
    }

    while (((v11)(v7, &v21) & 1) == 0);
  }

  else
  {
    v8 = v24 - 32;
    do
    {
      v24 = v8;
      v9 = (*a3)(v8, &v21);
      v8 -= 32;
    }

    while (!v9);
    v10 = v25;
  }

  v12 = v10;
  if (v10 < v24)
  {
    do
    {
      v13 = sub_221400D50(&v25, &v24);
      do
      {
        v25 += 4;
      }

      while (((*a3)(v13) & 1) != 0);
      do
      {
        v24 -= 32;
      }

      while (!(*a3)());
      v12 = v25;
    }

    while (v25 < v24);
  }

  if (v12 - 4 != a1)
  {
    v14 = *(v12 - 4);
    *(v12 - 4) = 0;
    v15 = *a1;
    *a1 = v14;

    v16 = *(v12 - 3);
    *(a1 + 24) = *(v12 - 2);
    *(a1 + 8) = v16;
  }

  v17 = v21;
  v21 = 0;
  v18 = *(v12 - 4);
  *(v12 - 4) = v17;

  v19 = v22;
  *(v12 - 2) = v23;
  *(v12 - 3) = v19;

  return v12 - 4;
}

BOOL sub_221401530(uint64_t *a1, char *a2, unsigned int (**a3)(uint64_t *, uint64_t *, __n128))
{
  v44 = a2;
  v45 = a1;
  v6 = (a2 - a1) >> 5;
  if (v6 <= 2)
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *a3;
      v44 = (a2 - 32);
      if ((v7)())
      {
        v8 = &v45;
        v9 = &v44;
LABEL_30:
        sub_221400D50(v8, v9);
        return 1;
      }

      return 1;
    }

LABEL_16:
    v20 = a1 + 8;
    v41 = a1;
    v49 = a1 + 4;
    v48 = a1 + 8;
    v21 = (*a3)(a1 + 4, a1);
    v22 = (*a3)(a1 + 8, a1 + 4);
    if (v21)
    {
      if (v22)
      {
        v24 = &v41;
      }

      else
      {
        v29 = sub_221400D50(&v41, &v49);
        if (!(*a3)(v48, v49, v29))
        {
          goto LABEL_35;
        }

        v24 = &v49;
      }

      v27 = &v48;
    }

    else
    {
      if (!v22 || (v26 = sub_221400D50(&v49, &v48), !(*a3)(v49, v41, v26)))
      {
LABEL_35:
        v30 = a1 + 12;
        if (v30 != a2)
        {
          v31 = 0;
          while (1)
          {
            if ((*a3)(v30, v20, v23))
            {
              v32 = *v30;
              *v30 = 0;
              v41 = v32;
              v42 = *(v30 + 1);
              v43 = *(v30 + 6);
              do
              {
                v33 = v20;
                v34 = *v20;
                *v20 = 0;
                v35 = v20[4];
                v20[4] = v34;

                *(v20 + 5) = *(v20 + 1);
                *(v20 + 14) = *(v20 + 6);
                if (v20 == v45)
                {
                  break;
                }

                v20 -= 4;
              }

              while (((*a3)(&v41, v33 - 4) & 1) != 0);
              v36 = v41;
              v41 = 0;
              v37 = *v33;
              *v33 = v36;

              v38 = v42;
              *(v33 + 6) = v43;
              *(v33 + 1) = v38;
              if (++v31 == 8)
              {
                v39 = v30 + 4 == v44;

                return v39;
              }
            }

            v20 = v30;
            v30 += 4;
            if (v30 == v44)
            {
              return 1;
            }
          }
        }

        return 1;
      }

      v24 = &v41;
      v27 = &v49;
    }

    v23 = sub_221400D50(v24, v27);
    goto LABEL_35;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      sub_221400DDC(a1, a1 + 4, a1 + 8, a2 - 4, a3);
      return 1;
    }

    if (v6 != 5)
    {
      goto LABEL_16;
    }

    v41 = a1;
    v49 = a1 + 4;
    v10 = (a2 - 32);
    v47 = a1 + 12;
    v48 = a1 + 8;
    v46 = (a2 - 32);
    v11 = sub_221400DDC(a1, a1 + 4, a1 + 8, a1 + 12, a3);
    if (!(*a3)(v10, a1 + 12, v11))
    {
      return 1;
    }

    v12 = sub_221400D50(&v47, &v46);
    if (!(*a3)(v47, a1 + 8, v12))
    {
      return 1;
    }

    v13 = sub_221400D50(&v48, &v47);
    if (!(*a3)(v48, a1 + 4, v13))
    {
      return 1;
    }

    v14 = sub_221400D50(&v49, &v48);
    v15 = (*a3)(v49, a1, v14);
    goto LABEL_22;
  }

  v16 = a1 + 4;
  v17 = (a2 - 32);
  v41 = a1;
  v49 = a1 + 4;
  v48 = (a2 - 32);
  v18 = (*a3)(a1 + 4, a1);
  v19 = (*a3)(v17, v16);
  if (v18)
  {
    if (v19)
    {
      v8 = &v41;
    }

    else
    {
      v28 = sub_221400D50(&v41, &v49);
      if (!(*a3)(v48, v49, v28))
      {
        return 1;
      }

      v8 = &v49;
    }

    v9 = &v48;
    goto LABEL_30;
  }

  if (v19)
  {
    v25 = sub_221400D50(&v49, &v48);
    v15 = (*a3)(v49, v41, v25);
LABEL_22:
    if (v15)
    {
      v8 = &v41;
      v9 = &v49;
      goto LABEL_30;
    }
  }

  return 1;
}

uint64_t *sub_2214018F4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t, uint64_t *), __n128 a5)
{
  v26 = a1;
  if (a1 != a2)
  {
    v8 = a1;
    v9 = (a2 - a1) >> 5;
    if (v9 >= 2)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[4 * v10];
      do
      {
        a5 = sub_221401AE0(v8, a4, v9, v12);
        v12 -= 4;
        --v11;
      }

      while (v11);
    }

    v25 = a2;
    v13 = a2;
    if (a2 != a3)
    {
      do
      {
        if ((*a4)(v13, v26, a5))
        {
          sub_221400D50(&v25, &v26);
          a5 = sub_221401AE0(v26, a4, v9, v26);
        }

        v13 = v25 + 4;
        v25 = v13;
      }

      while (v13 != a3);
      v8 = v26;
      v9 = (a2 - v26) >> 5;
    }

    if (v9 >= 2)
    {
      v14 = a2 - 4;
      do
      {
        if (v9 >= 2)
        {
          v15 = *v8;
          *v8 = 0;
          v27 = *(v8 + 1);
          v28 = *(v8 + 6);
          v16 = sub_221401C84(v8, a4, v9);
          v17 = v16;
          if (v14 == v16)
          {
            v22 = *v16;
            *v16 = v15;

            *(v17 + 1) = v27;
            *(v17 + 6) = v28;
          }

          else
          {
            v18 = *v14;
            *v14 = 0;
            v19 = *v16;
            *v16 = v18;

            v20 = *(v14 + 1);
            *(v17 + 6) = *(v14 + 6);
            *(v17 + 1) = v20;
            v21 = *v14;
            *v14 = v15;

            *(v14 + 1) = v27;
            *(v14 + 6) = v28;
            sub_221401D4C(v8, (v17 + 4), a4, ((v17 + 4) - v8) >> 5);
          }
        }

        v14 -= 4;
      }

      while (v9-- > 2);
      return v25;
    }

    return v13;
  }

  return a3;
}

__n128 sub_221401AE0(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t *), uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 5)
    {
      v10 = (a4 - a1) >> 4;
      v11 = v10 + 1;
      v12 = a1 + 32 * (v10 + 1);
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(v12, (v12 + 32)))
      {
        v12 += 32;
        v11 = v13;
      }

      if (((*a2)(v12, v5) & 1) == 0)
      {
        v15 = *v5;
        *v5 = 0;
        v24 = v15;
        v25 = *(v5 + 1);
        v26 = *(v5 + 6);
        do
        {
          v16 = v12;
          v17 = *v12;
          *v12 = 0;
          v18 = *v5;
          *v5 = v17;

          v19 = *(v12 + 8);
          *(v5 + 6) = *(v12 + 24);
          *(v5 + 1) = v19;
          if (v7 < v11)
          {
            break;
          }

          v20 = (2 * v11) | 1;
          v12 = a1 + 32 * v20;
          v11 = 2 * v11 + 2;
          if (v11 >= a3)
          {
            v11 = v20;
          }

          else if ((*a2)(a1 + 32 * v20, (v12 + 32)))
          {
            v12 += 32;
          }

          else
          {
            v11 = v20;
          }

          v5 = v16;
        }

        while (!(*a2)(v12, &v24));
        v21 = v24;
        v24 = 0;
        v22 = *v16;
        *v16 = v21;

        v23 = v25;
        *(v16 + 24) = v26;
        *(v16 + 8) = v23;
      }
    }
  }

  return result;
}

uint64_t *sub_221401C84(uint64_t *a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[4 * v6];
    v9 = v8 + 4;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 8;
      if ((*a2)((v8 + 4), (v8 + 8)))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    v13 = *v9;
    *v9 = 0;
    v14 = *a1;
    *a1 = v13;

    v15 = *(v9 + 1);
    *(a1 + 6) = *(v9 + 6);
    *(a1 + 1) = v15;
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

void sub_221401D4C(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t *, id *), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = a1 + 32 * (v4 >> 1);
    v10 = a2 - 32;
    if ((*a3)(v9, (a2 - 32)))
    {
      v11 = *(a2 - 32);
      *(a2 - 32) = 0;
      v18 = v11;
      v19 = *(a2 - 24);
      v20 = *(a2 - 8);
      do
      {
        v12 = v9;
        v13 = *v9;
        *v9 = 0;
        v14 = *v10;
        *v10 = v13;

        v15 = *(v9 + 8);
        *(v10 + 24) = *(v9 + 24);
        *(v10 + 8) = v15;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = a1 + 32 * v8;
        v10 = v12;
      }

      while (((*a3)(v9, &v18) & 1) != 0);
      v16 = v18;
      v18 = 0;
      v17 = *v12;
      *v12 = v16;

      *(v12 + 8) = v19;
      *(v12 + 24) = v20;
    }
  }
}

uint64_t sub_2214021C4(uint64_t a1, uint64_t a2)
{
  if (TSUDecimal::operator<())
  {
    return 0xFFFFFFFFLL;
  }

  if (!TSUDecimal::operator<=())
  {
    return 1;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v7 = v5 >= v6;
  v8 = v5 > v6;
  if (v7)
  {
    return v8;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_221402228(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (a2)
  {
    sub_221402280(a1, a2);
  }

  return a1;
}

void sub_221402264(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_221402280(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      sub_22140318C(a1, a2);
    }

    sub_22107C148();
  }
}

void sub_221402320(uint64_t a1, _OWORD *a2)
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
      sub_22140318C(a1, v11);
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
  ++*(a1 + 32);
}

void sub_221402404(void *a1@<X0>, _OWORD *a2@<X8>, const char *a3@<X1>, uint64_t a4@<X3>)
{
  __p[10] = *MEMORY[0x277D85DE8];
  v6 = a1[4];
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "TSCETaggedDecimal TSCETaggedDecimalList::findPivot()", a4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCETaggedDecimalList.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 69, 0, "We shouldn't be finding the pivot of a 0 length array");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
    v6 = a1[4];
  }

  if (v6 == 1)
  {
    v16 = (*a1 + 32 * a1[3]);
    v17 = v16[1];
    *a2 = *v16;
    a2[1] = v17;
  }

  else
  {
    sub_221402228(__p, v6 / 5 + 1);
    v18 = 0;
    v19 = 0;
    for (i = 0; ; i += 5)
    {
      v21 = a1[4];
      if (i + 5 >= v21)
      {
        break;
      }

      v22 = v18;
      for (j = 1; j != 5; ++j)
      {
        v24 = i + j;
        if (i + j > i)
        {
          v25 = v22;
          do
          {
            v26 = *a1 + 32 * a1[3] + v25;
            if (sub_2214021C4(v26, v26 + 32) < 1)
            {
              break;
            }

            --v24;
            v27 = (*a1 + 32 * a1[3] + v25);
            v28 = *v27;
            v29 = *(v27 + 2);
            *v27 = v27[2];
            *(v27 + 2) = *(v27 + 6);
            v27[2] = v28;
            *(v27 + 6) = v29;
            v25 -= 32;
          }

          while (v24 > i);
        }

        v22 += 32;
      }

      v19 -= 5;
      v18 += 160;
      sub_221402320(__p, (*a1 + 32 * a1[3] + 32 * i + 64));
    }

    v30 = v21 - i;
    if (v21 != i)
    {
      if (v30 >= 2)
      {
        v31 = v21 + v19;
        v32 = 1;
        do
        {
          v33 = v32 + i;
          if (v32 + i > i)
          {
            v34 = v18;
            do
            {
              v35 = *a1 + 32 * a1[3] + v34;
              if (sub_2214021C4(v35, v35 + 32) < 1)
              {
                break;
              }

              --v33;
              v36 = (*a1 + 32 * a1[3] + v34);
              v37 = *v36;
              v38 = *(v36 + 2);
              *v36 = v36[2];
              *(v36 + 2) = *(v36 + 6);
              v36[2] = v37;
              *(v36 + 6) = v38;
              v34 -= 32;
            }

            while (v33 > i);
          }

          ++v32;
          v18 += 32;
        }

        while (v32 != v31);
      }

      sub_221402320(__p, (*a1 + 32 * a1[3] + ((16 * v30 - 16) & 0xFFFFFFFFFFFFFFE0)));
    }

    sub_221402404(__p, a2);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

__n128 sub_221402720(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[4];
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "size_t TSCETaggedDecimalList::partitionTaggedDecimals(const TSCETaggedDecimal &)", a4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCETaggedDecimalList.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 116, 0, "_size == 0?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
    v6 = a1[4];
  }

  if (v6 == 1)
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v18 = 0;
    v19 = -1;
    do
    {
      v20 = sub_2214021C4(*a1 + 32 * a1[3] + 32 * v18, a2);
      if (v20)
      {
        if (v20 == -1)
        {
          ++v19;
          v21 = *a1 + 32 * a1[3];
          v22 = v21 + 32 * v19;
          v23 = v21 + 32 * v18;
          v24 = *v23;
          v25 = *(v23 + 16);
          *v23 = *v22;
          *(v23 + 16) = *(v22 + 16);
          *v22 = v24;
          *(v22 + 16) = v25;
        }
      }

      else
      {
        v26 = *a1 + 32 * a1[3];
        v27 = v26 + 32 * v18;
        v28 = v26 + 32 * a1[4];
        v29 = *(v28 - 32);
        v30 = *(v28 - 16);
        *(v28 - 32) = *v27;
        *(v28 - 16) = *(v27 + 16);
        *v27 = v29;
        *(v27 + 16) = v30;
        --v18;
      }

      ++v18;
      v17 = a1[4] - 1;
    }

    while (v18 < v17);
    v16 = v19 + 1;
  }

  v31 = *a1 + 32 * a1[3];
  v32 = (v31 + 32 * v16);
  v33 = (v31 + 32 * v17);
  result = *v33;
  v35 = v33[1].n128_u64[0];
  *v33 = *v32;
  v33[1].n128_u64[0] = v32[1].n128_u64[0];
  *v32 = result;
  v32[1].n128_u64[0] = v35;
  return result;
}

void sub_221402934(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a1[3];
  v9 = a1[4];
  a1[3] = v8 + a2;
  a1[4] = a3;
  TSUDecimal::operator=();
  *&v28 = 0;
  if (a1[4] == 1)
  {
    v12 = *a1 + 32 * a1[3];
    v13 = *(v12 + 16);
    v27 = *v12;
    *&v28 = v13;
LABEL_9:
    a1[3] = v8;
    a1[4] = v9;
    v18 = v27;
    v19 = v28;
    goto LABEL_10;
  }

  sub_221402404(a1, v26, v10, v11);
  sub_221402720(a1, v26, v14, v15);
  if (v16 != a4)
  {
    v20 = v16;
    if (v16 > a4)
    {
      v23 = a1;
      v21 = 0;
      v22 = a4;
    }

    else
    {
      v21 = v16 + 1;
      v20 = a1[4] + ~v16;
      v22 = ~v16 + a4;
      v23 = a1;
    }

    sub_221402934(v23, v21, v20, v22, &v24);
    v27 = v24;
    *&v28 = v25;
    goto LABEL_9;
  }

  v17 = (*a1 + 32 * a1[3] + 32 * a4);
  v18 = *v17;
  v19 = v17[1];
LABEL_10:
  *a5 = v18;
  a5[1] = v19;
}

void sub_221403030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);

  sub_2210BDEC0(va);
  _Unwind_Resume(a1);
}

void sub_22140318C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_22107C238();
}

void *sub_2214031D4(void *a1, TSUDecimal *this)
{
  v3 = TSUDecimal::hash(this);
  v4 = a1[1];
  if (!*&v4)
  {
    return 0;
  }

  v5 = v3;
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v3;
    if (v3 >= *&v4)
    {
      v8 = v3 % *&v4;
    }
  }

  else
  {
    v8 = (*&v4 - 1) & v3;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  if (*v9)
  {
    do
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        if (TSUDecimal::operator==())
        {
          return v10;
        }
      }

      else
      {
        if (v7 > 1)
        {
          if (v11 >= *&v4)
          {
            v11 %= *&v4;
          }
        }

        else
        {
          v11 &= *&v4 - 1;
        }

        if (v11 != v8)
        {
          return 0;
        }
      }

      v10 = *v10;
    }

    while (v10);
  }

  return v10;
}

void *sub_2214032D4(void *a1, TSUDecimal *this, _OWORD *a3)
{
  v4 = TSUDecimal::hash(this);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
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

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if ((TSUDecimal::operator==() & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void *sub_221403524(void *a1, TSUDecimal *this, _OWORD *a3)
{
  v4 = TSUDecimal::hash(this);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
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

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if ((TSUDecimal::operator==() & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_221403DE8(void *a1, uint64_t a2)
{
  v3 = a1;
  *(v3 + 2) = a2;
  v14 = v3;
  WeakRetained = objc_loadWeakRetained(v3 + 8);
  v8 = objc_msgSend_layoutEngine(WeakRetained, v5, v6, v7);
  v14[4] = objc_msgSend_p_stageCountForProvider_withAnimationKind_(TSTAnimation, v9, v8, a2);

  *(v14 + 13) = 0;
  v10 = v14 + 52;
  *(v14 + 49) = 0;
  v11 = v14 + 49;
  v14[5] = 0;
  *(v14 + 48) = v14[4] < 2;
  v14[3] = 0;
  v14[2] = 0;
  *(v14 + 14) = 0x10000;
  v12 = v14 + 50;
  v13 = v14 + 51;
  switch(a2)
  {
    case 2:
      goto LABEL_17;
    case 3:
      *v11 = 1;
      goto LABEL_12;
    case 4:
      v11 = v14 + 50;
      goto LABEL_17;
    case 5:
      *v12 = 1;
      goto LABEL_12;
    case 6:
      v11 = v14 + 51;
      goto LABEL_17;
    case 7:
      *v13 = 1;
      goto LABEL_12;
    case 8:
      *v11 = 1;
      goto LABEL_16;
    case 9:
      *v11 = 1;
      *v10 = 1;
      goto LABEL_12;
    case 10:
      *v12 = 1;
      goto LABEL_16;
    case 11:
      *v12 = 1;
      goto LABEL_7;
    case 12:
      *v13 = 1;
LABEL_16:
      v11 = v14 + 52;
      goto LABEL_17;
    case 13:
      *v13 = 1;
LABEL_7:
      *v10 = 1;
LABEL_12:
      v11 = v14 + 55;
      goto LABEL_17;
    case 14:
      v11 = v14 + 53;
LABEL_17:
      *v11 = 1;
      break;
    default:
      break;
  }
}

void sub_2214052CC(void *a1, void *a2, uint64_t a3)
{
  v69 = a1;
  v5 = a2;
  v72 = objc_msgSend_numberOfColumns(v5, v6, v7, v8);
  v13 = objc_msgSend_numberOfRows(v5, v9, v10, v11);
  if (!v72)
  {
    v66 = 0;
    v26 = 0x7FFF;
    v68 = 0x7FFFFFFF;
    goto LABEL_30;
  }

  v14 = 0;
  v66 = 0;
  v15 = 0;
  v16 = 0x7FFFLL;
  v68 = 0x7FFFFFFF;
  do
  {
    if (!v13)
    {
      v25 = v15;
      v15 = v16;
      goto LABEL_27;
    }

    v70 = v16;
    v17 = 0;
    v18 = v15 << 32;
    while (1)
    {
      v19 = objc_msgSend_expandCellRangeToCoverMergedCells_(v5, v12, v18 | v17, 0x100000001);
      v20 = v19 & 0xFFFF00000000;
      v21 = v19 == 0x7FFFFFFF || v20 == 0x7FFF00000000;
      v22 = v21 || HIDWORD(v12) == 0;
      if (v22 || v12 == 0)
      {
        isEntireCellRangeHidden = objc_msgSend_isEntireCellRangeHidden_(v5, v12, v18, (v13 << 32) | 1);
      }

      else
      {
        if (v17 != v19 || v20 != v18)
        {
          goto LABEL_20;
        }

        isEntireCellRangeHidden = objc_msgSend_isEntireCellRangeHidden_(v5, v12, v19, v12);
      }

      if ((isEntireCellRangeHidden & 1) == 0)
      {
        break;
      }

LABEL_20:
      if (++v17 >= v13)
      {
        v25 = v15;
        v15 = v70;
        goto LABEL_27;
      }
    }

    if (v14 != a3)
    {
      ++v14;
      v17 = 999999;
      goto LABEL_20;
    }

    v68 = 0;
    v25 = 999;
    v14 = a3;
    v66 = (v13 << 32) | 1;
LABEL_27:
    v26 = v15;
    v16 = v15;
    v15 = (v25 + 1);
  }

  while (v72 > (v25 + 1));
LABEL_30:
  v27 = 0x7FFF7FFFFFFFLL;
  if (v13)
  {
    v28 = 0;
    v29 = v26;
    v30 = 0;
    v31 = v26;
    v32 = v26 << 32;
    v33 = HIDWORD(v66) == 0;
    if (!v66)
    {
      v33 = 1;
    }

    v73 = v33;
    v34 = v68 + HIDWORD(v66) - 1;
    if (v68 == 0x7FFFFFFF)
    {
      v34 = 0x7FFFFFFF;
    }

    v64 = v34;
    v65 = v29;
    v35 = v31 == 0x7FFF;
    v36 = v31 != 0x7FFF && v68 == 0x7FFFFFFF;
    v71 = v36;
    v37 = v35 && v68 != 0x7FFFFFFF;
    v63 = v37;
    if (v35 || v66 == 0)
    {
      v39 = 0x7FFF;
    }

    else
    {
      v39 = v66 + v29 - 1;
    }

    v40 = v13;
    v67 = v39;
    v41 = 0x7FFF7FFFFFFFLL;
    while (1)
    {
      v42 = objc_msgSend_expandCellRangeToCoverMergedCells_(v5, v12, v32, 0x100000001);
      v43 = v12;
      if (v42 == 0x7FFFFFFF || (v42 & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(v12) == 0 || v12 == 0)
      {
        v47 = v41 & 0xFFFF00000000;
        if (v28)
        {
          v48 = HIDWORD(v28) == 0;
        }

        else
        {
          v48 = 1;
        }

        if (v48)
        {
          v49 = v27;
        }

        else
        {
          v49 = v32;
        }

        if (v48)
        {
          v50 = v30;
        }

        else
        {
          v50 = 0x100000001;
        }

        if (v48)
        {
          v51 = v32;
        }

        else
        {
          v51 = v41;
        }

        if (v48)
        {
          v52 = 0x100000001;
        }

        else
        {
          v52 = v28;
        }

        v53 = v47 == 0x7FFF00000000;
        if (v47 == 0x7FFF00000000)
        {
          v54 = v27;
        }

        else
        {
          v54 = v49;
        }

        if (v53)
        {
          v55 = v30;
        }

        else
        {
          v55 = v50;
        }

        if (v53)
        {
          v56 = v32;
        }

        else
        {
          v56 = v51;
        }

        if (v53)
        {
          v57 = 0x100000001;
        }

        else
        {
          v57 = v52;
        }

        v58 = v41 == 0x7FFFFFFF;
        if (v41 == 0x7FFFFFFF)
        {
          v41 = v32;
        }

        else
        {
          v27 = v54;
          v30 = v55;
          v41 = v56;
        }

        if (v58)
        {
          v28 = 0x100000001;
        }

        else
        {
          v28 = v57;
        }

        goto LABEL_92;
      }

      v59 = sub_2211C1FC4(v41, v28, v27, v30);
      objc_msgSend_addCellRange_(v69, v60, v59, v60);
      if (v73)
      {
        v30 = 0;
        v28 = 0;
        v27 = 0x7FFF7FFFFFFFLL;
        v41 = 0x7FFF7FFFFFFFLL;
      }

      else
      {
        if (v71)
        {
          goto LABEL_97;
        }

        v30 = 0;
        if (v68 > v42)
        {
LABEL_104:
          v27 = 0x7FFF7FFFFFFFLL;
          v41 = 0x7FFF7FFFFFFFLL;
          v28 = 0;
          goto LABEL_92;
        }

        v27 = 0x7FFF7FFFFFFFLL;
        v41 = 0x7FFF7FFFFFFFLL;
        v28 = 0;
        if (v64 >= v42)
        {
          if (!v63)
          {
LABEL_97:
            v30 = 0;
            if (v65 > WORD2(v42))
            {
              goto LABEL_104;
            }

            v27 = 0x7FFF7FFFFFFFLL;
            v41 = 0x7FFF7FFFFFFFLL;
            v28 = 0;
            if (v67 < WORD2(v42))
            {
              goto LABEL_92;
            }
          }

          objc_msgSend_addCellRange_(v69, v12, v42, v43);
          v30 = 0;
          v28 = 0;
        }
      }

LABEL_92:
      ++v32;
      if (!--v40)
      {
        goto LABEL_106;
      }
    }
  }

  v30 = 0;
  v28 = 0;
  v41 = 0x7FFF7FFFFFFFLL;
LABEL_106:
  v61 = sub_2211C1FC4(v41, v28, v27, v30);
  objc_msgSend_addCellRange_(v69, v62, v61, v62);
}

void sub_221405714(void *a1, void *a2, uint64_t a3)
{
  v49 = a1;
  v5 = a2;
  v9 = objc_msgSend_numberOfColumns(v5, v6, v7, v8);
  v13 = objc_msgSend_numberOfRows(v5, v10, v11, v12);
  if (!v13)
  {
    v48 = 0x7FFFFFFF;
    goto LABEL_32;
  }

  v15 = 0;
  v16 = 0;
  v48 = 0x7FFFFFFF;
  v50 = v13;
  do
  {
    if (!v9)
    {
      v23 = v16;
      goto LABEL_29;
    }

    v17 = 0;
    while (1)
    {
      v18 = objc_msgSend_expandCellRangeToCoverMergedCells_(v5, v14, v16 | (v17 << 32), 0x100000001);
      v19 = v18 == 0x7FFFFFFF || (v18 & 0xFFFF00000000) == 0x7FFF00000000;
      v20 = v19 || HIDWORD(v14) == 0;
      if (v20 || v14 == 0)
      {
        isEntireCellRangeHidden = objc_msgSend_isEntireCellRangeHidden_(v5, v14, v16, v9 | 0x100000000);
      }

      else
      {
        if (v16 != 0x7FFFFFFF && v16 != v18 || (v9 - 1) < WORD2(v18))
        {
          goto LABEL_20;
        }

        isEntireCellRangeHidden = objc_msgSend_isEntireCellRangeHidden_(v5, v14, v18, v14);
      }

      if ((isEntireCellRangeHidden & 1) == 0)
      {
        break;
      }

LABEL_20:
      if (v9 <= ++v17)
      {
        v23 = v16;
        goto LABEL_28;
      }
    }

    if (v15 != a3)
    {
      ++v15;
      v17 = 999;
      goto LABEL_20;
    }

    v15 = a3;
    v23 = 999999;
    v48 = v16;
LABEL_28:
    v13 = v50;
LABEL_29:
    v16 = v23 + 1;
  }

  while (v23 + 1 < v13);
LABEL_32:
  v24 = 0x7FFF7FFFFFFFLL;
  if (v9)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = v9 << 32;
    v29 = 0x7FFF7FFFFFFFLL;
    v51 = v28;
    do
    {
      v30 = objc_msgSend_expandCellRangeToCoverMergedCells_(v5, v14, v48 + v25, 0x100000001);
      if (v30 == 0x7FFFFFFF || (v30 & 0xFFFF00000000) == 0x7FFF00000000 || (v31 = v14, !HIDWORD(v14)) || !v14)
      {
        v34 = v29 & 0xFFFF00000000;
        if (v26)
        {
          v35 = HIDWORD(v26) == 0;
        }

        else
        {
          v35 = 1;
        }

        if (v35)
        {
          v36 = v24;
        }

        else
        {
          v36 = v48 + v25;
        }

        if (v35)
        {
          v37 = v27;
        }

        else
        {
          v37 = 0x100000001;
        }

        if (v35)
        {
          v38 = v48 + v25;
        }

        else
        {
          v38 = v29;
        }

        if (v35)
        {
          v39 = 0x100000001;
        }

        else
        {
          v39 = v26;
        }

        v40 = v34 == 0x7FFF00000000;
        if (v34 == 0x7FFF00000000)
        {
          v41 = v24;
        }

        else
        {
          v41 = v36;
        }

        if (v40)
        {
          v42 = v27;
        }

        else
        {
          v42 = v37;
        }

        if (v40)
        {
          v43 = v48 + v25;
        }

        else
        {
          v43 = v38;
        }

        if (v40)
        {
          v44 = 0x100000001;
        }

        else
        {
          v44 = v39;
        }

        v45 = v29 == 0x7FFFFFFF;
        if (v29 == 0x7FFFFFFF)
        {
          v29 = v48 + v25;
        }

        else
        {
          v24 = v41;
          v27 = v42;
          v29 = v43;
        }

        if (v45)
        {
          v26 = 0x100000001;
        }

        else
        {
          v26 = v44;
        }
      }

      else
      {
        v32 = sub_2211C1FC4(v29, v26, v24, v27);
        objc_msgSend_addCellRange_(v49, v33, v32, v33);
        v27 = 0;
        v24 = 0x7FFF7FFFFFFFLL;
        v29 = 0x7FFF7FFFFFFFLL;
        v26 = 0;
        if (v48 == v30 && v25 == (v30 & 0xFFFF00000000))
        {
          objc_msgSend_addCellRange_(v49, v14, v30, v31);
          v27 = 0;
          v26 = 0;
        }
      }

      v25 += 0x100000000;
    }

    while (v51 != v25);
  }

  else
  {
    v27 = 0;
    v26 = 0;
    v29 = 0x7FFF7FFFFFFFLL;
  }

  v46 = sub_2211C1FC4(v29, v26, v24, v27);
  objc_msgSend_addCellRange_(v49, v47, v46, v47);
}

void sub_221405A60(void *a1, void *a2, uint64_t a3)
{
  v23 = a1;
  v4 = a2;
  v25 = objc_msgSend_numberOfColumns(v4, v5, v6, v7);
  v11 = objc_msgSend_numberOfRows(v4, v8, v9, v10);
  if (v11)
  {
    v13 = 0;
    v14 = 0;
    v24 = v11;
    while (!v25)
    {
LABEL_26:
      if (++v13 == v24)
      {
        goto LABEL_29;
      }
    }

    v15 = 0;
    while (1)
    {
      v16 = objc_msgSend_expandCellRangeToCoverMergedCells_(v4, v12, v13 + v15, 0x100000001, v23);
      v17 = v16;
      v18 = v12;
      v19 = v16 & 0xFFFF00000000;
      if (v16 == 0x7FFFFFFFLL || v19 == 0x7FFF00000000 || HIDWORD(v12) == 0 || v12 == 0)
      {
        if (objc_msgSend_isEntireCellRangeHidden_(v4, v12, v13 + v15, 0x100000001))
        {
          goto LABEL_20;
        }

        v17 = v13 + v15;
        v18 = 0x100000001;
      }

      else if (v13 != v16 || v15 != v19 || (objc_msgSend_isEntireCellRangeHidden_(v4, v12, v16, v12) & 1) != 0)
      {
        goto LABEL_20;
      }

      if (v14 == a3)
      {
        objc_msgSend_addCellRange_(v23, v12, v17, v18);
        break;
      }

      ++v14;
LABEL_20:
      v15 += 0x100000000;
      if (v25 << 32 == v15)
      {
        goto LABEL_26;
      }
    }
  }

LABEL_29:
}

void sub_221406570(uint64_t a1, void *a2)
{
  v13 = a2;
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v3, v4, v5);
  objc_msgSend_addObserver_selector_name_object_(v6, v7, *(a1 + 32), sel_p_didReceiveMemoryWarning_, *MEMORY[0x277D76670], v13);

  v11 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v8, v9, v10);
  objc_msgSend_addObserver_selector_name_object_(v11, v12, *(a1 + 32), sel_p_didEnterBackground_, *MEMORY[0x277D76660], v13);
}

void sub_221406698(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSTFontInfoCache;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_221406908(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

double *sub_221406B40(void *a1, double *a2, uint64_t a3, _OWORD **a4)
{
  v8 = objc_msgSend_hash(*a2, a2, a3, a4) ^ a2[1];
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_19;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v8;
    if (v8 >= *&v9)
    {
      v12 = v8 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v8;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v15 = *(v14 + 1);
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_19;
    }

LABEL_18:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_19;
    }
  }

  if (v14[3] != a2[1] || (objc_msgSend_isEqualToString_(*(v14 + 2), v6, *a2, v7) & 1) == 0)
  {
    goto LABEL_18;
  }

  return v14;
}

void *sub_221406DB0(void *a1, unint64_t *a2, uint64_t a3, void **a4)
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

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_221406FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

void sub_22140700C(os_unfair_lock_s *a1, unint64_t *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x4812000000;
  v20 = sub_2214071F4;
  v21 = sub_221407200;
  v22 = &unk_22188E88F;
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  os_unfair_lock_lock(a1);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22140720C;
  v12[3] = &unk_278464A20;
  v9 = v7;
  v13 = v9;
  v10 = v8;
  v14 = v10;
  v15 = &v17;
  v16 = a2;
  sub_221278F68(&a1[4], a2, v12);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22140727C;
  v11[3] = &unk_278464A40;
  v11[4] = a1;
  sub_221278D98(v18 + 6, v11);
  os_unfair_lock_unlock(a1);

  _Block_object_dispose(&v17, 8);
  sub_2212796F0(&v23, v24[0]);
}

void sub_2214071B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  _Block_object_dispose(&a22, 8);
  sub_2212796F0(v31 + 48, a29);

  _Unwind_Resume(a1);
}

void *sub_22140720C(uint64_t a1, const char *a2)
{
  if ((objc_msgSend_containsUuid_(*(a1 + 32), a2, *a2, *(a2 + 1)) & 1) != 0 || (result = objc_msgSend_containsUuid_(*(a1 + 40), v4, *(a2 + 2), *(a2 + 3)), result))
  {
    v6 = *(a1 + 56);
    v7 = (*(*(a1 + 48) + 8) + 48);

    return sub_221278A44(v7, a2, v6);
  }

  return result;
}

void sub_221407288(void *a1)
{
  if (!a1[3])
  {
    v3 = objc_opt_new();
    v4 = a1[3];
    a1[3] = v3;

    v5 = objc_opt_new();
    v6 = a1[4];
    a1[4] = v5;

    v7 = objc_opt_new();
    v8 = a1[5];
    a1[5] = v7;

    v9 = objc_opt_new();
    v10 = a1[6];
    a1[6] = v9;
  }
}

uint64_t sub_221407314(uint64_t a1, const char *a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v6 = (a1 + 24);
    v5 = *(a1 + 24);
    if (v5)
    {
      goto LABEL_6;
    }

    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSTHeaderPerTable::addHeaderUid(const TSKUIDStruct &, BOOL)", a4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHeaderNameMgr.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 197, 0, "invalid nil value for '%{public}s'", "_headerRowUids");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  else
  {
    v6 = (a1 + 32);
  }

  v5 = *v6;
LABEL_6:
  v16 = *a2;
  v17 = *(a2 + 1);

  return objc_msgSend_addUUID_(v5, a2, v16, v17);
}

void sub_221407410(void *a1, void ***a2, _OWORD *a3)
{
  if (a1)
  {
    sub_2214074F4((a1 + 3), a2);
    v5 = a1[7];
    v6 = a1[8];
    if (v5 >= v6)
    {
      v9 = a1[6];
      v10 = (v5 - v9) >> 5;
      v11 = v10 + 1;
      if ((v10 + 1) >> 59)
      {
        sub_22107C148();
      }

      v12 = v6 - v9;
      if (v12 >> 4 > v11)
      {
        v11 = v12 >> 4;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFE0)
      {
        v13 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        sub_221087FE8((a1 + 6), v13);
      }

      v14 = (32 * v10);
      v15 = a3[1];
      *v14 = *a3;
      v14[1] = v15;
      v8 = 32 * v10 + 32;
      v16 = a1[6];
      v17 = a1[7] - v16;
      v18 = v14 - v17;
      memcpy(v14 - v17, v16, v17);
      v19 = a1[6];
      a1[6] = v18;
      a1[7] = v8;
      a1[8] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      v7 = a3[1];
      *v5 = *a3;
      v5[1] = v7;
      v8 = (v5 + 2);
    }

    a1[7] = v8;
  }
}

void *sub_2214074F4(uint64_t a1, void ***a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_2214112B8(a1, a2);
  }

  else
  {
    sub_221411264(a1, a2);
    result = (v3 + 24);
  }

  *(a1 + 8) = result;
  return result;
}

void sub_221408AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  a18 = &a24;
  sub_22107C2C0(&a18);
  sub_22107C800(&a27, a28);
  _Block_object_dispose((v30 - 136), 8);
  sub_22107C800(v29 + 48, *(v30 - 80));

  _Unwind_Resume(a1);
}

uint64_t sub_221408BC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221408BD8(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a1[7] + 8) + 40);
  if (!v6)
  {
    v10 = *(a2 + 1);
LABEL_9:
    v35 = v10;
    v12 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, a2, &v35, a1[4]);
    v13 = *(a1[7] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    goto LABEL_10;
  }

  v7 = objc_msgSend_tableUID(v6, a2, a3, a4);
  v10 = *(a2 + 1);
  if (v7 != v10 || a2 != *(&v10 + 1))
  {
    goto LABEL_9;
  }

LABEL_10:
  v15 = *(*(a1[7] + 8) + 40);
  if (v15)
  {
    v16 = *a2;
    v17 = WORD2(*a2);
    if (v17 < objc_msgSend_numberOfHeaderColumns(v15, a2, v8, v9) || objc_msgSend_numberOfHeaderRows(*(*(a1[7] + 8) + 40), v18, v19, v20) > v16)
    {
      v21 = objc_msgSend_cellValueAtBaseCellCoord_(*(*(a1[7] + 8) + 40), v18, v16, v20);
      v25 = objc_msgSend_displayString(v21, v22, v23, v24);
      v29 = objc_msgSend_namePrefixIndex(*(a1[5] + 8), v26, v27, v28);
      v32 = objc_msgSend_foldName_(v29, v30, v25, v31);

      if (objc_msgSend_isEqualToString_(v32, v33, a1[6], v34))
      {
        TSCECellRefSet::addCellRef((*(a1[8] + 8) + 48), a2);
      }
    }
  }
}

void sub_22140913C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  a20 = &a27;
  sub_22107C2C0(&a20);
  sub_22107C800(&a30, a31);
  _Block_object_dispose((v32 - 160), 8);
  sub_22107C800(v31 + 48, *(v32 - 104));

  _Unwind_Resume(a1);
}

void sub_221409220(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a1[7] + 8) + 40);
  if (!v6)
  {
    v10 = *(a2 + 1);
LABEL_9:
    v35 = v10;
    v12 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, a2, &v35, a1[4]);
    v13 = *(a1[7] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    goto LABEL_10;
  }

  v7 = objc_msgSend_tableUID(v6, a2, a3, a4);
  v10 = *(a2 + 1);
  if (v7 != v10 || a2 != *(&v10 + 1))
  {
    goto LABEL_9;
  }

LABEL_10:
  v15 = *(*(a1[7] + 8) + 40);
  if (v15)
  {
    v16 = *a2;
    v17 = WORD2(*a2);
    if (v17 < objc_msgSend_numberOfHeaderColumns(v15, a2, v8, v9) || objc_msgSend_numberOfHeaderRows(*(*(a1[7] + 8) + 40), v18, v19, v20) > v16)
    {
      v21 = objc_msgSend_cellValueAtBaseCellCoord_(*(*(a1[7] + 8) + 40), v18, v16, v20);
      v25 = objc_msgSend_displayString(v21, v22, v23, v24);
      v29 = objc_msgSend_namePrefixIndex(*(a1[5] + 8), v26, v27, v28);
      v32 = objc_msgSend_foldName_(v29, v30, v25, v31);

      if (objc_msgSend_hasPrefix_(v32, v33, a1[6], v34))
      {
        TSCECellRefSet::addCellRef((*(a1[8] + 8) + 48), a2);
      }
    }
  }
}

void sub_2214097E4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSTHeaderNameMgr;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_22140A024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  sub_22107C800(va, v6);
  sub_2210C82EC(va1);
  _Unwind_Resume(a1);
}

void sub_22140A280(_Unwind_Exception *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);

  sub_22107C2C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22140ABD4(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

void *sub_22140ABEC(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_removeUUID_(*(*(a1 + 40) + 24), a2, a2, a3);
  result = objc_msgSend_addUUID_(*(*(a1 + 40) + 40), v6, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return result;
}

void *sub_22140AC54(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_removeUUID_(*(*(a1 + 40) + 32), a2, a2, a3);
  result = objc_msgSend_addUUID_(*(*(a1 + 40) + 48), v6, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return result;
}

void sub_22140AEC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  sub_22107C800(&a18, a19);
  _Unwind_Resume(a1);
}

void sub_22140B19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_22107C800(&a12, a13);

  _Unwind_Resume(a1);
}

void sub_22140B3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_221412F60(va);
  sub_22107C860(v22 + 16, *(v23 - 112));
  _Unwind_Resume(a1);
}

void sub_22140B3EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_fragmentEntryForNameFragmentPrecedent_(*(a1 + 32), a2, a2, a4);
  if (v5)
  {
    v6 = v5;
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    os_unfair_lock_lock(v5);
    sub_221279658(&v6[4], v8, v7);

    os_unfair_lock_unlock(v6);
  }
}

void sub_22140B6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20, ...)
{
  va_start(va, a20);

  sub_22107C860(v22 + 16, a19);
  sub_2210BDEC0(va);

  _Unwind_Resume(a1);
}

void sub_22140B740(uint64_t a1, void *a2)
{
  pthread_rwlock_rdlock((*(a1 + 32) + 80));
  v4 = *(a1 + 32);
  v85 = a2;
  v88 = *(sub_221412D0C((v4 + 472), a2, &unk_2217E1BE8, &v85) + 3);
  v5 = *(a1 + 32);
  v85 = &v88;
  v6 = sub_221412AD0((v5 + 432), &v88, &unk_2217E1BE8, &v85)[4];
  pthread_rwlock_unlock((*(a1 + 32) + 80));
  if (!v6)
  {
    return;
  }

  v7 = *(a1 + 40);
  v8 = *(v7 + 40);
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = *(v7 + 32);
  v10 = *v8;
  if (v9 >= *v8)
  {
    if (v10 != *(v7 + 36))
    {
LABEL_8:
      *v8 = v10 + 1;
      v11 = google::protobuf::Arena::CreateMaybeMessage<TST::HeaderNameMgrArchive_PerTableArchive>(*(v7 + 24));
      v12 = *(v7 + 32);
      v13 = *(v7 + 40) + 8 * v12;
      *(v7 + 32) = v12 + 1;
      *(v13 + 8) = v11;
      goto LABEL_9;
    }

LABEL_7:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v7 + 24));
    v8 = *(v7 + 40);
    v10 = *v8;
    goto LABEL_8;
  }

  *(v7 + 32) = v9 + 1;
  v11 = *&v8[2 * v9 + 2];
LABEL_9:
  *(v11 + 16) |= 1u;
  v14 = *(v11 + 120);
  if (!v14)
  {
    v15 = *(v11 + 8);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    v14 = MEMORY[0x223DA0360](v15);
    *(v11 + 120) = v14;
  }

  TSKUIDStruct::saveToMessage(v6, v14);
  *(v11 + 16) |= 2u;
  v16 = *(v11 + 128);
  if (!v16)
  {
    v17 = *(v11 + 8);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v17);
    *(v11 + 128) = v16;
  }

  sub_221269820((v6 + 16), v16);
  if (*(v6 + 56) == 1)
  {
    *(v11 + 16) |= 4u;
    *(v11 + 136) = 1;
  }

  v21 = objc_msgSend_copy(*(v6 + 32), v18, v19, v20);
  v25 = v21;
  if (v21)
  {
    objc_msgSend_uuidsAsVector(v21, v22, v23, v24);
  }

  else
  {
    v85 = 0;
    v86 = 0;
    v87 = 0;
  }

  v29 = objc_msgSend_copy(*(v6 + 24), v26, v27, v28);
  v33 = v29;
  if (v29)
  {
    objc_msgSend_uuidsAsVector(v29, v30, v31, v32);
  }

  else
  {
    v83 = 0;
    v84 = 0;
  }

  v37 = objc_msgSend_copy(*(v6 + 48), v34, v35, v36);
  v41 = v37;
  if (v37)
  {
    objc_msgSend_uuidsAsVector(v37, v38, v39, v40);
  }

  else
  {
    __p = 0;
    v82 = 0;
  }

  v45 = objc_msgSend_copy(*(v6 + 40), v42, v43, v44);
  v49 = v45;
  if (v45)
  {
    objc_msgSend_uuidsAsVector(v45, v46, v47, v48);
  }

  else
  {
    v79 = 0;
    v80 = 0;
  }

  v50 = v85;
  v51 = v86;
  while (v50 != v51)
  {
    v52 = *(v11 + 64);
    if (!v52)
    {
      goto LABEL_38;
    }

    v53 = *(v11 + 56);
    v54 = *v52;
    if (v53 < *v52)
    {
      *(v11 + 56) = v53 + 1;
      v55 = *&v52[2 * v53 + 2];
      goto LABEL_40;
    }

    if (v54 == *(v11 + 60))
    {
LABEL_38:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v11 + 48));
      v52 = *(v11 + 64);
      v54 = *v52;
    }

    *v52 = v54 + 1;
    v55 = MEMORY[0x223DA0360](*(v11 + 48));
    v56 = *(v11 + 56);
    v57 = *(v11 + 64) + 8 * v56;
    *(v11 + 56) = v56 + 1;
    *(v57 + 8) = v55;
LABEL_40:
    TSKUIDStruct::saveToMessage(v50++, v55);
  }

  for (i = v83; i != v84; ++i)
  {
    v59 = *(v11 + 40);
    if (!v59)
    {
      goto LABEL_48;
    }

    v60 = *(v11 + 32);
    v61 = *v59;
    if (v60 < *v59)
    {
      *(v11 + 32) = v60 + 1;
      v62 = *&v59[2 * v60 + 2];
      goto LABEL_50;
    }

    if (v61 == *(v11 + 36))
    {
LABEL_48:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v11 + 24));
      v59 = *(v11 + 40);
      v61 = *v59;
    }

    *v59 = v61 + 1;
    v62 = MEMORY[0x223DA0360](*(v11 + 24));
    v63 = *(v11 + 32);
    v64 = *(v11 + 40) + 8 * v63;
    *(v11 + 32) = v63 + 1;
    *(v64 + 8) = v62;
LABEL_50:
    TSKUIDStruct::saveToMessage(i, v62);
  }

  for (j = __p; j != v82; ++j)
  {
    v66 = *(v11 + 112);
    if (!v66)
    {
      goto LABEL_58;
    }

    v67 = *(v11 + 104);
    v68 = *v66;
    if (v67 < *v66)
    {
      *(v11 + 104) = v67 + 1;
      v69 = *&v66[2 * v67 + 2];
      goto LABEL_60;
    }

    if (v68 == *(v11 + 108))
    {
LABEL_58:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v11 + 96));
      v66 = *(v11 + 112);
      v68 = *v66;
    }

    *v66 = v68 + 1;
    v69 = MEMORY[0x223DA0360](*(v11 + 96));
    v70 = *(v11 + 104);
    v71 = *(v11 + 112) + 8 * v70;
    *(v11 + 104) = v70 + 1;
    *(v71 + 8) = v69;
LABEL_60:
    TSKUIDStruct::saveToMessage(j, v69);
  }

  v72 = v79;
  if (v79 == v80)
  {
    goto LABEL_71;
  }

  while (2)
  {
    v73 = *(v11 + 88);
    if (!v73)
    {
      goto LABEL_67;
    }

    v74 = *(v11 + 80);
    v75 = *v73;
    if (v74 < *v73)
    {
      *(v11 + 80) = v74 + 1;
      v76 = *&v73[2 * v74 + 2];
      goto LABEL_69;
    }

    if (v75 == *(v11 + 84))
    {
LABEL_67:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v11 + 72));
      v73 = *(v11 + 88);
      v75 = *v73;
    }

    *v73 = v75 + 1;
    v76 = MEMORY[0x223DA0360](*(v11 + 72));
    v77 = *(v11 + 80);
    v78 = *(v11 + 88) + 8 * v77;
    *(v11 + 80) = v77 + 1;
    *(v78 + 8) = v76;
LABEL_69:
    TSKUIDStruct::saveToMessage(v72++, v76);
    if (v72 != v80)
    {
      continue;
    }

    break;
  }

  v72 = v79;
LABEL_71:
  if (v72)
  {
    operator delete(v72);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v83)
  {
    operator delete(v83);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }
}

void sub_22140BC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
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

  _Unwind_Resume(a1);
}

void sub_22140C0FC(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = a2;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v18, v23, 16);
  if (v7)
  {
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v22 = *(*(&v18 + 1) + 8 * v9);
        objc_msgSend_unpackAfterUnarchive_(v22, v5, *(a1 + 32), v6, v18);
        sub_22140C294((*(a1 + 32) + 328), &v22);
        if (objc_msgSend_count(v22, v10, v11, v12) >> 4 >= 0xC35)
        {
          v14 = *(*(a1 + 32) + 568);
          v15 = objc_msgSend_firstFragment(v22, v5, v13, v6);
          objc_msgSend_addObject_(v14, v16, v15, v17);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v18, v23, 16);
    }

    while (v7);
  }
}

id sub_22140C294(void *a1, id *a2)
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

void sub_22140C374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22140C494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22140C4B0(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  sub_221278D98((a1 + 16), v3);

  os_unfair_lock_unlock(a1);
}

TSCECellCoordSet *sub_22140C514(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v8[2] = *a3;
  v5 = *(a1 + 32);
  v9 = v8;
  v6 = sub_221412FE4((v5 + 392), v8, &unk_2217E1BE8, &v9);
  result = TSCECellCoordSet::addCellCoord((v6 + 8), (a1 + 48));
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

void **sub_22140CC6C(uint64_t *a1, uint64_t a2, id *a3)
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
    sub_221122E10(a1, a2, a1[1], (a2 + 8));
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

void sub_22140CD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22140D198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  sub_22107C800(&a22, a23);

  _Unwind_Resume(a1);
}

void sub_22140D3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  a9 = &a13;
  sub_22107C2C0(&a9);

  _Unwind_Resume(a1);
}

void sub_22140D764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char *a39)
{
  sub_22107C860(&a22, a23);
  _Block_object_dispose(&a25, 8);
  sub_22107C860(&a33, a34);
  sub_22107C860(&a38, a39);
  sub_22107C860(v39 - 136, *(v39 - 128));
  _Unwind_Resume(a1);
}

void sub_22140D820(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_fragmentEntryForNameFragmentPrecedent_(*(a1 + 32), a2, a2, a4);
  if (v5)
  {
    v6 = v5;
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    os_unfair_lock_lock(v5);
    sub_221278BF8(&v6[4], v7, v8);
    os_unfair_lock_unlock(v6);
    v9 = *(*(a1 + 40) + 8);
    v13 = *&v6[1]._os_unfair_lock_opaque;
    TSCECellCoordSet::addCellCoord((v9 + 48), &v13);
    os_unfair_lock_lock(v6);
    v10 = sub_221278C84(&v6[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v6);
    if (!v10)
    {
      objc_msgSend_removeName_(*(*(a1 + 32) + 512), v11, *&v6[10]._os_unfair_lock_opaque, v12);
    }
  }
}

void sub_22140DA60(_Unwind_Exception *a1)
{
  sub_22107C800(v2, *(v2 + 8));

  _Unwind_Resume(a1);
}

void sub_22140DF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20)
{
  v25 = v22;

  _Block_object_dispose((v24 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22140DF94(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 4) != *(a1 + 64) && !objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(*(a1 + 32), a2, *(a1 + 40), *a2, 1))
  {
    v9 = objc_msgSend_formattedValue(*(a1 + 40), v5, v6, v7);
    if (!objc_msgSend_compare_options_(v9, v8, *(a1 + 48), 1))
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      *a3 = 1;
    }
  }
}

void sub_22140E4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  sub_22107C800(&a10, a11);

  _Unwind_Resume(a1);
}

void sub_22140E624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  _Block_object_dispose(&a18, 8);
  sub_22107C800(v26 + 48, a25);

  _Unwind_Resume(a1);
}

void sub_22140E7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  _Block_object_dispose(&a18, 8);
  sub_22107C800(v26 + 48, a25);

  _Unwind_Resume(a1);
}

void sub_22140F6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, void *a41)
{
  _Block_object_dispose(&STACK[0x200], 8);

  _Block_object_dispose(&STACK[0x300], 8);
  sub_22107C860(&STACK[0x340], STACK[0x348]);

  sub_2212796F0(&STACK[0x2B0], STACK[0x2B8]);
  sub_22107C800(v46 - 152, *(v46 - 144));
  _Unwind_Resume(a1);
}

void sub_22140F93C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v10 = a2;
  v4 = sub_221411E04((v3 + 352), a2, &unk_2217E1BE8, &v10)[3];
  v7 = objc_msgSend_tileForEntry_(*(a1 + 32), v5, v4, v6);
  objc_msgSend_addChangedTile_(*(a1 + 32), v8, v7, v9);
  os_unfair_lock_lock(v4);
  sub_221278C80(&v4[4], a1 + 40);
  os_unfair_lock_unlock(v4);
}

void *sub_22140F9E8(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v7[2] = *a3;
  result = sub_22141356C((*(a1 + 32) + 392), v7);
  if (result)
  {
    v6 = result;
    TSCECellCoordSet::addCellCoords((*(*(a1 + 40) + 8) + 48), (result + 8));
    return sub_221413678((*(a1 + 32) + 392), v6);
  }

  return result;
}

void sub_22140FA6C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v10 = a2;
  v4 = sub_221411E04((v3 + 352), a2, &unk_2217E1BE8, &v10)[3];
  v7 = objc_msgSend_tileForEntry_(*(a1 + 32), v5, v4, v6);
  objc_msgSend_addChangedTile_(*(a1 + 32), v8, v7, v9);
  sub_22140700C(v4, (a1 + 56), *(a1 + 40), *(a1 + 48));
}

void *sub_22140FB0C(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v7[2] = *a3;
  result = sub_22141356C((*(a1 + 32) + 392), v7);
  if (result)
  {
    v6 = result;
    TSCECellCoordSet::addCellCoords((*(*(a1 + 40) + 8) + 48), (result + 8));
    return sub_221413678((*(a1 + 32) + 392), v6);
  }

  return result;
}

unint64_t sub_22140FB90(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_22140FD48(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v11 = objc_msgSend_cellID(v5, v8, v9, v10);
  if (objc_msgSend_containsIndex_(v7, v12, v11, v13))
  {
    v17 = a1[5];
    v18 = objc_msgSend_cellID(v5, v14, v15, v16);
    objc_msgSend_columnUIDForViewColumnIndex_(v17, v19, WORD2(v18), v20);
    v21 = a1[5];
    v25 = objc_msgSend_cellID(v5, v22, v23, v24);
    objc_msgSend_rowUIDForViewRowIndex_(v21, v26, v25, v27);
    v31 = objc_msgSend_cell(v5, v28, v29, v30);
    v35 = objc_msgSend_formattedValue(v31, v32, v33, v34);

    v45 = 0uLL;
    v46 = 0;
    if (objc_msgSend_length(v35, v36, v37, v38))
    {
      v40 = a1[6];
      if (v40)
      {
        objc_msgSend_wordFragmentsFromString_savePreserveFlags_(v40, v39, v35, 1);
      }

      else
      {
        v43 = 0uLL;
        v44 = 0;
      }

      sub_2210BC2A8(&v45);
      v45 = v43;
      v41 = v44;
      v44 = 0;
      v43 = 0uLL;
      v46 = v41;
      v47 = &v43;
      sub_22107C2C0(&v47);
    }

    TSKMakeUIDStructCoord();
    sub_221407410(v6, &v45, &v43);
    *&v43 = &v45;
    sub_22107C2C0(&v43);
  }

  return 0;
}

void sub_22140FECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  a9 = &a13;
  sub_22107C2C0(&a9);

  _Unwind_Resume(a1);
}

void *sub_22140FF1C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_updateWithIndexingChunks_(*(a1 + 32), a2, a2, a4);
  v6 = *(*(a1 + 40) + 8);
  if (result)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(v6 + 24);
  }

  *(v6 + 24) = v7 & 1;
  return result;
}

uint64_t sub_22140FF68(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v11 = objc_msgSend_cellID(v5, v8, v9, v10);
  if (objc_msgSend_containsIndex_(v7, v12, WORD2(v11), v13))
  {
    v17 = a1[5];
    v18 = objc_msgSend_cellID(v5, v14, v15, v16);
    objc_msgSend_columnUIDForViewColumnIndex_(v17, v19, WORD2(v18), v20);
    v21 = a1[5];
    v25 = objc_msgSend_cellID(v5, v22, v23, v24);
    objc_msgSend_rowUIDForViewRowIndex_(v21, v26, v25, v27);
    v31 = objc_msgSend_cell(v5, v28, v29, v30);
    v35 = objc_msgSend_formattedValue(v31, v32, v33, v34);

    v45 = 0uLL;
    v46 = 0;
    if (objc_msgSend_length(v35, v36, v37, v38))
    {
      v40 = a1[6];
      if (v40)
      {
        objc_msgSend_wordFragmentsFromString_savePreserveFlags_(v40, v39, v35, 1);
      }

      else
      {
        v43 = 0uLL;
        v44 = 0;
      }

      sub_2210BC2A8(&v45);
      v45 = v43;
      v41 = v44;
      v44 = 0;
      v43 = 0uLL;
      v46 = v41;
      v47 = &v43;
      sub_22107C2C0(&v47);
    }

    TSKMakeUIDStructCoord();
    sub_221407410(v6, &v45, &v43);
    *&v43 = &v45;
    sub_22107C2C0(&v43);
  }

  return 0;
}

void sub_2214100EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  a9 = &a13;
  sub_22107C2C0(&a9);

  _Unwind_Resume(a1);
}

void *sub_22141013C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_updateWithIndexingChunks_(*(a1 + 32), a2, a2, a4);
  v6 = *(*(a1 + 40) + 8);
  if (result)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(v6 + 24);
  }

  *(v6 + 24) = v7 & 1;
  return result;
}

void sub_22141043C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  *(v29 - 104) = &a19;
  sub_22107C2C0((v29 - 104));
  _Block_object_dispose(&a22, 8);
  sub_221413710(&a28);
  sub_221413710((v29 - 160));

  _Unwind_Resume(a1);
}

void sub_2214104DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_fragmentEntryForString_(*(a1 + 32), v4, v3, v5);
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 48);
    v9 = *(*(a1 + 40) + 8);
    v11 = *(v6 + 40);
    v12 = &v11;
    v10 = sub_22141379C((v9 + 48), &v11, &unk_2217E1BE8, &v12);
    os_unfair_lock_lock(v7);
    sub_221278B40(v10 + 3, (v7 + 16), v8);
    os_unfair_lock_unlock(v7);
  }
}

void sub_221410838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  sub_22107C860(v30 + 16, a20);
  _Block_object_dispose(&a22, 8);
  sub_2212796F0(v29 + 48, a29);
  _Unwind_Resume(a1);
}

void sub_221410874(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_fragmentEntryForNameFragmentPrecedent_(*(a1 + 32), a2, a2, a4);
  if (v5)
  {
    v6 = v5;
    v7 = *(a1 + 48);
    v8 = *(*(a1 + 40) + 8);
    os_unfair_lock_lock(v5);
    sub_221278B40((v8 + 48), &v6[4]._os_unfair_lock_opaque, v7);

    os_unfair_lock_unlock(v6);
  }
}

uint64_t sub_2214110E8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  *a1 = 0;
  *(a1 + 4) = *a2;
  sub_221278A40((a1 + 16), a4);
  *(a1 + 40) = objc_msgSend_copy(v7, v8, v9, v10);

  return a1;
}

void sub_22141114C(_Unwind_Exception *a1)
{
  sub_2212796F0(v2 + 16, *(v2 + 24));

  _Unwind_Resume(a1);
}

uint64_t sub_221411170(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  *a1 = 0;
  v6 = *a2;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 4) = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = objc_msgSend_copy(v5, v7, v8, v9);

  return a1;
}

void sub_2214111D4(_Unwind_Exception *a1)
{
  sub_2212796F0(v2, *v3);

  _Unwind_Resume(a1);
}

uint64_t sub_2214111F0(uint64_t a1, _OWORD *a2, void *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *a3;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  sub_221407288(a1);
  return a1;
}

uint64_t *sub_221411264(uint64_t a1, void ***a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_2214113E8(v3, *a2, a2[1], a2[1] - *a2);
  *(a1 + 8) = v3 + 3;
  return result;
}

void *sub_2214112B8(char **a1, void ***a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_22107C148();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_221411468(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_2214113E8((24 * v2), *a2, a2[1], a2[1] - *a2);
  v8 = v16 + 24;
  v9 = a1[1] - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_2214114C0(&v14);
  return v8;
}

void sub_2214113D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2214114C0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2214113E8(uint64_t *result, void **a2, void **a3, unint64_t a4)
{
  if (a4)
  {
    sub_2210BC26C(result, a4);
  }

  return result;
}

void sub_221411468(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_22107C238();
}

void **sub_2214114C0(void **a1)
{
  sub_2214114F4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2214114F4(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_22107C2C0(&v5);
  }
}

void sub_221411548(void ****a1)
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
        v4 -= 3;
        v6 = v4;
        sub_22107C2C0(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_2214115BC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2214115BC(a1, *a2);
    sub_2214115BC(a1, a2[1]);

    operator delete(a2);
  }
}

void *sub_221411618(uint64_t **a1, void **a2, uint64_t a3, id **a4)
{
  v4 = *sub_2214116D0(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_2214116D0(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_22141176C(a1, *a3, v4[4]))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_22141176C(a1, v8[4], *a3))
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

LABEL_9:
  *a2 = v8;
  return v5;
}

BOOL sub_22141176C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v7 = a3;
  if (v7)
  {
    if (v4)
    {
      v8 = objc_msgSend_compare_(v4, v5, v7, v6) == -1;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_22141185C(uint64_t a1, void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_22141176C(a1, *(v3 + 32), *a2);
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
  if (v6 == v2 || sub_22141176C(a1, *a2, *(v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t sub_2214118EC(uint64_t **a1, void **a2)
{
  v3 = sub_22141185C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_221411934(a1, v3);
  return 1;
}

uint64_t *sub_221411934(uint64_t **a1, uint64_t a2)
{
  v3 = sub_22112C950(a1, a2);

  operator delete(a2);
  return v3;
}

uint64_t **sub_221411970(void *a1, id *a2, uint64_t a3, id **a4)
{
  if (*a2)
  {
    v6 = objc_msgSend_hash(*a2, a2, a3, a4);
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
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

    if (v13 != v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if ((objc_msgSend_isEqualToString_(v12[2], a2, *a2, a4) & 1) == 0)
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_221411C00(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_22107C800(a2 + 24, *(a2 + 32));
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t **sub_221411C68(void *a1, id *a2, uint64_t a3, uint64_t a4)
{
  if (*a2)
  {
    v6 = objc_msgSend_hash(*a2, a2, a3, a4);
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = i[1];
    if (v13 == v6)
    {
      if (objc_msgSend_isEqualToString_(i[2], a2, *a2, a4))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
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

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

void **sub_221411D78(void **a1)
{
  sub_221411DB4(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_221411DB4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_22107C800(v2 + 24, *(v2 + 4));

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_221411E04(void *a1, unsigned int *a2, uint64_t a3, void **a4)
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

uint64_t **sub_221412054(void *a1, id *a2, uint64_t a3, uint64_t a4)
{
  if (*a2)
  {
    v6 = objc_msgSend_hash(*a2, a2, a3, a4);
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = i[1];
    if (v13 == v6)
    {
      if (objc_msgSend_isEqualToString_(i[2], a2, *a2, a4))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
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

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t **sub_221412164(void *a1, id *a2, uint64_t a3, id **a4)
{
  if (*a2)
  {
    v6 = objc_msgSend_hash(*a2, a2, a3, a4);
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
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

    if (v13 != v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if ((objc_msgSend_isEqualToString_(v12[2], a2, *a2, a4) & 1) == 0)
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_2214123E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2213875C4(va);
  _Unwind_Resume(a1);
}

void sub_2214123FC(void *a1, uint64_t *a2, uint64_t *a3)
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
        objc_storeStrong(v8 + 2, v4[2]);
        v8[3] = v4[3];
        v10 = *v8;
        sub_2214124FC(a1, v8, v11, v12);
        v4 = *v4;
        if (v10)
        {
          v13 = v4 == a3;
        }

        else
        {
          v13 = 1;
        }

        v8 = v10;
      }

      while (!v13);
    }

    sub_2210C8328(a1, v10);
  }

  if (v4 != a3)
  {
    sub_221412990(a1);
  }
}

void sub_2214124D0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_2210C8328(v1, v2);
  __cxa_rethrow();
}

char *sub_2214124FC(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = (a2 + 16);
  v6 = *(a2 + 2);
  if (v6)
  {
    v8 = objc_msgSend_hash(v6, a2, a3, a4);
  }

  else
  {
    v8 = 0;
  }

  *(a2 + 1) = v8;
  v9 = sub_22141256C(a1, v8, v7, a4);
  sub_2210BD408(a1, a2, v9);
  return a2;
}

void *sub_22141256C(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = (*(a1 + 24) + 1);
  v9 = *(a1 + 32);
  if (!*&v7 || (v9 * v7) < v8)
  {
    v10 = 1;
    if (*&v7 >= 3uLL)
    {
      v10 = (*&v7 & (*&v7 - 1)) != 0;
    }

    v11 = v10 | (2 * *&v7);
    v12 = vcvtps_u32_f32(v8 / v9);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_2214126DC(a1, v13);
    v7 = *(a1 + 8);
  }

  v14 = vcnt_s8(v7);
  v14.i16[0] = vaddlv_u8(v14);
  v15 = v14.u32[0];
  if (v14.u32[0] > 1uLL)
  {
    v16 = a2;
    if (*&v7 <= a2)
    {
      v16 = a2 % *&v7;
    }
  }

  else
  {
    v16 = (*&v7 - 1) & a2;
  }

  v17 = *(*a1 + 8 * v16);
  if (v17)
  {
    v18 = *v17;
    if (*v17)
    {
      v19 = 0;
      do
      {
        v20 = v18[1];
        if (v15 > 1)
        {
          v21 = v18[1];
          if (v20 >= *&v7)
          {
            v21 = v20 % *&v7;
          }
        }

        else
        {
          v21 = v20 & (*&v7 - 1);
        }

        if (v21 != v16)
        {
          break;
        }

        v22 = v20 == a2 ? objc_msgSend_isEqualToString_(v18[2], a2, *a3, a4) : 0;
        if ((v19 & (v22 != (v19 & 1))) != 0)
        {
          break;
        }

        v19 |= v22 != (v19 & 1);
        v17 = *v17;
        v18 = *v17;
      }

      while (*v17);
    }
  }

  return v17;
}

void sub_2214126DC(uint64_t result, size_t __n)
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

      sub_2214127CC(result, prime);
    }
  }
}

void sub_2214127CC(uint64_t a1, unint64_t a2)
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

void sub_2214129E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2213875C4(va);
  _Unwind_Resume(a1);
}

void sub_221412A74(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_2210C8328(a1, *(a1 + 16));
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

void *sub_221412AD0(void *a1, void *a2, uint64_t a3, _OWORD **a4)
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

void *sub_221412D0C(void *a1, unsigned int *a2, uint64_t a3, void **a4)
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

uint64_t sub_221412F60(uint64_t a1)
{
  sub_221412F9C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_221412F9C(uint64_t a1, char **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_22107C860((v2 + 10), v2[11]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_221412FE4(void *a1, void *a2, uint64_t a3, __int128 **a4)
{
  v4 = a2[1] ^ *a2 ^ a2[2] ^ a2[3];
  v5 = v4 ^ a2[4] ^ a2[5];
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4 ^ a2[4] ^ a2[5];
    if (v5 >= *&v6)
    {
      v10 = v5 % *&v6;
    }
  }

  else
  {
    v10 = (*&v6 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v5)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v6)
      {
        v13 %= *&v6;
      }
    }

    else
    {
      v13 &= *&v6 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_221413280(v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_2214132EC(uint64_t a1, char **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_22107C860((a2 + 10), a2[11]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_2214133B8(void *a1, uint64_t *a2, uint64_t *a3)
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
        *(v8 + 1) = *(a2 + 1);
        v8[4] = a2[4];
        v9 = *v8;
        v10 = v8[3] ^ v8[2];
        v8[1] = v10;
        v11 = sub_2211F2A14(a1, v10, v8 + 2);
        sub_2210BD408(a1, v8, v11);
        a2 = *a2;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_2214134D4(a1, (a2 + 2));
  }
}

void sub_2214134A0(void *a1)
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

void *sub_22141356C(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = a2[1] ^ *a2 ^ a2[2] ^ a2[3] ^ a2[4] ^ a2[5];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = a2[1] ^ *a2 ^ a2[2] ^ a2[3] ^ a2[4] ^ a2[5];
    if (v4 >= *&v2)
    {
      v7 = v4 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  v9 = *v8;
  if (*v8)
  {
    do
    {
      v10 = v9[1];
      if (v10 == v4)
      {
        if (sub_221413280(v9 + 2, a2))
        {
          return v9;
        }
      }

      else
      {
        if (v6 > 1)
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

        if (v10 != v7)
        {
          return 0;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

  return v9;
}

uint64_t sub_221413678(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_221087680(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_22107C860((v3 + 10), v3[11]);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t *sub_2214136D8(void *a1, unsigned int *a2)
{
  result = sub_221087F14(a1, a2);
  if (result)
  {
    sub_2210CDD3C(a1, result);
    return 1;
  }

  return result;
}

void **sub_221413710(void **a1)
{
  sub_22141374C(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_22141374C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_2212796F0(v2 + 24, *(v2 + 4));

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t **sub_22141379C(void *a1, id *a2, uint64_t a3, uint64_t **a4)
{
  if (*a2)
  {
    v6 = objc_msgSend_hash(*a2, a2, a3, a4);
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
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

    if (v13 != v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if ((objc_msgSend_isEqualToString_(v12[2], a2, *a2, a4) & 1) == 0)
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_221413A2C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_2212796F0(a2 + 24, *(a2 + 32));
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_221413B18(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_221414CB8(uint64_t a1, const char *a2, _OWORD *a3)
{
  v3 = *(a1 + 32);
  v4 = a3[1];
  v6[0] = *a3;
  v6[1] = v4;
  return objc_msgSend_addCellDiff_andCellUID_(v3, a2, a2, v6);
}

uint64_t sub_221415044(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 32) + 96);
  if (*(a1 + 56))
  {
    a3 = 0;
  }

  v6 = objc_msgSend_objectAtIndex_(v5, a2, a3, a4);
  v10 = objc_msgSend_copy(v6, v7, v8, v9);

  v13 = (*(*(a1 + 48) + 16))();
  if (v13)
  {
    objc_msgSend_addObject_(*(a1 + 40), v11, v10, v12);
  }

  return v13;
}

uint64_t sub_221415104(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 40) + 96), a2, a3, a4);
  objc_msgSend_addObject_(v4, v6, v5, v7);

  return 1;
}

void sub_22141562C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v18 = v14;

  sub_2210BDEC0(v15 + 48);
  sub_2210BDEC0(v16 + 32);
  sub_2210BDEC0(v17 - 120);

  _Unwind_Resume(a1);
}

BOOL sub_2214156C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return sub_221119F90((a1 + 32), v4) == 0;
}

void sub_2214156F4(void *a1, uint64_t a2, uint64_t a3)
{
  if (sub_221119F90(a1 + 6, (a2 + 16)))
  {
    v8 = a1[4];
    v9 = objc_msgSend_objectAtIndexedSubscript_(*(a1[5] + 96), v6, a3, v7);
    v10 = *(a2 + 16);
    v12[0] = *a2;
    v12[1] = v10;
    objc_msgSend_addCellDiff_andCellUID_(v8, v11, v9, v12);
  }
}

BOOL sub_22141579C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return sub_221119F90((a1 + 32), v4) == 0;
}

void sub_2214157D0(void *a1, uint64_t a2, uint64_t a3)
{
  if (sub_221119F90(a1 + 6, a2))
  {
    v8 = a1[4];
    v9 = objc_msgSend_objectAtIndexedSubscript_(*(a1[5] + 96), v6, a3, v7);
    v10 = *(a2 + 16);
    v12[0] = *a2;
    v12[1] = v10;
    objc_msgSend_addCellDiff_andCellUID_(v8, v11, v9, v12);
  }
}

void sub_22141597C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v7 = *(a1 + 40);
  v8 = *v7;
  v9 = *(v7 + 8);
  if (v8 != v9)
  {
    while (*v8 != *(a3 + 16) || v8[1] != *(a3 + 24))
    {
      v8 += 2;
      if (v8 == v9)
      {
        goto LABEL_7;
      }
    }
  }

  if (v8 == v9)
  {
LABEL_7:
    v10 = *(a1 + 32);
    v11 = *(a3 + 16);
    v12[0] = *a3;
    v12[1] = v11;
    objc_msgSend_addCellDiff_andCellUID_(v10, v5, v6, v12);
  }
}

void sub_221415B44(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v7 = *(a1 + 40);
  v8 = *v7;
  v9 = *(v7 + 8);
  if (v8 != v9)
  {
    while (*v8 != *a3 || v8[1] != *(a3 + 8))
    {
      v8 += 2;
      if (v8 == v9)
      {
        goto LABEL_7;
      }
    }
  }

  if (v8 == v9)
  {
LABEL_7:
    v10 = *(a1 + 32);
    v11 = *(a3 + 16);
    v12[0] = *a3;
    v12[1] = v11;
    objc_msgSend_addCellDiff_andCellUID_(v10, v5, v6, v12);
  }
}

void sub_221415DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20)
{
  v23 = v21;

  _Unwind_Resume(a1);
}

uint64_t sub_221415E38(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  return (*(v4 + 16))(v4, v5, v8, a3, a4);
}

void sub_221415E80(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 40);
  v8 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 96), a2, a3, a4);
  v9 = *(a2 + 1);
  v10[0] = *a2;
  v10[1] = v9;
  (*(v7 + 16))(v7, v8, v10, a3, a4);
}

void *sub_2214168E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  *(*(a1 + 32) + 89) = objc_msgSend_p_scanCellDiffArrayForCellBorderChanges_(*(a1 + 32), a2, *(*(a1 + 32) + 96), a4);
  result = objc_msgSend_p_scanCellDiffArrayForSuppressCustomFormatHandlingProperty_(*(a1 + 32), v5, *(*(a1 + 32) + 96), v6);
  *(*(a1 + 32) + 90) = result;
  return result;
}

char *sub_221416F0C(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      sub_22107C148();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      sub_2210874C4(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7;
      v7 += 8;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
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

    return (8 * v16);
  }

  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[-8 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 8;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v22);
    }

    v30 = 8 * a5;
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
    v18 += 8;
    *v20 = v21;
    v20 += 8;
    v19 += 8;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[8 * a5];
    v27 = &v19[-8 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 8;
      *v28 = v29;
      v28 += 8;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[8 * a5], __dst, v19 - v26);
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

void sub_221417278(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2214179B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2210BDEC0(&a9);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  sub_2210BDEC0(va);

  _Unwind_Resume(a1);
}

void sub_221417C28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_221417E5C(void *a1, uint64_t *a2, uint64_t *a3)
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
        *(v8 + 1) = *(a2 + 1);
        *(v8 + 2) = *(a2 + 2);
        v9 = *v8;
        v10 = v8[3] ^ v8[2];
        v8[1] = v10;
        v11 = sub_2211F2A14(a1, v10, v8 + 2);
        sub_2210BD408(a1, v8, v11);
        a2 = *a2;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_221417F78(a1, a2 + 1);
  }
}

void sub_221417F44(void *a1)
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

uint64_t sub_221418008(uint64_t **a1, unint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *sub_22112C810(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void sub_2214180A4(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v3 = &unk_2834A7E98;
  *(v3 + 136) = 0;
  *(v3 + 96) = 1;
}

uint64_t sub_2214180E4(uint64_t a1, uint64_t a2)
{
  v4 = TSCEASTElement::tag(a2, a1);
  *(a1 + 136) = TSCEASTElement::tagHasUidTractList(v4);
  return a2;
}

void sub_22141815C(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, a2);

  JUMPOUT(0x223DA1450);
}

void sub_2214190AC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t *TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(uint64_t *a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (objc_msgSend_count(v3, v4, v5, v6))
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = v3;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v33, v42, 16);
    if (v12)
    {
      v13 = *v34;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v7);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          if (objc_msgSend_length(v15, v9, v10, v11, v33))
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16;
          v19 = a1[1];
          v18 = a1[2];
          if (v19 >= v18)
          {
            v21 = (v19 - *a1) >> 3;
            if ((v21 + 1) >> 61)
            {
              sub_22107C148();
            }

            v22 = v18 - *a1;
            v23 = v22 >> 2;
            if (v22 >> 2 <= (v21 + 1))
            {
              v23 = v21 + 1;
            }

            if (v22 >= 0x7FFFFFFFFFFFFFF8)
            {
              v24 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v24 = v23;
            }

            v41 = a1;
            if (v24)
            {
              sub_22107C1F0(a1, v24);
            }

            v37 = 0;
            v38 = (8 * v21);
            v40 = 0;
            *v38 = v17;
            v39 = 8 * v21 + 8;
            sub_22107C098(a1, &v37);
            v20 = a1[1];
            sub_22107C26C(&v37);
          }

          else
          {
            *v19 = v17;
            v20 = (v19 + 1);
            a1[1] = v20;
          }

          a1[1] = v20;
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v33, v42, 16);
      }

      while (v12);
    }

    v26 = *a1;
    for (j = a1[1]; v26 != j; j = a1[1])
    {
      v27 = *(j - 8);
      if (objc_msgSend_length(v27, v28, v29, v30))
      {

        break;
      }

      v31 = a1[1];

      a1[1] = v31 - 8;
      v26 = *a1;
    }
  }

  return a1;
}

void sub_22141A8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  sub_22107C2C0(va);
  _Unwind_Resume(a1);
}

void TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(TSCEASTCompactWhitespace *this, NSString *a2, NSString *a3, NSString *a4, NSString *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v33 = v12;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  v16 = objc_msgSend_length(v9, v13, v14, v15);
  v20 = objc_msgSend_length(v10, v17, v18, v19);
  v24 = objc_msgSend_length(v11, v21, v22, v23);
  v28 = objc_msgSend_length(v12, v25, v26, v27);
  v29 = v28;
  if (v16 || v20 || v24 || v28)
  {
    if (v16)
    {
      v30 = v9;
    }

    else
    {
      v30 = 0;
    }

    location = v30;
    sub_2210C4258(this, &location);
    if (v20 || v24 || v29)
    {
      v31 = v20 ? v10 : 0;
      objc_storeStrong(&location, v31);
      sub_2210C4258(this, &location);
      if (v24 | v29)
      {
        if (v24)
        {
          v32 = v11;
        }

        else
        {
          v32 = 0;
        }

        objc_storeStrong(&location, v32);
        sub_2210C4258(this, &location);
        if (v29)
        {
          sub_2210C4258(this, &v33);
        }
      }
    }

    v12 = v33;
  }
}

void sub_22141AAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void **a10)
{
  sub_22107C2C0(&a10);

  _Unwind_Resume(a1);
}

uint64_t TSCEASTCompactWhitespace::operator==(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 - *a1 == a2[1] - *a2)
  {
    if (v3 == v2)
    {
      return 1;
    }

    v5 = 0;
    while (1)
    {
      v6 = *(v3 + v5);
      v9 = *(*a2 + v5);
      if (v6 != v9 && (objc_msgSend_isEqualToString_(v6, v7, v9, v8) & 1) == 0)
      {
        break;
      }

      v5 += 8;
      if (v3 + v5 == v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

id TSCEASTCompactWhitespace::whitespaceStringForIndex(TSCEASTCompactWhitespace *this, unint64_t a2)
{
  if (a2 >= (*(this + 1) - *this) >> 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(*this + 8 * a2);
  }

  return v3;
}

void TSCEASTCompactWhitespace::setStringAtIndex(TSCEASTCompactWhitespace *this, NSString *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *this;
  if (a3 + 1 > ((*(this + 1) - *this) >> 3))
  {
    v8 = 0;
    sub_22141AC9C(this, a3 + 1, &v8);

    v6 = *this;
  }

  v7 = *(v6 + 8 * a3);
  *(v6 + 8 * a3) = v5;
}

void sub_22141AC9C(void *a1, unint64_t a2, id *a3)
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

    sub_22141AE90(a1, v6, a3);
  }
}

id TSCEASTCompactWhitespace::encodeIntoCombinedString(id **this)
{
  if (this[1] == *this)
  {
    v2 = 0;
  }

  else
  {
    v2 = objc_opt_new();
    v3 = *this;
    v4 = this[1];
    if (*this != v4)
    {
      do
      {
        v7 = *v3;
        if (v7)
        {
          objc_msgSend_appendString_(v2, v5, v7, v6);
        }

        objc_msgSend_appendString_(v2, v5, @"/", v6);

        ++v3;
      }

      while (v3 != v4);
    }
  }

  return v2;
}

void TSCEASTCompactWhitespace::whitespaceFromCombinedString(TSCEASTCompactWhitespace *this@<X0>, uint64_t *a2@<X8>)
{
  v9 = this;
  if (objc_msgSend_length(v9, v3, v4, v5))
  {
    v8 = objc_msgSend_componentsSeparatedByString_(v9, v6, @"/", v7);
    TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(a2, v8);
  }

  else
  {
    TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(a2, 0);
  }
}

void *sub_22141AE90(void *result, unint64_t a2, id *a3)
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

void sub_22141AFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22141B784(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  if (objc_msgSend_isSingleQuote_(v6, v7, v4, v8))
  {
    isSingleQuote = objc_msgSend_isSingleQuote_(v6, v9, v5, v10);
  }

  else
  {
    isSingleQuote = 0;
  }

  return isSingleQuote;
}

BOOL sub_22141B810(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (objc_msgSend_length(v2, v3, v4, v5) == 1)
  {
    v8 = objc_msgSend_characterAtIndex_(v2, v6, 0, v7);
  }

  else
  {
    v8 = 0;
  }

  v10 = v8 == 36 || v8 == 65284;

  return v10;
}

BOOL sub_22141B890(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (objc_msgSend_length(v2, v3, v4, v5) == 1)
  {
    v8 = objc_msgSend_characterAtIndex_(v2, v6, 0, v7);
  }

  else
  {
    v8 = 0;
  }

  v10 = v8 == 58 || v8 == 65306;

  return v10;
}

void sub_22141BA2C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_tsce_internationalWhitespaceCharacterSet(MEMORY[0x277CCA900], a2, a3, a4);
  v8 = objc_msgSend_mutableCopy(v4, v5, v6, v7);

  objc_msgSend_addCharactersInRange_(v8, v9, 58, 1);
  objc_msgSend_addCharactersInRange_(v8, v10, 65306, 1);
  objc_msgSend_addCharactersInRange_(v8, v11, 36, 1);
  objc_msgSend_addCharactersInRange_(v8, v12, 65284, 1);
  objc_msgSend_addCharactersInRange_(v8, v13, 39, 1);
  objc_msgSend_addCharactersInRange_(v8, v14, 65287, 1);
  objc_msgSend_addCharactersInRange_(v8, v15, 8216, 1);
  objc_msgSend_addCharactersInRange_(v8, v16, 8217, 1);
  objc_msgSend_addCharactersInRange_(v8, v17, 40, 1);
  objc_msgSend_addCharactersInRange_(v8, v18, 41, 1);
  objc_msgSend_addCharactersInRange_(v8, v19, 65288, 1);
  objc_msgSend_addCharactersInRange_(v8, v20, 65289, 1);
  v21 = qword_27CFB5568;
  qword_27CFB5568 = v8;
}

void sub_22141C85C(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  _Block_object_dispose(va, 8);
  *(v25 - 136) = a11;
  sub_22107C2C0((v25 - 136));

  _Unwind_Resume(a1);
}

__n128 sub_22141C9A0(__n128 *a1, __n128 *a2)
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

void sub_22141C9F0(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_2210C4258((*(*(a1 + 32) + 8) + 48), &v3);
}

void sub_22141CE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22141CE90(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend__stringForInternalCellRef_(TSCEUUidReferenceMap, a2, a2, a4);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v7 = @"%@";
  }

  else
  {
    v7 = @", %@";
  }

  v8 = v5;
  objc_msgSend_appendFormat_(*(a1 + 32), v5, v7, v6, v5);
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_22141D160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2210BDEC0(va);
  _Unwind_Resume(a1);
}

void sub_22141D24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_221122744(va);
  _Unwind_Resume(a1);
}

TSCECellCoordSet *sub_22141D66C(void *a1, TSUCellCoord *a2)
{
  v8 = *a2;
  row = a2[1].row;
  v3 = a1[6];
  v4 = row;
  if (*(v3 + 144))
  {
    v4 = sub_2212602C8(v3, row);
  }

  LOWORD(row) = v4;
  v5 = a1[4];
  v10 = &v8;
  v6 = sub_22141DEC4((v5 + 48), &v8, &unk_2217E1C18, &v10);
  sub_2210C2B00(v6 + 4, a1 + 7, a1 + 7);
  return sub_2212DFCE8((*(a1[5] + 8) + 48), &v8);
}

void *sub_22141D8A0(void *a1, uint64_t *a2)
{
  v3 = a1[4];
  v6 = a2;
  v4 = sub_22141DEC4((v3 + 48), a2, &unk_2217E1C18, &v6);
  sub_2211F2EF4(v4 + 4, a1 + 5);
  return sub_2210C2B00(v4 + 4, a1 + 7, a1 + 7);
}

int *sub_22141DAF0(uint64_t a1, uint64_t a2)
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
    v7 = *&v4[2 * v5 + 2];
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
  v7 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellReferenceArchive>(*(v3 + 24));
  v8 = *(v3 + 32);
  v9 = *(v3 + 40) + 8 * v8;
  *(v3 + 32) = v8 + 1;
  *(v9 + 8) = v7;
LABEL_8:

  return sub_2215C38E0(a2, v7);
}

void *sub_22141DC04(void *a1, void *a2, uint64_t a3, _OWORD **a4)
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

void sub_22141DE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22141DE78(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22141DE78(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_221122744(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t **sub_22141DEC4(void *a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
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