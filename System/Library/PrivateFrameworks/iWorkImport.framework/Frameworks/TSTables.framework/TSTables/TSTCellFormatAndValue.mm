@interface TSTCellFormatAndValue
+ (id)cellDiffProperties;
+ (id)formatAndValueFromCell:(id)cell applySpareFormatOnly:(unsigned int)only;
+ (id)formatAndValueFromCell:(id)cell useAllSpareFormats:(BOOL)formats;
+ (id)formatAndValueFromCell:(id)cell useAllSpareFormats:(BOOL)formats forceNoContent:(BOOL)content;
+ (id)formatAndValueFromCell:(id)cell useAllSpareFormats:(BOOL)formats suppressApplyingValue:(BOOL)value;
+ (id)formatAndValueFromRichTextCell:(id)cell updatingStorageWithBlock:(id)block;
- (BOOL)hasStringContentMatchingCell:(id)cell;
- (NSString)stringValue;
- (TSUDecimal)numberOrCurrencyDecimalValue;
- (TSWPStorage)richTextOrErrorTextStorageValue;
- (id)cellValueWithLocale:(id)locale;
- (id)copyForApplyingNoContentWithSuppressApplyValue:(BOOL)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromCell:(id)cell useAllSpareFormats:(BOOL)formats forceNoContent:(BOOL)content suppressApplyValue:(BOOL)value applySpareFormatOnly:(unsigned int)only;
- (id)initFromPropertyCommandMessage:(const Message *)message unarchiver:(id)unarchiver;
- (id)objectByRemovingPropertiesInMap:(id)map addingPropertiesInMap:(id)inMap updateInverseResetPropertyMap:(id)propertyMap updateInverseSetPropertyMap:(id)setPropertyMap;
- (id)p_copyStorage:(id)storage;
- (id)p_formatForFormatType:(unsigned __int8)type;
- (void)applyToCell:(id)cell;
- (void)saveToPropertyCommandMessage:(Message *)message archiver:(id)archiver;
@end

@implementation TSTCellFormatAndValue

- (NSString)stringValue
{
  if (*(self + 8) != 3)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellFormatAndValue stringValue]", v2);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormatAndValue.mm", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 96, 0, "Getting a non-string value as string from a TSTCellFormatAndValue.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  }

  objValue = self->_objValue;

  return objValue;
}

- (TSWPStorage)richTextOrErrorTextStorageValue
{
  if ((*(self + 8) & 0xFE) != 8)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellFormatAndValue richTextOrErrorTextStorageValue]", v2);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormatAndValue.mm", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 102, 0, "Getting a non-rich-text/non-formula-error value as rich text from a TSTCellFormatAndValue.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  }

  objValue = self->_objValue;

  return objValue;
}

+ (id)formatAndValueFromCell:(id)cell useAllSpareFormats:(BOOL)formats
{
  formatsCopy = formats;
  cellCopy = cell;
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initFromCell_useAllSpareFormats_(v6, v7, cellCopy, formatsCopy);

  return v8;
}

+ (id)formatAndValueFromCell:(id)cell useAllSpareFormats:(BOOL)formats forceNoContent:(BOOL)content
{
  contentCopy = content;
  formatsCopy = formats;
  cellCopy = cell;
  v8 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_initFromCell_useAllSpareFormats_forceNoContent_suppressApplyValue_applySpareFormatOnly_(v8, v9, cellCopy, formatsCopy, contentCopy, 0, 0);

  return v10;
}

+ (id)formatAndValueFromCell:(id)cell useAllSpareFormats:(BOOL)formats suppressApplyingValue:(BOOL)value
{
  valueCopy = value;
  formatsCopy = formats;
  cellCopy = cell;
  v8 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_initFromCell_useAllSpareFormats_forceNoContent_suppressApplyValue_applySpareFormatOnly_(v8, v9, cellCopy, formatsCopy, 0, valueCopy, 0);

  return v10;
}

+ (id)formatAndValueFromRichTextCell:(id)cell updatingStorageWithBlock:(id)block
{
  cellCopy = cell;
  blockCopy = block;
  if (objc_msgSend_valueType(cellCopy, v7, v8, v9) != 9)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "+[TSTCellFormatAndValue formatAndValueFromRichTextCell:updatingStorageWithBlock:]", v12);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormatAndValue.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 121, 0, "expected rich text cell when creating format and value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  v22 = objc_msgSend_copy(cellCopy, v10, v11, v12);
  v26 = objc_msgSend_richTextValue(v22, v23, v24, v25);
  v30 = objc_msgSend_context(v26, v27, v28, v29);
  v33 = objc_msgSend_copyWithContext_(v26, v31, v30, v32);

  blockCopy[2](blockCopy, v33);
  objc_msgSend_setParentInfo_(v33, v34, 0, v35);
  objc_msgSend_setRichTextValue_(v22, v36, v33, v37);
  v39 = objc_msgSend_formatAndValueFromCell_useAllSpareFormats_(TSTCellFormatAndValue, v38, v22, 0);

  return v39;
}

+ (id)formatAndValueFromCell:(id)cell applySpareFormatOnly:(unsigned int)only
{
  v4 = *&only;
  cellCopy = cell;
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initFromCell_useAllSpareFormats_forceNoContent_suppressApplyValue_applySpareFormatOnly_(v6, v7, cellCopy, 0, 0, 0, v4);

  return v8;
}

