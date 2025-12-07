@interface TSCEWarning
+ (id)loadFromArchive:(const void *)archive;
+ (id)warningFor3DReferenceFormula:(id)formula;
+ (id)warningForArrayModeWarning:(id)warning;
+ (id)warningForArrayedFormula:(id)formula;
+ (id)warningForComparisonWithLeftType:(char)type rightType:(char)rightType;
+ (id)warningForDifferentBehaviorForFunctionFormula:(id)formula originalFormula:(id)originalFormula;
+ (id)warningForErrorTokenFormula:(id)formula;
+ (id)warningForExternalReferenceFormula:(id)formula;
+ (id)warningForFormulaReplacedForExcelCompat:(id)compat originalFormula:(id)formula;
+ (id)warningForNaturalLanguageFormula:(id)formula;
+ (id)warningForReferenceOutOfBoundsFormula:(id)formula;
+ (id)warningForSharedFormulaBaseNotFoundFormula:(id)formula;
+ (id)warningForTransposedWithIssues:(id)issues;
+ (id)warningForTransposedWithoutIssues:(id)issues;
+ (id)warningForUnknownName:(id)name originalFormula:(id)formula;
+ (id)warningForUnsupportedDataFormat:(id)format;
+ (id)warningForUnsupportedFormula:(id)formula;
+ (id)warningForUnsupportedFunction:(id)function originalFormula:(id)formula;
+ (id)warningForUnsupportedNameFormula:(id)formula originalFormula:(id)originalFormula;
+ (id)warningWithType:(int64_t)type;
+ (id)warningWithType:(int64_t)type originalDataFormat:(id)format;
+ (id)warningWithType:(int64_t)type originalFormula:(id)formula;
+ (id)warningWithType:(int64_t)type originalFormula:(id)formula supplementaryText:(id)text;
+ (id)warningWithType:(int64_t)type originalFormula:(id)formula supplementaryText:(id)text originalDataFormat:(id)format;
+ (int64_t)warningTypePrunedToThisVersion:(unsigned int)version;
+ (void)reportAutomaticUnitConversionWarningInContext:(id)context;
+ (void)reportBoolToNumberConversionWarningInContext:(id)context;
+ (void)reportComparisonWarningInContext:(id)context leftType:(char)type rightType:(char)rightType;
+ (void)reportDayOutOfRangeWarningInContext:(id)context;
+ (void)reportLossOfUnitsWarningInContext:(id)context;
+ (void)reportMonthOutOfRangeWarningInContext:(id)context;
+ (void)reportNonNumericCellWarningInContext:(id)context;
+ (void)reportWarningInContext:(id)context warningType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (TSCEWarning)initWithWarningType:(int64_t)type originalFormula:(id)formula supplementaryText:(id)text originalDataFormat:(id)format;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)displayStringWithCalculationEngine:(id)engine forTable:(const TSKUIDStruct *)table;
- (id)displayStringWithCalculationEngine:(id)engine forTable:(const TSKUIDStruct *)table andCellID:(TSUCellCoord)d;
- (id)numberForKey:(id)key;
- (id)stringForKey:(id)key;
- (void)_calculatehashValue;
- (void)saveToArchive:(void *)archive;
- (void)setNumber:(id)number forKey:(id)key;
- (void)setString:(id)string forKey:(id)key;
@end

@implementation TSCEWarning

+ (int64_t)warningTypePrunedToThisVersion:(unsigned int)version
{
  if (version - 33 < 0x43 || version > 0x6E)
  {
    return 0;
  }

  else
  {
    return version;
  }
}

+ (id)warningWithType:(int64_t)type originalFormula:(id)formula supplementaryText:(id)text originalDataFormat:(id)format
{
  formulaCopy = formula;
  textCopy = text;
  formatCopy = format;
  v13 = [self alloc];
  v15 = objc_msgSend_initWithWarningType_originalFormula_supplementaryText_originalDataFormat_(v13, v14, type, formulaCopy, textCopy, formatCopy);

  return v15;
}

+ (id)warningWithType:(int64_t)type originalFormula:(id)formula supplementaryText:(id)text
{
  formulaCopy = formula;
  textCopy = text;
  v10 = [self alloc];
  v12 = objc_msgSend_initWithWarningType_originalFormula_supplementaryText_originalDataFormat_(v10, v11, type, formulaCopy, textCopy, 0);

  return v12;
}

