@interface TSTCell
+ (BOOL)formatType:(unsigned int)type isSameCellFormatKindAs:(unsigned int)as allowNumberCurrencyMismatch:(BOOL)mismatch;
+ (BOOL)mismatchBetweenValueType:(unsigned __int8)type andFormatType:(unsigned int)formatType;
+ (id)stringForCellValueType:(unsigned __int8)type;
+ (unsigned)cellFormatKindForValueType:(unsigned __int8)type;
- (BOOL)_coerceEmptyCellToFormat:(unsigned int)format;
- (BOOL)_coerceTextCellToBestNumberFormatUsingLimitedParsing:(BOOL)parsing allowFractions:(BOOL)fractions;
- (BOOL)_coerceToBooleanFormat;
- (BOOL)_coerceToCheckboxFormat;
- (BOOL)_coerceToCurrencyFormat;
- (BOOL)_coerceToCustomDateTimeFormat;
- (BOOL)_coerceToCustomNumberishFormat:(unsigned int)format;
- (BOOL)_coerceToCustomTextFormat;
- (BOOL)_coerceToDateTimeFormat;
- (BOOL)_coerceToDecimalFormat;
- (BOOL)_coerceToDurationFormat;
- (BOOL)_coerceToFractionFormat;
- (BOOL)_coerceToNumberFormatWithSeparatorFixing:(unsigned int)fixing;
- (BOOL)_coerceToPercentageFormat;
- (BOOL)_coerceToRatingFormat;
- (BOOL)_coerceToScientificFormat;
- (BOOL)_coerceToTextFormat;
- (BOOL)_parseFormulaFromString:(id)string tableInfo:(id)info cellID:(TSUCellCoord)d;
- (BOOL)_validateCustomFormatWrapper:(id)wrapper;
- (BOOL)coerceToBaseFormat:(id)format;
- (BOOL)coerceToFormatType:(unsigned int)type usingSpares:(BOOL)spares;
- (BOOL)currentFormatIsExplicitForCalcEngine;
- (BOOL)currentFormatUsesAccountingStyle;
- (BOOL)dataIsReplaceable;
- (BOOL)hasAnyWarning;
- (BOOL)hasControl;
- (BOOL)hasEditableFormula;
- (BOOL)hasEqualContentToCell:(id)cell usingRichTextObjectComparisonBlock:(id)block;
- (BOOL)hasEqualValueToCell:(id)cell;
- (BOOL)hasExplicitFormatOfType:(unsigned int)type allowMismatchedSpare:(BOOL)spare;
- (BOOL)hasFormatOfType:(unsigned int)type allowMismatchedSpare:(BOOL)spare;
- (BOOL)hasFormula;
- (BOOL)hasFormulaEvaluationError;
- (BOOL)hasFormulaSyntaxError;
- (BOOL)hasRichText;
- (BOOL)hasStockFormulaForStockUI;
- (BOOL)hasValueOrCommentBreakingMergeFragment;
- (BOOL)isEmpty;
- (BOOL)isEmptyForDataStore;
- (BOOL)isMostRecentlyExplicitPercent;
- (BOOL)mightBeInterestedInMigration;
- (BOOL)p_clearIfImplicitAndNotCurrentForKind:(unsigned __int8)kind format:(id)format explicitFormatMask:(unsigned __int16)mask;
- (BOOL)p_currentFormatIsEqualToOtherCellFormat:(id)format;
- (BOOL)removeControlCellSpec;
- (BOOL)removeControlFormatSpares;
- (BOOL)removeCustomFormatsWithIDs:(id)ds;
- (BOOL)validateAndRepair;
- (BOOL)valueRepresentsDateWithoutTime;
- (NSDate)dateValue;
- (NSString)_rawValueForStringCoercion;
- (NSString)customFormatString;
- (NSString)formattedValue;
- (NSString)formulaSyntaxErrorString;
- (NSString)stringForDisplayWithoutColor;
- (NSString)stringForEditing;
- (NSString)stringForUnderlyingValue;
- (NSString)stringValue;
- (TSCEFormulaObject)formulaObject;
- (TSDFill)cellFill;
- (TSTCell)initWithLocale:(id)locale;
- (TSTCell)initWithStorageRef:(TSTCellStorage *)ref dataStore:(id)store;
- (TSTCellSpec)cellSpecForDiff;
- (TSTCellStyle)cellStyle;
- (TSTStockDetails)stockDetails;
- (TSUDecimal)_rawValueForDecimalCoercion;
- (TSUDecimal)currencyDecimalValue;
- (TSUDecimal)numberDecimalValue;
- (TSUDecimal)underlyingDecimalValue;
- (TSWPParagraphStyle)effectiveTextStyle;
- (TSWPParagraphStyle)textStyle;
- (TSWPStorage)formulaSyntaxError;
- (TSWPStorage)richTextStorageForLayout;
- (TSWPStorage)richTextValue;
- (double)currencyDoubleValue;
- (double)durationTimeIntervalValue;
- (double)numberDoubleValue;
- (id)candidateFormatForSliderStepperControlWithIsCurrent:(BOOL *)current;
- (id)cellByApplyingCellDiff:(id)diff toTable:(id)table andUpdateInverse:(id)inverse optionalConcurrentStylesheet:(id)stylesheet;
- (id)cellFillComparedToDefault:(id)default suppressCS:(BOOL)s isDefault:(BOOL *)isDefault;
- (id)cellValueDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)formatForStorageFlag:(unsigned int)flag;
- (id)formatOfCellFormatKind:(unsigned __int8)kind isExplicit:(BOOL *)explicit;
- (id)formatOfType:(unsigned int)type allowMismatchedSpare:(BOOL)spare;
- (id)p_formatOfCellFormatKind:(unsigned __int8)kind create:(BOOL)create returnFormat:(BOOL)format outCreated:(BOOL *)created;
- (id)reorganizeValueForSorting;
- (int)writingDirection;
- (unint64_t)popupChoiceIndex;
- (unsigned)currentFormatNegativeStyle;
- (unsigned)formatIDForStorageFlag:(unsigned int)flag;
- (unsigned)formatType;
- (unsigned)formulaSyntaxErrorID;
- (unsigned)interactionType;
- (unsigned)richTextID;
- (unsigned)stringID;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper supportsInlineAttachments:(BOOL)attachments;
- (void)applyFormulaResult:(id)result context:(id)context hasWarnings:(BOOL)warnings outWriteDidBeginOrEndWithTextCell:(BOOL *)cell propagateCheckboxes:(BOOL)checkboxes;
- (void)applyPopupChoiceIndex:(unint64_t)index;
- (void)bakeFormulaToValue;
- (void)clear;
- (void)clearAllFormats;
- (void)clearDataListIDs;
- (void)clearFormatOfType:(unsigned int)type;
- (void)clearStrokes;
- (void)clearValue;
- (void)copyAllFormatsToCell:(id)cell;
- (void)copyJustStrokesToCell:(id)cell;
- (void)copyJustStyleAndStrokesToCell:(id)cell;
- (void)copyJustValueToCell:(id)cell;
- (void)copyToCell:(id)cell;
- (void)copyValueAndFormatToCell:(id)cell;
- (void)inflateFromStorageRef:(TSTCellStorage *)ref dataStore:(id)store cache:(id)cache suppressingTransmutation:(BOOL)transmutation;
- (void)p_TSTCellSetMostRecentlySetNumberFormatWithCurrencyFlag:(BOOL)flag;
- (void)p_clearFormatOfCellFormatKind:(unsigned __int8)kind;
- (void)p_setFormatExplicit:(BOOL)explicit fromCellFormatKind:(unsigned __int8)kind setMostRecentlySet:(BOOL)set;
- (void)p_setFormatFlags:(unsigned __int16)flags explicit:(BOOL)explicit;
- (void)p_setFormatForFormulaResult:(id)result propagation:(BOOL)propagation;
- (void)parseContentOrFormulaFromString:(id)string tableInfo:(id)info cellID:(TSUCellCoord)d flags:(unint64_t)flags;
- (void)processCustomFormatsWithBlock:(id)block;
- (void)setBoolValue:(BOOL)value;
- (void)setCellSpec:(id)spec clearingID:(BOOL)d;
- (void)setCellStyle:(id)style clearingID:(BOOL)d;
- (void)setCellStyleHandle:(id)handle clearingID:(BOOL)d;
- (void)setCommentStorage:(id)storage clearingID:(BOOL)d;
- (void)setConditionalStyle:(id)style clearingID:(BOOL)d;
- (void)setCurrencyDecimalValue:(TSUDecimal)value roundToDoublePrecision:(BOOL)precision;
- (void)setCurrencyOrNumberDecimalValue:(const TSUDecimal *)value;
- (void)setCurrencyOrNumberDoubleValue:(double)value;
- (void)setCurrentFormat:(id)format flags:(unsigned __int16)flags;
- (void)setCurrentFormat:(id)format isExplicit:(BOOL)explicit;
- (void)setCurrentFormat:(id)format isExplicit:(BOOL)explicit forExcel:(BOOL)excel;
- (void)setDateValue:(id)value;
- (void)setDefaultFormatForValue;
- (void)setDurationTimeIntervalValue:(double)value;
- (void)setFormat:(id)format isExplicit:(BOOL)explicit;
- (void)setFormat:(id)format shouldSetExplFlags:(BOOL)flags isExplicit:(BOOL)explicit makeCurrent:(BOOL)current clearingID:(BOOL)d;
- (void)setFormatID:(unsigned int)d forStorageFlag:(unsigned int)flag;
- (void)setFormulaObject:(id)object clearingID:(BOOL)d;
- (void)setFormulaSyntaxError:(id)error clearingID:(BOOL)d;
- (void)setFormulaSyntaxErrorID:(unsigned int)d;
- (void)setImportWarningSet:(id)set clearingID:(BOOL)d;
- (void)setNumberDecimalValue:(TSUDecimal)value roundToDoublePrecision:(BOOL)precision;
- (void)setProvidedValueTypeBeforeUpgrade;
- (void)setRichTextID:(unsigned int)d;
- (void)setRichTextValue:(id)value clearingID:(BOOL)d convertToPlaintextIfPossible:(BOOL)possible;
- (void)setStringID:(unsigned int)d;
- (void)setStringValue:(id)value clearingID:(BOOL)d;
- (void)setStringValue:(id)value clearingID:(BOOL)d shouldWrap:(BOOL)wrap;
- (void)setTextStyle:(id)style clearingID:(BOOL)d;
- (void)setTextStyleHandle:(id)handle clearingID:(BOOL)d;
- (void)shallowCopyToCell:(id)cell;
- (void)suggestCellFormatKind:(unsigned __int8)kind;
- (void)updateCustomFormatFromPaste:(id)paste;
@end

@implementation TSTCell

- (TSUDecimal)_rawValueForDecimalCoercion
{
  v5 = objc_msgSend_valueType(self, a2, v2, v3);
  if (v5 > 5)
  {
    switch(v5)
    {
      case 6:
        objc_msgSend_BOOLValue(self, v6, v7, v8);
        break;
      case 7:
        objc_msgSend_durationTimeIntervalValue(self, v6, v7, v8);
        break;
      case 10:
        v15 = objc_msgSend_currencyDecimalValue(self, v6, v7, v8);
        v16 = v9;
        goto LABEL_15;
    }

LABEL_14:
    TSUDecimal::operator=();
    goto LABEL_15;
  }

  if (v5 != 2)
  {
    goto LABEL_14;
  }

  v15 = objc_msgSend_numberDecimalValue(self, v6, v7, v8);
  v16 = v10;
  if (objc_msgSend_formatType(self, v10, v11, v12) == 267)
  {
    TSUDecimal::operator=();
    if ((TSUDecimal::operator<=() & 1) == 0 || (TSUDecimal::operator=(), TSUDecimal::operator<()))
    {
      TSUDecimal::operator=();
    }
  }

LABEL_15:
  v13 = v15;
  v14 = v16;
  result._decimal.w[1] = v14;
  result._decimal.w[0] = v13;
  return result;
}

- (NSString)_rawValueForStringCoercion
{
  v5 = objc_msgSend_valueType(self, a2, v2, v3);
  if (v5 == 9)
  {
    v10 = objc_msgSend_richTextValue(self, v6, v7, v8);
    v9 = objc_msgSend_string(v10, v11, v12, v13);
  }

  else if (v5 == 3)
  {
    v9 = objc_msgSend_stringValue(self, v6, v7, v8);
  }

  else
  {
    v9 = &stru_2834BADA0;
  }

  return v9;
}

- (BOOL)_coerceEmptyCellToFormat:(unsigned int)format
{
  v4 = *&format;
  v9 = objc_msgSend_formatType(self, a2, *&format, v3);
  if (v9 != v4)
  {
    v10 = 0;
    switch(v4)
    {
      case 254:
      case 264:
      case 265:
      case 266:
        v11 = MEMORY[0x277D81150];
        v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTCell(CoercionPrivate) _coerceEmptyCellToFormat:]", v8);
        v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_CoercionEngine.mm", v14);
        v16 = NSStringForTSUFormatType();
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v15, 200, 0, "Cannot coerce to %@", v16);

        v10 = 0;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
        objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v21, 0, 1, 0, 1, 1);
        goto LABEL_7;
      case 255:
      case 273:
        goto LABEL_6;
      case 256:
        if (objc_msgSend__coerceToDecimalFormat(self, v6, v7, v8))
        {
          goto LABEL_22;
        }

        v45 = MEMORY[0x277D80680];
        v23 = objc_msgSend_locale(self, v42, v43, v44);
        v25 = objc_msgSend_defaultFormatWithFormatType_locale_(v45, v46, 256, v23);
        goto LABEL_5;
      case 257:
        if (objc_msgSend__coerceToCurrencyFormat(self, v6, v7, v8))
        {
          goto LABEL_22;
        }

        v40 = MEMORY[0x277D80680];
        v23 = objc_msgSend_locale(self, v37, v38, v39);
        v25 = objc_msgSend_defaultFormatWithFormatType_locale_(v40, v41, 257, v23);
        goto LABEL_5;
      case 258:
        if (objc_msgSend__coerceToPercentageFormat(self, v6, v7, v8))
        {
          goto LABEL_22;
        }

        v35 = MEMORY[0x277D80680];
        v23 = objc_msgSend_locale(self, v32, v33, v34);
        v25 = objc_msgSend_defaultFormatWithFormatType_locale_(v35, v36, 258, v23);
        goto LABEL_5;
      case 259:
        if (objc_msgSend__coerceToScientificFormat(self, v6, v7, v8))
        {
          goto LABEL_22;
        }

        v30 = MEMORY[0x277D80680];
        v23 = objc_msgSend_locale(self, v27, v28, v29);
        v25 = objc_msgSend_defaultFormatWithFormatType_locale_(v30, v31, 259, v23);
        goto LABEL_5;
      case 260:
      case 261:
      case 263:
      case 267:
      case 268:
      case 270:
      case 271:
      case 272:
      case 274:
        goto LABEL_4;
      case 262:
        if (objc_msgSend__coerceToFractionFormat(self, v6, v7, v8))
        {
          goto LABEL_22;
        }

        v50 = MEMORY[0x277D80680];
        v23 = objc_msgSend_locale(self, v47, v48, v49);
        v25 = objc_msgSend_defaultFormatWithFormatType_locale_(v50, v51, 262, v23);
        goto LABEL_5;
      case 269:
        if (objc_msgSend_coerceToBaseFormat_(self, v6, 0, v8))
        {
LABEL_22:
          v10 = 0;
        }

        else
        {
          v55 = MEMORY[0x277D80680];
          v23 = objc_msgSend_locale(self, v52, v53, v54);
          v25 = objc_msgSend_defaultFormatWithFormatType_locale_(v55, v56, 269, v23);
LABEL_5:
          v10 = v25;

LABEL_6:
          objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v6, v10, 1, 0, 1, 1);
        }

LABEL_7:

        break;
      default:
        if (v4 != 1)
        {
          goto LABEL_6;
        }

LABEL_4:
        v22 = MEMORY[0x277D80680];
        v23 = objc_msgSend_locale(self, v6, v7, v8);
        v25 = objc_msgSend_defaultFormatWithFormatType_locale_(v22, v24, v4, v23);
        goto LABEL_5;
    }
  }

  return v9 != v4;
}

- (BOOL)_coerceToDecimalFormat
{
  v95._decimal.w[0] = objc_msgSend__rawValueForDecimalCoercion(self, a2, v2, v3);
  v95._decimal.w[1] = v5;
  v8 = objc_msgSend_currentFormat(self, v5, v6, v7);
  v12 = objc_msgSend_formatType(v8, v9, v10, v11);
  v16 = 0;
  v17 = 0;
  if (v12 <= 258)
  {
    if (v12 != 1)
    {
      if (v12 == 257)
      {
        v69 = objc_alloc(MEMORY[0x277D806A0]);
        v20 = objc_msgSend_asCurrencyFormat(v8, v70, v71, v72);
        v76 = objc_msgSend_negativeStyle(v20, v73, v74, v75);
        v40 = objc_msgSend_asCurrencyFormat(v8, v77, v78, v79);
        v83 = objc_msgSend_showThousandsSeparator(v40, v80, v81, v82);
        v16 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v69, v84, 256, 253, v76, v83);
      }

      else
      {
        if (v12 != 258)
        {
          goto LABEL_10;
        }

        v29 = objc_alloc(MEMORY[0x277D806A0]);
        v20 = objc_msgSend_asNumberFormat(v8, v30, v31, v32);
        v36 = objc_msgSend_decimalPlaces(v20, v33, v34, v35);
        v40 = objc_msgSend_asNumberFormat(v8, v37, v38, v39);
        v44 = objc_msgSend_negativeStyle(v40, v41, v42, v43);
        v48 = objc_msgSend_asNumberFormat(v8, v45, v46, v47);
        v52 = objc_msgSend_showThousandsSeparator(v48, v49, v50, v51);
        v16 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v29, v53, 256, v36, v44, v52);
      }

      goto LABEL_6;
    }
  }

  else
  {
    v18 = v12 - 3;
    if ((v12 - 259) > 0xF)
    {
      goto LABEL_10;
    }

    if (((1 << v18) & 0x8F18) == 0)
    {
      if (((1 << v18) & 0x1002) != 0)
      {
        v54 = objc_msgSend__rawValueForStringCoercion(self, v13, v14, v15);
        v58 = objc_msgSend_locale(self, v55, v56, v57);
        MEMORY[0x223D9F8D0](v94, v58);

        TSUUnivNumberParser::parseAsNumber(&v92, v94, v54);
        if (v93 == -999 || (TSUDecimal::operator=(), v95 = v91, (TSUDecimal::isInf(&v95) & 1) != 0) || (TSUDecimal::isNaN(&v95) & 1) != 0)
        {
          v16 = 0;
          v59 = 0;
        }

        else
        {
          if (v93 > 1)
          {
            v88 = 253;
          }

          else
          {
            v85 = TSUParsedNumber::numberOfDecimalPlaces(&v92);
            v86 = TSUDecimal::numberOfFractionalDigits(&v95);
            v87 = v85;
            if (v86 > v85)
            {
              v87 = v86;
            }

            if (v87 >= *MEMORY[0x277D81528])
            {
              v88 = *MEMORY[0x277D81528];
            }

            else
            {
              v88 = v87;
            }
          }

          v89 = objc_alloc(MEMORY[0x277D806A0]);
          v16 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v89, v90, 256, v88, 0, 0);
          v59 = 1;
        }

        MEMORY[0x223D9F890](&v92);

        if ((v59 & 1) == 0)
        {
          v17 = 0;
          goto LABEL_10;
        }

        goto LABEL_7;
      }

      if (v12 != 259)
      {
        goto LABEL_10;
      }

      v60 = objc_alloc(MEMORY[0x277D806A0]);
      v20 = objc_msgSend_asNumberFormat(v8, v61, v62, v63);
      v67 = objc_msgSend_decimalPlaces(v20, v64, v65, v66);
      v22 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v60, v68, 256, v67, 0, 0);
      goto LABEL_5;
    }
  }

  v19 = MEMORY[0x277D80680];
  v20 = objc_msgSend_locale(self, v13, v14, v15);
  v22 = objc_msgSend_defaultFormatWithFormatType_locale_(v19, v21, 256, v20);
LABEL_5:
  v16 = v22;
LABEL_6:

LABEL_7:
  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v23, v16, 1, 0, 1, 1);
  if (objc_msgSend_valueType(self, v24, v25, v26))
  {
    objc_msgSend_setNumberDecimalValue_(self, v27, v95._decimal.w[0], v95._decimal.w[1]);
  }

  v17 = 1;
LABEL_10:

  return v17;
}

- (BOOL)_coerceToScientificFormat
{
  v53._decimal.w[0] = objc_msgSend__rawValueForDecimalCoercion(self, a2, v2, v3);
  v53._decimal.w[1] = v5;
  v8 = objc_msgSend_currentFormat(self, v5, v6, v7);
  v12 = objc_msgSend_formatType(v8, v9, v10, v11);
  if ((v12 - 256) > 0x12)
  {
    goto LABEL_18;
  }

  if (((1 << v12) & 0x468C2) != 0)
  {
LABEL_3:
    v16 = MEMORY[0x277D80680];
    v17 = objc_msgSend_locale(self, v13, v14, v15);
    v19 = objc_msgSend_defaultFormatWithFormatType_locale_(v16, v18, 259, v17);
LABEL_4:
    v20 = v19;

    goto LABEL_5;
  }

  if (((1 << v12) & 5) != 0)
  {
    v37 = objc_alloc(MEMORY[0x277D806A0]);
    v17 = objc_msgSend_asNumberFormat(v8, v38, v39, v40);
    v44 = objc_msgSend_decimalPlaces(v17, v41, v42, v43);
    v19 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v37, v45, 259, v44, 0, 0);
    goto LABEL_4;
  }

  if (((1 << v12) & 0x8010) == 0)
  {
LABEL_18:
    if (v12 != 1)
    {
      v26 = 0;
      v20 = 0;
      goto LABEL_8;
    }

    goto LABEL_3;
  }

  v28 = objc_msgSend__rawValueForStringCoercion(self, v13, v14, v15);
  v32 = objc_msgSend_locale(self, v29, v30, v31);
  MEMORY[0x223D9F8D0](v52, v32);

  TSUUnivNumberParser::parseAsNumber(&v50, v52, v28);
  if (v51 == -999 || (TSUDecimal::operator=(), v53 = v49, (TSUDecimal::isInf(&v53) & 1) != 0) || (TSUDecimal::isNaN(&v53) & 1) != 0)
  {
    v20 = 0;
    v36 = 0;
  }

  else
  {
    v46 = MEMORY[0x277D80680];
    v47 = objc_msgSend_locale(self, v33, v34, v35);
    v20 = objc_msgSend_defaultFormatWithFormatType_locale_(v46, v48, 259, v47);

    v36 = 1;
  }

  MEMORY[0x223D9F890](&v50);

  if ((v36 & 1) == 0)
  {
    v26 = 0;
    goto LABEL_8;
  }

LABEL_5:
  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v21, v20, 1, 0, 1, 1);
  if (objc_msgSend_valueType(self, v22, v23, v24))
  {
    objc_msgSend_setNumberDecimalValue_(self, v25, v53._decimal.w[0], v53._decimal.w[1]);
  }

  v26 = 1;
LABEL_8:

  return v26;
}

- (BOOL)_coerceToPercentageFormat
{
  v95._decimal.w[0] = objc_msgSend__rawValueForDecimalCoercion(self, a2, v2, v3);
  v95._decimal.w[1] = v5;
  v8 = objc_msgSend_currentFormat(self, v5, v6, v7);
  v12 = objc_msgSend_formatType(v8, v9, v10, v11);
  v16 = 0;
  v17 = 0;
  if (v12 <= 258)
  {
    if (v12 != 1)
    {
      if (v12 == 256)
      {
        v64 = objc_alloc(MEMORY[0x277D806A0]);
        v20 = objc_msgSend_asNumberFormat(v8, v65, v66, v67);
        v71 = objc_msgSend_decimalPlaces(v20, v68, v69, v70);
        v40 = objc_msgSend_asNumberFormat(v8, v72, v73, v74);
        v78 = objc_msgSend_negativeStyle(v40, v75, v76, v77);
        v82 = objc_msgSend_asNumberFormat(v8, v79, v80, v81);
        v86 = objc_msgSend_showThousandsSeparator(v82, v83, v84, v85);
        v16 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v64, v87, 258, v71, v78, v86);
      }

      else
      {
        if (v12 != 257)
        {
          goto LABEL_10;
        }

        v29 = objc_alloc(MEMORY[0x277D806A0]);
        v20 = objc_msgSend_asCurrencyFormat(v8, v30, v31, v32);
        v36 = objc_msgSend_negativeStyle(v20, v33, v34, v35);
        v40 = objc_msgSend_asCurrencyFormat(v8, v37, v38, v39);
        v44 = objc_msgSend_showThousandsSeparator(v40, v41, v42, v43);
        v16 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v29, v45, 258, 253, v36, v44);
      }

      goto LABEL_6;
    }
  }

  else
  {
    v18 = v12 - 3;
    if ((v12 - 259) > 0xF)
    {
      goto LABEL_10;
    }

    if (((1 << v18) & 0x8D18) == 0)
    {
      if (((1 << v18) & 0x1002) != 0)
      {
        v46 = objc_msgSend__rawValueForStringCoercion(self, v13, v14, v15);
        v50 = objc_msgSend_locale(self, v47, v48, v49);
        MEMORY[0x223D9F8D0](v94, v50);

        TSUUnivNumberParser::parseAsNumber(&v92, v94, v46);
        if (v93 == -999 || (TSUDecimal::operator=(), v95 = v91, (TSUDecimal::isInf(&v95) & 1) != 0) || (TSUDecimal::isNaN(&v95) & 1) != 0)
        {
          v16 = 0;
          v54 = 0;
        }

        else
        {
          v88 = MEMORY[0x277D80680];
          v89 = objc_msgSend_locale(self, v51, v52, v53);
          v16 = objc_msgSend_defaultFormatWithFormatType_locale_(v88, v90, 258, v89);

          v54 = 1;
        }

        MEMORY[0x223D9F890](&v92);

        if ((v54 & 1) == 0)
        {
          v17 = 0;
          goto LABEL_10;
        }

        goto LABEL_7;
      }

      if (v12 != 259)
      {
        goto LABEL_10;
      }

      v55 = objc_alloc(MEMORY[0x277D806A0]);
      v20 = objc_msgSend_asNumberFormat(v8, v56, v57, v58);
      v62 = objc_msgSend_decimalPlaces(v20, v59, v60, v61);
      v22 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v55, v63, 258, v62, 0, 0);
      goto LABEL_5;
    }
  }

  v19 = MEMORY[0x277D80680];
  v20 = objc_msgSend_locale(self, v13, v14, v15);
  v22 = objc_msgSend_defaultFormatWithFormatType_locale_(v19, v21, 258, v20);
LABEL_5:
  v16 = v22;
LABEL_6:

LABEL_7:
  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v23, v16, 1, 0, 1, 1);
  if (objc_msgSend_valueType(self, v24, v25, v26))
  {
    objc_msgSend_setNumberDecimalValue_(self, v27, v95._decimal.w[0], v95._decimal.w[1]);
  }

  v17 = 1;
LABEL_10:

  return v17;
}