- (id)initFromCell:(id)cell useAllSpareFormats:(BOOL)formats forceNoContent:(BOOL)content suppressApplyValue:(BOOL)value applySpareFormatOnly:(unsigned int)only
{
  valueCopy = value;
  contentCopy = content;
  formatsCopy = formats;
  cellCopy = cell;
  v86.receiver = self;
  v86.super_class = TSTCellFormatAndValue;
  v13 = [(TSTCellFormatAndValue *)&v86 init];
  v17 = v13;
  v18 = v13;
  if (v13)
  {
    v13->_suppressApplyValue = valueCopy;
    v13->_spareFormatType = 0;
    if (only)
    {
      if (formatsCopy)
      {
        v19 = MEMORY[0x277D81150];
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTCellFormatAndValue initFromCell:useAllSpareFormats:forceNoContent:suppressApplyValue:applySpareFormatOnly:]", v16);
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormatAndValue.mm", v22);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 157, 0, "useAllSpareFormats and spareFormatOnly are mutually exclusive!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
      }

      else
      {
        v13->_applySpareFormatOnly = 1;
        v13->_spareFormatType = only;
      }
    }

    if (v18->_applySpareFormatOnly || contentCopy || valueCopy)
    {
      *(v18 + 8) = 0;
      goto LABEL_33;
    }

    v28 = objc_msgSend_valueType(cellCopy, v14, v15, v16);
    *(v18 + 8) = v28;
    if (v28 <= 5)
    {
      if (v28 > 3)
      {
        if (v28 == 4)
        {
          v31 = MEMORY[0x277D81150];
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTCellFormatAndValue initFromCell:useAllSpareFormats:forceNoContent:suppressApplyValue:applySpareFormatOnly:]", v16);
          v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormatAndValue.mm", v34);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v36, v32, v35, 185, 0, "deprecated cell value type found");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39);
          goto LABEL_33;
        }

        v30 = objc_msgSend_dateValue(cellCopy, v14, v15, v16);
      }

      else
      {
        if (v28 == 2)
        {
          v29 = objc_msgSend_numberDecimalValue(cellCopy, v14, v15, v16);
LABEL_25:
          v18->_decimalValue._decimal.w[0] = v29;
          v18->_decimalValue._decimal.w[1] = v14;
          goto LABEL_33;
        }

        if (v28 != 3)
        {
          goto LABEL_33;
        }

        v30 = objc_msgSend_stringValue(cellCopy, v14, v15, v16);
      }
    }

    else
    {
      if (v28 <= 7)
      {
        if (v28 == 6)
        {
          v18->_BOOLValue = objc_msgSend_BOOLValue(cellCopy, v14, v15, v16);
        }

        else
        {
          objc_msgSend_durationTimeIntervalValue(cellCopy, v14, v15, v16);
          TSUDecimal::operator=();
        }

        goto LABEL_33;
      }

      if (v28 != 8)
      {
        if (v28 != 9)
        {
          if (v28 != 10)
          {
            goto LABEL_33;
          }

          v29 = objc_msgSend_currencyDecimalValue(cellCopy, v14, v15, v16);
          goto LABEL_25;
        }

        v41 = objc_msgSend_richTextValue(cellCopy, v14, v15, v16);
        v44 = objc_msgSend_p_copyStorage_(v18, v42, v41, v43);
        objc_msgSend_setParentInfo_(v44, v45, 0, v46);
        objc_storeStrong(&v17->_objValue, v44);
        v50 = objc_msgSend_richTextStorageForLayout(cellCopy, v47, v48, v49);
        if (v50 != v41)
        {
          objc_storeStrong(&v17->_formattedRichTextStorage, v50);
        }

LABEL_33:
        if (*(v18 + 8))
        {
          v51 = objc_msgSend_formattedValue(cellCopy, v14, v15, v16);
          formattedValue = v18->_formattedValue;
          v18->_formattedValue = v51;
        }

        v18->_useAllSpareFormats = formatsCopy;
        v18->_explicitFlags = objc_msgSend_explicitFormatFlags(cellCopy, v14, v15, v16);
        if (v18->_applySpareFormatOnly)
        {
          IsExplicit = 0;
        }

        else if (!contentCopy || (IsExplicit = objc_msgSend_currentFormatIsExplicit(cellCopy, v53, v54, v55)) != 0)
        {
          IsExplicit = objc_msgSend_cellFormatKind(cellCopy, v53, v54, v55);
        }

        v18->_cellFormatKind = IsExplicit;
        if (v18->_useAllSpareFormats)
        {
          v57 = objc_msgSend_numberFormat(cellCopy, v53, v54, v55);
          numberFormat = v18->_numberFormat;
          v18->_numberFormat = v57;

          v62 = objc_msgSend_currencyFormat(cellCopy, v59, v60, v61);
          currencyFormat = v18->_currencyFormat;
          v18->_currencyFormat = v62;

          v67 = objc_msgSend_dateFormat(cellCopy, v64, v65, v66);
          dateFormat = v18->_dateFormat;
          v18->_dateFormat = v67;

          v72 = objc_msgSend_durationFormat(cellCopy, v69, v70, v71);
          durationFormat = v18->_durationFormat;
          v18->_durationFormat = v72;

          v77 = objc_msgSend_textFormat(cellCopy, v74, v75, v76);
          textFormat = v18->_textFormat;
          v18->_textFormat = v77;

          v82 = objc_msgSend_BOOLeanFormat(cellCopy, v79, v80, v81);
        }

        else
        {
          if (v18->_applySpareFormatOnly)
          {
            IsExplicit = sub_22121E75C(v18->_spareFormatType);
          }

          if (IsExplicit <= 3)
          {
            switch(IsExplicit)
            {
              case 1:
                v82 = objc_msgSend_numberFormat(cellCopy, v53, v54, v55);
                v83 = 80;
                break;
              case 2:
                v82 = objc_msgSend_currencyFormat(cellCopy, v53, v54, v55);
                v83 = 88;
                break;
              case 3:
                v82 = objc_msgSend_dateFormat(cellCopy, v53, v54, v55);
                v83 = 96;
                break;
              default:
                goto LABEL_44;
            }

            goto LABEL_43;
          }

          if (IsExplicit == 4)
          {
            v82 = objc_msgSend_durationFormat(cellCopy, v53, v54, v55);
            v83 = 104;
            goto LABEL_43;
          }

          if (IsExplicit == 5)
          {
            v82 = objc_msgSend_textFormat(cellCopy, v53, v54, v55);
            v83 = 120;
            goto LABEL_43;
          }

          if (IsExplicit != 6)
          {
            goto LABEL_44;
          }

          v82 = objc_msgSend_BOOLeanFormat(cellCopy, v53, v54, v55);
        }

        v83 = 112;
LABEL_43:
        v84 = *(&v18->super.isa + v83);
        *(&v18->super.isa + v83) = v82;

        goto LABEL_44;
      }

      v30 = objc_msgSend_formulaSyntaxError(cellCopy, v14, v15, v16);
    }

    objValue = v18->_objValue;
    v18->_objValue = v30;

    goto LABEL_33;
  }

