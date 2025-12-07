@interface TSTImportWarningSet
+ (id)cellDiffClearingAllWarningsWithContext:(id)context;
+ (id)emptyWarningSet;
+ (id)warningSetFor3DReferenceFormula:(id)formula;
+ (id)warningSetForArrayModeWarning:(id)warning;
+ (id)warningSetForArrayedFormula:(id)formula;
+ (id)warningSetForCondFormatAboveAvgEqualAvg;
+ (id)warningSetForCondFormatAboveAvgStdDev;
+ (id)warningSetForCondFormatComplexFormula;
+ (id)warningSetForCondFormatContainsErrors;
+ (id)warningSetForCondFormatExpr;
+ (id)warningSetForCondFormatNotContainsErrors;
+ (id)warningSetForCondFormatParamatersNotAllTheSame;
+ (id)warningSetForCondFormatStopIfTrue;
+ (id)warningSetForCondFormatUnsupportedOperator;
+ (id)warningSetForCondFormatUnsupportedStyling;
+ (id)warningSetForCondFormatUnsupportedTimePeriod;
+ (id)warningSetForDifferentBehaviorForFunctionFormula:(id)formula originalFormula:(id)originalFormula;
+ (id)warningSetForDurationFormatRangeChanged;
+ (id)warningSetForErrorTokenFormula:(id)formula;
+ (id)warningSetForExternalReferenceFormula:(id)formula;
+ (id)warningSetForFilteredColumnFormulaNotCopied;
+ (id)warningSetForFormulaReplacedForExcelCompat:(id)compat originalFormula:(id)formula;
+ (id)warningSetForNaturalLanguageFormula:(id)formula;
+ (id)warningSetForReferenceOutOfBoundsFormula:(id)formula;
+ (id)warningSetForSharedFormulaBaseNotFoundFormula:(id)formula;
+ (id)warningSetForTransposeUnmodifiedWithIssues;
+ (id)warningSetForTransposedWithIssues:(id)issues;
+ (id)warningSetForTransposedWithoutIssues:(id)issues;
+ (id)warningSetForUnknownName:(id)name originalFormula:(id)formula;
+ (id)warningSetForUnsupportedCondFormat;
+ (id)warningSetForUnsupportedDataFormat:(id)format;
+ (id)warningSetForUnsupportedFormula:(id)formula;
+ (id)warningSetForUnsupportedFunction:(id)function originalFormula:(id)formula;
+ (id)warningSetForUnsupportedNameFormula:(id)formula originalFormula:(id)originalFormula;
+ (id)warningSetForWarning:(id)warning;
+ (id)warningSetForWarnings:(id)warnings;
- (BOOL)areAnySet;
- (BOOL)containsWarningOfType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)cellDiffClearingWarningsWithContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (id)individualWarnings;
- (id)initFromArchive:(const void *)archive;
- (id)localizedWarningStringsForCalcEngine:(id)engine forTable:(TSKUIDStruct)table;
- (id)sortedWarnings;
- (id)warningSetByAddingWarningsFromSet:(id)set;
- (id)warningSetByRemovingWarningsOfTypes:(id)types;
- (int)TSTImportFormulaWarningTypeToArchive:(int64_t)archive;
- (int64_t)TSTImportFormulaWarningTypeFromArchive:(int)archive;
- (unint64_t)hash;
- (void)addWarning:(id)warning;
- (void)removeWarning:(id)warning;
- (void)saveToArchive:(void *)archive;
@end

@implementation TSTImportWarningSet

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_warnings;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v17, v21, 16);
  if (v10)
  {
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = objc_msgSend_copy(*(*(&v17 + 1) + 8 * v12), v7, v8, v9, v17);
        objc_msgSend_addWarning_(v4, v14, v13, v15);

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v17, v21, 16);
    }

    while (v10);
  }

  *(v4 + 24) = self->_cachedHashVal;
  *(v4 + 8) = self->_cachedHashValValid;
  return v4;
}