- (BOOL)_coerceToFractionFormat
{
  v61._decimal.w[0] = objc_msgSend__rawValueForDecimalCoercion(self, a2, v2, v3);
  v61._decimal.w[1] = v5;
  v8 = objc_msgSend_formatType(self, v5, v6, v7);
  if ((v8 - 256) > 0x12)
  {
    goto LABEL_24;
  }

  if (((1 << v8) & 0x4688F) == 0)
  {
    if (((1 << v8) & 0x8010) != 0)
    {
      v33 = objc_msgSend__rawValueForStringCoercion(self, v9, v10, v11);
      if (v33)
      {
        v37 = v33;
        v38 = objc_msgSend_locale(self, v34, v35, v36);
        MEMORY[0x223D9F8D0](&v52, v38);

        TSUUnivNumberParser::parseAsNumber(&v50, &v52, v37);
        if (v51 == -999 || (TSUDecimal::operator=(), v61 = v49, (TSUDecimal::isInf(&v61) & 1) != 0) || (TSUDecimal::isNaN(&v61) & 1) != 0)
        {
          v15 = 0;
          v42 = 0;
        }

        else
        {
          v43 = MEMORY[0x277D80680];
          v44 = objc_msgSend_locale(self, v39, v40, v41);
          v15 = objc_msgSend_defaultFormatWithFormatType_locale_(v43, v45, 262, v44);

          v42 = 1;
        }

        MEMORY[0x223D9F890](&v50);

        if (v42)
        {
          goto LABEL_4;
        }

        goto LABEL_23;
      }

LABEL_25:
      v21 = 0;
      v15 = 0;
      goto LABEL_7;
    }

    if (((1 << v8) & 0x10020) != 0)
    {
      v23 = objc_msgSend_formattedValue(self, v9, v10, v11);
      if (v23)
      {
        v27 = v23;
        v28 = objc_msgSend_locale(self, v24, v25, v26);
        MEMORY[0x223D9F8D0](&v52, v28);

        TSUUnivNumberParser::parseAsNumber(&v50, &v52, v27);
        if (v51 == -999 || (TSUDecimal::operator=(), v61 = v49, (TSUDecimal::isInf(&v61) & 1) != 0) || (TSUDecimal::isNaN(&v61) & 1) != 0)
        {
          v15 = 0;
          v32 = 0;
        }

        else
        {
          v46 = MEMORY[0x277D80680];
          v47 = objc_msgSend_locale(self, v29, v30, v31);
          v15 = objc_msgSend_defaultFormatWithFormatType_locale_(v46, v48, 262, v47);

          v32 = 1;
        }

        MEMORY[0x223D9F890](&v50);

        if (v32)
        {
          goto LABEL_4;
        }

LABEL_23:
        v21 = 0;
        goto LABEL_7;
      }

      goto LABEL_25;
    }

LABEL_24:
    if (v8 == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_25;
  }

LABEL_3:
  v12 = MEMORY[0x277D80680];
  v13 = objc_msgSend_locale(self, v9, v10, v11);
  v15 = objc_msgSend_defaultFormatWithFormatType_locale_(v12, v14, 262, v13);

LABEL_4:
  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v16, v15, 1, 0, 1, 1);
  if (objc_msgSend_valueType(self, v17, v18, v19))
  {
    objc_msgSend_setNumberDecimalValue_(self, v20, v61._decimal.w[0], v61._decimal.w[1]);
  }

  v21 = 1;
LABEL_7:

  return v21;
}

- (BOOL)_coerceToDateTimeFormat
{
  v5 = objc_msgSend_formatType(self, a2, v2, v3);
  v9 = 0;
  LOBYTE(v10) = 0;
  if (v5 <= 270)
  {
    if (v5 != 260)
    {
      v11 = 0;
      if (v5 != 262)
      {
        goto LABEL_28;
      }

      v10 = objc_msgSend_formattedValue(self, v6, v7, v8);
      if (v10)
      {
        v15 = objc_msgSend_locale(self, v12, v13, v14);
        v79 = 0;
        v9 = TSUCreateDateFromString();
        v11 = 0;
LABEL_18:

        if (!v9)
        {
          LOBYTE(v10) = 0;
          goto LABEL_28;
        }

        v34 = objc_msgSend_length(v11, v66, v67, v68, v79);
        goto LABEL_20;
      }

      v9 = 0;
      goto LABEL_27;
    }

LABEL_8:
    v9 = objc_msgSend_stringValue(self, v6, v7, v8);
    if (v9 || (objc_msgSend_richTextValue(self, v16, v17, v18), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend_string(v19, v20, v21, v22), v9 = objc_claimAutoreleasedReturnValue(), v19, v9))
    {
      v23 = objc_msgSend_tswp_smartSingleQuotesCharacterSet(MEMORY[0x277CCA900], v16, v17, v18);
      v26 = objc_msgSend_rangeOfCharacterFromSet_(v9, v24, v23, v25);
      v28 = v27;

      if (v26 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = v9;
      }

      else
      {
        do
        {
          v10 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v9, v30, v26, v28, @"'");

          v41 = objc_msgSend_tswp_smartSingleQuotesCharacterSet(MEMORY[0x277CCA900], v38, v39, v40);
          v26 = objc_msgSend_rangeOfCharacterFromSet_(v10, v42, v41, v43);
          v28 = v44;

          v9 = v10;
        }

        while (v26 != 0x7FFFFFFFFFFFFFFFLL);
      }

      v15 = sub_2214C4C4C(v29);
      v48 = objc_msgSend_rangeOfCharacterFromSet_(v10, v45, v15, v46);
      while (v48 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v50 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v10, v47, v48, v47, @" ");

        v48 = objc_msgSend_rangeOfCharacterFromSet_(v50, v51, v15, v52);
        v10 = v50;
      }

      v53 = objc_msgSend_dateFormat(self, v47, 0x7FFFFFFFFFFFFFFFLL, v49);
      v57 = objc_msgSend_asDateTimeFormat(v53, v54, v55, v56);
      v61 = objc_msgSend_formatString(v57, v58, v59, v60);

      v65 = objc_msgSend_locale(self, v62, v63, v64);
      v9 = TSUCreateDateFromStringWithPreferredFormat();
      v11 = 0;

      goto LABEL_18;
    }

    LOBYTE(v10) = 0;
LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

  if (v5 != 272)
  {
    v11 = 0;
    if (v5 != 271)
    {
      goto LABEL_28;
    }

    goto LABEL_8;
  }

  v9 = objc_msgSend_dateValue(self, v6, v7, v8);
  v11 = 0;
  v34 = objc_msgSend_length(0, v31, v32, v33);
LABEL_20:
  if (v34)
  {
    v69 = objc_alloc(MEMORY[0x277D80658]);
    v10 = objc_msgSend_initWithFormatString_(v69, v70, v11, v71);
  }

  else
  {
    v73 = MEMORY[0x277D80680];
    v74 = objc_msgSend_locale(self, v35, v36, v37);
    v10 = objc_msgSend_defaultFormatWithFormatType_locale_(v73, v75, 261, v74);
  }

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v72, v10, 1, 0, 1, 1);
  objc_msgSend_setDateValue_(self, v76, v9, v77);

  LOBYTE(v10) = 1;
LABEL_28:

  return v10;
}

- (BOOL)_coerceToDurationFormat
{
  v40._decimal.w[0] = objc_msgSend__rawValueForDecimalCoercion(self, a2, v2, v3);
  v40._decimal.w[1] = v5;
  TSUDecimal::doubleValue(&v40);
  v7 = v6;
  v50 = v6;
  v14 = objc_msgSend_formatType(self, v8, v9, v10);
  result = 0;
  if (v14 > 269)
  {
    if (v14 == 271)
    {
LABEL_8:
      v16 = objc_msgSend__rawValueForStringCoercion(self, v11, v12, v13);
      v49 = 0;
      v48 = 1;
      v20 = objc_msgSend_locale(self, v17, v18, v19);
      started = TSUDurationFormatterTimeIntervalFromStringWithCompactStyleStartUnit();

      if (started)
      {
      }

      else
      {
        v25 = objc_msgSend_locale(self, v22, v23, v24);
        MEMORY[0x223D9F8D0](&v40, v25);

        TSUUnivNumberParser::parseAsNumber(&v38, &v40, v16);
        if (v39 == -999)
        {
          v26 = 0;
        }

        else
        {
          TSUDecimal::operator=();
          if (TSUDecimal::isInf(&v37))
          {
            v26 = 0;
          }

          else
          {
            v26 = TSUDecimal::isNaN(&v37) ^ 1;
          }

          TSUDecimal::doubleValue(&v37);
          v50 = v27 * 86400.0;
        }

        MEMORY[0x223D9F890](&v38);

        if (!v26)
        {
          return 0;
        }
      }

      goto LABEL_17;
    }

    if (v14 != 270)
    {
      return result;
    }
  }

  else if (v14 != 256)
  {
    if (v14 != 260)
    {
      return result;
    }

    goto LABEL_8;
  }

  v50 = v7 * 86400.0;
LABEL_17:
  objc_msgSend_automaticMaxAndMinDurationUnitsForTimeInterval_(MEMORY[0x277D80678], v11, v12, v13, v50);
  v28 = objc_alloc(MEMORY[0x277D80678]);
  v29 = TSUDurationFormatterMinDurationUnitInUnits();
  v30 = TSUDurationFormatterMaxDurationUnitInUnits();
  v32 = objc_msgSend_initWithUseAutomaticUnits_durationUnitSmallest_durationUnitLargest_durationStyle_(v28, v31, 1, v29, v30, 1);
  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v33, v32, 1, 0, 1, 1);
  objc_msgSend_setDurationTimeIntervalValue_(self, v34, v35, v36, v50);

  return 1;
}

- (BOOL)_coerceToCurrencyFormat
{
  v116._decimal.w[0] = objc_msgSend__rawValueForDecimalCoercion(self, a2, v2, v3);
  v116._decimal.w[1] = v5;
  v8 = objc_msgSend_locale(self, v5, v6, v7);
  v12 = objc_msgSend_currencyCode(v8, v9, v10, v11);

  v16 = objc_msgSend_currentFormat(self, v13, v14, v15);
  v20 = objc_msgSend_formatType(v16, v17, v18, v19);
  v24 = 0;
  v25 = 0;
  if (v20 > 261)
  {
    if (v20 <= 269)
    {
      if ((v20 - 262) >= 2 && v20 != 267 && v20 != 269)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    if (v20 != 270)
    {
      if (v20 != 271)
      {
        if (v20 != 274)
        {
          goto LABEL_33;
        }

        v26 = objc_msgSend_asCustomFormatWrapper(v16, v21, v22, v23);
        objc_msgSend_underlyingDoubleValue(self, v27, v28, v29);
        v33 = objc_msgSend_customFormatDataForValue_(v26, v30, v31, v32);
        objc_msgSend_currencyCodeIndex(v33, v34, v35, v36);
        v37 = TSUCurrencyCodeForIndex();
        if (!v37)
        {
          v37 = v12;
        }

        v38 = objc_alloc(MEMORY[0x277D80640]);
        v41 = objc_msgSend_defaultDecimalPlacesForCurrencyCode_(MEMORY[0x277D81228], v39, v37, v40);
        v45 = objc_msgSend_showThousandsSeparator(v33, v42, v43, v44);
        v49 = objc_msgSend_useAccountingStyle(v33, v46, v47, v48);
        v24 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v38, v50, v41, 0, v45, v49, v37);

        goto LABEL_29;
      }

LABEL_21:
      v71 = objc_msgSend__rawValueForStringCoercion(self, v21, v22, v23);
      v75 = objc_msgSend_locale(self, v72, v73, v74);
      MEMORY[0x223D9F8D0](v115, v75);

      TSUUnivNumberParser::parseAsNumber(&v112, v115, v71);
      if (v113 == -999 || (TSUDecimal::operator=(), v116 = v111, (TSUDecimal::isInf(&v116) & 1) != 0) || (TSUDecimal::isNaN(&v116) & 1) != 0)
      {
        v24 = 0;
        v79 = 0;
      }

      else
      {
        if (v113 == 1)
        {
          v100 = objc_msgSend_locale(self, v76, v77, v78);
          v103 = objc_msgSend_currencyCodeForCurrencySymbol_(v100, v101, v114, v102);

          LODWORD(v100) = objc_msgSend_defaultDecimalPlacesForCurrencyCode_(MEMORY[0x277D81228], v104, v103, v105);
          v106 = objc_alloc(MEMORY[0x277D80640]);
          v108 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v106, v107, v100, 0, 0, 0, v103);
        }

        else
        {
          v109 = MEMORY[0x277D80680];
          v103 = objc_msgSend_locale(self, v76, v77, v78);
          v108 = objc_msgSend_defaultFormatWithFormatType_locale_(v109, v110, 257, v103);
        }

        v24 = v108;

        v79 = 1;
      }

      MEMORY[0x223D9F890](&v112);

      if ((v79 & 1) == 0)
      {
        v25 = 0;
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    v26 = objc_msgSend_asCustomFormatWrapper(v16, v21, v22, v23);
    objc_msgSend_underlyingDoubleValue(self, v80, v81, v82);
    v33 = objc_msgSend_customFormatDataForValue_(v26, v83, v84, v85);
    v86 = objc_alloc(MEMORY[0x277D80640]);
    v89 = objc_msgSend_defaultDecimalPlacesForCurrencyCode_(MEMORY[0x277D81228], v87, v12, v88);
    v93 = objc_msgSend_showThousandsSeparator(v33, v90, v91, v92);
    v70 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v86, v94, v89, 0, v93, 0, v12);
LABEL_28:
    v24 = v70;
LABEL_29:

    goto LABEL_30;
  }

  if (v20 <= 257)
  {
    if (v20 == 1)
    {
      goto LABEL_30;
    }

    if (v20 != 256)
    {
      goto LABEL_33;
    }

LABEL_20:
    v51 = objc_alloc(MEMORY[0x277D80640]);
    v54 = objc_msgSend_defaultDecimalPlacesForCurrencyCode_(MEMORY[0x277D81228], v52, v12, v53);
    v26 = objc_msgSend_asNumberFormat(v16, v55, v56, v57);
    v61 = objc_msgSend_negativeStyle(v26, v58, v59, v60);
    v33 = objc_msgSend_asNumberFormat(v16, v62, v63, v64);
    v68 = objc_msgSend_showThousandsSeparator(v33, v65, v66, v67);
    v70 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v51, v69, v54, v61, v68, 0, v12);
    goto LABEL_28;
  }

  if (v20 == 258)
  {
    goto LABEL_20;
  }

  if (v20 != 259)
  {
    if (v20 != 260)
    {
      goto LABEL_33;
    }

    goto LABEL_21;
  }

LABEL_30:
  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v21, v24, 1, 0, 1, 1);
  if (objc_msgSend_valueType(self, v95, v96, v97))
  {
    objc_msgSend_setCurrencyDecimalValue_(self, v98, v116._decimal.w[0], v116._decimal.w[1]);
  }

  v25 = 1;
LABEL_33:

  return v25;
}

- (BOOL)_coerceToCustomNumberishFormat:(unsigned int)format
{
  v4 = *&format;
  v33._decimal.w[0] = objc_msgSend__rawValueForDecimalCoercion(self, a2, *&format, v3);
  v33._decimal.w[1] = v6;
  v9 = objc_msgSend_formatType(self, v6, v7, v8);
  if ((v9 - 256) > 0x12)
  {
    goto LABEL_13;
  }

  if (((1 << v9) & 0x478CF) == 0)
  {
    if (((1 << v9) & 0x8010) != 0)
    {
      v23 = objc_msgSend__rawValueForStringCoercion(self, v10, v11, v12);
      v27 = objc_msgSend_locale(self, v24, v25, v26);
      MEMORY[0x223D9F8D0](v32, v27);

      TSUUnivNumberParser::parseAsNumber(&v30, v32, v23);
      if (v31 == -999 || (TSUDecimal::operator=(), v33 = v29, (TSUDecimal::isInf(&v33) & 1) != 0))
      {
        v28 = 0;
      }

      else
      {
        v28 = TSUDecimal::isNaN(&v33) ^ 1;
      }

      MEMORY[0x223D9F890](&v30);

      if (v28)
      {
        goto LABEL_3;
      }

      return 0;
    }

LABEL_13:
    if (v9 == 1)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_3:
  v13 = MEMORY[0x277D80680];
  v14 = objc_msgSend_locale(self, v10, v11, v12);
  v16 = objc_msgSend_defaultFormatWithFormatType_locale_(v13, v15, v4, v14);

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v17, v16, 1, 0, 1, 1);
  if (objc_msgSend_valueType(self, v18, v19, v20))
  {
    if (v4 == 274)
    {
      objc_msgSend_setCurrencyDecimalValue_(self, v21, v33._decimal.w[0], v33._decimal.w[1]);
    }

    else
    {
      objc_msgSend_setNumberDecimalValue_(self, v21, v33._decimal.w[0], v33._decimal.w[1]);
    }
  }

  return 1;
}

- (BOOL)_coerceToCustomDateTimeFormat
{
  v8 = objc_msgSend_formatType(self, a2, v2, v3);
  v9 = 0;
  result = 0;
  if (v8 <= 270)
  {
    if (v8 != 260)
    {
      if (v8 != 261)
      {
        return result;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v8 != 272)
  {
    if (v8 != 271)
    {
      return result;
    }

LABEL_7:
    v11 = objc_msgSend__rawValueForStringCoercion(self, v5, v6, v7);
    v15 = objc_msgSend_locale(self, v12, v13, v14);
    v16 = TSUCreateDateFromString();

    v9 = v16;
    if (!v16)
    {
      return 0;
    }
  }

LABEL_8:
  v17 = MEMORY[0x277D80680];
  v18 = objc_msgSend_locale(self, v5, v6, v7);
  v20 = objc_msgSend_defaultFormatWithFormatType_locale_(v17, v19, 272, v18);

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v21, v20, 1, 0, 1, 1);
  if (v9)
  {
    objc_msgSend_setDateValue_(self, v22, v9, v23);
  }

  return 1;
}

- (BOOL)_coerceToCustomTextFormat
{
  v5 = objc_msgSend_valueType(self, a2, v2, v3);
  v9 = objc_msgSend_formatType(self, v6, v7, v8);
  if ((v9 - 256) > 0x12)
  {
    goto LABEL_13;
  }

  if (((1 << v9) & 0x578EF) != 0)
  {
    goto LABEL_3;
  }

  if (v9 == 260)
  {
    if (v5 != 9)
    {
LABEL_3:
      v13 = objc_msgSend_formattedValue(self, v10, v11, v12);
      if (!v13)
      {
        return v13;
      }

      goto LABEL_4;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_5;
  }

  if (v9 != 271)
  {
LABEL_13:
    if (v9 != 1)
    {
      LOBYTE(v13) = 0;
      return v13;
    }

    goto LABEL_3;
  }

  if (v5 == 9)
  {
    goto LABEL_16;
  }

  v13 = objc_msgSend_stringValue(self, v10, v11, v12);
LABEL_4:
  v14 = v13;
LABEL_5:
  v15 = MEMORY[0x277D80680];
  v16 = objc_msgSend_locale(self, v10, v11, v12);
  v18 = objc_msgSend_defaultFormatWithFormatType_locale_(v15, v17, 271, v16);

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v19, v18, 1, 0, 1, 1);
  if (v14)
  {
    objc_msgSend_setStringValue_(self, v20, v14, v21);
  }

  LOBYTE(v13) = 1;
  return v13;
}

- (BOOL)_coerceToTextFormat
{
  v5 = objc_msgSend_valueType(self, a2, v2, v3);
  v9 = objc_msgSend_formatType(self, v6, v7, v8);
  if ((v9 - 256) > 0x12)
  {
    goto LABEL_12;
  }

  if (((1 << v9) & 0x570EF) != 0)
  {
LABEL_3:
    v13 = objc_msgSend_formattedValue(self, v10, v11, v12);
    v14 = v13;
    if (!v13)
    {
      return v13;
    }

    goto LABEL_4;
  }

  if (v9 == 267)
  {
    v29._decimal.w[0] = objc_msgSend__rawValueForDecimalCoercion(self, v10, v11, v12);
    v29._decimal.w[1] = v22;
    TSUDecimal::doubleValue(&v29);
    v24 = v23;
    v14 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v25, &stru_2834BADA0, v26);
    if (v24 > 0.0)
    {
      v27 = 0.0;
      do
      {
        objc_msgSend_appendString_(v14, v10, @"*", v12);
        v27 = v27 + 1.0;
      }

      while (v27 < v24);
    }

    goto LABEL_4;
  }

  if (v9 != 271)
  {
LABEL_12:
    if (v9 != 1)
    {
      LOBYTE(v13) = 0;
      return v13;
    }

    goto LABEL_3;
  }

  if (v5 == 9)
  {
    v14 = 0;
  }

  else
  {
    v14 = objc_msgSend_stringValue(self, v10, v11, v12);
  }

LABEL_4:
  v15 = MEMORY[0x277D80680];
  v16 = objc_msgSend_locale(self, v10, v11, v12);
  v18 = objc_msgSend_defaultFormatWithFormatType_locale_(v15, v17, 260, v16);

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v19, v18, 1, 0, 1, 1);
  if (v14)
  {
    objc_msgSend_setStringValue_(self, v20, v14, v21);
  }

  LOBYTE(v13) = 1;
  return v13;
}

- (BOOL)_coerceToRatingFormat
{
  v40._decimal.w[0] = objc_msgSend__rawValueForDecimalCoercion(self, a2, v2, v3);
  v40._decimal.w[1] = v5;
  v8 = objc_msgSend_formatType(self, v5, v6, v7);
  if ((v8 - 256) > 0x12)
  {
    goto LABEL_18;
  }

  if (((1 << v8) & 0x460CF) == 0)
  {
    if (((1 << v8) & 0x8010) != 0)
    {
      v22 = objc_msgSend__rawValueForStringCoercion(self, v9, v10, v11);
      v26 = objc_msgSend_locale(self, v23, v24, v25);
      MEMORY[0x223D9F8D0](v39, v26);

      TSUUnivNumberParser::parseAsNumber(&v37, v39, v22);
      if (v38 == -999 || (TSUDecimal::operator=(), v40 = v36, (TSUDecimal::isInf(&v40) & 1) != 0) || (TSUDecimal::isNaN(&v40) & 1) != 0)
      {
        v30 = objc_msgSend_length(v22, v27, v28, v29);
        if (v30 >= 5)
        {
          v33 = 5;
        }

        else
        {
          v33 = v30;
        }

        if (v30)
        {
          v34 = 0;
          while (objc_msgSend_characterAtIndex_(v22, v31, v34, v32) == 42)
          {
            if (v33 == ++v34)
            {
              goto LABEL_20;
            }
          }

          v35 = 0;
LABEL_23:
          MEMORY[0x223D9F890](&v37);

          if (v35)
          {
            goto LABEL_3;
          }

          return 0;
        }

LABEL_20:
        TSUDecimal::operator=();
      }

      else
      {
        TSUDecimal::operator=();
        if ((TSUDecimal::operator<=() & 1) == 0 || (TSUDecimal::operator=(), TSUDecimal::operator<()))
        {
          TSUDecimal::operator=();
        }
      }

      v35 = 1;
      goto LABEL_23;
    }

LABEL_18:
    if (v8 == 1)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_3:
  v12 = MEMORY[0x277D80680];
  v13 = objc_msgSend_locale(self, v9, v10, v11);
  v15 = objc_msgSend_defaultFormatWithFormatType_locale_(v12, v14, 267, v13);

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v16, v15, 1, 0, 1, 1);
  if (objc_msgSend_valueType(self, v17, v18, v19))
  {
    objc_msgSend_setNumberDecimalValue_(self, v20, v40._decimal.w[0], v40._decimal.w[1]);
  }

  return 1;
}

- (BOOL)_coerceToCheckboxFormat
{
  v72._decimal.w[0] = objc_msgSend__rawValueForDecimalCoercion(self, a2, v2, v3);
  v72._decimal.w[1] = v5;
  TSUDecimal::operator=();
  v6 = TSUDecimal::operator==() ^ 1;
  v10 = objc_msgSend_formatType(self, v7, v8, v9);
  if ((v10 - 256) > 0x12)
  {
    goto LABEL_7;
  }

  if (((1 << v10) & 0x4684F) != 0)
  {
LABEL_3:
    v14 = MEMORY[0x277D80680];
    v15 = objc_msgSend_locale(self, v11, v12, v13);
    v17 = objc_msgSend_defaultFormatWithFormatType_locale_(v14, v16, 263, v15);

    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v18, v17, 1, 0, 1, 1);
    objc_msgSend_setBoolValue_(self, v19, v6, v20);

    return 1;
  }

  if (((1 << v10) & 0x8010) != 0)
  {
    v22 = objc_msgSend_stringValue(self, v11, v12, v13);
    v26 = v22;
    if (v22)
    {
      v27 = v22;
    }

    else
    {
      v28 = objc_msgSend_richTextValue(self, v23, v24, v25);
      v32 = objc_msgSend_string(v28, v29, v30, v31);

      v27 = v32;
    }

    v36 = objc_msgSend_uppercaseString(v27, v33, v34, v35);
    v40 = objc_msgSend_locale(self, v37, v38, v39);
    v44 = objc_msgSend_trueString(v40, v41, v42, v43);
    isEqual = objc_msgSend_isEqual_(v36, v45, v44, v46);

    if (isEqual & 1) != 0 || (objc_msgSend_locale(self, v48, v49, v50), v51 = objc_claimAutoreleasedReturnValue(), objc_msgSend_falseString(v51, v52, v53, v54), v55 = objc_claimAutoreleasedReturnValue(), v58 = objc_msgSend_isEqual_(v36, v56, v55, v57), v55, v51, (v58))
    {

      v6 = isEqual;
      goto LABEL_3;
    }

    v62 = objc_msgSend__rawValueForStringCoercion(self, v59, v60, v61);
    v66 = objc_msgSend_locale(self, v63, v64, v65);
    MEMORY[0x223D9F8D0](v71, v66);

    TSUUnivNumberParser::parseAsNumber(&v69, v71, v62);
    if (v70 == -999 || (TSUDecimal::operator=(), v72 = v68, (TSUDecimal::isInf(&v72) & 1) != 0) || (TSUDecimal::isNaN(&v72) & 1) != 0)
    {
      v67 = 0;
    }

    else
    {
      v6 = TSUDecimal::isZero(&v72) ^ 1;
      v67 = 1;
    }

    MEMORY[0x223D9F890](&v69);

    if (v67)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_7:
    if (v10 == 1)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

- (BOOL)_coerceToBooleanFormat
{
  v75._decimal.w[0] = objc_msgSend__rawValueForDecimalCoercion(self, a2, v2, v3);
  v75._decimal.w[1] = v5;
  TSUDecimal::operator=();
  v6 = TSUDecimal::operator==();
  v13 = objc_msgSend_formatType(self, v7, v8, v9);
  result = 0;
  v15 = v13 - 256;
  if (v15 <= 0x12)
  {
    v16 = v6 ^ 1u;
    v17 = 1 << v15;
    if ((v17 & 0x468CF) != 0)
    {
      isEqual = v6 ^ 1u;
LABEL_4:
      v19 = MEMORY[0x277D80680];
      v20 = objc_msgSend_locale(self, v10, v11, v12);
      v22 = objc_msgSend_defaultFormatWithFormatType_locale_(v19, v21, 1, v20);

      objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v23, v22, 1, 0, 1, 1);
      objc_msgSend_setBoolValue_(self, v24, isEqual, v25);

      return 1;
    }

    if ((v17 & 0x8010) != 0)
    {
      v26 = objc_msgSend_stringValue(self, v10, v11, v12);
      v30 = v26;
      if (v26)
      {
        v31 = v26;
      }

      else
      {
        v32 = objc_msgSend_richTextValue(self, v27, v28, v29);
        v36 = objc_msgSend_string(v32, v33, v34, v35);

        v31 = v36;
      }

      v40 = objc_msgSend_uppercaseString(v31, v37, v38, v39);
      v44 = objc_msgSend_locale(self, v41, v42, v43);
      v48 = objc_msgSend_trueString(v44, v45, v46, v47);
      isEqual = objc_msgSend_isEqual_(v40, v49, v48, v50);

      if (isEqual & 1) != 0 || (objc_msgSend_locale(self, v51, v52, v53), v54 = objc_claimAutoreleasedReturnValue(), objc_msgSend_falseString(v54, v55, v56, v57), v58 = objc_claimAutoreleasedReturnValue(), v61 = objc_msgSend_isEqual_(v40, v59, v58, v60), v58, v54, (v61))
      {
      }

      else
      {
        v65 = objc_msgSend__rawValueForStringCoercion(self, v62, v63, v64);
        v69 = objc_msgSend_locale(self, v66, v67, v68);
        MEMORY[0x223D9F8D0](v74, v69);

        TSUUnivNumberParser::parseAsNumber(&v72, v74, v65);
        if (v73 == -999 || (TSUDecimal::operator=(), v75 = v71, (TSUDecimal::isInf(&v75) & 1) != 0) || (TSUDecimal::isNaN(&v75) & 1) != 0)
        {
          v70 = 0;
        }

        else
        {
          v16 = TSUDecimal::isZero(&v75) ^ 1;
          v70 = 1;
        }

        MEMORY[0x223D9F890](&v72);

        isEqual = v16;
        if (!v70)
        {
          return 0;
        }
      }

      goto LABEL_4;
    }
  }

  return result;
}