LABEL_44:

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TSTCellFormatAndValue);
  v8 = v4;
  *(v4 + 8) = *(self + 8);
  v4->_useAllSpareFormats = self->_useAllSpareFormats;
  v4->_suppressApplyValue = self->_suppressApplyValue;
  v4->_spareFormatType = self->_spareFormatType;
  v4->_applySpareFormatOnly = self->_applySpareFormatOnly;
  v9 = *(self + 8);
  if (v9 <= 5)
  {
    if (*(self + 8) > 3u)
    {
      if (v9 == 4)
      {
        v18 = MEMORY[0x277D81150];
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTCellFormatAndValue copyWithZone:]", v7);
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormatAndValue.mm", v21);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 297, 0, "deprecated cell value type found");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
        goto LABEL_23;
      }

      if (v9 == 5)
      {
        v10 = objc_msgSend_dateValue(self, v5, v6, v7);
        v14 = objc_msgSend_copy(v10, v15, v16, v17);
        goto LABEL_21;
      }
    }

    else
    {
      if (v9 == 2)
      {
LABEL_16:
        v4->_decimalValue = self->_decimalValue;
        goto LABEL_23;
      }

      if (v9 == 3)
      {
        v10 = objc_msgSend_stringValue(self, v5, v6, v7);
        v14 = objc_msgSend_copy(v10, v11, v12, v13);
        goto LABEL_21;
      }
    }
  }

  else
  {
    if (*(self + 8) > 7u)
    {
      if (v9 == 8)
      {
        v10 = objc_msgSend_richTextOrErrorTextStorageValue(self, v5, v6, v7);
        v30 = objc_msgSend_richTextOrErrorTextStorageValue(self, v27, v28, v29);
        v34 = objc_msgSend_context(v30, v31, v32, v33);
        v37 = objc_msgSend_copyWithContext_(v10, v35, v34, v36);
        objValue = v8->_objValue;
        v8->_objValue = v37;

LABEL_22:
        goto LABEL_23;
      }

      if (v9 != 9)
      {
        if (v9 != 10)
        {
          goto LABEL_23;
        }

        goto LABEL_16;
      }

      v10 = objc_msgSend_richTextOrErrorTextStorageValue(self, v5, v6, v7);
      v14 = objc_msgSend_p_copyStorage_(v8, v39, v10, v40);
LABEL_21:
      v41 = v8->_objValue;
      v8->_objValue = v14;

      goto LABEL_22;
    }

    if (v9 == 6)
    {
      v4->_BOOLValue = self->_BOOLValue;
      goto LABEL_23;
    }

    if (v9 == 7)
    {
      goto LABEL_16;
    }
  }

LABEL_23:
  v42 = objc_msgSend_copy(self->_formattedValue, v5, v6, v7);
  formattedValue = v8->_formattedValue;
  v8->_formattedValue = v42;

  formattedRichTextStorage = self->_formattedRichTextStorage;
  v48 = objc_msgSend_context(formattedRichTextStorage, v45, v46, v47);
  v51 = objc_msgSend_copyWithContext_(formattedRichTextStorage, v49, v48, v50);
  v52 = v8->_formattedRichTextStorage;
  v8->_formattedRichTextStorage = v51;

  v8->_explicitFlags = self->_explicitFlags;
  v8->_cellFormatKind = self->_cellFormatKind;
  v56 = objc_msgSend_copy(self->_numberFormat, v53, v54, v55);
  numberFormat = v8->_numberFormat;
  v8->_numberFormat = v56;

  v61 = objc_msgSend_copy(self->_currencyFormat, v58, v59, v60);
  currencyFormat = v8->_currencyFormat;
  v8->_currencyFormat = v61;

  v66 = objc_msgSend_copy(self->_dateFormat, v63, v64, v65);
  dateFormat = v8->_dateFormat;
  v8->_dateFormat = v66;

  v71 = objc_msgSend_copy(self->_durationFormat, v68, v69, v70);
  durationFormat = v8->_durationFormat;
  v8->_durationFormat = v71;

  v76 = objc_msgSend_copy(self->_BOOLeanFormat, v73, v74, v75);
  BOOLeanFormat = v8->_BOOLeanFormat;
  v8->_BOOLeanFormat = v76;

  v81 = objc_msgSend_copy(self->_textFormat, v78, v79, v80);
  textFormat = v8->_textFormat;
  v8->_textFormat = v81;

  return v8;
}

