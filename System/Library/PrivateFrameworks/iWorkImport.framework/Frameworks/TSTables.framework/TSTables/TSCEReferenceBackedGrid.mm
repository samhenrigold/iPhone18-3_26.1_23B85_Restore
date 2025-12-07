@interface TSCEReferenceBackedGrid
- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argIndex:(int)index outError:(id *)error;
- (TSCEFormat)formatAtIndex:(SEL)index accessContext:(unint64_t)context;
- (TSKUIDStruct)tableUID;
- (char)deepType:(id)type outError:(id *)error;
- (id)apparentReference:(id)reference;
- (id)asDate:(id)date functionSpec:(id)spec argIndex:(int)index outError:(id *)error;
- (id)asNumber:(id)number functionSpec:(id)spec argIndex:(int)index outError:(id *)error;
- (id)asRawString:(id)string functionSpec:(id)spec argIndex:(int)index outError:(id *)error;
- (id)asReference:(id)reference functionSpec:(id)spec argIndex:(int)index outError:(id *)error;
- (id)asString:(id)string functionSpec:(id)spec argIndex:(int)index outError:(id *)error;
- (id)asValueGrid:(id)grid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deepResolveInPlace:(id)place;
- (id)initWitRefValue:(id)value rangeContext:(unsigned __int8)context;
- (id)resolvedValueAtGridCoord:(const TSCEGridCoord *)coord accessContext:(TSCEGridAccessContext *)context;
- (id)subGridValueAtGridCoord:(const TSCEGridCoord *)coord width:(int)width height:(int)height accessContext:(TSCEGridAccessContext *)context;
- (id)valueAtGridCoord:(const TSCEGridCoord *)coord accessContext:(TSCEGridAccessContext *)context;
- (id)valueAtIndex:(unint64_t)index accessContext:(TSCEGridAccessContext *)context;
- (unint64_t)count;
- (unsigned)height;
- (unsigned)width;
@end

@implementation TSCEReferenceBackedGrid

- (id)initWitRefValue:(id)value rangeContext:(unsigned __int8)context
{
  contextCopy = context;
  valueCopy = value;
  v33.receiver = self;
  v33.super_class = TSCEReferenceBackedGrid;
  v10 = [(TSCEAbstractGrid *)&v33 init];
  if (v10)
  {
    v11 = objc_msgSend_evalRef(valueCopy, v7, v8, v9);
    v15 = objc_msgSend_tableResolver(v11, v12, v13, v14);
    v19 = objc_msgSend_copy(v11, v16, v17, v18);
    v20 = *(v10 + 1);
    *(v10 + 1) = v19;

    v10[104] = objc_msgSend_isOutputOfAFunction(valueCopy, v21, v22, v23);
    if (v15)
    {
      v27 = objc_msgSend_tractRef(v11, v24, v25, v26);
      TSCETableResolverWrapper::apparentTractRefForTractRef(v15, v27, contextCopy, &v30);
      TSUIndexSet::operator=();
      TSUIndexSet::operator=();
      v28 = *v32;
      *(v10 + 93) = *&v32[13];
      *(v10 + 5) = v28;
      TSUIndexSet::~TSUIndexSet(&v31);
      TSUIndexSet::~TSUIndexSet(&v30);
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TSCEReferenceBackedGrid);
  v8 = objc_msgSend_copy(self->_evalRef, v5, v6, v7);
  evalRef = v4->_evalRef;
  v4->_evalRef = v8;

  TSUIndexSet::operator=();
  TSUIndexSet::operator=();
  tableUID = self->_apparentTractRef._tableUID;
  *(&v4->_apparentTractRef._tableUID._upper + 5) = *(&self->_apparentTractRef._tableUID._upper + 5);
  v4->_apparentTractRef._tableUID = tableUID;
  v4->_permitsAccessInsideMergeRegions = self->_permitsAccessInsideMergeRegions;
  return v4;
}

- (id)apparentReference:(id)reference
{
  referenceCopy = reference;
  *&v22 = -1;
  *&v5.f64[0] = 0x8000000080000000;
  *&v5.f64[1] = 0x8000000080000000;
  v22._singleRange = vnegq_f64(v5);
  v22._multipleRanges = 0;
  TSUIndexSet::operator=();
  *&v23 |= 3u;
  v23._singleRange = v22._singleRange;
  v23._multipleRanges = 0;
  TSUIndexSet::operator=();
  *v24 = self->_apparentTractRef._tableUID;
  *&v24[13] = *(&self->_apparentTractRef._tableUID._upper + 5);
  v6 = [TSCEEvalRef alloc];
  v10 = objc_msgSend_tableResolver(self->_evalRef, v7, v8, v9);
  v12 = objc_msgSend_initWithTableResolver_tractRefCore_(v6, v11, v10, &v22);
  v13 = [TSCEReferenceValue alloc];
  v17 = objc_msgSend_containingCell(referenceCopy, v14, v15, v16);
  v21 = 0;
  isOutputOfAFunction = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v13, v18, v12, v17, &v21, self->_permitsAccessInsideMergeRegions, 0);

  TSUIndexSet::~TSUIndexSet(&v23);
  TSUIndexSet::~TSUIndexSet(&v22);

  return isOutputOfAFunction;
}

