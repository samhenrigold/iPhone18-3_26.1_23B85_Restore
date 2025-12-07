@interface TSCEFormulaObject
+ (id)formulaResultForFormattedValue:(id)value context:(id)context suppressCycleCheck:(BOOL)check formatAsPercent:(BOOL)percent;
+ (id)formulaResultForFormattedValueWithKnownCycleState:(id)state context:(id)context isInACycle:(BOOL)cycle outErrorIsDueToCycle:(BOOL *)toCycle formatAsPercent:(BOOL)percent;
+ (id)parseFormula:(id)formula calcEngine:(id)engine containingCellRef:(const TSCECellRef *)ref parseOptionsContext:(id)context;
+ (id)parseFormula:(id)formula calcEngine:(id)engine hostTableInfo:(id)info containingCellRef:(const TSCECellRef *)ref parseOptionsContext:(id)context;
- (BOOL)containsColons;
- (BOOL)containsInvalidRef;
- (BOOL)hasBadRefWithUidInfo;
- (BOOL)hasHostCell;
- (BOOL)hasUidTracts;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFormula:(id)formula;
- (BOOL)isEquivalentToFormula:(id)formula context:(unint64_t)context thisContainingCell:(TSCECellRef *)cell thatContainingCell:(TSCECellRef *)containingCell;
- (BOOL)isSpillFormula;
- (BOOL)isSpillFormulaForOriginCell:(const TSUCellCoord *)cell;
- (BOOL)usesFunctionsWithDateArgs;
- (TSCEFormulaObject)initWithArchive:(const void *)archive isPreUFF:(BOOL)f;
- (TSCEFormulaObject)initWithCreator:(TSCEFormulaCreator)creator;
- (TSCEFormulaObject)initWithCreator:(TSCEFormulaCreator)creator argInfo:(TSCEASTNodeArgInfo *)info translationFlags:(TSCEFormulaTranslationFlags)flags;
- (TSCEFormulaObject)initWithCreator:(TSCEFormulaCreator)creator translationFlags:(TSCEFormulaTranslationFlags)flags;
- (TSCEFormulaObject)initWithNodeArray:(const TSCEASTNodeArray *)array translationFlags:(TSCEFormulaTranslationFlags)flags;
- (TSCEFormulaObject)initWithNodeArray:(const TSCEASTNodeArray *)array translationFlags:(TSCEFormulaTranslationFlags)flags hostTableUID:(const TSKUIDStruct *)d hostColumnUID:(const TSKUIDStruct *)iD hostRowUID:(const TSKUIDStruct *)uID;
- (TSUCellCoord)spillOrigin;
- (id)copyByAddingTranslationFlags:(unsigned __int8)flags;
- (id)copyByClearingHostCell;
- (id)copyByClearingUids:(id)uids containingTableUID:(const TSKUIDStruct *)d;
- (id)copyByConvertingColonToColonTract:(TSCEFormulaRewriteContext *)tract;
- (id)copyByConvertingColonTractToColon:(TSCEFormulaRewriteContext *)colon breakUpIntoRefs:(BOOL)refs;
- (id)copyByForceSettingOwnerUIDs:(const TSKUIDStruct *)ds calcEngine:(id)engine;
- (id)copyByFreezingRefs:(id)refs containingCell:(const TSCEFormulaContainingCell *)cell;
- (id)copyByMakingAllCategoryRefsIndirect:(TSCEFormulaRewriteContext *)indirect;
- (id)copyByOffsettingRelativeReferences:(TSUColumnRowOffset)references;
- (id)copyByOffsettingRelativeReferences:(id)references oldContainingCell:(const TSCECellRef *)cell newContainingTable:(const TSKUIDStruct *)table offset:(TSUColumnRowOffset)offset;
- (id)copyByRemappingHostCellAgnosticOwnerUIDs:(const void *)ds rewriteContext:(TSCEFormulaRewriteContext *)context outError:(BOOL *)error;
- (id)copyByRemappingOwnerUIDs:(const void *)ds rewriteContext:(TSCEFormulaRewriteContext *)context outBadRefFound:(BOOL *)found;
- (id)copyByRemappingUids:(const void *)uids rowMap:(const void *)map ownerMap:(const void *)ownerMap clearIfMissing:(BOOL)missing;
- (id)copyByRemovingNumberToDateCoercion:(id)coercion;
- (id)copyByRemovingTranslationFlags:(unsigned __int8)flags;
- (id)copyByRepairingBadReferences:(TSCEFormulaRewriteContext *)references clearUidHistory:(BOOL)history;
- (id)copyByRepairingMissingThunks:(TSCEFormulaRewriteContext *)thunks;
- (id)copyByRewritingForExcelImport:(id)import outFormulaReplacedForExcelCompatWarning:(BOOL *)warning functionNameReplacedForExcelCompat:(id *)compat formulaFormatFromCell:(unsigned int)cell;
- (id)copyByRewritingForSageExport:(id)export targetDocumentSupportsCrossTableReferences:(BOOL)references outshouldBakeWholeFormula:(BOOL *)formula outFeaturesUsed:(char *)used;
- (id)copyByRewritingForSageImport:(id)import containingCell:(const TSCECellRef *)cell;
- (id)copyByRewritingForTranspose:(id)transpose calcEngine:(id)engine containingCell:(const TSCEFormulaContainingCell *)cell outTransposeWarning:(BOOL *)warning;
- (id)copyByRewritingGroupUid:(const TSKUIDStruct *)uid groupByUID:(const TSKUIDStruct *)d;
- (id)copyByRewritingNumberToDurationForSageImport:(const TSCECellRef *)import durationUnitLargest:(unsigned __int8)largest;
- (id)copyByRewritingReferencesToGeometricForm:(TSCEFormulaRewriteContext *)form;
- (id)copyByRewritingReferencesToUidForm:(TSCEFormulaRewriteContext *)form;
- (id)copyByRewritingWithSpec:(id)spec calcEngine:(id)engine containingCell:(const TSCEFormulaContainingCell *)cell;
- (id)copyBySettingHostTableUID:(const TSKUIDStruct *)d hostColumnUID:(const TSKUIDStruct *)iD hostRowUID:(const TSKUIDStruct *)uID;
- (id)copyBySettingTranslationFlags:(TSCEFormulaTranslationFlags)flags;
- (id)copyByThawingRefs:(id)refs containingCell:(const TSCEFormulaContainingCell *)cell;
- (id)copyByUpdatingLinkedTable:(const TSKUIDStruct *)table outfoundLinkedRef:(BOOL *)ref;
- (id)copyByUpgradingToArrayMode:(TSCEFormulaRewriteContext *)mode isExcelImport:(BOOL)import outArrayModeWarning:(BOOL *)warning;
- (id)evaluateForPartialResultsWithContext:(id)context;
- (id)evaluateWithContext:(id)context;
- (id)evaluateWithContext:(id)context isInACycle:(BOOL)cycle outErrorIsDueToCycle:(BOOL *)toCycle;
- (id)evaluateWithContextGridResult:(id)result;
- (id)formulaNodeTreeForExcelExport:(id)export;
- (id)hostedDescriptionAtCell:(const TSCECellRef *)cell calcEngine:(id)engine;
- (id)hostedDescriptionAtCell:(const TSCECellRef *)cell calcEngine:(id)engine hideUids:(BOOL)uids;
- (id)sageFormulaStringForContainingCell:(const TSCECellRef *)cell outHasSageUnsupportedFunctions:(BOOL *)functions;
- (unint64_t)hash;
- (unsigned)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)appendExternalTableUIDs:(void *)ds groupByUIDs:(void *)iDs;
- (void)dealloc;
- (void)getPrecedents:(void *)precedents calcEngine:(id)engine hostCell:(const TSCECellRef *)cell allowImplicitIntersection:(BOOL)intersection returnUidReferences:(BOOL)references;
@end

@implementation TSCEFormulaObject

- (void)dealloc
{
  TSCEASTNodeArray::freeNodeArray(self->_astNodeArray, a2);
  v3.receiver = self;
  v3.super_class = TSCEFormulaObject;
  [(TSCEFormulaObject *)&v3 dealloc];
}

- (TSCEFormulaObject)initWithNodeArray:(const TSCEASTNodeArray *)array translationFlags:(TSCEFormulaTranslationFlags)flags hostTableUID:(const TSKUIDStruct *)d hostColumnUID:(const TSKUIDStruct *)iD hostRowUID:(const TSKUIDStruct *)uID
{
  v10 = objc_msgSend_initWithNodeArray_translationFlags_(self, a2, array, flags._flags);
  v13 = v10;
  if (v10)
  {
    if ((*(v10 + 16) & 0x20) == 0)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCEFormulaObject initWithNodeArray:translationFlags:hostTableUID:hostColumnUID:hostRowUID:]", v12);
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaObject.mm", v17);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 185, 0, "Can only set hostCellUID on uid-form formula");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
    }

    v13->_hostTableUID = *d;
    v13->_hostColumnUID = *iD;
    v13->_hostRowUID = *uID;
  }

  return v13;
}

- (TSCEFormulaObject)initWithNodeArray:(const TSCEASTNodeArray *)array translationFlags:(TSCEFormulaTranslationFlags)flags
{
  v9.receiver = self;
  v9.super_class = TSCEFormulaObject;
  v7 = [(TSCEFormulaObject *)&v9 init];
  if (v7)
  {
    v7->_astNodeArray = TSCEASTNodeArray::copyNodeArray(array, v6);
    v7->_translationFlags = flags;
    v7->_hostTableUID = 0u;
    v7->_hostColumnUID = 0u;
    v7->_hostRowUID = 0u;
  }

  return v7;
}

- (TSCEFormulaObject)initWithCreator:(TSCEFormulaCreator)creator argInfo:(TSCEASTNodeArgInfo *)info translationFlags:(TSCEFormulaTranslationFlags)flags
{
  v8.receiver = self;
  v8.super_class = TSCEFormulaObject;
  v6 = [(TSCEFormulaObject *)&v8 init];
  if (v6)
  {
    v6->_translationFlags = flags;
    v6->_hostTableUID = 0u;
    v6->_hostColumnUID = 0u;
    v6->_hostRowUID = 0u;
    __C(2uLL);
  }

  return 0;
}

- (TSCEFormulaObject)initWithCreator:(TSCEFormulaCreator)creator translationFlags:(TSCEFormulaTranslationFlags)flags
{
  TSCEASTNodeArgInfo::TSCEASTNodeArgInfo(&v11);
  TSCEFormulaCreator::TSCEFormulaCreator(&v10, creator.var0);
  v8 = objc_msgSend_initWithCreator_argInfo_translationFlags_(self, v7, &v10, &v11, flags._flags);

  return v8;
}

- (TSCEFormulaObject)initWithCreator:(TSCEFormulaCreator)creator
{
  TSCEASTNodeArgInfo::TSCEASTNodeArgInfo(&v9);
  TSCEFormulaCreator::TSCEFormulaCreator(&v8, creator.var0);
  v6 = objc_msgSend_initWithCreator_argInfo_translationFlags_(self, v5, &v8, &v9, 0);

  return v6;
}

- (TSCEFormulaObject)initWithArchive:(const void *)archive isPreUFF:(BOOL)f
{
  fCopy = f;
  v22.receiver = self;
  v22.super_class = TSCEFormulaObject;
  v6 = [(TSCEFormulaObject *)&v22 init];
  v7 = v6;
  if (v6)
  {
    v6->_translationFlags._flags = 0;
    v6->_hostTableUID = 0u;
    v6->_hostColumnUID = 0u;
    v6->_hostRowUID = 0u;
    v21 = 0;
    v20 = 0;
    v8 = *(archive + 4);
    if ((~v8 & 0x60) == 0)
    {
      v20 = (*(archive + 73) << 48) | (*(archive + 72) << 56) | (*(archive + 32) << 32) | *(archive + 17);
    }

    if (*(archive + 3))
    {
      v9 = *(archive + 3);
    }

    else
    {
      v9 = &TSCE::_ASTNodeArrayArchive_default_instance_;
    }

    if (fCopy)
    {
      v6->_translationFlags._flags = 4;
    }

    else if ((v8 & 2) != 0)
    {
      TSCE::FormulaTranslationFlagsArchive::FormulaTranslationFlagsArchive(&v19, *(archive + 4));
      if (LOBYTE(v19.var2.var0.var0._tableUID._lower))
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
      }

      if (BYTE1(v19.var2.var0.var0._tableUID._lower))
      {
        v11 = 4;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11 | v10;
      if (BYTE2(v19.var2.var0.var0._tableUID._lower))
      {
        v13 = 32;
      }

      else
      {
        v13 = 0;
      }

      v14 = v12 | v13;
      if (BYTE3(v19.var2.var0.var0._tableUID._lower))
      {
        v15 = 0x80;
      }

      else
      {
        v15 = 0;
      }

      v16 = v14 | v15;
      if (BYTE4(v19.var2.var0.var0._tableUID._lower))
      {
        v17 = 8;
      }

      else
      {
        v17 = 0;
      }

      v7->_translationFlags._flags = v16 | v17 | v7->_translationFlags._flags & 0x51;
      TSCE::FormulaTranslationFlagsArchive::~FormulaTranslationFlagsArchive(&v19);
    }

    sub_2215C8740(&v20, v9);
  }

  return 0;
}

