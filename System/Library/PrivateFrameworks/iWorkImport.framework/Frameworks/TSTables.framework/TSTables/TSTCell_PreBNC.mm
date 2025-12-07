@interface TSTCell_PreBNC
+ (BOOL)formatType:(unsigned int)type sharesASpareSlotWithFormatType:(unsigned int)formatType;
+ (BOOL)mismatchBetweenValueType:(unsigned __int8)type andFormatType:(unsigned int)formatType;
+ (id)stringForCellValueType:(unsigned __int8)type;
- (BOOL)clearNoncurrentImplicitFormats;
- (BOOL)currentFormatUsesAccountingStyle;
- (BOOL)dataIsReplaceable;
- (BOOL)hasEqualContentToCell:(id)cell usingRichTextObjectComparisonBlock:(id)block;
- (BOOL)hasEqualValueToCell:(id)cell;
- (BOOL)hasExplicitFormatOfType:(unsigned int)type allowMismatchedSpare:(BOOL)spare;
- (BOOL)hasFormatOfType:(unsigned int)type allowMismatchedSpare:(BOOL)spare;
- (BOOL)hasFormulaEvaluationError;
- (BOOL)hasFormulaSyntaxError;
- (BOOL)hasMismatchedFormatAndValue;
- (BOOL)hasRichText;
- (BOOL)isEmpty;
- (BOOL)isEmptyForDataStore;
- (BOOL)isMostRecentlyExplicitPercent;
- (BOOL)p_currentFormatIsEqualToOtherCellFormat:(id)format;
- (NSDate)dateValue;
- (NSString)customFormatString;
- (NSString)formattedValue;
- (NSString)formulaSyntaxErrorString;
- (NSString)stringForEditing;
- (NSString)stringForUnderlyingValue;
- (NSString)stringValue;
- (TSCEFormulaObject)formula;
- (TSDFill)cellFill;
- (TSTCellSpec)cellSpecForDiff;
- (TSTCell_PreBNC)initWithLocale:(id)locale;
- (TSTCell_PreBNC)initWithStorageRef:(id *)ref dataStore:(id)store;
- (TSWPParagraphStyle)effectiveTextStyle;
- (TSWPStorage)formulaSyntaxError;
- (TSWPStorage)richTextStorageForLayout;
- (TSWPStorage)richTextValue;
- (double)doubleValue;
- (double)durationTimeIntervalValue;
- (id)cellFillComparedToDefault:(id)default suppressCS:(BOOL)s isDefault:(BOOL *)isDefault;
- (id)cellValueDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)p_spareFormatOfType:(unsigned int)type allowMismatchedSpare:(BOOL)spare explicitOnly:(BOOL)only;
- (id)upgradedBraveNewCell;
- (int)writingDirection;
- (unsigned)currentFormatNegativeStyle;
- (unsigned)formatType;
- (unsigned)formulaSyntaxErrorID;
- (unsigned)interactionType;
- (unsigned)richTextID;
- (unsigned)stringID;
- (void)applyPopupChoiceIndex:(unint64_t)index;
- (void)bakeFormulaToValue;
- (void)clear;
- (void)clearAllFormats;
- (void)clearDataListIDs;
- (void)clearSpareFormatOfType:(unsigned int)type;
- (void)clearStrokes;
- (void)clearValue;
- (void)copyAllFormatsToCell:(id)cell;
- (void)copyJustStrokesToCell:(id)cell;
- (void)copyJustStyleAndStrokesToCell:(id)cell;
- (void)copyToCell:(id)cell;
- (void)inflateFromStorageRef:(id *)ref dataStore:(id)store suppressingTransmutation:(BOOL)transmutation;
- (void)p_TSTCellSetMostRecentlySetDateFormat:(int)format;
- (void)p_TSTCellSetMostRecentlySetNumberFormat:(int)format;
- (void)p_TSTCellSetMostRecentlySetTextFormat:(int)format;
- (void)p_setFormatExplicit:(BOOL)explicit fromFormatType:(unsigned int)type setMostRecentlySet:(BOOL)set;
- (void)p_setFormatFlags:(unsigned __int16)flags explicit:(BOOL)explicit;
- (void)p_setFormatForFormulaResult:(id)result propagation:(BOOL)propagation;
- (void)setBoolValue:(BOOL)value;
- (void)setCellSpec:(id)spec clearingID:(BOOL)d;
- (void)setCellSpecRepairingFormats:(id)formats;
- (void)setCellStyle:(id)style clearingID:(BOOL)d;
- (void)setCommentStorage:(id)storage clearingID:(BOOL)d;
- (void)setConditionalStyle:(id)style clearingID:(BOOL)d;
- (void)setCurrentFormat:(id)format flags:(unsigned __int16)flags;
- (void)setDateValue:(id)value;
- (void)setDefaultFormatForValue;
- (void)setDoubleValue:(double)value;
- (void)setDurationTimeIntervalValue:(double)value;
- (void)setFormat:(id)format shouldSetExplFlags:(BOOL)flags isExplicit:(BOOL)explicit makeCurrent:(BOOL)current clearingID:(BOOL)d;
- (void)setFormula:(id)formula clearingID:(BOOL)d;
- (void)setFormulaSyntaxError:(id)error clearingID:(BOOL)d;
- (void)setFormulaSyntaxErrorID:(unsigned int)d;
- (void)setImportWarningSet:(id)set clearingID:(BOOL)d;
- (void)setRichTextID:(unsigned int)d;
- (void)setRichTextValue:(id)value clearingID:(BOOL)d convertToPlaintextIfPossible:(BOOL)possible;
- (void)setStringID:(unsigned int)d;
- (void)setStringValue:(id)value clearingID:(BOOL)d;
- (void)setStringValue:(id)value clearingID:(BOOL)d shouldWrap:(BOOL)wrap;
- (void)setTextStyle:(id)style clearingID:(BOOL)d;
- (void)setValueType:(unsigned __int8)type;
- (void)updateCustomFormatFromPaste:(id)paste;
@end

@implementation TSTCell_PreBNC

- (id)upgradedBraveNewCell
{
  v3 = [TSTCell alloc];
  v7 = objc_msgSend_locale(self, v4, v5, v6);
  v10 = objc_msgSend_initWithLocale_(v3, v8, v7, v9);

  v14 = objc_msgSend_numberFormat(self, v11, v12, v13);

  if (v14)
  {
    v18 = objc_msgSend_numberFormat(self, v15, v16, v17);
    hasExplicitFormatOfType_allowMismatchedSpare = objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v19, 256, 1);
    objc_msgSend_setFormat_isExplicit_(v10, v21, v18, hasExplicitFormatOfType_allowMismatchedSpare);
  }

  v22 = objc_msgSend_currencyFormat(self, v15, v16, v17);

  if (v22)
  {
    v26 = objc_msgSend_currencyFormat(self, v23, v24, v25);
    v28 = objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v27, 257, 1);
    objc_msgSend_setFormat_isExplicit_(v10, v29, v26, v28);
  }

  v30 = objc_msgSend_dateFormat(self, v23, v24, v25);

  if (v30)
  {
    v34 = objc_msgSend_dateFormat(self, v31, v32, v33);
    v36 = objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v35, 261, 1);
    objc_msgSend_setFormat_isExplicit_(v10, v37, v34, v36);
  }

  v38 = objc_msgSend_durationFormat(self, v31, v32, v33);

  if (v38)
  {
    v42 = objc_msgSend_numberFormat(self, v39, v40, v41);
    v44 = objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v43, 268, 1);
    objc_msgSend_setFormat_isExplicit_(v10, v45, v42, v44);
  }

  v46 = objc_msgSend_currentFormat(self, v39, v40, v41);

  if (v46)
  {
    v50 = objc_msgSend_currentFormat(self, v47, v48, v49);
    IsExplicit = objc_msgSend_currentFormatIsExplicit(self, v51, v52, v53);
    objc_msgSend_setCurrentFormat_isExplicit_(v10, v55, v50, IsExplicit);
  }

  v56 = objc_msgSend_currentFormat(v10, v47, v48, v49);
  v60 = objc_msgSend_currencyFormat(v10, v57, v58, v59);
  v64 = v60;
  if (v56 == v60)
  {

    goto LABEL_26;
  }

  v65 = objc_msgSend_currentFormat(v10, v61, v62, v63);
  v69 = objc_msgSend_numberFormat(v10, v66, v67, v68);

  if (v65 == v69)
  {
    goto LABEL_26;
  }

  v73 = objc_msgSend_p_mostRecentlySetNumberFormatType(self, v70, v71, v72);
  switch(v73)
  {
    case 1:
      goto LABEL_24;
    case 2:
      v77 = objc_msgSend_baseFormat(self, v74, v75, v76);
      v87 = objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v86, 269, 1);
      objc_msgSend_setFormat_isExplicit_(v10, v88, v77, v87);
      goto LABEL_20;
    case 3:
      v77 = objc_msgSend_customFormat(self, v74, v75, v76);
      if (objc_msgSend_formatType(v77, v78, v79, v80) == 270)
      {
        v84 = objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v81, 270, 1);
        objc_msgSend_setFormat_isExplicit_(v10, v85, v77, v84);
LABEL_20:

        break;
      }

      if (objc_msgSend_formatType(v77, v81, v82, v83) != 274)
      {
        goto LABEL_20;
      }

      v93 = objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v92, 274, 1);
      objc_msgSend_setFormat_isExplicit_(v10, v94, v77, v93);

LABEL_24:
      LODWORD(v91) = objc_msgSend_explicitFormatFlags(v10, v74, v75, v76) | 0x800;
      goto LABEL_25;
  }

  v91 = objc_msgSend_explicitFormatFlags(v10, v74, v75, v76) & 0xFFFFF7FFLL;
LABEL_25:
  objc_msgSend_setExplicitFormatFlags_(v10, v89, v91, v90);
LABEL_26:
  v95 = objc_msgSend_valueType(self, v70, v71, v72);
  if (v95 > 5)
  {
    if (v95 <= 7)
    {
      if (v95 == 6)
      {
        v108 = objc_msgSend_BOOLValue(self, v96, v97, v98);
        objc_msgSend_setBoolValue_(v10, v109, v108, v110);
      }

      else
      {
        objc_msgSend_durationTimeIntervalValue(self, v96, v97, v98);
        objc_msgSend_setDurationTimeIntervalValue_(v10, v105, v106, v107);
      }

      goto LABEL_50;
    }

    switch(v95)
    {
      case 8:
        v99 = objc_msgSend_formulaSyntaxError(self, v96, v97, v98);
        v116 = objc_msgSend_context(v99, v113, v114, v115);
        v120 = objc_msgSend_stylesheet(v99, v117, v118, v119);
        v122 = objc_msgSend_i_copyIntoContext_stylesheet_(v99, v121, v116, v120);
        objc_msgSend_setFormulaSyntaxError_(v10, v123, v122, v124);

        break;
      case 9:
        v99 = objc_msgSend_richTextValue(self, v96, v97, v98);
        objc_msgSend_setRichTextValue_(v10, v125, v99, v126);
        break;
      case 10:
        goto LABEL_38;
      default:
        goto LABEL_50;
    }

LABEL_49:

    goto LABEL_50;
  }

  if (v95 > 2)
  {
    if (v95 == 3)
    {
      v99 = objc_msgSend_stringValue(self, v96, v97, v98);
      objc_msgSend_setStringValue_(v10, v111, v99, v112);
    }

    else
    {
      if (v95 == 4)
      {
        objc_msgSend_setProvidedValueTypeBeforeUpgrade(v10, v96, v97, v98);
        goto LABEL_50;
      }

      v99 = objc_msgSend_dateValue(self, v96, v97, v98);
      objc_msgSend_setDateValue_(v10, v100, v99, v101);
    }

    goto LABEL_49;
  }

  if (!v95)
  {
    objc_msgSend_clearValue(v10, v96, v97, v98);
    goto LABEL_50;
  }

  if (v95 != 2)
  {
    goto LABEL_50;
  }

LABEL_38:
  if (objc_msgSend_formatType(self, v96, v97, v98) == 257 || objc_msgSend_formatType(self, v102, v103, v104) == 274)
  {
    objc_msgSend_setCurrencyDoubleValue_(v10, v102, v103, v104, self->_valueDouble);
  }

  else
  {
    objc_msgSend_setNumberDoubleValue_(v10, v102, v103, v104, self->_valueDouble);
  }