+ (id)warningWithType:(int64_t)type originalFormula:(id)formula
{
  formulaCopy = formula;
  v7 = [self alloc];
  v9 = objc_msgSend_initWithWarningType_originalFormula_supplementaryText_originalDataFormat_(v7, v8, type, formulaCopy, 0, 0);

  return v9;
}

+ (id)warningWithType:(int64_t)type originalDataFormat:(id)format
{
  formatCopy = format;
  v7 = [self alloc];
  v9 = objc_msgSend_initWithWarningType_originalFormula_supplementaryText_originalDataFormat_(v7, v8, type, 0, 0, formatCopy);

  return v9;
}

+ (id)warningWithType:(int64_t)type
{
  v4 = [self alloc];
  v6 = objc_msgSend_initWithWarningType_originalFormula_supplementaryText_originalDataFormat_(v4, v5, type, 0, 0, 0);

  return v6;
}

- (TSCEWarning)initWithWarningType:(int64_t)type originalFormula:(id)formula supplementaryText:(id)text originalDataFormat:(id)format
{
  formulaCopy = formula;
  textCopy = text;
  formatCopy = format;
  v30.receiver = self;
  v30.super_class = TSCEWarning;
  v13 = [(TSCEWarning *)&v30 init];
  v17 = v13;
  if (v13)
  {
    v13->_warningType = type;
    if (formulaCopy || textCopy || formatCopy)
    {
      v18 = objc_opt_new();
      warningInfoDict = v17->_warningInfoDict;
      v17->_warningInfoDict = v18;

      if (formulaCopy)
      {
        v20 = v17->_warningInfoDict;
        v21 = objc_msgSend_valueWithString_(TSCEWarningValue, v14, formulaCopy, v16);
        objc_msgSend_setObject_forKey_(v20, v22, v21, @"TSCEOriginalFormulaKey");
      }

      if (textCopy)
      {
        v23 = v17->_warningInfoDict;
        v24 = objc_msgSend_valueWithString_(TSCEWarningValue, v14, textCopy, v16);
        objc_msgSend_setObject_forKey_(v23, v25, v24, @"TSCESupplementaryTextKey");
      }

      if (formatCopy)
      {
        v26 = v17->_warningInfoDict;
        v27 = objc_msgSend_valueWithString_(TSCEWarningValue, v14, formatCopy, v16);
        objc_msgSend_setObject_forKey_(v26, v28, v27, @"TSCEOriginalDataFormatKey");
      }
    }

    objc_msgSend__calculatehashValue(v17, v14, v15, v16);
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  v7 = objc_msgSend_warningWithType_(v4, v5, self->_warningType, v6);
  v11 = objc_msgSend_mutableCopy(self->_warningInfoDict, v8, v9, v10);
  v12 = v7[2];
  v7[2] = v11;

  objc_msgSend__calculatehashValue(v7, v13, v14, v15);
  return v7;
}

- (id)numberForKey:(id)key
{
  v4 = objc_msgSend_objectForKey_(self->_warningInfoDict, a2, key, v3);
  v8 = objc_msgSend_number(v4, v5, v6, v7);

  return v8;
}

- (id)stringForKey:(id)key
{
  v4 = objc_msgSend_objectForKey_(self->_warningInfoDict, a2, key, v3);
  v8 = objc_msgSend_string(v4, v5, v6, v7);

  return v8;
}

- (void)setNumber:(id)number forKey:(id)key
{
  numberCopy = number;
  keyCopy = key;
  if (numberCopy && keyCopy)
  {
    warningInfoDict = self->_warningInfoDict;
    if (!warningInfoDict)
    {
      v11 = objc_opt_new();
      v12 = self->_warningInfoDict;
      self->_warningInfoDict = v11;

      warningInfoDict = self->_warningInfoDict;
    }

    v13 = objc_msgSend_valueWithNumber_(TSCEWarningValue, v6, numberCopy, v8);
    objc_msgSend_setObject_forKey_(warningInfoDict, v14, v13, keyCopy);
  }

  else if (keyCopy)
  {
    objc_msgSend_removeObjectForKey_(self->_warningInfoDict, v6, keyCopy, v8);
  }

  objc_msgSend__calculatehashValue(self, v6, v7, v8);
}

- (void)setString:(id)string forKey:(id)key
{
  stringCopy = string;
  keyCopy = key;
  if (stringCopy && keyCopy)
  {
    warningInfoDict = self->_warningInfoDict;
    if (!warningInfoDict)
    {
      v11 = objc_opt_new();
      v12 = self->_warningInfoDict;
      self->_warningInfoDict = v11;

      warningInfoDict = self->_warningInfoDict;
    }

    v13 = objc_msgSend_valueWithString_(TSCEWarningValue, v6, stringCopy, v8);
    objc_msgSend_setObject_forKey_(warningInfoDict, v14, v13, keyCopy);
  }

  else if (keyCopy)
  {
    objc_msgSend_removeObjectForKey_(self->_warningInfoDict, v6, keyCopy, v8);
  }

  objc_msgSend__calculatehashValue(self, v6, v7, v8);
}

- (id)displayStringWithCalculationEngine:(id)engine forTable:(const TSKUIDStruct *)table andCellID:(TSUCellCoord)d
{
  v5 = objc_msgSend_displayStringWithCalculationEngine_forTable_(self, a2, engine, table, d);

  return v5;
}

- (id)displayStringWithCalculationEngine:(id)engine forTable:(const TSKUIDStruct *)table
{
  engineCopy = engine;
  v9 = objc_msgSend_warningType(self, v6, v7, v8);
  v13 = v9;
  if (v9 <= 99)
  {
    v14 = 0;
    switch(v9)
    {
      case 0:
        goto LABEL_62;
      case 1:
        v15 = sub_2212F6DF8(v9);
        v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v16, @"The formula couldn’t be imported. It contained a 3-D reference and was replaced by the last calculated value.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 2:
        v15 = sub_2212F6DF8(v9);
        v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v72, @"The array formula couldn’t be imported and was replaced by the last calculated value.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 3:
        v76 = MEMORY[0x277CCACA8];
        v15 = sub_2212F6DF8(v9);
        v30 = objc_msgSend_localizedStringForKey_value_table_(v15, v77, @"The formula couldn’t be imported. The function %@ might have produced a different result than in Excel. The formula was replaced by the last calculated value. ", &stru_2834BADA0, @"TSCalculationEngine");
        v40 = objc_msgSend_supplementaryText(self, v78, v79, v80);
        v58 = objc_msgSend_stringWithFormat_(v76, v81, v30, v82, v40);
        goto LABEL_51;
      case 4:
        v15 = sub_2212F6DF8(v9);
        v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v59, @"The error in the cell was removed.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 5:
        v15 = sub_2212F6DF8(v9);
        v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v96, @"The formula couldn’t be imported because it contained a reference to another document. The formula was replaced by the last calculated value.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 6:
        v15 = sub_2212F6DF8(v9);
        v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v99, @"The natural language formula couldn’t be imported. It was replaced by the last calculated value.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 7:
        v15 = sub_2212F6DF8(v9);
        v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v83, @"The formula couldn’t be imported because it referenced a cell that wasn’t imported. The formula was replaced by the last calculated value.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 8:
      case 10:
        v15 = sub_2212F6DF8(v9);
        v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v101, @"The formula couldn’t be imported and was replaced by the last calculated value.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 9:
        v15 = sub_2212F6DF8(v9);
        v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v67, @"The formula couldn’t be imported because it contained an undefined range. The formula was replaced by the last calculated value.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 11:
        v51 = MEMORY[0x277CCACA8];
        v15 = sub_2212F6DF8(v9);
        v30 = objc_msgSend_localizedStringForKey_value_table_(v15, v52, @"The formula couldn’t be imported. %@ is an unsupported function. The formula was replaced by the last calculated value.", &stru_2834BADA0, @"TSCalculationEngine");
        v40 = objc_msgSend_supplementaryText(self, v53, v54, v55);
        v58 = objc_msgSend_stringWithFormat_(v51, v56, v30, v57, v40);
        goto LABEL_51;
      case 12:
        v60 = MEMORY[0x277CCACA8];
        v15 = sub_2212F6DF8(v9);
        v30 = objc_msgSend_localizedStringForKey_value_table_(v15, v61, @"The formula couldn’t be imported. The name “%@” couldn’t be imported. The formula was replaced by the last calculated value.", &stru_2834BADA0, @"TSCalculationEngine");
        v40 = objc_msgSend_supplementaryText(self, v62, v63, v64);
        v58 = objc_msgSend_stringWithFormat_(v60, v65, v30, v66, v40);
        goto LABEL_51;
      case 13:
        v15 = sub_2212F6DF8(v9);
        v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v98, @"The formula was updated because it refers to a table that was transposed.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 14:
        v15 = sub_2212F6DF8(v9);
        v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v50, @"The formula was updated because it refers to a table that was transposed. You may need to make additional changes.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 15:
        v15 = sub_2212F6DF8(v9);
        v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v75, @"The formula refers to a table that was transposed. You may want to review it.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 16:
        v15 = sub_2212F6DF8(v9);
        v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v49, @"The formula was replaced with its last calculated value.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 17:
        v87 = MEMORY[0x277CCACA8];
        v15 = sub_2212F6DF8(v9);
        v30 = objc_msgSend_localizedStringForKey_value_table_(v15, v88, @"The function %@ might have produced a different result than in Excel. The formula was replaced by a formula that will give the same result.", &stru_2834BADA0, @"TSCalculationEngine");
        v40 = objc_msgSend_supplementaryText(self, v89, v90, v91);
        v58 = objc_msgSend_stringWithFormat_(v87, v92, v30, v93, v40);
        goto LABEL_51;
      case 18:
        v15 = sub_2212F6DF8(v9);
        v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v100, @"The following conditional highlighting rules are not supported and were removed: Equal or Above Average, Equal or Below Average.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 19:
        v15 = sub_2212F6DF8(v9);
        v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v118, @"Conditional highlighting rules using standard deviation are not supported and were removed.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 20:
      case 22:
        v15 = sub_2212F6DF8(v9);
        v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v95, @"Conditional highlighting rules using formulas are not supported and were removed.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 21:
        v15 = sub_2212F6DF8(v9);
        v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v97, @"The following conditional highlighting rules are not supported and were removed: Contains Errors.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 23:
        v15 = sub_2212F6DF8(v9);
        v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v119, @"The following conditional highlighting rules are not supported and were removed: Contains No Errors.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 24:
        v15 = sub_2212F6DF8(v9);
        v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v69, @"The conditional highlighting rules couldn’t compare different value types and were removed.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 25:
        v15 = sub_2212F6DF8(v9);
        v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v68, @"The property “Stop if true” is unsupported. Conditional highlighting rules using this property were removed.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 26:
        v15 = sub_2212F6DF8(v9);
        v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v122, @"Conditional highlighting rules containing unsupported operators were removed.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 27:
        v15 = sub_2212F6DF8(v9);
        v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v48, @"Conditional highlighting rules using unsupported style attributes were removed.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 28:
        v15 = sub_2212F6DF8(v9);
        v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v120, @"The conditional formatting containing an unsupported time period was removed.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 29:
        v15 = sub_2212F6DF8(v9);
        v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v121, @"Unsupported conditional highlighting rules were removed.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 30:
        v102 = MEMORY[0x277CCACA8];
        v15 = sub_2212F6DF8(v9);
        v30 = objc_msgSend_localizedStringForKey_value_table_(v15, v103, @"The data format couldn’t be imported. Original format: %@", &stru_2834BADA0, @"TSCalculationEngine");
        v40 = objc_msgSend_originalDataFormat(self, v104, v105, v106);
        v58 = objc_msgSend_stringWithFormat_(v102, v107, v30, v108, v40);
        goto LABEL_51;
      case 31:
        v15 = sub_2212F6DF8(v9);
        v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v86, @"The cell was updated with a more accurate duration format. You may want to review formulas that refer to this cell.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 32:
        v109 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], v10, v11, v12);
        v15 = objc_msgSend_applicationDisplayName(v109, v110, v111, v112);

        v113 = MEMORY[0x277CCACA8];
        v30 = sub_2212F6DF8(v114);
        v40 = objc_msgSend_localizedStringForKey_value_table_(v30, v115, @"This formula produces multiple results in newer versions of %@. It has been modified using the “@“ operator to return the intersection of its cell references instead.", &stru_2834BADA0, @"TSCalculationEngine");
        v58 = objc_msgSend_stringWithFormat_(v113, v116, v40, v117, v15);
LABEL_51:
        v14 = v58;
        break;
      default:
        goto LABEL_65;
    }

    goto LABEL_52;
  }

  if (v9 > 104)
  {
    if (v9 > 107)
    {
      switch(v9)
      {
        case 'l':
          v15 = sub_2212F6DF8(108);
          v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v74, @"The ranges given to SUMIF have different sizes.", &stru_2834BADA0, @"TSCalculationEngine");
          break;
        case 'm':
          v15 = sub_2212F6DF8(109);
          v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v71, @"Duration units were removed.", &stru_2834BADA0, @"TSCalculationEngine");
          break;
        case 'n':
          v15 = sub_2212F6DF8(110);
          v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v20, @"The units of all arguments were converted to match the units of the first argument.", &stru_2834BADA0, @"TSCalculationEngine");
          break;
        default:
LABEL_65:
          v143 = sub_2212F6DF8(v9);
          v145 = objc_msgSend_localizedStringForKey_value_table_(v143, v144, @"Unsupported warning.", &stru_2834BADA0, @"TSCalculationEngine");

          v14 = 0;
          if (!v13)
          {
            goto LABEL_62;
          }

          goto LABEL_60;
      }

      goto LABEL_58;
    }

    if (v9 == 105)
    {
      v15 = sub_2212F6DF8(105);
      v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v73, @"DATE month argument should be between 1 and 12.", &stru_2834BADA0, @"TSCalculationEngine");
      goto LABEL_58;
    }

    if (v9 == 106)
    {
      v15 = sub_2212F6DF8(106);
      objc_msgSend_localizedStringForKey_value_table_(v15, v70, @"DATE day argument should be between 1 and 31.", &stru_2834BADA0, @"TSCalculationEngine");
    }

    else
    {
      v15 = sub_2212F6DF8(107);
      objc_msgSend_localizedStringForKey_value_table_(v15, v18, @"The formula uses a Boolean in place of a number.", &stru_2834BADA0, @"TSCalculationEngine");
    }

    v17 = LABEL_9:;
LABEL_58:
    v14 = v17;
    goto LABEL_59;
  }

  if (v9 > 101)
  {
    if (v9 == 102)
    {
      v15 = sub_2212F6DF8(102);
      v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v85, @"The link is invalid.", &stru_2834BADA0, @"TSCalculationEngine");
      goto LABEL_58;
    }

    if (v9 == 103)
    {
      v15 = sub_2212F6DF8(103);
      objc_msgSend_localizedStringForKey_value_table_(v15, v84, @"ISODD arguments must be integers.", &stru_2834BADA0, @"TSCalculationEngine");
    }

    else
    {
      v15 = sub_2212F6DF8(104);
      objc_msgSend_localizedStringForKey_value_table_(v15, v19, @"ISEVEN arguments must be integers.", &stru_2834BADA0, @"TSCalculationEngine");
    }

    goto LABEL_9;
  }

  if (v9 == 100)
  {
    v15 = sub_2212F6DF8(100);
    v17 = objc_msgSend_localizedStringForKey_value_table_(v15, v94, @"The formula refers to cells without numbers.", &stru_2834BADA0, @"TSCalculationEngine");
    goto LABEL_58;
  }

  v15 = objc_msgSend_documentLocale(engineCopy, v10, v11, v12);
  v23 = objc_msgSend_numberForKey_(self, v21, @"TSCEArgument1Key", v22);
  v27 = objc_msgSend_intValue(v23, v24, v25, v26);
  v30 = objc_msgSend_localizedTypeStringForArgumentType_(v15, v28, v27, v29);

  v33 = objc_msgSend_numberForKey_(self, v31, @"TSCEArgument2Key", v32);
  v37 = objc_msgSend_intValue(v33, v34, v35, v36);
  v40 = objc_msgSend_localizedTypeStringForArgumentType_(v15, v38, v37, v39);

  v41 = MEMORY[0x277CCACA8];
  v43 = sub_2212F6DF8(v42);
  v45 = objc_msgSend_localizedStringForKey_value_table_(v43, v44, @"The formula compares %@ to %@.", &stru_2834BADA0, @"TSCalculationEngine");
  v14 = objc_msgSend_stringWithFormat_(v41, v46, v45, v47, v30, v40);