- (id)copyForApplyingNoContentWithSuppressApplyValue:(BOOL)value
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = v5;
  *(v5 + 10) = value;
  *(v5 + 8) = 0;
  *(v5 + 9) = self->_useAllSpareFormats;
  *(v5 + 36) = self->_explicitFlags;
  *(v5 + 74) = self->_cellFormatKind;
  *(v5 + 11) = self->_applySpareFormatOnly;
  *(v5 + 3) = self->_spareFormatType;
  numberFormat = self->_numberFormat;
  if (numberFormat)
  {
    objc_storeStrong(v5 + 10, numberFormat);
  }

  currencyFormat = self->_currencyFormat;
  if (currencyFormat)
  {
    objc_storeStrong(v6 + 11, currencyFormat);
  }

  dateFormat = self->_dateFormat;
  if (dateFormat)
  {
    objc_storeStrong(v6 + 12, dateFormat);
  }

  durationFormat = self->_durationFormat;
  if (durationFormat)
  {
    objc_storeStrong(v6 + 13, durationFormat);
  }

  BOOLeanFormat = self->_BOOLeanFormat;
  if (BOOLeanFormat)
  {
    objc_storeStrong(v6 + 14, BOOLeanFormat);
  }

  textFormat = self->_textFormat;
  if (textFormat)
  {
    objc_storeStrong(v6 + 15, textFormat);
  }

  return v6;
}

- (id)p_copyStorage:(id)storage
{
  storageCopy = storage;
  v7 = objc_msgSend_context(storageCopy, v4, v5, v6);
  v10 = objc_msgSend_copyWithContext_(storageCopy, v8, v7, v9);

  v14 = objc_msgSend_parentInfo(storageCopy, v11, v12, v13);
  objc_msgSend_setParentInfo_(v10, v15, v14, v16);

  return v10;
}

- (TSUDecimal)numberOrCurrencyDecimalValue
{
  if ((*(self + 8) | 8) != 0xA)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellFormatAndValue numberOrCurrencyDecimalValue]", v2);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormatAndValue.mm", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 384, 0, "Getting a non-double value as double from a TSTCellFormatAndValue.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  }

  v13 = self->_decimalValue._decimal.w[0];
  v14 = self->_decimalValue._decimal.w[1];
  result._decimal.w[1] = v14;
  result._decimal.w[0] = v13;
  return result;
}

- (BOOL)hasStringContentMatchingCell:(id)cell
{
  cellCopy = cell;
  v8 = *(self + 8);
  if (v8 == 3)
  {
    v13 = objc_msgSend_stringValue(self, v4, v5, v6);
  }

  else if (v8 == 9)
  {
    v9 = objc_msgSend_richTextOrErrorTextStorageValue(self, v4, v5, v6);
    v13 = objc_msgSend_stringValue(v9, v10, v11, v12);
  }

  else
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTCellFormatAndValue hasStringContentMatchingCell:]", v6);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormatAndValue.mm", v20);
    v24 = objc_msgSend_stringForCellValueType_(TSTCell, v22, *(self + 8), v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v25, v18, v21, 410, 0, "no string content comparison implemented for value type %@", v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
    v13 = 0;
  }

  v29 = objc_msgSend_valueType(cellCopy, v14, v15, v16);
  if (objc_msgSend_hasFormula(cellCopy, v30, v31, v32))
  {
    goto LABEL_11;
  }

  if (v29 == 9)
  {
    v41 = objc_msgSend_richTextValue(cellCopy, v33, v34, v35);
    v38 = objc_msgSend_string(v41, v42, v43, v44);

    if (v13)
    {
      goto LABEL_10;
    }

LABEL_15:
    v39 = 0;
    goto LABEL_13;
  }

  if (v29 != 3)
  {
LABEL_11:
    v38 = 0;
    v39 = 0;
    goto LABEL_12;
  }

  v38 = objc_msgSend_stringValue(cellCopy, v33, v34, v35);
  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_10:
  v39 = objc_msgSend_compare_(v13, v36, v38, v37) == 0;
LABEL_12:

LABEL_13:
  return v39;
}

- (id)cellValueWithLocale:(id)locale
{
  localeCopy = locale;
  v8 = objc_msgSend_getCurrentFormat(self, v5, v6, v7);
  TSCEFormat::TSCEFormat(&v63, v8, 0);
  v12 = objc_msgSend_valueType(self, v9, v10, v11);
  v16 = 0;
  if (v12 > 5)
  {
    if (v12 <= 7)
    {
      if (v12 != 6)
      {
        v37 = objc_msgSend_asDurationFormat(v8, v13, v14, v15);
        TSUDecimal::doubleValue(&self->_decimalValue);
        v41 = objc_msgSend_durationUnitLargestWithTimeInterval_(v37, v38, v39, v40);
        v42 = sub_221387C78(v41);

        v19 = objc_msgSend_numberWithDecimal_format_baseUnit_(TSCENumberValue, v43, &self->_decimalValue, &v63, v42);
        v44 = [TSCENumberCellValue alloc];
        v22 = objc_msgSend_initWithNumberValue_locale_(v44, v45, v19, localeCopy);
        goto LABEL_24;
      }

      v46 = [TSCEBooleanCellValue alloc];
      v36 = objc_msgSend_initWithBoolean_locale_(v46, v47, self->_BOOLValue, localeCopy);
LABEL_19:
      v16 = v36;
      goto LABEL_25;
    }

    if (v12 != 8)
    {
      if (v12 == 9)
      {
        v52 = objc_msgSend_richTextOrErrorTextStorageValue(self, v13, v14, v15);
        v56 = objc_msgSend_stringValue(v52, v53, v54, v55);
        v19 = objc_msgSend_stringValue_format_(TSCEStringValue, v57, v56, &v63);

        v58 = [TSCEStringCellValue alloc];
        v22 = objc_msgSend_initWithStringValue_locale_(v58, v59, v19, localeCopy);
      }

      else
      {
        if (v12 != 10)
        {
          goto LABEL_25;
        }

        if (v63._formatType == 257)
        {
          v23 = objc_msgSend_asCurrencyFormat(v8, v13, v14, v15);
          v27 = objc_msgSend_currencyCode(v23, v24, v25, v26);

          v30 = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v28, v27, v29);
        }

        else
        {
          v30 = 0;
        }

        v19 = objc_msgSend_numberWithDecimal_format_baseUnit_(TSCENumberValue, v13, &self->_decimalValue, &v63, v30);
        v60 = [TSCENumberCellValue alloc];
        v22 = objc_msgSend_initWithNumberValue_locale_(v60, v61, v19, localeCopy);
      }

      goto LABEL_24;
    }

LABEL_15:
    v33 = [TSCENilCellValue alloc];
    v36 = objc_msgSend_initWithLocale_(v33, v34, localeCopy, v35);
    goto LABEL_19;
  }

  if (v12 <= 2)
  {
    if (v12)
    {
      if (v12 != 2)
      {
        goto LABEL_25;
      }

      v19 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v13, &self->_decimalValue, &v63);
      v31 = [TSCENumberCellValue alloc];
      v22 = objc_msgSend_initWithNumberValue_locale_(v31, v32, v19, localeCopy);
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  if (v12 == 3)
  {
    v48 = objc_msgSend_stringValue(self, v13, v14, v15);
    v19 = objc_msgSend_stringValue_format_(TSCEStringValue, v49, v48, &v63);

    v50 = [TSCEStringCellValue alloc];
    v22 = objc_msgSend_initWithStringValue_locale_(v50, v51, v19, localeCopy);
    goto LABEL_24;
  }

  if (v12 == 4)
  {
    goto LABEL_15;
  }

  v17 = objc_msgSend_dateValue(self, v13, v14, v15);
  v19 = objc_msgSend_dateValue_format_(TSCEDateValue, v18, v17, &v63);

  v20 = [TSCEDateCellValue alloc];
  v22 = objc_msgSend_initWithDateValue_locale_(v20, v21, v19, localeCopy);
LABEL_24:
  v16 = v22;

LABEL_25:

  return v16;
}