LABEL_50:
  if (objc_msgSend_hasMismatchedFormatAndValue(v10, v96, v97, v98))
  {
    v130 = MEMORY[0x277CCACA8];
    v131 = objc_msgSend_cellValueTypeDescription(v10, v127, v128, v129);
    objc_msgSend_formatType(v10, v132, v133, v134);
    v135 = NSStringForTSUFormatType();
    v138 = objc_msgSend_stringWithFormat_(v130, v136, @"Warning: Creating brave new cell with value type %@ but mismatched format type %@, repairing", v137, v131, v135);

    v139 = MEMORY[0x277D81150];
    v142 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v140, "[TSTCell_PreBNC upgradedBraveNewCell]", v141);
    v145 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v143, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_PreBNC.mm", v144);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v139, v146, v142, v145, 211, 0, "%{public}@", v138);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v147, v148, v149);
    objc_msgSend_setDefaultFormatForValue(v10, v150, v151, v152);
  }

  v153 = objc_msgSend_cellFlags(self, v127, v128, v129);
  objc_msgSend_setCellFlags_(v10, v154, v153, v155);
  v159 = objc_msgSend_cellSpec(self, v156, v157, v158);
  objc_msgSend_setCellSpec_(v10, v160, v159, v161);

  v165 = objc_msgSend_cellStyle(self, v162, v163, v164);
  objc_msgSend_setCellStyle_(v10, v166, v165, v167);

  v171 = objc_msgSend_textStyle(self, v168, v169, v170);
  objc_msgSend_setTextStyle_(v10, v172, v171, v173);

  v177 = objc_msgSend_conditionalStyle(self, v174, v175, v176);
  objc_msgSend_setConditionalStyle_(v10, v178, v177, v179);

  v183 = objc_msgSend_conditionalStyleAppliedRule(self, v180, v181, v182);
  objc_msgSend_setConditionalStyleAppliedRule_(v10, v184, v183, v185);
  v189 = objc_msgSend_importWarningSet(self, v186, v187, v188);
  objc_msgSend_setImportWarningSet_(v10, v190, v189, v191);

  v195 = objc_msgSend_commentStorage(self, v192, v193, v194);
  objc_msgSend_setCommentStorage_(v10, v196, v195, v197);

  return v10;
}

- (TSTCell_PreBNC)initWithLocale:(id)locale
{
  localeCopy = locale;
  v22.receiver = self;
  v22.super_class = TSTCell_PreBNC;
  v5 = [(TSTCell_PreBNC *)&v22 init];
  v8 = v5;
  if (v5)
  {
    v5->_conditionalStyleAppliedRule = 15;
    if (!localeCopy)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTCell_PreBNC initWithLocale:]", v7);
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_PreBNC.mm", v12);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 236, 0, "invalid nil value for '%{public}s'", "locale");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
      localeCopy = objc_msgSend_currentLocale(MEMORY[0x277D81228], v18, v19, v20);
    }

    objc_storeStrong(&v8->_locale, localeCopy);
  }

  return v8;
}