LABEL_52:
LABEL_59:

LABEL_60:
  v126 = objc_msgSend_originalFormula(self, v123, v124, v125);

  if (v126)
  {
    v128 = MEMORY[0x277CCACA8];
    v129 = sub_2212F6DF8(v127);
    v131 = objc_msgSend_localizedStringForKey_value_table_(v129, v130, @" Original formula: %@", &stru_2834BADA0, @"TSCalculationEngine");
    v135 = objc_msgSend_originalFormula(self, v132, v133, v134);
    v138 = objc_msgSend_stringWithFormat_(v128, v136, v131, v137, v135);
    v141 = objc_msgSend_stringByAppendingString_(v14, v139, v138, v140);

    v14 = v141;
  }

LABEL_62:

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v8 = v5;
    if (self->_cachedHashValue == v5[3] && self->_warningType == v5[1])
    {
      warningInfoDict = self->_warningInfoDict;
      v10 = v8[2];
      if (warningInfoDict == v10)
      {
        isEqual = 1;
      }

      else
      {
        isEqual = objc_msgSend_isEqual_(warningInfoDict, v6, v10, v7);
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (void)_calculatehashValue
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  warningType = self->_warningType;
  warningInfoDict = self->_warningInfoDict;
  v10 = warningType;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22108BC18;
  v6[3] = &unk_27845DA88;
  v6[4] = &v7;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(warningInfoDict, a2, v6, v2);
  self->_cachedHashValue = v8[3];
  _Block_object_dispose(&v7, 8);
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v8[0] = 0;
  v8[1] = 0;
  v3 = objc_msgSend_displayStringWithCalculationEngine_forTable_andCellID_(self, a2, 0, v8, 0x7FFF7FFFFFFFLL);
  v6 = objc_msgSend_stringWithFormat_(v2, v4, @"TSCEWarning: %@", v5, v3);

  return v6;
}

+ (void)reportWarningInContext:(id)context warningType:(int64_t)type
{
  contextCopy = context;
  if (objc_msgSend_shouldReportWarnings(contextCopy, v6, v7, v8))
  {
    v11 = objc_msgSend_warningWithType_(self, v9, type, v10);
    objc_msgSend_reportWarning_(contextCopy, v12, v11, v13);
  }

  objc_msgSend_setHasWarnings_(contextCopy, v9, 1, v10);
}

+ (void)reportNonNumericCellWarningInContext:(id)context
{
  contextCopy = context;
  if (objc_msgSend_shouldReportWarnings(contextCopy, v4, v5, v6))
  {
    v10 = objc_msgSend_warningForNonNumericCell(self, v7, v8, v9);
    objc_msgSend_reportWarning_(contextCopy, v11, v10, v12);
  }

  objc_msgSend_setHasWarnings_(contextCopy, v7, 1, v9);
}

+ (void)reportMonthOutOfRangeWarningInContext:(id)context
{
  contextCopy = context;
  if (objc_msgSend_shouldReportWarnings(contextCopy, v4, v5, v6))
  {
    v10 = objc_msgSend_warningForMonthOutOfRange(self, v7, v8, v9);
    objc_msgSend_reportWarning_(contextCopy, v11, v10, v12);
  }

  objc_msgSend_setHasWarnings_(contextCopy, v7, 1, v9);
}

+ (void)reportDayOutOfRangeWarningInContext:(id)context
{
  contextCopy = context;
  if (objc_msgSend_shouldReportWarnings(contextCopy, v4, v5, v6))
  {
    v10 = objc_msgSend_warningForDayOutOfRange(self, v7, v8, v9);
    objc_msgSend_reportWarning_(contextCopy, v11, v10, v12);
  }

  objc_msgSend_setHasWarnings_(contextCopy, v7, 1, v9);
}

+ (void)reportBoolToNumberConversionWarningInContext:(id)context
{
  contextCopy = context;
  if (objc_msgSend_shouldReportWarnings(contextCopy, v4, v5, v6))
  {
    v10 = objc_msgSend_warningForBoolToNumberConversion(self, v7, v8, v9);
    objc_msgSend_reportWarning_(contextCopy, v11, v10, v12);
  }

  objc_msgSend_setHasWarnings_(contextCopy, v7, 1, v9);
}

+ (void)reportLossOfUnitsWarningInContext:(id)context
{
  contextCopy = context;
  if (objc_msgSend_shouldReportWarnings(contextCopy, v4, v5, v6))
  {
    v10 = objc_msgSend_warningForLossOfUnits(self, v7, v8, v9);
    objc_msgSend_reportWarning_(contextCopy, v11, v10, v12);
  }

  objc_msgSend_setHasWarnings_(contextCopy, v7, 1, v9);
}

+ (void)reportAutomaticUnitConversionWarningInContext:(id)context
{
  contextCopy = context;
  if (objc_msgSend_shouldReportWarnings(contextCopy, v4, v5, v6))
  {
    v10 = objc_msgSend_warningForAutomaticUnitConversion(self, v7, v8, v9);
    objc_msgSend_reportWarning_(contextCopy, v11, v10, v12);
  }

  objc_msgSend_setHasWarnings_(contextCopy, v7, 1, v9);
}

+ (id)warningForComparisonWithLeftType:(char)type rightType:(char)rightType
{
  rightTypeCopy = rightType;
  typeCopy = type;
  v6 = objc_msgSend_warningWithType_(self, a2, 101, rightType);
  v9 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, typeCopy, v8);
  objc_msgSend_setNumber_forKey_(v6, v10, v9, @"TSCEArgument1Key");

  v13 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v11, rightTypeCopy, v12);
  objc_msgSend_setNumber_forKey_(v6, v14, v13, @"TSCEArgument2Key");

  return v6;
}