- (void)applyToCell:(id)cell
{
  cellCopy = cell;
  v87 = cellCopy;
  if (self->_applySpareFormatOnly)
  {
    v8 = objc_msgSend_formatType(cellCopy, v5, v6, v7);
    if (objc_msgSend_formatType_isSameCellFormatKindAs_(TSTCell, v9, self->_spareFormatType, v8))
    {
      goto LABEL_58;
    }

    v10 = sub_22121E75C(self->_spareFormatType);
    v13 = objc_msgSend_p_formatForFormatType_(self, v11, v10, v12);
    objc_msgSend_setFormat_isExplicit_(v87, v14, v13, 1);
    goto LABEL_57;
  }

  if (!self->_suppressApplyValue)
  {
    objc_msgSend_clearValue(cellCopy, v5, v6, v7);
    v15 = *(self + 8);
    if (v15 <= 5)
    {
      if (*(self + 8) > 3u)
      {
        if (v15 == 4)
        {
          v24 = MEMORY[0x277D81150];
          v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTCellFormatAndValue applyToCell:]", v7);
          v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormatAndValue.mm", v27);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v29, v25, v28, 525, 0, "deprecated cell value type found");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32);
          goto LABEL_28;
        }

        if (v15 != 5)
        {
          goto LABEL_28;
        }

        v16 = objc_msgSend_dateValue(self, v5, v6, v7);
        objc_msgSend_setDateValue_(v87, v19, v16, v20);
      }

      else
      {
        if (v15 == 2)
        {
          objc_msgSend_setNumberDecimalValue_(v87, v5, self->_decimalValue._decimal.w[0], self->_decimalValue._decimal.w[1]);
          goto LABEL_28;
        }

        if (v15 != 3)
        {
          goto LABEL_28;
        }

        v16 = objc_msgSend_stringValue(self, v5, v6, v7);
        objc_msgSend_setStringValue_(v87, v17, v16, v18);
      }

      goto LABEL_27;
    }

    if (*(self + 8) > 7u)
    {
      if (v15 == 8)
      {
        if (!self->_objValue)
        {
          goto LABEL_28;
        }

        v16 = objc_msgSend_richTextOrErrorTextStorageValue(self, v5, v6, v7);
        objc_msgSend_setFormulaSyntaxError_(v87, v33, v16, v34);
      }

      else
      {
        if (v15 != 9)
        {
          if (v15 == 10)
          {
            objc_msgSend_setCurrencyDecimalValue_(v87, v5, self->_decimalValue._decimal.w[0], self->_decimalValue._decimal.w[1]);
          }

          goto LABEL_28;
        }

        v35 = objc_msgSend_richTextOrErrorTextStorageValue(self, v5, v6, v7);
        v16 = objc_msgSend_p_copyStorage_(self, v36, v35, v37);

        objc_msgSend_setRichTextValue_(v87, v38, v16, v39);
      }

LABEL_27:

      goto LABEL_28;
    }

    if (v15 == 6)
    {
      objc_msgSend_setBoolValue_(v87, v5, self->_BOOLValue, v7);
    }

    else if (v15 == 7)
    {
      TSUDecimal::doubleValue(&self->_decimalValue);
      objc_msgSend_setDurationTimeIntervalValue_(v87, v21, v22, v23);
    }
  }