- (TSTCell_PreBNC)initWithStorageRef:(id *)ref dataStore:(id)store
{
  storeCopy = store;
  v10 = objc_msgSend_documentRoot(storeCopy, v7, v8, v9);
  v14 = objc_msgSend_documentLocale(v10, v11, v12, v13);
  v17 = objc_msgSend_initWithLocale_(self, v15, v14, v16);

  if (v17)
  {
    objc_msgSend_inflateFromStorageRef_dataStore_(v17, v18, ref, storeCopy);
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_msgSend_allocWithZone_(TSTCell_PreBNC, a2, zone, v3);
  v8 = objc_msgSend_initWithLocale_(v5, v6, self->_locale, v7);
  objc_msgSend_copyToCell_(self, v9, v8, v10);
  return v8;
}

- (void)copyToCell:(id)cell
{
  cellCopy = cell;
  if (cellCopy)
  {
    objc_msgSend_clear(cellCopy, v4, v5, v6);
    *(cellCopy + 18) = self->_cellFlags;
    *(cellCopy + 32) = self->_valueType;
    cellCopy[1] = *&self->_valueDouble;
    objc_storeStrong(cellCopy + 3, self->_valueObject);
    *(cellCopy + 4) = self->_valueID;
    *(cellCopy + 10) = self->_cellStyleID;
    objc_storeStrong(cellCopy + 13, self->_cellStyle);
    *(cellCopy + 11) = self->_textStyleID;
    objc_storeStrong(cellCopy + 14, self->_textStyle);
    *(cellCopy + 12) = self->_conditionalStyleID;
    objc_storeStrong(cellCopy + 15, self->_conditionalStyle);
    *(cellCopy + 33) = self->_conditionalStyleAppliedRule;
    v10 = objc_msgSend_copy(self->_cellBorder, v7, v8, v9);
    v11 = cellCopy[16];
    cellCopy[16] = v10;

    *(cellCopy + 13) = self->_formulaID;
    objc_storeStrong(cellCopy + 29, self->_cellSpec);
    *(cellCopy + 17) = self->_explicitFormatFlags;
    *(cellCopy + 14) = self->_currentFormatID;
    objc_storeStrong(cellCopy + 17, self->_currentFormat);
    *(cellCopy + 15) = self->_numberFormatID;
    objc_storeStrong(cellCopy + 18, self->_numberFormat);
    *(cellCopy + 16) = self->_currencyFormatID;
    objc_storeStrong(cellCopy + 19, self->_currencyFormat);
    *(cellCopy + 17) = self->_dateFormatID;
    objc_storeStrong(cellCopy + 20, self->_dateFormat);
    *(cellCopy + 18) = self->_durationFormatID;
    objc_storeStrong(cellCopy + 21, self->_durationFormat);
    *(cellCopy + 19) = self->_customFormatID;
    objc_storeStrong(cellCopy + 22, self->_customFormat);
    *(cellCopy + 20) = self->_baseFormatID;
    objc_storeStrong(cellCopy + 23, self->_baseFormat);
    *(cellCopy + 21) = self->_controlFormatID;
    objc_storeStrong(cellCopy + 24, self->_controlFormat);
    *(cellCopy + 22) = self->_multipleChoiceListFormatID;
    objc_storeStrong(cellCopy + 25, self->_multipleChoiceListFormat);
    *(cellCopy + 23) = self->_commentStorageID;
    objc_storeStrong(cellCopy + 27, self->_commentStorage);
    *(cellCopy + 24) = self->_importWarningSetID;
    objc_storeStrong(cellCopy + 28, self->_importWarningSet);
    objc_storeStrong(cellCopy + 26, self->_locale);
  }
}

- (void)inflateFromStorageRef:(id *)ref dataStore:(id)store suppressingTransmutation:(BOOL)transmutation
{
  transmutationCopy = transmutation;
  storeCopy = store;
  sub_221396A38(&ref->var0.var0, self);
  if (storeCopy)
  {
    v11 = objc_msgSend_documentRoot(storeCopy, v8, v9, v10);
    v15 = objc_msgSend_documentLocale(v11, v12, v13, v14);
    locale = self->_locale;
    self->_locale = v15;

    objc_msgSend_resolveDataListKeysForPreBNCCell_suppressTransmutation_sourceStorageVersion_(storeCopy, v17, self, transmutationCopy, ref->var0.var0);
  }
}

- (BOOL)p_currentFormatIsEqualToOtherCellFormat:(id)format
{
  formatCopy = format;
  currentFormat = self->_currentFormat;
  v12 = objc_msgSend_currentFormat(formatCopy, v6, v7, v8);
  if (currentFormat == v12)
  {
    isEqual = 1;
  }

  else
  {
    v13 = self->_currentFormat;
    v14 = objc_msgSend_currentFormat(formatCopy, v9, v10, v11);
    isEqual = objc_msgSend_isEqual_(v13, v15, v14, v16);
  }

  return isEqual;
}

- (BOOL)hasEqualContentToCell:(id)cell usingRichTextObjectComparisonBlock:(id)block
{
  cellCopy = cell;
  blockCopy = block;
  if ((objc_msgSend_hasCellSpec(self, v8, v9, v10) & 1) != 0 || objc_msgSend_hasCellSpec(cellCopy, v11, v12, v13))
  {
    if (objc_msgSend_hasFormula(self, v11, v12, v13) && objc_msgSend_hasFormula(cellCopy, v14, v15, v16))
    {
      v17 = objc_msgSend_asFormulaSpec(self->_cellSpec, v14, v15, v16);
      v21 = objc_msgSend_cellSpec(cellCopy, v18, v19, v20);
      isEquivalent = objc_msgSend_isEquivalent_(v17, v22, v21, v23);

      if (!isEquivalent)
      {
LABEL_18:
        LOBYTE(v28) = 0;
        goto LABEL_19;
      }

      if (objc_msgSend_interactionType(self->_cellSpec, v25, v26, v27) == 1)
      {
        LOBYTE(v28) = 1;
        goto LABEL_19;
      }
    }

    else
    {
      if (!objc_msgSend_hasCellSpec(self, v14, v15, v16))
      {
        goto LABEL_18;
      }

      if (!objc_msgSend_hasCellSpec(cellCopy, v29, v30, v31))
      {
        goto LABEL_18;
      }

      cellSpec = self->_cellSpec;
      v36 = objc_msgSend_cellSpec(cellCopy, v32, v33, v34);
      LOBYTE(cellSpec) = objc_msgSend_isEqual_(cellSpec, v37, v36, v38);

      if ((cellSpec & 1) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  valueType = self->_valueType;
  if (valueType != objc_msgSend_valueType(cellCopy, v11, v12, v13) || !objc_msgSend_p_currentFormatIsEqualToOtherCellFormat_(self, v40, cellCopy, v41))
  {
    goto LABEL_18;
  }

  v45 = self->_valueType;
  LOBYTE(v28) = 1;
  if (v45 <= 5)
  {
    switch(v45)
    {
      case 2u:
        objc_msgSend_doubleValue(self, v42, v43, v44);
        v47 = v74;
        objc_msgSend_doubleValue(cellCopy, v75, v76, v77);
        goto LABEL_29;
      case 3u:
        v53 = objc_msgSend_stringValue(self, v42, v43, v44);
        v57 = objc_msgSend_stringValue(cellCopy, v87, v88, v89);
        isEqualToString = objc_msgSend_isEqualToString_(v53, v90, v57, v91);
        break;
      case 5u:
        v53 = objc_msgSend_dateValue(self, v42, v43, v44);
        v57 = objc_msgSend_dateValue(cellCopy, v54, v55, v56);
        isEqualToString = objc_msgSend_isEqualToDate_(v53, v58, v57, v59);
        break;
      default:
        goto LABEL_19;
    }

    goto LABEL_34;
  }

  if (self->_valueType > 7u)
  {
    if (v45 == 8)
    {
      v53 = objc_msgSend_formulaSyntaxError(self, v42, v43, v44);
      v57 = objc_msgSend_formulaSyntaxError(cellCopy, v82, v83, v84);
      isEqualToString = objc_msgSend_isFormulaSyntaxErrorEqual_(v53, v85, v57, v86);
    }

    else
    {
      if (v45 != 9)
      {
        goto LABEL_19;
      }

      if (blockCopy)
      {
        v53 = objc_msgSend_richTextValue(self, v42, v43, v44);
        v64 = objc_msgSend_richTextValue(cellCopy, v61, v62, v63);
        v28 = objc_msgSend_range(v53, v65, v66, v67);
        v69 = v68;
        v72 = objc_msgSend_range(v64, v68, v70, v71);
        LOBYTE(v28) = objc_msgSend_compareRange_otherStorage_otherRange_options_objectComparisonBlock_(v53, v73, v28, v69, v64, v72, v73, 0, blockCopy) == 0;

LABEL_35:
        goto LABEL_19;
      }

      v53 = objc_msgSend_richTextValue(self, v42, v43, v44);
      v57 = objc_msgSend_richTextValue(cellCopy, v92, v93, v94);
      isEqualToString = objc_msgSend_isEqual_(v53, v95, v57, v96);
    }

LABEL_34:
    LOBYTE(v28) = isEqualToString;

    goto LABEL_35;
  }

  if (v45 == 6)
  {
    v78 = objc_msgSend_BOOLValue(self, v42, v43, v44);
    LODWORD(v28) = v78 ^ objc_msgSend_BOOLValue(cellCopy, v79, v80, v81) ^ 1;
    goto LABEL_19;
  }

  if (v45 == 7)
  {
    objc_msgSend_durationTimeIntervalValue(self, v42, v43, v44);
    v47 = v46;
    objc_msgSend_durationTimeIntervalValue(cellCopy, v48, v49, v50);
LABEL_29:
    LOBYTE(v28) = v47 == v51;
  }

LABEL_19:

  return v28;
}

- (BOOL)isEmptyForDataStore
{
  if (self->_valueType)
  {
    return 0;
  }

  if (objc_msgSend_hasCellStyle(self, a2, v2, v3) & 1) != 0 || (objc_msgSend_hasTextStyle(self, v6, v7, v8) & 1) != 0 || (objc_msgSend_hasConditionalStyle(self, v9, v10, v11) & 1) != 0 || (objc_msgSend_hasAnyFormats(self, v12, v13, v14) & 1) != 0 || (objc_msgSend_hasCellSpec(self, v15, v16, v17) & 1) != 0 || (objc_msgSend_hasCommentStorage(self, v18, v19, v20) & 1) != 0 || (objc_msgSend_hasImportWarningSet(self, v21, v22, v23))
  {
    return 0;
  }

  return self->_cellFlags < 2u;
}

- (BOOL)isEmpty
{
  v3 = self->_cellBorder;
  v7 = v3;
  if (v3 && (objc_msgSend_hasContent(v3, v4, v5, v6) & 1) != 0)
  {
    isEmptyForDataStore = 0;
  }

  else
  {
    isEmptyForDataStore = objc_msgSend_isEmptyForDataStore(self, v4, v5, v6);
  }

  return isEmptyForDataStore;
}

- (void)clear
{
  objc_msgSend_clearDataListIDs(self, a2, v2, v3);
  valueObject = self->_valueObject;
  self->_valueObject = 0;

  conditionalStyle = self->_conditionalStyle;
  self->_conditionalStyle = 0;

  commentStorage = self->_commentStorage;
  self->_commentStorage = 0;

  importWarningSet = self->_importWarningSet;
  self->_importWarningSet = 0;

  cellStyle = self->_cellStyle;
  self->_cellStyle = 0;

  textStyle = self->_textStyle;
  self->_textStyle = 0;

  cellBorder = self->_cellBorder;
  self->_cellBorder = 0;

  currentFormat = self->_currentFormat;
  self->_currentFormat = 0;

  numberFormat = self->_numberFormat;
  self->_numberFormat = 0;

  currencyFormat = self->_currencyFormat;
  self->_currencyFormat = 0;

  dateFormat = self->_dateFormat;
  self->_dateFormat = 0;

  durationFormat = self->_durationFormat;
  self->_durationFormat = 0;

  controlFormat = self->_controlFormat;
  self->_controlFormat = 0;

  baseFormat = self->_baseFormat;
  self->_baseFormat = 0;

  customFormat = self->_customFormat;
  self->_customFormat = 0;

  multipleChoiceListFormat = self->_multipleChoiceListFormat;
  self->_multipleChoiceListFormat = 0;

  cellSpec = self->_cellSpec;
  self->_cellSpec = 0;

  *&self->_valueType = 3840;
  self->_cellFlags = 0;
  self->_valueDouble = 0.0;
}

- (unsigned)stringID
{
  if (self->_valueType == 3)
  {
    return self->_valueID;
  }

  else
  {
    return 0;
  }
}

- (void)setStringID:(unsigned int)d
{
  if (self->_valueType == 3)
  {
    self->_valueID = d;
  }
}

- (unsigned)formulaSyntaxErrorID
{
  if (self->_valueType == 8)
  {
    return self->_valueID;
  }

  else
  {
    return 0;
  }
}

- (void)setFormulaSyntaxErrorID:(unsigned int)d
{
  if (self->_valueType == 8)
  {
    self->_valueID = d;
  }
}

- (unsigned)richTextID
{
  if (self->_valueType == 9)
  {
    return self->_valueID;
  }

  else
  {
    return 0;
  }
}

- (void)setRichTextID:(unsigned int)d
{
  if (self->_valueType == 9)
  {
    self->_valueID = d;
  }
}

- (void)clearDataListIDs
{
  self->_valueID = 0;
  *&self->_cellStyleID = 0u;
  *&self->_currentFormatID = 0u;
  *&self->_durationFormatID = 0u;
  *&self->_controlFormatID = 0u;
}

- (void)setValueType:(unsigned __int8)type
{
  typeCopy = type;
  objc_msgSend_clearValue(self, a2, type, v3);
  self->_valueType = typeCopy;
  if ((self->_explicitFormatFlags & 0x10) == 0 && (typeCopy | 8) == 8)
  {

    objc_msgSend_setCurrentFormat_isExplicit_(self, v6, 0, 0);
  }
}

- (double)doubleValue
{
  valueType = self->_valueType;
  v3 = valueType > 7;
  v4 = (1 << valueType) & 0xC4;
  if (v3 || v4 == 0)
  {
    return 0.0;
  }

  else
  {
    return self->_valueDouble;
  }
}

- (void)setDoubleValue:(double)value
{
  if (self->_valueType != 2)
  {
    if (self->_valueType)
    {
      return;
    }

    self->_valueType = 2;
  }

  self->_valueDouble = value;
}

- (void)setBoolValue:(BOOL)value
{
  if (self->_valueType != 6)
  {
    if (self->_valueType)
    {
      return;
    }

    self->_valueType = 6;
  }

  v3 = 0.0;
  if (value)
  {
    v3 = 1.0;
  }

  self->_valueDouble = v3;
}

- (double)durationTimeIntervalValue
{
  result = 0.0;
  if (self->_valueType == 7)
  {
    return self->_valueDouble;
  }

  return result;
}

- (void)setDurationTimeIntervalValue:(double)value
{
  if (self->_valueType != 7)
  {
    if (self->_valueType)
    {
      return;
    }

    self->_valueType = 7;
  }

  self->_valueDouble = value;
}

- (NSDate)dateValue
{
  if (self->_valueType == 5)
  {
    objc_opt_class();
    v3 = TSUDynamicCast();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDateValue:(id)value
{
  valueCopy = value;
  if (self->_valueType != 5)
  {
    if (self->_valueType)
    {
      goto LABEL_6;
    }

    self->_valueType = 5;
  }

  valueObject = self->_valueObject;
  p_valueObject = &self->_valueObject;
  if (valueObject != valueCopy)
  {
    v8 = valueCopy;
    objc_storeStrong(p_valueObject, value);
    valueCopy = v8;
  }

LABEL_6:
}

- (NSString)stringValue
{
  valueType = self->_valueType;
  if (self->_valueType)
  {
    if (valueType == 9)
    {
      objc_opt_class();
      v4 = TSUDynamicCast();
      v3 = objc_msgSend_string(v4, v5, v6, v7);
    }

    else if (valueType == 3)
    {
      objc_opt_class();
      v3 = TSUDynamicCast();
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = &stru_2834BADA0;
  }

  return v3;
}

- (void)setStringValue:(id)value clearingID:(BOOL)d
{
  dCopy = d;
  valueCopy = value;
  v9 = objc_msgSend_newlineCharacterSet(MEMORY[0x277CCA900], v6, v7, v8);
  v12 = objc_msgSend_rangeOfCharacterFromSet_(valueCopy, v10, v9, v11);

  objc_msgSend_setStringValue_clearingID_shouldWrap_(self, v13, valueCopy, dCopy, v12 != 0x7FFFFFFFFFFFFFFFLL);
}

- (void)setStringValue:(id)value clearingID:(BOOL)d shouldWrap:(BOOL)wrap
{
  wrapCopy = wrap;
  dCopy = d;
  valueCopy = value;
  valueType = self->_valueType;
  v21 = valueCopy;
  if (valueCopy)
  {
    if (valueType != 3)
    {
      if (self->_valueType)
      {
        goto LABEL_12;
      }

      self->_valueType = 3;
    }

    if (self->_valueObject != valueCopy)
    {
      objc_storeStrong(&self->_valueObject, value);
      self->_cellFlags = self->_cellFlags & 0xFFFE | wrapCopy;
      if (dCopy)
      {
        objc_msgSend_setStringID_(self, v11, 0, v12);
        v16 = objc_msgSend_formatType(self, v13, v14, v15);
        if (v16 != 260 && v16 != 271)
        {
          objc_msgSend_setDefaultFormatForValue(self, v17, v18, v19);
        }
      }
    }
  }

  else if (valueType == 3)
  {
    valueObject = self->_valueObject;
    self->_valueObject = 0;

    self->_valueID = 0;
  }

LABEL_12:
}

- (TSWPStorage)formulaSyntaxError
{
  if (self->_valueType == 8)
  {
    objc_opt_class();
    v3 = TSUDynamicCast();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFormulaSyntaxError:(id)error clearingID:(BOOL)d
{
  dCopy = d;
  errorCopy = error;
  valueType = self->_valueType;
  if (!errorCopy)
  {
    if (valueType != 8)
    {
      goto LABEL_11;
    }

    valueObject = self->_valueObject;
    self->_valueObject = 0;

    errorCopy = 0;
    goto LABEL_10;
  }

  if (valueType != 8)
  {
    if (self->_valueType)
    {
      goto LABEL_11;
    }

    self->_valueType = 8;
  }

  if (self->_valueObject != errorCopy)
  {
    v10 = errorCopy;
    objc_storeStrong(&self->_valueObject, error);
    errorCopy = v10;
    if (dCopy)
    {
LABEL_10:
      self->_valueID = 0;
    }
  }

LABEL_11:
}

- (TSWPStorage)richTextValue
{
  if (self->_valueType == 9)
  {
    objc_opt_class();
    v3 = TSUDynamicCast();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRichTextValue:(id)value clearingID:(BOOL)d convertToPlaintextIfPossible:(BOOL)possible
{
  possibleCopy = possible;
  dCopy = d;
  valueCopy = value;
  valueType = self->_valueType;
  v33 = valueCopy;
  if (valueCopy)
  {
    if (valueType != 9 || (objc_msgSend_richTextValue(self, v10, v11, v12), v14 = objc_claimAutoreleasedReturnValue(), v14, v14 != v33))
    {
      if (possibleCopy && objc_msgSend_canBeStoredInAStringValueCell(v33, v10, v11, v12))
      {
        objc_msgSend_setValueType_(self, v10, 3, v12);
        v18 = objc_msgSend_string(v33, v15, v16, v17);
        objc_msgSend_setStringValue_(self, v19, v18, v20);

        v22 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v33, v21, 0, 0);
        objc_msgSend_setTextStyle_(self, v23, v22, v24);
      }

      else
      {
        if (self->_valueType != 9)
        {
          objc_msgSend_setValueType_(self, v10, 9, v12);
        }

        if (self->_valueObject != v33)
        {
          objc_storeStrong(&self->_valueObject, value);
          if (dCopy)
          {
            self->_valueID = 0;
            v28 = objc_msgSend_formatType(self, v25, v26, v27);
            if (v28 != 260 && v28 != 271)
            {
              objc_msgSend_setDefaultFormatForValue(self, v29, v30, v31);
            }
          }
        }
      }
    }
  }

  else if (valueType == 9)
  {
    valueObject = self->_valueObject;
    self->_valueObject = 0;

    self->_valueID = 0;
  }
}

- (void)clearValue
{
  valueObject = self->_valueObject;
  self->_valueObject = 0;

  self->_valueID = 0;
  self->_valueDouble = 0.0;
  self->_valueType = 0;
}

- (BOOL)hasFormulaSyntaxError
{
  if (self->_valueType != 8)
  {
    return 0;
  }

  v8 = objc_msgSend_formulaSyntaxError(self, a2, v2, v3);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = objc_msgSend_formulaSyntaxErrorID(self, v5, v6, v7) != 0;
  }

  return v9;
}

- (BOOL)hasRichText
{
  v8 = objc_msgSend_richTextValue(self, a2, v2, v3);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = objc_msgSend_richTextID(self, v5, v6, v7) != 0;
  }

  return v9;
}

- (NSString)formulaSyntaxErrorString
{
  if (objc_msgSend_hasFormulaSyntaxError(self, a2, v2, v3) && (objc_msgSend_formulaSyntaxError(self, v5, v6, v7), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v8;
    v13 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v9, v10, v11);
    if (objc_msgSend_length(v12, v14, v15, v16) && (v19 = objc_msgSend_characterAtIndex_(v12, v17, 0, v18), objc_msgSend_isFormulaEqualsCharacter_(TSTFormula, v20, v19, v21)))
    {
      objc_msgSend_localizedStringForKey_value_table_(v13, v17, @"The formula should not begin with an equals sign.", &stru_2834BADA0, @"TSTables");
    }

    else
    {
      objc_msgSend_localizedStringForKey_value_table_(v13, v17, @"The formula contains a syntax error.", &stru_2834BADA0, @"TSTables");
    }
    v22 = ;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (NSString)formattedValue
{
  v3 = self->_locale;
  v7 = objc_msgSend_formatType(self, v4, v5, v6);
  v11 = 0;
  valueType = self->_valueType;
  if (valueType > 5)
  {
    switch(valueType)
    {
      case 6u:
        currentFormat = self->_currentFormat;
        v30 = objc_msgSend_BOOLValue(self, v8, v9, v10);
        v32 = objc_msgSend_stringFromBool_locale_(currentFormat, v31, v30, v3);
        break;
      case 7u:
        v35 = self->_currentFormat;
        objc_msgSend_durationTimeIntervalValue(self, v8, v9, v10);
        v32 = objc_msgSend_stringFromDurationTimeInterval_locale_(v35, v36, v3, v37);
        break;
      case 9u:
        v14 = objc_msgSend_richTextValue(self, v8, v9, v10);
        v16 = objc_msgSend_string(v14, v17, v18, v19);
        goto LABEL_17;
      default:
        goto LABEL_22;
    }
  }

  else
  {
    if (valueType == 2)
    {
      v20 = self->_currentFormat;
      objc_msgSend_doubleValue(self, v8, v9, v10);
      v11 = objc_msgSend_stringFromDouble_locale_(v20, v21, v3, v22);
      if (v11)
      {
        goto LABEL_22;
      }

      v14 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v23, 256, v3);
      objc_msgSend_doubleValue(self, v24, v25, v26);
      v16 = objc_msgSend_stringFromDouble_locale_(v14, v27, v3, v28);
      goto LABEL_17;
    }

    if (valueType != 3)
    {
      if (valueType != 5)
      {
        goto LABEL_22;
      }

      if (v7 != 272 && v7 != 261)
      {
        v14 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v8, 261, v3);
        v42 = objc_msgSend_dateValue(self, v39, v40, v41);
        v11 = objc_msgSend_stringFromDate_locale_(v14, v43, v42, v3);

        goto LABEL_18;
      }

      v13 = self->_currentFormat;
      v14 = objc_msgSend_dateValue(self, v8, v9, v10);
      v16 = objc_msgSend_stringFromDate_locale_(v13, v15, v14, v3);
LABEL_17:
      v11 = v16;
LABEL_18:

      goto LABEL_22;
    }

    if (v7 == 271)
    {
      v33 = self->_currentFormat;
      v14 = objc_msgSend_stringValue(self, v8, v9, v10);
      v16 = objc_msgSend_stringFromString_locale_(v33, v34, v14, v3);
      goto LABEL_17;
    }

    v32 = objc_msgSend_stringValue(self, v8, v9, v10);
  }

  v11 = v32;
LABEL_22:

  return v11;
}

- (NSString)stringForEditing
{
  v3 = self->_currentFormat;
  v7 = objc_msgSend_formatType(v3, v4, v5, v6);
  valueType = self->_valueType;
  if (valueType > 4)
  {
    if (valueType == 5)
    {
      v15 = objc_msgSend_dateValue(self, v8, v9, v10);
      v16 = TSUShortestCompleteDateTimeFormat();
      v17 = TSUDateFormatterStringFromDateWithFormat();
      goto LABEL_15;
    }

    if (valueType == 7)
    {
      v15 = objc_msgSend_asDurationFormat(v3, v8, v9, v10);
      if (!v15)
      {
        v27 = MEMORY[0x277D81150];
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTCell_PreBNC stringForEditing]", v26);
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_PreBNC.mm", v30);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v28, v31, 1032, 0, "invalid nil value for '%{public}s'", "durationFormat");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35);
      }

      IsExplicit = objc_msgSend_currentFormatIsExplicit(self, v24, v25, v26);
      if ((IsExplicit & 1) == 0 && (objc_msgSend_useAutomaticUnits(v15, v36, v37, v38) & 1) == 0)
      {
        v40 = objc_alloc(MEMORY[0x277D80678]);
        v44 = objc_msgSend_durationUnitSmallest(v15, v41, v42, v43);
        v48 = objc_msgSend_durationUnitLargest(v15, v45, v46, v47);
        v52 = objc_msgSend_durationStyle(v15, v49, v50, v51);
        v54 = objc_msgSend_initWithUseAutomaticUnits_durationUnitSmallest_durationUnitLargest_durationStyle_(v40, v53, 1, v44, v48, v52);

        v15 = v54;
      }

      objc_msgSend_durationTimeIntervalValue(self, v36, v37, v38);
      v23 = objc_msgSend_stringFromDurationTimeInterval_locale_showPrecision_(v15, v55, self->_locale, IsExplicit);
LABEL_27:
      v14 = v23;
      goto LABEL_28;
    }

    if (valueType != 8)
    {
      goto LABEL_9;
    }

LABEL_13:
    v14 = 0;
    goto LABEL_29;
  }

  v12 = v7;
  if (!self->_valueType)
  {
    if (v7 == 258)
    {
      v13 = objc_msgSend_percentSymbol(self->_locale, v8, v9, v10);
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (valueType != 2)
  {
    if (valueType == 3)
    {
      v13 = objc_msgSend_stringValue(self, v8, v9, v10);
LABEL_12:
      v14 = v13;
      goto LABEL_29;
    }

LABEL_9:
    v13 = objc_msgSend_formattedValue(self, v8, v9, v10);
    goto LABEL_12;
  }

  if (v7 > 268)
  {
    if ((v7 - 270) >= 3 && v7 != 269 && v7 != 274)
    {
      goto LABEL_9;
    }

    v15 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v8, 256, self->_locale);
    objc_msgSend_doubleValue(self, v18, v19, v20);
    v23 = objc_msgSend_stringFromDouble_locale_(v15, v21, self->_locale, v22);
    goto LABEL_27;
  }

  if (v7 > 257)
  {
    if (v7 != 258)
    {
      if (v7 != 259)
      {
        goto LABEL_9;
      }

      v15 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v8, 259, self->_locale);
      objc_msgSend_doubleValue(self, v72, v73, v74);
      v23 = objc_msgSend_stringFromDouble_locale_(v15, v75, self->_locale, v76);
      goto LABEL_27;
    }
  }

  else if (v7 != 256)
  {
    if (v7 != 257)
    {
      goto LABEL_9;
    }

    v15 = objc_msgSend_asCurrencyFormat(v3, v8, v9, v10);
    v57 = objc_alloc(MEMORY[0x277D80640]);
    v61 = objc_msgSend_showThousandsSeparator(v15, v58, v59, v60);
    v65 = objc_msgSend_currencyCode(v15, v62, v63, v64);
    v16 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v57, v66, 253, 0, v61, 0, v65);

    objc_msgSend_doubleValue(self, v67, v68, v69);
    v17 = objc_msgSend_stringFromDouble_locale_(v16, v70, self->_locale, v71);
    goto LABEL_15;
  }

  v15 = objc_msgSend_asNumberFormat(v3, v8, v9, v10);
  v77 = objc_alloc(MEMORY[0x277D806A0]);
  v81 = objc_msgSend_showThousandsSeparator(v15, v78, v79, v80);
  v16 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v77, v82, v12, 253, 0, v81);
  objc_msgSend_doubleValue(self, v83, v84, v85);
  v17 = objc_msgSend_stringFromDouble_locale_(v16, v86, self->_locale, v87);
LABEL_15:
  v14 = v17;

LABEL_28:
LABEL_29:

  return v14;
}

- (NSString)stringForUnderlyingValue
{
  if (self->_valueType)
  {
    if (self->_valueType == 2 && (objc_msgSend_formatType(self, a2, v2, v3) | 4) == 0x106)
    {
      v5 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], a2, 256, self->_locale);
      objc_msgSend_doubleValue(self, v6, v7, v8);
      v11 = objc_msgSend_stringFromDouble_locale_(v5, v9, self->_locale, v10);
    }

    else
    {
      v11 = objc_msgSend_stringForEditing(self, a2, v2, v3);
    }
  }

  else
  {
    v11 = &stru_2834BADA0;
  }

  return v11;
}

- (TSWPStorage)richTextStorageForLayout
{
  if (self->_valueType == 9)
  {
    v90 = objc_msgSend_richTextValue(self, a2, v2, v3);
    if (objc_msgSend_formatType(self, v5, v6, v7) == 271)
    {
      objc_opt_class();
      v11 = TSUDynamicCast();
      v15 = objc_msgSend_defaultCustomFormatData(v11, v12, v13, v14);
      v19 = objc_msgSend_formatString(v15, v16, v17, v18);
      v22 = objc_msgSend_storageByApplyingCustomFormat_(v90, v20, v19, v21);
    }

    else
    {
      v22 = v90;
    }

    conditionalStyleAppliedRule = self->_conditionalStyleAppliedRule;
    hasConditionalStyle = objc_msgSend_hasConditionalStyle(self, v8, v9, v10);
    if (conditionalStyleAppliedRule == 15)
    {
      v29 = 0;
    }

    else
    {
      v29 = hasConditionalStyle;
    }

    if (v29 == 1)
    {
      v30 = objc_msgSend_context(v22, v26, v27, v28);
      v23 = objc_msgSend_copyWithContext_(v22, v31, v30, v32);

      v33 = self->_conditionalStyle;
      v36 = objc_msgSend_ruleAtIndex_(v33, v34, conditionalStyleAppliedRule, v35);
      v40 = objc_msgSend_textStyle(v36, v37, v38, v39);

      if (v40)
      {
        v91 = v22;
        v47 = objc_msgSend_propertyMap(v40, v41, v42, v43);
        v48 = 0;
        v94 = 0;
        v95 = 0;
        while (v48 < objc_msgSend_length(v23, v44, v45, v46))
        {
          v52 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v23, v49, v48, &v94);
          v56 = objc_msgSend_copyPropertyMap(v52, v53, v54, v55);
          objc_msgSend_addValuesFromPropertyMap_(v56, v57, v47, v58);
          v59 = objc_alloc(MEMORY[0x277D80EC8]);
          v63 = objc_msgSend_context(v40, v60, v61, v62);
          isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v59, v64, v63, 0, v56, 0);

          if (isVariation)
          {
            objc_msgSend_setParagraphStyle_forCharRange_undoTransaction_(v23, v66, isVariation, v94, v95, 0);
          }

          v48 = v95 + v94;
        }

        if (objc_msgSend_characterStyleAttributeCount(v23, v49, v50, v51))
        {
          v71 = objc_msgSend_characterCount(v23, v67, v68, v69);
          if (v71)
          {
            v72 = 0;
            do
            {
              v92 = v72;
              v93 = v71 - v72;
              v73 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(v23, v70, v72, &v92);
              v77 = v73;
              if (v73)
              {
                v78 = objc_msgSend_copyPropertyMap(v73, v74, v75, v76);
                objc_msgSend_addValuesFromPropertyMap_(v78, v79, v47, v80);
                v81 = objc_alloc(MEMORY[0x277D80DB0]);
                v85 = objc_msgSend_context(v40, v82, v83, v84);
                v87 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v81, v86, v85, 0, v78, 0);

                if (v87)
                {
                  objc_msgSend_setCharacterStyle_range_undoTransaction_(v23, v88, v87, v92, v93, 0);
                }
              }

              v72 += v93;
            }

            while (v72 < v71);
          }
        }

        v22 = v91;
      }
    }

    else
    {
      v23 = v22;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)bakeFormulaToValue
{
  objc_msgSend_setFormula_(self, a2, 0, v2);
  if (self->_valueType == 8)
  {
    objc_msgSend_setFormulaSyntaxError_(self, v4, 0, v5);
    self->_valueType = 0;
  }
}

- (BOOL)dataIsReplaceable
{
  v5 = objc_msgSend_formatType(self, a2, v2, v3);
  if (objc_msgSend_hasFormula(self, v6, v7, v8))
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v13 = objc_msgSend_interactionType(self, v9, v10, v11);
    LOBYTE(v12) = 0;
    if (v13 != 7 && v5 != 267)
    {
      valueType = self->_valueType;
      v15 = valueType > 9;
      v12 = 0x2ECu >> valueType;
      if (v15)
      {
        LOBYTE(v12) = 0;
      }
    }
  }

  return v12 & 1;
}

- (BOOL)hasEqualValueToCell:(id)cell
{
  cellCopy = cell;
  v8 = cellCopy;
  if (!cellCopy || (valueType = self->_valueType, valueType != objc_msgSend_valueType(cellCopy, v5, v6, v7)))
  {
    isEqualToString = 0;
    goto LABEL_9;
  }

  v13 = self->_valueType;
  isEqualToString = 1;
  if (v13 > 5)
  {
    if (v13 - 6 >= 2)
    {
      if (v13 == 8)
      {
        v15 = objc_msgSend_formulaSyntaxError(self, v10, v11, v12);
        v19 = objc_msgSend_stringWithFormulaPlainText(v15, v29, v30, v31);
        v35 = objc_msgSend_formulaSyntaxError(v8, v32, v33, v34);
        v39 = objc_msgSend_stringWithFormulaPlainText(v35, v36, v37, v38);
        isEqualToString = objc_msgSend_isEqualToString_(v19, v40, v39, v41);

LABEL_18:
        goto LABEL_9;
      }

      if (v13 == 9)
      {
        v15 = objc_msgSend_richTextValue(self, v10, v11, v12);
        v19 = objc_msgSend_richTextValue(v8, v16, v17, v18);
        isEqual = objc_msgSend_isEqual_(v15, v20, v19, v21);
LABEL_17:
        isEqualToString = isEqual;
        goto LABEL_18;
      }

      goto LABEL_9;
    }

LABEL_14:
    isEqualToString = self->_valueDouble == v8[1];
    goto LABEL_9;
  }

  switch(v13)
  {
    case 2u:
      goto LABEL_14;
    case 3u:
      v15 = objc_msgSend_stringValue(self, v10, v11, v12);
      v19 = objc_msgSend_stringValue(v8, v42, v43, v44);
      isEqual = objc_msgSend_isEqualToString_(v15, v45, v19, v46);
      goto LABEL_17;
    case 5u:
      v15 = objc_msgSend_dateValue(self, v10, v11, v12);
      v19 = objc_msgSend_dateValue(v8, v24, v25, v26);
      isEqual = objc_msgSend_isEqualToDate_(v15, v27, v19, v28);
      goto LABEL_17;
  }

LABEL_9:

  return isEqualToString;
}

- (void)setCellStyle:(id)style clearingID:(BOOL)d
{
  dCopy = d;
  styleCopy = style;
  if (!styleCopy)
  {
    goto LABEL_5;
  }

  v21 = styleCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTCell_PreBNC setCellStyle:clearingID:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_PreBNC.mm", v13);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v11, v14, 1262, 0, "expected cell style got %{public}@", v16);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v18, v19, v20);
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = v21;
LABEL_6:
  if (self->_cellStyle != v9)
  {
    v22 = v9;
    objc_storeStrong(&self->_cellStyle, v9);
    v9 = v22;
    if (!v22 || dCopy)
    {
      self->_cellStyleID = 0;
    }
  }
}

- (void)setTextStyle:(id)style clearingID:(BOOL)d
{
  dCopy = d;
  styleCopy = style;
  if (!styleCopy)
  {
    goto LABEL_5;
  }

  v21 = styleCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTCell_PreBNC setTextStyle:clearingID:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_PreBNC.mm", v13);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v11, v14, 1284, 0, "expected cell style got %{public}@", v16);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v18, v19, v20);
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = v21;
LABEL_6:
  if (self->_textStyle != v9)
  {
    v22 = v9;
    objc_storeStrong(&self->_textStyle, v9);
    v9 = v22;
    if (!v22 || dCopy)
    {
      self->_textStyleID = 0;
    }
  }
}

- (TSWPParagraphStyle)effectiveTextStyle
{
  if (self->_valueType == 9)
  {
    v4 = objc_msgSend_richTextValue(self, a2, v2, v3);
    v6 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v4, v5, 0, 0);
  }

  else
  {
    v6 = self->_textStyle;
  }

  return v6;
}