- (char)deepType:(id)type outError:(id *)error
{
  typeCopy = type;
  if (objc_msgSend_count(self, v7, v8, v9) == 1)
  {
    v10 = typeCopy;
    v16[0] = v10;
    v16[1] = 0;
    v17 = 0;
    v18[0] = 0xFFFFFFFFLL;
    *(v18 + 7) = 0;
    v19 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v20 = 0;
    v21 = 0;
    v12 = objc_msgSend_valueAtIndex_accessContext_(self, v11, 0, v16);
    v14 = objc_msgSend_deepType_outError_(v12, v13, v10, error);
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (id)asValueGrid:(id)grid
{
  gridCopy = grid;
  v4 = objc_opt_new();
  v23 = 0;
  v24 = objc_msgSend_dimensions(self, v5, v6, v7);
  v11 = 0;
  v22 = *objc_msgSend_containingCell(gridCopy, v8, v9, v10);
  do
  {
    v13 = objc_msgSend_makeCellReferenceForOffset_apparentTractRef_(self->_evalRef, v12, &v23, &self->_apparentTractRef);

    if (v13)
    {
      v14 = [TSCEReferenceValue alloc];
      v21 = 0;
      isOutputOfAFunction = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v14, v15, v13, &v22, &v21, 1, self->_isOutputOfAFunction);
      objc_msgSend_setValue_atCoord_(v4, v17, isOutputOfAFunction, &v23);
    }

    v18 = TSCEGridDimensions::nextCoordRowMajorOrder(&v24, &v23);
    v23 = v18;
    if (v18 == 0x7FFFFFFF)
    {
      break;
    }

    v11 = v13;
  }

  while ((v18 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000);

  return v4;
}

- (id)deepResolveInPlace:(id)place
{
  placeCopy = place;
  v5 = objc_opt_new();
  v9 = 0;
  v30 = 0;
  v31 = objc_msgSend_dimensions(self, v6, v7, v8);
  do
  {
    v11 = objc_msgSend_makeCellReferenceForOffset_apparentTractRef_(self->_evalRef, v10, &v30, &self->_apparentTractRef);

    if (v11)
    {
      v12 = [TSCEReferenceValue alloc];
      v16 = objc_msgSend_containingCell(placeCopy, v13, v14, v15);
      v29 = 0;
      isOutputOfAFunction = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v12, v17, v11, v16, &v29, 1, 0);
      v20 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(isOutputOfAFunction, v19, placeCopy, 1);
      objc_msgSend_setValue_atCoord_(v5, v21, v20, &v30);
    }

    v22 = TSCEGridDimensions::nextCoordRowMajorOrder(&v31, &v30);
    v30 = v22;
    if (v22 == 0x7FFFFFFF)
    {
      break;
    }

    v9 = v11;
  }

  while ((v22 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000);
  objc_msgSend_deepResolveInPlace_(v5, v10, placeCopy, v23);
  v24 = [TSCEDenseGrid alloc];
  v27 = objc_msgSend_initWithValueGrid_(v24, v25, v5, v26);

  return v27;
}

- (id)asNumber:(id)number functionSpec:(id)spec argIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  numberCopy = number;
  if (objc_msgSend_count(self, v11, v12, v13) == 1)
  {
    v14 = numberCopy;
    v21[0] = v14;
    v21[1] = 0;
    v22 = 0;
    v23[0] = 0xFFFFFFFFLL;
    *(v23 + 7) = 0;
    v24 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v25 = 0;
    v26 = 0;
    v16 = objc_msgSend_valueAtIndex_accessContext_(self, v15, 0, v21);
    v18 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v16, v17, v14, spec, v7, error);
  }

  else
  {
    v20.receiver = self;
    v20.super_class = TSCEReferenceBackedGrid;
    v18 = [(TSCEAbstractGrid *)&v20 asNumber:numberCopy functionSpec:spec argIndex:v7 outError:error];
  }

  return v18;
}