LABEL_28:
  v13 = objc_msgSend_currentFormat(v87, v5, v6, v7);
  if (self->_useAllSpareFormats)
  {
    numberFormat = self->_numberFormat;
    if (numberFormat)
    {
      objc_msgSend_setFormat_isExplicit_(v87, v40, numberFormat, 0);
    }

    else
    {
      objc_msgSend_clearFormatOfType_(v87, v40, 256, v41);
    }

    currencyFormat = self->_currencyFormat;
    if (currencyFormat)
    {
      objc_msgSend_setFormat_isExplicit_(v87, v43, currencyFormat, 0);
    }

    else
    {
      objc_msgSend_clearFormatOfType_(v87, v43, 257, v44);
    }

    dateFormat = self->_dateFormat;
    if (dateFormat)
    {
      objc_msgSend_setFormat_isExplicit_(v87, v51, dateFormat, 0);
    }

    else
    {
      objc_msgSend_clearFormatOfType_(v87, v51, 261, v52);
    }

    durationFormat = self->_durationFormat;
    if (durationFormat)
    {
      objc_msgSend_setFormat_isExplicit_(v87, v54, durationFormat, 0);
    }

    else
    {
      objc_msgSend_clearFormatOfType_(v87, v54, 268, v55);
    }

    textFormat = self->_textFormat;
    if (textFormat)
    {
      objc_msgSend_setFormat_isExplicit_(v87, v57, textFormat, 0);
    }

    else
    {
      objc_msgSend_clearFormatOfType_(v87, v57, 260, v58);
    }

    BOOLeanFormat = self->_BOOLeanFormat;
    if (BOOLeanFormat)
    {
      objc_msgSend_setFormat_isExplicit_(v87, v60, BOOLeanFormat, 0);
    }

    else
    {
      objc_msgSend_clearFormatOfType_(v87, v60, 1, v61);
    }

    objc_msgSend_suggestCellFormatKind_(v87, v63, self->_cellFormatKind, v64);
    objc_msgSend_setExplicitFormatFlags_(v87, v65, self->_explicitFlags, v66);
  }

  else
  {
    v45 = objc_msgSend_p_formatForFormatType_(self, v40, self->_cellFormatKind, v41);
    objc_msgSend_setCurrentFormat_flags_(v87, v46, v45, self->_explicitFlags);
  }

  if (self->_suppressApplyValue)
  {
    v67 = objc_msgSend_valueType(v87, v47, v48, v49);
    v70 = objc_msgSend_cellFormatKindForValueType_(TSTCell, v68, v67, v69);
    cellFormatKind = self->_cellFormatKind;
    if (v70 == 1 && cellFormatKind == 2)
    {
      v74 = objc_msgSend_numberDecimalValue(v87, v71, v70, v72);
      objc_msgSend_setCurrencyDecimalValue_roundToDoublePrecision_(v87, v75, v74, v75, 0);
      v78 = objc_msgSend_p_formatForFormatType_(self, v76, self->_cellFormatKind, v77);
      objc_msgSend_setCurrentFormat_flags_(v87, v79, v78, self->_explicitFlags);
    }

    else
    {
      if (v70 != 2 || cellFormatKind != 1)
      {
        if (v70)
        {
          v85 = objc_msgSend_formatOfCellFormatKind_isExplicit_(v87, v71, v70, 0);

          if (!v85)
          {
            objc_msgSend_setCurrentFormat_isExplicit_(v87, v86, v13, 0);
          }
        }

        goto LABEL_57;
      }

      v80 = objc_msgSend_currencyDecimalValue(v87, v71, v70, v72);
      objc_msgSend_setNumberDecimalValue_roundToDoublePrecision_(v87, v81, v80, v81, 0);
      v78 = objc_msgSend_p_formatForFormatType_(self, v82, self->_cellFormatKind, v83);
      objc_msgSend_setCurrentFormat_flags_(v87, v84, v78, self->_explicitFlags);
    }
  }

LABEL_57:

LABEL_58:
}

+ (id)cellDiffProperties
{
  if (qword_27CFB5468 != -1)
  {
    sub_2216F7728();
  }

  v3 = qword_27CFB5460;

  return v3;
}

- (id)objectByRemovingPropertiesInMap:(id)map addingPropertiesInMap:(id)inMap updateInverseResetPropertyMap:(id)propertyMap updateInverseSetPropertyMap:(id)setPropertyMap
{
  inMapCopy = inMap;
  setPropertyMapCopy = setPropertyMap;
  v15 = objc_msgSend_objectForProperty_(map, v11, 907, v12);
  if (v15)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTCellFormatAndValue objectByRemovingPropertiesInMap:addingPropertiesInMap:updateInverseResetPropertyMap:updateInverseSetPropertyMap:]", v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormatAndValue.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 633, 0, "shouldn't remove the value and format from a cell");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  objc_msgSend_setObject_forProperty_(setPropertyMapCopy, v13, self, 907);
  v27 = objc_msgSend_objectForProperty_(inMapCopy, v25, 907, v26);

  return v27;
}

- (id)initFromPropertyCommandMessage:(const Message *)message unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v62.receiver = self;
  v62.super_class = TSTCellFormatAndValue;
  v7 = [(TSTCellFormatAndValue *)&v62 init];
  v11 = v7;
  if (!v7)
  {
    goto LABEL_45;
  }

  v12 = 0;
  var0 = message[7].var0;
  if (var0 <= 4)
  {
    if (var0 > 2)
    {
      if (var0 != 3)
      {
        *(v7 + 8) = 5;
        v15 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v8, v9, v10, *&message[6].var1.var0);
        goto LABEL_14;
      }

      v12 = 4;
    }

    else
    {
      if (var0 == 1)
      {
        v14 = 2;
        goto LABEL_19;
      }

      if (var0 == 2)
      {
        *(v7 + 8) = 3;
        v15 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v8, message[1].var1.var0 & 0xFFFFFFFFFFFFFFFELL, v10);
LABEL_14:
        v16 = v11[3]._decimal.w[0];
        v11[3]._decimal.w[0] = v15;
        goto LABEL_15;
      }
    }