- (BOOL)hasHostCell
{
  if (!self->_hostColumnUID._lower && !self->_hostColumnUID._upper)
  {
    return 0;
  }

  if (self->_hostRowUID._lower)
  {
    return 1;
  }

  return self->_hostRowUID._upper != 0;
}

- (BOOL)containsColons
{
  astNodeArray = self->_astNodeArray;
  if (astNodeArray)
  {
    if (TSCEASTNodeArray::containsTag(astNodeArray, 28))
    {
      LOBYTE(astNodeArray) = 1;
    }

    else
    {
      v4 = self->_astNodeArray;

      LOBYTE(astNodeArray) = TSCEASTNodeArray::containsTag(v4, 45);
    }
  }

  return astNodeArray;
}

- (BOOL)containsInvalidRef
{
  astNodeArray = self->_astNodeArray;
  if (astNodeArray)
  {
    LOBYTE(astNodeArray) = TSCEASTNodeArray::containsTag(astNodeArray, 29);
  }

  return astNodeArray;
}

- (BOOL)hasBadRefWithUidInfo
{
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v11);
  TSCEASTStreamIterator::TSCEASTStreamIterator(v8, self->_astNodeArray, &v11);
  v8[0] = &unk_2834A4F90;
  v10 = 0;
  v9 = 1;
  TSCEASTStreamIterator::rewrite(v8, v3, v4, v5);
  LOBYTE(self) = v10;
  TSCEASTStreamIterator::~TSCEASTStreamIterator(v8, v6);
  return self;
}

- (void)appendExternalTableUIDs:(void *)ds groupByUIDs:(void *)iDs
{
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v16);
  v7 = sub_22130ABA8(v11, self->_astNodeArray, &v16);
  (*(v11[0] + 48))(v11, v7);
  for (i = v13; i; i = *i)
  {
    sub_2210C2B00(ds, i + 2, i + 1);
  }

  for (j = v15; j; j = *j)
  {
    sub_2210C2B00(iDs, j + 2, j + 1);
  }

  v11[0] = &unk_2834A49B0;
  sub_2210BDEC0(&v14);
  sub_2210BDEC0(&v12);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(v11, v10);
}

- (BOOL)usesFunctionsWithDateArgs
{
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v7);
  sub_2214AB81C(v5, self->_astNodeArray, &v7);
  (*(v5[0] + 48))(v5);
  LOBYTE(self) = v6;
  TSCEASTStreamIterator::~TSCEASTStreamIterator(v5, v3);
  return self;
}

- (BOOL)hasUidTracts
{
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v7);
  sub_2214180A4(v5, self->_astNodeArray, &v7);
  (*(v5[0] + 48))(v5);
  LOBYTE(self) = v6;
  TSCEASTStreamIterator::~TSCEASTStreamIterator(v5, v3);
  return self;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    result = self->_astNodeArray;
    if (result)
    {
      result = TSCEASTNodeArray::hash(result) ^ (self->_translationFlags._flags >> 1) & 7;
      self->_hash = result;
    }
  }

  return result;
}

+ (id)formulaResultForFormattedValueWithKnownCycleState:(id)state context:(id)context isInACycle:(BOOL)cycle outErrorIsDueToCycle:(BOOL *)toCycle formatAsPercent:(BOOL)percent
{
  percentCopy = percent;
  stateCopy = state;
  contextCopy = context;
  if (cycle)
  {
    v14 = objc_msgSend_formulaResultForFormattedValue_context_suppressCycleCheck_formatAsPercent_(TSCEFormulaObject, v12, stateCopy, contextCopy, 1, percentCopy);
    v17 = objc_msgSend_errorWithContext_(v14, v15, contextCopy, v16);
    v21 = v17;
    if (v17 && objc_msgSend_errorType(v17, v18, v19, v20) == 143)
    {
      v22 = objc_msgSend_errorValue_(TSCEErrorValue, v18, v21, v20);
    }

    else
    {
      if (toCycle)
      {
        if (objc_msgSend_deepType_(v14, v18, contextCopy, v20) == 9)
        {
          isCircularReferenceError = objc_msgSend_isCircularReferenceError(v21, v18, v19, v20);
        }

        else
        {
          isCircularReferenceError = 1;
        }

        *toCycle = isCircularReferenceError;
      }

      v24 = objc_msgSend_circularReferenceError(TSCEError, v18, v19, v20);
      v22 = objc_msgSend_errorValue_(TSCEErrorValue, v25, v24, v26);
    }
  }

  else
  {
    v22 = objc_msgSend_formulaResultForFormattedValue_context_suppressCycleCheck_formatAsPercent_(TSCEFormulaObject, v12, stateCopy, contextCopy, 1, percentCopy);
  }

  return v22;
}

+ (id)formulaResultForFormattedValue:(id)value context:(id)context suppressCycleCheck:(BOOL)check formatAsPercent:(BOOL)percent
{
  percentCopy = percent;
  valueCopy = value;
  contextCopy = context;
  v14 = valueCopy;
  if (qword_27CFB52C0 != -1)
  {
    sub_2216F7484();
  }

  v18 = objc_msgSend_nativeType(v14, v11, v12, v13);
  v19 = v14;
  if (v18 == 6)
  {
    v20 = objc_msgSend_asReferenceValue(v14, v15, v16, v17);
    v24 = v20;
    if (v20)
    {
      if (objc_msgSend_isOutputOfAFunction(v20, v21, v22, v23))
      {
        objc_msgSend_anyRef(v24, v25, v26, v27);
        objc_msgSend_addCalculatedPrecedent_(contextCopy, v28, v140, v29);
      }

      v30 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v24, v25, contextCopy, 1);

      v18 = objc_msgSend_nativeType(v30, v31, v32, v33);
    }

    else
    {
      v18 = 6;
      v30 = v14;
    }

    v19 = v30;
  }

  if (v18 != 1)
  {
    v60 = v19;
LABEL_20:
    if (v18 == 6)
    {
      v61 = objc_msgSend_asReferenceValue(v60, v15, v16, v17);
      v65 = v61;
      if (v61)
      {
        if (objc_msgSend_isOutputOfAFunction(v61, v62, v63, v64))
        {
          objc_msgSend_anyRef(v65, v66, v67, v68);
          objc_msgSend_addCalculatedPrecedent_(contextCopy, v69, v140, v70);
        }

        v71 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v65, v66, contextCopy, 1);

        LOBYTE(v18) = objc_msgSend_nativeType(v71, v72, v73, v74);
        v60 = v71;
      }

      else
      {
        LOBYTE(v18) = 6;
      }
    }

    v19 = v60;
    if (v18 <= 0xFu)
    {
      if (v18)
      {
        if (v18 == 5)
        {
          v138 = 0;
          v94 = objc_msgSend_asNumber_outError_(v60, v15, contextCopy, &v138);
          v95 = v138;
          v139._decimal.w[0] = objc_msgSend_decimalRepresentation(v94, v96, v97, v98);
          v139._decimal.w[1] = v99;

          if (v95)
          {
            v59 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v100, v95, v101);
          }

          else
          {
            if ((TSUDecimal::isNaN(&v139) & 1) == 0 && !TSUDecimal::isInf(&v139))
            {
              if (percentCopy)
              {
                TSCEFormat::TSCEFormat(&v137, qword_27CFB52B8, 0);
                TSCEFormat::TSCEFormat(v140, &v137);
                objc_msgSend_setFormat_(v19, v134, v140, v135);
              }

              goto LABEL_14;
            }

            v126 = objc_msgSend_numberError(TSCEError, v15, v16, v17);
            v59 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v127, v126, v128);
          }

          goto LABEL_61;
        }
      }

      else if (percentCopy)
      {
        v118 = [TSCENumberValue alloc];
        TSUDecimal::operator=();
        TSCEFormat::TSCEFormat(v140, qword_27CFB52B8, 0);
        v36 = objc_msgSend_initWithDecimal_format_(v118, v119, &v139, v140);
        goto LABEL_13;
      }

LABEL_14:
      if (!check && (objc_msgSend_suppressCycleCheck(contextCopy, v15, v16, v17) & 1) == 0)
      {
        v41 = objc_msgSend_containingCell(contextCopy, v38, v39, v40);
        v45 = objc_msgSend_containingTable(contextCopy, v42, v43, v44);
        v140[0] = *v41;
        *&v140[1] = *v45;
        v49 = objc_msgSend_calcEngine(contextCopy, v46, v47, v48);
        LODWORD(v41) = objc_msgSend_cellIsInACycle_(v49, v50, v140, v51);

        if (v41)
        {
          v55 = objc_msgSend_circularReferenceError(TSCEError, v52, v53, v54);
          v58 = objc_msgSend_errorValue_(TSCEErrorValue, v56, v55, v57);

          v19 = v58;
        }
      }

      v19 = v19;
      v59 = v19;
      goto LABEL_61;
    }

    if (v18 == 19)
    {
      v102 = objc_msgSend_topLevelLambdaResultError(TSCEError, v15, v16, v17);
      v59 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v120, v102, v121);
    }

    else
    {
      if (v18 != 16 || (objc_msgSend_inArrayMode(contextCopy, v15, v16, v17) & 1) != 0)
      {
        goto LABEL_14;
      }

      v102 = objc_msgSend_asValueGridValue(v60, v15, v16, v17);
      v106 = objc_msgSend_implicitIntersectionCoord(v102, v103, v104, v105);
      v139._decimal.w[0] = v106;
      v113 = objc_msgSend_valueGrid(v102, v107, v108, v109);
      if (v113)
      {
        if (v106 != 0x7FFFFFFF && (v106 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000 && (objc_msgSend_implicitIntersectionOffTable(v102, v110, v111, v112) & 1) == 0)
        {
          v136 = objc_msgSend_valueAtCoord_(v113, v110, &v139, v112);

          v19 = v136;
          goto LABEL_14;
        }

        *v140 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v140[2] = 0;
        v140[3] = 0;
        v114 = objc_msgSend_invalidRangeUsageErrorForReference_(TSCEError, v110, v140, v112);
        v117 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v115, v114, v116);
      }

      else
      {
        v114 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v110, v111, v112);
        v117 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v131, v114, v132);
      }

      v59 = v117;
    }

    goto LABEL_61;
  }

  if (objc_msgSend_inArrayMode(contextCopy, v15, v16, v17))
  {
    v36 = objc_msgSend_deepResolveInPlace_(v19, v34, contextCopy, v35);
LABEL_13:
    v37 = v36;

    v19 = v37;
    goto LABEL_14;
  }

  v78 = contextCopy;
  v140[0] = v78;
  v140[1] = 0;
  v140[2] = 0;
  v140[3] = 0xFFFFFFFFLL;
  *(&v140[3] + 7) = 0;
  v141 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v142 = 0;
  v143 = 0;
  while (1)
  {
    v79 = objc_msgSend_gridValue(v19, v75, v76, v77);
    if (!objc_msgSend_gridKind(v79, v80, v81, v82) && !objc_msgSend_count(v79, v83, v84, v85))
    {
      break;
    }

    if ((objc_msgSend_gridKind(v79, v83, v84, v85) || !objc_msgSend_count(v79, v86, v87, v88)) && objc_msgSend_count(v79, v86, v87, v88) != 1)
    {
      v122 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v86, v89, v90);
      v125 = objc_msgSend_raiseErrorOrConvert_(v78, v123, v122, v124);
      goto LABEL_57;
    }

    v60 = objc_msgSend_valueAtIndex_accessContext_(v79, v86, 0, v140);

    v18 = objc_msgSend_nativeType(v60, v91, v92, v93);
    v19 = v60;
    if (v18 != 1)
    {

      goto LABEL_20;
    }
  }

  v122 = objc_msgSend_emptyArrayError(TSCEError, v83, v84, v85);
  v125 = objc_msgSend_raiseErrorOrConvert_(v78, v129, v122, v130);
LABEL_57:
  v59 = v125;

LABEL_61:

  return v59;
}