- (BOOL)_coerceToNumberFormatWithSeparatorFixing:(unsigned int)fixing
{
  v4 = *&fixing;
  v6 = objc_msgSend_stringValue(self, a2, *&fixing, v3);
  v10 = v6;
  if (v6)
  {
    v11 = v6;
  }

  else
  {
    v12 = objc_msgSend_richTextValue(self, v7, v8, v9);
    v16 = objc_msgSend_string(v12, v13, v14, v15);

    v11 = v16;
  }

  v22 = objc_msgSend_locale(self, v17, v18, v19);
  if (!v22)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTCell(CoercionPrivate) _coerceToNumberFormatWithSeparatorFixing:]", v21);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_CoercionEngine.mm", v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v24, v27, 1385, 0, "Need to have a locale set here.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
  }

  if (TSUIsGroupingSeparatorUsedInNumericString())
  {
    v120 = objc_msgSend_groupingSeparator(v22, v32, v33, v34);
    v121 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v11, v35, v120, &stru_2834BADA0);
    v39 = objc_msgSend_copy(self, v36, v37, v38);
    objc_msgSend_setStringValue_(v39, v40, v121, v41);
    v46 = objc_msgSend_coerceToFormatType_usingSpares_(v39, v42, v4, 0);
    if (v46)
    {
      v47 = objc_msgSend_currentFormat(v39, v43, v44, v45);
      if (objc_msgSend_formatType(v47, v48, v49, v50) == 256 || objc_msgSend_formatType(v47, v51, v52, v53) == 258)
      {
        v118 = objc_alloc(MEMORY[0x277D806A0]);
        v60 = objc_msgSend_formatType(v47, v57, v58, v59);
        v64 = objc_msgSend_asNumberFormat(v47, v61, v62, v63);
        v68 = objc_msgSend_decimalPlaces(v64, v65, v66, v67);
        v72 = objc_msgSend_asNumberFormat(v47, v69, v70, v71);
        v76 = objc_msgSend_negativeStyle(v72, v73, v74, v75);
        v78 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v118, v77, v60, v68, v76, 1);

        v47 = v78;
        objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(v39, v79, v78, 1, 0, 1, 1);
      }

      else if (objc_msgSend_formatType(v47, v54, v55, v56) == 257)
      {
        v116 = objc_alloc(MEMORY[0x277D80640]);
        v119 = objc_msgSend_asCurrencyFormat(v47, v83, v84, v85);
        v115 = objc_msgSend_decimalPlaces(v119, v86, v87, v88);
        v117 = objc_msgSend_asCurrencyFormat(v47, v89, v90, v91);
        v95 = objc_msgSend_negativeStyle(v117, v92, v93, v94);
        v114 = objc_msgSend_asCurrencyFormat(v47, v96, v97, v98);
        v102 = objc_msgSend_accountingStyle(v114, v99, v100, v101);
        v106 = objc_msgSend_asCurrencyFormat(v47, v103, v104, v105);
        v110 = objc_msgSend_currencyCode(v106, v107, v108, v109);
        v112 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v116, v111, v115, v95, 1, v102, v110);

        v47 = v112;
        objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(v39, v113, v112, 1, 0, 1, 1);
      }

      objc_msgSend_copyToCell_(v39, v80, self, v81);
    }
  }

  else
  {
    LOBYTE(v46) = 0;
  }

  return v46;
}

- (BOOL)_coerceTextCellToBestNumberFormatUsingLimitedParsing:(BOOL)parsing allowFractions:(BOOL)fractions
{
  fractionsCopy = fractions;
  parsingCopy = parsing;
  v7 = objc_msgSend_formatType(self, a2, parsing, fractions);
  if (v7 == 271 || v7 == 260)
  {
    v11 = objc_msgSend_stringValue(self, v8, v9, v10);
    v15 = v11;
    if (v11)
    {
      v274 = v11;
    }

    else
    {
      v17 = objc_msgSend_richTextValue(self, v12, v13, v14);
      v274 = objc_msgSend_string(v17, v18, v19, v20);
    }

    v24 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v21, v22, v23);
    v27 = objc_msgSend_stringByTrimmingCharactersInSet_(v274, v25, v24, v26);

    TSUDecimal::operator=();
    v31 = objc_msgSend_locale(self, v28, v29, v30);
    MEMORY[0x223D9F8D0](v285, v31);

    TSUUnivNumberParser::parseAsNumber(v280, v285, v27);
    if (*&v280[8] == -999 || (TSUDecimal::operator=(), v286 = v275, (TSUDecimal::isNaN(&v286) & 1) != 0) || (TSUDecimal::isInf(&v286) & 1) != 0)
    {
      v33 = 0;
      v273 = 0;
      v34 = 0;
LABEL_11:
      if (!objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v32, 269, 0) || (objc_msgSend_numberFormat(self, v35, v36, v37), v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend_asBaseFormat(v38, v39, v40, v41), v42 = objc_claimAutoreleasedReturnValue(), objc_msgSend_base(v42, v43, v44, v45), TSUUnivNumberParser::parseAsNumber(&v275, v285, v27), *v280 = v275._decimal.w[0], *&v280[5] = *(v275._decimal.w + 5), objc_storeStrong(&v281, obj), objc_storeStrong(&v282, v277), objc_storeStrong(&v283, v278), objc_storeStrong(&v284, v279), MEMORY[0x223D9F890](&v275), v42, v38, *&v280[8] == -999) || (TSUDecimal::operator=(), v286 = v275, (TSUDecimal::isNaN(&v286) & 1) != 0) || (TSUDecimal::isInf(&v286) & 1) != 0 || (TSUDecimal::operator=(), !TSUDecimal::operator<=()))
      {
        if ((v34 & 1) == 0)
        {
          v16 = 0;
LABEL_79:
          MEMORY[0x223D9F890](v280);

          return v16 | parsingCopy;
        }
      }

      else
      {
        v33 = TSUFormatTypeFromTSUNumberValueType();
      }

      if (objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v35, 256, 1))
      {
        v47 = 0;
        objc_msgSend_setNumberDecimalValue_(self, v46, v286._decimal.w[0], v286._decimal.w[1]);
LABEL_20:
        v16 = 1;
LABEL_78:

        goto LABEL_79;
      }

      if (v33 == 256 && objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v46, 257, 1))
      {
        v47 = 0;
        objc_msgSend_setCurrencyDecimalValue_(self, v46, v286._decimal.w[0], v286._decimal.w[1]);
        goto LABEL_20;
      }

      objc_msgSend_setNumberDecimalValue_(self, v46, v286._decimal.w[0], v286._decimal.w[1]);
      if (v33 > 261)
      {
        if (v33 == 262)
        {
          if (!fractionsCopy || parsingCopy)
          {
            objc_msgSend_setStringValue_(self, v48, v274, v50);
            v254 = MEMORY[0x277D80680];
            v258 = objc_msgSend_locale(self, v255, v256, v257);
            v243 = objc_msgSend_defaultFormatWithFormatType_locale_(v254, v259, 260, v258);

            objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v260, v243, 1, 0, 1, 1);
            v47 = 0;
            v16 = parsingCopy;
          }

          else
          {
            v240 = MEMORY[0x277D80680];
            v241 = objc_msgSend_locale(self, v48, v49, v50);
            v243 = objc_msgSend_defaultFormatWithFormatType_locale_(v240, v242, 262, v241);

            v16 = 1;
            objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v244, v243, 1, 0, 1, 1);
            v47 = 0;
          }

          goto LABEL_77;
        }

        if (v33 == 269)
        {
          objc_msgSend_defaultHexadecimalFormat(MEMORY[0x277D80620], v48, v49, v50);
          v47 = v16 = 1;
          objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v147, v47, 1, 0, 1, 1);
          goto LABEL_78;
        }
      }

      else if ((v33 - 258) < 2 || v33 == 256)
      {
        v270 = objc_msgSend_locale(self, v48, v49, v50);
        if (!v270)
        {
          v53 = MEMORY[0x277D81150];
          v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "[TSTCell(CoercionPrivate) _coerceTextCellToBestNumberFormatUsingLimitedParsing:allowFractions:]", v52);
          v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_CoercionEngine.mm", v56);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v58, v54, v57, 1541, 0, "Need to have a locale set here.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61);
        }

        v62 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v51, v33, v270);
        v66 = objc_msgSend_asNumberFormat(v62, v63, v64, v65);
        v70 = objc_msgSend_negativeStyle(v66, v67, v68, v69);

        v74 = objc_msgSend_asNumberFormat(v62, v71, v72, v73);
        v78 = objc_msgSend_showThousandsSeparator(v74, v75, v76, v77);

        if ((TSUDecimal::isInf(&v286) & 1) != 0 || (TSUDecimal::isNaN(&v286) & 1) != 0 || !TSUParsedNumber::hasTrailingZeroDecimalPlaces(v280))
        {
          v80 = 253;
        }

        else
        {
          v79 = TSUParsedNumber::numberOfDecimalPlaces(v280);
          if (v79 >= 0x1F)
          {
            v80 = 253;
          }

          else
          {
            v80 = v79;
          }
        }

        v139 = TSUIsGroupingSeparatorUsedInNumericString();
        v142 = objc_msgSend_characterAtIndex_(v27, v140, 0, v141);
        v143 = objc_alloc(MEMORY[0x277D806A0]);
        if (v142 == 40)
        {
          v145 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v143, v144, v33, v80, 2, (v139 | v78) & 1);
        }

        else
        {
          v145 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v143, v144, v33, v80, v70, (v139 | v78) & 1);
        }

        v47 = v145;

        v16 = 1;
        objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v146, v47, 1, 0, 1, 1);
        goto LABEL_76;
      }

      v245 = MEMORY[0x277D81150];
      v246 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "[TSTCell(CoercionPrivate) _coerceTextCellToBestNumberFormatUsingLimitedParsing:allowFractions:]", v50);
      v249 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v247, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_CoercionEngine.mm", v248);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v245, v250, v246, v249, 1588, 0, "unexpected format type");

      v47 = 0;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v251, v252, v253);
      goto LABEL_20;
    }

    v33 = TSUFormatTypeFromTSUNumberValueType();
    v84 = objc_msgSend_locale(self, v81, v82, v83);
    v273 = objc_msgSend_currencyCodeForCurrencySymbol_(v84, v85, v282, v86);

    if (v33 != 257)
    {
      v34 = 1;
      goto LABEL_11;
    }

    objc_msgSend_setCurrencyDecimalValue_(self, v32, v286._decimal.w[0], v286._decimal.w[1]);
    if (objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v87, 257, 1))
    {
      v91 = objc_msgSend_formatOfType_allowMismatchedSpare_(self, v88, 257, 1);
      v98 = objc_msgSend_asCurrencyFormat(v91, v92, v93, v94);
      if (v98)
      {
        v99 = objc_msgSend_asCurrencyFormat(v91, v95, v96, v97);
        v103 = objc_msgSend_currencyCode(v99, v100, v101, v102);
        isEqualToString = objc_msgSend_isEqualToString_(v103, v104, v273, v105);

        if ((isEqualToString & 1) == 0)
        {
          v268 = objc_alloc(MEMORY[0x277D80640]);
          v271 = objc_msgSend_asCurrencyFormat(v91, v107, v108, v109);
          v266 = objc_msgSend_decimalPlaces(v271, v110, v111, v112);
          v116 = objc_msgSend_asCurrencyFormat(v91, v113, v114, v115);
          v120 = objc_msgSend_negativeStyle(v116, v117, v118, v119);
          v124 = objc_msgSend_asCurrencyFormat(v91, v121, v122, v123);
          v128 = objc_msgSend_showThousandsSeparator(v124, v125, v126, v127);
          v132 = objc_msgSend_asCurrencyFormat(v91, v129, v130, v131);
          v136 = objc_msgSend_accountingStyle(v132, v133, v134, v135);
          v138 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v268, v137, v266, v120, v128, v136, v273);

          v91 = v138;
        }
      }

      v16 = 1;
      v47 = v91;
      objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v95, v91, 1, 1, 1, 1);
      goto LABEL_78;
    }

    v148 = MEMORY[0x277D80680];
    v149 = objc_msgSend_locale(self, v88, v89, v90);
    v47 = objc_msgSend_defaultFormatWithFormatType_locale_(v148, v150, 257, v149);

    v153 = v273;
    if (v273)
    {
      v154 = objc_msgSend_defaultDecimalPlacesForCurrencyCode_(MEMORY[0x277D81228], v151, v273, v152);
      v272 = objc_alloc(MEMORY[0x277D80640]);
      v158 = objc_msgSend_asCurrencyFormat(v47, v155, v156, v157);
      v162 = objc_msgSend_negativeStyle(v158, v159, v160, v161);
      v166 = objc_msgSend_asCurrencyFormat(v47, v163, v164, v165);
      v170 = objc_msgSend_showThousandsSeparator(v166, v167, v168, v169);
      v174 = objc_msgSend_asCurrencyFormat(v47, v171, v172, v173);
      v178 = objc_msgSend_accountingStyle(v174, v175, v176, v177);
      v180 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v272, v179, v154, v162, v170, v178, v273);

      v47 = v180;
    }

    v181 = objc_msgSend_asCurrencyFormat(v47, v151, v153, v152);
    v185 = objc_msgSend_decimalPlaces(v181, v182, v183, v184);

    v189 = objc_msgSend_asCurrencyFormat(v47, v186, v187, v188);
    v193 = objc_msgSend_negativeStyle(v189, v190, v191, v192);

    v197 = objc_msgSend_asCurrencyFormat(v47, v194, v195, v196);
    v201 = objc_msgSend_showThousandsSeparator(v197, v198, v199, v200);

    v205 = objc_msgSend_asCurrencyFormat(v47, v202, v203, v204);
    v209 = objc_msgSend_accountingStyle(v205, v206, v207, v208);

    v213 = objc_msgSend_asCurrencyFormat(v47, v210, v211, v212);
    objc_msgSend_currencyCode(v213, v214, v215, v216);
    v267 = v193;
    v265 = __PAIR64__(v201, v209);
    v270 = v269 = v185;

    v222 = objc_msgSend_locale(self, v217, v218, v219);
    if (!v222)
    {
      v223 = MEMORY[0x277D81150];
      v224 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v220, "[TSTCell(CoercionPrivate) _coerceTextCellToBestNumberFormatUsingLimitedParsing:allowFractions:]", v221);
      v227 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v225, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_CoercionEngine.mm", v226);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v223, v228, v224, v227, 1495, 0, "Need to have a locale set here.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v229, v230, v231);
    }

    v232 = TSUIsGroupingSeparatorUsedInNumericString();
    v235 = objc_msgSend_characterAtIndex_(v27, v233, 0, v234);
    if (v235 == 40)
    {
      v237 = 2;
    }

    else
    {
      v237 = v267;
    }

    if (parsingCopy)
    {
      if ((TSUDecimal::isInf(&v286) & 1) != 0 || (TSUDecimal::isNaN(&v286) & 1) != 0 || !TSUParsedNumber::hasTrailingZeroDecimalPlaces(v280))
      {
        v239 = 253;
      }

      else
      {
        v238 = TSUParsedNumber::numberOfDecimalPlaces(v280);
        if (v238 >= 0x1F)
        {
          v239 = 253;
        }

        else
        {
          v239 = v238;
        }
      }

      v269 = v239;
    }

    else if (!((v235 == 40) | v232 & 1))
    {
      goto LABEL_75;
    }

    v261 = objc_alloc(MEMORY[0x277D80640]);
    v263 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v261, v262, v269, v237, (v232 | BYTE4(v265)) & 1, v265, v270);

    v47 = v263;
LABEL_75:
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v236, v47, 1, 0, 1, 1, v265);

    v16 = 1;
LABEL_76:
    v243 = v270;
LABEL_77:

    goto LABEL_78;
  }

  v16 = 0;
  return v16 | parsingCopy;
}

- (BOOL)_parseFormulaFromString:(id)string tableInfo:(id)info cellID:(TSUCellCoord)d
{
  stringCopy = string;
  infoCopy = info;
  if (infoCopy && (objc_msgSend_sharedTableConfiguration(TSTConfiguration, v9, v10, v11), v13 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend_supportsFormulaEditing(v13, v14, v15, v16), v13, (v17 & 1) != 0))
  {
    v24 = objc_msgSend_calcEngine(infoCopy, v18, v19, v20);
    if ((v24 || (objc_msgSend_documentRoot(infoCopy, v21, v22, v23), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend_calculationEngine(v25, v26, v27, v28), v24 = objc_claimAutoreleasedReturnValue(), v25, v24)) && objc_msgSend_tst_hasFormulaEqualsPrefix(stringCopy, v21, v22, v23) && (objc_msgSend_tst_isEqualToFormulaEqualsString(stringCopy, v29, v30, v31) & 1) == 0)
    {
      v76 = objc_msgSend_context(infoCopy, v32, v33, v34);
      v36 = objc_alloc(MEMORY[0x277D80F28]);
      v75 = objc_msgSend_substringFromIndex_(stringCopy, v37, 1, v38);
      v74 = objc_msgSend_documentRoot(infoCopy, v39, v40, v41);
      v45 = objc_msgSend_stylesheet(v74, v42, v43, v44);
      v48 = objc_msgSend_defaultStyleWithContext_(MEMORY[0x277D80EC8], v46, v76, v47);
      v51 = objc_msgSend_defaultStyleWithContext_(MEMORY[0x277D80EA0], v49, v76, v50);
      v53 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_(v36, v52, v76, v75, 3, v45, v48, v51, 0, 0);

      TSTParser::TSTParser(v78, v24, v53, 0);
      v57 = objc_msgSend_translator(infoCopy, v54, v55, v56);
      v60 = objc_msgSend_chromeCellCoordForViewCellCoord_(v57, v58, *&d, v59);

      v77._locale = v60;
      TSTParser::parse(v78, infoCopy, &v77);
      if (objc_claimAutoreleasedReturnValue())
      {
        __C(8uLL);
      }

      v64 = objc_msgSend_documentRoot(infoCopy, v61, v62, v63);
      v68 = objc_msgSend_stylesheet(v64, v65, v66, v67);

      v70 = objc_msgSend_i_copyIntoContext_stylesheet_(v53, v69, v76, v68);
      objc_msgSend_setFormulaSyntaxError_(self, v71, v70, v72);

      TSTParser::~TSTParser(v78);
      v35 = 1;
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (BOOL)removeControlCellSpec
{
  hasControl = objc_msgSend_hasControl(self, a2, v2, v3);
  if (hasControl)
  {
    objc_msgSend_setCellSpec_(self, v5, 0, v6);
    v11 = objc_msgSend_formatType(self, v8, v9, v10);
    switch(v11)
    {
      case 1:
        goto LABEL_5;
      case 267:
        v17 = MEMORY[0x277D80680];
        v15 = objc_msgSend_locale(self, v12, v13, v14);
        v19 = objc_msgSend_defaultFormatWithFormatType_locale_(v17, v18, 256, v15);
        objc_msgSend_setCurrentFormat_isExplicit_(self, v20, v19, 0);

        goto LABEL_7;
      case 263:
LABEL_5:
        v15 = objc_msgSend_BOOLeanFormat(MEMORY[0x277D80680], v12, v13, v14);
        objc_msgSend_setCurrentFormat_isExplicit_(self, v16, v15, 0);
LABEL_7:

        break;
    }
  }

  return hasControl;
}

- (BOOL)removeControlFormatSpares
{
  hasFormatOfType_allowMismatchedSpare = objc_msgSend_hasFormatOfType_allowMismatchedSpare_(self, a2, 267, 0);
  if (hasFormatOfType_allowMismatchedSpare)
  {
    objc_msgSend_clearFormatOfType_(self, v3, 267, v4);
  }

  if (objc_msgSend_hasFormatOfType_allowMismatchedSpare_(self, v3, 263, 0))
  {
    objc_msgSend_clearFormatOfType_(self, v6, 263, v7);
    LOBYTE(hasFormatOfType_allowMismatchedSpare) = 1;
  }

  return hasFormatOfType_allowMismatchedSpare;
}

- (BOOL)coerceToFormatType:(unsigned int)type usingSpares:(BOOL)spares
{
  v4 = *&type;
  if (type - 104 >= 5 && type - 264 > 2)
  {
    sparesCopy = spares;
    if (spares && objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, a2, *&type, 0))
    {
      v19 = objc_msgSend_formatOfType_allowMismatchedSpare_(self, a2, v4, 0);
      v20 = 1;
    }

    else
    {
      v20 = 0;
      v19 = 0;
    }

    if ((objc_msgSend_valueType(self, a2, *&type, spares) & 0xFFFFFFF7) != 0)
    {
      if (objc_msgSend_hasMismatchedFormatAndValue(self, v21, v22, v23))
      {
        v27 = MEMORY[0x277D81150];
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTCell(Coercion) coerceToFormatType:usingSpares:]", v26);
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_CoercionEngine.mm", v30);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v28, v31, 1717, 0, "Attempting to coerce a cell with mismatched format and value types");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35);
        objc_msgSend_setDefaultFormatForValue(self, v36, v37, v38);
      }

      v15 = 0;
      switch(v4)
      {
        case 256:
          v39 = objc_msgSend__coerceToDecimalFormat(self, v24, v25, v26);
          break;
        case 257:
          v39 = objc_msgSend__coerceToCurrencyFormat(self, v24, v25, v26);
          break;
        case 258:
          v39 = objc_msgSend__coerceToPercentageFormat(self, v24, v25, v26);
          break;
        case 259:
          v39 = objc_msgSend__coerceToScientificFormat(self, v24, v25, v26);
          break;
        case 260:
          v39 = objc_msgSend__coerceToTextFormat(self, v24, v25, v26);
          break;
        case 261:
          v39 = objc_msgSend__coerceToDateTimeFormat(self, v24, v25, v26);
          break;
        case 262:
          v39 = objc_msgSend__coerceToFractionFormat(self, v24, v25, v26);
          break;
        case 263:
          v39 = objc_msgSend__coerceToCheckboxFormat(self, v24, v25, v26);
          break;
        case 264:
        case 265:
        case 266:
        case 273:
          goto LABEL_19;
        case 267:
          v39 = objc_msgSend__coerceToRatingFormat(self, v24, v25, v26);
          break;
        case 268:
          v39 = objc_msgSend__coerceToDurationFormat(self, v24, v25, v26);
          break;
        case 269:
          v39 = objc_msgSend_coerceToBaseFormat_(self, v24, 0, v26);
          break;
        case 270:
          v39 = objc_msgSend__coerceToCustomNumberFormat(self, v24, v25, v26);
          break;
        case 271:
          v39 = objc_msgSend__coerceToCustomTextFormat(self, v24, v25, v26);
          break;
        case 272:
          v39 = objc_msgSend__coerceToCustomDateTimeFormat(self, v24, v25, v26);
          break;
        case 274:
          v39 = objc_msgSend__coerceToCustomCurrencyFormat(self, v24, v25, v26);
          break;
        default:
          if (v4 != 1)
          {
            goto LABEL_19;
          }

          v39 = objc_msgSend__coerceToBooleanFormat(self, v24, v25, v26);
          break;
      }
    }

    else
    {
      v39 = objc_msgSend__coerceEmptyCellToFormat_(self, v21, v4, v23);
    }

    v15 = v39;
    if ((v20 & sparesCopy & v39) == 1)
    {
      if (objc_msgSend_formatType(v19, v40, v41, v42) == 268)
      {
        v46 = objc_msgSend_asDurationFormat(v19, v43, v44, v45);
        objc_msgSend_durationTimeIntervalValue(self, v47, v48, v49);
        v53 = objc_msgSend_formatByFixingUnitsIfNecessaryForTimeInterval_(v46, v50, v51, v52);

        v19 = v53;
      }

      v15 = 1;
      objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v43, v19, 1, 1, 1, 1);
    }

LABEL_19:
  }

  else
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCell(Coercion) coerceToFormatType:usingSpares:]", spares);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_CoercionEngine.mm", v8);
    v10 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v9, 1695, 0, "Illegal format type for coercion: %{public}@", v10);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
    return 0;
  }

  return v15;
}

- (BOOL)coerceToBaseFormat:(id)format
{
  formatCopy = format;
  v53._decimal.w[0] = objc_msgSend__rawValueForDecimalCoercion(self, v5, v6, v7);
  v53._decimal.w[1] = v8;
  v11 = objc_msgSend_formatType(self, v8, v9, v10);
  if ((v11 - 256) > 0x12)
  {
    goto LABEL_16;
  }

  if (((1 << v11) & 0x448CF) == 0)
  {
    if (((1 << v11) & 0x8010) != 0)
    {
      v30 = objc_msgSend__rawValueForStringCoercion(self, v12, v13, v14);
      if (!formatCopy && objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v27, 269, 0))
      {
        v31 = objc_msgSend_numberFormat(self, v27, v28, v29);
        formatCopy = objc_msgSend_asBaseFormat(v31, v32, v33, v34);
      }

      if (formatCopy)
      {
        objc_msgSend_base(formatCopy, v27, v28, v29);
      }

      v35 = objc_msgSend_locale(self, v27, v28, v29);
      MEMORY[0x223D9F8D0](v52, v35);

      TSUUnivNumberParser::parseAsNumber(v47, v52, v30);
      if (*&v47[8] == -999)
      {
        TSUUnivNumberParser::parseAsNumber(&v42, v52, v30);
        *v47 = v42._decimal.w[0];
        *&v47[5] = *(v42._decimal.w + 5);
        objc_storeStrong(&v48, obj);
        objc_storeStrong(&v49, v44);
        objc_storeStrong(&v50, v45);
        objc_storeStrong(&v51, v46);
        MEMORY[0x223D9F890](&v42);
        if (*&v47[8] != -999)
        {
          TSUDecimal::operator=();
          v53 = v42;
          if ((TSUDecimal::isInf(&v53) & 1) == 0)
          {
            v36 = TSUDecimal::isNaN(&v53) ^ 1;
            goto LABEL_24;
          }
        }
      }

      else
      {
        TSUDecimal::operator=();
        v53 = v42;
        if ((TSUDecimal::isInf(&v53) & 1) == 0)
        {
          isNaN = TSUDecimal::isNaN(&v53);
          v36 = isNaN ^ 1;
          if (formatCopy)
          {
            v41 = isNaN;
          }

          else
          {
            v41 = 1;
          }

          if ((v41 & 1) == 0 && (objc_msgSend_baseUseMinusSign(formatCopy, v38, v39, v40) & 1) == 0 && (v47[1] & 0x40) == 0)
          {
            TSUDecimal::reinterpretAsTwosComplement(&v53);
          }

LABEL_24:
          MEMORY[0x223D9F890](v47);

          if (v36)
          {
            goto LABEL_3;
          }

          goto LABEL_25;
        }
      }

      v36 = 0;
      goto LABEL_24;
    }

LABEL_16:
    if (v11 == 1)
    {
      goto LABEL_3;
    }

LABEL_25:
    v25 = 0;
    v15 = formatCopy;
    goto LABEL_9;
  }

LABEL_3:
  v15 = formatCopy;
  if (formatCopy)
  {
    v17 = formatCopy;
  }

  else
  {
    v18 = MEMORY[0x277D80680];
    v19 = objc_msgSend_locale(self, v12, v13, v14);
    v17 = objc_msgSend_defaultFormatWithFormatType_locale_(v18, v20, 269, v19);
  }

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v16, v17, 1, 0, 1, 1);
  if (objc_msgSend_valueType(self, v21, v22, v23))
  {
    objc_msgSend_setNumberDecimalValue_(self, v24, v53._decimal.w[0], v53._decimal.w[1]);
  }

  v25 = 1;
LABEL_9:

  return v25;
}