+ (void)reportComparisonWarningInContext:(id)context leftType:(char)type rightType:(char)rightType
{
  rightTypeCopy = rightType;
  typeCopy = type;
  contextCopy = context;
  if (objc_msgSend_shouldReportWarnings(contextCopy, v8, v9, v10))
  {
    v13 = objc_msgSend_warningForComparisonWithLeftType_rightType_(self, v11, typeCopy, rightTypeCopy);
    objc_msgSend_reportWarning_(contextCopy, v14, v13, v15);
  }

  objc_msgSend_setHasWarnings_(contextCopy, v11, 1, v12);
}

+ (id)warningFor3DReferenceFormula:(id)formula
{
  v3 = objc_msgSend_warningWithType_originalFormula_(self, a2, 1, formula);

  return v3;
}

+ (id)warningForArrayedFormula:(id)formula
{
  v3 = objc_msgSend_warningWithType_originalFormula_(self, a2, 2, formula);

  return v3;
}

+ (id)warningForDifferentBehaviorForFunctionFormula:(id)formula originalFormula:(id)originalFormula
{
  v4 = objc_msgSend_warningWithType_originalFormula_supplementaryText_(self, a2, 3, originalFormula, formula);

  return v4;
}

+ (id)warningForErrorTokenFormula:(id)formula
{
  v3 = objc_msgSend_warningWithType_originalFormula_(self, a2, 4, formula);

  return v3;
}