- (id)asDate:(id)date functionSpec:(id)spec argIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  dateCopy = date;
  if (objc_msgSend_count(self, v11, v12, v13) == 1)
  {
    v14 = dateCopy;
    v21[0] = v14;
    v21[1] = 0;
    v22 = 0;
    v23[0] = 0xFFFFFFFFLL;
    *(v23 + 7) = 0;
    v24 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v25 = 0;
    v26 = 0;
    v16 = objc_msgSend_valueAtIndex_accessContext_(self, v15, 0, v21);
    v18 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v16, v17, v14, spec, v7, error);
  }

  else
  {
    v20.receiver = self;
    v20.super_class = TSCEReferenceBackedGrid;
    v18 = [(TSCEAbstractGrid *)&v20 asDate:dateCopy functionSpec:spec argIndex:v7 outError:error];
  }

  return v18;
}

- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  booleanCopy = boolean;
  if (objc_msgSend_count(self, v11, v12, v13) == 1)
  {
    v14 = booleanCopy;
    v21[0] = v14;
    v21[1] = 0;
    v22 = 0;
    v23[0] = 0xFFFFFFFFLL;
    *(v23 + 7) = 0;
    v24 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v25 = 0;
    v26 = 0;
    v16 = objc_msgSend_valueAtIndex_accessContext_(self, v15, 0, v21);
    v18 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v16, v17, v14, spec, v7, error);
  }

  else
  {
    v20.receiver = self;
    v20.super_class = TSCEReferenceBackedGrid;
    v18 = [(TSCEAbstractGrid *)&v20 asBoolean:booleanCopy functionSpec:spec argIndex:v7 outError:error];
  }

  return v18;
}

- (id)asReference:(id)reference functionSpec:(id)spec argIndex:(int)index outError:(id *)error
{
  referenceCopy = reference;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCEReferenceBackedGrid asReference:functionSpec:argIndex:outError:]", v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceBackedGrid.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 187, 0, "outError non-nil required to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = [TSCEReferenceValue alloc];
  evalRef = self->_evalRef;
  v25 = 0;
  isOutputOfAFunction = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v20, v22, evalRef, &unk_221803998, &v25, self->_permitsAccessInsideMergeRegions, 0);

  return isOutputOfAFunction;
}

- (id)asString:(id)string functionSpec:(id)spec argIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  stringCopy = string;
  if (objc_msgSend_count(self, v11, v12, v13) == 1)
  {
    v14 = stringCopy;
    v21[0] = v14;
    v21[1] = 0;
    v22 = 0;
    v23[0] = 0xFFFFFFFFLL;
    *(v23 + 7) = 0;
    v24 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v25 = 0;
    v26 = 0;
    v16 = objc_msgSend_valueAtIndex_accessContext_(self, v15, 0, v21);
    v18 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v16, v17, v14, spec, v7, error);
  }

  else
  {
    v20.receiver = self;
    v20.super_class = TSCEReferenceBackedGrid;
    v18 = [(TSCEAbstractGrid *)&v20 asString:stringCopy functionSpec:spec argIndex:v7 outError:error];
  }

  return v18;
}

- (id)asRawString:(id)string functionSpec:(id)spec argIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  stringCopy = string;
  if (objc_msgSend_count(self, v11, v12, v13) == 1)
  {
    v14 = stringCopy;
    v21[0] = v14;
    v21[1] = 0;
    v22 = 0;
    v23[0] = 0xFFFFFFFFLL;
    *(v23 + 7) = 0;
    v24 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v25 = 0;
    v26 = 0;
    v16 = objc_msgSend_valueAtIndex_accessContext_(self, v15, 0, v21);
    v18 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v16, v17, v14, spec, v7, error);
  }

  else
  {
    v20.receiver = self;
    v20.super_class = TSCEReferenceBackedGrid;
    v18 = [(TSCEAbstractGrid *)&v20 asRawString:stringCopy functionSpec:spec argIndex:v7 outError:error];
  }

  return v18;
}

- (unsigned)width
{
  if (!sub_2210EE8F8(&self->_apparentTractRef._columns))
  {
    return 1;
  }

  return TSCECellTractRefCore::numColumns(&self->_apparentTractRef);
}

- (unsigned)height
{
  if (!sub_2210EE8F8(&self->_apparentTractRef._columns))
  {
    return 1;
  }

  return TSCECellTractRefCore::numRows(&self->_apparentTractRef);
}

- (TSKUIDStruct)tableUID
{
  ResolverUID = objc_msgSend_getResolverUID(self->_evalRef, a2, v2, v3);
  result._upper = v5;
  result._lower = ResolverUID;
  return result;
}