- (void)parseContentOrFormulaFromString:(id)string tableInfo:(id)info cellID:(TSUCellCoord)d flags:(unint64_t)flags
{
  stringCopy = string;
  infoCopy = info;
  v13 = objc_msgSend_locale(self, v10, v11, v12);

  if (!v13)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTCell(Coercion) parseContentOrFormulaFromString:tableInfo:cellID:flags:]", v16);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_CoercionEngine.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 1898, 0, "Cell must have its locale set in parseContentOrFormulaFromString:");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
  }

  if ((flags & 2) != 0 && (objc_msgSend_currentFormatIsExplicit(self, v14, v15, v16) & 1) == 0)
  {
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v14, 0, 1, 0, 1, 1);
  }

  if (objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v14, 267, 0) && objc_msgSend_interactionType(self, v26, v27, v28) != 6)
  {
    objc_msgSend_clearFormatOfType_(self, v26, 267, v28);
  }

  if ((flags & 4) != 0)
  {
    v33 = 1;
  }

  else
  {
    v29 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v26, v27, v28);
    v33 = objc_msgSend_usesLimitedAutomaticFormatParsing(v29, v30, v31, v32);
  }

  v34 = objc_msgSend_formatType(self, v26, v27, v28);
  IsExplicit = objc_msgSend_currentFormatIsExplicit(self, v35, v36, v37);
  v42 = objc_msgSend_currentFormat(self, v39, v40, v41);
  if (objc_msgSend_valueType(self, v43, v44, v45) == 9)
  {
    objc_msgSend_setRichTextValue_(self, v46, 0, v48);
  }

  v49 = MEMORY[0x277D80680];
  v50 = objc_msgSend_locale(self, v46, v47, v48);
  v52 = objc_msgSend_defaultFormatWithFormatType_locale_(v49, v51, 260, v50);

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v53, v52, 1, 0, 1, 1);
  objc_msgSend_setStringValue_(self, v54, stringCopy, v55);
  objc_msgSend_setFormulaObject_(self, v56, 0, v57);
  objc_msgSend_setFormulaSyntaxError_(self, v58, 0, v59);
  if (!stringCopy || !objc_msgSend_length(stringCopy, v60, v61, v62))
  {
    objc_msgSend_clearValue(self, v60, v61, v62);
    goto LABEL_27;
  }

  if (v34 == 260 && ((flags & 2) == 0) | IsExplicit & 1 || (flags & 1) == 0 && v34 == 271)
  {
    goto LABEL_27;
  }

  if ((flags & 1) != 0 && (v34 - 270) <= 4 && v34 != 273)
  {
    v63 = objc_msgSend_asCustomFormatWrapper(v42, v60, v61, v62);
    v67 = objc_msgSend_defaultCustomFormatData(v63, v64, v65, v66);

    v287 = v67;
    v290 = objc_msgSend_formatString(v67, v68, v69, v70);
    if (v34 == 271)
    {
      v167 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v71, @"%C", v72, *MEMORY[0x277D81400]);
      v170 = objc_msgSend_rangeOfString_(v290, v168, v167, v169);

      if (v170 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v289 = v290;
        goto LABEL_83;
      }

      v190 = objc_msgSend_substringToIndex_(v290, v171, v170, v172);
      v289 = objc_msgSend_substringFromIndex_(v290, v191, v170 + 1, v192);
      v288 = v190;
    }

    else
    {
      v73 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v71, @"%C", v72, 39);
      if (objc_msgSend_characterAtIndex_(v290, v74, 0, v75) == 39)
      {
        v79 = objc_msgSend_substringFromIndex_(v290, v76, 1, v78);
        v82 = objc_msgSend_rangeOfString_(v79, v80, v73, v81);
        v288 = objc_msgSend_substringToIndex_(v79, v83, v82, v84);
      }

      else
      {
        v288 = 0;
      }

      v176 = objc_msgSend_length(v290, v76, v77, v78);
      if (objc_msgSend_characterAtIndex_(v290, v177, v176 - 1, v178) == 39)
      {
        v182 = objc_msgSend_length(v290, v179, v180, v181);
        v185 = objc_msgSend_substringToIndex_(v290, v183, v182 - 1, v184);
        v187 = objc_msgSend_rangeOfString_options_(v185, v186, v73, 4);
        v289 = objc_msgSend_substringFromIndex_(v185, v188, v187 + 1, v189);
      }

      else
      {
        v289 = 0;
      }
    }

    if (v288)
    {
      if (objc_msgSend_length(v288, v173, v174, v175))
      {
        v193 = objc_msgSend_rangeOfString_(stringCopy, v173, v288, v175);
        v286 = v173;
        v194 = v193 == 0;
        goto LABEL_85;
      }

LABEL_84:
      v286 = 0;
      v194 = 1;
LABEL_85:
      if (v289 && objc_msgSend_length(v289, v173, v174, v175))
      {
        v284 = objc_msgSend_rangeOfString_(stringCopy, v173, v289, v175);
        v285 = v195;
        v198 = objc_msgSend_length(stringCopy, v195, v196, v197);
        if (v284 != v198 - objc_msgSend_length(v289, v199, v200, v201) || !v194)
        {
          goto LABEL_93;
        }
      }

      else
      {
        if (!v194)
        {
LABEL_93:

          goto LABEL_94;
        }

        v285 = 0;
      }

      v202 = objc_msgSend_substringFromIndex_(stringCopy, v173, v286, v175);
      v206 = objc_msgSend_length(v202, v203, v204, v205);
      v209 = objc_msgSend_substringToIndex_(v202, v207, v206 - v285, v208);

      objc_msgSend_setStringValue_(self, v210, v209, v211);
      if ((objc_msgSend_coerceToFormatType_usingSpares_(self, v212, v34, 0) & 1) == 0)
      {
        objc_msgSend_setStringValue_(self, v213, stringCopy, v214);

        goto LABEL_94;
      }

LABEL_27:
      objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v60, v42, 1, IsExplicit, 1, 1);
      goto LABEL_28;
    }

LABEL_83:
    v288 = 0;
    goto LABEL_84;
  }

  if ((flags & 2) != 0 && objc_msgSend_tst_hasLeadingSingleQuoteEscape(stringCopy, v60, v61, v62))
  {
    v155 = objc_msgSend_substringFromIndex_(stringCopy, v60, 1, v62);
    objc_msgSend_setStringValue_(self, v156, v155, v157);
    v158 = MEMORY[0x277D80680];
    v162 = objc_msgSend_locale(self, v159, v160, v161);
    v164 = objc_msgSend_defaultFormatWithFormatType_locale_(v158, v163, 260, v162);

    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v165, v164, 1, 1, 1, 1);
LABEL_64:

    goto LABEL_28;
  }

  if ((v34 - 256) < 4 || v34 == 262)
  {
    if (IsExplicit)
    {
      v166 = objc_msgSend_coerceToFormatType_usingSpares_(self, v60, v34, 0);
      if (((v166 | v33) & 1) == 0)
      {
        LOBYTE(v166) = objc_msgSend__coerceToNumberFormatWithSeparatorFixing_(self, v60, v34, v62);
      }

LABEL_70:
      if ((v166 & 1) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_27;
    }

    goto LABEL_94;
  }

  if (v34 == 268)
  {
    v240 = IsExplicit;
  }

  else
  {
    v240 = 0;
  }

  if (v240 == 1)
  {
    v241 = objc_msgSend_asDurationFormat(v42, v60, v61, v62);
    v245 = objc_msgSend_useAutomaticUnits(v241, v242, v243, v244);

    if ((v245 & 1) == 0)
    {
      v249 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v246, v247, v248);
      v252 = objc_msgSend_stringByTrimmingCharactersInSet_(stringCopy, v250, v249, v251);

      v256 = objc_msgSend_locale(self, v253, v254, v255);
      MEMORY[0x223D9F8D0](v297, v256);

      TSUUnivNumberParser::parseAsNumber(&v295, v297, v252);
      if (v296 != -999 && (TSUParsedNumber::isInfOrNaN(&v295) & 1) == 0)
      {
        TSUParsedNumber::doubleValue(&v295);
        v263 = v262;
        v267 = objc_msgSend_asDurationFormat(v42, v264, v265, v266);
        objc_msgSend_durationUnitLargest(v267, v268, v269, v270);
        TSUDurationFormatterSecondsInDurationUnit();
        v272 = v263 * v271;

        objc_msgSend_setDurationTimeIntervalValue_(self, v273, v274, v275, v272);
        MEMORY[0x223D9F890](&v295);
        sub_2211AF274(v297);

LABEL_136:
        v276 = objc_msgSend_asDurationFormat(v42, v60, v61, v62);
        objc_msgSend_durationTimeIntervalValue(self, v277, v278, v279);
        v155 = objc_msgSend_formatByFixingUnitsIfNecessaryForTimeInterval_(v276, v280, v281, v282);

        objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v283, v155, 1, 1, 1, 1);
        goto LABEL_64;
      }

      MEMORY[0x223D9F890](&v295);
      sub_2211AF274(v297);
    }

    if (!objc_msgSend_coerceToFormatType_usingSpares_(self, v246, 268, 0))
    {
      goto LABEL_94;
    }

    goto LABEL_136;
  }

  if (v34 == 269)
  {
    v257 = IsExplicit;
  }

  else
  {
    v257 = 0;
  }

  if ((flags & 0x10) == 0 && !v257)
  {
    LOBYTE(v166) = objc_msgSend_coerceToFormatType_usingSpares_(self, v60, v34, 0);
    goto LABEL_70;
  }

  if (v34 == 269)
  {
    objc_msgSend_asBaseFormat(v42, v60, v61, v62);
  }

  else
  {
    objc_msgSend_defaultHexadecimalFormat(MEMORY[0x277D80620], v60, v61, v62);
  }
  v258 = ;
  v261 = objc_msgSend_coerceToBaseFormat_(self, v259, v258, v260);

  if (v261)
  {
    goto LABEL_27;
  }

LABEL_94:
  if (infoCopy && (objc_msgSend__parseFormulaFromString_tableInfo_cellID_(self, v60, stringCopy, infoCopy, d) & 1) != 0)
  {
LABEL_28:
    if ((objc_msgSend_currentFormatIsExplicit(self, v60, v61, v62) & 1) == 0 && (objc_msgSend_formatType(self, v85, v86, v87) == 256 || objc_msgSend_formatType(self, v85, v86, v87) == 257 || objc_msgSend_formatType(self, v85, v86, v87) == 259 || objc_msgSend_formatType(self, v85, v86, v87) == 258 || objc_msgSend_formatType(self, v85, v86, v87) == 262))
    {
      v88 = objc_msgSend_locale(self, v85, v86, v87);
      v92 = objc_msgSend_decimalSeparator(v88, v89, v90, v91);
      v93 = TSUNumberOfDigitsInStringAllowsPreciseDoubleParsing();

      if ((v93 & 1) == 0)
      {
        objc_msgSend_setStringValue_(self, v85, stringCopy, v87);
        v94 = MEMORY[0x277D80680];
        v98 = objc_msgSend_locale(self, v95, v96, v97);
        v100 = objc_msgSend_defaultFormatWithFormatType_locale_(v94, v99, 260, v98);

        objc_msgSend_setCurrentFormat_isExplicit_(self, v101, v100, 0);
      }
    }

    if ((objc_msgSend_currentFormatIsExplicit(self, v85, v86, v87) & 1) == 0 && objc_msgSend_formatType(self, v60, v61, v62) == 269)
    {
      v102 = objc_msgSend_locale(self, v60, v61, v62);
      MEMORY[0x223D9F8D0](v297, v102);

      TSUUnivNumberParser::parseAsNumber(&v295, v297, stringCopy);
      if (v296 == -999)
      {
        v103 = 0;
      }

      else
      {
        v103 = TSUParsedNumber::isInfOrNaN(&v295) ^ 1;
      }

      TSUDecimal::operator=();
      if (!v103 || (TSUDecimal::operator=(), (TSUDecimal::operator<=() & 1) == 0))
      {
        objc_msgSend_setStringValue_(self, v104, stringCopy, v105);
        v106 = MEMORY[0x277D80680];
        v110 = objc_msgSend_locale(self, v107, v108, v109);
        v112 = objc_msgSend_defaultFormatWithFormatType_locale_(v106, v111, 260, v110);

        objc_msgSend_setCurrentFormat_isExplicit_(self, v113, v112, 0);
      }

      MEMORY[0x223D9F890](&v295);
    }

    goto LABEL_45;
  }

  v293 = objc_msgSend_uppercaseString(stringCopy, v60, v61, v62);
  v218 = objc_msgSend_locale(self, v215, v216, v217);
  v222 = objc_msgSend_trueString(v218, v219, v220, v221);
  isEqual = objc_msgSend_isEqual_(v293, v223, v222, v224);

  if ((isEqual & 1) != 0 || (objc_msgSend_locale(self, v226, v227, v228), v291 = objc_claimAutoreleasedReturnValue(), objc_msgSend_falseString(v291, v229, v230, v231), v232 = objc_claimAutoreleasedReturnValue(), v235 = objc_msgSend_isEqual_(v293, v233, v232, v234), v232, v291, v235))
  {
    objc_msgSend_setBoolValue_(self, v226, isEqual, v228);

    goto LABEL_28;
  }

  v237 = objc_msgSend__coerceTextCellToBestNumberFormatUsingLimitedParsing_allowFractions_(self, v236, v33, (flags >> 3) & 1);
  if (v34 == 261)
  {
    v238 = 1;
  }

  else
  {
    v238 = v237;
  }

  if ((v238 & 1) == 0)
  {
    v237 = objc_msgSend_coerceToFormatType_usingSpares_(self, v60, 261, 1);
  }

  if (v237)
  {
    goto LABEL_28;
  }

  if ((v34 & 0xFFFFFFFC) == 0x100)
  {
    v239 = 0;
  }

  else
  {
    v239 = objc_msgSend_coerceTextCellToBestNumberFormatUsingLimitedParsing_(self, v60, v33, v62);
  }

  if ((v239 & 1) == 0 && v34 != 268)
  {
    v239 = objc_msgSend_coerceToFormatType_usingSpares_(self, v60, 268, 1);
  }

  if (v239)
  {
    goto LABEL_28;
  }

LABEL_45:
  v114 = objc_msgSend_cellSpec(self, v60, v61, v62);
  v118 = objc_msgSend_asRangeControlSpec(v114, v115, v116, v117);

  if (v118)
  {
    if ((objc_msgSend_valueType(self, v119, v120, v121) == 2 || objc_msgSend_valueType(self, v122, v123, v124) == 10) && ((v126 = objc_msgSend_formatType(self, v122, v123, v124) - 256, v126 <= 0xD) && ((1 << v126) & 0x204F) != 0 || objc_msgSend_formatType(self, v122, v125, v124) == 267))
    {
      objc_msgSend_underlyingDoubleValue(self, v122, v125, v124);
      objc_msgSend_recomputedValueFromValue_changed_(v118, v127, 0, v128);
      objc_msgSend_setCurrencyOrNumberDoubleValue_(self, v129, v130, v131);
    }

    else
    {
      objc_msgSend_setCellSpec_(self, v122, 0, v124);
    }
  }

  v132 = objc_msgSend_cellSpec(self, v119, v120, v121);
  v136 = objc_msgSend_asChooserControlSpec(v132, v133, v134, v135);

  if (v136)
  {
    v140 = objc_msgSend_locale(self, v137, v138, v139);
    v142 = objc_msgSend_cellValueFromCell_locale_(TSTPopUpMenuModel, v141, self, v140);

    if (objc_msgSend_indexForValue_(v136, v143, v142, v144) == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_setCellSpec_(self, v145, 0, v146);
    }
  }

  if (objc_msgSend_valueType(self, v137, v138, v139) != 6)
  {
    v150 = objc_msgSend_cellSpec(self, v147, v148, v149);
    v154 = objc_msgSend_asToggleControlSpec(v150, v151, v152, v153);

    if (v154)
    {
      objc_msgSend_setCellSpec_(self, v147, 0, v149);
    }
  }

  objc_msgSend_validateAndRepair(self, v147, v148, v149);
}

- (TSTCell)initWithLocale:(id)locale
{
  v21.receiver = self;
  v21.super_class = TSTCell;
  v4 = [(TSTCell *)&v21 init];
  v7 = v4;
  if (v4)
  {
    v4->_conditionalStyleAppliedRule = 15;
    if (!locale)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTCell initWithLocale:]", v6);
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 150, 0, "invalid nil value for '%{public}s'", "locale");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
      locale = objc_msgSend_currentLocale(MEMORY[0x277D81228], v17, v18, v19);
    }

    v7->_locale = locale;
    v7->_valueBigNumber = xmmword_221803860;
  }

  return v7;
}

- (TSTCell)initWithStorageRef:(TSTCellStorage *)ref dataStore:(id)store
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
  v5 = objc_msgSend_allocWithZone_(TSTCell, a2, zone, v3);
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
    *(cellCopy + 21) = self->_cellFlags;
    *(cellCopy + 45) = self->_valueType;
    cellCopy[4] = *&self->_valueDouble;
    *(cellCopy + 1) = self->_valueBigNumber;
    if (self->_valueType == 9)
    {
      v10 = objc_msgSend_richTextValue(self, v7, v8, v9);
      v14 = v10;
      if (!v10)
      {
        v34 = MEMORY[0x277D81150];
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTCell copyToCell:]", v13);
        v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v37);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v39, v35, v38, 196, 0, "invalid nil value for '%{public}s'", "srcStorage");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42);
        *(cellCopy + 45) = 0;
        goto LABEL_10;
      }

      v15 = objc_msgSend_context(v10, v11, v12, v13);
      v18 = objc_msgSend_copyWithContext_(v14, v16, v15, v17);
      v19 = cellCopy[7];
      cellCopy[7] = v18;
    }

    else
    {
      if (!objc_msgSend_hasFormulaSyntaxError(self, v7, v8, v9))
      {
        v33 = self->_valueObject;
        v14 = cellCopy[7];
        cellCopy[7] = v33;
        goto LABEL_10;
      }

      v14 = objc_msgSend_formulaSyntaxError(self, v20, v21, v22);
      v15 = objc_msgSend_context(v14, v23, v24, v25);
      v29 = objc_msgSend_stylesheet(v14, v26, v27, v28);
      v31 = objc_msgSend_i_copyIntoContext_stylesheet_(v14, v30, v15, v29);
      v32 = cellCopy[7];
      cellCopy[7] = v31;
    }

LABEL_10:
    *(cellCopy + 12) = self->_valueID;
    *(cellCopy + 16) = self->_cellStyleID;
    v46 = objc_msgSend_copy(self->_cellStyleHandle, v43, v44, v45);
    v47 = cellCopy[14];
    cellCopy[14] = v46;

    objc_storeStrong(cellCopy + 15, self->_strongCellStyle);
    *(cellCopy + 17) = self->_textStyleID;
    v51 = objc_msgSend_copy(self->_textStyleHandle, v48, v49, v50);
    v52 = cellCopy[16];
    cellCopy[16] = v51;

    objc_storeStrong(cellCopy + 17, self->_strongTextStyle);
    *(cellCopy + 13) = self->_conditionalStyleID;
    objc_storeStrong(cellCopy + 18, self->_conditionalStyle);
    *(cellCopy + 44) = self->_conditionalStyleAppliedRule;
    v56 = objc_msgSend_copy(self->_cellBorder, v53, v54, v55);
    v57 = cellCopy[19];
    cellCopy[19] = v56;

    *(cellCopy + 18) = self->_formulaID;
    *(cellCopy + 19) = self->_controlCellSpecID;
    objc_storeStrong(cellCopy + 20, self->_cellSpec);
    *(cellCopy + 20) = self->_explicitFormatFlags;
    *(cellCopy + 46) = self->_cellFormatKind;
    *(cellCopy + 20) = self->_numberFormatID;
    cellCopy[21] = self->_numberFormat;
    *(cellCopy + 21) = self->_currencyFormatID;
    cellCopy[22] = self->_currencyFormat;
    *(cellCopy + 22) = self->_dateFormatID;
    cellCopy[23] = self->_dateFormat;
    *(cellCopy + 23) = self->_durationFormatID;
    cellCopy[24] = self->_durationFormat;
    *(cellCopy + 24) = self->_textFormatID;
    cellCopy[25] = self->_textFormat;
    *(cellCopy + 25) = self->_BOOLeanFormatID;
    cellCopy[26] = self->_BOOLeanFormat;
    *(cellCopy + 26) = self->_commentStorageID;
    objc_storeStrong(cellCopy + 29, self->_commentStorage);
    *(cellCopy + 27) = self->_importWarningSetID;
    objc_storeStrong(cellCopy + 27, self->_importWarningSet);
    cellCopy[28] = self->_locale;
  }
}

- (void)shallowCopyToCell:(id)cell
{
  cellCopy = cell;
  if (cellCopy)
  {
    objc_msgSend_clear(cellCopy, v4, v5, v6);
    *(cellCopy + 21) = self->_cellFlags;
    *(cellCopy + 45) = self->_valueType;
    cellCopy[4] = *&self->_valueDouble;
    *(cellCopy + 1) = self->_valueBigNumber;
    objc_storeStrong(cellCopy + 7, self->_valueObject);
    *(cellCopy + 12) = self->_valueID;
    *(cellCopy + 16) = self->_cellStyleID;
    v10 = objc_msgSend_copy(self->_cellStyleHandle, v7, v8, v9);
    v11 = cellCopy[14];
    cellCopy[14] = v10;

    objc_storeStrong(cellCopy + 15, self->_strongCellStyle);
    *(cellCopy + 17) = self->_textStyleID;
    v15 = objc_msgSend_copy(self->_textStyleHandle, v12, v13, v14);
    v16 = cellCopy[16];
    cellCopy[16] = v15;

    objc_storeStrong(cellCopy + 17, self->_strongTextStyle);
    *(cellCopy + 13) = self->_conditionalStyleID;
    objc_storeStrong(cellCopy + 18, self->_conditionalStyle);
    *(cellCopy + 44) = self->_conditionalStyleAppliedRule;
    objc_storeStrong(cellCopy + 19, self->_cellBorder);
    *(cellCopy + 18) = self->_formulaID;
    *(cellCopy + 19) = self->_controlCellSpecID;
    objc_storeStrong(cellCopy + 20, self->_cellSpec);
    *(cellCopy + 20) = self->_explicitFormatFlags;
    *(cellCopy + 46) = self->_cellFormatKind;
    *(cellCopy + 20) = self->_numberFormatID;
    cellCopy[21] = self->_numberFormat;
    *(cellCopy + 21) = self->_currencyFormatID;
    cellCopy[22] = self->_currencyFormat;
    *(cellCopy + 22) = self->_dateFormatID;
    cellCopy[23] = self->_dateFormat;
    *(cellCopy + 23) = self->_durationFormatID;
    cellCopy[24] = self->_durationFormat;
    *(cellCopy + 24) = self->_textFormatID;
    cellCopy[25] = self->_textFormat;
    *(cellCopy + 25) = self->_BOOLeanFormatID;
    cellCopy[26] = self->_BOOLeanFormat;
    *(cellCopy + 26) = self->_commentStorageID;
    objc_storeStrong(cellCopy + 29, self->_commentStorage);
    *(cellCopy + 27) = self->_importWarningSetID;
    objc_storeStrong(cellCopy + 27, self->_importWarningSet);
    cellCopy[28] = self->_locale;
  }
}

- (void)copyJustValueToCell:(id)cell
{
  cellCopy = cell;
  if (cellCopy)
  {
    v7 = objc_msgSend_valueType(self, v4, v5, v6);
    if (v7 <= 5)
    {
      if (v7 <= 2)
      {
        if (!v7)
        {
          objc_msgSend_clearValue(cellCopy, v8, v9, v10);
          goto LABEL_24;
        }

        if (v7 != 2)
        {
          goto LABEL_24;
        }

        goto LABEL_11;
      }

      if (v7 == 3)
      {
        v19 = objc_msgSend_stringValue(self, v8, v9, v10);
        objc_msgSend_setStringValue_(cellCopy, v25, v19, v26);
      }

      else
      {
        if (v7 != 5)
        {
          goto LABEL_24;
        }

        v19 = objc_msgSend_dateValue(self, v8, v9, v10);
        objc_msgSend_setDateValue_(cellCopy, v20, v19, v21);
      }

LABEL_23:

      goto LABEL_24;
    }

    if (v7 > 7)
    {
      switch(v7)
      {
        case 8:
          v19 = objc_msgSend_formulaSyntaxError(self, v8, v9, v10);
          objc_msgSend_setFormulaSyntaxError_(cellCopy, v27, v19, v28);
          break;
        case 9:
          v19 = objc_msgSend_richTextValue(self, v8, v9, v10);
          objc_msgSend_setRichTextValueWithoutPlaintextCollapse_(cellCopy, v32, v19, v33);
          break;
        case 10:
LABEL_11:
          v11 = objc_msgSend_underlyingDecimalValue(self, v8, v9, v10);
          v13 = v12;
          if (objc_msgSend_currencyIsMostRecentlySet(cellCopy, v12, v14, v15))
          {
LABEL_12:
            objc_msgSend_setCurrencyDecimalValue_(cellCopy, v16, v11, v13);
            goto LABEL_24;
          }

          v34 = objc_msgSend_numberFormat(cellCopy, v16, v17, v18);
          if (v34)
          {
          }

          else if (objc_msgSend_valueType(self, v35, v36, v37) == 10)
          {
            goto LABEL_12;
          }

          objc_msgSend_setNumberDecimalValue_(cellCopy, v16, v11, v13);
          goto LABEL_24;
        default:
          goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (v7 == 6)
    {
      v29 = objc_msgSend_BOOLValue(self, v8, v9, v10);
      objc_msgSend_setBoolValue_(cellCopy, v30, v29, v31);
    }

    else
    {
      objc_msgSend_durationTimeIntervalValue(self, v8, v9, v10);
      objc_msgSend_setDurationTimeIntervalValue_(cellCopy, v22, v23, v24);
    }
  }

LABEL_24:
}

- (void)copyValueAndFormatToCell:(id)cell
{
  cellCopy = cell;
  if (cellCopy)
  {
    cellCopy[45] = self->_valueType;
    *(cellCopy + 4) = *&self->_valueDouble;
    *(cellCopy + 1) = self->_valueBigNumber;
    v5 = *(cellCopy + 20);
    v51 = cellCopy;
    *(cellCopy + 20) = 0;

    if (self->_valueType == 9)
    {
      v9 = objc_msgSend_richTextValue(self, v6, v7, v8);
      v13 = v9;
      if (!v9)
      {
        v33 = MEMORY[0x277D81150];
        v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCell copyValueAndFormatToCell:]", v12);
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v36);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v38, v34, v37, 376, 0, "invalid nil value for '%{public}s'", "srcStorage");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41);
        v51[45] = 0;
        goto LABEL_10;
      }

      v14 = objc_msgSend_context(v9, v10, v11, v12);
      v17 = objc_msgSend_copyWithContext_(v13, v15, v14, v16);
      v18 = *(v51 + 7);
      *(v51 + 7) = v17;
    }

    else
    {
      if (!objc_msgSend_hasFormulaSyntaxError(self, v6, v7, v8))
      {
        v32 = self->_valueObject;
        v13 = *(v51 + 7);
        *(v51 + 7) = v32;
        goto LABEL_10;
      }

      v13 = objc_msgSend_formulaSyntaxError(self, v19, v20, v21);
      v14 = objc_msgSend_context(v13, v22, v23, v24);
      v28 = objc_msgSend_stylesheet(v13, v25, v26, v27);
      v30 = objc_msgSend_i_copyIntoContext_stylesheet_(v13, v29, v14, v28);
      v31 = *(v51 + 7);
      *(v51 + 7) = v30;
    }

LABEL_10:
    *(v51 + 12) = self->_valueID;
    v51[46] = self->_cellFormatKind;
    v45 = objc_msgSend_currentFormat(self, v42, v43, v44);
    IsExplicit = objc_msgSend_currentFormatIsExplicit(self, v46, v47, v48);
    objc_msgSend_setCurrentFormat_isExplicit_(v51, v50, v45, IsExplicit);

    cellCopy = v51;
    *(v51 + 28) = self->_locale;
  }
}