+ (id)warningForExternalReferenceFormula:(id)formula
{
  v3 = objc_msgSend_warningWithType_originalFormula_(self, a2, 5, formula);

  return v3;
}

+ (id)warningForNaturalLanguageFormula:(id)formula
{
  v3 = objc_msgSend_warningWithType_originalFormula_(self, a2, 6, formula);

  return v3;
}

+ (id)warningForReferenceOutOfBoundsFormula:(id)formula
{
  v3 = objc_msgSend_warningWithType_originalFormula_(self, a2, 7, formula);

  return v3;
}

+ (id)warningForSharedFormulaBaseNotFoundFormula:(id)formula
{
  v3 = objc_msgSend_warningWithType_originalFormula_(self, a2, 8, formula);

  return v3;
}

+ (id)warningForUnknownName:(id)name originalFormula:(id)formula
{
  v4 = objc_msgSend_warningWithType_originalFormula_supplementaryText_(self, a2, 9, formula, name);

  return v4;
}

+ (id)warningForUnsupportedFormula:(id)formula
{
  v3 = objc_msgSend_warningWithType_originalFormula_(self, a2, 10, formula);

  return v3;
}

+ (id)warningForUnsupportedFunction:(id)function originalFormula:(id)formula
{
  v4 = objc_msgSend_warningWithType_originalFormula_supplementaryText_(self, a2, 11, formula, function);

  return v4;
}