- (void)setConditionalStyle:(id)style clearingID:(BOOL)d
{
  dCopy = d;
  styleCopy = style;
  if (!styleCopy)
  {
    goto LABEL_5;
  }

  v21 = styleCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTCell_PreBNC setConditionalStyle:clearingID:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_PreBNC.mm", v13);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v11, v14, 1312, 0, "expected conditional style got %{public}@", v16);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v18, v19, v20);
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = v21;
LABEL_6:
  if (self->_conditionalStyle != v9)
  {
    v22 = v9;
    objc_storeStrong(&self->_conditionalStyle, v9);
    v9 = v22;
    if (!v22 || dCopy)
    {
      self->_conditionalStyleID = 0;
    }
  }
}

- (void)copyJustStrokesToCell:(id)cell
{
  cellCopy = cell;
  v7 = objc_msgSend_copy(self->_cellBorder, v4, v5, v6);
  objc_msgSend_setCellBorder_(cellCopy, v8, v7, v9);
}

- (void)copyJustStyleAndStrokesToCell:(id)cell
{
  cellCopy = cell;
  objc_msgSend_setCellFlags_(cellCopy, v4, self->_cellFlags & 0x8F0, v5);
  objc_msgSend_setCellStyle_(cellCopy, v6, self->_cellStyle, v7);
  objc_msgSend_setCellStyleID_(cellCopy, v8, self->_cellStyleID, v9);
  objc_msgSend_setTextStyle_(cellCopy, v10, self->_textStyle, v11);
  objc_msgSend_setTextStyleID_(cellCopy, v12, self->_textStyleID, v13);
  objc_msgSend_setConditionalStyle_clearingID_(cellCopy, v14, self->_conditionalStyle, 0);
  objc_msgSend_setConditionalStyleID_(cellCopy, v15, self->_conditionalStyleID, v16);
  objc_msgSend_setConditionalStyleAppliedRule_(cellCopy, v17, self->_conditionalStyleAppliedRule, v18);
  objc_msgSend_copyJustStrokesToCell_(self, v19, cellCopy, v20);
}