- (void)inflateFromStorageRef:(TSTCellStorage *)ref dataStore:(id)store cache:(id)cache suppressingTransmutation:(BOOL)transmutation
{
  sub_221144998(ref, self);
  if ((objc_msgSend_cellValueTypeIsExpected_(TSTCell, v9, self->_valueType, v10) & 1) == 0)
  {
    objc_msgSend_clearValue(self, v11, v12, v13);
  }

  if ((objc_msgSend_cellFormatKindIsExpected_(TSTCell, v11, self->_cellFormatKind, v13) & 1) == 0)
  {
    objc_msgSend_setCurrentFormat_isExplicit_(self, v14, 0, 0);
  }

  if (store)
  {
    if (!self->_locale)
    {
      if (cache)
      {
        v17 = objc_msgSend_locale(cache, v14, v15, v16);
        objc_msgSend_setLocale_(self, v18, v17, v19);
      }

      else
      {
        v20 = objc_msgSend_documentRoot(store, v14, v15, v16);
        v24 = objc_msgSend_documentLocale(v20, v21, v22, v23);

        v17 = v24;
        objc_msgSend_setLocale_(self, v25, v24, v26);
      }
    }

    MEMORY[0x2821F9670](store, sel_resolveDataListKeysForCell_cache_suppressTransmutation_sourceStorageVersion_, self, cache);
  }
}

- (BOOL)p_currentFormatIsEqualToOtherCellFormat:(id)format
{
  formatCopy = format;
  v8 = objc_msgSend_currentFormat(self, v5, v6, v7);
  v14 = objc_msgSend_currentFormat(formatCopy, v9, v10, v11);
  if (v8 == v14)
  {
    isEqual = 1;
  }

  else
  {
    isEqual = objc_msgSend_isEqual_(v8, v12, v14, v13);
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
  if (v45 > 6)
  {
    if (self->_valueType > 8u)
    {
      if (v45 != 9)
      {
        if (v45 != 10)
        {
          goto LABEL_19;
        }

        objc_msgSend_currencyDoubleValue(self, v42, v43, v44);
        v65 = v64;
        objc_msgSend_currencyDoubleValue(cellCopy, v66, v67, v68);
        goto LABEL_32;
      }

      if (blockCopy)
      {
        v46 = objc_msgSend_richTextValue(self, v42, v43, v44);
        v86 = objc_msgSend_richTextValue(cellCopy, v83, v84, v85);
        v28 = objc_msgSend_range(v46, v87, v88, v89);
        v91 = v90;
        v94 = objc_msgSend_range(v86, v90, v92, v93);
        LOBYTE(v28) = objc_msgSend_compareRange_otherStorage_otherRange_options_objectComparisonBlock_(v46, v95, v28, v91, v86, v94, v95, 0, blockCopy) == 0;

LABEL_38:
        goto LABEL_19;
      }

      v46 = objc_msgSend_richTextValue(self, v42, v43, v44);
      v50 = objc_msgSend_richTextValue(cellCopy, v96, v97, v98);
      isEqual = objc_msgSend_isEqual_(v46, v99, v50, v100);
    }

    else
    {
      if (v45 == 7)
      {
        objc_msgSend_durationTimeIntervalValue(self, v42, v43, v44);
        v65 = v74;
        objc_msgSend_durationTimeIntervalValue(cellCopy, v75, v76, v77);
        goto LABEL_32;
      }

      if (v45 != 8)
      {
        goto LABEL_19;
      }

      v46 = objc_msgSend_formulaSyntaxError(self, v42, v43, v44);
      v50 = objc_msgSend_formulaSyntaxError(cellCopy, v55, v56, v57);
      isEqual = objc_msgSend_isFormulaSyntaxErrorEqual_(v46, v58, v50, v59);
    }

LABEL_37:
    LOBYTE(v28) = isEqual;

    goto LABEL_38;
  }

  if (self->_valueType <= 4u)
  {
    if (v45 != 2)
    {
      if (v45 != 3)
      {
        goto LABEL_19;
      }

      v46 = objc_msgSend_stringValue(self, v42, v43, v44);
      v50 = objc_msgSend_stringValue(cellCopy, v47, v48, v49);
      isEqual = objc_msgSend_isEqualToString_(v46, v51, v50, v52);
      goto LABEL_37;
    }

    objc_msgSend_numberDoubleValue(self, v42, v43, v44);
    v65 = v70;
    objc_msgSend_numberDoubleValue(cellCopy, v71, v72, v73);
LABEL_32:
    LOBYTE(v28) = v65 == v69;
    goto LABEL_19;
  }

  if (v45 == 5)
  {
    v46 = objc_msgSend_dateValue(self, v42, v43, v44);
    v50 = objc_msgSend_dateValue(cellCopy, v78, v79, v80);
    isEqual = objc_msgSend_isEqualToDate_(v46, v81, v50, v82);
    goto LABEL_37;
  }

  if (v45 == 6)
  {
    v60 = objc_msgSend_BOOLValue(self, v42, v43, v44);
    LODWORD(v28) = v60 ^ objc_msgSend_BOOLValue(cellCopy, v61, v62, v63) ^ 1;
  }

LABEL_19:

  return v28;
}

- (id)cellByApplyingCellDiff:(id)diff toTable:(id)table andUpdateInverse:(id)inverse optionalConcurrentStylesheet:(id)stylesheet
{
  diffCopy = diff;
  tableCopy = table;
  inverseCopy = inverse;
  stylesheetCopy = stylesheet;
  v17 = objc_msgSend_copy(self, v14, v15, v16);
  if (objc_msgSend_doesSetProperty_(diffCopy, v18, 913, v19))
  {
    v23 = objc_msgSend_cellSpecForDiff(v17, v20, v21, v22);
    objc_opt_class();
    v25 = objc_msgSend_objectApplyingDiffToObject_andUpdateInverse_(diffCopy, v24, v23, inverseCopy);
    v26 = TSUCheckedDynamicCast();

    objc_msgSend_setCellSpec_(v17, v27, v26, v28);
  }

  if (objc_msgSend_doesSetProperty_(diffCopy, v20, 907, v22))
  {
    v31 = [TSTCellFormatAndValue alloc];
    v33 = objc_msgSend_initFromCell_useAllSpareFormats_(v31, v32, v17, 1);
    objc_opt_class();
    v35 = objc_msgSend_objectApplyingDiffToObject_andUpdateInverse_(diffCopy, v34, v33, inverseCopy);
    v36 = TSUCheckedDynamicCast();

    objc_msgSend_applyToCell_(v36, v37, v17, v38);
  }

  if ((objc_msgSend_doesSetProperty_(diffCopy, v29, 905, v30) & 1) != 0 || objc_msgSend_containsCellStyleProperties(diffCopy, v39, v40, v41))
  {
    v44 = objc_msgSend_cellStyle(v17, v39, v40, v41);
    if (!v44)
    {
      v45 = MEMORY[0x277D81150];
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[TSTCell cellByApplyingCellDiff:toTable:andUpdateInverse:optionalConcurrentStylesheet:]", v43);
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v48);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v50, v46, v49, 563, 0, "invalid nil value for '%{public}s'", "cellStyle");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53);
    }

    objc_opt_class();
    v55 = objc_msgSend_objectApplyingDiffToObject_andUpdateInverse_optionalConcurrentStylesheet_(diffCopy, v54, v44, inverseCopy, stylesheetCopy);
    v56 = TSUCheckedDynamicCast();

    if (v56)
    {
      objc_msgSend_setCellStyle_(v17, v57, v56, v58);
    }
  }

  if ((objc_msgSend_doesSetProperty_(diffCopy, v39, 906, v41) & 1) != 0 || objc_msgSend_containsParagraphStyleProperties(diffCopy, v59, v60, v61))
  {
    v64 = objc_msgSend_textStyle(v17, v59, v60, v61);
    if (!v64)
    {
      v65 = MEMORY[0x277D81150];
      v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "[TSTCell cellByApplyingCellDiff:toTable:andUpdateInverse:optionalConcurrentStylesheet:]", v63);
      v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v68);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v70, v66, v69, 576, 0, "invalid nil value for '%{public}s'", "textStyle");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73);
    }

    objc_opt_class();
    v75 = objc_msgSend_objectApplyingDiffToObject_andUpdateInverse_optionalConcurrentStylesheet_(diffCopy, v74, v64, inverseCopy, stylesheetCopy);
    v76 = TSUCheckedDynamicCast();

    if (v76)
    {
      objc_msgSend_setTextStyle_(v17, v77, v76, v78);
    }
  }

  if (objc_msgSend_containsProperty_(diffCopy, v59, 909, v61))
  {
    v82 = objc_msgSend_conditionalStyle(v17, v79, v80, v81);
    v86 = v82;
    if (v82)
    {
      v87 = v82;
    }

    else
    {
      v87 = objc_msgSend_noRuleConditionalStyleSet(tableCopy, v83, v84, v85);
    }

    v88 = v87;

    objc_opt_class();
    v90 = objc_msgSend_objectApplyingDiffToObject_andUpdateInverse_(diffCopy, v89, v88, inverseCopy);
    v91 = TSUCheckedDynamicCast();

    if (objc_msgSend_ruleCount(v91, v92, v93, v94))
    {
      v97 = v91;
      objc_msgSend_setConditionalStyle_(v17, v95, v91, v96);
    }

    else
    {

      v97 = 0;
      objc_msgSend_setConditionalStyle_(v17, v100, 0, v101);
    }

    if (!v97)
    {
      objc_msgSend_setConditionalStyleAppliedRule_(v17, v98, 15, v99);
    }
  }

  if (objc_msgSend_doesSetProperty_(diffCopy, v79, 910, v81))
  {
    v104 = [TSTCommentStorageWrapper alloc];
    v108 = objc_msgSend_commentStorage(v17, v105, v106, v107);
    v111 = objc_msgSend_initWithCommentStorage_(v104, v109, v108, v110);

    objc_opt_class();
    v113 = objc_msgSend_objectApplyingDiffToObject_andUpdateInverse_(diffCopy, v112, v111, inverseCopy);
    v114 = TSUCheckedDynamicCast();

    objc_msgSend_applyToCell_(v114, v115, v17, v116);
  }

  if (objc_msgSend_doesSetProperty_(diffCopy, v102, 912, v103))
  {
    v120 = objc_msgSend_cellBorder(v17, v117, v118, v119);
    v124 = objc_msgSend_copy(v120, v121, v122, v123);

    objc_opt_class();
    v126 = objc_msgSend_objectApplyingDiffToObject_andUpdateInverse_(diffCopy, v125, v124, inverseCopy);
    v127 = TSUCheckedDynamicCast();

    objc_msgSend_applyToCell_(v127, v128, v17, v129);
  }

  if (objc_msgSend_doesSetProperty_(diffCopy, v117, 914, v119) && objc_msgSend_BOOLValueForSetProperty_(diffCopy, v130, 914, v131))
  {
    objc_msgSend_setBoolValue_forProperty_(inverseCopy, v132, 1, 914);
  }

  return v17;
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

  return self->_cellFlags < 4u;
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

  cellStyleHandle = self->_cellStyleHandle;
  self->_cellStyleHandle = 0;

  strongCellStyle = self->_strongCellStyle;
  self->_strongCellStyle = 0;

  textStyleHandle = self->_textStyleHandle;
  self->_textStyleHandle = 0;

  strongTextStyle = self->_strongTextStyle;
  self->_strongTextStyle = 0;

  cellBorder = self->_cellBorder;
  self->_cellBorder = 0;

  self->_cellFormatKind = 0;
  *&self->_numberFormat = 0u;
  *&self->_dateFormat = 0u;
  *&self->_textFormat = 0u;
  cellSpec = self->_cellSpec;
  self->_cellSpec = 0;

  *&self->_explicitFormatFlags = 0;
  self->_valueDouble = 0.0;
  self->_valueBigNumber = xmmword_221803860;
  *&self->_conditionalStyleAppliedRule = 15;
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
  *&self->_valueID = 0;
  *&self->_cellStyleID = 0u;
  *&self->_numberFormatID = 0u;
  *&self->_textFormatID = 0u;
}

- (void)setProvidedValueTypeBeforeUpgrade
{
  if (self->_valueType)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCell setProvidedValueTypeBeforeUpgrade]", v2);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 835, 0, "Provided cells only allowed before Pre-UFF upgrade.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  }

  *&self->_valueType = 4;
}

- (TSUDecimal)numberDecimalValue
{
  if (self->_valueType == 2)
  {
    valueBigNumber = self->_valueBigNumber;
  }

  else
  {
    TSUDecimal::operator=();
  }

  v3 = valueBigNumber._decimal.w[1];
  v2 = valueBigNumber._decimal.w[0];
  result._decimal.w[1] = v3;
  result._decimal.w[0] = v2;
  return result;
}

- (void)setNumberDecimalValue:(TSUDecimal)value roundToDoublePrecision:(BOOL)precision
{
  precisionCopy = precision;
  valueCopy = value;
  self->_valueType = 2;
  self->_valueID = 0;
  valueObject = self->_valueObject;
  self->_valueObject = 0;

  if (precisionCopy)
  {
    TSUDecimal::roundToDoublePrecision(&valueCopy);
  }

  TSUDecimal::doubleValue(&valueCopy);
  self->_valueDouble = v7;
  self->_valueBigNumber = valueCopy;
  self->_cellFormatKind = 1;
}

- (TSUDecimal)currencyDecimalValue
{
  if (self->_valueType == 10)
  {
    valueBigNumber = self->_valueBigNumber;
  }

  else
  {
    TSUDecimal::operator=();
  }

  v3 = valueBigNumber._decimal.w[1];
  v2 = valueBigNumber._decimal.w[0];
  result._decimal.w[1] = v3;
  result._decimal.w[0] = v2;
  return result;
}

- (void)setCurrencyDecimalValue:(TSUDecimal)value roundToDoublePrecision:(BOOL)precision
{
  precisionCopy = precision;
  valueCopy = value;
  self->_valueType = 10;
  self->_valueID = 0;
  valueObject = self->_valueObject;
  self->_valueObject = 0;

  if (precisionCopy)
  {
    TSUDecimal::roundToDoublePrecision(&valueCopy);
  }

  TSUDecimal::doubleValue(&valueCopy);
  self->_valueDouble = v7;
  self->_valueBigNumber = valueCopy;
  self->_cellFormatKind = 2;
}

- (double)numberDoubleValue
{
  result = 0.0;
  if (self->_valueType == 2)
  {
    return self->_valueDouble;
  }

  return result;
}

- (double)currencyDoubleValue
{
  result = 0.0;
  if (self->_valueType == 10)
  {
    return self->_valueDouble;
  }

  return result;
}

- (TSUDecimal)underlyingDecimalValue
{
  v2 = self->_valueBigNumber._decimal.w[1];
  v3 = self->_valueBigNumber._decimal.w[0];
  result._decimal.w[1] = v2;
  result._decimal.w[0] = v3;
  return result;
}

- (void)setCurrencyOrNumberDoubleValue:(double)value
{
  if (self->_valueType == 10 || self->_cellFormatKind == 2)
  {
    objc_msgSend_setCurrencyDoubleValue_(self, a2, v3, v4, value);
  }

  else
  {
    objc_msgSend_setNumberDoubleValue_(self, a2, v3, v4, value);
  }
}

- (void)setCurrencyOrNumberDecimalValue:(const TSUDecimal *)value
{
  if (self->_valueType == 10 || self->_cellFormatKind == 2)
  {
    objc_msgSend_setCurrencyDecimalValue_(self, a2, value->_decimal.w[0], value->_decimal.w[1]);
  }

  else
  {
    objc_msgSend_setNumberDecimalValue_(self, a2, value->_decimal.w[0], value->_decimal.w[1]);
  }
}

- (void)setBoolValue:(BOOL)value
{
  valueCopy = value;
  self->_valueType = 6;
  self->_valueID = 0;
  valueObject = self->_valueObject;
  self->_valueObject = 0;

  v6 = 0.0;
  if (valueCopy)
  {
    v6 = 1.0;
  }

  self->_valueDouble = v6;
  self->_valueBigNumber = xmmword_221803860;
  self->_cellFormatKind = 6;
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
  self->_valueType = 7;
  self->_valueID = 0;
  valueObject = self->_valueObject;
  self->_valueObject = 0;

  self->_valueDouble = value;
  self->_valueBigNumber = xmmword_221803860;
  self->_cellFormatKind = 4;
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
  if (valueCopy)
  {
    self->_valueType = 5;
    self->_valueID = 0;
    v9 = valueCopy;
    objc_storeStrong(&self->_valueObject, value);
    valueCopy = v9;
    self->_valueDouble = 0.0;
    self->_valueBigNumber = xmmword_221803860;
    self->_cellFormatKind = 3;
  }

  else if (self->_valueType == 5)
  {
    objc_msgSend_clearValue(self, v6, v7, v8);
    valueCopy = 0;
  }
}

- (NSString)stringValue
{
  if (self->_valueType == 3)
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
  v16 = valueCopy;
  if (valueCopy)
  {
    valueObject = self->_valueObject;
    self->_valueType = 3;
    self->_valueDouble = 0.0;
    self->_valueBigNumber = xmmword_221803860;
    if (valueObject != valueCopy)
    {
      objc_storeStrong(&self->_valueObject, value);
      self->_cellFormatKind = 5;
      self->_cellFlags = self->_cellFlags & 0xFFFE | wrapCopy;
      if (dCopy)
      {
        objc_msgSend_setStringID_(self, v14, 0, v15);
      }
    }
  }

  else if (self->_valueType == 3)
  {
    objc_msgSend_clearValue(self, v10, v11, v12);
  }
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
  v19 = errorCopy;
  if (errorCopy)
  {
    valueObject = self->_valueObject;
    self->_valueType = 8;
    self->_valueDouble = 0.0;
    self->_valueBigNumber = xmmword_221803860;
    if (valueObject != errorCopy)
    {
      objc_storeStrong(&self->_valueObject, error);
      if (dCopy)
      {
        self->_valueID = 0;
        if (objc_msgSend_hasCurrentFormat(self, v12, v13, v14))
        {
          if ((objc_msgSend_currentFormatIsExplicit(self, v15, v16, v17) & 1) == 0)
          {
            objc_msgSend_setCurrentFormat_isExplicit_(self, v18, 0, 0);
          }
        }
      }
    }
  }

  else if (self->_valueType == 8)
  {
    objc_msgSend_clearValue(self, v8, v9, v10);
  }
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
  v24 = valueCopy;
  if (valueCopy)
  {
    valueObject = self->_valueObject;
    self->_valueDouble = 0.0;
    self->_valueBigNumber = xmmword_221803860;
    if (valueObject != valueCopy)
    {
      if (possibleCopy && objc_msgSend_canBeStoredInAStringValueCell(valueCopy, v10, v11, v12))
      {
        v17 = objc_msgSend_string(v24, v14, v15, v16);
        objc_msgSend_setStringValue_(self, v18, v17, v19);

        v21 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v24, v20, 0, 0);
        objc_msgSend_setTextStyle_(self, v22, v21, v23);
      }

      else
      {
        self->_valueType = 9;
        objc_storeStrong(&self->_valueObject, value);
        self->_cellFormatKind = 5;
        if (dCopy)
        {
          self->_valueID = 0;
        }
      }
    }
  }

  else if (self->_valueType == 9)
  {
    objc_msgSend_clearValue(self, v10, v11, v12);
  }
}

- (void)clearValue
{
  valueObject = self->_valueObject;
  self->_valueObject = 0;

  self->_valueID = 0;
  self->_valueDouble = 0.0;
  self->_valueBigNumber = xmmword_221803860;
  self->_valueType = 0;
  if (objc_msgSend_hasCurrentFormat(self, v4, v5, v6) && (objc_msgSend_currentFormatIsExplicit(self, v7, v8, v9) & 1) == 0)
  {

    objc_msgSend_setCurrentFormat_isExplicit_(self, v10, 0, 0);
  }
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

- (BOOL)mightBeInterestedInMigration
{
  if (self->_textStyleHandle || self->_cellStyleHandle || self->_strongTextStyle || self->_strongCellStyle || (objc_msgSend_hasRichText(self, a2, v2, v3) & 1) != 0)
  {
    return 1;
  }

  return objc_msgSend_hasFormulaSyntaxError(self, v5, v6, v7);
}

- (NSString)formattedValue
{
  v5 = 0;
  locale = self->_locale;
  valueType = self->_valueType;
  if (valueType > 5)
  {
    if (self->_valueType <= 7u)
    {
      if (valueType == 6)
      {
        v27 = objc_msgSend_currentFormat(self, a2, v2, v3);
        v80 = objc_msgSend_BOOLValue(self, v77, v78, v79);
        v33 = objc_msgSend_stringFromBool_locale_(v27, v81, v80, locale);
        goto LABEL_25;
      }

      if (valueType == 7)
      {
        v27 = objc_msgSend_currentFormat(self, a2, v2, v3);
        objc_msgSend_durationTimeIntervalValue(self, v65, v66, v67);
        v33 = objc_msgSend_stringFromDurationTimeInterval_locale_(v27, v68, locale, v69);
        goto LABEL_25;
      }
    }

    else
    {
      switch(valueType)
      {
        case 8u:
          goto LABEL_34;
        case 9u:
          v27 = objc_msgSend_richTextValue(self, a2, v2, v3);
          v33 = objc_msgSend_string(v27, v82, v83, v84);
          goto LABEL_25;
        case 0xAu:
          v8 = objc_msgSend_currentFormat(self, a2, v2, v3);
          objc_msgSend_currencyDoubleValue(self, v9, v10, v11);
          v5 = objc_msgSend_stringFromDouble_locale_(v8, v12, locale, v13);

          if (!v5)
          {
            v17 = MEMORY[0x277D81150];
            v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTCell formattedValue]", v16);
            v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v20);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 1253, 0, "Cell currency format failed to produce return string.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
            v27 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v26, 257, locale);
            objc_msgSend_currencyDoubleValue(self, v28, v29, v30);
            v33 = objc_msgSend_stringFromDouble_locale_(v27, v31, locale, v32);
LABEL_25:
            v5 = v33;
            goto LABEL_31;
          }

          goto LABEL_32;
      }
    }

LABEL_26:
    v85 = MEMORY[0x277D81150];
    v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCell formattedValue]", v3);
    v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v88);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v85, v90, v86, v89, 1277, 0, "Impossible cell value type reached.");

    v5 = 0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v91, v92, v93);
    goto LABEL_34;
  }

  if (self->_valueType > 2u)
  {
    if (valueType == 3)
    {
      if (objc_msgSend_formatType(self, a2, v2, v3) != 271)
      {
        v5 = objc_msgSend_stringValue(self, v70, v71, v72);
        if (!v5)
        {
          goto LABEL_34;
        }

        goto LABEL_32;
      }

      v27 = objc_msgSend_currentFormat(self, v70, v71, v72);
      v62 = objc_msgSend_stringValue(self, v73, v74, v75);
      v64 = objc_msgSend_stringFromString_locale_(v27, v76, v62, locale);
    }

    else
    {
      if (valueType != 5)
      {
        goto LABEL_26;
      }

      v55 = objc_msgSend_formatType(self, a2, v2, v3);
      if (v55 == 272 || v55 == 261)
      {
        v27 = objc_msgSend_currentFormat(self, v56, v57, v58);
        v62 = objc_msgSend_dateValue(self, v59, v60, v61);
        v64 = objc_msgSend_stringFromDate_locale_(v27, v63, v62, locale);
      }

      else
      {
        v27 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v56, 261, locale);
        v62 = objc_msgSend_dateValue(self, v94, v95, v96);
        v64 = objc_msgSend_stringFromDate_locale_(v27, v97, v62, locale);
      }
    }

    v5 = v64;

LABEL_31:
    if (!v5)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (!self->_valueType)
  {
    goto LABEL_34;
  }

  if (valueType != 2)
  {
    goto LABEL_26;
  }

  v34 = objc_msgSend_currentFormat(self, a2, v2, v3);
  objc_msgSend_numberDoubleValue(self, v35, v36, v37);
  v5 = objc_msgSend_stringFromDouble_locale_(v34, v38, locale, v39);

  if (!v5)
  {
    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTCell formattedValue]", v16);
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v43);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v45, v41, v44, 1245, 0, "Cell number format failed to produce return string.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48);
    v27 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v49, 256, locale);
    objc_msgSend_numberDoubleValue(self, v50, v51, v52);
    v33 = objc_msgSend_stringFromDouble_locale_(v27, v53, locale, v54);
    goto LABEL_25;
  }

LABEL_32:
  if ((objc_msgSend_cellFlags(self, v14, v15, v16) & 4) != 0)
  {
    v99 = objc_msgSend_localizedStringForKey_value_table_(locale, v98, @"%@ Total", &stru_2834BADA0, @"TSTables");
    v102 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v100, v99, v101, v5);

    v5 = v102;
  }

LABEL_34:

  return v5;
}

- (NSString)stringForEditing
{
  v5 = objc_msgSend_currentFormat(self, a2, v2, v3);
  v9 = objc_msgSend_formatType(v5, v6, v7, v8);
  v13 = v9;
  valueType = self->_valueType;
  if (valueType > 5)
  {
    if (self->_valueType <= 7u)
    {
      if (valueType == 6)
      {
        v15 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v10, 1, self->_locale);
        v94 = objc_msgSend_BOOLValue(self, v91, v92, v93);
        v21 = objc_msgSend_stringFromBool_locale_(v15, v95, v94, self->_locale);
        goto LABEL_34;
      }

      if (valueType == 7)
      {
        v15 = objc_msgSend_asDurationFormat(v5, v10, v11, v12);
        if (!v15)
        {
          v25 = MEMORY[0x277D81150];
          v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSTCell stringForEditing]", v24);
          v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v28);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v30, v26, v29, 1375, 0, "invalid nil value for '%{public}s'", "durationFormat");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33);
        }

        IsExplicit = objc_msgSend_currentFormatIsExplicit(self, v22, v23, v24);
        if ((IsExplicit & 1) == 0 && (objc_msgSend_useAutomaticUnits(v15, v34, v35, v36) & 1) == 0)
        {
          v38 = objc_alloc(MEMORY[0x277D80678]);
          v42 = objc_msgSend_durationUnitSmallest(v15, v39, v40, v41);
          v46 = objc_msgSend_durationUnitLargest(v15, v43, v44, v45);
          v50 = objc_msgSend_durationStyle(v15, v47, v48, v49);
          v52 = objc_msgSend_initWithUseAutomaticUnits_durationUnitSmallest_durationUnitLargest_durationStyle_(v38, v51, 1, v42, v46, v50);

          v15 = v52;
        }

        objc_msgSend_durationTimeIntervalValue(self, v34, v35, v36);
        v21 = objc_msgSend_stringFromDurationTimeInterval_locale_showPrecision_(v15, v53, self->_locale, IsExplicit);
        goto LABEL_34;
      }

      goto LABEL_39;
    }

    if (valueType != 8)
    {
      if (valueType == 10)
      {
        if (v9 == 257)
        {
          v15 = objc_msgSend_asCurrencyFormat(v5, v10, v11, v12);
          v107 = objc_alloc(MEMORY[0x277D80640]);
          v111 = objc_msgSend_showThousandsSeparator(v15, v108, v109, v110);
          v115 = objc_msgSend_currencyCode(v15, v112, v113, v114);
          v61 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v107, v116, 253, 0, v111, 0, v115);

          objc_msgSend_currencyDoubleValue(self, v117, v118, v119);
          v62 = objc_msgSend_stringFromDouble_locale_(v61, v120, self->_locale, v121);
          goto LABEL_42;
        }

        if (v9 == 274)
        {
          v15 = objc_msgSend_asCustomFormatWrapper(v5, v10, v11, v12);
          v66 = objc_msgSend_customFormat(v15, v63, v64, v65);
          objc_msgSend_currencyDoubleValue(self, v67, v68, v69);
          v61 = objc_msgSend_conditionalFormatDataForValue_outKey_(v66, v70, 0, v71);

          if (objc_msgSend_currencyCodeIndex(v61, v72, v73, v74))
          {
            v75 = objc_alloc(MEMORY[0x277D80640]);
            v79 = objc_msgSend_showThousandsSeparator(v61, v76, v77, v78);
            objc_msgSend_currencyCodeIndex(v61, v80, v81, v82);
            v83 = TSUCurrencyCodeForIndex();
            v85 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v75, v84, 253, 0, v79, 0, v83);
          }

          else
          {
            v128 = objc_alloc(MEMORY[0x277D806A0]);
            v132 = objc_msgSend_showThousandsSeparator(v61, v129, v130, v131);
            v85 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v128, v133, 256, 253, 0, v132);
          }

          objc_msgSend_currencyDoubleValue(self, v86, v87, v88);
          v90 = objc_msgSend_stringFromDouble_locale_(v85, v134, self->_locale, v135);

          goto LABEL_43;
        }
      }

