@interface TSCEAbstractGrid
- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argIndex:(int)index outError:(id *)error;
- (BOOL)canResolveToSingleError;
- (BOOL)containsError:(int)error evaluationContext:(id)context outError:(id *)outError;
- (TSCEAbstractGrid)init;
- (TSCEFormat)formatAtIndex:(SEL)index accessContext:(unint64_t)context;
- (TSCEFormat)preferredFormatOptions:(SEL)options;
- (TSCEGridDimensions)dimensions;
- (char)deepType:(id)type outError:(id *)error;
- (id)asDate:(id)date functionSpec:(id)spec argIndex:(int)index outError:(id *)error;
- (id)asNumber:(id)number functionSpec:(id)spec argIndex:(int)index outError:(id *)error;
- (id)asRawString:(id)string functionSpec:(id)spec argIndex:(int)index outError:(id *)error;
- (id)asReference:(id)reference functionSpec:(id)spec argIndex:(int)index outError:(id *)error;
- (id)asString:(id)string functionSpec:(id)spec argIndex:(int)index outError:(id *)error;
- (id)asValueGrid:(id)grid;
- (id)deepResolveInPlace:(id)place;
- (id)error;
- (id)errorWithContext:(id)context;
- (id)flattenedGrid:(TSCEGridAccessContext *)grid format:(const TSCEFormat *)format;
- (id)resolvedValueAtGridCoord:(const TSCEGridCoord *)coord accessContext:(TSCEGridAccessContext *)context;
- (id)subGridValueAtGridCoord:(const TSCEGridCoord *)coord width:(int)width height:(int)height accessContext:(TSCEGridAccessContext *)context;
- (id)value;
- (id)valueAtGridCoord:(const TSCEGridCoord *)coord;
- (id)valueAtGridCoord:(const TSCEGridCoord *)coord accessContext:(TSCEGridAccessContext *)context;
- (id)valueAtIndex:(unint64_t)index;
- (id)valueAtIndex:(unint64_t)index accessContext:(TSCEGridAccessContext *)context;
- (unint64_t)count;
@end

@implementation TSCEAbstractGrid

- (TSCEAbstractGrid)init
{
  v3.receiver = self;
  v3.super_class = TSCEAbstractGrid;
  return [(TSCEAbstractGrid *)&v3 init];
}

- (char)deepType:(id)type outError:(id *)error
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid deepType:outError:]", error);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 38, 0, "TSCEAbstractGrid subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  return 9;
}

- (id)errorWithContext:(id)context
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid errorWithContext:]", v3);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 43, 0, "TSCEAbstractGrid subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  return 0;
}

- (BOOL)canResolveToSingleError
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid canResolveToSingleError]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 48, 0, "TSCEAbstractGrid subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  return 1;
}

- (TSCEGridDimensions)dimensions
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid dimensions]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 53, 0, "TSCEAbstractGrid subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  return 0x7FFFFFFF7FFFFFFFLL;
}

- (id)valueAtGridCoord:(const TSCEGridCoord *)coord
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid valueAtGridCoord:]", v3);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 58, 0, "TSCEAbstractGrid subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);

  return objc_msgSend_zero(TSCENumberValue, v13, v14, v15);
}

- (id)valueAtGridCoord:(const TSCEGridCoord *)coord accessContext:(TSCEGridAccessContext *)context
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid valueAtGridCoord:accessContext:]", context);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 63, 0, "TSCEAbstractGrid subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);

  return objc_msgSend_zero(TSCENumberValue, v13, v14, v15);
}

- (id)resolvedValueAtGridCoord:(const TSCEGridCoord *)coord accessContext:(TSCEGridAccessContext *)context
{
  v5 = objc_msgSend_valueAtGridCoord_accessContext_(self, a2, coord, context);
  if (objc_msgSend_nativeType(v5, v6, v7, v8) == 6)
  {
    v12 = objc_msgSend_referenceValue(v5, v9, v10, v11);
    v14 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v12, v13, context->var0, 0);

    v5 = v14;
  }

  return v5;
}

- (id)valueAtIndex:(unint64_t)index
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid valueAtIndex:]", v3);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 80, 0, "valueAtIndex: only works on TSCEDenseGrid atm, others require an AccessContext to interpret.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);

  return objc_msgSend_zero(TSCENumberValue, v13, v14, v15);
}