+ (id)warningForUnsupportedNameFormula:(id)formula originalFormula:(id)originalFormula
{
  v4 = objc_msgSend_warningWithType_originalFormula_supplementaryText_(self, a2, 12, originalFormula, formula);

  return v4;
}

+ (id)warningForTransposedWithoutIssues:(id)issues
{
  v3 = objc_msgSend_warningWithType_originalFormula_(self, a2, 13, issues);

  return v3;
}

+ (id)warningForTransposedWithIssues:(id)issues
{
  v3 = objc_msgSend_warningWithType_originalFormula_(self, a2, 14, issues);

  return v3;
}

+ (id)warningForArrayModeWarning:(id)warning
{
  v3 = objc_msgSend_warningWithType_originalFormula_(self, a2, 32, warning);

  return v3;
}

+ (id)warningForFormulaReplacedForExcelCompat:(id)compat originalFormula:(id)formula
{
  v4 = objc_msgSend_warningWithType_originalFormula_supplementaryText_(self, a2, 17, formula, compat);

  return v4;
}

+ (id)warningForUnsupportedDataFormat:(id)format
{
  v3 = objc_msgSend_warningWithType_originalDataFormat_(self, a2, 30, format);

  return v3;
}

+ (id)loadFromArchive:(const void *)archive
{
  v6 = objc_msgSend_warningTypePrunedToThisVersion_(self, a2, *(archive + 14), v3);
  if (v6)
  {
    v12 = objc_msgSend_warningWithType_(self, v7, v6, v8);
    v13 = *(archive + 8);
    if (v13 >= 1)
    {
      v14 = 8;
      while (1)
      {
        v15 = *(*(archive + 5) + v14);
        v19 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v9, *(v15 + 24) & 0xFFFFFFFFFFFFFFFELL, v11);
        v20 = *(v15 + 16);
        if ((v20 & 2) != 0)
        {
          break;
        }

        if ((v20 & 4) != 0)
        {
          v21 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v16, v17, v18, *(v15 + 40));
          objc_msgSend_setNumber_forKey_(v12, v22, v21, v19);
LABEL_8:
        }

        v14 += 8;
        if (!--v13)
        {
          goto LABEL_10;
        }
      }

      v21 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v16, *(v15 + 32) & 0xFFFFFFFFFFFFFFFELL, v18);
      objc_msgSend_setString_forKey_(v12, v23, v21, v19);
      goto LABEL_8;
    }