- (void)clearStrokes
{
  cellBorder = self->_cellBorder;
  self->_cellBorder = 0;
}

- (int)writingDirection
{
  if (self->_valueType == 9)
  {
    v4 = objc_msgSend_richTextValue(self, a2, v2, v3);
    v7 = objc_msgSend_writingDirectionForParagraphAtParIndex_(v4, v5, 0, v6);
  }

  else
  {
    v8 = self->_textStyle;
    v4 = v8;
    if (!v8)
    {
      v11 = -1;
      goto LABEL_6;
    }

    v7 = objc_msgSend_intValueForProperty_(v8, v9, 44, v10);
  }

  v11 = v7;
LABEL_6:

  return v11;
}

- (TSDFill)cellFill
{
  v3 = objc_msgSend_valueForProperty_(self->_cellStyle, a2, 898, v2);

  return v3;
}

- (id)cellFillComparedToDefault:(id)default suppressCS:(BOOL)s isDefault:(BOOL *)isDefault
{
  defaultCopy = default;
  if (!s)
  {
    v12 = objc_msgSend_hasConditionalStyle(self, v8, v9, v10) ^ 1;
    if (!self)
    {
      LOBYTE(v12) = 1;
    }

    if ((v12 & 1) == 0 && self->_conditionalStyleAppliedRule != 15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = objc_msgSend_ruleAtIndex_(self->_conditionalStyle, v8, self->_conditionalStyleAppliedRule, v10);
        v17 = objc_msgSend_cellStyle(v13, v14, v15, v16);

        if (objc_msgSend_overridesProperty_(v17, v18, 898, v19))
        {
          v22 = objc_msgSend_valueForProperty_(v17, v20, 898, v21);

          if (v22)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }
      }
    }
  }

  v22 = objc_msgSend_cellFill(self, v8, v9, v10);
  if (!v22)
  {
LABEL_13:
    v23 = defaultCopy;
    if (!isDefault)
    {
      goto LABEL_18;
    }

    v24 = 1;
    goto LABEL_17;
  }

LABEL_12:
  if (objc_msgSend_isEqual_(v22, v8, defaultCopy, v10))
  {
    goto LABEL_13;
  }

  v25 = v22;
  v22 = v25;
  if (isDefault)
  {
    v24 = 0;
    v23 = v25;
LABEL_17:
    *isDefault = v24;
    goto LABEL_18;
  }

  v23 = v25;
LABEL_18:

  return v23;
}

- (unsigned)interactionType
{
  cellSpec = self->_cellSpec;
  if (cellSpec)
  {
    LODWORD(cellSpec) = objc_msgSend_interactionType(cellSpec, a2, v2, v3);
  }

  return cellSpec;
}

- (TSCEFormulaObject)formula
{
  v4 = objc_msgSend_asFormulaSpec(self->_cellSpec, a2, v2, v3);
  v8 = objc_msgSend_formulaObject(v4, v5, v6, v7);

  return v8;
}