- (id)valueAtIndex:(unint64_t)index accessContext:(TSCEGridAccessContext *)context
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid valueAtIndex:accessContext:]", context);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 84, 0, "TSCEAbstractGrid subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);

  return objc_msgSend_zero(TSCENumberValue, v13, v14, v15);
}

- (unint64_t)count
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid count]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 89, 0, "TSCEAbstractGrid subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  return 0;
}

- (id)flattenedGrid:(TSCEGridAccessContext *)grid format:(const TSCEFormat *)format
{
  memset(v49, 0, sizeof(v49));
  v7 = objc_msgSend_count(self, a2, grid, format);
  var6 = grid->var6;
  grid->var6 = 1;
  sub_2210ED528(v49, v7);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v50 = objc_msgSend_valueAtIndex_accessContext_(self, v8, i, grid);
      if ((objc_msgSend_isNil(v50, v10, v11, v12) & 1) == 0)
      {
        v16 = objc_msgSend_nativeType(v50, v13, v14, v15);
        if (v16 == 6 || v16 == 1)
        {
          v18 = v50;
          v19 = grid->var0;
          v20 = grid->var1;
          var3 = grid->var3;
          v48 = 0;
          v23 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v18, v22, v19, v20, var3, 1, &v48);
          v24 = v48;

          if (!v24)
          {
            v26 = objc_msgSend_flattenedGrid_format_(v23, v25, grid, format);
            v31 = objc_msgSend_count(v26, v27, v28, v29);
            if (v31)
            {
              for (j = 0; j != v31; ++j)
              {
                v47 = objc_msgSend_valueAtIndex_accessContext_(v26, v30, j, grid);
                if (!objc_msgSend_isNil(v47, v33, v34, v35) || grid->var8)
                {
                  sub_221179A54(v49, &v47);
                }
              }
            }
          }
        }

        else
        {
          sub_221179A54(v49, &v50);
        }
      }
    }
  }

  grid->var6 = var6;
  v36 = [TSCEDenseGrid alloc];
  v40 = objc_msgSend_gridKind(self, v37, v38, v39);
  v42 = objc_msgSend_initWithValues_gridKind_(v36, v41, v49, v40);
  v44 = objc_msgSend_gridValue_format_(TSCEGridValue, v43, v42, format);

  v50 = v49;
  sub_22107C2C0(&v50);

  return v44;
}

- (TSCEFormat)formatAtIndex:(SEL)index accessContext:(unint64_t)context
{
  v11 = objc_msgSend_valueAtIndex_accessContext_(self, index, context, a5);
  v9 = a5->var0;
  if (v11)
  {
    objc_msgSend_formatWithContext_(v11, v7, v9, v8);
  }

  else
  {
    *&retstr->_tskFormat = 0u;
    *&retstr->_durationFormat = 0u;
  }

  return result;
}

- (TSCEFormat)preferredFormatOptions:(SEL)options
{
  result = objc_msgSend_count(self, options, a4, v4);
  retstr->_tskFormat = 0;
  retstr->_formatType = 0;
  retstr->_formatState = 0;
  *&retstr->_durationFormat = *&retstr->_durationFormat & 0xC080 | 0x421;
  *(&retstr->_durationFormat + 2) = *(&retstr->_durationFormat + 2) & 0xF8 | 1;
  *&retstr->_baseFormat.base = -50266102;
  retstr->_numberFormat.decimalPlaces = -3;
  *(&retstr->_numberFormat + 1) &= 0xE0u;
  retstr->_numberFormat.currencyCodeIndex = 0;
  if (result)
  {
    v10 = result;
    objc_msgSend_formatAtIndex_accessContext_(self, v9, 0, a4);
    result = TSCEFormat::operator=(retstr, &v17);
    if (v10 != 1)
    {
      if (v10 >= 5)
      {
        v12 = 5;
      }

      else
      {
        v12 = v10;
      }

      for (i = 1; i != v12; ++i)
      {
        objc_msgSend_formatAtIndex_accessContext_(self, v11, i, a4);
        TSCEFormat::formatByMergingWithFormat(&v16, retstr, &v17, v14, v15);
        result = TSCEFormat::operator=(retstr, &v16);
      }
    }
  }

  return result;
}