LABEL_39:
      v89 = objc_msgSend_formattedValue(self, v10, v11, v12);
      goto LABEL_40;
    }

    goto LABEL_32;
  }

  if (self->_valueType > 2u)
  {
    if (valueType != 3)
    {
      if (valueType == 5)
      {
        v15 = TSUShortestCompleteDateTimeFormat();
        if (objc_msgSend_valueRepresentsDateWithoutTime(self, v54, v55, v56))
        {
          v60 = TSUShortestCompleteDateOnlyFormat();

          v15 = v60;
        }

        v61 = objc_msgSend_dateValue(self, v57, v58, v59);
        v62 = TSUDateFormatterStringFromDateWithFormat();
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v89 = objc_msgSend_stringValue(self, v10, v11, v12);
LABEL_40:
    v90 = v89;
    goto LABEL_45;
  }

  if (!self->_valueType)
  {
    if (v9 == 258)
    {
      v89 = objc_msgSend_percentSymbol(self->_locale, v10, v11, v12);
      goto LABEL_40;
    }

LABEL_32:
    v90 = 0;
    goto LABEL_45;
  }

  if (valueType != 2)
  {
    goto LABEL_39;
  }

  if (v9 <= 258)
  {
    if (v9 == 256 || v9 == 258)
    {
      v15 = objc_msgSend_asNumberFormat(v5, v10, v11, v12);
      v96 = objc_alloc(MEMORY[0x277D806A0]);
      v100 = objc_msgSend_showThousandsSeparator(v15, v97, v98, v99);
      v61 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v96, v101, v13, 253, 0, v100);
      objc_msgSend_numberDoubleValue(self, v102, v103, v104);
      v62 = objc_msgSend_stringFromDouble_locale_(v61, v105, self->_locale, v106);
LABEL_42:
      v90 = v62;
LABEL_43:

      goto LABEL_44;
    }

    goto LABEL_39;
  }

  if (v9 == 259)
  {
    v15 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v10, 259, self->_locale);
    objc_msgSend_numberDoubleValue(self, v123, v124, v125);
    v21 = objc_msgSend_stringFromDouble_locale_(v15, v126, self->_locale, v127);
    goto LABEL_34;
  }

  if (v9 != 267 && v9 != 270)
  {
    goto LABEL_39;
  }

  v15 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v10, 256, self->_locale);
  objc_msgSend_numberDoubleValue(self, v16, v17, v18);
  v21 = objc_msgSend_stringFromDouble_locale_(v15, v19, self->_locale, v20);
LABEL_34:
  v90 = v21;
LABEL_44:

LABEL_45:

  return v90;
}

- (NSString)stringForDisplayWithoutColor
{
  if (objc_msgSend_currentFormatNegativeStyle(self, a2, v2, v3) == 1)
  {
    objc_msgSend_stringForEditing(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend_formattedValue(self, v5, v6, v7);
  }
  v8 = ;

  return v8;
}

- (NSString)stringForUnderlyingValue
{
  if (self->_valueType)
  {
    if (self->_valueType == 2 && ((v5 = objc_msgSend_formatType(self, a2, v2, v3), v5 == 258) || v5 == 269 || v5 == 262))
    {
      v7 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], a2, 256, self->_locale);
      objc_msgSend_numberDoubleValue(self, v8, v9, v10);
      v6 = objc_msgSend_stringFromDouble_locale_(v7, v11, self->_locale, v12);
    }

    else
    {
      v6 = objc_msgSend_stringForEditing(self, a2, v2, v3);
    }
  }

  else
  {
    v6 = &stru_2834BADA0;
  }

  return v6;
}

- (TSWPStorage)richTextStorageForLayout
{
  if (self->_valueType == 9)
  {
    v104 = objc_msgSend_richTextValue(self, a2, v2, v3);
    if (objc_msgSend_formatType(self, v5, v6, v7) == 271)
    {
      v11 = objc_msgSend_currentFormat(self, v8, v9, v10);
      v15 = objc_msgSend_asCustomFormatWrapper(v11, v12, v13, v14);
      v19 = objc_msgSend_defaultCustomFormatData(v15, v16, v17, v18);
      v23 = objc_msgSend_formatString(v19, v20, v21, v22);
      v26 = objc_msgSend_storageByApplyingCustomFormat_(v104, v24, v23, v25);

      v27 = v26;
    }

    else
    {
      v27 = v104;
    }

    conditionalStyleAppliedRule = self->_conditionalStyleAppliedRule;
    hasConditionalStyle = objc_msgSend_hasConditionalStyle(self, v8, v9, v10);
    if (conditionalStyleAppliedRule == 15)
    {
      v33 = 0;
    }

    else
    {
      v33 = hasConditionalStyle;
    }

    if (v33 == 1)
    {
      v105 = v27;
      v34 = objc_msgSend_context(v27, v30, v31, v32);
      v27 = objc_msgSend_copyWithContext_(v27, v35, v34, v36);

      v103 = self->_conditionalStyle;
      v39 = objc_msgSend_ruleAtIndex_(v103, v37, conditionalStyleAppliedRule, v38);
      v43 = objc_msgSend_textStyle(v39, v40, v41, v42);

      if (v43)
      {
        v50 = objc_msgSend_propertyMap(v43, v44, v45, v46);
        v51 = 0;
        v108 = 0;
        v109 = 0;
        while (v51 < objc_msgSend_length(v27, v47, v48, v49))
        {
          v55 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v27, v52, v51, &v108);
          v59 = objc_msgSend_copyPropertyMap(v55, v56, v57, v58);
          objc_msgSend_addValuesFromPropertyMap_(v59, v60, v50, v61);
          v62 = objc_alloc(MEMORY[0x277D80EC8]);
          v66 = objc_msgSend_context(v43, v63, v64, v65);
          isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v62, v67, v66, 0, v59, 0);

          if (isVariation)
          {
            objc_msgSend_setParagraphStyle_forCharRange_undoTransaction_(v27, v69, isVariation, v108, v109, 0);
          }

          v51 = v109 + v108;
        }

        if (objc_msgSend_characterStyleAttributeCount(v27, v52, v53, v54))
        {
          v73 = objc_msgSend_characterCount(v27, v70, v71, v72);
          v77 = objc_msgSend_copy(v50, v74, v75, v76);
          v81 = objc_msgSend_properties(MEMORY[0x277D80DB0], v78, v79, v80);
          objc_msgSend_filterWithProperties_(v77, v82, v81, v83);

          if (v73)
          {
            v85 = 0;
            do
            {
              v106 = v85;
              v107 = v73 - v85;
              v86 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(v27, v84, v85, &v106);
              v90 = v86;
              if (v86)
              {
                v91 = objc_msgSend_copyPropertyMap(v86, v87, v88, v89);
                objc_msgSend_addValuesFromPropertyMap_(v91, v92, v77, v93);
                v94 = objc_alloc(MEMORY[0x277D80DB0]);
                v98 = objc_msgSend_context(v43, v95, v96, v97);
                v100 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v94, v99, v98, 0, v91, 0);

                if (v100)
                {
                  objc_msgSend_setCharacterStyle_range_undoTransaction_(v27, v101, v100, v106, v107, 0);
                }
              }

              v85 += v107;
            }

            while (v85 < v73);
          }
        }
      }
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)bakeFormulaToValue
{
  if ((objc_msgSend_hasFormula(self, a2, v2, v3) & 1) == 0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTCell bakeFormulaToValue]", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 1528, 0, "can't bake non-formula cells");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  objc_msgSend_setFormulaObject_(self, v5, 0, v6);
  if (self->_valueType == 8)
  {
    objc_msgSend_setFormulaSyntaxError_(self, v16, 0, v18);
    self->_valueType = 0;
  }

  if (objc_msgSend_hasValueOrError(self, v16, v17, v18) && objc_msgSend_formatType(self, v19, v20, v21) == 267)
  {

    objc_msgSend_clearFormatOfType_(self, v22, 267, v23);
  }
}

- (BOOL)hasValueOrCommentBreakingMergeFragment
{
  if (objc_msgSend_hasCommentStorage(self, a2, v2, v3))
  {
    return 1;
  }

  v9 = objc_msgSend_formulaObject(self, v5, v6, v7);
  if ((objc_msgSend_isSpillFormula(v9, v10, v11, v12) & 1) == 0)
  {
    if (objc_msgSend_hasCellSpec(self, v13, v14, v15))
    {
    }

    else
    {
      hasValueOrError = objc_msgSend_hasValueOrError(self, v16, v17, v18);

      if ((hasValueOrError & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

- (BOOL)valueRepresentsDateWithoutTime
{
  if (self->_valueType != 5)
  {
    return 0;
  }

  v3 = objc_alloc(MEMORY[0x277CBEA80]);
  v6 = objc_msgSend_initWithCalendarIdentifier_(v3, v4, *MEMORY[0x277CBE5C0], v5);
  v10 = objc_msgSend_gregorianCalendarLocale(self->_locale, v7, v8, v9);
  objc_msgSend_setLocale_(v6, v11, v10, v12);

  v13 = TSUGetGMTTimeZone();
  objc_msgSend_setTimeZone_(v6, v14, v13, v15);

  v19 = objc_msgSend_dateValue(self, v16, v17, v18);
  v22 = objc_msgSend_startOfDayForDate_(v6, v20, v19, v21);

  v26 = objc_msgSend_dateFormat(self, v23, v24, v25);
  v30 = objc_msgSend_asDateTimeFormat(v26, v27, v28, v29);

  v34 = objc_msgSend_dateValue(self, v31, v32, v33);
  if (objc_msgSend_isEqualToDate_(v34, v35, v22, v36))
  {
    v40 = objc_msgSend_formatStringContainsOnlyDate(v30, v37, v38, v39);
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

- (BOOL)dataIsReplaceable
{
  if ((objc_msgSend_hasFormula(self, a2, v2, v3) & 1) != 0 || objc_msgSend_interactionType(self, v5, v6, v7) == 7 || objc_msgSend_formatType(self, v8, v9, v10) == 267)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    valueType = self->_valueType;
    v14 = valueType > 0xA;
    v11 = 0x6ECu >> valueType;
    if (v14)
    {
      LOBYTE(v11) = 0;
    }
  }

  return v11 & 1;
}

- (BOOL)hasEqualValueToCell:(id)cell
{
  cellCopy = cell;
  v8 = cellCopy;
  if (!cellCopy || (valueType = self->_valueType, valueType != objc_msgSend_valueType(cellCopy, v5, v6, v7)))
  {
    v14 = 0;
    goto LABEL_8;
  }

  v13 = self->_valueType;
  v14 = 1;
  if (v13 <= 5)
  {
    switch(v13)
    {
      case 2u:
        goto LABEL_15;
      case 3u:
        v16 = objc_msgSend_stringValue(self, v10, v11, v12);
        v20 = objc_msgSend_stringValue(v8, v42, v43, v44);
        isEqualToString = objc_msgSend_isEqualToString_(v16, v45, v20, v46);
        break;
      case 5u:
        v16 = objc_msgSend_dateValue(self, v10, v11, v12);
        v20 = objc_msgSend_dateValue(v8, v17, v18, v19);
        isEqualToString = objc_msgSend_isEqualToDate_(v16, v21, v20, v22);
        break;
      default:
        goto LABEL_8;
    }

    goto LABEL_20;
  }

  if (self->_valueType > 8u)
  {
    if (v13 != 9)
    {
      if (v13 != 10)
      {
        goto LABEL_8;
      }

LABEL_15:
      v14 = TSUDecimal::operator==();
      goto LABEL_8;
    }

    v16 = objc_msgSend_richTextValue(self, v10, v11, v12);
    v20 = objc_msgSend_richTextValue(v8, v37, v38, v39);
    isEqualToString = objc_msgSend_isEqual_(v16, v40, v20, v41);
LABEL_20:
    v14 = isEqualToString;
    goto LABEL_21;
  }

  if (v13 - 6 >= 2)
  {
    if (v13 != 8)
    {
      goto LABEL_8;
    }

    v16 = objc_msgSend_formulaSyntaxError(self, v10, v11, v12);
    v20 = objc_msgSend_stringWithFormulaPlainText(v16, v24, v25, v26);
    v30 = objc_msgSend_formulaSyntaxError(v8, v27, v28, v29);
    v34 = objc_msgSend_stringWithFormulaPlainText(v30, v31, v32, v33);
    v14 = objc_msgSend_isEqualToString_(v20, v35, v34, v36);

LABEL_21:
    goto LABEL_8;
  }

  v14 = self->_valueDouble == v8[4];
LABEL_8:

  return v14;
}

- (TSTCellStyle)cellStyle
{
  cellStyleHandle = self->_cellStyleHandle;
  if (cellStyleHandle)
  {
    v6 = objc_msgSend_cellStyle(cellStyleHandle, a2, v2, v3);
  }

  else
  {
    v6 = self->_strongCellStyle;
  }

  return v6;
}

- (void)setCellStyle:(id)style clearingID:(BOOL)d
{
  dCopy = d;
  styleCopy = style;
  if (*&self->_cellStyleHandle != __PAIR128__(styleCopy, 0))
  {
    v9 = styleCopy;
    objc_storeStrong(&self->_strongCellStyle, style);
    cellStyleHandle = self->_cellStyleHandle;
    self->_cellStyleHandle = 0;

    styleCopy = v9;
    if (!v9 || dCopy)
    {
      self->_cellStyleID = 0;
    }
  }
}

- (void)setCellStyleHandle:(id)handle clearingID:(BOOL)d
{
  dCopy = d;
  handleCopy = handle;
  if (*&self->_cellStyleHandle != handleCopy)
  {
    v9 = handleCopy;
    objc_storeStrong(&self->_cellStyleHandle, handle);
    strongCellStyle = self->_strongCellStyle;
    self->_strongCellStyle = 0;

    handleCopy = v9;
    if (!v9 || dCopy)
    {
      self->_cellStyleID = 0;
    }
  }
}

- (TSWPParagraphStyle)textStyle
{
  textStyleHandle = self->_textStyleHandle;
  if (textStyleHandle)
  {
    v6 = objc_msgSend_textStyle(textStyleHandle, a2, v2, v3);
  }

  else
  {
    v6 = self->_strongTextStyle;
  }

  return v6;
}

- (void)setTextStyle:(id)style clearingID:(BOOL)d
{
  dCopy = d;
  styleCopy = style;
  if (*&self->_textStyleHandle != __PAIR128__(styleCopy, 0))
  {
    v9 = styleCopy;
    objc_storeStrong(&self->_strongTextStyle, style);
    textStyleHandle = self->_textStyleHandle;
    self->_textStyleHandle = 0;

    styleCopy = v9;
    if (!v9 || dCopy)
    {
      self->_textStyleID = 0;
    }
  }
}

- (void)setTextStyleHandle:(id)handle clearingID:(BOOL)d
{
  dCopy = d;
  handleCopy = handle;
  if (*&self->_textStyleHandle != handleCopy)
  {
    v9 = handleCopy;
    objc_storeStrong(&self->_textStyleHandle, handle);
    strongTextStyle = self->_strongTextStyle;
    self->_strongTextStyle = 0;

    handleCopy = v9;
    if (!v9 || dCopy)
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
    if (self->_textStyleHandle)
    {
      v7 = objc_msgSend_textStyle(self->_textStyleHandle, a2, v2, v3);
    }

    else
    {
      v7 = self->_strongTextStyle;
    }

    v6 = v7;
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
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTCell setConditionalStyle:clearingID:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v13);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v11, v14, 1762, 0, "expected conditional style got %{public}@", v16);

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

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper supportsInlineAttachments:(BOOL)attachments
{
  stylesheetCopy = stylesheet;
  mapperCopy = mapper;
  if (self->_cellStyleHandle)
  {
    objc_opt_class();
    v16 = objc_msgSend_cellStyle(self->_cellStyleHandle, v13, v14, v15);
    v19 = objc_msgSend_mappedStyleForStyle_(mapperCopy, v17, v16, v18);
    v20 = TSUDynamicCast();

    if (v20)
    {
      v23 = objc_msgSend_handleForCellStyle_(TSTCellStyleHandle, v21, v20, v22);
    }

    else
    {
      v23 = 0;
    }

    cellStyleHandle = self->_cellStyleHandle;
    self->_cellStyleHandle = v23;
  }

  else
  {
    if (!self->_strongCellStyle)
    {
      goto LABEL_12;
    }

    objc_opt_class();
    v26 = objc_msgSend_mappedStyleForStyle_(mapperCopy, v24, self->_strongCellStyle, v25);
    v20 = TSUDynamicCast();

    if (v20)
    {
      v27 = v20;
    }

    else
    {
      v27 = 0;
    }

    cellStyleHandle = self->_strongCellStyle;
    self->_strongCellStyle = v27;
  }

LABEL_12:
  if (self->_textStyleHandle)
  {
    objc_opt_class();
    v32 = objc_msgSend_textStyle(self->_textStyleHandle, v29, v30, v31);
    v35 = objc_msgSend_mappedStyleForStyle_(mapperCopy, v33, v32, v34);
    v36 = TSUDynamicCast();

    if (v36)
    {
      v39 = objc_msgSend_handleForTextStyle_(TSTTextStyleHandle, v37, v36, v38);
    }

    else
    {
      v39 = 0;
    }

    textStyleHandle = self->_textStyleHandle;
    self->_textStyleHandle = v39;
  }

  else
  {
    if (!self->_strongTextStyle)
    {
      goto LABEL_23;
    }

    objc_opt_class();
    v42 = objc_msgSend_mappedStyleForStyle_(mapperCopy, v40, self->_strongTextStyle, v41);
    v36 = TSUDynamicCast();

    if (v36)
    {
      v43 = v36;
    }

    else
    {
      v43 = 0;
    }

    textStyleHandle = self->_strongTextStyle;
    self->_strongTextStyle = v43;
  }

LABEL_23:
  if (objc_msgSend_hasFormulaSyntaxError(self, v9, v10, v11))
  {
    v48 = objc_msgSend_formulaSyntaxError(self, v45, v46, v47);
    v52 = objc_msgSend_context(v48, v49, v50, v51);
    v54 = objc_msgSend_i_copyIntoContext_stylesheet_(v48, v53, v52, stylesheetCopy);

    objc_msgSend_setFormulaSyntaxError_(self, v55, v54, v56);
  }

  if (objc_msgSend_hasRichText(self, v45, v46, v47))
  {
    v60 = objc_msgSend_richTextValue(self, v57, v58, v59);
    objc_msgSend_adoptStylesheet_withMapper_(v60, v61, stylesheetCopy, mapperCopy);
    if (!attachments && objc_msgSend_attachmentCount(v60, v62, v63, v64))
    {
      v66 = objc_msgSend_range(v60, v62, v65, v64);
      v68 = v67;
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = sub_22168F4B4;
      v70[3] = &unk_278468148;
      v71 = v60;
      objc_msgSend_enumerateAttachmentsInTextRange_usingBlock_(v71, v69, v66, v68, v70);
    }

    objc_msgSend_setRichTextValue_(self, v62, v60, v64);
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
  cellStyleHandle = self->_cellStyleHandle;
  if (cellStyleHandle)
  {
    objc_msgSend_setCellStyleHandle_clearingID_(cellCopy, v6, cellStyleHandle, 0);
  }

  else
  {
    objc_msgSend_setCellStyle_clearingID_(cellCopy, v6, self->_strongCellStyle, 0);
  }

  objc_msgSend_setCellStyleID_(cellCopy, v8, self->_cellStyleID, v9);
  textStyleHandle = self->_textStyleHandle;
  if (textStyleHandle)
  {
    objc_msgSend_setTextStyleHandle_clearingID_(cellCopy, v10, textStyleHandle, 0);
  }

  else
  {
    objc_msgSend_setTextStyle_clearingID_(cellCopy, v10, self->_strongTextStyle, 0);
  }

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

    return v7;
  }

  if (self->_textStyleHandle)
  {
    textStyleHandle = self->_textStyleHandle;

    return objc_msgSend_direction(textStyleHandle, a2, v2, v3);
  }

  else
  {
    strongTextStyle = self->_strongTextStyle;
    if (!strongTextStyle)
    {
      return -1;
    }

    return objc_msgSend_intValueForProperty_(strongTextStyle, a2, 44, v3);
  }
}

- (TSDFill)cellFill
{
  cellStyleHandle = self->_cellStyleHandle;
  if (cellStyleHandle)
  {
    v6 = objc_msgSend_cellStyle(cellStyleHandle, a2, v2, v3);
  }

  else
  {
    v6 = self->_strongCellStyle;
  }

  v9 = v6;
  v10 = objc_msgSend_valueForProperty_(v6, v7, 898, v8);

  return v10;
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
  if ((self->_formulaID || self->_controlCellSpecID) && !self->_cellSpec)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCell interactionType]", v3);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 1957, 0, "Cell must be inflated to determine interaction type");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  cellSpec = self->_cellSpec;
  if (!cellSpec)
  {
    return self->_valueType == 8;
  }

  return objc_msgSend_interactionType(cellSpec, a2, v2, v3);
}

- (TSCEFormulaObject)formulaObject
{
  v4 = objc_msgSend_asFormulaSpec(self->_cellSpec, a2, v2, v3);
  v8 = objc_msgSend_formulaObject(v4, v5, v6, v7);

  return v8;
}

- (void)setCellSpec:(id)spec clearingID:(BOOL)d
{
  dCopy = d;
  specCopy = spec;
  if (specCopy && objc_msgSend_interactionType(specCopy, v7, v8, v9))
  {
    if (self->_cellSpec != specCopy)
    {
      objc_storeStrong(&self->_cellSpec, spec);
      if (dCopy)
      {
        *&self->_formulaID = 0;
        self->_cellFlags &= ~0x200u;
      }
    }
  }

  else
  {
    cellSpec = self->_cellSpec;
    self->_cellSpec = 0;

    *&self->_formulaID = 0;
    objc_msgSend_p_setFormatFlags_explicit_(self, v11, 0x8000, 0);
    self->_cellFlags &= ~0x200u;
    if (objc_msgSend_hasFormulaEvaluationError(self, v12, v13, v14))
    {
      objc_msgSend_clearValue(self, v15, v16, v17);
    }
  }
}

- (void)setFormulaObject:(id)object clearingID:(BOOL)d
{
  dCopy = d;
  objectCopy = object;
  if (objectCopy)
  {
    v9 = objc_msgSend_cellSpec(self, v6, v7, v8);
    v13 = objc_msgSend_asFormulaSpec(v9, v10, v11, v12);

    if (v13)
    {
      v17 = objc_msgSend_locale(self, v14, v15, v16);
      v19 = objc_msgSend_cellSpecReplacingFormulaObject_locale_(v13, v18, objectCopy, v17);
    }

    else
    {
      v22 = [TSTCellFormulaSpec alloc];
      v17 = objc_msgSend_locale(self, v23, v24, v25);
      v19 = objc_msgSend_initWithFormulaObject_locale_(v22, v26, objectCopy, v17);
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

- (BOOL)hasFormula
{
  if (self->_formulaID)
  {
    return 1;
  }

  else
  {
    return objc_msgSend_hasTSCEFormula(self->_cellSpec, a2, v2, v3);
  }
}

- (BOOL)hasEditableFormula
{
  if (objc_msgSend_hasFormula(self, a2, v2, v3))
  {
    v8 = objc_msgSend_formulaObject(self, v5, v6, v7);
    v12 = objc_msgSend_isSpillFormula(v8, v9, v10, v11) ^ 1;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (BOOL)hasStockFormulaForStockUI
{
  if (self->_formulaID && !self->_cellSpec)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCell hasStockFormulaForStockUI]", v3);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 2062, 0, "Cell must be inflated to ask if it contains a stock formula");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  if (objc_msgSend_interactionType(self->_cellSpec, a2, v2, v3) != 2)
  {
    return 0;
  }

  v17 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v14, v15, v16);
  v21 = objc_msgSend_supportsStockUI(v17, v18, v19, v20);

  return v21;
}

- (TSTStockDetails)stockDetails
{
  v4 = objc_msgSend_asFormulaSpec(self->_cellSpec, a2, v2, v3);
  v8 = objc_msgSend_stockDetails(v4, v5, v6, v7);

  return v8;
}

- (unint64_t)popupChoiceIndex
{
  v5 = objc_msgSend_cellSpec(self, a2, v2, v3);
  v9 = objc_msgSend_asChooserControlSpec(v5, v6, v7, v8);

  if (v9)
  {
    v13 = objc_msgSend_locale(self, v10, v11, v12);
    v15 = objc_msgSend_cellValueFromCell_locale_(TSTPopUpMenuModel, v14, self, v13);

    Item = objc_msgSend_indexForValue_(v9, v16, v15, v17);
    if (Item == 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = objc_msgSend_displayChoicesForInspector(v9, v18, v19, v20);
      v26 = objc_msgSend_formattedValue(self, v23, v24, v25);
      v29 = objc_msgSend_indexOfObject_(v22, v27, v26, v28);

      if (v29 == 0x7FFFFFFFFFFFFFFFLL)
      {
        Item = objc_msgSend_startWithFirstItem(v9, v30, v31, v32);
      }

      else
      {
        Item = v29 + 1;
      }
    }
  }

  else
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCell popupChoiceIndex]", v12);
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v36);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v38, v34, v37, 2091, 0, "Not a popup cell.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41);
    Item = 0x7FFFFFFFFFFFFFFFLL;
  }

  return Item;
}

- (void)applyPopupChoiceIndex:(unint64_t)index
{
  v6 = objc_msgSend_cellSpec(self, a2, index, v3);
  v85 = objc_msgSend_asChooserControlSpec(v6, v7, v8, v9);

  if (!v85 || (objc_msgSend_popupModel(v85, v10, v11, v12), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend_choices(v13, v14, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend_count(v17, v18, v19, v20), v17, v13, v21 <= index))
  {
    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCell applyPopupChoiceIndex:]", v12);
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v43);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v45, v41, v44, 2144, 0, "Cannot apply popup choice");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48);
    goto LABEL_27;
  }

  objc_msgSend_clearValue(self, v10, v22, v12);
  v25 = objc_msgSend_valueForIndex_(v85, v23, index, v24);
  v29 = objc_msgSend_tsceValue(v25, v26, v27, v28);
  v36 = objc_msgSend_nativeType(v29, v30, v31, v32);
  if (v36 > 2)
  {
    switch(v36)
    {
      case 3u:
        v37 = objc_msgSend_date(v29, v33, v34, v35);
        objc_msgSend_setDateValue_(self, v55, v37, v56);
        goto LABEL_24;
      case 5u:
        v37 = objc_msgSend_number(v29, v33, v34, v35);
        if (objc_msgSend_hasUnits(v37, v57, v58, v59) && !objc_msgSend_dimension(v37, v60, v61, v62))
        {
          objc_msgSend_rawTimeIntervalValue(v37, v60, v61, v62);
          if (v82 == 0.0)
          {
            v82 = 0.0;
          }

          objc_msgSend_setDurationTimeIntervalValue_(self, v79, v80, v81, v82);
        }

        else if (objc_msgSend_hasUnits(v37, v60, v61, v62) && objc_msgSend_dimension(v37, v63, v64, v65) == 4)
        {
          v66 = objc_msgSend_decimalRepresentation(v37, v63, v64, v65);
          objc_msgSend_setCurrencyDecimalValue_(self, v67, v66, v67);
        }

        else
        {
          v77 = objc_msgSend_decimalRepresentation(v37, v63, v64, v65);
          objc_msgSend_setNumberDecimalValue_(self, v78, v77, v78);
        }

        goto LABEL_24;
      case 7u:
        v37 = objc_msgSend_asRawString(v29, v33, v34, v35);
        objc_msgSend_setStringValue_(self, v38, v37, v39);
LABEL_24:

        goto LABEL_25;
    }

    goto LABEL_19;
  }

  if (v36)
  {
    if (v36 == 2)
    {
      v49 = objc_msgSend_BOOLean(v29, v33, v34, v35);
      objc_msgSend_setBoolValue_(self, v50, v49, v51);
LABEL_25:
      v83 = objc_msgSend_format(v25, v52, v53, v54);
      objc_msgSend_setCurrentFormat_isExplicit_(self, v84, v83, 1);

      goto LABEL_26;
    }

LABEL_19:
    v68 = MEMORY[0x277D81150];
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSTCell applyPopupChoiceIndex:]", v35);
    v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v71);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v73, v69, v72, 2137, 0, "Unexpected argument type for popup TSCECellValue.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76);
    goto LABEL_25;
  }

  objc_msgSend_setCurrentFormat_isExplicit_(self, v33, 0, 0);
LABEL_26:

LABEL_27:
}

