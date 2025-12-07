@interface TSCEDenseGrid
- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argIndex:(int)index outError:(id *)error;
- (TSCEDenseGrid)initWithValueGrid:(id)grid;
- (TSCEDenseGrid)initWithValues:(const void *)values;
- (TSCEDenseGrid)initWithValues:(const void *)values gridKind:(char)kind;
- (TSCEDenseGrid)initWithValues:(const void *)values gridKind:(char)kind isFlattened:(BOOL)flattened;
- (TSCEDenseGrid)initWithValues:(const void *)values gridKind:(char)kind isFlattened:(BOOL)flattened dimensions:(const TSCEGridDimensions *)dimensions;
- (char)deepType:(id)type outError:(id *)error;
- (id)asDate:(id)date functionSpec:(id)spec argIndex:(int)index outError:(id *)error;
- (id)asNumber:(id)number functionSpec:(id)spec argIndex:(int)index outError:(id *)error;
- (id)asRawString:(id)string functionSpec:(id)spec argIndex:(int)index outError:(id *)error;
- (id)asReference:(id)reference functionSpec:(id)spec argIndex:(int)index outError:(id *)error;
- (id)asString:(id)string functionSpec:(id)spec argIndex:(int)index outError:(id *)error;
- (id)asValueGrid:(id)grid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deepResolveInPlace:(id)place;
- (id)error;
- (id)errorWithContext:(id)context;
- (id)flattenedGrid:(TSCEGridAccessContext *)grid format:(const TSCEFormat *)format;
- (id)subGridValueAtGridCoord:(const TSCEGridCoord *)coord width:(int)width height:(int)height accessContext:(TSCEGridAccessContext *)context;
- (id)valueAtIndex:(unint64_t)index accessContext:(TSCEGridAccessContext *)context;
@end

@implementation TSCEDenseGrid

- (TSCEDenseGrid)initWithValueGrid:(id)grid
{
  gridCopy = grid;
  v33.receiver = self;
  v33.super_class = TSCEDenseGrid;
  v6 = [(TSCEAbstractGrid *)&v33 init];
  v7 = v6;
  v8 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_valueGrid, grid);
    v8->_gridKind = 0;
    v8->_isFlattened = 1;
    if (objc_msgSend_count(gridCopy, v9, v10, v11) && objc_msgSend_topLeftCoord(gridCopy, v12, v13, v14))
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSCEDenseGrid initWithValueGrid:]", v14);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDenseGrid.mm", v18);
      v32 = objc_msgSend_topLeftCoord(gridCopy, v20, v21, v22);
      v26 = sub_2211786FC(&v32, v23, v24, v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v27, v16, v19, 34, 0, "Warning, making a TSCEDenseGrid with a non-zero based offset: %@", v26);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
    }

    objc_msgSend_compressToZeroBased(v7->_valueGrid, v12, v13, v14);
  }

  return v8;
}

- (TSCEDenseGrid)initWithValues:(const void *)values
{
  v4[0] = (*(values + 1) - *values) >> 3;
  v4[1] = 1;
  return objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(self, a2, values, 0, 1, v4);
}

- (TSCEDenseGrid)initWithValues:(const void *)values gridKind:(char)kind
{
  v5[0] = (*(values + 1) - *values) >> 3;
  v5[1] = 1;
  return objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(self, a2, values, kind, 1, v5);
}

- (TSCEDenseGrid)initWithValues:(const void *)values gridKind:(char)kind isFlattened:(BOOL)flattened
{
  v6[0] = (*(values + 1) - *values) >> 3;
  v6[1] = 1;
  return objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(self, a2, values, kind, flattened, v6);
}

- (TSCEDenseGrid)initWithValues:(const void *)values gridKind:(char)kind isFlattened:(BOOL)flattened dimensions:(const TSCEGridDimensions *)dimensions
{
  v16.receiver = self;
  v16.super_class = TSCEDenseGrid;
  v10 = [(TSCEAbstractGrid *)&v16 init];
  if (v10)
  {
    v11 = [TSCEValueGrid alloc];
    v13 = objc_msgSend_initWithValueVector_dimensions_(v11, v12, values, dimensions);
    valueGrid = v10->_valueGrid;
    v10->_valueGrid = v13;

    v10->_gridKind = kind;
    v10->_isFlattened = flattened;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCEDenseGrid alloc];
  v8 = objc_msgSend_copy(self->_valueGrid, v5, v6, v7);
  v11 = objc_msgSend_initWithValueGrid_(v4, v9, v8, v10);

  v11[16] = self->_gridKind;
  v11[17] = self->_isFlattened;
  return v11;
}

