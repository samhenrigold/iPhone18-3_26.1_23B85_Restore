@interface TSCEValueGridValue
+ (id)valueGridValue:(id)value;
+ (id)valueGridValue:(id)value format:(const TSCEFormat *)format;
- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (TSCERichTextStorage)asRichTextStorage:(SEL)storage functionSpec:(id)spec argumentIndex:(id)index outError:(int)error;
- (TSCEValueGridValue)initWithValueGrid:(id)grid format:(const TSCEFormat *)format;
- (char)deepType:(id)type outError:(id *)error;
- (id)asDate:(id)date functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asGrid:(id)grid functionSpec:(id)spec argumentIndex:(int)index applyPreferredFormat:(BOOL)format outError:(id *)error;
- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asReference:(id)reference functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)gridValue;
- (void)apparentGridForRangeContext:(unsigned __int8)context tableUID:(TSKUIDStruct)d context:(id)a5 spansAllColumns:(BOOL)columns spansAllRows:(BOOL)rows;
@end

@implementation TSCEValueGridValue

+ (id)valueGridValue:(id)value
{
  valueCopy = value;
  v4 = [TSCEValueGridValue alloc];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 1057;
  v12 = 1;
  v13 = -50266102;
  v14 = 253;
  v6 = objc_msgSend_initWithValueGrid_format_(v4, v5, valueCopy, &v8);

  return v6;
}

+ (id)valueGridValue:(id)value format:(const TSCEFormat *)format
{
  valueCopy = value;
  v6 = [TSCEValueGridValue alloc];
  v8 = objc_msgSend_initWithValueGrid_format_(v6, v7, valueCopy, format);

  return v8;
}

- (TSCEValueGridValue)initWithValueGrid:(id)grid format:(const TSCEFormat *)format
{
  gridCopy = grid;
  v11.receiver = self;
  v11.super_class = TSCEValueGridValue;
  v8 = [(TSCEValue *)&v11 initWithTSCEFormat:format];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_valueGrid, grid);
    v9->_implicitIntersectionOffTable = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = TSCEValueGridValue;
  v4 = [(TSCEValue *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 7, self->_valueGrid);
  v4[8] = self->_implicitIntersectionCoord;
  *(v4 + 72) = self->_implicitIntersectionOffTable;
  return v4;
}

- (char)deepType:(id)type outError:(id *)error
{
  typeCopy = type;
  implicitIntersectionCoord = self->_implicitIntersectionCoord;
  if (implicitIntersectionCoord.column == 0x7FFFFFFF || (*&implicitIntersectionCoord & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
  {
    if (!objc_msgSend_count(self->_valueGrid, a2, type, error) || (objc_msgSend_firstValue(self->_valueGrid, v7, v8, v9), v10 = objc_claimAutoreleasedReturnValue(), LODWORD(typeCopy) = objc_msgSend_deepType_(v10, v11, typeCopy, v12), v10, typeCopy != 9))
    {
      LOBYTE(typeCopy) = 16;
    }
  }

  else if (self->_implicitIntersectionOffTable)
  {
    if (error)
    {
      *error = objc_msgSend_invalidReferenceError(TSCEError, a2, type, error);
    }

    LOBYTE(typeCopy) = 9;
  }

  else
  {
    v14 = objc_msgSend_valueAtCoord_(self->_valueGrid, a2, &implicitIntersectionCoord, error);
    LOBYTE(typeCopy) = objc_msgSend_deepType_(v14, v15, typeCopy, v16);
  }

  return typeCopy;
}

- (id)gridValue
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueGridValue gridValue]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGridValue.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 96, 0, "Calling -gridValue direct accessor on TSCEValueGridValue type - stop doing that");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);

  return objc_msgSend_emptyGrid(TSCEGridValue, v12, v13, v14);
}

- (id)asReference:(id)reference functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueGridValue asReference:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGridValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 108, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  implicitIntersectionCoord = self->_implicitIntersectionCoord;
  if (implicitIntersectionCoord.column == 0x7FFFFFFF || (*&implicitIntersectionCoord & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
  {
    if (objc_msgSend_area(self->_valueGrid, a2, reference, spec) != 1)
    {
      v27 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v21, self, reference, spec, v7);
      goto LABEL_13;
    }

    v24 = objc_msgSend_firstValue(self->_valueGrid, v21, v22, v23);
    v26 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v24, v25, reference, spec, v7, error);
  }

  else
  {
    if (self->_implicitIntersectionOffTable)
    {
      v27 = objc_msgSend_invalidReferenceError(TSCEError, a2, reference, spec);
LABEL_13:
      *error = v27;
      v31 = objc_msgSend_emptyReferenceValue(TSCEReferenceValue, v28, v29, v30);
      goto LABEL_16;
    }

    v24 = objc_msgSend_valueAtCoord_(self->_valueGrid, a2, &implicitIntersectionCoord, spec);
    v26 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v24, v32, reference, spec, v7, error);
  }

  v31 = v26;