- (unint64_t)count
{
  if (!sub_2210EE8F8(&self->_apparentTractRef._columns))
  {
    return 1;
  }

  v6 = objc_msgSend_width(self, v3, v4, v5);
  return objc_msgSend_height(self, v7, v8, v9) * v6;
}

- (id)valueAtGridCoord:(const TSCEGridCoord *)coord accessContext:(TSCEGridAccessContext *)context
{
  v6 = objc_msgSend_makeCellReferenceForOffset_apparentTractRef_(self->_evalRef, a2, coord, &self->_apparentTractRef);
  v9 = v6;
  if (context->var7)
  {
    context->var9 = objc_msgSend_getHidingActionForRows_(v6, v7, 0, v8);
    context->var10 = objc_msgSend_getHidingActionForRows_(v9, v10, 1, v11);
  }

  v12 = [TSCEReferenceValue alloc];
  LOBYTE(v32._topLeft.row) = 0;
  isOutputOfAFunction = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v12, v13, v9, &unk_221803998, &v32, 1, self->_isOutputOfAFunction);
  evalRef = self->_evalRef;
  if (evalRef)
  {
    objc_msgSend_rangeRef(evalRef, v14, v15, v16);
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  v19 = v33;
  context->var11.range = v32;
  context->var11._tableUID = v19;
  v20 = TSCEGridAccessContext::argSpec(context, v14, v15, v16);
  if (v20)
  {
    v24 = objc_msgSend_argumentAccessor(v20, v21, v22, v23);
    v31 = isOutputOfAFunction;
    v25 = (*(*v24 + 16))(v24, &v31, context, 0);
    v26 = v31;

    if (v25)
    {
      v29 = objc_msgSend_errorValue_(TSCEErrorValue, v27, v25, v28);

      goto LABEL_11;
    }

    isOutputOfAFunction = v26;
  }

  v26 = isOutputOfAFunction;
  v29 = v26;
LABEL_11:

  return v29;
}

- (id)resolvedValueAtGridCoord:(const TSCEGridCoord *)coord accessContext:(TSCEGridAccessContext *)context
{
  v6 = objc_msgSend_makeCellReferenceForOffset_apparentTractRef_(self->_evalRef, a2, coord, &self->_apparentTractRef);
  v10 = v6;
  if (context->var7)
  {
    context->var9 = objc_msgSend_getHidingActionForRows_(v6, v7, 0, v9);
    context->var10 = objc_msgSend_getHidingActionForRows_(v10, v11, 1, v12);
  }

  evalRef = self->_evalRef;
  if (evalRef)
  {
    objc_msgSend_rangeRef(evalRef, v7, v8, v9);
  }

  else
  {
    memset(v34, 0, 32);
  }

  v14 = *&v34[16];
  context->var11.range = *v34;
  context->var11._tableUID = v14;
  if (v10)
  {
    var0 = context->var0;
    if (objc_msgSend_inArrayMode(context->var0, v7, v8, v9))
    {
      objc_msgSend_valueForEvalContext_readOptions_(v10, v16, var0, 5);
    }

    else
    {
      objc_msgSend_valueForEvalContext_readOptions_(v10, v16, var0, 1);
    }
    v17 = ;
    if (self->_isOutputOfAFunction)
    {
      objc_msgSend_rangeRef(v10, v7, v8, v9);
      *v34 = 1;
      *&v34[8] = v32;
      *&v34[24] = v33;
      v35 = 0;
      v39 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      objc_msgSend_addCalculatedPrecedent_(var0, v18, v34, v19);
    }
  }

  else
  {
    v17 = 0;
  }

  v20 = TSCEGridAccessContext::argSpec(context, v7, v8, v9);
  if (v20)
  {
    v24 = objc_msgSend_argumentAccessor(v20, v21, v22, v23);
    v31 = v17;
    v25 = (*(*v24 + 16))(v24, &v31, context, 0);
    v26 = v31;

    if (v25)
    {
      v29 = objc_msgSend_errorValue_(TSCEErrorValue, v27, v25, v28);

      goto LABEL_18;
    }

    v17 = v26;
  }

  v26 = v17;
  v29 = v26;
LABEL_18:

  return v29;
}

- (id)valueAtIndex:(unint64_t)index accessContext:(TSCEGridAccessContext *)context
{
  if (sub_2210EE8F8(&self->_apparentTractRef._columns))
  {
    v10 = objc_msgSend_width(self, v7, v8, v9);
    v17[0] = index % v10;
    v17[1] = index / v10;
    v12 = objc_msgSend_valueAtGridCoord_accessContext_(self, v11, v17, context);
  }

  else
  {
    v13 = objc_msgSend_invalidReferenceError(TSCEError, v7, v8, v9);
    v12 = objc_msgSend_errorValue_(TSCEErrorValue, v14, v13, v15);
  }

  return v12;
}