- (char)deepType:(id)type outError:(id *)error
{
  typeCopy = type;
  if (objc_msgSend_count(self, v7, v8, v9) == 1)
  {
    v12 = objc_msgSend_valueAtIndex_(self, v10, 0, v11);
    v14 = objc_msgSend_deepType_outError_(v12, v13, typeCopy, error);
  }

  else
  {
    v14 = 9;
  }

  return v14;
}

- (id)errorWithContext:(id)context
{
  v6 = objc_msgSend_count(self, a2, context, v3);
  if (v6)
  {
    if (v6 == 1)
    {
      v10 = objc_msgSend_valueAtIndex_(self, v7, 0, v9);
      v13 = objc_msgSend_errorWithContext_(v10, v11, context, v12);
    }

    else
    {
      v13 = objc_msgSend_nestedArrayResultSpillError(TSCEError, v7, v8, v9);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)asValueGrid:(id)grid
{
  v4 = objc_msgSend_copy(self->_valueGrid, a2, grid, v3);

  return v4;
}

- (id)deepResolveInPlace:(id)place
{
  objc_msgSend_deepResolveInPlace_(self->_valueGrid, a2, place, v3);
  if (self->_gridKind == 2)
  {
    self->_gridKind = 0;
  }

  return self;
}

- (id)asNumber:(id)number functionSpec:(id)spec argIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  numberCopy = number;
  if (!error)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEDenseGrid asNumber:functionSpec:argIndex:outError:]", v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDenseGrid.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 152, 0, "outError of non-nil is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  if (objc_msgSend_count(self, v10, v11, v12) == 1)
  {
    v26 = objc_msgSend_firstValue(self->_valueGrid, v23, v24, v25);
    v28 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v26, v27, numberCopy, spec, v7, error);
  }

  else
  {
    *error = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v23, v24, v25);
    v28 = objc_msgSend_zero(TSCENumberValue, v29, v30, v31);
  }

  return v28;
}

- (id)asDate:(id)date functionSpec:(id)spec argIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  dateCopy = date;
  if (!error)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEDenseGrid asDate:functionSpec:argIndex:outError:]", v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDenseGrid.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 162, 0, "outError of non-nil is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  if (objc_msgSend_count(self, v10, v11, v12) == 1)
  {
    v26 = objc_msgSend_firstValue(self->_valueGrid, v23, v24, v25);
    v28 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v26, v27, dateCopy, spec, v7, error);
  }

  else
  {
    objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v23, v24, v25);
    *error = v28 = 0;
  }

  return v28;
}

- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  booleanCopy = boolean;
  if (!error)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEDenseGrid asBoolean:functionSpec:argIndex:outError:]", v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDenseGrid.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 172, 0, "outError of non-nil is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  if (objc_msgSend_count(self, v10, v11, v12) == 1)
  {
    v26 = objc_msgSend_firstValue(self->_valueGrid, v23, v24, v25);
    v28 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v26, v27, booleanCopy, spec, v7, error);
  }

  else
  {
    objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v23, v24, v25);
    *error = v28 = 0;
  }

  return v28;
}

- (id)asReference:(id)reference functionSpec:(id)spec argIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  referenceCopy = reference;
  if (!error)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEDenseGrid asReference:functionSpec:argIndex:outError:]", v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDenseGrid.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 182, 0, "outError of non-nil is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  if (objc_msgSend_count(self, v10, v11, v12) == 1)
  {
    v26 = objc_msgSend_firstValue(self->_valueGrid, v23, v24, v25);
    v28 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v26, v27, referenceCopy, spec, v7, error);
  }

  else
  {
    *error = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v23, v24, v25);
    v28 = objc_msgSend_emptyReferenceValue(TSCEReferenceValue, v29, v30, v31);
  }

  return v28;
}