- (void)applyFormulaResult:(id)result context:(id)context hasWarnings:(BOOL)warnings outWriteDidBeginOrEndWithTextCell:(BOOL *)cell propagateCheckboxes:(BOOL)checkboxes
{
  resultCopy = result;
  contextCopy = context;
  if (objc_msgSend_nativeType(resultCopy, v13, v14, v15) == 9)
  {
    v19 = objc_msgSend_asErrorValue(resultCopy, v16, v17, v18);
    v23 = objc_msgSend_error(v19, v20, v21, v22);

    if (objc_msgSend_isNotReadyError(v23, v24, v25, v26))
    {
      v29 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v27, @" %C ", v28, 8230);
      v32 = objc_msgSend_stringValue_(TSCEStringValue, v30, v29, v31);

      resultCopy = v32;
    }
  }

  IsText = objc_msgSend_valueIsText(self, v16, v17, v18);
  if (cell)
  {
    *cell = IsText;
  }

  objc_msgSend_clearValue(self, v34, v35, v36);
  objc_msgSend_p_setFormatFlags_explicit_(self, v37, 0x8000, 0);
  if (resultCopy)
  {
    objc_msgSend_format(resultCopy, v38, v39, v40);
    formatType = v334._formatType;
    objc_msgSend_format(resultCopy, v42, v43, v44);
    formatState = v334._formatState;
    objc_msgSend_format(resultCopy, v46, v47, v48);
  }

  else
  {
    formatState = 0;
    formatType = 0;
    memset(&v334, 0, sizeof(v334));
  }

  v52 = TSCEFormat::tskFormat(&v334, v38, v39, v40);
  if (v52)
  {
    v53 = formatState == 1;
  }

  else
  {
    v53 = 0;
  }

  v54 = v53;
  v329 = v54;
  v58 = objc_msgSend_nativeType(resultCopy, v49, v50, v51);
  if (v58 <= 6)
  {
    if (v58 <= 2)
    {
      if (!v58)
      {
        goto LABEL_30;
      }

      if (v58 == 2)
      {
        v74 = objc_msgSend_BOOLean(resultCopy, v55, v56, v57);
        objc_msgSend_setBoolValue_(self, v75, v74, v76);
        if (objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v77, 1, 1))
        {
          goto LABEL_153;
        }

        if (formatType != 1 && (formatType != 263 || !checkboxes))
        {
          v105 = objc_msgSend_BOOLeanFormat(MEMORY[0x277D80680], v55, v56, v57);
          objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v151, v105, 0);
          goto LABEL_107;
        }

LABEL_54:
        v105 = v52;
        objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v106, v105, v329);
LABEL_107:

        goto LABEL_153;
      }

      goto LABEL_57;
    }

    if (v58 == 3)
    {
      v101 = objc_msgSend_date(resultCopy, v55, v56, v57);
      objc_msgSend_setDateValue_(self, v102, v101, v103);

      if (objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v104, 261, 1))
      {
        goto LABEL_153;
      }

      if (formatType != 261 && formatType != 272)
      {
        v105 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v55, 261, self->_locale);
        objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v223, v105, 0);
        goto LABEL_107;
      }

      goto LABEL_54;
    }

    if (v58 != 5)
    {
LABEL_57:
      v107 = MEMORY[0x277D81150];
      v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "[TSTCell applyFormulaResult:context:hasWarnings:outWriteDidBeginOrEndWithTextCell:propagateCheckboxes:]", v57);
      v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v109, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v110);
      v115 = objc_msgSend_nativeType(resultCopy, v112, v113, v114);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v107, v116, v108, v111, 2516, 0, "unhandled formula result type found: %d", v115);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v117, v118, v119);
      goto LABEL_153;
    }

    v83 = objc_msgSend_number(resultCopy, v55, v56, v57);
    if (objc_msgSend_hasUnits(v83, v84, v85, v86) && !objc_msgSend_dimension(v83, v87, v88, v89))
    {
      objc_msgSend_rawTimeIntervalValue(v83, v87, v88, v89);
      if (v185 == 0.0)
      {
        objc_msgSend_setDurationTimeIntervalValue_(self, v182, v183, v184, 0.0);
      }

      else
      {
        objc_msgSend_setDurationTimeIntervalValue_(self, v182, v183, v184, v185);
      }

      if (objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v186, 268, 1))
      {
        goto LABEL_152;
      }

      if (formatType == 268)
      {
        v190 = objc_msgSend_asDurationFormat(v52, v187, v188, v189);
        v194 = objc_msgSend_durationUnitLargest(v190, v191, v192, v193);
        v198 = objc_msgSend_unit(v83, v195, v196, v197);
        if (v194 == sub_221387CBC(v198))
        {
          v173 = v190;
        }

        else
        {
          v327 = objc_alloc(MEMORY[0x277D80678]);
          v277 = objc_msgSend_useAutomaticUnits(v190, v274, v275, v276);
          v281 = objc_msgSend_durationUnitSmallest(v190, v278, v279, v280);
          v285 = objc_msgSend_unit(v83, v282, v283, v284);
          v286 = sub_221387CBC(v285);
          v290 = objc_msgSend_durationStyle(v190, v287, v288, v289);
          v292 = objc_msgSend_initWithUseAutomaticUnits_durationUnitSmallest_durationUnitLargest_durationStyle_(v327, v291, v277, v281, v286, v290);

          v173 = v292;
        }

LABEL_143:
        objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v199, v173, v329);
        goto LABEL_151;
      }

      v266 = objc_msgSend_unit(v83, v187, v188, v189);
      v267 = sub_221387CBC(v266);
      TSUDurationFormatterDurationUnitsNecessaryToFullyDisplayDuration();
      v268 = TSUDurationFormatterMinDurationUnitInUnits();
      v269 = objc_alloc(MEMORY[0x277D80678]);
      v173 = objc_msgSend_initWithUseAutomaticUnits_durationUnitSmallest_durationUnitLargest_durationStyle_(v269, v270, 0, v268, v267, 1);
      objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v271, v173, 0);
    }

    else
    {
      v334._tskFormat = objc_msgSend_decimalRepresentation(v83, v87, v88, v89);
      *&v334._formatType = v90;
      if (TSUDecimal::isZero(&v334) && TSUDecimal::isNegative(&v334))
      {
        TSUDecimal::operator=();
      }

      objc_msgSend_setNumberDecimalValue_(self, v91, v334._tskFormat, *&v334._formatType);
      hasExplicitFormatOfType_allowMismatchedSpare = objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v92, 257, 1);
      if (objc_msgSend_currencyIsMostRecentlySet(self, v94, v95, v96))
      {
        if (hasExplicitFormatOfType_allowMismatchedSpare)
        {
          objc_msgSend_setCurrencyDecimalValue_(self, v97, v334._tskFormat, *&v334._formatType);
          v100 = 176;
LABEL_64:
          objc_msgSend_setCurrentFormat_isExplicit_(self, v97, *(&self->super.isa + v100), 1);
LABEL_152:

          goto LABEL_153;
        }
      }

      else if (objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v97, 256, 1))
      {
        v100 = 168;
        goto LABEL_64;
      }

      isUnitlessZero = objc_msgSend_isUnitlessZero(v83, v97, v98, v99);
      if (formatType == 257)
      {
        v130 = isUnitlessZero;
      }

      else
      {
        v130 = 0;
      }

      if (v130 == 1)
      {
        objc_msgSend_setCurrencyDecimalValue_(self, v127, v334._tskFormat, *&v334._formatType);
LABEL_70:
        objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v131, v52, v329);
        goto LABEL_152;
      }

      if (objc_msgSend_hasUnits(v83, v127, v128, v129) && objc_msgSend_dimension(v83, v131, v162, v163) == 4)
      {
        objc_msgSend_setCurrencyDecimalValue_(self, v131, v334._tskFormat, *&v334._formatType);
        v167 = objc_msgSend_unit(v83, v164, v165, v166);
        v173 = objc_msgSend_currencyCodeForUnit_(TSCEUnitRegistry, v168, v167, v169);
        if (formatType != 257)
        {
          if (formatType == 274)
          {
            v174 = v52;
            objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v273, v174, v329);
          }

          else
          {
            v295 = objc_msgSend_defaultDecimalPlacesForCurrencyCode_(MEMORY[0x277D81228], v170, v173, v172);
            v296 = objc_alloc(MEMORY[0x277D80640]);
            v174 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v296, v297, v295, 0, 1, 0, v173);
            objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v298, v174, 0);
          }

          goto LABEL_150;
        }

        v174 = objc_msgSend_asCurrencyFormat(v52, v170, v171, v172);
        v181 = objc_msgSend_decimalPlaces(v174, v175, v176, v177);
        if ((v181 & 0xFFFFFFFFFFFFFFFELL) == 0xFE)
        {
          v181 = objc_msgSend_defaultDecimalPlacesForCurrencyCode_(MEMORY[0x277D81228], v178, v173, v180);
        }

        else
        {
          v299 = objc_msgSend_currencyCode(v174, v178, v179, v180);
          isEqual = objc_msgSend_isEqual_(v299, v300, v173, v301);

          if (isEqual)
          {
LABEL_149:
            objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v303, v174, v329);
LABEL_150:

            goto LABEL_151;
          }
        }

        v328 = objc_alloc(MEMORY[0x277D80640]);
        v307 = objc_msgSend_negativeStyle(v174, v304, v305, v306);
        v311 = objc_msgSend_showThousandsSeparator(v174, v308, v309, v310);
        v315 = objc_msgSend_accountingStyle(v174, v312, v313, v314);
        v317 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v328, v316, v181, v307, v311, v315, v173);

        v174 = v317;
        goto LABEL_149;
      }

      if (formatType <= 266)
      {
        if ((formatType - 258) >= 2 && formatType != 256)
        {
          if (formatType == 262)
          {
            goto LABEL_70;
          }

          goto LABEL_145;
        }

        v173 = objc_msgSend_asNumberFormat(v52, v131, v162, v163);
        if ((objc_msgSend_decimalPlaces(v173, v248, v249, v250) & 0xFFFFFFFFFFFFFFFELL) == 0xFE)
        {
          v251 = objc_alloc(MEMORY[0x277D806A0]);
          v255 = objc_msgSend_formatType(v173, v252, v253, v254);
          v259 = objc_msgSend_negativeStyle(v173, v256, v257, v258);
          v263 = objc_msgSend_showThousandsSeparator(v173, v260, v261, v262);
          v265 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v251, v264, v255, 253, v259, v263);

          v173 = v265;
        }

        goto LABEL_143;
      }

      if (formatType <= 269)
      {
        if (formatType == 267)
        {
          goto LABEL_70;
        }

        if (formatType == 269)
        {
          v173 = objc_msgSend_asBaseFormat(v52, v131, v162, v163);
          if (objc_msgSend_base(v173, v229, v230, v231) == 255 || objc_msgSend_basePlaces(v173, v199, v232, v233) == 255)
          {
            v234 = objc_msgSend_base(v173, v199, v232, v233);
            if (v234 == 255)
            {
              v238 = 10;
            }

            else
            {
              v238 = v234;
            }

            v239 = objc_msgSend_basePlaces(v173, v235, v236, v237);
            if (v239 == 255)
            {
              v240 = 0;
            }

            else
            {
              v240 = v239;
            }

            v241 = objc_alloc(MEMORY[0x277D80620]);
            v245 = objc_msgSend_baseUseMinusSign(v173, v242, v243, v244);
            v247 = objc_msgSend_initWithBase_basePlaces_baseUseMinusSign_(v241, v246, v238, v240, v245);

            v173 = v247;
          }

          goto LABEL_143;
        }

LABEL_145:
        v173 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v131, 256, self->_locale);
        objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v294, v173, 0);
        goto LABEL_151;
      }

      if (formatType == 270)
      {
        objc_opt_class();
        v173 = TSUDynamicCast();
        objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v293, v173, v329);
        goto LABEL_151;
      }

      if (formatType != 274)
      {
        goto LABEL_145;
      }

      objc_msgSend_setCurrencyDecimalValue_(self, v131, v334._tskFormat, *&v334._formatType);
      objc_opt_class();
      v173 = TSUDynamicCast();
      objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v272, v173, v329);
    }

LABEL_151:

    goto LABEL_152;
  }

  if (v58 <= 9)
  {
    if (v58 != 7)
    {
      if (v58 == 9)
      {
        self->_valueType = 8;
        goto LABEL_153;
      }

      goto LABEL_57;
    }

    if (resultCopy)
    {
      objc_msgSend_rawRichTextStorage(resultCopy, v55, v56, v57);
    }

    else
    {
      memset(&v334, 0, 24);
    }

    if (sub_221077388(&v334))
    {
      v135 = sub_2210771B0(&v334, v132, v133, v134);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v139 = objc_msgSend_context(v135, v136, v137, v138);
        v142 = objc_msgSend_copyPersistedWithContext_(v135, v140, v139, v141);
      }

      else
      {
        v139 = objc_msgSend_context(v135, v136, v137, v138);
        v142 = objc_msgSend_copyWithContext_(v135, v152, v139, v153);
      }

      v143 = v142;

      textStyleHandle = self->_textStyleHandle;
      if (textStyleHandle)
      {
        v158 = objc_msgSend_textStyle(textStyleHandle, v154, v155, v156);
      }

      else
      {
        v158 = self->_strongTextStyle;
      }

      v326 = v158;
      if (v158)
      {
        v200 = objc_msgSend_length(v143, v159, v160, v161);
        objc_msgSend_setParagraphStyle_forCharRange_undoTransaction_(v143, v201, v326, 0, v200, 0);
        objc_msgSend_setCharacterStyle_range_undoTransaction_(v143, v202, 0, 0, v200, 0);
        v325 = v200;
        v206 = objc_msgSend_documentRoot(contextCopy, v203, v204, v205);
        v210 = objc_msgSend_theme(v206, v207, v208, v209);
        v214 = objc_msgSend_hyperlinkStyle(v210, v211, v212, v213);

        v331[0] = MEMORY[0x277D85DD0];
        v331[1] = 3221225472;
        v331[2] = sub_221691578;
        v331[3] = &unk_278468170;
        v332 = v143;
        v333 = v214;
        v215 = v214;
        objc_msgSend_enumerateSmartFieldsWithAttributeKind_inRange_usingBlock_(v332, v216, 6, 0, v325, v331);
      }

      objc_msgSend_setRichTextValueWithoutPlaintextCollapse_(self, v159, v143, v161);
    }

    else
    {
      v143 = objc_msgSend_asRawString(resultCopy, v132, v133, v134);
      objc_msgSend_setStringValue_(self, v144, v143, v145);
    }

    if ((objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v217, 260, 1) & 1) == 0)
    {
      if (formatType == 271 || formatType == 260)
      {
        v221 = v52;
      }

      else
      {
        v221 = objc_msgSend_textFormat(MEMORY[0x277D80680], v218, v219, v220);
        v329 = 0;
      }

      v224 = v221;
      objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v222, v221, v329);
    }

    if (cell)
    {
      *cell = 1;
    }

    goto LABEL_153;
  }

  if (v58 != 10 && v58 != 12)
  {
    if (v58 == 19)
    {
      v59 = objc_msgSend_topLevelLambdaResultError(TSCEError, v55, v56, v57);
      v62 = objc_msgSend_errorValue_(TSCEErrorValue, v60, v59, v61);

      self->_valueType = 8;
      v63 = MEMORY[0x277D81150];
      v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "[TSTCell applyFormulaResult:context:hasWarnings:outWriteDidBeginOrEndWithTextCell:propagateCheckboxes:]", v65);
      v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v68);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v70, v66, v69, 2512, 0, "unhandled formula result type found: <Functor>");

      resultCopy = v62;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73);
      goto LABEL_153;
    }

    goto LABEL_57;
  }

LABEL_30:
  v78 = sub_22121E75C(formatType);
  v82 = v78;
  if (v78 > 4)
  {
    if (v78 == 5)
    {
      objc_msgSend_setStringValue_(self, v79, &stru_2834BADA0, v81);
      goto LABEL_153;
    }

    if (v78 != 6)
    {
      goto LABEL_58;
    }
  }

  else if (v78 != 3)
  {
    if (v78 == 4)
    {
      objc_msgSend_setDurationTimeIntervalValue_(self, v79, v80, v81, 0.0);
      goto LABEL_153;
    }

LABEL_58:
    if (objc_msgSend_currencyIsMostRecentlySet(self, v79, v80, v81))
    {
      if (objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v120, 257, 1))
      {
        objc_msgSend_setCurrencyDoubleValue_(self, v121, v122, v123, 0.0);
        v125 = 176;
LABEL_78:
        objc_msgSend_setCurrentFormat_isExplicit_(self, v124, *(&self->super.isa + v125), 1);
        goto LABEL_153;
      }
    }

    else if (objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v120, 256, 1))
    {
      objc_msgSend_setNumberDoubleValue_(self, v121, v146, v147, 0.0);
      v125 = 168;
      goto LABEL_78;
    }

    if (v52)
    {
      objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v121, v52, 0);
      if (v82 == 2)
      {
        objc_msgSend_setCurrencyDoubleValue_(self, v148, v149, v150, 0.0);
      }

      else
      {
        objc_msgSend_setNumberDoubleValue_(self, v148, v149, v150, 0.0);
      }

      goto LABEL_153;
    }

    v105 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v121, 256, self->_locale);
    objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v225, v105, 0);
    objc_msgSend_setNumberDoubleValue_(self, v226, v227, v228, 0.0);
    goto LABEL_107;
  }

  if ((objc_msgSend_currentFormatIsExplicit(self, v79, v80, v81) & 1) == 0)
  {
    objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v55, v52, 0);
  }

LABEL_153:
  if (warnings)
  {
    v318 = 512;
  }

  else
  {
    v319 = objc_msgSend_warnings(resultCopy, v55, v56, v57);
    v323 = objc_msgSend_count(v319, v320, v321, v322) != 0;

    v318 = v323 << 9;
  }

  self->_cellFlags = self->_cellFlags & 0xFDFF | v318;
  if (contextCopy)
  {
    v324 = objc_msgSend_objectLocale(contextCopy, v55, v56, v57);
    self->_locale = v324;
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

- (BOOL)hasControl
{
  if (self->_controlCellSpecID)
  {
    return 1;
  }

  else
  {
    return objc_msgSend_isControl(self->_cellSpec, a2, v2, v3);
  }
}

- (void)suggestCellFormatKind:(unsigned __int8)kind
{
  if ((self->_valueType | 8) == 8)
  {
    self->_cellFormatKind = kind;
  }
}

- (unsigned)formatType
{
  v4 = objc_msgSend_currentFormat(self, a2, v2, v3);

  return objc_msgSend_formatType(v4, v5, v6, v7);
}

- (id)p_formatOfCellFormatKind:(unsigned __int8)kind create:(BOOL)create returnFormat:(BOOL)format outCreated:(BOOL *)created
{
  formatCopy = format;
  durationFormat = 0;
  if (kind > 3)
  {
    switch(kind)
    {
      case 4u:
        durationFormat = self->_durationFormat;
        if (durationFormat)
        {
          v19 = 1;
        }

        else
        {
          v19 = !create;
        }

        if (v19)
        {
          goto LABEL_32;
        }

        v20 = MEMORY[0x277D80680];
        v11 = objc_msgSend_locale(self, a2, kind, create);
        v13 = objc_msgSend_defaultFormatWithFormatType_locale_(v20, v21, 268, v11);
        break;
      case 5u:
        durationFormat = self->_textFormat;
        if (durationFormat || !create)
        {
          goto LABEL_32;
        }

        v24 = MEMORY[0x277D80680];
        v11 = objc_msgSend_locale(self, a2, kind, create);
        v13 = objc_msgSend_defaultFormatWithFormatType_locale_(v24, v25, 260, v11);
        break;
      case 6u:
        durationFormat = self->_BOOLeanFormat;
        if (durationFormat || !create)
        {
          goto LABEL_32;
        }

        v14 = MEMORY[0x277D80680];
        v11 = objc_msgSend_locale(self, a2, kind, create);
        v13 = objc_msgSend_defaultFormatWithFormatType_locale_(v14, v15, 1, v11);
        break;
      default:
        goto LABEL_32;
    }
  }

  else
  {
    switch(kind)
    {
      case 1u:
        durationFormat = self->_numberFormat;
        if (durationFormat)
        {
          v16 = 1;
        }

        else
        {
          v16 = !create;
        }

        if (v16)
        {
          goto LABEL_32;
        }

        v17 = MEMORY[0x277D80680];
        v11 = objc_msgSend_locale(self, a2, kind, create);
        v13 = objc_msgSend_defaultFormatWithFormatType_locale_(v17, v18, 256, v11);
        break;
      case 2u:
        durationFormat = self->_currencyFormat;
        if (durationFormat || !create)
        {
          goto LABEL_32;
        }

        v22 = MEMORY[0x277D80680];
        v11 = objc_msgSend_locale(self, a2, kind, create);
        v13 = objc_msgSend_defaultFormatWithFormatType_locale_(v22, v23, 257, v11);
        break;
      case 3u:
        durationFormat = self->_dateFormat;
        if (durationFormat || !create)
        {
          goto LABEL_32;
        }

        v10 = MEMORY[0x277D80680];
        v11 = objc_msgSend_locale(self, a2, kind, create);
        v13 = objc_msgSend_defaultFormatWithFormatType_locale_(v10, v12, 261, v11);
        break;
      default:
        goto LABEL_32;
    }
  }

  durationFormat = v13;

  objc_msgSend_setFormat_isExplicit_(self, v26, durationFormat, 0);
  if (created)
  {
    *created = 1;
  }

LABEL_32:
  if (formatCopy)
  {
    v27 = durationFormat;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)setFormat:(id)format shouldSetExplFlags:(BOOL)flags isExplicit:(BOOL)explicit makeCurrent:(BOOL)current clearingID:(BOOL)d
{
  currentCopy = current;
  if (format)
  {
    explicitCopy = explicit;
  }

  else
  {
    explicitCopy = 0;
  }

  if (format)
  {
    dCopy = d;
  }

  else
  {
    dCopy = 1;
  }

  if (format)
  {
    flagsCopy = flags;
  }

  else
  {
    flagsCopy = 1;
  }

  v13 = objc_msgSend_formatType(format, a2, format, flags, explicit);
  v16 = sub_22121E75C(v13);
  if (currentCopy)
  {
    objc_msgSend_suggestCellFormatKind_(self, v14, v16, v15);
  }

  if (v16 > 3)
  {
    switch(v16)
    {
      case 4:
        self->_durationFormat = format;
        if (!dCopy)
        {
          break;
        }

        v17 = 92;
        goto LABEL_31;
      case 5:
        self->_textFormat = format;
        if (!dCopy)
        {
          break;
        }

        v17 = 96;
        goto LABEL_31;
      case 6:
        self->_BOOLeanFormat = format;
        if (dCopy)
        {
          v17 = 100;
          goto LABEL_31;
        }

        break;
    }
  }

  else
  {
    switch(v16)
    {
      case 1:
        self->_numberFormat = format;
        if (!dCopy)
        {
          break;
        }

        v17 = 80;
        goto LABEL_31;
      case 2:
        self->_currencyFormat = format;
        if (!dCopy)
        {
          break;
        }

        v17 = 84;
        goto LABEL_31;
      case 3:
        self->_dateFormat = format;
        if (dCopy)
        {
          v17 = 88;
LABEL_31:
          *(&self->super.isa + v17) = 0;
        }

        break;
    }
  }

  if (flagsCopy)
  {

    objc_msgSend_p_setFormatExplicit_fromCellFormatKind_setMostRecentlySet_(self, v14, explicitCopy, v16, 1);
  }
}

- (void)setCurrentFormat:(id)format isExplicit:(BOOL)explicit forExcel:(BOOL)excel
{
  if (excel)
  {
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, a2, format, 1, explicit, 1, 1);
  }

  else
  {
    objc_msgSend_setCurrentFormat_isExplicit_(self, a2, format, explicit);
  }
}

- (void)setCurrentFormat:(id)format isExplicit:(BOOL)explicit
{
  explicitCopy = explicit;
  formatCopy = format;
  v7 = objc_msgSend_asCustomFormatWrapper(format, a2, format, explicit);
  if (v7)
  {
    v11 = v7;
    v12 = objc_msgSend_asCustomFormatWrapper(formatCopy, v8, v9, v10);
    v15 = objc_msgSend__validateCustomFormatWrapper_(self, v13, v12, v14);

    if ((v15 & 1) == 0)
    {
      v18 = MEMORY[0x277D80680];
      v19 = objc_msgSend_asCustomFormatWrapper(formatCopy, v8, v16, v17);
      objc_msgSend_formatType(v19, v20, v21, v22);
      v23 = TSUDefaultRootFormatTypeForCustomFormatType();
      v27 = objc_msgSend_locale(self, v24, v25, v26);
      formatCopy = objc_msgSend_defaultFormatWithFormatType_locale_(v18, v28, v23, v27);

      explicitCopy = 0;
    }
  }

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v8, formatCopy, 1, explicitCopy, 1, 1);
}

- (void)setFormat:(id)format isExplicit:(BOOL)explicit
{
  explicitCopy = explicit;
  formatCopy = format;
  v7 = objc_msgSend_asCustomFormatWrapper(format, a2, format, explicit);
  if (v7)
  {
    v11 = v7;
    v12 = objc_msgSend_asCustomFormatWrapper(formatCopy, v8, v9, v10);
    v15 = objc_msgSend__validateCustomFormatWrapper_(self, v13, v12, v14);

    if ((v15 & 1) == 0)
    {
      v18 = MEMORY[0x277D80680];
      v19 = objc_msgSend_asCustomFormatWrapper(formatCopy, v8, v16, v17);
      objc_msgSend_formatType(v19, v20, v21, v22);
      v23 = TSUDefaultRootFormatTypeForCustomFormatType();
      v27 = objc_msgSend_locale(self, v24, v25, v26);
      formatCopy = objc_msgSend_defaultFormatWithFormatType_locale_(v18, v28, v23, v27);

      explicitCopy = 0;
    }
  }

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v8, formatCopy, 1, explicitCopy, 0, 1);
}

- (void)setCurrentFormat:(id)format flags:(unsigned __int16)flags
{
  flagsCopy = flags;
  v7 = objc_msgSend_formatType(format, a2, format, flags);
  v8 = 1;
  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v9, format, 0, 0, 1, 1);
  v12 = sub_22121E83C(v7) & flagsCopy;
  if (!v12)
  {
    if (objc_msgSend_p_formatTypeIsANumberFormatTypeForMostRecentlySet_(self, v10, v7, v11))
    {
      v13 = sub_22121E75C(v7);
      v8 = (flagsCopy & 0x800) == 0 || v13 == 2;
    }

    else
    {
      v8 = 0;
    }
  }

  v16 = sub_22121E75C(v7);

  objc_msgSend_p_setFormatExplicit_fromCellFormatKind_setMostRecentlySet_(self, v15, v12 != 0, v16, v8);
}

- (void)p_setFormatForFormulaResult:(id)result propagation:(BOOL)propagation
{
  propagationCopy = propagation;
  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, a2, result, 0, 0, 1, 1);
  v10 = objc_msgSend_formatType(result, v7, v8, v9);
  v11 = sub_22121E75C(v10);
  objc_msgSend_p_setFormatExplicit_fromCellFormatKind_setMostRecentlySet_(self, v12, 0, v11, 0);

  objc_msgSend_p_setFormatFlags_explicit_(self, v13, 0x8000, propagationCopy);
}