- (id)evaluateWithContext:(id)context isInACycle:(BOOL)cycle outErrorIsDueToCycle:(BOOL *)toCycle
{
  cycleCopy = cycle;
  contextCopy = context;
  astNodeArray = self->_astNodeArray;
  if (astNodeArray && astNodeArray->var1)
  {
    v13 = sub_221250CB8(astNodeArray, contextCopy, 0);
    objc_msgSend_formulaResultForFormattedValueWithKnownCycleState_context_isInACycle_outErrorIsDueToCycle_formatAsPercent_(TSCEFormulaObject, v14, v13, contextCopy, cycleCopy, toCycle, (self->_translationFlags._flags >> 3) & 1);
  }

  else
  {
    v15 = objc_msgSend_syntaxError(TSCEError, v8, v9, v10);
    v13 = objc_msgSend_errorValue_(TSCEErrorValue, v16, v15, v17);

    objc_msgSend_formulaResultForFormattedValueWithKnownCycleState_context_isInACycle_outErrorIsDueToCycle_formatAsPercent_(TSCEFormulaObject, v18, v13, contextCopy, cycleCopy, toCycle, (self->_translationFlags._flags >> 3) & 1);
  }
  v19 = ;

  return v19;
}

- (id)evaluateWithContext:(id)context
{
  contextCopy = context;
  v8 = sub_221250CB8(self->_astNodeArray, contextCopy, 0);
  if (!v8)
  {
    v8 = objc_msgSend_nilValue(TSCENilValue, v5, v6, v7);
  }

  v9 = objc_msgSend_formulaResultForFormattedValue_context_suppressCycleCheck_formatAsPercent_(TSCEFormulaObject, v5, v8, contextCopy, 0, (self->_translationFlags._flags >> 3) & 1);

  return v9;
}

- (id)evaluateWithContextGridResult:(id)result
{
  v3 = sub_221250CB8(self->_astNodeArray, result, 0);

  return v3;
}

- (id)evaluateForPartialResultsWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_opt_new();
  v6 = sub_221250CB8(self->_astNodeArray, contextCopy, v5);

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToFormula = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToFormula = objc_msgSend_isEqualToFormula_(self, v5, equalCopy, v6);
    }

    else
    {
      isEqualToFormula = 0;
    }
  }

  return isEqualToFormula;
}

- (BOOL)isEqualToFormula:(id)formula
{
  formulaCopy = formula;
  v8 = formulaCopy;
  if (self == formulaCopy)
  {
    v18 = 1;
  }

  else
  {
    v18 = formulaCopy && (flags = self->_translationFlags._flags, ((flags ^ objc_msgSend_translationFlags(formulaCopy, v5, v6, v7)) & 2) == 0) && (v13 = self->_translationFlags._flags, ((v13 ^ objc_msgSend_translationFlags(v8, v10, v11, v12)) & 4) == 0) && (v17 = self->_translationFlags._flags, ((v17 ^ objc_msgSend_translationFlags(v8, v14, v15, v16)) & 8) == 0) && sub_2215C5CA0(self->_astNodeArray, v8[1]);
  }

  return v18;
}

- (BOOL)isEquivalentToFormula:(id)formula context:(unint64_t)context thisContainingCell:(TSCECellRef *)cell thatContainingCell:(TSCECellRef *)containingCell
{
  formulaCopy = formula;
  v14 = formulaCopy;
  if (formulaCopy)
  {
    if (self == formulaCopy)
    {
      v27 = 1;
    }

    else
    {
      flags = self->_translationFlags._flags;
      v16 = objc_msgSend_translationFlags(formulaCopy, v11, v12, v13);
      v17 = self->_translationFlags._flags;
      v21 = objc_msgSend_translationFlags(v14, v18, v19, v20);
      contextCopy = context;
      v22 = self->_translationFlags._flags;
      v26 = objc_msgSend_translationFlags(v14, v23, v24, v25);
      v27 = 0;
      if (!(((flags ^ v16) >> 1) & 1 | (((v17 ^ v21) & 4) >> 2) & 1) && (((v22 ^ v26) >> 3) & 1) == 0)
      {
        selfCopy = self;
        if (cell && (self->_translationFlags._flags & 0x40) != 0)
        {
          TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v43, 0, cell);
          v31 = objc_msgSend_copyByConvertingColonToColonTract_(selfCopy, v29, &v43, v30);

          selfCopy = v31;
        }

        v32 = v14;
        v36 = v32;
        if (containingCell && (objc_msgSend_translationFlags(v32, v33, v34, v35) & 0x40) != 0)
        {
          TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v43, 0, containingCell);
          v39 = objc_msgSend_copyByConvertingColonToColonTract_(v36, v37, &v43, v38);

          v36 = v39;
        }

        v40 = sub_2215C5CF4(selfCopy->_astNodeArray, v36[1], contextCopy, cell, containingCell);

        v27 = v40 & 1;
      }
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)getPrecedents:(void *)precedents calcEngine:(id)engine hostCell:(const TSCECellRef *)cell allowImplicitIntersection:(BOOL)intersection returnUidReferences:(BOOL)references
{
  intersectionCopy = intersection;
  engineCopy = engine;
  sub_2212C7294(v17, cell);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v20, engineCopy, v17);
  sub_22126254C(v17, self->_astNodeArray, &v20, precedents);
  if (intersectionCopy)
  {
    v18[32] = 1;
  }

  v18[33] = references;
  sub_221262B44(v17, v13, v14, v15);
  v17[0].var0.coordinate = &unk_2834A37F0;

  v21 = v18;
  sub_2211FEAB8(&v21);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(v17, v16);
}

- (id)hostedDescriptionAtCell:(const TSCECellRef *)cell calcEngine:(id)engine hideUids:(BOOL)uids
{
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v20, engine, cell);
  sub_2211F32A8(v16, self->_astNodeArray, &v20);
  sub_2211F32AC(v16, 1);
  uidsCopy = uids;
  TSCEASTStreamIterator::rewrite(v16, v7, v8, v9);
  v13 = sub_2211F3A28(v16, v10, v11, v12);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v16, v14);

  return v13;
}

- (id)hostedDescriptionAtCell:(const TSCECellRef *)cell calcEngine:(id)engine
{
  v4 = objc_msgSend_hostedDescriptionAtCell_calcEngine_hideUids_(self, a2, cell, engine, 1);

  return v4;
}

- (id)sageFormulaStringForContainingCell:(const TSCECellRef *)cell outHasSageUnsupportedFunctions:(BOOL *)functions
{
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v8, 0, cell);
  v6 = sub_2213779BC(self->_astNodeArray, &v8, functions);

  return v6;
}

- (BOOL)isSpillFormula
{
  memset(&v14, 0, sizeof(v14));
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v15, 0, &v14);
  v6 = objc_msgSend_const_astNodeArray(self, v3, v4, v5);
  sub_22134B2F4(&v14, v6, &v15);
  v7 = sub_22134B3CC(&v14);
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = TSCEASTElement::tag(v7, &v14);
  if (v8 != 29 && v8 != 36)
  {
    goto LABEL_7;
  }

  v9 = sub_22134B3CC(&v14);
  v10 = v9;
  if (v9)
  {
    if (TSCEASTElement::tag(v9, &v14) == 16)
    {
      LOBYTE(v10) = TSCEASTFunctionElement::functionIndex(v10, &v14, v11, v12) == 337;
      goto LABEL_8;
    }

LABEL_7:
    LOBYTE(v10) = 0;
  }

LABEL_8:
  sub_22134B390(&v14);
  return v10;
}

- (TSUCellCoord)spillOrigin
{
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v41);
  v6 = objc_msgSend_const_astNodeArray(self, v3, v4, v5);
  sub_22134B2F4(v40, v6, &v41);
  v7 = sub_22134B3CC(v40);
  v8 = v7;
  v9 = 0x7FFF7FFFFFFFLL;
  if (v7)
  {
    if (TSCEASTElement::tag(v7, v40) == 36)
    {
      v12 = TSCEASTRelativeCoordRefElement::relativeCoord(v8, v40, v10, v11);
      v13 = v12 & 0xFFFFFFFFFFFFLL;
      if ((v12 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
      {
        v14 = sub_22134B3CC(v40);
        v15 = v14;
        if (v14)
        {
          if (TSCEASTElement::tag(v14, v40) == 16)
          {
            v18 = TSCEASTFunctionElement::functionIndex(v15, v40, v16, v17);
            if (sub_22134B3CC(v40))
            {
              v21 = MEMORY[0x277D81150];
              v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSCEFormulaObject spillOrigin]", v20);
              v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaObject.mm", v24);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v22, v25, 788, 0, "Expected formula to be done, odd looking __SPILL: %@", self);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29);
            }

            else if (v18 == 337)
            {
              if ((~v12 & 0x101000000000000) != 0)
              {
                v30 = MEMORY[0x277D81150];
                v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSCEFormulaObject spillOrigin]", v20);
                v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaObject.mm", v33);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v35, v31, v34, 792, 0, "Absolute reference expected for __SPILL, saw relative");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38);
              }

              v9 = v13;
            }
          }
        }
      }
    }
  }

  sub_22134B390(v40);
  return v9;
}

- (BOOL)isSpillFormulaForOriginCell:(const TSUCellCoord *)cell
{
  v5 = objc_msgSend_spillOrigin(self, a2, cell, v3);
  v7 = v5 != 0x7FFFFFFF && (v5 & 0xFFFF00000000) != 0x7FFF00000000;
  v8 = ((*cell ^ v5) & 0x101FFFF00000000) == 0 && v7;
  return v5 == cell->row && v8;
}

- (id)copyByRewritingForTranspose:(id)transpose calcEngine:(id)engine containingCell:(const TSCEFormulaContainingCell *)cell outTransposeWarning:(BOOL *)warning
{
  transposeCopy = transpose;
  selfCopy = self;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v30, engine, cell);
  v15 = objc_msgSend_astNodeArrayCopy(selfCopy, v12, v13, v14);
  sub_2210F0F20(v25, v15, &v30, transposeCopy);
  TSCEASTRewriter::rewrite(v25, v16, v17, v18);
  if (v26 == 1)
  {
    v19 = TSCEASTRewriter::resultArray(v25);
    v20 = [TSCEFormulaObject alloc];
    v22 = objc_msgSend_initWithNodeArray_translationFlags_(v20, v21, v19, selfCopy->_translationFlags._flags);

    selfCopy = v22;
    TSCEASTNodeArray::freeNodeArray(v19, v23);
  }

  if (warning)
  {
    *warning = v28 == 1;
  }

  v25[0] = &unk_2834A1BE8;
  sub_2210BDEC0(&v29);

  TSCEASTRewriter::~TSCEASTRewriter(v25);
  return selfCopy;
}