- (BOOL)areAnySet
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_warnings;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v11, v15, 16);
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v2);
        }

        if (objc_msgSend_warningType(*(*(&v11 + 1) + 8 * i), v4, v5, v6, v11))
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v11, v15, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v9 = objc_msgSend_hash(self, v6, v7, v8);
    if (v9 == objc_msgSend_hash(v5, v10, v11, v12))
    {
      v16 = objc_msgSend_warnings(self, v13, v14, v15);
      v23 = objc_msgSend_warnings(v5, v17, v18, v19);
      if (v16 == v23)
      {
        isEqual = 1;
      }

      else
      {
        v24 = objc_msgSend_warnings(self, v20, v21, v22);
        v28 = objc_msgSend_warnings(v5, v25, v26, v27);
        isEqual = objc_msgSend_isEqual_(v24, v29, v28, v30);
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

- (unint64_t)hash
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_cachedHashValValid)
  {
    return self->_cachedHashVal;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_warnings;
  v3 = 0;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v13, v17, 16);
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
          objc_enumerationMutation(v4);
        }

        v3 += objc_msgSend_hash(*(*(&v13 + 1) + 8 * v11++), v6, v7, v8, v13);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v13, v17, 16);
    }

    while (v9);
  }

  self->_cachedHashVal = v3;
  self->_cachedHashValValid = 1;
  return v3;
}

+ (id)warningSetForWarning:(id)warning
{
  warningCopy = warning;
  v4 = objc_opt_new();
  objc_msgSend_addWarning_(v4, v5, warningCopy, v6);

  return v4;
}

+ (id)emptyWarningSet
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (BOOL)containsWarningOfType:(int64_t)type
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_warnings;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v14, v18, 16);
  if (v9)
  {
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v4);
        }

        if (objc_msgSend_warningType(*(*(&v14 + 1) + 8 * i), v6, v7, v8, v14) == type)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v14, v18, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)addWarning:(id)warning
{
  warningCopy = warning;
  if (warningCopy)
  {
    warnings = self->_warnings;
    if (!warnings)
    {
      v7 = objc_opt_new();
      v8 = self->_warnings;
      self->_warnings = v7;

      warnings = self->_warnings;
    }

    objc_msgSend_addObject_(warnings, v4, warningCopy, v5);
  }

  self->_cachedHashValValid = 0;
}

- (void)removeWarning:(id)warning
{
  warningCopy = warning;
  if (warningCopy)
  {
    objc_msgSend_removeObject_(self->_warnings, v4, warningCopy, v5);
  }

  self->_cachedHashValValid = 0;
}