LABEL_23:
    *(v7 + 8) = v12;
    goto LABEL_29;
  }

  if (var0 <= 6)
  {
    if (var0 == 5)
    {
      *(v7 + 8) = 6;
      v7->_BOOLValue = BYTE4(message[7].var1.var0);
      goto LABEL_29;
    }

    v14 = 7;
LABEL_19:
    *(v7 + 8) = v14;
    if ((BYTE2(message[1].var0) & 4) != 0)
    {
      TSUDecimal::TSUDecimal(&v61);
      v11[2] = v61;
    }

    else
    {
      TSUDecimal::operator=();
      TSUDecimal::reinterpretDoubleAsDecimal(v11 + 2);
    }

    goto LABEL_29;
  }

  switch(var0)
  {
    case 7:
      *(v7 + 8) = 8;
      if ((message[1].var0 & 4) == 0)
      {
        goto LABEL_29;
      }

      v17 = message[2].var1.var0;
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = sub_22130FEA0;
      v59[3] = &unk_27845E090;
      v60 = v7;
      v18 = unarchiverCopy;
      v19 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v18, v20, v17, v19, 0, v59);

      v16 = v60;
      break;
    case 8:
      *(v7 + 8) = 9;
      if ((message[1].var0 & 4) == 0)
      {
        v21 = MEMORY[0x277D81150];
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTCellFormatAndValue initFromPropertyCommandMessage:unarchiver:]", v10);
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormatAndValue.mm", v24);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v22, v25, 691, 0, "rich text cells should have a rich text payload");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29);
        goto LABEL_29;
      }

      v51 = message[2].var1.var0;
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = sub_22130FEAC;
      v57[3] = &unk_27845E090;
      v58 = v7;
      v52 = unarchiverCopy;
      v53 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v52, v54, v51, v53, 0, v57);

      v16 = v58;
      break;
    case 9:
      v14 = 10;
      goto LABEL_19;
    default:
      goto LABEL_23;
  }

LABEL_15:

LABEL_29:
  v30 = message[1].var0;
  if ((v30 & 2) != 0)
  {
    v31 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v8, message[2].var0 & 0xFFFFFFFFFFFFFFFELL, v10);
    v32 = v11[3]._decimal.w[1];
    v11[3]._decimal.w[1] = v31;

    v30 = message[1].var0;
  }

  if ((v30 & 0x200) != 0)
  {
    v33 = message[6].var0;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = sub_22130FEB8;
    v55[3] = &unk_27845E090;
    v56 = v11;
    v34 = unarchiverCopy;
    v35 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v34, v36, v33, v35, 0, v55);

    v30 = message[1].var0;
  }

  v37 = message[7].var1.var0;
  LOWORD(v11[4]._decimal.w[1]) = HIDWORD(message[7].var0);
  BYTE1(v11->_decimal.w[1]) = BYTE5(message[7].var1.var0);
  BYTE2(v11[4]._decimal.w[1]) = v37;
  BYTE3(v11->_decimal.w[1]) = BYTE6(message[7].var1.var0);
  HIDWORD(v11->_decimal.w[1]) = HIBYTE(message[7].var1.var0);
  BYTE2(v11->_decimal.w[1]) = message[9].var0;
  if ((v30 & 8) != 0)
  {
    v38 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v8, message[3].var0, v10);
    v39 = v11[5]._decimal.w[0];
    v11[5]._decimal.w[0] = v38;

    v30 = message[1].var0;
  }

  if ((v30 & 0x10) != 0)
  {
    v40 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v8, message[3].var1.var0, v10);
    v41 = v11[5]._decimal.w[1];
    v11[5]._decimal.w[1] = v40;

    v30 = message[1].var0;
  }

  if ((v30 & 0x20) != 0)
  {
    v42 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v8, message[4].var0, v10);
    v43 = v11[6]._decimal.w[0];
    v11[6]._decimal.w[0] = v42;

    v30 = message[1].var0;
  }

  if ((v30 & 0x40) != 0)
  {
    v44 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v8, message[4].var1.var0, v10);
    v45 = v11[6]._decimal.w[1];
    v11[6]._decimal.w[1] = v44;

    v30 = message[1].var0;
  }

  if ((v30 & 0x80) != 0)
  {
    v46 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v8, message[5].var0, v10);
    v47 = v11[7]._decimal.w[1];
    v11[7]._decimal.w[1] = v46;

    v30 = message[1].var0;
  }

  if ((v30 & 0x100) != 0)
  {
    v48 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v8, message[5].var1.var0, v10);
    v49 = v11[7]._decimal.w[0];
    v11[7]._decimal.w[0] = v48;
  }

LABEL_45:

  return v11;
}