- (id)copyByRewritingWithSpec:(id)spec calcEngine:(id)engine containingCell:(const TSCEFormulaContainingCell *)cell
{
  specCopy = spec;
  engineCopy = engine;
  flags = self->_translationFlags._flags;
  selfCopy = self;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v353, engineCopy, cell);
  if ((objc_msgSend_translationFlags(selfCopy, v12, v13, v14) & 0x40) != 0)
  {
    v18 = objc_msgSend_astNodeArrayCopy(selfCopy, v15, v16, v17);
    sub_2214CAD34(v333, v18, &v353);
    TSCEASTRewriter::rewrite(v333, v19, v20, v21);
    if (v334 == 1)
    {
      v22 = TSCEASTRewriter::resultArray(v333);
      v23 = [TSCEFormulaObject alloc];
      v25 = objc_msgSend_initWithNodeArray_translationFlags_(v23, v24, v22, flags & 0xFFFFFFFFFFFFFFBFLL);

      selfCopy = v25;
      TSCEASTNodeArray::freeNodeArray(v22, v26);
    }

    TSCEASTRewriter::~TSCEASTRewriter(v333);
    LOBYTE(flags) = flags & 0xBF;
  }

  switch(objc_msgSend_rewriteType(specCopy, v15, v16, v17))
  {
    case 0u:
      v30 = objc_msgSend_astNodeArrayCopy(selfCopy, v27, v28, v29);
      sub_2214BF3BC(v333, v30, &v353, specCopy);
      var2 = cell->var2;
      isInverse = objc_msgSend_isInverse(specCopy, v31, v32, v33);
      TSCEASTRewriter::rewrite(v333, v34, v35, v36);
      if (v334 != 1)
      {
        goto LABEL_79;
      }

      goto LABEL_78;
    case 1u:
      v142 = objc_msgSend_astNodeArrayCopy(selfCopy, v27, v28, v29);
      sub_2212F79E8(v333, v142, &v353, specCopy);
      var2 = cell->var2;
      isInverse = objc_msgSend_isInverse(specCopy, v143, v144, v145);
      TSCEASTRewriter::rewrite(v333, v146, v147, v148);
      if (v334 == 1)
      {
        goto LABEL_78;
      }

      goto LABEL_79;
    case 2u:
      v149 = objc_msgSend_astNodeArrayCopy(selfCopy, v27, v28, v29);
      sub_2213BAC6C(v333, v149, &v353, specCopy);
      var2 = cell->var2;
      isInverse = objc_msgSend_isInverse(specCopy, v150, v151, v152);
      TSCEASTRewriter::rewrite(v333, v153, v154, v155);
      if (v334 == 1)
      {
        goto LABEL_78;
      }

      goto LABEL_79;
    case 3u:
      if (cell->var3)
      {
        goto LABEL_80;
      }

      v234 = objc_msgSend_astNodeArrayCopy(selfCopy, v27, v28, v29);
      v238 = objc_msgSend_rowColumnInfo(specCopy, v235, v236, v237);
      sub_2212E5F60(v333, v234, &v353, specCopy, v238);

      var2 = cell->var2;
      isInverse = objc_msgSend_isInverse(specCopy, v239, v240, v241);
      TSCEASTStreamIterator::rewrite(v333, v242, v243, v244);
      if (v334 == 1)
      {
        v245 = v337;
        v337 = 0;
        v246 = [TSCEFormulaObject alloc];
        v248 = objc_msgSend_initWithNodeArray_translationFlags_(v246, v247, v245, flags);

        selfCopy = v248;
        TSCEASTNodeArray::freeNodeArray(v245, v249);
      }

      goto LABEL_58;
    case 4u:
      goto LABEL_24;
    case 5u:
      if (cell->var2)
      {
LABEL_24:
        *v352 = *&cell->var0.coordinate.row;
        *&v352[16] = cell->var0._tableUID._upper;
        v111 = *v352;
        v112 = objc_msgSend_astNodeArrayCopy(selfCopy, v27, v28, v29);
        v113 = selfCopy;
        *v333 = *&v352[8];
        v332 = v113;
        if (objc_msgSend_isForTable_(specCopy, v114, v333, v115) && ((objc_msgSend_rowColumnInfo(specCopy, v116, v117, v118), v119 = objc_claimAutoreleasedReturnValue(), isRows = objc_msgSend_isRows(v119, v120, v121, v122), v119, objc_msgSend_rowColumnInfo(specCopy, v124, v125, v126), v127 = objc_claimAutoreleasedReturnValue(), v130 = v127, !isRows) ? (IsAffected = objc_msgSend_indexIsAffected_(v127, v128, WORD2(v111), v129)) : (IsAffected = objc_msgSend_indexIsAffected_(v127, v128, v111, v129)), v132 = IsAffected, v130, v132))
        {
          sub_2214C17A8(v333, v112, &v353);
          TSCEASTStreamIterator::rewrite(v333, v133, v134, v135);
          v112 = v337;
          v337 = 0;
          v136 = v334;
          TSCEASTStreamIterator::~TSCEASTStreamIterator(v333, v137);
          v138 = 1;
        }

        else
        {
          v138 = 0;
          v136 = 0;
        }

        v139 = objc_msgSend_rowColumnInfo(specCopy, v116, v117, v118);
        v141 = v139;
        if (v139)
        {
          objc_msgSend_updatedCellRefForRewriteType_originalCellRef_(v139, v140, 2, v352);
        }

        else
        {
          memset(v351, 0, 24);
        }

        sub_2212C726C(&v350, v352, v351);
        TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v349, engineCopy, &v350);
        v331 = v138;
        sub_2213BAC6C(v333, v112, &v349, specCopy);
        v269 = v111;
        var2 = cell->var2;
        isInverse = objc_msgSend_isInverse(specCopy, v270, v271, v272);
        TSCEASTRewriter::rewrite(v333, v273, v274, v275);
        v276 = TSCEASTRewriter::resultArray(v333);
        v277 = v334;

        TSCEASTRewriter::~TSCEASTRewriter(v333);
        if (v351[0].n128_u32[0] == 0x7FFFFFFF || (v351[0].n128_u64[0] & 0xFFFF00000000) == 0x7FFF00000000 || *(v351 + 8) == 0)
        {
          v351[0] = *&cell->var1.coordinate.row;
          v351[1].n128_u64[0] = cell->var1._tableUID._upper;
        }

        *v333 = *&cell->var1.coordinate.row;
        *&v333[16] = cell->var1._tableUID._upper;
        sub_2212C726C(&v348, v351, v333);
        TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v349, engineCopy, &v348);
        v281 = objc_msgSend_rowColumnInfo(specCopy, v278, v279, v280);
        v285 = objc_msgSend_auxRowColumnInfo(v281, v282, v283, v284);
        sub_2212E5F60(v333, v276, &v349, specCopy, v285);

        var2 = cell->var2;
        isInverse = objc_msgSend_isInverse(specCopy, v286, v287, v288);
        TSCEASTStreamIterator::rewrite(v333, v289, v290, v291);
        v292 = v337;
        v337 = 0;
        if ((v136 | v277))
        {
          v293 = 1;
        }

        else
        {
          v293 = v334;
        }

        TSCEASTStreamIterator::~TSCEASTStreamIterator(v333, v294);
        if (v331)
        {
          sub_2214C1DB8(v333, v292, &v349);
          TSCEASTStreamIterator::rewrite(v333, v298, v299, v300);
          v292 = v337;
          v337 = 0;
          v293 |= v334;
          TSCEASTStreamIterator::~TSCEASTStreamIterator(v333, v301);
        }

        if (objc_msgSend_isInverse(specCopy, v295, v296, v297))
        {
          tableUID = cell->var0._tableUID;
          *v333 = v269;
          *&v333[8] = tableUID;
          if (specCopy)
          {
            objc_msgSend_updatedCellRefForOriginalCellRef_(specCopy, v302, v333, v303);
            coordinate = v348.var0.coordinate;
            tableUID = cell->var0._tableUID;
          }

          else
          {
            coordinate = 0;
            memset(&v348, 0, 24);
          }

          *v333 = coordinate;
          *&v333[8] = tableUID;
          sub_2212C7294(&v350, v333);
          TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v349, engineCopy, &v350);
          sub_2210C1C64(v333, v292, &v349, specCopy);
          var2 = cell->var2;
          isInverse = objc_msgSend_isInverse(specCopy, v319, v320, v321);
          TSCEASTRewriter::rewrite(v333, v322, v323, v324);
          v292 = TSCEASTRewriter::resultArray(v333);
          v325 = v293 | v334;

          TSCEASTRewriter::~TSCEASTRewriter(v333);
          selfCopy = v332;
          if ((v325 & 1) == 0)
          {
            goto LABEL_86;
          }
        }

        else
        {
          selfCopy = v332;
          if ((v293 & 1) == 0)
          {
LABEL_86:
            TSCEASTNodeArray::freeNodeArray(v292, v302);

            goto LABEL_80;
          }
        }

        v326 = [TSCEFormulaObject alloc];
        v328 = objc_msgSend_initWithNodeArray_translationFlags_(v326, v327, v292, flags);

        if (objc_msgSend_isEqualToFormula_(v328, v329, v332, v330))
        {
          selfCopy = v332;
        }

        else
        {
          selfCopy = v328;
        }

        goto LABEL_86;
      }

      v306 = objc_msgSend_astNodeArrayCopy(selfCopy, v27, v28, v29);
      sub_2215A7490(v333, v306, &v353, specCopy);
      var2 = cell->var2;
      isInverse = objc_msgSend_isInverse(specCopy, v307, v308, v309);
      TSCEASTRewriter::rewrite(v333, v310, v311, v312);
      if (v334 == 1)
      {
LABEL_78:
        v313 = TSCEASTRewriter::resultArray(v333);
        v314 = [TSCEFormulaObject alloc];
        v316 = objc_msgSend_initWithNodeArray_translationFlags_(v314, v315, v313, flags);

        selfCopy = v316;
        TSCEASTNodeArray::freeNodeArray(v313, v317);
      }

LABEL_79:

      TSCEASTRewriter::~TSCEASTRewriter(v333);
LABEL_80:

      return selfCopy;
    case 6u:
      v53 = selfCopy;
      v220 = objc_msgSend_astNodeArrayCopy(v53, v217, v218, v219);
      sub_2210C90A0(v333, v220, &v353, specCopy);
      var2 = cell->var2;
      isInverse = objc_msgSend_isInverse(specCopy, v221, v222, v223);
      TSCEASTRewriter::rewrite(v333, v224, v225, v226);
      selfCopy = v53;
      if (v334 == 1)
      {
        v227 = TSCEASTRewriter::resultArray(v333);
        v228 = [TSCEFormulaObject alloc];
        selfCopy = objc_msgSend_initWithNodeArray_translationFlags_(v228, v229, v227, flags);

        TSCEASTNodeArray::freeNodeArray(v227, v230);
        if (objc_msgSend_isEqualToFormula_(selfCopy, v231, v53, v232))
        {
          v233 = v53;

          selfCopy = v233;
        }
      }

      *v333 = &unk_2834A1A70;
      sub_2210BDEC0(&v347);
      sub_2210BDEC0(&v346);
      sub_2210BDEC0(&v344);

      TSCEASTRewriter::~TSCEASTRewriter(v333);
      goto LABEL_51;
    case 7u:
      v205 = objc_msgSend_astNodeArrayCopy(selfCopy, v27, v28, v29);
      sub_221463CFC(v333, v205, &v353, specCopy);
      var2 = cell->var2;
      isInverse = objc_msgSend_isInverse(specCopy, v206, v207, v208);
      TSCEASTRewriter::rewrite(v333, v209, v210, v211);
      if (v334 == 1)
      {
        v212 = TSCEASTRewriter::resultArray(v333);
        v213 = [TSCEFormulaObject alloc];
        v215 = objc_msgSend_initWithNodeArray_translationFlags_(v213, v214, v212, flags);

        selfCopy = v215;
        TSCEASTNodeArray::freeNodeArray(v212, v216);
      }

      *v333 = &unk_2834A83C8;
      sub_2210BDEC0(&v344);
      goto LABEL_79;
    case 8u:
      v262 = objc_msgSend_astNodeArrayCopy(selfCopy, v27, v28, v29);
      sub_221464F08(v333, v262, &v353, specCopy);
      var2 = cell->var2;
      isInverse = objc_msgSend_isInverse(specCopy, v263, v264, v265);
      TSCEASTRewriter::rewrite(v333, v266, v267, v268);
      if (v334 == 1)
      {
        goto LABEL_78;
      }

      goto LABEL_79;
    case 9u:
      v104 = objc_msgSend_astNodeArrayCopy(selfCopy, v27, v28, v29);
      sub_2214AAF34(v333, v104, &v353, specCopy);
      var2 = cell->var2;
      isInverse = objc_msgSend_isInverse(specCopy, v105, v106, v107);
      TSCEASTRewriter::rewrite(v333, v108, v109, v110);
      if (v334 == 1)
      {
        goto LABEL_78;
      }

      goto LABEL_79;
    case 0xAu:
      v49 = objc_msgSend_tableUIDHistory(engineCopy, v27, v28, v29);
      v53 = v49;
      if (v49)
      {
        v54 = objc_msgSend_tableUIDMap(v49, v50, v51, v52);
        v58 = objc_msgSend_astNodeArrayCopy(selfCopy, v55, v56, v57);
        TSCEASTStreamIterator::TSCEASTStreamIterator(v333, v58, &v353);
        *v333 = &unk_2834A4B40;
        v338 = v54;
        v339 = 0u;
        v340 = 0u;
        v341 = 0;
        v342 = 1065353216;
        var2 = cell->var2;
        isInverse = objc_msgSend_isInverse(specCopy, v59, v60, v61);
        TSCEASTStreamIterator::rewrite(v333, v62, v63, v64);
        if (v334 == 1)
        {
          v65 = v337;
          v337 = 0;
          v66 = [TSCEFormulaObject alloc];
          v68 = objc_msgSend_initWithNodeArray_translationFlags_(v66, v67, v65, flags);

          selfCopy = v68;
          TSCEASTNodeArray::freeNodeArray(v65, v69);
        }

        *v333 = &unk_2834A4B40;
        sub_2210BDEC0(&v339 + 8);
        TSCEASTStreamIterator::~TSCEASTStreamIterator(v333, v70);
      }

      v71 = objc_msgSend_tableUIDInfo(specCopy, v50, v51, v52);

      if (v71)
      {
        if (!v53 || (v75 = objc_msgSend_tableUIDMap(v53, v72, v73, v74), objc_msgSend_tableUIDInfo(specCopy, v76, v77, v78), v79 = objc_claimAutoreleasedReturnValue(), v83 = objc_msgSend_tableUIDMap(v79, v80, v81, v82), LOBYTE(v75) = sub_2211FB7FC(v75, v83), v79, (v75 & 1) == 0))
        {
          v84 = objc_msgSend_astNodeArrayCopy(selfCopy, v72, v73, v74);
          v88 = objc_msgSend_tableUIDInfo(specCopy, v85, v86, v87);
          v92 = objc_msgSend_tableUIDMap(v88, v89, v90, v91);
          TSCEASTStreamIterator::TSCEASTStreamIterator(v333, v84, &v353);
          *v333 = &unk_2834A4B40;
          v338 = v92;
          v339 = 0u;
          v340 = 0u;
          v341 = 0;
          v342 = 1065353216;

          var2 = cell->var2;
          isInverse = objc_msgSend_isInverse(specCopy, v93, v94, v95);
          TSCEASTStreamIterator::rewrite(v333, v96, v97, v98);
          if (v334 == 1)
          {
            v99 = v337;
            v337 = 0;
            v100 = [TSCEFormulaObject alloc];
            v102 = objc_msgSend_initWithNodeArray_translationFlags_(v100, v101, v99, flags);

            selfCopy = v102;
            TSCEASTNodeArray::freeNodeArray(v99, v103);
          }

          sub_2211FB7A8(v333);
        }
      }