+ (id)warningSetFor3DReferenceFormula:(id)formula
{
  v5 = objc_msgSend_warningFor3DReferenceFormula_(TSCEWarning, a2, formula, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForArrayedFormula:(id)formula
{
  v5 = objc_msgSend_warningForArrayedFormula_(TSCEWarning, a2, formula, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForDifferentBehaviorForFunctionFormula:(id)formula originalFormula:(id)originalFormula
{
  v5 = objc_msgSend_warningForDifferentBehaviorForFunctionFormula_originalFormula_(TSCEWarning, a2, formula, originalFormula);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForErrorTokenFormula:(id)formula
{
  v5 = objc_msgSend_warningForErrorTokenFormula_(TSCEWarning, a2, formula, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForExternalReferenceFormula:(id)formula
{
  v5 = objc_msgSend_warningForExternalReferenceFormula_(TSCEWarning, a2, formula, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForNaturalLanguageFormula:(id)formula
{
  v5 = objc_msgSend_warningForNaturalLanguageFormula_(TSCEWarning, a2, formula, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForReferenceOutOfBoundsFormula:(id)formula
{
  v5 = objc_msgSend_warningForReferenceOutOfBoundsFormula_(TSCEWarning, a2, formula, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForSharedFormulaBaseNotFoundFormula:(id)formula
{
  v5 = objc_msgSend_warningForSharedFormulaBaseNotFoundFormula_(TSCEWarning, a2, formula, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForUnknownName:(id)name originalFormula:(id)formula
{
  v5 = objc_msgSend_warningForUnknownName_originalFormula_(TSCEWarning, a2, name, formula);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForUnsupportedFormula:(id)formula
{
  v5 = objc_msgSend_warningForUnsupportedFormula_(TSCEWarning, a2, formula, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForUnsupportedFunction:(id)function originalFormula:(id)formula
{
  v5 = objc_msgSend_warningForUnsupportedFunction_originalFormula_(TSCEWarning, a2, function, formula);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForUnsupportedNameFormula:(id)formula originalFormula:(id)originalFormula
{
  v5 = objc_msgSend_warningForUnsupportedNameFormula_originalFormula_(TSCEWarning, a2, formula, originalFormula);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForTransposedWithoutIssues:(id)issues
{
  v5 = objc_msgSend_warningForTransposedWithoutIssues_(TSCEWarning, a2, issues, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForTransposedWithIssues:(id)issues
{
  v5 = objc_msgSend_warningForTransposedWithIssues_(TSCEWarning, a2, issues, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForTransposeUnmodifiedWithIssues
{
  v5 = objc_msgSend_warningForTransposeUnmodifiedWithIssues(TSCEWarning, a2, v2, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForArrayModeWarning:(id)warning
{
  v5 = objc_msgSend_warningForArrayModeWarning_(TSCEWarning, a2, warning, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForFilteredColumnFormulaNotCopied
{
  v5 = objc_msgSend_warningForFilteredColumnFormulaNotCopied(TSCEWarning, a2, v2, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForFormulaReplacedForExcelCompat:(id)compat originalFormula:(id)formula
{
  v5 = objc_msgSend_warningForFormulaReplacedForExcelCompat_originalFormula_(TSCEWarning, a2, compat, formula);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForCondFormatAboveAvgEqualAvg
{
  v5 = objc_msgSend_warningForCondFormatAboveAvgEqualAvg(TSCEWarning, a2, v2, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForCondFormatAboveAvgStdDev
{
  v5 = objc_msgSend_warningForCondFormatAboveAvgStdDev(TSCEWarning, a2, v2, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForCondFormatComplexFormula
{
  v5 = objc_msgSend_warningForCondFormatComplexFormula(TSCEWarning, a2, v2, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForCondFormatContainsErrors
{
  v5 = objc_msgSend_warningForCondFormatContainsErrors(TSCEWarning, a2, v2, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForCondFormatExpr
{
  v5 = objc_msgSend_warningForCondFormatExpr(TSCEWarning, a2, v2, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForCondFormatNotContainsErrors
{
  v5 = objc_msgSend_warningForCondFormatNotContainsErrors(TSCEWarning, a2, v2, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForCondFormatParamatersNotAllTheSame
{
  v5 = objc_msgSend_warningForCondFormatParamatersNotAllTheSame(TSCEWarning, a2, v2, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForCondFormatStopIfTrue
{
  v5 = objc_msgSend_warningForCondFormatStopIfTrue(TSCEWarning, a2, v2, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForCondFormatUnsupportedOperator
{
  v5 = objc_msgSend_warningForCondFormatUnsupportedOperator(TSCEWarning, a2, v2, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForCondFormatUnsupportedStyling
{
  v5 = objc_msgSend_warningForCondFormatUnsupportedStyling(TSCEWarning, a2, v2, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForCondFormatUnsupportedTimePeriod
{
  v5 = objc_msgSend_warningForCondFormatUnsupportedTimePeriod(TSCEWarning, a2, v2, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForUnsupportedCondFormat
{
  v5 = objc_msgSend_warningForUnsupportedCondFormat(TSCEWarning, a2, v2, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForDurationFormatRangeChanged
{
  v5 = objc_msgSend_warningForDurationFormatRangeChanged(TSCEWarning, a2, v2, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

+ (id)warningSetForUnsupportedDataFormat:(id)format
{
  v5 = objc_msgSend_warningForUnsupportedDataFormat_(TSCEWarning, a2, format, v3);
  v8 = objc_msgSend_warningSetForWarning_(self, v6, v5, v7);

  return v8;
}

- (id)individualWarnings
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_warnings;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v17, v21, 16);
  if (v10)
  {
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = objc_msgSend_warningSetForWarning_(TSTImportWarningSet, v8, *(*(&v17 + 1) + 8 * i), v9, v17);
        objc_msgSend_addObject_(v5, v14, v13, v15);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v17, v21, 16);
    }

    while (v10);
  }

  return v5;
}

- (id)localizedWarningStringsForCalcEngine:(id)engine forTable:(TSKUIDStruct)table
{
  v23 = *MEMORY[0x277D85DE8];
  tableCopy = table;
  engineCopy = engine;
  v6 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_warnings;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v17, v22, 16);
  if (v10)
  {
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = objc_msgSend_displayStringWithCalculationEngine_forTable_(*(*(&v17 + 1) + 8 * i), v9, engineCopy, &tableCopy, v17);
        objc_msgSend_addObject_(v6, v14, v13, v15);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v17, v22, 16);
    }

    while (v10);
  }

  return v6;
}

+ (id)warningSetForWarnings:(id)warnings
{
  v22 = *MEMORY[0x277D85DE8];
  warningsCopy = warnings;
  v8 = objc_msgSend_emptyWarningSet(self, v5, v6, v7);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = warningsCopy;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v17, v21, 16);
  if (v13)
  {
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_addWarning_(v8, v11, *(*(&v17 + 1) + 8 * i), v12, v17);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v17, v21, 16);
    }

    while (v13);
  }

  return v8;
}

- (id)warningSetByAddingWarningsFromSet:(id)set
{
  v29 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v11 = objc_msgSend_copy(self, v5, v6, v7);
  if (setCopy)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = objc_msgSend_warnings(setCopy, v8, v9, v10, 0);
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v24, v28, 16);
    if (v17)
    {
      v18 = *v25;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v12);
          }

          v20 = objc_msgSend_copy(*(*(&v24 + 1) + 8 * i), v14, v15, v16);
          objc_msgSend_addWarning_(v11, v21, v20, v22);
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v24, v28, 16);
      }

      while (v17);
    }
  }

  return v11;
}

- (id)cellDiffClearingWarningsWithContext:(id)context
{
  v4 = objc_alloc_init(TSTCellDiff);
  objc_msgSend_resetObject_forProperty_(v4, v5, self, 908);

  return v4;
}

+ (id)cellDiffClearingAllWarningsWithContext:(id)context
{
  v3 = objc_alloc_init(TSTCellDiff);
  v7 = objc_msgSend_emptyWarningSet(TSTImportWarningSet, v4, v5, v6);
  objc_msgSend_setObject_forProperty_(v3, v8, v7, 908);

  return v3;
}

- (id)warningSetByRemovingWarningsOfTypes:(id)types
{
  v44 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v7 = objc_msgSend_copy(self, v4, v5, v6);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = objc_msgSend_warnings(self, v8, v9, v10);
  obj = v11;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v38, v43, 16);
  if (v13)
  {
    v32 = *v39;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v39 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v16 = typesCopy;
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v34, v42, 16);
        if (v21)
        {
          v22 = *v35;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v35 != v22)
              {
                objc_enumerationMutation(v16);
              }

              v24 = *(*(&v34 + 1) + 8 * j);
              v25 = objc_msgSend_warningType(v15, v18, v19, v20);
              if (v25 == objc_msgSend_warningType(v24, v26, v27, v28))
              {
                objc_msgSend_removeWarning_(v7, v18, v15, v20);
              }
            }

            v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v34, v42, 16);
          }

          while (v21);
        }
      }

      v11 = obj;
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v38, v43, 16);
    }

    while (v13);
  }

  return v7;
}

- (int64_t)TSTImportFormulaWarningTypeFromArchive:(int)archive
{
  v3 = (archive - 1);
  if (v3 < 0xF)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

- (id)initFromArchive:(const void *)archive
{
  v5 = objc_msgSend_init(self, a2, archive, v3);
  v9 = v5;
  if (!v5)
  {
    return v9;
  }

  v10 = *(archive + 8);
  if (v10)
  {
    if (v10 >= 1)
    {
      v11 = 8;
      do
      {
        v12 = objc_msgSend_loadFromArchive_(TSCEWarning, v6, *(*(archive + 5) + v11), v8);
        objc_msgSend_addWarning_(v9, v13, v12, v14);

        v11 += 8;
        --v10;
      }

      while (v10);
    }

    return v9;
  }

  if ((*(archive + 16) & 2) != 0)
  {
    v15 = *(archive + 7);
    v16 = *(v15 + 16);
    if ((v16 & 4) != 0)
    {
      v17 = *(v15 + 40);
      if (v16)
      {
LABEL_10:
        v18 = objc_alloc(MEMORY[0x277CCACA8]);
        v21 = objc_msgSend_tsp_initWithProtobufString_(v18, v19, *(v15 + 24) & 0xFFFFFFFFFFFFFFFELL, v20);
        if ((*(v15 + 16) & 2) != 0)
        {
LABEL_11:
          v22 = objc_alloc(MEMORY[0x277CCACA8]);
          v25 = objc_msgSend_tsp_initWithProtobufString_(v22, v23, *(v15 + 32) & 0xFFFFFFFFFFFFFFFELL, v24);
          objc_msgSend_warningWithType_originalFormula_supplementaryText_(TSCEWarning, v26, v17, v21, v25);
          v27 = LABEL_15:;
          objc_msgSend_addWarning_(v9, v28, v27, v29);

          goto LABEL_16;
        }

LABEL_14:
        v25 = 0;
        objc_msgSend_warningWithType_originalFormula_supplementaryText_(TSCEWarning, v6, v17, v21, 0);
        goto LABEL_15;
      }
    }

    else
    {
      v17 = objc_msgSend_TSTImportFormulaWarningTypeFromArchive_(v5, v6, *(v15 + 44), v8);
      v16 = *(v15 + 16);
      if (v16)
      {
        goto LABEL_10;
      }
    }

    v21 = 0;
    if ((v16 & 2) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

LABEL_16:
  if (*(archive + 77) == 1)
  {
    v30 = objc_msgSend_warningForFilteredColumnFormulaNotCopied(TSCEWarning, v6, v7, v8);
    objc_msgSend_addWarning_(v9, v31, v30, v32);
  }

  if (*(archive + 64) == 1)
  {
    v33 = objc_msgSend_warningForCondFormatAboveAvgEqualAvg(TSCEWarning, v6, v7, v8);
    objc_msgSend_addWarning_(v9, v34, v33, v35);
  }

  if (*(archive + 65) == 1)
  {
    v36 = objc_msgSend_warningForCondFormatAboveAvgStdDev(TSCEWarning, v6, v7, v8);
    objc_msgSend_addWarning_(v9, v37, v36, v38);
  }

  if (*(archive + 66) == 1)
  {
    v39 = objc_msgSend_warningForCondFormatComplexFormula(TSCEWarning, v6, v7, v8);
    objc_msgSend_addWarning_(v9, v40, v39, v41);
  }

  if (*(archive + 67) == 1)
  {
    v42 = objc_msgSend_warningForCondFormatContainsErrors(TSCEWarning, v6, v7, v8);
    objc_msgSend_addWarning_(v9, v43, v42, v44);
  }

  if (*(archive + 68) == 1)
  {
    v45 = objc_msgSend_warningForCondFormatExpr(TSCEWarning, v6, v7, v8);
    objc_msgSend_addWarning_(v9, v46, v45, v47);
  }

  if (*(archive + 69) == 1)
  {
    v48 = objc_msgSend_warningForCondFormatNotContainsErrors(TSCEWarning, v6, v7, v8);
    objc_msgSend_addWarning_(v9, v49, v48, v50);
  }

  if (*(archive + 70) == 1)
  {
    v51 = objc_msgSend_warningForCondFormatParamatersNotAllTheSame(TSCEWarning, v6, v7, v8);
    objc_msgSend_addWarning_(v9, v52, v51, v53);
  }

  if (*(archive + 71) == 1)
  {
    v54 = objc_msgSend_warningForCondFormatStopIfTrue(TSCEWarning, v6, v7, v8);
    objc_msgSend_addWarning_(v9, v55, v54, v56);
  }

  if (*(archive + 72) == 1)
  {
    v57 = objc_msgSend_warningForCondFormatUnsupportedOperator(TSCEWarning, v6, v7, v8);
    objc_msgSend_addWarning_(v9, v58, v57, v59);
  }

  if (*(archive + 73) == 1)
  {
    v60 = objc_msgSend_warningForCondFormatUnsupportedStyling(TSCEWarning, v6, v7, v8);
    objc_msgSend_addWarning_(v9, v61, v60, v62);
  }

  if (*(archive + 74) == 1)
  {
    v63 = objc_msgSend_warningForCondFormatUnsupportedTimePeriod(TSCEWarning, v6, v7, v8);
    objc_msgSend_addWarning_(v9, v64, v63, v65);
  }

  if (*(archive + 76) == 1)
  {
    v66 = objc_msgSend_warningForUnsupportedCondFormat(TSCEWarning, v6, v7, v8);
    objc_msgSend_addWarning_(v9, v67, v66, v68);
  }

  if (*(archive + 78) == 1)
  {
    v69 = objc_msgSend_warningForDurationFormatRangeChanged(TSCEWarning, v6, v7, v8);
    objc_msgSend_addWarning_(v9, v70, v69, v71);
  }

  if (*(archive + 16))
  {
    v72 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v6, *(archive + 6) & 0xFFFFFFFFFFFFFFFELL, v8);
    v75 = objc_msgSend_warningForUnsupportedDataFormat_(TSCEWarning, v73, v72, v74);
    objc_msgSend_addWarning_(v9, v76, v75, v77);
  }

  return v9;
}

- (int)TSTImportFormulaWarningTypeToArchive:(int64_t)archive
{
  if ((archive - 1) < 0xF)
  {
    return archive;
  }

  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTImportWarningSet TSTImportFormulaWarningTypeToArchive:]", v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTImportWarningSet.mm", v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 567, 0, "Unhandled FormulaWarningType encountered while saving to archive.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277D81150];
  v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTImportWarningSet TSTImportFormulaWarningTypeToArchive:]", v16);
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTImportWarningSet.mm", v19);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v17, v20, 570, 0, "Unhandled FormulaWarningType encountered while saving to archive.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  return 0;
}

- (id)sortedWarnings
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_warnings;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v19, 16);
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_addObject_(v3, v6, *(*(&v15 + 1) + 8 * i), v7, v15);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v15, v19, 16);
    }

    while (v8);
  }

  v13 = objc_msgSend_sortedArrayUsingComparator_(v3, v11, &unk_2834B1A48, v12);

  return v13;
}

- (void)saveToArchive:(void *)archive
{
  v92 = *MEMORY[0x277D85DE8];
  objc_msgSend_sortedWarnings(self, a2, archive, v3);
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  obj = v86 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v85, v91, 16);
  if (!v8)
  {

    v83 = 0;
    v84 = 0;
    v82 = 0;
    goto LABEL_42;
  }

  v82 = 0;
  v83 = 0;
  v84 = 0;
  v9 = 0;
  v10 = *v86;
  v11 = 1;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v86 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v85 + 1) + 8 * i);
      v14 = *(archive + 5);
      if (!v14)
      {
        goto LABEL_11;
      }

      v15 = *(archive + 8);
      v16 = *v14;
      if (v15 < *v14)
      {
        *(archive + 8) = v15 + 1;
        objc_msgSend_saveToArchive_(v13, v6, *&v14[2 * v15 + 2], v7);
        goto LABEL_13;
      }

      if (v16 == *(archive + 9))
      {
LABEL_11:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
        v14 = *(archive + 5);
        v16 = *v14;
      }

      *v14 = v16 + 1;
      v20 = google::protobuf::Arena::CreateMaybeMessage<TSCE::WarningArchive>(*(archive + 3));
      v21 = *(archive + 8);
      v22 = *(archive + 5) + 8 * v21;
      *(archive + 8) = v21 + 1;
      *(v22 + 8) = v20;
      objc_msgSend_saveToArchive_(v13, v23, v20, v24);
LABEL_13:
      if (!v9)
      {
        v9 = objc_msgSend_warningType(v13, v17, v18, v19);
      }

      v25 = objc_msgSend_originalFormula(v13, v17, v18, v19);
      v26 = v25 == 0;

      if (!v26)
      {
        v30 = objc_msgSend_originalFormula(v13, v27, v28, v29);

        v34 = objc_msgSend_supplementaryText(v13, v31, v32, v33);

        v82 = v34;
        v84 = v30;
      }

      v35 = objc_msgSend_originalDataFormat(v13, v27, v28, v29);
      v36 = v35 == 0;

      if (!v36)
      {
        v38 = objc_msgSend_originalDataFormat(v13, v6, v37, v7);

        v83 = v38;
      }

      v11 &= (v9 - 18) < 0xE;
    }

    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v85, v91, 16);
  }

  while (v8);

  if (v9)
  {
    v41 = v11;
  }

  else
  {
    v41 = 1;
  }

  if ((v41 & 1) == 0)
  {
    *(archive + 4) |= 2u;
    v42 = *(archive + 7);
    if (!v42)
    {
      v43 = *(archive + 1);
      if (v43)
      {
        v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
      }

      v42 = google::protobuf::Arena::CreateMaybeMessage<TST::ImportWarningSetArchive_FormulaImportWarning>(v43);
      *(archive + 7) = v42;
    }

    if (objc_msgSend_p_isPersistedWithFormulaWarningTypeEnumeration_(self, v39, v9, v40))
    {
      v47 = objc_msgSend_TSTImportFormulaWarningTypeToArchive_(self, v44, v9, v46);
      v48 = v42[4] | 8;
      v42[4] = v48;
      v42[11] = v47;
    }

    else
    {
      v48 = v42[4] | 8;
      v42[4] = v48;
      v42[11] = 11;
      if (v9 == 16)
      {
        *(archive + 4) |= 0x8000u;
        *(archive + 77) = 1;
        v48 = v42[4];
      }

      else if (v9 == 32)
      {
        LODWORD(v9) = 0;
      }
    }

    v42[4] = v48 | 4;
    v42[10] = v9;
    v49 = objc_msgSend_tsp_protobufString(v84, v44, v45, v46);
    if (v49)
    {
      v42[4] |= 1u;
      sub_22108CCD0(__p, v49);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v90 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v39 = objc_msgSend_tsp_protobufString(v82, v49, v50, v51);
    if (v39)
    {
      v42[4] |= 2u;
      sub_22108CCD0(__p, v39);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v90 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

LABEL_42:
  if (objc_msgSend_containsWarningOfType_(self, v39, 18, v40))
  {
    *(archive + 4) |= 4u;
    *(archive + 64) = 1;
  }

  if (objc_msgSend_containsWarningOfType_(self, v52, 19, v53))
  {
    *(archive + 4) |= 8u;
    *(archive + 65) = 1;
  }

  if (objc_msgSend_containsWarningOfType_(self, v54, 20, v55))
  {
    *(archive + 4) |= 0x10u;
    *(archive + 66) = 1;
  }

  if (objc_msgSend_containsWarningOfType_(self, v56, 21, v57))
  {
    *(archive + 4) |= 0x20u;
    *(archive + 67) = 1;
  }

  if (objc_msgSend_containsWarningOfType_(self, v58, 22, v59))
  {
    *(archive + 4) |= 0x40u;
    *(archive + 68) = 1;
  }

  if (objc_msgSend_containsWarningOfType_(self, v60, 23, v61))
  {
    *(archive + 4) |= 0x80u;
    *(archive + 69) = 1;
  }

  if (objc_msgSend_containsWarningOfType_(self, v62, 24, v63))
  {
    *(archive + 4) |= 0x100u;
    *(archive + 70) = 1;
  }

  if (objc_msgSend_containsWarningOfType_(self, v64, 25, v65))
  {
    *(archive + 4) |= 0x200u;
    *(archive + 71) = 1;
  }

  if (objc_msgSend_containsWarningOfType_(self, v66, 26, v67))
  {
    *(archive + 4) |= 0x400u;
    *(archive + 72) = 1;
  }

  if (objc_msgSend_containsWarningOfType_(self, v68, 27, v69))
  {
    *(archive + 4) |= 0x800u;
    *(archive + 73) = 1;
  }

  if (objc_msgSend_containsWarningOfType_(self, v70, 28, v71))
  {
    *(archive + 4) |= 0x1000u;
    *(archive + 74) = 1;
  }

  if (objc_msgSend_containsWarningOfType_(self, v72, 29, v73))
  {
    *(archive + 4) |= 0x4000u;
    *(archive + 76) = 1;
  }

  if (objc_msgSend_containsWarningOfType_(self, v74, 31, v75))
  {
    *(archive + 4) |= 0x10000u;
    *(archive + 78) = 1;
  }

  v79 = objc_msgSend_tsp_protobufString(v83, v76, v77, v78);
  if (v79)
  {
    *(archive + 4) |= 1u;
    sub_22108CCD0(__p, v79);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v90 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

- (NSString)description
{
  v4 = objc_msgSend_descriptionWithObject_(MEMORY[0x277D811A8], a2, self, v2);
  v8 = objc_msgSend_localizedWarningStrings(self, v5, v6, v7);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_221592B34;
  v17[3] = &unk_2784671A0;
  v9 = v4;
  v18 = v9;
  objc_msgSend_enumerateObjectsUsingBlock_(v8, v10, v17, v11);

  v15 = objc_msgSend_descriptionString(v9, v12, v13, v14);

  return v15;
}

@end