- (BOOL)containsError:(int)error evaluationContext:(id)context outError:(id *)outError
{
  v6 = *&error;
  contextCopy = context;
  v12 = objc_msgSend_count(self, v9, v10, v11);
  v14 = contextCopy;
  v22[1] = 0;
  v23 = 0;
  v22[0] = v14;
  v24 = v6;
  v25[0] = 0;
  *(v25 + 3) = 0;
  v26 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v27 = 0;
  v28 = 0;
  if (v12)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      v17 = objc_msgSend_valueAtIndex_accessContext_(self, v13, v15, v22);
      HasError_context_outError = objc_msgSend_valueHasError_context_outError_(v17, v18, v6, v14, outError);

      if (HasError_context_outError)
      {
        break;
      }

      v16 = ++v15 < v12;
    }

    while (v12 != v15);
    v20 = v23;
  }

  else
  {
    v20 = 0;
    v16 = 0;
  }

  return v16;
}

- (id)error
{
  v7 = objc_msgSend_count(self, a2, v2, v3);
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = objc_msgSend_valueAtIndex_(self, v5, v8, v6);
      if (objc_msgSend_isError(v9, v10, v11, v12))
      {
        break;
      }

      if (v7 == ++v8)
      {
        v7 = 0;
        goto LABEL_10;
      }
    }

    v16 = objc_msgSend_asErrorValue(v9, v13, v14, v15);
    v20 = v16;
    if (v16)
    {
      v7 = objc_msgSend_error(v16, v17, v18, v19);
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_10:

  return v7;
}

- (id)subGridValueAtGridCoord:(const TSCEGridCoord *)coord width:(int)width height:(int)height accessContext:(TSCEGridAccessContext *)context
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid subGridValueAtGridCoord:width:height:accessContext:]", *&width, *&height, context);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 200, 0, "TSCEAbstractGrid subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);

  return objc_msgSend_zero(TSCENumberValue, v15, v16, v17);
}

- (id)value
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid value]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 206, 0, "TSCEAbstractGrid subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);

  return objc_msgSend_zero(TSCENumberValue, v12, v13, v14);
}

- (id)asNumber:(id)number functionSpec:(id)spec argIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  numberCopy = number;
  if (!error)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEAbstractGrid asNumber:functionSpec:argIndex:outError:]", v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 211, 0, "outError non-nil required to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  v23 = objc_msgSend_value(self, v10, v11, v12);
  *error = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v24, v23, numberCopy, spec, v7);

  v28 = objc_msgSend_zero(TSCENumberValue, v25, v26, v27);

  return v28;
}

- (id)asDate:(id)date functionSpec:(id)spec argIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  dateCopy = date;
  if (!error)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEAbstractGrid asDate:functionSpec:argIndex:outError:]", v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 217, 0, "outError non-nil required to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  v23 = objc_msgSend_value(self, v10, v11, v12);
  *error = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v24, v23, dateCopy, spec, v7);

  return 0;
}

- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  booleanCopy = boolean;
  if (!error)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEAbstractGrid asBoolean:functionSpec:argIndex:outError:]", v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 223, 0, "outError non-nil required to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  v23 = objc_msgSend_value(self, v10, v11, v12);
  *error = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v24, v23, booleanCopy, spec, v7);

  return 0;
}

- (id)asReference:(id)reference functionSpec:(id)spec argIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  referenceCopy = reference;
  if (!error)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEAbstractGrid asReference:functionSpec:argIndex:outError:]", v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 229, 0, "outError non-nil required to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  v23 = objc_msgSend_value(self, v10, v11, v12);
  *error = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v24, v23, referenceCopy, spec, v7);

  v28 = objc_msgSend_emptyReferenceValue(TSCEReferenceValue, v25, v26, v27);

  return v28;
}

- (id)asString:(id)string functionSpec:(id)spec argIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  stringCopy = string;
  if (!error)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEAbstractGrid asString:functionSpec:argIndex:outError:]", v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 235, 0, "outError non-nil required to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  v23 = objc_msgSend_value(self, v10, v11, v12);
  *error = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v24, v23, stringCopy, spec, v7);

  return 0;
}

- (id)asRawString:(id)string functionSpec:(id)spec argIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  stringCopy = string;
  if (!error)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEAbstractGrid asRawString:functionSpec:argIndex:outError:]", v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 241, 0, "outError non-nil required to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  v23 = objc_msgSend_value(self, v10, v11, v12);
  *error = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v24, v23, stringCopy, spec, v7);

  return 0;
}

- (id)asValueGrid:(id)grid
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid asValueGrid:]", v3);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 247, 0, "Each specific TSCEAbstractGrid type should handle this");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  return 0;
}

- (id)deepResolveInPlace:(id)place
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid deepResolveInPlace:]", v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 252, 0, "Each specific TSCEAbstractGrid type should handle this");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  return self;
}

@end