LABEL_51:

      goto LABEL_80;
    case 0xBu:
      v37 = objc_msgSend_astNodeArrayCopy(selfCopy, v27, v28, v29);
      sub_2210F0F20(v333, v37, &v353, specCopy);
      var2 = cell->var2;
      isInverse = objc_msgSend_isInverse(specCopy, v38, v39, v40);
      TSCEASTRewriter::rewrite(v333, v41, v42, v43);
      if (v334 == 1)
      {
        v44 = TSCEASTRewriter::resultArray(v333);
        v45 = [TSCEFormulaObject alloc];
        v47 = objc_msgSend_initWithNodeArray_translationFlags_(v45, v46, v44, flags);

        selfCopy = v47;
        TSCEASTNodeArray::freeNodeArray(v44, v48);
      }

      *v333 = &unk_2834A1BE8;
      sub_2210BDEC0(&v345);
      goto LABEL_79;
    case 0xCu:
      v165 = objc_msgSend_astNodeArrayCopy(selfCopy, v27, v28, v29);
      sub_2214AEF5C(v333, v165, &v353, specCopy);
      var2 = cell->var2;
      isInverse = objc_msgSend_isInverse(specCopy, v166, v167, v168);
      TSCEASTRewriter::rewrite(v333, v169, v170, v171);
      if (v334 == 1)
      {
        goto LABEL_78;
      }

      goto LABEL_79;
    case 0xDu:
      v172 = objc_msgSend_groupNodeUIDInfo(specCopy, v27, v28, v29);

      if (!v172)
      {
        goto LABEL_80;
      }

      v176 = objc_msgSend_astNodeArrayCopy(selfCopy, v173, v174, v175);
      v180 = objc_msgSend_groupNodeUIDInfo(specCopy, v177, v178, v179);
      v184 = objc_msgSend_groupByUid(v180, v181, v182, v183);
      v188 = objc_msgSend_groupNodeUIDInfo(specCopy, v185, v186, v187);
      v192 = objc_msgSend_groupNodeUIDMap(v188, v189, v190, v191);
      sub_2214CE8E8(v333, v176, &v353, v184, v192);

      isInverse = objc_msgSend_isInverse(specCopy, v193, v194, v195);
      TSCEASTStreamIterator::rewrite(v333, v196, v197, v198);
      if (v334 == 1)
      {
        v199 = v337;
        v337 = 0;
        v200 = [TSCEFormulaObject alloc];
        v202 = objc_msgSend_initWithNodeArray_translationFlags_(v200, v201, v199, flags);

        selfCopy = v202;
        TSCEASTNodeArray::freeNodeArray(v199, v203);
      }

      *v333 = &unk_2834A9B38;
      sub_2210BDEC0(&v339 + 8);
LABEL_59:
      TSCEASTStreamIterator::~TSCEASTStreamIterator(v333, v204);
      goto LABEL_80;
    case 0x10u:
      v250 = objc_msgSend_astNodeArrayCopy(selfCopy, v27, v28, v29);
      sub_2214CEC00(v333, v250, &v353, specCopy);
      isInverse = objc_msgSend_isInverse(specCopy, v251, v252, v253);
      TSCEASTStreamIterator::rewrite(v333, v254, v255, v256);
      if (v334 == 1)
      {
        v257 = v337;
        v337 = 0;
        v258 = [TSCEFormulaObject alloc];
        v260 = objc_msgSend_initWithNodeArray_translationFlags_(v258, v259, v257, flags);

        selfCopy = v260;
        TSCEASTNodeArray::freeNodeArray(v257, v261);
      }

LABEL_58:

      goto LABEL_59;
    case 0x11u:
    case 0x12u:
      goto LABEL_80;
    default:
      v156 = MEMORY[0x277D81150];
      v157 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSCEFormulaObject copyByRewritingWithSpec:calcEngine:containingCell:]", v29);
      v160 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v158, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaObject.mm", v159);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v156, v161, v157, v160, 876, 0, "Warning, no rewriter created for this formula rewrite type (yet).");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v162, v163, v164);
      goto LABEL_80;
  }
}

- (id)copyBySettingHostTableUID:(const TSKUIDStruct *)d hostColumnUID:(const TSKUIDStruct *)iD hostRowUID:(const TSKUIDStruct *)uID
{
  v9 = [TSCEFormulaObject alloc];
  v13 = objc_msgSend_initWithNodeArray_translationFlags_(v9, v10, self->_astNodeArray, self->_translationFlags._flags);
  if ((self->_translationFlags._flags & 0x20) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCEFormulaObject copyBySettingHostTableUID:hostColumnUID:hostRowUID:]", v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaObject.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 1267, 0, "Can only set hostCellUID on uid-form formula");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  v13[2] = *d;
  v13[3] = *iD;
  v13[4] = *uID;
  return v13;
}

- (id)copyByClearingHostCell
{
  selfCopy = self;
  if (objc_msgSend_hasHostCell(selfCopy, v3, v4, v5))
  {
    v6 = [TSCEFormulaObject alloc];
    v8 = objc_msgSend_initWithNodeArray_translationFlags_(v6, v7, selfCopy->_astNodeArray, selfCopy->_translationFlags._flags);

    v8[3] = 0u;
    v8[4] = 0u;
    v8[2] = 0u;
    return v8;
  }

  return selfCopy;
}

- (id)copyBySettingTranslationFlags:(TSCEFormulaTranslationFlags)flags
{
  selfCopy = self;
  if (selfCopy->_translationFlags._flags != flags._flags)
  {
    v5 = [TSCEFormulaObject alloc];
    v7 = objc_msgSend_initWithNodeArray_translationFlags_(v5, v6, selfCopy->_astNodeArray, flags._flags);

    return v7;
  }

  return selfCopy;
}

- (id)copyByAddingTranslationFlags:(unsigned __int8)flags
{
  v6 = (objc_msgSend_translationFlags(self, a2, flags, v3) | flags);

  return objc_msgSend_copyBySettingTranslationFlags_(self, v5, v6, v7);
}

- (id)copyByRemovingTranslationFlags:(unsigned __int8)flags
{
  v6 = (objc_msgSend_translationFlags(self, a2, flags, v3) & ~flags);

  return objc_msgSend_copyBySettingTranslationFlags_(self, v5, v6, v7);
}

- (id)copyByRewritingReferencesToUidForm:(TSCEFormulaRewriteContext *)form
{
  v5 = form->var0;
  v6 = TSCEFormulaRewriteContext::containingTableUID(form);
  v8 = v7;
  v12 = TSCEFormulaRewriteContext::containingCellCoord(form);
  flags = self->_translationFlags._flags;
  if ((flags & 0x40) != 0)
  {
    v15 = objc_msgSend_copyByConvertingColonToColonTract_(self, v9, form, *&v11);
    v14 = objc_msgSend_astNodeArrayCopy(v15, v16, v17, v18);
    flags = objc_msgSend_translationFlags(v15, v19, v20, v21);

    if ((flags & 0x20) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v14 = objc_msgSend_astNodeArrayCopy(self, v9, *&v10, *&v11);
    if ((flags & 0x20) != 0)
    {
      goto LABEL_8;
    }
  }

  v59[0].coordinate = v12;
  v59[0]._tableUID._lower = v6;
  v59[0]._tableUID._upper = v8;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v63, v5, v59);
  sub_22142DF10(v59, v14, &v63);
  TSCEASTStreamIterator::rewrite(v59, v22, v23, v24);
  v14 = v61;
  v61 = 0;
  if (v60)
  {
    flags |= 0x20u;
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v59, v25);
LABEL_8:
  v26 = [TSCEFormulaObject alloc];
  v28 = objc_msgSend_initWithNodeArray_translationFlags_(v26, v27, v14, flags);
  TSCEASTNodeArray::freeNodeArray(v14, v29);
  if ((TSCEFormulaRewriteContext::preserveHostCell(form) & ((flags & 0x20) >> 5)) == 1)
  {
    v30 = TSCEFormulaRewriteContext::resolverTableUID(form);
    if (v30 | v31)
    {
      v32 = TSCEFormulaRewriteContext::resolverTableUID(form);
      v34 = objc_msgSend_resolverForTableUID_(v5, v33, v32, v33);
      v37 = v34;
      if (v34)
      {
        v38 = objc_msgSend_columnUIDForColumnIndex_(v34, v35, v12.column, v36);
        v40 = v39;
        v59[0].coordinate = v38;
        v59[0]._tableUID._lower = v39;
        v42 = objc_msgSend_rowUIDForRowIndex_(v37, v39, *&v12, v41);
        v63.var0 = v42;
        v63.var1 = v43;
        if (v38 | v40 && v42 | v43)
        {
          v58[0] = TSCEFormulaRewriteContext::resolverTableUID(form);
          v58[1] = v44;
          v45 = objc_msgSend_copyBySettingHostTableUID_hostColumnUID_hostRowUID_(v28, v44, v58, v59, &v63);

          v28 = v45;
        }
      }

      else
      {
        v46 = MEMORY[0x277D81150];
        v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSCEFormulaObject copyByRewritingReferencesToUidForm:]", v36);
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaObject.mm", v49);
        v59[0].coordinate = TSCEFormulaRewriteContext::resolverTableUID(form);
        v59[0]._tableUID._lower = v51;
        v52 = TSKUIDStruct::description(v59);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v53, v47, v50, 1358, 0, "preserveHostCell requested, but resolverTableUID %@ not found", v52);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56);
      }
    }
  }

  return v28;
}

- (id)copyByRewritingReferencesToGeometricForm:(TSCEFormulaRewriteContext *)form
{
  flags = self->_translationFlags._flags;
  selfCopy = self;
  v6 = selfCopy;
  if ((flags & 0x20) == 0)
  {
    return selfCopy;
  }

  v8 = form->var0;
  v9 = TSCEFormulaRewriteContext::containingTableUID(form);
  v11 = v10;
  v12 = TSCEFormulaRewriteContext::containingCellCoord(form);
  v13 = TSCEFormulaRewriteContext::hostCellOverridesTableID(form);
  v71 = TSCEFormulaRewriteContext::restoreBadRefs(form);
  v70 = objc_msgSend_ownerKindForOwnerUID_(v8, v14, v9, v11);
  v72 = objc_msgSend_astNodeArrayCopy(v6, v15, v16, v17);
  if (v6->_hostTableUID._lower || v6->_hostTableUID._upper)
  {
    v20 = objc_msgSend_tableResolverForTableUID_(v8, v18, &v6->_hostTableUID, v19);
    v23 = v20;
    if (!v20 || (v24 = objc_msgSend_columnIndexForColumnUID_(v20, v21, &v6->_hostColumnUID, v22), v27 = objc_msgSend_rowIndexForRowUID_(v23, v25, &v6->_hostRowUID, v26), v24 == 0x7FFF) || v27 == 0x7FFFFFFF || (v12.row = v27, *&v12.column = v24, !v13) || (v70 != 3 ? (lower = v6->_hostTableUID._lower, upper = v6->_hostTableUID._upper) : (lower = objc_msgSend_conditionalStyleFormulaOwnerUID(v23, v28, v29, v30), upper = v28), v9 == lower && v11 == upper))
    {
      lower = v9;
      upper = v11;
    }

    else
    {
      v69 = MEMORY[0x277D81150];
      v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSCEFormulaObject copyByRewritingReferencesToGeometricForm:]", v30);
      v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaObject.mm", v62);
      v65 = @"table";
      if (v70 == 3)
      {
        v65 = @"conditional style";
      }

      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v63, v60, v64, 1412, 0, "Over-riding hostTableUID for %@", v65);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68);
    }

    v9 = lower;
    v11 = upper;
  }

  v73.n128_u64[0] = v12;
  v73.n128_u64[1] = v9;
  v74 = v11;
  sub_2212C7294(&v80, &v73);
  v36 = TSCEFormulaRewriteContext::setContainingCell(form, &v80);
  v37 = v72;
  if (v8)
  {
    v38 = objc_msgSend_tableUIDHistory(v8, v33, v34, v35, v36);

    if (v38)
    {
      v42 = objc_msgSend_tableUIDHistory(v8, v39, v40, v41);
      v46 = objc_msgSend_tableUIDMap(v42, v43, v44, v45);
      TSCEASTStreamIterator::TSCEASTStreamIterator(&v73, v72, form);
      v73.n128_u64[0] = &unk_2834A4B40;
      *v76 = v46;
      *&v76[8] = 0u;
      v77 = 0u;
      v78 = 0;
      v79 = 1065353216;

      TSCEASTStreamIterator::rewrite(&v73, v47, v48, v49);
      v37 = v75;
      v75 = 0;
      v73.n128_u64[0] = &unk_2834A4B40;
      sub_2210BDEC0(&v76[16]);
      TSCEASTStreamIterator::~TSCEASTStreamIterator(&v73, v50);
    }
  }

  sub_2214C3C08(&v73, v37, form);
  v76[1] = v71;
  *&v76[4] = TSCEFormulaRewriteContext::fromOffset(form);
  TSCEASTStreamIterator::rewrite(&v73, v51, v52, v53);
  v54 = v75;
  v75 = 0;
  TSCEFormulaRewriteContext::setContainsBadRef(form, v76[0]);
  v55 = [TSCEFormulaObject alloc];
  v7 = objc_msgSend_initWithNodeArray_translationFlags_(v55, v56, v54, flags & 0xFFFFFFFFFFFFFFDFLL);

  TSCEASTNodeArray::freeNodeArray(v54, v57);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(&v73, v58);

  return v7;
}