LABEL_16:

  return v31;
}

- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueGridValue asNumber:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGridValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 140, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  implicitIntersectionCoord = self->_implicitIntersectionCoord;
  if (implicitIntersectionCoord.column == 0x7FFFFFFF || (*&implicitIntersectionCoord & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
  {
    v29.receiver = self;
    v29.super_class = TSCEValueGridValue;
    v21 = [(TSCEValue *)&v29 asNumber:number functionSpec:spec argumentIndex:v7 outError:error];
LABEL_11:
    v25 = v21;
    goto LABEL_13;
  }

  if (self->_implicitIntersectionOffTable)
  {
    *error = objc_msgSend_invalidReferenceError(TSCEError, a2, number, spec);
    v21 = objc_msgSend_zero(TSCENumberValue, v22, v23, v24);
    goto LABEL_11;
  }

  v26 = objc_msgSend_valueAtCoord_(self->_valueGrid, a2, &implicitIntersectionCoord, spec);
  v25 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v26, v27, number, spec, v7, error);

LABEL_13:

  return v25;
}

- (id)asDate:(id)date functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueGridValue asDate:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGridValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 163, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  implicitIntersectionCoord = self->_implicitIntersectionCoord;
  if (implicitIntersectionCoord.column == 0x7FFFFFFF || (*&implicitIntersectionCoord & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
  {
    v25.receiver = self;
    v25.super_class = TSCEValueGridValue;
    v21 = [(TSCEValue *)&v25 asDate:date functionSpec:spec argumentIndex:v7 outError:error];
  }

  else if (self->_implicitIntersectionOffTable)
  {
    objc_msgSend_invalidReferenceError(TSCEError, a2, date, spec);
    *error = v21 = 0;
  }

  else
  {
    v22 = objc_msgSend_valueAtCoord_(self->_valueGrid, a2, &implicitIntersectionCoord, spec);
    v21 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v22, v23, date, spec, v7, error);
  }

  return v21;
}

- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueGridValue asString:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGridValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 186, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  implicitIntersectionCoord = self->_implicitIntersectionCoord;
  if (implicitIntersectionCoord.column == 0x7FFFFFFF || (*&implicitIntersectionCoord & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
  {
    v25.receiver = self;
    v25.super_class = TSCEValueGridValue;
    v21 = [(TSCEValue *)&v25 asString:string functionSpec:spec argumentIndex:v7 outError:error];
  }

  else
  {
    if (self->_implicitIntersectionOffTable)
    {
      *error = objc_msgSend_invalidReferenceError(TSCEError, a2, string, spec);
    }

    v22 = objc_msgSend_valueAtCoord_(self->_valueGrid, a2, &implicitIntersectionCoord, spec);
    v21 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v22, v23, string, spec, v7, error);
  }

  return v21;
}

- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueGridValue asRawString:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGridValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 208, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  implicitIntersectionCoord = self->_implicitIntersectionCoord;
  if (implicitIntersectionCoord.column == 0x7FFFFFFF || (*&implicitIntersectionCoord & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
  {
    v25.receiver = self;
    v25.super_class = TSCEValueGridValue;
    v21 = [(TSCEValue *)&v25 asRawString:string functionSpec:spec argumentIndex:v7 outError:error];
  }

  else
  {
    if (self->_implicitIntersectionOffTable)
    {
      *error = objc_msgSend_invalidReferenceError(TSCEError, a2, string, spec);
    }

    v22 = objc_msgSend_valueAtCoord_(self->_valueGrid, a2, &implicitIntersectionCoord, spec);
    v21 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v22, v23, string, spec, v7, error);
  }

  return v21;
}