- (void)p_clearFormatOfCellFormatKind:(unsigned __int8)kind
{
  if (kind > 3)
  {
    switch(kind)
    {
      case 4u:
        v4 = -5;
        v5 = 192;
        v6 = 92;
        break;
      case 5u:
        v4 = -129;
        v5 = 200;
        v6 = 96;
        break;
      case 6u:
        v4 = -33;
        v5 = 208;
        v6 = 100;
        break;
      default:
        return;
    }

    goto LABEL_15;
  }

  if (kind == 1)
  {
    v4 = -2;
    v5 = 168;
    v6 = 80;
LABEL_15:
    *(&self->super.isa + v6) = 0;
    *(&self->super.isa + v5) = 0;
    p_explicitFormatFlags = &self->_explicitFormatFlags;
    goto LABEL_16;
  }

  if (kind != 2)
  {
    if (kind != 3)
    {
      return;
    }

    v4 = -9;
    v5 = 184;
    v6 = 88;
    goto LABEL_15;
  }

  self->_currencyFormatID = 0;
  self->_currencyFormat = 0;
  p_explicitFormatFlags = &self->_explicitFormatFlags;
  self->_explicitFormatFlags &= ~2u;
  if ((objc_msgSend_currencyIsMostRecentlySet(self, a2, kind, v3) & 1) == 0)
  {
    return;
  }

  v4 = -2049;
LABEL_16:
  *p_explicitFormatFlags &= v4;
}

- (void)clearFormatOfType:(unsigned int)type
{
  v5 = sub_22121E75C(type);

  objc_msgSend_p_clearFormatOfCellFormatKind_(self, v4, v5, v6);
}

- (BOOL)p_clearIfImplicitAndNotCurrentForKind:(unsigned __int8)kind format:(id)format explicitFormatMask:(unsigned __int16)mask
{
  if (!format)
  {
    return 0;
  }

  kindCopy = kind;
  if ((self->_explicitFormatFlags & mask) != 0 || self->_cellFormatKind == kind)
  {
    v7 = objc_msgSend_formatType(format, a2, kind, format);
    if (sub_22121E75C(v7) == kindCopy)
    {
      return 0;
    }
  }

  objc_msgSend_p_clearFormatOfCellFormatKind_(self, a2, kindCopy, format);
  v8 = 1;
  if (self->_cellFormatKind == kindCopy)
  {
    v10 = objc_msgSend_p_formatOfCellFormatKind_create_returnFormat_outCreated_(self, v9, kindCopy, 1, 0, 0);
  }

  return v8;
}

- (BOOL)validateAndRepair
{
  numberFormat = self->_numberFormat;
  currencyFormat = self->_currencyFormat;
  dateFormat = self->_dateFormat;
  durationFormat = self->_durationFormat;
  textFormat = self->_textFormat;
  BOOLeanFormat = self->_BOOLeanFormat;
  if (objc_msgSend_hasCurrentFormat(self, a2, v2, v3) && (objc_msgSend_currentFormatIsExplicit(self, v11, v12, v13) & 1) == 0 && (self->_valueType | 8) == 8)
  {
    objc_msgSend_setCurrentFormat_isExplicit_(self, v11, 0, 0);
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  if (!self->_cellSpec)
  {
    if (objc_msgSend_formatType(numberFormat, v11, v12, v13) == 267 && self->_valueType == 2)
    {
      v14 = 1;
      objc_msgSend_p_clearFormatOfCellFormatKind_(self, v15, 1, v17);
    }

    if (objc_msgSend_formatType(BOOLeanFormat, v15, v16, v17) == 263)
    {
      objc_msgSend_p_clearFormatOfCellFormatKind_(self, v11, 6, v13);
      v14 = 1;
    }
  }

  if (objc_msgSend_hasMismatchedFormatAndValue(self, v11, v12, v13))
  {
    cellFormatKind = objc_msgSend_cellFormatKindForValueType_(TSTCell, v18, self->_valueType, v19);
    self->_cellFormatKind = cellFormatKind;
    v14 = 1;
  }

  else
  {
    cellFormatKind = self->_cellFormatKind;
  }

  v30 = 0;
  v21 = objc_msgSend_p_formatOfCellFormatKind_create_returnFormat_outCreated_(self, v18, cellFormatKind, 1, 0, &v30);
  v25 = v30;
  if (!numberFormat || (v26 = 1, (objc_msgSend_p_clearIfImplicitAndNotCurrentForKind_format_explicitFormatMask_(self, v22, 1, numberFormat, 1) & 1) == 0))
  {
    v26 = v14 | v25;
  }

  if (currencyFormat && (objc_msgSend_p_clearIfImplicitAndNotCurrentForKind_format_explicitFormatMask_(self, v22, 2, currencyFormat, 2) & 1) != 0)
  {
    v26 = 1;
  }

  if (durationFormat && (objc_msgSend_p_clearIfImplicitAndNotCurrentForKind_format_explicitFormatMask_(self, v22, 4, durationFormat, 4) & 1) != 0)
  {
    v26 = 1;
  }

  if (dateFormat && (objc_msgSend_p_clearIfImplicitAndNotCurrentForKind_format_explicitFormatMask_(self, v22, 3, dateFormat, 8) & 1) != 0)
  {
    v26 = 1;
  }

  if (textFormat && (objc_msgSend_p_clearIfImplicitAndNotCurrentForKind_format_explicitFormatMask_(self, v22, 5, textFormat, 128) & 1) != 0)
  {
    v26 = 1;
  }

  if (BOOLeanFormat && (objc_msgSend_p_clearIfImplicitAndNotCurrentForKind_format_explicitFormatMask_(self, v22, 6, BOOLeanFormat, 32) & 1) != 0)
  {
    v26 = 1;
  }

  if (!currencyFormat && objc_msgSend_currencyIsMostRecentlySet(self, v22, v23, v24))
  {
    objc_msgSend_p_TSTCellSetMostRecentlySetNumberFormatWithCurrencyFlag_(self, v27, 0, v28);
    v26 = 1;
  }

  return v26 & 1;
}

- (void)clearAllFormats
{
  self->_explicitFormatFlags = 0;
  *&self->_dateFormatID = 0;
  *&self->_textFormatID = 0;
  *&self->_numberFormatID = 0;
  *&self->_numberFormat = 0u;
  *&self->_dateFormat = 0u;
  *&self->_textFormat = 0u;
}

- (void)copyAllFormatsToCell:(id)cell
{
  cellCopy = cell;
  v16 = cellCopy;
  if (cellCopy)
  {
    *(cellCopy + 46) = self->_cellFormatKind;
    *(cellCopy + 20) = self->_explicitFormatFlags;
    objc_msgSend_p_setFormatFlags_explicit_(cellCopy, v5, 0x8000, 0);
    v16[20] = self->_numberFormatID;
    *(v16 + 21) = self->_numberFormat;
    v16[21] = self->_currencyFormatID;
    *(v16 + 22) = self->_currencyFormat;
    v16[22] = self->_dateFormatID;
    *(v16 + 23) = self->_dateFormat;
    v16[23] = self->_durationFormatID;
    *(v16 + 24) = self->_durationFormat;
    v16[24] = self->_textFormatID;
    *(v16 + 25) = self->_textFormat;
    v16[25] = self->_BOOLeanFormatID;
    *(v16 + 26) = self->_BOOLeanFormat;
  }

  else
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTCell copyAllFormatsToCell:]", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 2976, 0, "invalid nil value for '%{public}s'", "dest");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }
}

- (void)processCustomFormatsWithBlock:(id)block
{
  blockCopy = block;
  v18 = 0;
  if (objc_msgSend_formatType(self->_numberFormat, v5, v6, v7) != 270 || (objc_msgSend_asCustomFormatWrapper(self->_numberFormat, v8, v9, v10), v11 = objc_claimAutoreleasedReturnValue(), blockCopy[2](blockCopy, v11, &v18), v11, (v18 & 1) == 0))
  {
    if (objc_msgSend_formatType(self->_currencyFormat, v8, v9, v10) == 274)
    {
      v12 = objc_msgSend_asCustomFormatWrapper(self->_currencyFormat, v8, v9, v10);
      blockCopy[2](blockCopy, v12, &v18);
    }
  }

  if ((v18 & 1) == 0 && objc_msgSend_formatType(self->_dateFormat, v8, v9, v10) == 272)
  {
    v13 = objc_msgSend_asCustomFormatWrapper(self->_dateFormat, v8, v9, v10);
    blockCopy[2](blockCopy, v13, &v18);
  }

  if ((v18 & 1) == 0 && objc_msgSend_formatType(self->_textFormat, v8, v9, v10) == 271)
  {
    v17 = objc_msgSend_asCustomFormatWrapper(self->_textFormat, v14, v15, v16);
    blockCopy[2](blockCopy, v17, &v18);
  }
}

- (BOOL)_validateCustomFormatWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v7 = objc_msgSend_formatType(wrapperCopy, v4, v5, v6);
  if (!wrapperCopy || ((v11 = v7, (v7 - 270) <= 4) ? (v12 = v7 == 273) : (v12 = 1), v12))
  {
    v21 = 0;
  }

  else
  {
    v16 = objc_msgSend_customFormat(wrapperCopy, v8, v9, v10);
    if (v16)
    {
      v17 = objc_msgSend_customFormat(wrapperCopy, v13, v14, v15);
      v21 = v11 == objc_msgSend_formatType(v17, v18, v19, v20);
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (void)updateCustomFormatFromPaste:(id)paste
{
  pasteCopy = paste;
  v7 = objc_msgSend_formatType(pasteCopy, v4, v5, v6);
  v8 = sub_22121E75C(v7);
  v12 = objc_msgSend_cellFormatKind(self, v9, v10, v11);
  if (objc_msgSend__validateCustomFormatWrapper_(self, v13, pasteCopy, v14))
  {
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v15, pasteCopy, 0, 0, v12 == v8, 1);
  }

  else if (v12 == v8 && objc_msgSend_hasValue(self, v15, v16, v17))
  {
    objc_msgSend_setDefaultFormatForValue(self, v15, v18, v17);
  }

  else
  {
    objc_msgSend_p_clearFormatOfCellFormatKind_(self, v15, v8, v17);
  }
}

- (BOOL)removeCustomFormatsWithIDs:(id)ds
{
  dsCopy = ds;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_221692958;
  v9[3] = &unk_278468198;
  v9[4] = self;
  v10 = dsCopy;
  v11 = &v12;
  v5 = dsCopy;
  objc_msgSend_processCustomFormatsWithBlock_(self, v6, v9, v7);
  LOBYTE(self) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return self;
}

- (void)p_TSTCellSetMostRecentlySetNumberFormatWithCurrencyFlag:(BOOL)flag
{
  cellFormatKind = self->_cellFormatKind;
  if (flag)
  {
    if (cellFormatKind == 1)
    {
      return;
    }

    goto LABEL_3;
  }

  if (cellFormatKind != 2)
  {
LABEL_3:
    objc_msgSend_p_setFormatFlags_explicit_(self, a2, 2048, flag);
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

- (void)p_setFormatExplicit:(BOOL)explicit fromCellFormatKind:(unsigned __int8)kind setMostRecentlySet:(BOOL)set
{
  setCopy = set;
  kindCopy = kind;
  explicitCopy = explicit;
  if (self->_cellFormatKind | kind)
  {
    if (!kind)
    {
      return;
    }
  }

  else
  {
    objc_msgSend_p_setFormatFlags_explicit_(self, a2, 0x8000, 0);
    if (!kindCopy)
    {
      return;
    }
  }

  v9 = sub_22121E814(kindCopy);
  objc_msgSend_p_setFormatFlags_explicit_(self, v10, v9, explicitCopy);
  if (setCopy && (self->_cellFormatKind == kindCopy || explicitCopy))
  {
    if (v9 == 1)
    {
      v13 = 0;
    }

    else
    {
      if (v9 != 2)
      {
        return;
      }

      v13 = 1;
    }

    objc_msgSend_p_TSTCellSetMostRecentlySetNumberFormatWithCurrencyFlag_(self, v11, v13, v12);
  }
}

- (BOOL)currentFormatIsExplicitForCalcEngine
{
  if (self->_explicitFormatFlags < 0)
  {
    return 1;
  }

  else
  {
    return objc_msgSend_currentFormatIsExplicit(self, a2, v2, v3);
  }
}

- (id)formatOfType:(unsigned int)type allowMismatchedSpare:(BOOL)spare
{
  v7 = sub_22121E75C(type);
  v9 = objc_msgSend_p_formatOfCellFormatKind_create_returnFormat_outCreated_(self, v8, v7, 0, 1, 0);

  if (!spare && objc_msgSend_formatType(v9, v10, v11, v12) != type)
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)hasFormatOfType:(unsigned int)type allowMismatchedSpare:(BOOL)spare
{
  v4 = objc_msgSend_formatOfType_allowMismatchedSpare_(self, a2, *&type, spare);
  v5 = v4 != 0;

  return v5;
}

- (BOOL)hasExplicitFormatOfType:(unsigned int)type allowMismatchedSpare:(BOOL)spare
{
  v5 = *&type;
  v7 = sub_22121E83C(type);
  v9 = (self->_explicitFormatFlags & v7) != 0;
  if ((self->_explicitFormatFlags & v7) != 0 && !spare)
  {
    v10 = objc_msgSend_formatOfType_allowMismatchedSpare_(self, v8, v5, 0);
    v9 = v10 != 0;
  }

  return v9;
}

- (id)formatOfCellFormatKind:(unsigned __int8)kind isExplicit:(BOOL *)explicit
{
  kindCopy = kind;
  v7 = objc_msgSend_p_formatOfCellFormatKind_create_returnFormat_outCreated_(self, a2, kind, 0, 1, 0);
  if (v7)
  {
    if (!explicit)
    {
      goto LABEL_7;
    }

    explicitFormatFlags = self->_explicitFormatFlags;
    v9 = (sub_22121E814(kindCopy) & explicitFormatFlags) != 0;
  }

  else
  {
    if (!explicit)
    {
      goto LABEL_7;
    }

    v9 = 0;
  }

  *explicit = v9;
LABEL_7:

  return v7;
}

+ (BOOL)formatType:(unsigned int)type isSameCellFormatKindAs:(unsigned int)as allowNumberCurrencyMismatch:(BOOL)mismatch
{
  if (type == as)
  {
    return 1;
  }

  mismatchCopy = mismatch;
  v8 = sub_22121E75C(type);
  v9 = sub_22121E75C(as);
  return v8 == v9 || mismatchCopy && (v8 == 1 && v9 == 2 || v9 == 1 && v8 == 2);
}

- (id)candidateFormatForSliderStepperControlWithIsCurrent:(BOOL *)current
{
  cellFormatKind = self->_cellFormatKind;
  if (cellFormatKind == 2)
  {
    v7 = 176;
  }

  else if (cellFormatKind == 1)
  {
    v7 = 168;
  }

  else
  {
    IsMostRecentlySet = objc_msgSend_currencyIsMostRecentlySet(self, a2, current, v3);
    v7 = 168;
    if (IsMostRecentlySet)
    {
      v7 = 176;
    }
  }

  v9 = *(&self->super.isa + v7);
  if (!v9)
  {
LABEL_15:
    v19 = MEMORY[0x277D80680];
    v20 = objc_msgSend_locale(self, v10, v11, v12);
    v13 = objc_msgSend_defaultFormatWithFormatType_locale_(v19, v21, 256, v20);

    if (!current)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v13 = v9;
  v14 = objc_msgSend_formatType(v9, v10, v11, v12);
  if ((v14 - 256) > 0xD || ((1 << v14) & 0x204F) == 0)
  {

    goto LABEL_15;
  }

  if (current)
  {
LABEL_16:
    v22 = objc_msgSend_currentFormat(self, v15, v16, v17);
    *current = v13 == v22;
  }

LABEL_17:

  return v13;
}

- (NSString)customFormatString
{
  v5 = objc_msgSend_currentFormat(self, a2, v2, v3);
  v9 = objc_msgSend_asCustomFormatWrapper(v5, v6, v7, v8);
  objc_msgSend_underlyingDoubleValue(self, v10, v11, v12);
  v16 = objc_msgSend_customFormatDataForValue_(v9, v13, v14, v15);
  v20 = objc_msgSend_formatString(v16, v17, v18, v19);

  return v20;
}

- (BOOL)currentFormatUsesAccountingStyle
{
  v5 = objc_msgSend_formatType(self, a2, v2, v3);
  if (v5 == 274 || v5 == 270)
  {
    v9 = objc_msgSend_currentFormat(self, v6, v7, v8);
    v13 = objc_msgSend_asCustomFormatWrapper(v9, v18, v19, v20);
    objc_msgSend_underlyingDoubleValue(self, v21, v22, v23);
    v27 = objc_msgSend_customFormatDataForValue_(v13, v24, v25, v26);
    v17 = objc_msgSend_useAccountingStyle(v27, v28, v29, v30);
  }

  else
  {
    if (v5 != 257)
    {
      return 0;
    }

    v9 = objc_msgSend_currentFormat(self, v6, v7, v8);
    v13 = objc_msgSend_asCurrencyFormat(v9, v10, v11, v12);
    v17 = objc_msgSend_accountingStyle(v13, v14, v15, v16);
  }

  return v17;
}

- (unsigned)currentFormatNegativeStyle
{
  v4 = objc_msgSend_currentFormat(self, a2, v2, v3);
  v8 = objc_msgSend_asNumberFormat(v4, v5, v6, v7);

  if (v8)
  {
    v12 = objc_msgSend_asNumberFormat(v4, v9, v10, v11);
    v16 = objc_msgSend_negativeStyle(v12, v13, v14, v15);
  }

  else
  {
    v17 = objc_msgSend_asCurrencyFormat(v4, v9, v10, v11);

    if (!v17)
    {
      v24 = 4;
      goto LABEL_6;
    }

    v12 = objc_msgSend_asCurrencyFormat(v4, v18, v19, v20);
    v16 = objc_msgSend_negativeStyle(v12, v21, v22, v23);
  }

  v24 = v16;

LABEL_6:
  return v24;
}

- (BOOL)isMostRecentlyExplicitPercent
{
  if (objc_msgSend_formatType(self, a2, v2, v3) == 258)
  {
    return 1;
  }

  if (objc_msgSend_currentFormatIsExplicit(self, v5, v6, v7) & 1) != 0 || (objc_msgSend_currencyIsMostRecentlySet(self, v9, v10, v11))
  {
    return 0;
  }

  return objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v12, 258, 0);
}

+ (unsigned)cellFormatKindForValueType:(unsigned __int8)type
{
  if (type > 0xAu)
  {
    return 6;
  }

  else
  {
    return byte_221803898[type];
  }
}

+ (BOOL)mismatchBetweenValueType:(unsigned __int8)type andFormatType:(unsigned int)formatType
{
  typeCopy = type;
  v5 = sub_22121E75C(formatType);

  return MEMORY[0x2821F9670](TSTCell, sel_p_mismatchBetweenValueType_andCellFormatKind_, typeCopy, v5);
}

- (void)setDefaultFormatForValue
{
  v3 = self->_valueType - 2;
  if (v3 <= 8 && ((0x1BBu >> v3) & 1) != 0)
  {
    v4 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], a2, dword_2218038A4[(self->_valueType - 2)], self->_locale);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  objc_msgSend_setCurrentFormat_isExplicit_(self, a2, v4, 0);
}

- (void)setFormatID:(unsigned int)d forStorageFlag:(unsigned int)flag
{
  if (flag >= 0x10000)
  {
    switch(flag)
    {
      case 0x10000u:
        self->_durationFormatID = d;
        return;
      case 0x20000u:
        self->_textFormatID = d;
        return;
      case 0x40000u:
        self->_BOOLeanFormatID = d;
        return;
    }
  }

  else
  {
    switch(flag)
    {
      case 0x2000u:
        self->_numberFormatID = d;
        return;
      case 0x4000u:
        self->_currencyFormatID = d;
        return;
      case 0x8000u:
        self->_dateFormatID = d;
        return;
    }
  }

  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCell setFormatID:forStorageFlag:]", *&flag);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 3496, 0, "Inappropriate storage flag.");

  v13 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v13, v10, v11, v12);
}

- (id)formatForStorageFlag:(unsigned int)flag
{
  if (flag >= 0x10000)
  {
    switch(flag)
    {
      case 0x10000u:
        durationFormat = self->_durationFormat;
        goto LABEL_15;
      case 0x20000u:
        durationFormat = self->_textFormat;
        goto LABEL_15;
      case 0x40000u:
        durationFormat = self->_BOOLeanFormat;
        goto LABEL_15;
    }

LABEL_12:
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCell formatForStorageFlag:]", v3);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 3522, 0, "Inappropriate storage flag.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
    v14 = 0;
    goto LABEL_16;
  }

  if (flag == 0x2000)
  {
    durationFormat = self->_numberFormat;
    goto LABEL_15;
  }

  if (flag == 0x4000)
  {
    durationFormat = self->_currencyFormat;
    goto LABEL_15;
  }

  if (flag != 0x8000)
  {
    goto LABEL_12;
  }

  durationFormat = self->_dateFormat;
LABEL_15:
  v14 = durationFormat;
LABEL_16:

  return v14;
}

- (unsigned)formatIDForStorageFlag:(unsigned int)flag
{
  if (flag >= 0x10000)
  {
    if (flag == 0x10000)
    {
      return self->_durationFormatID;
    }

    if (flag != 0x20000)
    {
      if (flag == 0x40000)
      {
        return self->_BOOLeanFormatID;
      }

      goto LABEL_12;
    }

    return self->_textFormatID;
  }

  else
  {
    if (flag == 0x2000)
    {
      return self->_numberFormatID;
    }

    if (flag != 0x4000)
    {
      if (flag == 0x8000)
      {
        return self->_dateFormatID;
      }

LABEL_12:
      v5 = MEMORY[0x277D81150];
      v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCell formatIDForStorageFlag:]", v3);
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v8);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 3549, 0, "Inappropriate storage flag.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
      return 0;
    }

    return self->_currencyFormatID;
  }
}

- (BOOL)hasAnyWarning
{
  if (objc_msgSend_hasFormula(self, a2, v2, v3))
  {
    v8 = (self->_cellFlags >> 9) & 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  importWarningSet = self->_importWarningSet;
  if (importWarningSet)
  {
    LOBYTE(importWarningSet) = objc_msgSend_areAnySet(importWarningSet, v5, v6, v7);
  }

  return (v8 | importWarningSet) & 1;
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

- (id)reorganizeValueForSorting
{
  v3 = objc_alloc_init(TSTCellReorganizeValue);
  v7 = objc_msgSend_valueType(self, v4, v5, v6);
  objc_msgSend_setValueType_(v3, v8, v7, v9);
  v13 = objc_msgSend_valueType(v3, v10, v11, v12);
  v16 = 5;
  if (v13 > 5)
  {
    if (v13 <= 8)
    {
      if (v13 != 6)
      {
        if (v13 != 7)
        {
          goto LABEL_23;
        }

        objc_msgSend_setRank_(v3, v14, 4, v15);
        goto LABEL_19;
      }

      v16 = 1;
LABEL_18:
      objc_msgSend_setRank_(v3, v14, v16, v15);
LABEL_19:
      objc_msgSend_underlyingDoubleValue(self, v17, v18, v19);
      objc_msgSend_setDoubleValue_(v3, v30, v31, v32);
      goto LABEL_23;
    }

    if (v13 != 9)
    {
      if (v13 != 10)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }

    objc_msgSend_setRank_(v3, v14, 2, v15);
    v23 = objc_msgSend_richTextValue(self, v38, v39, v40);
    v44 = objc_msgSend_string(v23, v41, v42, v43);
    objc_msgSend_setString_(v3, v45, v44, v46);

LABEL_22:
    goto LABEL_23;
  }

  if (v13 > 2)
  {
    if (v13 == 3)
    {
      objc_msgSend_setRank_(v3, v14, 2, v15);
      v23 = objc_msgSend_stringValue(self, v33, v34, v35);
      objc_msgSend_setString_(v3, v36, v23, v37);
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_23;
      }

      objc_msgSend_setRank_(v3, v14, 3, v15);
      v23 = objc_msgSend_dateValue(self, v20, v21, v22);
      objc_msgSend_timeIntervalSinceReferenceDate(v23, v24, v25, v26);
      objc_msgSend_setDoubleValue_(v3, v27, v28, v29);
    }

    goto LABEL_22;
  }

  if (!v13)
  {
    objc_msgSend_setRank_(v3, v14, 0, v15);
    goto LABEL_23;
  }

  if (v13 == 2)
  {
    goto LABEL_18;
  }

LABEL_23:

  return v3;
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
    return @"<Unknown>";
  }

  else
  {
    return off_2784681B8[type];
  }
}

- (id)cellValueDescription
{
  if (objc_msgSend_hasCellSpec(self, a2, v2, v3))
  {
    if (self->_cellSpec)
    {
      v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v5, @"<cellSpec: %@>", v6, self->_cellSpec);
      goto LABEL_7;
    }

    objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v5, @"<cellSpec not populated>", v6);
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v5, &stru_2834BADA0, v6);
  }
  v7 = ;
LABEL_7:
  v11 = v7;
  valueType = self->_valueType;
  if (valueType > 5)
  {
    if (self->_valueType <= 7u)
    {
      if (valueType == 6)
      {
        v49 = MEMORY[0x277CCACA8];
        if (objc_msgSend_BOOLValue(self, v8, v9, v10))
        {
          objc_msgSend_stringWithFormat_(v49, v50, @"<BOOL: '%@'>", v51, @"TRUE");
        }

        else
        {
          objc_msgSend_stringWithFormat_(v49, v50, @"<BOOL: '%@'>", v51, @"FALSE");
        }
        v17 = ;
        objc_msgSend_appendString_(v11, v52, v17, v53);
        goto LABEL_33;
      }

      if (valueType == 7)
      {
        v36 = MEMORY[0x277CCACA8];
        objc_msgSend_durationTimeIntervalValue(self, v8, v9, v10);
        v17 = objc_msgSend_stringWithFormat_(v36, v37, @"<duration: %f>", v38, v39);
        objc_msgSend_appendString_(v11, v40, v17, v41);
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (valueType == 8)
    {
      v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"<error>", v10);
      objc_msgSend_appendString_(v11, v47, v17, v48);
      goto LABEL_33;
    }

    if (valueType != 9)
    {
      if (valueType == 10)
      {
        v13 = MEMORY[0x277CCACA8];
        objc_msgSend_currencyDoubleValue(self, v8, v9, v10);
        v17 = objc_msgSend_stringWithFormat_(v13, v14, @"<number: %f>", v15, v16);
        objc_msgSend_appendString_(v11, v18, v17, v19);
LABEL_33:

        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v54 = MEMORY[0x277CCACA8];
    v17 = objc_msgSend_richTextValue(self, v8, v9, v10);
    v30 = objc_msgSend_string(v17, v55, v56, v57);
    v33 = objc_msgSend_stringWithFormat_(v54, v58, @"<rich text: '%@'>", v59, v30);
    objc_msgSend_appendString_(v11, v60, v33, v61);
    goto LABEL_31;
  }

  if (self->_valueType > 2u)
  {
    if (valueType == 3)
    {
      v42 = MEMORY[0x277CCACA8];
      v17 = objc_msgSend_stringValue(self, v8, v9, v10);
      v30 = objc_msgSend_stringWithFormat_(v42, v43, @"<string: '%@'>", v44, v17);
      objc_msgSend_appendString_(v11, v45, v30, v46);
LABEL_32:

      goto LABEL_33;
    }

    if (valueType != 5)
    {
      goto LABEL_34;
    }

    v26 = MEMORY[0x277CCACA8];
    v17 = objc_msgSend_dateValue(self, v8, v9, v10);
    v30 = objc_msgSend_description(v17, v27, v28, v29);
    v33 = objc_msgSend_stringWithFormat_(v26, v31, @"<date: '%@'>", v32, v30);
    objc_msgSend_appendString_(v11, v34, v33, v35);
LABEL_31:

    goto LABEL_32;
  }

  if (!self->_valueType)
  {
    objc_msgSend_appendString_(v7, v8, @"<empty>", v10);
    goto LABEL_35;
  }

  if (valueType == 2)
  {
    v20 = MEMORY[0x277CCACA8];
    objc_msgSend_numberDoubleValue(self, v8, v9, v10);
    v17 = objc_msgSend_stringWithFormat_(v20, v21, @"<number: %f>", v22, v23);
    objc_msgSend_appendString_(v11, v24, v17, v25);
    goto LABEL_33;
  }

LABEL_34:
  objc_msgSend_appendString_(v7, v8, @"<unknown cell type>", v10);
LABEL_35:

  return v11;
}

@end