- (id)subGridValueAtGridCoord:(const TSCEGridCoord *)coord width:(int)width height:(int)height accessContext:(TSCEGridAccessContext *)context
{
  v7 = *&height;
  v11 = objc_msgSend_rangeCoord(self->_evalRef, a2, coord, *&width);
  v15 = v11;
  v16 = v11 & 0xFFFF00000000;
  v17 = v12 & 0xFFFF00000000;
  if (v11 != 0x7FFFFFFFLL || v16 == 0x7FFF00000000 || v17 == 0x7FFF00000000)
  {
    if (v11 != 0x7FFFFFFFLL && v16 == 0x7FFF00000000 && v17 == 0x7FFF00000000)
    {
      v22 = v12 != 0x7FFFFFFF && coord->column == 0;
      if (v22 && objc_msgSend_width(self, v12, v13, v14) == width)
      {
        v23 = (coord->row + v15);
        v24 = v23 | 0x7FFF00000000;
        v25 = (v7 + v23 - 1) | 0x7FFF00000000;
        goto LABEL_38;
      }
    }
  }

  else
  {
    v26 = v12 == 0x7FFFFFFF && coord->row == 0;
    if (v26 && objc_msgSend_height(self, v12, v13, v14) == v7)
    {
      v25 = ((width + LOWORD(coord->column) + WORD2(v15) - 1) << 32) | 0x7FFFFFFF;
      v24 = ((WORD2(v15) + LOWORD(coord->column)) << 32) | 0x7FFFFFFF;
      goto LABEL_38;
    }
  }

  if (TSUIndexSet::count(&self->_apparentTractRef._columns))
  {
    v27 = TSUIndexSet::firstIndex(&self->_apparentTractRef._columns) << 32;
  }

  else
  {
    v27 = 0x7FFF00000000;
  }

  if (TSUIndexSet::count(&self->_apparentTractRef._rows))
  {
    Index = TSUIndexSet::firstIndex(&self->_apparentTractRef._rows);
  }

  else
  {
    Index = 0x7FFFFFFFLL;
  }

  v51 = (Index | v27);
  v52 = (width | (v7 << 32));
  TSUCellRect::offsetBy();
  v29 = v51;
  v30 = v52;
  v24 = __C(v29, v30);
  v25 = v31;
LABEL_38:
  v32 = [TSCEReferenceValue alloc];
  v33 = context->var0;
  v51 = v24;
  v52 = v25;
  v53 = objc_msgSend_tableUID(self, v34, v35, v36);
  v54 = v37;
  v50 = 0;
  v38 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v32, v37, v33, &v51, &v50);

  v42 = TSCEGridAccessContext::argSpec(context, v39, v40, v41);
  if (v42 && ((v46 = objc_msgSend_argumentType(v42, v43, v44, v45), v46 == 1) || v46 == 6 || v46 == 255) || width != 1 || v7 != 1)
  {
    v47 = v38;
  }

  else
  {
    v47 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v38, v43, context->var0, 1);
  }

  v48 = v47;

  return v48;
}

- (TSCEFormat)formatAtIndex:(SEL)index accessContext:(unint64_t)context
{
  contextCopy = context;
  result = objc_msgSend_tableResolver(self->_evalRef, index, context, a5);
  if (result)
  {
    v12 = result;
    v13 = objc_msgSend_width(self, v9, v10, v11);
    v17 = 0;
    v16 = TSCECellTractRefCore::coordAtColumnOffset(&self->_apparentTractRef, (contextCopy % v13), contextCopy / v13, v14);
    v15 = TSCETableResolverWrapper::formatAtBaseCellCoord(v12, &v16, &v17);
    TSCEFormat::TSCEFormat(retstr, v15, v17);
  }

  else
  {
    retstr->_tskFormat = 0;
    retstr->_formatType = 0;
    retstr->_formatState = 0;
    *&retstr->_durationFormat = *&retstr->_durationFormat & 0xC080 | 0x421;
    *(&retstr->_durationFormat + 2) = *(&retstr->_durationFormat + 2) & 0xF8 | 1;
    *&retstr->_baseFormat.base = -50266102;
    retstr->_numberFormat.decimalPlaces = -3;
    *(&retstr->_numberFormat + 1) &= 0xE0u;
    retstr->_numberFormat.currencyCodeIndex = 0;
  }

  return result;
}

@end