- (id)copyByRepairingBadReferences:(TSCEFormulaRewriteContext *)references clearUidHistory:(BOOL)history
{
  historyCopy = history;
  v7 = objc_msgSend_translationFlags(self, a2, references, history);
  v11 = objc_msgSend_astNodeArrayCopy(self, v8, v9, v10);
  v15 = objc_msgSend_translationFlags(self, v12, v13, v14);
  if ((v15 & 0x40) != 0)
  {
    sub_2214CAD34(v44, v11, references);
    TSCEASTRewriter::rewrite(v44, v16, v17, v18);
    v11 = TSCEASTRewriter::resultArray(v44);
    v7 &= ~0x40u;
    TSCEASTRewriter::~TSCEASTRewriter(v44);
  }

  TSCEFormulaRewriteContext::setUseOnlyActiveTract(references, 1);
  sub_22114F728(v44, v11, references);
  v46 = historyCopy;
  TSCEASTStreamIterator::rewrite(v44, v19, v20, v21);
  v22 = v15 & 0x40;
  v23 = v45;
  v45 = 0;
  v24 = v44[97] | (v22 >> 6);
  if (historyCopy)
  {
    sub_2212CE9B0(v42, v23, references);
    TSCEASTStreamIterator::rewrite(v42, v25, v26, v27);
    if (v42[97] == 1)
    {
      v23 = v43;
      v43 = 0;
      TSCEASTStreamIterator::~TSCEASTStreamIterator(v42, v28);
      selfCopy = self;
      goto LABEL_8;
    }

    v42[96] = 1;
    TSCEASTStreamIterator::~TSCEASTStreamIterator(v42, v28);
  }

  selfCopy2 = self;
  if ((v24 & 1) == 0)
  {
    v39 = selfCopy2;
    goto LABEL_12;
  }

LABEL_8:
  v32 = [TSCEFormulaObject alloc];
  v34 = objc_msgSend_initWithNodeArray_translationFlags_(v32, v33, v23, v7);

  if (objc_msgSend_hasHostCell(self, v35, v36, v37))
  {
    v38 = objc_msgSend_copyBySettingHostTableUID_hostColumnUID_hostRowUID_(v34, v31, &self->_hostTableUID, &self->_hostColumnUID, &self->_hostRowUID);

    v39 = v38;
  }

  else
  {
    v39 = v34;
  }

LABEL_12:
  TSCEASTNodeArray::freeNodeArray(v23, v31);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(v44, v40);
  return v39;
}

- (id)copyByRepairingMissingThunks:(TSCEFormulaRewriteContext *)thunks
{
  selfCopy = self;
  v8 = objc_msgSend_astNodeArrayCopy(selfCopy, v5, v6, v7);
  sub_2216D13D8(v18, v8, thunks);
  TSCEASTRewriter::rewrite(v18, v9, v10, v11);
  if (v18[97] == 1)
  {
    v12 = TSCEASTRewriter::resultArray(v18);
    v13 = [TSCEFormulaObject alloc];
    v15 = objc_msgSend_initWithNodeArray_translationFlags_(v13, v14, v12, selfCopy->_translationFlags._flags);

    selfCopy = v15;
    TSCEASTNodeArray::freeNodeArray(v12, v16);
  }

  TSCEASTRewriter::~TSCEASTRewriter(v18);
  return selfCopy;
}

- (id)copyByFreezingRefs:(id)refs containingCell:(const TSCEFormulaContainingCell *)cell
{
  refsCopy = refs;
  v10 = objc_msgSend_astNodeArrayCopy(self, v7, v8, v9);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v26, refsCopy, cell);
  sub_2214C17A8(v24, v10, &v26);
  TSCEASTStreamIterator::rewrite(v24, v11, v12, v13);
  selfCopy = self;
  v16 = selfCopy;
  if (v24[97] == 1)
  {
    v17 = v25;
    v25 = 0;
    flags = selfCopy->_translationFlags._flags;
    v19 = [TSCEFormulaObject alloc];
    v21 = objc_msgSend_initWithNodeArray_translationFlags_(v19, v20, v17, flags | 0x80);

    v16 = v21;
    TSCEASTNodeArray::freeNodeArray(v17, v22);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v24, v15);

  return v16;
}

- (id)copyByThawingRefs:(id)refs containingCell:(const TSCEFormulaContainingCell *)cell
{
  refsCopy = refs;
  selfCopy = self;
  if (objc_msgSend_translationFlags(selfCopy, v8, v9, v10) < 0)
  {
    v15 = objc_msgSend_astNodeArrayCopy(selfCopy, v11, v12, v13);
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v27, refsCopy, cell);
    sub_2214C1DB8(v25, v15, &v27);
    TSCEASTStreamIterator::rewrite(v25, v16, v17, v18);
    v19 = v26;
    v26 = 0;
    LOBYTE(v15) = selfCopy->_translationFlags._flags;
    v20 = [TSCEFormulaObject alloc];
    v14 = objc_msgSend_initWithNodeArray_translationFlags_(v20, v21, v19, v15 & 0x7F);

    TSCEASTNodeArray::freeNodeArray(v19, v22);
    TSCEASTStreamIterator::~TSCEASTStreamIterator(v25, v23);
  }

  else
  {
    v14 = selfCopy;
  }

  return v14;
}

- (id)copyByConvertingColonTractToColon:(TSCEFormulaRewriteContext *)colon breakUpIntoRefs:(BOOL)refs
{
  selfCopy = self;
  v10 = objc_msgSend_astNodeArrayCopy(selfCopy, v7, v8, v9);
  flags = selfCopy->_translationFlags._flags;
  sub_221126A6C(v21, v10, colon);
  v21[200] = refs;
  TSCEASTRewriter::rewrite(v21, v12, v13, v14);
  if (v21[97] == 1)
  {
    v15 = TSCEASTRewriter::resultArray(v21);
    v16 = [TSCEFormulaObject alloc];
    v18 = objc_msgSend_initWithNodeArray_translationFlags_(v16, v17, v15, flags | 0x40);

    selfCopy = v18;
    TSCEASTNodeArray::freeNodeArray(v15, v19);
  }

  TSCEASTRewriter::~TSCEASTRewriter(v21);
  return selfCopy;
}

- (id)copyByConvertingColonToColonTract:(TSCEFormulaRewriteContext *)tract
{
  selfCopy = self;
  v5 = TSCEFormulaRewriteContext::containingCellCoord(tract);
  if (v5.row != 0x7FFFFFFF && (*&v5 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    flags = selfCopy->_translationFlags._flags;
    v10 = objc_msgSend_astNodeArrayCopy(selfCopy, v6, *&v7, *&v8);
    sub_2214CAD34(v20, v10, tract);
    TSCEASTRewriter::rewrite(v20, v11, v12, v13);
    if ((v20[97] & 1) != 0 || (flags & 0x40) != 0)
    {
      v14 = TSCEASTRewriter::resultArray(v20);
      v15 = [TSCEFormulaObject alloc];
      v17 = objc_msgSend_initWithNodeArray_translationFlags_(v15, v16, v14, flags & 0xFFFFFFFFFFFFFFBFLL);

      selfCopy = v17;
      TSCEASTNodeArray::freeNodeArray(v14, v18);
    }

    TSCEASTRewriter::~TSCEASTRewriter(v20);
  }

  return selfCopy;
}

- (id)copyByClearingUids:(id)uids containingTableUID:(const TSKUIDStruct *)d
{
  uidsCopy = uids;
  selfCopy = self;
  objc_msgSend_astNodeArrayCopy(selfCopy, v8, v9, v10);
  v12.coordinate = 0;
  v12._tableUID = *d;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v13, uidsCopy, &v12);
  operator new();
}

- (id)copyByMakingAllCategoryRefsIndirect:(TSCEFormulaRewriteContext *)indirect
{
  selfCopy = self;
  v8 = objc_msgSend_astNodeArrayCopy(selfCopy, v5, v6, v7);
  sub_2214CE9E0(v19, v8, indirect, 11);
  TSCEASTStreamIterator::rewrite(v19, v9, v10, v11);
  if (v19[97] == 1)
  {
    v13 = v20;
    v20 = 0;
    v14 = [TSCEFormulaObject alloc];
    v16 = objc_msgSend_initWithNodeArray_translationFlags_(v14, v15, v13, selfCopy->_translationFlags._flags);

    selfCopy = v16;
    TSCEASTNodeArray::freeNodeArray(v13, v17);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v19, v12);
  return selfCopy;
}

- (id)copyByRemappingOwnerUIDs:(const void *)ds rewriteContext:(TSCEFormulaRewriteContext *)context outBadRefFound:(BOOL *)found
{
  selfCopy = self;
  v12 = objc_msgSend_astNodeArrayCopy(selfCopy, v9, v10, v11);
  TSCEASTStreamIterator::TSCEASTStreamIterator(v27, v12, context);
  v27[0] = &unk_2834A4B40;
  dsCopy = ds;
  foundCopy = found;
  memset(v32, 0, sizeof(v32));
  v33 = 1065353216;
  TSCEASTStreamIterator::rewrite(v27, v13, v14, v15);
  if (v28 == 1)
  {
    v16 = v29;
    v29 = 0;
    v17 = [TSCEFormulaObject alloc];
    v19 = objc_msgSend_initWithNodeArray_translationFlags_(v17, v18, v16, selfCopy->_translationFlags._flags);

    TSCEASTNodeArray::freeNodeArray(v16, v20);
    if (objc_msgSend_hasHostCell(selfCopy, v21, v22, v23))
    {
      selfCopy = objc_msgSend_copyBySettingHostTableUID_hostColumnUID_hostRowUID_(v19, v24, &selfCopy->_hostTableUID, &selfCopy->_hostColumnUID, &selfCopy->_hostRowUID);
    }

    else
    {
      selfCopy = v19;
    }
  }

  v27[0] = &unk_2834A4B40;
  sub_2210BDEC0(v32);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(v27, v25);
  return selfCopy;
}

- (id)copyByRemappingHostCellAgnosticOwnerUIDs:(const void *)ds rewriteContext:(TSCEFormulaRewriteContext *)context outError:(BOOL *)error
{
  selfCopy = self;
  if (objc_msgSend_hasHostCell(selfCopy, v9, v10, v11))
  {
    if (error)
    {
      *error = 1;
    }
  }

  else
  {
    v15 = objc_msgSend_astNodeArrayCopy(selfCopy, v12, v13, v14);
    TSCEASTStreamIterator::TSCEASTStreamIterator(v26, v15, context);
    dsCopy = ds;
    errorCopy = error;
    memset(v31, 0, sizeof(v31));
    v32 = 1065353216;
    v26[0] = &unk_2834A4E20;
    v33 = 0;
    TSCEASTStreamIterator::rewrite(v26, v16, v17, v18);
    if (v33 == 1)
    {
      if (error)
      {
        *error = 1;
      }
    }

    else if (v27 == 1)
    {
      v19 = v28;
      v28 = 0;
      v20 = [TSCEFormulaObject alloc];
      v22 = objc_msgSend_initWithNodeArray_translationFlags_(v20, v21, v19, selfCopy->_translationFlags._flags);

      selfCopy = v22;
      TSCEASTNodeArray::freeNodeArray(v19, v23);
    }

    v26[0] = &unk_2834A4B40;
    sub_2210BDEC0(v31);
    TSCEASTStreamIterator::~TSCEASTStreamIterator(v26, v24);
  }

  return selfCopy;
}