LABEL_10:
    objc_msgSend__calculatehashValue(v12, v9, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)saveToArchive:(void *)archive
{
  v64 = *MEMORY[0x277D85DE8];
  warningType = self->_warningType;
  *(archive + 4) |= 2u;
  *(archive + 14) = warningType;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v6 = self->_warningInfoDict;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v57, v63, 16);
  if (v10)
  {
    v11 = *v58;
    do
    {
      v12 = 0;
      do
      {
        if (*v58 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v57 + 1) + 8 * v12);
        v17 = objc_msgSend_objectForKey_(self->_warningInfoDict, v8, v13, v9, v57);
        if (!v17)
        {
          goto LABEL_19;
        }

        v18 = *(archive + 5);
        if (!v18)
        {
          goto LABEL_12;
        }

        v19 = *(archive + 8);
        v20 = *v18;
        if (v19 >= *v18)
        {
          if (v20 == *(archive + 9))
          {
LABEL_12:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
            v18 = *(archive + 5);
            v20 = *v18;
          }

          *v18 = v20 + 1;
          v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::WarningArchive_WarningDictionaryEntry>(*(archive + 3));
          v22 = *(archive + 8);
          v23 = *(archive + 5) + 8 * v22;
          *(archive + 8) = v22 + 1;
          *(v23 + 8) = v21;
          goto LABEL_14;
        }

        *(archive + 8) = v19 + 1;
        v21 = *&v18[2 * v19 + 2];
LABEL_14:
        v24 = objc_msgSend_tsp_protobufString(v13, v14, v15, v16);
        *(v21 + 16) |= 1u;
        sub_22108CCD0(__p, v24);
        google::protobuf::internal::ArenaStringPtr::Set();
        if (v62 < 0)
        {
          operator delete(__p[0]);
        }

        v28 = objc_msgSend_number(v17, v25, v26, v27);
        v29 = v28 == 0;

        if (!v29)
        {
          v33 = objc_msgSend_number(v17, v30, v31, v32);
          objc_msgSend_doubleValue(v33, v34, v35, v36);
          *(v21 + 16) |= 4u;
          *(v21 + 40) = v37;
LABEL_18:

          goto LABEL_19;
        }

        v38 = objc_msgSend_string(v17, v30, v31, v32);
        v39 = v38 == 0;

        if (!v39)
        {
          v33 = objc_msgSend_string(v17, v40, v41, v42);
          v46 = objc_msgSend_tsp_protobufString(v33, v43, v44, v45);
          *(v21 + 16) |= 2u;
          sub_22108CCD0(__p, v46);
          google::protobuf::internal::ArenaStringPtr::Set();
          if (v62 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_18;
        }

        v47 = MEMORY[0x277D81150];
        v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSCEWarning saveToArchive:]", v42);
        v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEWarning.mm", v50);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v52, v48, v51, 747, 0, "TSCEWarningValue contains neither string nor number");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55);
LABEL_19:

        ++v12;
      }

      while (v10 != v12);
      v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v57, v63, 16);
      v10 = v56;
    }

    while (v56);
  }
}

@end