- (id)asString:(id)string functionSpec:(id)spec argIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  stringCopy = string;
  if (!error)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEDenseGrid asString:functionSpec:argIndex:outError:]", v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDenseGrid.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 192, 0, "outError of non-nil is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  if (objc_msgSend_count(self, v10, v11, v12) == 1)
  {
    v26 = objc_msgSend_firstValue(self->_valueGrid, v23, v24, v25);
    v28 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v26, v27, stringCopy, spec, v7, error);
  }

  else
  {
    objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v23, v24, v25);
    *error = v28 = 0;
  }

  return v28;
}

- (id)asRawString:(id)string functionSpec:(id)spec argIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  stringCopy = string;
  if (!error)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEDenseGrid asRawString:functionSpec:argIndex:outError:]", v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDenseGrid.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 202, 0, "outError of non-nil is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  if (objc_msgSend_count(self, v10, v11, v12) == 1)
  {
    v26 = objc_msgSend_firstValue(self->_valueGrid, v23, v24, v25);
    v28 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v26, v27, stringCopy, spec, v7, error);
  }

  else
  {
    objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v23, v24, v25);
    *error = v28 = 0;
  }

  return v28;
}

- (id)valueAtIndex:(unint64_t)index accessContext:(TSCEGridAccessContext *)context
{
  if (!self->_isFlattened)
  {
    v7 = objc_msgSend_valueAt1DIndex_(self->_valueGrid, a2, index, context);
    v14 = context->var0;
    v30 = context->var1;
    if (!context->var6)
    {
      if (objc_msgSend_isReferenceValue(v7, v27, v28, v29))
      {
        var3 = context->var3;
        v116 = 0;
        v35 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v7, v31, v14, v30, var3, &v116);
        v22 = v116;
        if (v22)
        {
          v26 = objc_msgSend_errorValue_(TSCEErrorValue, v36, v22, v38);

LABEL_49:
          goto LABEL_60;
        }

        if (context->var5)
        {
          v52 = objc_msgSend_calcEngine(v14, v36, v37, v38);
          objc_msgSend_resetResolver_(v35, v53, v52, v54);
        }

        isOutputOfAFunction = objc_msgSend_isOutputOfAFunction(v35, v36, v37, v38);
        if (v14)
        {
          v59 = isOutputOfAFunction;
        }

        else
        {
          v59 = 0;
        }

        if (v59 == 1)
        {
          if (v35)
          {
            objc_msgSend_anyRef(v35, v56, v57, v58);
          }

          else
          {
            v121 = 0u;
            v122 = 0u;
            v119 = 0u;
            v120 = 0u;
            v118 = 0u;
          }

          objc_msgSend_addCalculatedPrecedent_(v14, v56, &v118, v58);
        }
      }

      v68 = TSCEGridAccessContext::argSpec(context, v31, v32, v33);
      v69 = v68;
      if (v68)
      {
        v70 = objc_msgSend_accessorMode(v68, v27, v28, v29);
        v74 = objc_msgSend_argumentType(v69, v71, v72, v73);
        if (v70 >= 2 && (v70 != 2 || v74 == 1))
        {
          v75 = objc_msgSend_argumentAccessor(v69, v27, v28, v29);
          v115 = v7;
          v22 = (*(*v75 + 16))(v75, &v115, context, self->_gridKind == 0);
          v76 = v115;

          if (v22)
          {
            v26 = objc_msgSend_errorValue_(TSCEErrorValue, v27, v22, v29);
            v7 = v76;
            goto LABEL_49;
          }

          v7 = v76;
        }
      }
    }

    if (context->var7)
    {
      if (objc_msgSend_nativeType(v7, v27, v28, v29) == 6)
      {
        v80 = objc_msgSend_asReferenceValue(v7, v77, v78, v79);
        v84 = objc_msgSend_evalRef(v80, v81, v82, v83);
        context->var9 = objc_msgSend_getHidingActionForRows_(v84, v85, 0, v86);

        v90 = objc_msgSend_asReferenceValue(v7, v87, v88, v89);
        v94 = objc_msgSend_evalRef(v90, v91, v92, v93);
        context->var10 = objc_msgSend_getHidingActionForRows_(v94, v95, 1, v96);
      }

      else
      {
        *&context->var9 = 0;
      }
    }

    v7 = v7;
    v22 = 0;
    v26 = v7;
    goto LABEL_49;
  }

  v7 = context->var0;
  v10 = objc_msgSend_valueAt1DIndex_(self->_valueGrid, v8, index, v9);
  v14 = v10;
  if (context->var7)
  {
    *&context->var9 = 0;
  }

  if (context->var6)
  {
    goto LABEL_58;
  }

  if (objc_msgSend_isReferenceValue(v10, v11, v12, v13))
  {
    v18 = context->var1;
    v19 = context->var3;
    v123 = 0;
    v21 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v14, v20, v7, v18, v19, &v123);
    v22 = v123;

    if (v22)
    {
      v26 = objc_msgSend_errorValue_(TSCEErrorValue, v23, v22, v25);

      goto LABEL_60;
    }

    if (context->var5)
    {
      v60 = objc_msgSend_calcEngine(v7, v23, v24, v25);
      objc_msgSend_resetResolver_(v21, v61, v60, v62);
    }

    v63 = objc_msgSend_isOutputOfAFunction(v21, v23, v24, v25);
    if (v7)
    {
      v67 = v63;
    }

    else
    {
      v67 = 0;
    }

    if (v67 == 1)
    {
      if (v21)
      {
        objc_msgSend_anyRef(v21, v64, v65, v66);
      }

      else
      {
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v118 = 0u;
      }

      objc_msgSend_addCalculatedPrecedent_(v7, v64, &v118, v66);
    }

    v51 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v21, v64, v7, 1);
  }

  else
  {
    if (objc_msgSend_isCategoryRefValue(v14, v15, v16, v17))
    {
      v42 = objc_msgSend_asCategoryRefValue(v14, v39, v40, v41);
      v45 = objc_msgSend_referredToValue_(v42, v43, v7, v44);
    }

    else
    {
      if (!objc_msgSend_isViewTractRefValue(v14, v39, v40, v41))
      {
        v51 = v14;
        goto LABEL_53;
      }

      v42 = objc_msgSend_asViewTractRefValue(v14, v46, v47, v48);
      v45 = objc_msgSend_referredToValue_(v42, v49, v7, v50);
    }

    v51 = v45;
  }