- (id)copyByForceSettingOwnerUIDs:(const TSKUIDStruct *)ds calcEngine:(id)engine
{
  engineCopy = engine;
  selfCopy = self;
  v11 = objc_msgSend_astNodeArrayCopy(selfCopy, v8, v9, v10);
  sub_2212C7250(&v25);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v29, engineCopy, &v25);
  TSCEASTStreamIterator::TSCEASTStreamIterator(&v25, v11, &v29);
  v25.var0.coordinate = &unk_2834A4CB0;
  v28 = *ds;
  TSCEASTStreamIterator::rewrite(&v25, v12, v13, v14);
  if (v26 == 1)
  {
    v16 = v27;
    v27 = 0;
    v17 = [TSCEFormulaObject alloc];
    v19 = objc_msgSend_initWithNodeArray_translationFlags_(v17, v18, v16, selfCopy->_translationFlags._flags);

    TSCEASTNodeArray::freeNodeArray(v16, v20);
    if (objc_msgSend_hasHostCell(selfCopy, v21, v22, v23))
    {
      selfCopy = objc_msgSend_copyBySettingHostTableUID_hostColumnUID_hostRowUID_(v19, v15, &selfCopy->_hostTableUID, &selfCopy->_hostColumnUID, &selfCopy->_hostRowUID);
    }

    else
    {
      selfCopy = v19;
    }
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(&v25, v15);

  return selfCopy;
}

- (id)copyByRemappingUids:(const void *)uids rowMap:(const void *)map ownerMap:(const void *)ownerMap clearIfMissing:(BOOL)missing
{
  selfCopy = self;
  v14 = objc_msgSend_astNodeArrayCopy(selfCopy, v11, v12, v13);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v34);
  TSCEASTRewriter::TSCEASTRewriter(v28, v14, &v34, 0);
  v28[0] = &unk_2834BA1C0;
  uidsCopy = uids;
  mapCopy = map;
  ownerMapCopy = ownerMap;
  missingCopy = missing;
  TSCEASTRewriter::rewrite(v28, v15, v16, v17);
  if (v29 == 1)
  {
    v18 = TSCEASTRewriter::resultArray(v28);
    v19 = [TSCEFormulaObject alloc];
    v21 = objc_msgSend_initWithNodeArray_translationFlags_(v19, v20, v18, selfCopy->_translationFlags._flags);

    TSCEASTNodeArray::freeNodeArray(v18, v22);
    if (objc_msgSend_hasHostCell(selfCopy, v23, v24, v25))
    {
      selfCopy = objc_msgSend_copyBySettingHostTableUID_hostColumnUID_hostRowUID_(v21, v26, &selfCopy->_hostTableUID, &selfCopy->_hostColumnUID, &selfCopy->_hostRowUID);
    }

    else
    {
      selfCopy = v21;
    }
  }

  TSCEASTRewriter::~TSCEASTRewriter(v28);
  return selfCopy;
}

- (id)copyByUpdatingLinkedTable:(const TSKUIDStruct *)table outfoundLinkedRef:(BOOL *)ref
{
  selfCopy = self;
  v10 = objc_msgSend_astNodeArrayCopy(selfCopy, v7, v8, v9);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v27);
  sub_221491114(v24, v10, &v27, table);
  TSCEASTStreamIterator::rewrite(v24, v11, v12, v13);
  if (ref)
  {
    *ref = v26;
  }

  if (v24[97] == 1)
  {
    v15 = v25;
    v25 = 0;
    v16 = [TSCEFormulaObject alloc];
    v18 = objc_msgSend_initWithNodeArray_translationFlags_(v16, v17, v15, selfCopy->_translationFlags._flags);

    TSCEASTNodeArray::freeNodeArray(v15, v19);
    if (objc_msgSend_hasHostCell(selfCopy, v20, v21, v22))
    {
      selfCopy = objc_msgSend_copyBySettingHostTableUID_hostColumnUID_hostRowUID_(v18, v14, &selfCopy->_hostTableUID, &selfCopy->_hostColumnUID, &selfCopy->_hostRowUID);
    }

    else
    {
      selfCopy = v18;
    }
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v24, v14);
  return selfCopy;
}

- (id)copyByUpgradingToArrayMode:(TSCEFormulaRewriteContext *)mode isExcelImport:(BOOL)import outArrayModeWarning:(BOOL *)warning
{
  selfCopy = self;
  v12 = selfCopy;
  flags = selfCopy->_translationFlags._flags;
  if ((flags & 0x40) != 0)
  {
    v15 = objc_msgSend_copyByConvertingColonToColonTract_(selfCopy, v9, mode, v11);
    v14 = objc_msgSend_astNodeArrayCopy(v15, v16, v17, v18);
    flags = objc_msgSend_translationFlags(v15, v19, v20, v21);
  }

  else
  {
    v14 = objc_msgSend_astNodeArrayCopy(selfCopy, v9, v10, v11);
  }

  sub_2211F6EF4(v31, v14, mode);
  importCopy = import;
  TSCEASTRewriter::rewrite(v31, v22, v23, v24);
  sub_2211F74D4(v31);
  if (v34 == 1 && (!import & v35 & 1) == 0 && v32 == 1)
  {
    v25 = TSCEASTRewriter::resultArray(v31);
    v26 = [TSCEFormulaObject alloc];
    v28 = objc_msgSend_initWithNodeArray_translationFlags_(v26, v27, v25, flags);

    TSCEASTNodeArray::freeNodeArray(v25, v29);
    *warning = 1;
  }

  else
  {
    v28 = v12;
  }

  TSCEASTRewriter::~TSCEASTRewriter(v31);
  return v28;
}

- (id)copyByRewritingForSageExport:(id)export targetDocumentSupportsCrossTableReferences:(BOOL)references outshouldBakeWholeFormula:(BOOL *)formula outFeaturesUsed:(char *)used
{
  exportCopy = export;
  v17 = objc_msgSend_calcEngine(exportCopy, v11, v12, v13);
  if (exportCopy)
  {
    objc_msgSend_containingCellRef(exportCopy, v14, v15, v16);
  }

  else
  {
    memset(v38, 0, 24);
  }

  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v50, v17, v38);

  v19 = objc_msgSend_copyByConvertingColonTractToColon_breakUpIntoRefs_(self, v18, &v50, 1);
  v23 = objc_msgSend_const_astNodeArray(v19, v20, v21, v22);
  sub_2211D3C68(v41, v23, &v50, references);
  (*(v41[0] + 48))(v41);
  if (v43 & 1) != 0 || (v45 & 1) != 0 || (v46 & 1) != 0 || (v47 & 1) != 0 || (v44 & 1) != 0 || (v48)
  {
    v24 = 1;
  }

  else
  {
    v24 = v49;
  }

  *formula = v24 & 1;
  if (used)
  {
    v25 = v44;
    *used = v44;
    if (v45)
    {
      v25 |= 2u;
      *used = v25;
    }

    if (v46 == 1)
    {
      v25 |= 4u;
      *used = v25;
    }

    if (v47 == 1)
    {
      v25 |= 8u;
      *used = v25;
    }

    if (v48 == 1)
    {
      v25 |= 0x10u;
      *used = v25;
    }

    if (v49 == 1)
    {
      *used = v25 | 0x20;
    }
  }

  v26 = v19;
  v28 = v26;
  v29 = v26;
  if (!*formula)
  {
    v29 = v26;
    if (v42 == 1)
    {
      sub_221207F00(v38, v26, &v50, exportCopy);
      referencesCopy = references;
      TSCEASTRewriter::rewrite(v38, v30, v31, v32);
      v33 = TSCEASTRewriter::resultArray(v38);
      *formula = v40;
      v34 = [TSCEFormulaObject alloc];
      v29 = objc_msgSend_initWithNodeArray_translationFlags_(v34, v35, v33, self->_translationFlags._flags);

      TSCEASTNodeArray::freeNodeArray(v33, v36);
      TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(v38);
    }
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v41, v27);

  return v29;
}

- (id)copyByRewritingForSageImport:(id)import containingCell:(const TSCECellRef *)cell
{
  importCopy = import;
  selfCopy = self;
  v11 = objc_msgSend_astNodeArrayCopy(selfCopy, v8, v9, v10);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v26, 0, cell);
  sub_2213F24DC(v24, v11, &v26, importCopy);
  TSCEASTRewriter::rewrite(v24, v12, v13, v14);
  v15 = TSCEASTNodeArray::containsTag(selfCopy->_astNodeArray, 28);
  if ((v24[97] | v15))
  {
    v16 = TSCEASTRewriter::resultArray(v24);
    flags = selfCopy->_translationFlags._flags;
    v18 = [TSCEFormulaObject alloc];
    v20 = 64;
    if (!v15)
    {
      v20 = 0;
    }

    v21 = objc_msgSend_initWithNodeArray_translationFlags_(v18, v19, v16, flags & 0xFFFFFFFFFFFFFFBFLL | v20);

    selfCopy = v21;
    TSCEASTNodeArray::freeNodeArray(v16, v22);
  }

  TSCEASTRewriter::~TSCEASTRewriter(v24);
  return selfCopy;
}

- (id)copyByRewritingForExcelImport:(id)import outFormulaReplacedForExcelCompatWarning:(BOOL *)warning functionNameReplacedForExcelCompat:(id *)compat formulaFormatFromCell:(unsigned int)cell
{
  v6 = *&cell;
  importCopy = import;
  v14 = objc_msgSend_allowAbort(importCopy, v11, v12, v13);
  objc_msgSend_setAllowAbort_(importCopy, v15, 0, v16);
  v20 = objc_msgSend_astNodeArrayCopy(self, v17, v18, v19);
  v27 = objc_msgSend_calcEngine(importCopy, v21, v22, v23);
  if (importCopy)
  {
    objc_msgSend_containingCellRef(importCopy, v24, v25, v26);
  }

  else
  {
    memset(&v51, 0, sizeof(v51));
  }

  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v55, v27, &v51);

  sub_221271C84(v52, v20, &v55);
  TSCEASTRewriter::rewrite(v52, v28, v29, v30);
  v31 = TSCEASTRewriter::resultArray(v52);
  v32 = v53 == 1;
  *warning = v53 == 1;
  if (compat && v32)
  {
    *compat = v54;
  }

  v33 = [TSCEFormulaObject alloc];
  v35 = objc_msgSend_initWithNodeArray_translationFlags_(v33, v34, v31, self->_translationFlags._flags);
  TSCEASTNodeArray::freeNodeArray(v31, v36);
  sub_221271D88(&v51, v35, &v55, importCopy);
  TSCEASTRewriter::rewrite(&v51, v37, v38, v39);
  sub_221272424(&v51, v6, v40, v41);
  v42 = TSCEASTRewriter::resultArray(&v51);
  flags = self->_translationFlags._flags;
  v44 = [TSCEFormulaObject alloc];
  v46 = objc_msgSend_initWithNodeArray_translationFlags_(v44, v45, v42, flags & 0xFFFFFFFFFFFFFFB9 | 0x40);
  TSCEASTNodeArray::freeNodeArray(v42, v47);
  objc_msgSend_setAllowAbort_(importCopy, v48, v14, v49);
  TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(&v51);

  TSCEASTRewriter::~TSCEASTRewriter(v52);
  return v46;
}

- (id)copyByRemovingNumberToDateCoercion:(id)coercion
{
  coercionCopy = coercion;
  v8 = objc_msgSend_allowAbort(coercionCopy, v5, v6, v7);
  objc_msgSend_setAllowAbort_(coercionCopy, v9, 0, v10);
  v17 = objc_msgSend_calcEngine(coercionCopy, v11, v12, v13);
  if (coercionCopy)
  {
    objc_msgSend_containingCellRef(coercionCopy, v14, v15, v16);
  }

  else
  {
    memset(v32, 0, 24);
  }

  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v34, v17, v32);

  sub_2212D6930(v32, self, &v34, coercionCopy);
  TSCEASTRewriter::rewrite(v32, v18, v19, v20);
  v23 = self->_translationFlags._flags & 0xFB;
  if (v33 == 1)
  {
    v24 = TSCEASTRewriter::resultArray(v32);
    v25 = [TSCEFormulaObject alloc];
    v27 = objc_msgSend_initWithNodeArray_translationFlags_(v25, v26, v24, v23);
    TSCEASTNodeArray::freeNodeArray(v24, v28);
  }

  else
  {
    v27 = objc_msgSend_copyBySettingTranslationFlags_(self, v21, self->_translationFlags._flags & 0xFB, v22);
  }

  objc_msgSend_setAllowAbort_(coercionCopy, v29, v8, v30, *&v32[0].coordinate, v32[0]._tableUID._lower, v32[0]._tableUID._upper);
  TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(v32);

  return v27;
}