- (TSCERichTextStorage)asRichTextStorage:(SEL)storage functionSpec:(id)spec argumentIndex:(id)index outError:(int)error
{
  v8 = *&error;
  if (!a7)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], storage, "[TSCEValueGridValue asRichTextStorage:functionSpec:argumentIndex:outError:]", index);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGridValue.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 230, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  implicitIntersectionCoord = self->_implicitIntersectionCoord;
  if (implicitIntersectionCoord.column == 0x7FFFFFFF || (*&implicitIntersectionCoord & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
  {
    v27.receiver = self;
    v27.super_class = TSCEValueGridValue;
    return [(TSCERichTextStorage *)&v27 asRichTextStorage:spec functionSpec:index argumentIndex:v8 outError:a7];
  }

  else
  {
    if (self->_implicitIntersectionOffTable)
    {
      *a7 = objc_msgSend_invalidReferenceError(TSCEError, storage, spec, index);
    }

    v24 = objc_msgSend_valueAtCoord_(self->_valueGrid, storage, &implicitIntersectionCoord, index);
    v26 = v24;
    if (v24)
    {
      objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v24, v25, spec, index, v8, a7);
    }

    else
    {
      retstr->var0 = 0;
      retstr->var1 = 0;
      *&retstr->var2 = 0;
    }
  }

  return result;
}

- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueGridValue asBoolean:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGridValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 252, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  implicitIntersectionCoord = self->_implicitIntersectionCoord;
  if (implicitIntersectionCoord.column == 0x7FFFFFFF || (*&implicitIntersectionCoord & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
  {
    v25.receiver = self;
    v25.super_class = TSCEValueGridValue;
    return [(TSCEValue *)&v25 asBoolean:boolean functionSpec:spec argumentIndex:v7 outError:error];
  }

  else
  {
    if (self->_implicitIntersectionOffTable)
    {
      *error = objc_msgSend_invalidReferenceError(TSCEError, a2, boolean, spec);
    }

    v22 = objc_msgSend_valueAtCoord_(self->_valueGrid, a2, &implicitIntersectionCoord, spec);
    v21 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v22, v23, boolean, spec, v7, error);
  }

  return v21;
}

- (id)asGrid:(id)grid functionSpec:(id)spec argumentIndex:(int)index applyPreferredFormat:(BOOL)format outError:(id *)error
{
  formatCopy = format;
  if (!error)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueGridValue asGrid:functionSpec:argumentIndex:applyPreferredFormat:outError:]", spec);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGridValue.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 275, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  v21 = self->_valueGrid;
  v25 = objc_msgSend_topLeftCoord(v21, v22, v23, v24);
  if (objc_msgSend_isForChartFormulas(grid, v26, v27, v28))
  {
    if (v25)
    {
      v32 = objc_msgSend_copy(v21, v29, v30, v31);

      v21 = v32;
      objc_msgSend_compressToZeroBased(v32, v33, v34, v35);
    }
  }

  else
  {
    v36 = objc_msgSend_copy(v21, v29, v30, v31);

    v40 = objc_msgSend_compressToPopulatedRowsAndColumns(v36, v37, v38, v39);

    v21 = v40;
    if (v25)
    {
      objc_msgSend_compressToZeroBased(v40, v41, v42, v43);
    }
  }

  v55[0] = grid;
  v55[1] = spec;
  v56 = 0;
  indexCopy = index;
  v58[0] = 0;
  *(v58 + 3) = 0;
  v59 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v60 = 0;
  v61 = 0;
  v44 = [TSCEDenseGrid alloc];
  v47 = objc_msgSend_initWithValueGrid_(v44, v45, v21, v46);
  v50 = v47;
  if (formatCopy)
  {
    if (v47)
    {
      objc_msgSend_preferredFormatOptions_(v47, v48, v55, v49);
    }

    else
    {
      memset(v54, 0, sizeof(v54));
    }

    v51 = objc_msgSend_gridValue_format_(TSCEGridValue, v48, v50, v54);
  }

  else
  {
    v51 = objc_msgSend_gridValue_(TSCEGridValue, v48, v47, v49);
  }

  v52 = v51;

  return v52;
}

- (void)apparentGridForRangeContext:(unsigned __int8)context tableUID:(TSKUIDStruct)d context:(id)a5 spansAllColumns:(BOOL)columns spansAllRows:(BOOL)rows
{
  rowsCopy = rows;
  columnsCopy = columns;
  contextCopy = context;
  v11 = objc_msgSend_calcEngine(a5, a2, context, d._lower, d._lower, d._upper);
  v14 = objc_msgSend_tableResolverForTableUID_(v11, v12, &v17, v13);

  if (v14)
  {
    v16 = objc_msgSend_apparentGridForRangeContext_rangeContext_spansAllColumns_spansAllRows_(v14, v15, self->_valueGrid, contextCopy, columnsCopy, rowsCopy);
    if (v16 != self->_valueGrid)
    {
      objc_storeStrong(&self->_valueGrid, v16);
    }
  }
}

@end