- (void)setCellSpec:(id)spec clearingID:(BOOL)d
{
  dCopy = d;
  specCopy = spec;
  objc_msgSend_p_setFormatFlags_explicit_(self, v7, 0x8000, 0);
  if (!specCopy || !objc_msgSend_interactionType(specCopy, specCopy, v8, v9))
  {
    cellSpec = self->_cellSpec;
    self->_cellSpec = 0;

LABEL_7:
    self->_formulaID = 0;
    goto LABEL_8;
  }

  if ((objc_msgSend_isEqual_(self->_cellSpec, specCopy, specCopy, v10) & 1) == 0)
  {
    objc_storeStrong(&self->_cellSpec, spec);
    if (dCopy)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)setCellSpecRepairingFormats:(id)formats
{
  formatsCopy = formats;
  objc_msgSend_setCellSpec_clearingID_(self, v4, formatsCopy, 1);
  v8 = objc_msgSend_formatType(self, v5, v6, v7);
  if ((v8 - 264) >= 2)
  {
    if (v8 == 266)
    {
      objc_msgSend_doubleValue(self, v9, v10, v11);
      objc_msgSend_applyPopupChoiceIndex_(self, v26, v25, v27);
    }
  }

  else
  {
    v12 = objc_msgSend_asRangeControlSpec(formatsCopy, v9, v10, v11);
    v16 = objc_msgSend_legacyDisplayFormatType(v12, v13, v14, v15);

    v21 = objc_msgSend_spareFormatOfType_allowMismatchedSpare_(self, v17, v16, 1);
    if (!v21)
    {
      v22 = MEMORY[0x277D80680];
      v23 = objc_msgSend_locale(self, v18, v19, v20);
      v21 = objc_msgSend_defaultFormatWithFormatType_locale_(v22, v24, v16, v23);
    }

    objc_msgSend_setCurrentFormat_isExplicit_(self, v18, v21, 1);
  }

  objc_msgSend_clearSpareFormatOfType_(self, v9, 264, v11);
  objc_msgSend_clearSpareFormatOfType_(self, v28, 266, v29);
}

- (void)setFormula:(id)formula clearingID:(BOOL)d
{
  dCopy = d;
  formulaCopy = formula;
  if (formulaCopy)
  {
    v9 = objc_msgSend_cellSpec(self, v6, v7, v8);
    v13 = objc_msgSend_asFormulaSpec(v9, v10, v11, v12);

    if (v13)
    {
      v17 = objc_msgSend_locale(self, v14, v15, v16);
      v19 = objc_msgSend_cellSpecReplacingFormulaObject_locale_(v13, v18, formulaCopy, v17);
    }

    else
    {
      v22 = [TSTCellFormulaSpec alloc];
      v17 = objc_msgSend_locale(self, v23, v24, v25);
      v19 = objc_msgSend_initWithFormulaObject_locale_(v22, v26, formulaCopy, v17);
    }

    v27 = v19;

    objc_msgSend_setCellSpec_clearingID_(self, v28, v27, dCopy);
  }

  else
  {
    v20 = objc_msgSend_asFormulaSpec(self->_cellSpec, v6, v7, v8);

    if (v20)
    {
      objc_msgSend_setCellSpec_clearingID_(self, v21, 0, dCopy);
    }
  }
}

- (TSTCellSpec)cellSpecForDiff
{
  cellSpec = self->_cellSpec;
  if (cellSpec)
  {
    v5 = cellSpec;
  }

  else
  {
    v5 = objc_msgSend_defaultCellSpec(TSTCellSpec, a2, v2, v3);
  }

  return v5;
}

- (void)applyPopupChoiceIndex:(unint64_t)index
{
  v6 = objc_msgSend_cellSpec(self, a2, index, v3);
  v10 = objc_msgSend_asChooserControlSpec(v6, v7, v8, v9);

  if (v10)
  {
    v14 = objc_msgSend_popupModel(v10, v11, v12, v13);
    v18 = objc_msgSend_choices(v14, v15, v16, v17);
    v22 = objc_msgSend_count(v18, v19, v20, v21);

    if (v22 > index)
    {
      objc_msgSend_clearValue(self, v23, v24, v25);
      v28 = objc_msgSend_valueForIndex_(v10, v26, index, v27);
      v32 = objc_msgSend_tsceValue(v28, v29, v30, v31);
      v39 = objc_msgSend_nativeType(v32, v33, v34, v35);
      if (v39 <= 2)
      {
        if (!v39)
        {
          objc_msgSend_setCurrentFormat_isExplicit_(self, v36, 0, 0);
          goto LABEL_17;
        }

        if (v39 == 2)
        {
          v43 = objc_msgSend_BOOLean(v32, v36, v37, v38);
          objc_msgSend_setBoolValue_(self, v44, v43, v45);
        }
      }

      else
      {
        switch(v39)
        {
          case 3u:
            v40 = objc_msgSend_date(v32, v36, v37, v38);
            objc_msgSend_setDateValue_(self, v46, v40, v47);
            goto LABEL_15;
          case 5u:
            v40 = objc_msgSend_number(v32, v36, v37, v38);
            if (objc_msgSend_hasUnits(v40, v48, v49, v50) && !objc_msgSend_dimension(v40, v51, v52, v53))
            {
              objc_msgSend_rawTimeIntervalValue(v40, v51, v52, v53);
              objc_msgSend_setDurationTimeIntervalValue_(self, v60, v61, v62);
            }

            else
            {
              v63._decimal.w[0] = objc_msgSend_decimalRepresentation(v40, v51, v52, v53);
              v63._decimal.w[1] = v54;
              TSUDecimal::doubleValue(&v63);
              objc_msgSend_setDoubleValue_(self, v55, v56, v57);
            }

            goto LABEL_15;
          case 7u:
            v40 = objc_msgSend_asRawString(v32, v36, v37, v38);
            objc_msgSend_setStringValue_(self, v41, v40, v42);
LABEL_15:

            break;
        }
      }

      v58 = objc_msgSend_format(v28, v36, v37, v38);
      objc_msgSend_setCurrentFormat_isExplicit_(self, v59, v58, 1);

LABEL_17:
    }
  }
}

- (BOOL)hasFormulaEvaluationError
{
  hasFormulaAnyError = objc_msgSend_hasFormulaAnyError(self, a2, v2, v3);
  if (hasFormulaAnyError)
  {
    LOBYTE(hasFormulaAnyError) = objc_msgSend_hasFormulaSyntaxError(self, v6, v7, v8) ^ 1;
  }

  return hasFormulaAnyError;
}

- (unsigned)formatType
{
  v2 = self->_currentFormat;
  v6 = v2;
  if (v2)
  {
    v7 = objc_msgSend_formatType(v2, v3, v4, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setFormat:(id)format shouldSetExplFlags:(BOOL)flags isExplicit:(BOOL)explicit makeCurrent:(BOOL)current clearingID:(BOOL)d
{
  dCopy = d;
  currentCopy = current;
  LODWORD(v9) = explicit;
  flagsCopy = flags;
  formatCopy = format;
  v16 = formatCopy;
  if (formatCopy)
  {
    v9 = v9;
  }

  else
  {
    v9 = 0;
  }

  if (formatCopy)
  {
    v17 = dCopy;
  }

  else
  {
    v17 = 1;
  }

  if (formatCopy)
  {
    v18 = flagsCopy;
  }

  else
  {
    v18 = 1;
  }

  obj = objc_msgSend_copy(formatCopy, v13, v14, v15);

  if (currentCopy)
  {
    objc_storeStrong(&self->_currentFormat, obj);
    if (v17)
    {
      self->_currentFormatID = 0;
    }
  }

  v22 = objc_msgSend_formatType(obj, v19, v20, v21);
  if (v22 <= 265)
  {
    if (v22 > 260)
    {
      if ((v22 - 264) < 2)
      {
        objc_storeStrong(&self->_controlFormat, obj);
        if ((v17 & 1) == 0)
        {
          goto LABEL_43;
        }

        v26 = 84;
        goto LABEL_42;
      }

      if (v22 == 261)
      {
        objc_storeStrong(&self->_dateFormat, obj);
        if ((v17 & 1) == 0)
        {
          goto LABEL_43;
        }

        v26 = 68;
        goto LABEL_42;
      }

      if (v22 != 262)
      {
        goto LABEL_43;
      }
    }

    else if ((v22 - 258) >= 2 && v22 != 256)
    {
      if (v22 == 257)
      {
        objc_storeStrong(&self->_currencyFormat, obj);
        if (v17)
        {
          v26 = 64;
LABEL_42:
          *(&self->super.isa + v26) = 0;
          goto LABEL_43;
        }
      }

      goto LABEL_43;
    }

    objc_storeStrong(&self->_numberFormat, obj);
    if ((v17 & 1) == 0)
    {
      goto LABEL_43;
    }

    v26 = 60;
    goto LABEL_42;
  }

  if (v22 > 269)
  {
    if ((v22 - 270) < 3)
    {
      objc_storeStrong(&self->_customFormat, obj);
      if (v17)
      {
        v26 = 76;
        goto LABEL_42;
      }
    }
  }

  else
  {
    switch(v22)
    {
      case 266:
        objc_storeStrong(&self->_multipleChoiceListFormat, obj);
        if (!v17)
        {
          break;
        }

        v26 = 88;
        goto LABEL_42;
      case 268:
        objc_storeStrong(&self->_durationFormat, obj);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v26 = 72;
        goto LABEL_42;
      case 269:
        objc_storeStrong(&self->_baseFormat, obj);
        if (v17)
        {
          v26 = 80;
          goto LABEL_42;
        }

        break;
    }
  }

LABEL_43:
  if (v18)
  {
    v27 = objc_msgSend_formatType(obj, v23, v24, v25);
    objc_msgSend_p_setFormatExplicit_fromFormatType_setMostRecentlySet_(self, v28, v9, v27, 1);
  }
}

- (void)setCurrentFormat:(id)format flags:(unsigned __int16)flags
{
  flagsCopy = flags;
  formatCopy = format;
  v9 = objc_msgSend_formatType(formatCopy, v6, v7, v8);
  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v10, formatCopy, 0, 0, 1, 1);
  if ((flagsCopy & 0x10) != 0)
  {
    objc_msgSend_p_setFormatExplicit_fromFormatType_setMostRecentlySet_(self, v11, (flagsCopy >> 4) & 1, v9, 1);
    goto LABEL_20;
  }

  if (!objc_msgSend_p_TSTCellFormatIsANumberFormatTypeForMostRecentlySet_(TSTCell_PreBNC, v11, v9, v12))
  {
    v19 = 0;
    if (v9 > 270)
    {
      if (v9 != 271)
      {
        if (v9 == 272)
        {
          goto LABEL_17;
        }

LABEL_19:
        objc_msgSend_p_setFormatExplicit_fromFormatType_setMostRecentlySet_(self, v13, (flagsCopy >> 4) & 1, v9, v19);
        goto LABEL_20;
      }
    }

    else if (v9 != 260)
    {
      if (v9 != 261)
      {
        goto LABEL_19;
      }

LABEL_17:
      objc_msgSend_p_setFormatExplicit_fromFormatType_setMostRecentlySet_(self, v13, (flagsCopy >> 4) & 1, v9, (v9 != 272) ^ ((flagsCopy & 0x2000) >> 13));
      goto LABEL_20;
    }

    v19 = (v9 != 271) ^ ((flagsCopy & 0x4000) >> 14);
    goto LABEL_19;
  }

  v14 = (flagsCopy >> 11) & 3;
  v15 = v14 == 1;
  v16 = v14 == 2;
  v17 = v14 == 3;
  v18 = v14 == 0;
  if (v9 == 270)
  {
    v18 = v17;
  }

  if (v9 == 269)
  {
    v18 = v16;
  }

  if (v9 == 257)
  {
    objc_msgSend_p_setFormatExplicit_fromFormatType_setMostRecentlySet_(self, v13, (flagsCopy >> 4) & 1, v9, v15);
  }

  else
  {
    objc_msgSend_p_setFormatExplicit_fromFormatType_setMostRecentlySet_(self, v13, (flagsCopy >> 4) & 1, v9, v18);
  }

LABEL_20:
}

- (void)p_setFormatForFormulaResult:(id)result propagation:(BOOL)propagation
{
  propagationCopy = propagation;
  resultCopy = result;
  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v6, resultCopy, 0, 0, 1, 1);
  v10 = objc_msgSend_formatType(resultCopy, v7, v8, v9);
  objc_msgSend_p_setFormatExplicit_fromFormatType_setMostRecentlySet_(self, v11, 0, v10, 0);
  objc_msgSend_p_setFormatFlags_explicit_(self, v12, 0x8000, propagationCopy);
}

- (void)clearSpareFormatOfType:(unsigned int)type
{
  if (type <= 265)
  {
    v4 = -2;
    v5 = 144;
    v6 = 60;
    if (type > 260)
    {
      if (type - 264 < 2)
      {
        v4 = -65;
        v5 = 192;
        v6 = 84;
      }

      else if (type == 261)
      {
        v4 = -9;
        v5 = 160;
        v6 = 68;
      }

      else if (type != 262)
      {
        return;
      }
    }

    else if (type - 258 >= 2 && type != 256)
    {
      if (type != 257)
      {
        return;
      }

      self->_currencyFormatID = 0;
      currencyFormat = self->_currencyFormat;
      self->_currencyFormat = 0;

      p_explicitFormatFlags = &self->_explicitFormatFlags;
      self->_explicitFormatFlags &= ~2u;
      if (objc_msgSend_p_mostRecentlySetNumberFormatType(self, v9, v10, v11) != 1)
      {
        return;
      }

      goto LABEL_27;
    }

LABEL_29:
    *(&self->super.isa + v6) = 0;
    v24 = *(&self->super.isa + v5);
    *(&self->super.isa + v5) = 0;

    p_explicitFormatFlags = &self->_explicitFormatFlags;
    goto LABEL_30;
  }

  if (type > 269)
  {
    if (type != 270)
    {
      if (type == 271)
      {
        self->_customFormatID = 0;
        customFormat = self->_customFormat;
        self->_customFormat = 0;

        p_explicitFormatFlags = &self->_explicitFormatFlags;
        self->_explicitFormatFlags &= ~0x100u;
        if (objc_msgSend_p_mostRecentlySetTextFormatType(self, v26, v27, v28) != 1)
        {
          return;
        }

        v4 = -16385;
      }

      else
      {
        if (type != 272)
        {
          return;
        }

        self->_customFormatID = 0;
        v16 = self->_customFormat;
        self->_customFormat = 0;

        p_explicitFormatFlags = &self->_explicitFormatFlags;
        self->_explicitFormatFlags &= ~0x100u;
        if (objc_msgSend_p_mostRecentlySetDateFormatType(self, v17, v18, v19) != 1)
        {
          return;
        }

        v4 = -8193;
      }

LABEL_30:
      *p_explicitFormatFlags &= v4;
      return;
    }

    self->_customFormatID = 0;
    v20 = self->_customFormat;
    self->_customFormat = 0;

    p_explicitFormatFlags = &self->_explicitFormatFlags;
    self->_explicitFormatFlags &= ~0x100u;
    if (objc_msgSend_p_mostRecentlySetNumberFormatType(self, v21, v22, v23) != 3)
    {
      return;
    }

LABEL_27:
    v4 = -6145;
    goto LABEL_30;
  }

  switch(type)
  {
    case 0x10Au:
      v4 = -1025;
      v5 = 200;
      v6 = 88;
      goto LABEL_29;
    case 0x10Cu:
      v4 = -5;
      v5 = 168;
      v6 = 72;
      goto LABEL_29;
    case 0x10Du:
      self->_baseFormatID = 0;
      baseFormat = self->_baseFormat;
      self->_baseFormat = 0;

      p_explicitFormatFlags = &self->_explicitFormatFlags;
      self->_explicitFormatFlags &= ~0x200u;
      if (objc_msgSend_p_mostRecentlySetNumberFormatType(self, v13, v14, v15) == 2)
      {
        goto LABEL_27;
      }

      break;
  }
}

- (BOOL)clearNoncurrentImplicitFormats
{
  if ((self->_explicitFormatFlags & 0x10) != 0 || (self->_valueType | 8) != 8)
  {
    v5 = 0;
  }

  else
  {
    objc_msgSend_setCurrentFormat_isExplicit_(self, a2, 0, 0);
    v5 = 1;
  }

  v6 = objc_msgSend_formatType(self->_currentFormat, a2, v2, v3);
  v10 = objc_msgSend_asStepperSliderFormat(self->_currentFormat, v7, v8, v9);

  if (v10)
  {
    v14 = objc_msgSend_asStepperSliderFormat(self->_controlFormat, v11, v12, v13);
    v6 = objc_msgSend_displayFormatType(v14, v15, v16, v17);
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_221277104;
  v26[3] = &unk_278462078;
  v26[4] = self;
  v27 = v6;
  v18 = MEMORY[0x223DA1C10](v26);
  v19 = (v18)[2](v18, self->_numberFormat, 1);
  v20 = (v18)[2](v18, self->_currencyFormat, 2);
  v21 = (v18)[2](v18, self->_durationFormat, 4);
  v22 = (v18)[2](v18, self->_dateFormat, 8);
  v23 = (v18)[2](v18, self->_customFormat, 256);
  v24 = (v18)[2](v18, self->_baseFormat, 512) | v23 | v22 | v21 | v20 | v5 | v19;

  return v24 & 1;
}

- (void)clearAllFormats
{
  self->_multipleChoiceListFormatID = 0;
  *&self->_durationFormatID = 0u;
  *&self->_currentFormatID = 0u;
  currentFormat = self->_currentFormat;
  self->_currentFormat = 0;

  numberFormat = self->_numberFormat;
  self->_numberFormat = 0;

  currencyFormat = self->_currencyFormat;
  self->_currencyFormat = 0;

  dateFormat = self->_dateFormat;
  self->_dateFormat = 0;

  durationFormat = self->_durationFormat;
  self->_durationFormat = 0;

  controlFormat = self->_controlFormat;
  self->_controlFormat = 0;

  baseFormat = self->_baseFormat;
  self->_baseFormat = 0;

  customFormat = self->_customFormat;
  self->_customFormat = 0;

  multipleChoiceListFormat = self->_multipleChoiceListFormat;
  self->_multipleChoiceListFormat = 0;

  self->_explicitFormatFlags = 0;
}

- (void)copyAllFormatsToCell:(id)cell
{
  cellCopy = cell;
  v16 = cellCopy;
  if (cellCopy)
  {
    *(cellCopy + 17) = self->_explicitFormatFlags;
    objc_msgSend_p_setFormatFlags_explicit_(cellCopy, v5, 0x8000, 0);
    objc_storeStrong(v16 + 17, self->_currentFormat);
    objc_storeStrong(v16 + 18, self->_numberFormat);
    objc_storeStrong(v16 + 19, self->_currencyFormat);
    objc_storeStrong(v16 + 20, self->_dateFormat);
    objc_storeStrong(v16 + 21, self->_durationFormat);
    objc_storeStrong(v16 + 22, self->_customFormat);
    objc_storeStrong(v16 + 23, self->_baseFormat);
    objc_storeStrong(v16 + 24, self->_controlFormat);
    objc_storeStrong(v16 + 25, self->_multipleChoiceListFormat);
  }

  else
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTCell_PreBNC copyAllFormatsToCell:]", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_PreBNC.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 1925, 0, "invalid nil value for '%{public}s'", "dest");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }
}

- (void)updateCustomFormatFromPaste:(id)paste
{
  pasteCopy = paste;
  v7 = objc_msgSend_formatType(self, v4, v5, v6);
  v11 = v7 == objc_msgSend_formatType(pasteCopy, v8, v9, v10);
  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v12, pasteCopy, 0, 0, v11, 1);
}

- (void)p_TSTCellSetMostRecentlySetNumberFormat:(int)format
{
  v8 = objc_msgSend_formatType(self, a2, *&format, v3);
  if (format > 1)
  {
    if (format == 2)
    {
      if (!objc_msgSend_p_TSTCellFormatIsANumberFormatTypeForMostRecentlySet_(TSTCell_PreBNC, v6, v8, v7) || v8 == 269)
      {
        goto LABEL_18;
      }
    }

    else if (format != 3 || !objc_msgSend_p_TSTCellFormatIsANumberFormatTypeForMostRecentlySet_(TSTCell_PreBNC, v6, v8, v7) || v8 == 270)
    {
      goto LABEL_18;
    }
  }

  else if (format)
  {
    if (format != 1 || !objc_msgSend_p_TSTCellFormatIsANumberFormatTypeForMostRecentlySet_(TSTCell_PreBNC, v6, v8, v7) || v8 == 257)
    {
LABEL_18:
      self->_explicitFormatFlags = self->_explicitFormatFlags & 0xE7FF | (format << 11);
    }
  }

  else if (!objc_msgSend_p_TSTCellFormatIsANumberFormatTypeForMostRecentlySet_(TSTCell_PreBNC, v6, v8, v7) || (v8 - 256) <= 6 && ((1 << v8) & 0x4D) != 0)
  {
    goto LABEL_18;
  }
}

- (void)p_TSTCellSetMostRecentlySetDateFormat:(int)format
{
  formatCopy = format;
  if (format == 1)
  {
    if (objc_msgSend_formatType(self, a2, *&format, v3) == 261)
    {
      return;
    }

    goto LABEL_4;
  }

  if (format || objc_msgSend_formatType(self, a2, *&format, v3) != 272)
  {
LABEL_4:
    self->_explicitFormatFlags = self->_explicitFormatFlags & 0xDFFF | (formatCopy << 13);
  }
}

- (void)p_TSTCellSetMostRecentlySetTextFormat:(int)format
{
  formatCopy = format;
  if (format == 1)
  {
    if (objc_msgSend_formatType(self, a2, *&format, v3) == 260)
    {
      return;
    }

    goto LABEL_4;
  }

  if (format || objc_msgSend_formatType(self, a2, *&format, v3) != 271)
  {
LABEL_4:
    self->_explicitFormatFlags = self->_explicitFormatFlags & 0xBFFF | (formatCopy << 14);
  }
}

- (void)p_setFormatFlags:(unsigned __int16)flags explicit:(BOOL)explicit
{
  explicitFormatFlags = self->_explicitFormatFlags;
  v5 = explicitFormatFlags & ~flags;
  v6 = explicitFormatFlags | flags;
  if (!explicit)
  {
    v6 = v5;
  }

  self->_explicitFormatFlags = v6;
}

- (void)p_setFormatExplicit:(BOOL)explicit fromFormatType:(unsigned int)type setMostRecentlySet:(BOOL)set
{
  setCopy = set;
  explicitCopy = explicit;
  if (objc_msgSend_formatType(self, a2, explicit, *&type) == type)
  {
    objc_msgSend_p_setFormatFlags_explicit_(self, v9, 16, explicitCopy);
    switch(type)
    {
      case 0x100u:
      case 0x102u:
      case 0x103u:
      case 0x106u:
        goto LABEL_4;
      case 0x101u:
        goto LABEL_12;
      case 0x104u:
        goto LABEL_24;
      case 0x105u:
        goto LABEL_31;
      case 0x107u:
      case 0x10Bu:
      case 0x111u:
        return;
      case 0x108u:
      case 0x109u:
        goto LABEL_6;
      case 0x10Au:
        goto LABEL_17;
      case 0x10Cu:
        goto LABEL_9;
      case 0x10Du:
        goto LABEL_10;
      case 0x10Eu:
      case 0x112u:
        goto LABEL_7;
      case 0x10Fu:
        goto LABEL_26;
      case 0x110u:
        goto LABEL_22;
      default:
        if (type)
        {
          return;
        }

        selfCopy8 = self;
        v15 = 0x8000;
        v16 = 0;
        break;
    }

LABEL_19:

    objc_msgSend_p_setFormatFlags_explicit_(selfCopy8, v9, v15, v16);
  }

  else
  {
    switch(type)
    {
      case 0x100u:
      case 0x102u:
      case 0x103u:
      case 0x106u:
LABEL_4:
        objc_msgSend_p_setFormatFlags_explicit_(self, v9, 1, explicitCopy);
        if (setCopy)
        {
          selfCopy10 = self;
          v13 = 0;
          break;
        }

        return;
      case 0x101u:
LABEL_12:
        objc_msgSend_p_setFormatFlags_explicit_(self, v9, 2, explicitCopy);
        if (setCopy)
        {
          selfCopy10 = self;
          v13 = 1;
          break;
        }

        return;
      case 0x104u:
LABEL_24:
        if (setCopy)
        {
          selfCopy11 = self;
          v21 = 0;
          goto LABEL_28;
        }

        return;
      case 0x105u:
LABEL_31:
        objc_msgSend_p_setFormatFlags_explicit_(self, v9, 8, explicitCopy);
        if (setCopy)
        {
          selfCopy12 = self;
          v19 = 0;
          goto LABEL_33;
        }

        return;
      case 0x108u:
      case 0x109u:
LABEL_6:
        selfCopy8 = self;
        v15 = 64;
        goto LABEL_18;
      case 0x10Au:
LABEL_17:
        selfCopy8 = self;
        v15 = 1024;
        goto LABEL_18;
      case 0x10Cu:
LABEL_9:
        selfCopy8 = self;
        v15 = 4;
LABEL_18:
        v16 = explicitCopy;
        goto LABEL_19;
      case 0x10Du:
LABEL_10:
        objc_msgSend_p_setFormatFlags_explicit_(self, v9, 512, explicitCopy);
        if (!setCopy)
        {
          return;
        }

        selfCopy10 = self;
        v13 = 2;
        break;
      case 0x10Eu:
      case 0x112u:
LABEL_7:
        objc_msgSend_p_setFormatFlags_explicit_(self, v9, 256, explicitCopy);
        if (!setCopy)
        {
          return;
        }

        selfCopy10 = self;
        v13 = 3;
        break;
      case 0x10Fu:
LABEL_26:
        objc_msgSend_p_setFormatFlags_explicit_(self, v9, 256, explicitCopy);
        if (setCopy)
        {
          selfCopy11 = self;
          v21 = 1;
LABEL_28:

          MEMORY[0x2821F9670](selfCopy11, sel_p_TSTCellSetMostRecentlySetTextFormat_, v21, v10);
        }

        return;
      case 0x110u:
LABEL_22:
        objc_msgSend_p_setFormatFlags_explicit_(self, v9, 256, explicitCopy);
        if (setCopy)
        {
          selfCopy12 = self;
          v19 = 1;
LABEL_33:

          MEMORY[0x2821F9670](selfCopy12, sel_p_TSTCellSetMostRecentlySetDateFormat_, v19, v17);
        }

        return;
      default:
        return;
    }

    MEMORY[0x2821F9670](selfCopy10, sel_p_TSTCellSetMostRecentlySetNumberFormat_, v13, v11);
  }
}

- (id)p_spareFormatOfType:(unsigned int)type allowMismatchedSpare:(BOOL)spare explicitOnly:(BOOL)only
{
  v7 = 0;
  if (type > 265)
  {
    if (type > 269)
    {
      if (type - 270 >= 3 && type != 274)
      {
LABEL_39:
        if (spare)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }

      if (!only || (self->_explicitFormatFlags & 0x100) != 0)
      {
        v8 = 176;
        goto LABEL_42;
      }

      goto LABEL_38;
    }

    switch(type)
    {
      case 0x10Au:
        if (only && (self->_explicitFormatFlags & 0x400) == 0)
        {
          goto LABEL_38;
        }

        v8 = 200;
        break;
      case 0x10Cu:
        if (only && (self->_explicitFormatFlags & 4) == 0)
        {
          goto LABEL_38;
        }

        v8 = 168;
        break;
      case 0x10Du:
        if (only && (self->_explicitFormatFlags & 0x200) == 0)
        {
          goto LABEL_38;
        }

        v8 = 184;
        break;
      default:
        goto LABEL_39;
    }
  }

  else
  {
    if (type <= 260)
    {
      if (type - 258 >= 2 && type != 256)
      {
        if (type != 257)
        {
          goto LABEL_39;
        }

        if (!only || (self->_explicitFormatFlags & 2) != 0)
        {
          v8 = 152;
          goto LABEL_42;
        }

        goto LABEL_38;
      }

LABEL_18:
      if (!only || (self->_explicitFormatFlags & 1) != 0)
      {
        v8 = 144;
        goto LABEL_42;
      }

LABEL_38:
      v7 = 0;
      goto LABEL_39;
    }

    if (type - 264 < 2)
    {
      if (only && (self->_explicitFormatFlags & 0x40) == 0)
      {
        goto LABEL_38;
      }

      v8 = 192;
    }

    else
    {
      if (type != 261)
      {
        if (type != 262)
        {
          goto LABEL_39;
        }

        goto LABEL_18;
      }

      if (only && (self->_explicitFormatFlags & 8) == 0)
      {
        goto LABEL_38;
      }

      v8 = 160;
    }
  }

LABEL_42:
  v7 = *(&self->super.isa + v8);
  if (spare)
  {
LABEL_44:
    v9 = v7;
    goto LABEL_46;
  }

LABEL_43:
  if (objc_msgSend_formatType(v7, a2, *&type, spare) == type)
  {
    goto LABEL_44;
  }

  v9 = 0;
LABEL_46:

  return v9;
}

- (BOOL)hasFormatOfType:(unsigned int)type allowMismatchedSpare:(BOOL)spare
{
  spareCopy = spare;
  v5 = *&type;
  if (objc_msgSend_formatType(self, a2, *&type, spare) == type)
  {
    return 1;
  }

  v9 = objc_msgSend_p_spareFormatOfType_allowMismatchedSpare_explicitOnly_(self, v7, v5, spareCopy, 0);
  v8 = v9 != 0;

  return v8;
}

- (BOOL)hasExplicitFormatOfType:(unsigned int)type allowMismatchedSpare:(BOOL)spare
{
  spareCopy = spare;
  v5 = *&type;
  if (objc_msgSend_formatType(self, a2, *&type, spare) == type && (objc_msgSend_currentFormatIsExplicit(self, v7, v8, v9) & 1) != 0)
  {
    return 1;
  }

  v11 = objc_msgSend_p_spareFormatOfType_allowMismatchedSpare_explicitOnly_(self, v7, v5, spareCopy, 1);
  v10 = v11 != 0;

  return v10;
}

+ (BOOL)formatType:(unsigned int)type sharesASpareSlotWithFormatType:(unsigned int)formatType
{
  if (type == formatType)
  {
    goto LABEL_2;
  }

  if (type - 256 > 0x10)
  {
LABEL_12:
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  if (((1 << type) & 0x4D) != 0)
  {
    if (formatType - 256 < 7)
    {
      v4 = 0x4Du >> formatType;
      return v4 & 1;
    }

    goto LABEL_12;
  }

  if (((1 << type) & 0x1C000) != 0)
  {
    if (formatType - 270 >= 3)
    {
      goto LABEL_12;
    }
  }

  else if (((1 << type) & 0x300) == 0 || (formatType & 0xFFFFFFFE) != 0x108)
  {
    goto LABEL_12;
  }

LABEL_2:
  LOBYTE(v4) = 1;
  return v4 & 1;
}

- (NSString)customFormatString
{
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (v6)
  {
    objc_msgSend_doubleValue(self, v3, v4, v5);
    v10 = objc_msgSend_customFormatDataForValue_(v6, v7, v8, v9);
    v14 = objc_msgSend_formatString(v10, v11, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)currentFormatUsesAccountingStyle
{
  v5 = objc_msgSend_formatType(self, a2, v2, v3);
  if (v5 == 270)
  {
    v14 = objc_msgSend_asCustomFormatWrapper(self->_currentFormat, v6, v7, v8);
    objc_msgSend_doubleValue(self, v15, v16, v17);
    v21 = objc_msgSend_customFormatDataForValue_(v14, v18, v19, v20);

    v13 = objc_msgSend_useAccountingStyle(v21, v22, v23, v24);
    v9 = v21;
  }

  else
  {
    if (v5 != 257)
    {
      return 0;
    }

    v9 = objc_msgSend_asCurrencyFormat(self->_currentFormat, v6, v7, v8);
    v13 = objc_msgSend_accountingStyle(v9, v10, v11, v12);
  }

  return v13;
}

- (unsigned)currentFormatNegativeStyle
{
  v2 = self->_currentFormat;
  v6 = objc_msgSend_asNumberFormat(v2, v3, v4, v5);

  if (v6)
  {
    v10 = objc_msgSend_asNumberFormat(v2, v7, v8, v9);
    v14 = objc_msgSend_negativeStyle(v10, v11, v12, v13);
  }

  else
  {
    v15 = objc_msgSend_asCurrencyFormat(v2, v7, v8, v9);

    if (!v15)
    {
      v22 = 4;
      goto LABEL_6;
    }

    v10 = objc_msgSend_asCurrencyFormat(v2, v16, v17, v18);
    v14 = objc_msgSend_negativeStyle(v10, v19, v20, v21);
  }

  v22 = v14;

LABEL_6:
  return v22;
}

- (BOOL)isMostRecentlyExplicitPercent
{
  if (objc_msgSend_formatType(self, a2, v2, v3) == 258)
  {
    return 1;
  }

  if ((objc_msgSend_currentFormatIsExplicit(self, v5, v6, v7) & 1) != 0 || objc_msgSend_p_mostRecentlySetNumberFormatType(self, v9, v10, v11))
  {
    return 0;
  }

  return objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v12, 258, 0);
}

+ (BOOL)mismatchBetweenValueType:(unsigned __int8)type andFormatType:(unsigned int)formatType
{
  if (type > 5)
  {
    if (type == 9)
    {
LABEL_23:
      LOBYTE(v5) = formatType != 271 && formatType != 260;
      return v5 & 1;
    }

    LOBYTE(v5) = formatType != 268;
    v7 = formatType != 263 && formatType != 1;
    if (type != 6)
    {
      v7 = 0;
    }

    if (type != 7)
    {
      LOBYTE(v5) = v7;
    }
  }

  else
  {
    if (type != 2)
    {
      if (type != 3)
      {
        LOBYTE(v5) = formatType != 261 && formatType != 272;
        if (type != 5)
        {
          LOBYTE(v5) = 0;
        }

        return v5 & 1;
      }

      goto LABEL_23;
    }

    v5 = 0x17B0u >> formatType;
    if (formatType - 256 >= 0xF)
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5 & 1;
}

- (BOOL)hasMismatchedFormatAndValue
{
  valueType = self->_valueType;
  v5 = objc_msgSend_formatType(self, a2, v2, v3);

  return MEMORY[0x2821F9670](TSTCell, sel_mismatchBetweenValueType_andFormatType_, valueType, v5);
}

- (void)setDefaultFormatForValue
{
  v3 = self->_valueType - 2;
  if (v3 <= 8 && ((0x1BBu >> v3) & 1) != 0)
  {
    v4 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], a2, dword_2217E0ED8[(self->_valueType - 2)], self->_locale);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  objc_msgSend_setCurrentFormat_isExplicit_(self, a2, v4, 0);
}

- (void)setCommentStorage:(id)storage clearingID:(BOOL)d
{
  dCopy = d;
  storageCopy = storage;
  if (self->_commentStorage != storageCopy)
  {
    v8 = storageCopy;
    objc_storeStrong(&self->_commentStorage, storage);
    storageCopy = v8;
    if (!v8 || dCopy)
    {
      self->_commentStorageID = 0;
    }
  }
}

- (void)setImportWarningSet:(id)set clearingID:(BOOL)d
{
  dCopy = d;
  setCopy = set;
  if (self->_importWarningSet != setCopy)
  {
    v8 = setCopy;
    objc_storeStrong(&self->_importWarningSet, set);
    setCopy = v8;
    if (!v8 || dCopy)
    {
      self->_importWarningSetID = 0;
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = objc_msgSend_cellValueTypeDescription(self, v6, v7, v8);
  v13 = objc_msgSend_cellValueDescription(self, v10, v11, v12);
  v16 = objc_msgSend_stringWithFormat_(v3, v14, @"<%@:%p: value type %@ value %@>", v15, v5, self, v9, v13);

  return v16;
}

+ (id)stringForCellValueType:(unsigned __int8)type
{
  if (type > 0xAu)
  {
    return 0;
  }

  else
  {
    return *(&off_278462098 + type);
  }
}

- (id)cellValueDescription
{
  v5 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, v2, v3);
  if (objc_msgSend_hasFormula(self, v6, v7, v8))
  {
    objc_msgSend_appendString_(v5, v9, @"Cell Spec: ", v10);
    v14 = objc_msgSend_description(self->_cellSpec, v11, v12, v13);
    objc_msgSend_appendString_(v5, v15, v14, v16);
  }

  objc_msgSend_appendString_(v5, v9, @"Value: ", v10);
  valueType = self->_valueType;
  if (valueType <= 5)
  {
    if (self->_valueType <= 2u)
    {
      if (!self->_valueType)
      {
        objc_msgSend_appendString_(v5, v17, @"<empty>", v19);
        goto LABEL_27;
      }

      if (valueType == 2)
      {
        v21 = MEMORY[0x277CCACA8];
        objc_msgSend_doubleValue(self, v17, v18, v19);
        v25 = objc_msgSend_stringWithFormat_(v21, v22, @"<number: %f>", v23, v24);
        objc_msgSend_appendString_(v5, v26, v25, v27);
LABEL_25:

        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (valueType == 3)
    {
      v56 = MEMORY[0x277CCACA8];
      v25 = objc_msgSend_stringValue(self, v17, v18, v19);
      v38 = objc_msgSend_stringWithFormat_(v56, v57, @"<string: '%@'>", v58, v25);
      objc_msgSend_appendString_(v5, v59, v38, v60);
    }

    else
    {
      if (valueType != 5)
      {
        goto LABEL_26;
      }

      v34 = MEMORY[0x277CCACA8];
      v25 = objc_msgSend_dateValue(self, v17, v18, v19);
      v38 = objc_msgSend_description(v25, v35, v36, v37);
      v41 = objc_msgSend_stringWithFormat_(v34, v39, @"<date: '%@'>", v40, v38);
      objc_msgSend_appendString_(v5, v42, v41, v43);
    }

LABEL_23:

    goto LABEL_25;
  }

  if (self->_valueType > 7u)
  {
    if (valueType == 8)
    {
      v25 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"<error>", v19);
      objc_msgSend_appendString_(v5, v61, v25, v62);
      goto LABEL_25;
    }

    if (valueType != 9)
    {
      goto LABEL_26;
    }

    v44 = MEMORY[0x277CCACA8];
    v25 = objc_msgSend_stringValue(self, v17, v18, v19);
    v38 = objc_msgSend_stringWithFormat_(v44, v45, @"<rich text: '%@'>", v46, v25);
    objc_msgSend_appendString_(v5, v47, v38, v48);
    goto LABEL_23;
  }

  if (valueType == 6)
  {
    v49 = MEMORY[0x277CCACA8];
    objc_msgSend_doubleValue(self, v17, v18, v19);
    v52 = @"TRUE";
    if (v53 == 0.0)
    {
      v52 = @"FALSE";
    }

    v25 = objc_msgSend_stringWithFormat_(v49, v50, @"<BOOL: '%@'>", v51, v52);
    objc_msgSend_appendString_(v5, v54, v25, v55);
    goto LABEL_25;
  }

  if (valueType == 7)
  {
    v28 = MEMORY[0x277CCACA8];
    objc_msgSend_doubleValue(self, v17, v18, v19);
    v25 = objc_msgSend_stringWithFormat_(v28, v29, @"<duration: %f>", v30, v31);
    objc_msgSend_appendString_(v5, v32, v25, v33);
    goto LABEL_25;
  }

LABEL_26:
  objc_msgSend_appendString_(v5, v17, @"<unknown cell type>", v19);
LABEL_27:

  return v5;
}

@end