- (void)saveToPropertyCommandMessage:(Message *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  if (*(self + 8) - 2 < 9)
  {
    v10 = (*(self + 8) - 2) + 1;
  }

  else
  {
    v10 = 0;
  }

  var0 = message[1].var0;
  LODWORD(message[1].var0) = var0 | 0x800;
  LODWORD(message[7].var0) = v10;
  v12 = *(self + 8);
  if (v12 > 6)
  {
    if (v12 - 8 >= 2)
    {
      if (v12 != 7 && v12 != 10)
      {
        goto LABEL_29;
      }

      goto LABEL_17;
    }

    if (!self->_objValue)
    {
      goto LABEL_29;
    }

    v24 = objc_msgSend_richTextOrErrorTextStorageValue(self, v6, v7, v8);
    LODWORD(message[1].var0) |= 4u;
    v25 = message[2].var1.var0;
    if (!v25)
    {
      v26 = message->var1.var0;
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = MEMORY[0x223DA0390](v26);
      message[2].var1.var0 = v25;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v23, v24, v25);
LABEL_28:

    goto LABEL_29;
  }

  if (*(self + 8) <= 4u)
  {
    if (v12 != 2)
    {
      if (v12 == 3)
      {
        v13 = objc_msgSend_stringValue(self, v6, v7, v8);
        v17 = objc_msgSend_tsp_protobufString(v13, v14, v15, v16);

        if (v17)
        {
          LODWORD(message[1].var0) |= 1u;
          sub_22108CCD0(__p, v17);
          google::protobuf::internal::ArenaStringPtr::Set();
          if (v66 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else if (self->_objValue)
        {
          v56 = MEMORY[0x277D81150];
          v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTCellFormatAndValue saveToPropertyCommandMessage:archiver:]", v8);
          v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormatAndValue.mm", v59);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v61, v57, v60, 757, 0, "Non-nil string resulted in NULL protobufString: '%@'", self->_objValue);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64);
        }
      }

      goto LABEL_29;
    }

LABEL_17:
    v19 = TSUDecimal::low(&self->_decimalValue);
    LODWORD(message[1].var0) |= 0x40000u;
    message[8].var0 = v19;
    v20 = TSUDecimal::high(&self->_decimalValue);
    LODWORD(message[1].var0) |= 0x80000u;
    message[8].var1.var0 = v20;
    TSUDecimal::doubleValue(&self->_decimalValue);
    LODWORD(message[1].var0) |= 0x400u;
    message[6].var1.var0 = v21;
    goto LABEL_29;
  }

  if (v12 == 5)
  {
    v24 = objc_msgSend_dateValue(self, v6, v7, v8);
    objc_msgSend_timeIntervalSinceReferenceDate(v24, v27, v28, v29);
    LODWORD(message[1].var0) |= 0x400u;
    message[6].var1.var0 = v30;
    goto LABEL_28;
  }

  if (v12 == 6)
  {
    BOOLValue = self->_BOOLValue;
    LODWORD(message[1].var0) = var0 | 0x4800;
    BYTE4(message[7].var1.var0) = BOOLValue;
  }

LABEL_29:
  formattedValue = self->_formattedValue;
  if (formattedValue)
  {
    v32 = objc_msgSend_tsp_protobufString(formattedValue, v6, v7, v8);
    LODWORD(message[1].var0) |= 2u;
    sub_22108CCD0(__p, v32);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v66 < 0)
    {
      operator delete(__p[0]);
    }
  }

  formattedRichTextStorage = self->_formattedRichTextStorage;
  v34 = message[1].var0;
  if (formattedRichTextStorage)
  {
    LODWORD(message[1].var0) = v34 | 0x200;
    v35 = message[6].var0;
    if (!v35)
    {
      v36 = message->var1.var0;
      if (v36)
      {
        v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
      }

      v35 = MEMORY[0x223DA0390](v36);
      message[6].var0 = v35;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v6, formattedRichTextStorage, v35);
    v34 = message[1].var0;
  }

  BYTE5(message[7].var1.var0) = self->_useAllSpareFormats;
  HIDWORD(message[7].var0) = self->_explicitFlags;
  LODWORD(message[7].var1.var0) = self->_cellFormatKind;
  BYTE6(message[7].var1.var0) = self->_applySpareFormatOnly;
  HIBYTE(message[7].var1.var0) = self->_spareFormatType != 0;
  suppressApplyValue = self->_suppressApplyValue;
  LODWORD(message[1].var0) = v34 | 0x13B000;
  LOBYTE(message[9].var0) = suppressApplyValue;
  numberFormat = self->_numberFormat;
  if (numberFormat)
  {
    LODWORD(message[1].var0) = v34 | 0x13B008;
    v39 = message[3].var0;
    if (!v39)
    {
      v40 = message->var1.var0;
      if (v40)
      {
        v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
      }

      v39 = MEMORY[0x223DA02D0](v40);
      message[3].var0 = v39;
    }

    objc_msgSend_encodeToArchive_archivingCustomFormats_(numberFormat, v6, v39, 1);
  }

  currencyFormat = self->_currencyFormat;
  if (currencyFormat)
  {
    LODWORD(message[1].var0) |= 0x10u;
    v42 = message[3].var1.var0;
    if (!v42)
    {
      v43 = message->var1.var0;
      if (v43)
      {
        v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
      }

      v42 = MEMORY[0x223DA02D0](v43);
      message[3].var1.var0 = v42;
    }

    objc_msgSend_encodeToArchive_archivingCustomFormats_(currencyFormat, v6, v42, 1);
  }

  dateFormat = self->_dateFormat;
  if (dateFormat)
  {
    LODWORD(message[1].var0) |= 0x20u;
    v45 = message[4].var0;
    if (!v45)
    {
      v46 = message->var1.var0;
      if (v46)
      {
        v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
      }

      v45 = MEMORY[0x223DA02D0](v46);
      message[4].var0 = v45;
    }

    objc_msgSend_encodeToArchive_archivingCustomFormats_(dateFormat, v6, v45, 1);
  }

  durationFormat = self->_durationFormat;
  if (durationFormat)
  {
    LODWORD(message[1].var0) |= 0x40u;
    v48 = message[4].var1.var0;
    if (!v48)
    {
      v49 = message->var1.var0;
      if (v49)
      {
        v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
      }

      v48 = MEMORY[0x223DA02D0](v49);
      message[4].var1.var0 = v48;
    }

    objc_msgSend_encodeToArchive_archivingCustomFormats_(durationFormat, v6, v48, 1);
  }

  BOOLeanFormat = self->_BOOLeanFormat;
  if (BOOLeanFormat)
  {
    LODWORD(message[1].var0) |= 0x100u;
    v51 = message[5].var1.var0;
    if (!v51)
    {
      v52 = message->var1.var0;
      if (v52)
      {
        v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
      }

      v51 = MEMORY[0x223DA02D0](v52);
      message[5].var1.var0 = v51;
    }

    objc_msgSend_encodeToArchive_archivingCustomFormats_(BOOLeanFormat, v6, v51, 1);
  }

  textFormat = self->_textFormat;
  if (textFormat)
  {
    LODWORD(message[1].var0) |= 0x80u;
    v54 = message[5].var0;
    if (!v54)
    {
      v55 = message->var1.var0;
      if (v55)
      {
        v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
      }

      v54 = MEMORY[0x223DA02D0](v55);
      message[5].var0 = v54;
    }

    objc_msgSend_encodeToArchive_archivingCustomFormats_(textFormat, v6, v54, 1);
  }
}

- (id)p_formatForFormatType:(unsigned __int8)type
{
  if ((type - 1) > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.isa + qword_2217E13A0[(type - 1)]);
  }

  return v4;
}

@end