- (id)formulaNodeTreeForExcelExport:(id)export
{
  exportCopy = export;
  selfCopy = self;
  v12 = objc_msgSend_calcEngine(exportCopy, v6, v7, v8);
  if (exportCopy)
  {
    objc_msgSend_containingCellRef(exportCopy, v9, v10, v11);
  }

  else
  {
    memset(v53, 0, 24);
  }

  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v57, v12, v53);
  v16 = objc_msgSend_const_astNodeArray(selfCopy, v13, v14, v15);
  sub_2216D3950(v54, v16, &v57);
  (*(v54[0] + 48))(v54);
  v20 = v55;
  v21 = selfCopy;
  if (v56 == 1)
  {
    v22 = objc_msgSend_astNodeArrayCopy(selfCopy, v17, v18, v19);
    TSCEASTRewriter::TSCEASTRewriter(v53, v22, &v57, 0);
    v53[0].coordinate = &unk_2834A2B40;
    TSCEASTRewriter::rewrite(v53, v23, v24, v25);
    v26 = TSCEASTRewriter::resultArray(v53);
    v27 = [TSCEFormulaObject alloc];
    v21 = objc_msgSend_initWithNodeArray_translationFlags_(v27, v28, v26, selfCopy->_translationFlags._flags);

    TSCEASTNodeArray::freeNodeArray(v26, v29);
    TSCEASTRewriter::~TSCEASTRewriter(v53);
  }

  if (v20)
  {
    sub_221494998(v53, v21, &v57, exportCopy);
    TSCEASTRewriter::rewrite(v53, v30, v31, v32);
    v33 = TSCEASTRewriter::resultArray(v53);
    v34 = [TSCEFormulaObject alloc];
    v36 = objc_msgSend_initWithNodeArray_translationFlags_(v34, v35, v33, selfCopy->_translationFlags._flags);

    TSCEASTNodeArray::freeNodeArray(v33, v37);
    TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(v53);
  }

  else
  {
    v36 = v21;
  }

  v38 = objc_msgSend_copyByConvertingColonTractToColon_breakUpIntoRefs_(v36, v17, &v57, 1, *&v53[0].coordinate, v53[0]._tableUID._lower, v53[0]._tableUID._upper);

  v41 = objc_msgSend_evaluateForPartialResultsWithContext_(v38, v39, exportCopy, v40);
  v42 = [TSCEPartialResultMapByOffset alloc];
  v45 = objc_msgSend_initWithPartialResultTree_(v42, v43, v41, v44);
  v49 = [TSCEFormulaNodeTree alloc];
  if (exportCopy)
  {
    objc_msgSend_containingCellRef(exportCopy, v46, v47, v48);
  }

  else
  {
    memset(v53, 0, 24);
  }

  v50 = objc_msgSend_initWithFormula_options_partialResults_calcEngine_hostCellRef_(v49, v46, v38, 8, v45, v12, v53);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v54, v51);

  return v50;
}

- (id)copyByRewritingNumberToDurationForSageImport:(const TSCECellRef *)import durationUnitLargest:(unsigned __int8)largest
{
  selfCopy = self;
  v9 = objc_msgSend_astNodeArrayCopy(selfCopy, v6, v7, v8);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v24);
  TSCEASTStreamIterator::TSCEASTStreamIterator(v20, v9, &v24);
  v20[0] = &unk_2834A5120;
  largestCopy = largest;
  TSCEASTStreamIterator::rewrite(v20, v10, v11, v12);
  if (v21 == 1)
  {
    v14 = v22;
    v22 = 0;
    v15 = [TSCEFormulaObject alloc];
    v17 = objc_msgSend_initWithNodeArray_translationFlags_(v15, v16, v14, selfCopy->_translationFlags._flags);

    selfCopy = v17;
    TSCEASTNodeArray::freeNodeArray(v14, v18);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v20, v13);
  return selfCopy;
}

- (id)copyByOffsettingRelativeReferences:(id)references oldContainingCell:(const TSCECellRef *)cell newContainingTable:(const TSKUIDStruct *)table offset:(TSUColumnRowOffset)offset
{
  referencesCopy = references;
  selfCopy = self;
  v15 = objc_msgSend_astNodeArrayCopy(selfCopy, v12, v13, v14);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v26, referencesCopy, cell);
  sub_221572E80(v25, v15, &v26, table->_lower, table->_upper, *&offset);
  TSCEASTRewriter::rewrite(v25, v16, v17, v18);
  if (v25[97] == 1)
  {
    v19 = TSCEASTRewriter::resultArray(v25);
    v20 = [TSCEFormulaObject alloc];
    v22 = objc_msgSend_initWithNodeArray_translationFlags_(v20, v21, v19, selfCopy->_translationFlags._flags);

    selfCopy = v22;
    TSCEASTNodeArray::freeNodeArray(v19, v23);
  }

  TSCEASTRewriter::~TSCEASTRewriter(v25);

  return selfCopy;
}

- (id)copyByOffsettingRelativeReferences:(TSUColumnRowOffset)references
{
  selfCopy = self;
  v8 = objc_msgSend_astNodeArrayCopy(selfCopy, v5, v6, v7);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v19);
  sub_221572EDC(v18, v8, &v19, *&references);
  TSCEASTRewriter::rewrite(v18, v9, v10, v11);
  if (v18[97] == 1)
  {
    v12 = TSCEASTRewriter::resultArray(v18);
    v13 = [TSCEFormulaObject alloc];
    v15 = objc_msgSend_initWithNodeArray_translationFlags_(v13, v14, v12, selfCopy->_translationFlags._flags);

    selfCopy = v15;
    TSCEASTNodeArray::freeNodeArray(v12, v16);
  }

  TSCEASTRewriter::~TSCEASTRewriter(v18);
  return selfCopy;
}

- (id)copyByRewritingGroupUid:(const TSKUIDStruct *)uid groupByUID:(const TSKUIDStruct *)d
{
  selfCopy = self;
  v10 = objc_msgSend_astNodeArrayCopy(selfCopy, v7, v8, v9);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v23);
  sub_2214CE78C(v21, v10, &v23, d, uid);
  TSCEASTStreamIterator::rewrite(v21, v11, v12, v13);
  if (v21[97] == 1)
  {
    v15 = v22;
    v22 = 0;
    v16 = [TSCEFormulaObject alloc];
    v18 = objc_msgSend_initWithNodeArray_translationFlags_(v16, v17, v15, selfCopy->_translationFlags._flags);

    selfCopy = v18;
    TSCEASTNodeArray::freeNodeArray(v15, v19);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v21, v14);
  return selfCopy;
}

- (unsigned)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v8 = *(archive + 3);
  if (!v8)
  {
    v9 = *(archive + 1);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive>(v9, v6);
    *(archive + 3) = v8;
  }

  v10 = sub_2215C8348(v8, self->_astNodeArray, archiverCopy, 1);
  flags = self->_translationFlags._flags;
  if (self->_translationFlags._flags)
  {
    *(archive + 4) |= 2u;
    v12 = *(archive + 4);
    if (!v12)
    {
      v13 = *(archive + 1);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaTranslationFlagsArchive>(v13);
      *(archive + 4) = v12;
      flags = self->_translationFlags._flags;
    }

    v14 = *(v12 + 16);
    *(v12 + 24) = (flags & 2) != 0;
    *(v12 + 25) = (flags & 4) != 0;
    *(v12 + 26) = (flags & 0x20) != 0;
    *(v12 + 27) = flags >> 7;
    *(v12 + 16) = v14 | 0x1F;
    *(v12 + 28) = (flags & 8) != 0;
    if ((flags & 0x20) != 0)
    {
      if (self->_hostTableUID._lower || self->_hostTableUID._upper)
      {
        *(archive + 4) |= 4u;
        v15 = *(archive + 5);
        if (!v15)
        {
          v16 = *(archive + 1);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x223DA0360](v16);
          *(archive + 5) = v15;
        }

        TSKUIDStruct::saveToMessage(&self->_hostTableUID, v15);
      }

      if (self->_hostColumnUID._lower || self->_hostColumnUID._upper)
      {
        *(archive + 4) |= 8u;
        v17 = *(archive + 6);
        if (!v17)
        {
          v18 = *(archive + 1);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = MEMORY[0x223DA0360](v18);
          *(archive + 6) = v17;
        }

        TSKUIDStruct::saveToMessage(&self->_hostColumnUID, v17);
      }

      if (self->_hostRowUID._lower || self->_hostRowUID._upper)
      {
        *(archive + 4) |= 0x10u;
        v19 = *(archive + 7);
        if (!v19)
        {
          v20 = *(archive + 1);
          if (v20)
          {
            v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
          }

          v19 = MEMORY[0x223DA0360](v20);
          *(archive + 7) = v19;
        }

        TSKUIDStruct::saveToMessage(&self->_hostRowUID, v19);
      }
    }
  }

  return v10;
}

+ (id)parseFormula:(id)formula calcEngine:(id)engine hostTableInfo:(id)info containingCellRef:(const TSCECellRef *)ref parseOptionsContext:(id)context
{
  formulaCopy = formula;
  engineCopy = engine;
  infoCopy = info;
  contextCopy = context;
  v68 = infoCopy;
  v69 = contextCopy;
  if (!engineCopy)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "+[TSCEFormulaObject parseFormula:calcEngine:hostTableInfo:containingCellRef:parseOptionsContext:]", v16);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaObject.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 2208, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }

  isSageUpgrade = objc_msgSend_isSageUpgrade(contextCopy, v14, v15, v16);
  if (objc_msgSend_hasPrefix_(formulaCopy, v28, @"=", v29))
  {
    v33 = objc_msgSend_substringFromIndex_(formulaCopy, v30, 1, v32);

    formulaCopy = v33;
  }

  if (isSageUpgrade)
  {
    v34 = objc_opt_new();
    v35 = sub_221141254(v34, formulaCopy);

    formulaCopy = v35;
  }

  if ((objc_msgSend_isChartFormula(contextCopy, v30, v31, v32) & 1) == 0 && objc_msgSend_hasPrefix_(formulaCopy, v36, @"__CHART("), v38)
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "+[TSCEFormulaObject parseFormula:calcEngine:hostTableInfo:containingCellRef:parseOptionsContext:]", v38);
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaObject.mm", v42);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v44, v40, v43, 2230, 0, "Only chart formulas should start with the chart prefix.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47);
  }

  v48 = objc_msgSend_documentRoot(engineCopy, v36, v37, v38);
  v52 = objc_msgSend_stylesheet(v48, v49, v50, v51);

  v53 = [TSCEUnpersistedStorage alloc];
  v57 = objc_msgSend_context(engineCopy, v54, v55, v56);
  v59 = objc_msgSend_initWithContext_string_stylesheet_kind_(v53, v58, v57, formulaCopy, v52, 0);

  TSTParser::TSTParser(v71, engineCopy, v59, v69);
  coordinate = ref->coordinate;
  v61 = TSTParser::parse(v60, infoCopy, &coordinate);
  v62 = v72;
  v66 = v62;
  if (v61)
  {
    __C(0);
  }

  if (!v62)
  {
    v66 = objc_msgSend_syntaxError(TSCEError, v63, v64, v65);
  }

  objc_msgSend_setError_(v69, v63, v66, v65);

  TSTParser::~TSTParser(v71);

  return 0;
}

+ (id)parseFormula:(id)formula calcEngine:(id)engine containingCellRef:(const TSCECellRef *)ref parseOptionsContext:(id)context
{
  formulaCopy = formula;
  engineCopy = engine;
  contextCopy = context;
  tableUID = ref->_tableUID;
  v15 = objc_msgSend_tableResolverForTableUID_(engineCopy, v13, &tableUID, v14);
  v19 = v15;
  if (v15)
  {
    v20 = objc_msgSend_tableInfo(v15, v16, v17, v18);
    objc_msgSend_parseFormula_calcEngine_hostTableInfo_containingCellRef_parseOptionsContext_(self, v21, formulaCopy, engineCopy, v20, ref, contextCopy);
  }

  else
  {
    v20 = 0;
    objc_msgSend_parseFormula_calcEngine_hostTableInfo_containingCellRef_parseOptionsContext_(self, v16, formulaCopy, engineCopy, 0, ref, contextCopy);
  }
  v22 = ;

  return v22;
}

@end