LABEL_53:
  v97 = TSCEGridAccessContext::argSpec(context, v46, v47, v48);
  v101 = v97;
  if (v97 && (v102 = objc_msgSend_accessorMode(v97, v98, v99, v100), v106 = objc_msgSend_argumentType(v101, v103, v104, v105), v102 >= 2) && (v102 != 2 || v106 == 1))
  {
    v112 = objc_msgSend_argumentAccessor(v101, v107, v108, v109);
    v117 = v51;
    v22 = (*(*v112 + 16))(v112, &v117, context, self->_gridKind == 0);
    v14 = v117;

    if (v22)
    {
      v110 = objc_msgSend_errorValue_(TSCEErrorValue, v113, v22, v114);
      goto LABEL_59;
    }
  }

  else
  {
    v14 = v51;
  }

LABEL_58:
  v110 = v14;
  v14 = v110;
  v22 = 0;
LABEL_59:
  v26 = v110;
LABEL_60:

  return v26;
}

- (id)flattenedGrid:(TSCEGridAccessContext *)grid format:(const TSCEFormat *)format
{
  if (objc_msgSend_gridKind(self, a2, grid, format))
  {
    v10.receiver = self;
    v10.super_class = TSCEDenseGrid;
    v8 = [(TSCEAbstractGrid *)&v10 flattenedGrid:grid format:format];
  }

  else
  {
    v8 = objc_msgSend_gridValue_format_(TSCEGridValue, v7, self, format);
  }

  return v8;
}

- (id)subGridValueAtGridCoord:(const TSCEGridCoord *)coord width:(int)width height:(int)height accessContext:(TSCEGridAccessContext *)context
{
  v7 = objc_msgSend_subGridAtGridCoord_width_height_(self->_valueGrid, a2, coord, *&width, *&height, context);
  v8 = [TSCEDenseGrid alloc];
  v11 = objc_msgSend_initWithValueGrid_(v8, v9, v7, v10);
  v11[17] = self->_isFlattened;
  v14 = objc_msgSend_gridValue_(TSCEGridValue, v12, v11, v13);

  return v14;
}

- (id)error
{
  v8 = 0;
  v2 = objc_msgSend_deepType_outError_(self, a2, 0, &v8);
  v5 = v8;
  if (v2 == 9)
  {
    v6 = objc_msgSend_errorForErrorType_(TSCEError, v3, 27, v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end