@interface TSCEAggregateGrid
- (TSCEAggregateGrid)initWithGrids:(const void *)grids;
- (char)deepType:(id)type outError:(id *)error;
- (id).cxx_construct;
- (id)asValueGrid:(id)grid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deepResolveInPlace:(id)place;
- (id)valueAtGridCoord:(const TSCEGridCoord *)coord accessContext:(TSCEGridAccessContext *)context;
- (id)valueAtIndex:(unint64_t)index accessContext:(TSCEGridAccessContext *)context;
- (void)dealloc;
@end

@implementation TSCEAggregateGrid

- (TSCEAggregateGrid)initWithGrids:(const void *)grids
{
  v32.receiver = self;
  v32.super_class = TSCEAggregateGrid;
  v4 = [(TSCEAbstractGrid *)&v32 init];
  v5 = v4;
  if (v4)
  {
    p_grids = &v4->_grids;
    if (&v4->_grids != grids)
    {
      sub_22116CF34(&v4->_grids, *grids, *(grids + 1), (*(grids + 1) - *grids) >> 3);
    }

    v5->_count = 0;
    v5->_lastReturnedIndex = 0x7FFFFFFFFFFFFFFFLL;
    v5->_lastReturnedArgIndex = 0x7FFFFFFFFFFFFFFFLL;
    v5->_lastReturnedSubindex = 0x7FFFFFFFFFFFFFFFLL;
    begin = p_grids->__begin_;
    var0 = v5->_grids.var0;
    v9 = var0 - p_grids->__begin_;
    v10 = malloc_type_malloc(v9, 0x100004000313F17uLL);
    v5->_argumentCounts = v10;
    if (var0 != begin && v10 == 0)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCEAggregateGrid initWithGrids:]", v12);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAggregateGrid.mm", v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 44, 0, "failed to allocate memory");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
      v21 = 0;
      goto LABEL_15;
    }

    if (var0 != begin)
    {
      v14 = 0;
      if ((v9 >> 3) <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v9 >> 3;
      }

      do
      {
        v16 = p_grids->__begin_[v14];
        v20 = objc_msgSend_count(v16, v17, v18, v19);
        v5->_argumentCounts[v14] = v20;
        v5->_count += v20;

        ++v14;
      }

      while (v15 != v14);
    }
  }

  v21 = v5;
LABEL_15:

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCEAggregateGrid alloc];
  result = objc_msgSend_initWithGrids_(v4, v5, &self->_grids, v6);
  *(result + 6) = self->_lastReturnedIndex;
  *(result + 7) = self->_lastReturnedArgIndex;
  *(result + 8) = self->_lastReturnedSubindex;
  return result;
}

- (void)dealloc
{
  free(self->_argumentCounts);
  v3.receiver = self;
  v3.super_class = TSCEAggregateGrid;
  [(TSCEAggregateGrid *)&v3 dealloc];
}

- (id)asValueGrid:(id)grid
{
  gridCopy = grid;
  v5 = objc_opt_new();
  v6 = gridCopy;
  v17[0] = v6;
  v17[1] = 0;
  v18 = 0;
  v19[0] = 0xFFFFFFFFLL;
  *(v19 + 7) = 0;
  v20 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v21 = 0;
  v22 = 0;
  v11 = objc_msgSend_count(self, v7, v8, v9);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v13 = objc_msgSend_valueAtIndex_accessContext_(self, v10, i, v17);
      v16[0] = 0;
      v16[1] = i;
      objc_msgSend_setValue_atCoord_(v5, v14, v13, v16);
    }
  }

  return v5;
}

- (id)deepResolveInPlace:(id)place
{
  placeCopy = place;
  begin = self->_grids.__begin_;
  var0 = self->_grids.var0;
  while (begin != var0)
  {
    v7 = *begin;
    v10 = objc_msgSend_deepResolveInPlace_(v7, v8, placeCopy, v9);

    ++begin;
  }

  return self;
}

- (id)valueAtGridCoord:(const TSCEGridCoord *)coord accessContext:(TSCEGridAccessContext *)context
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAggregateGrid valueAtGridCoord:accessContext:]", context);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAggregateGrid.mm", v7);
  v9 = objc_opt_class();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v8, 106, 0, "2D array access not implemented for class %@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);

  return objc_msgSend_nilValue(TSCENilValue, v14, v15, v16);
}

- (id)valueAtIndex:(unint64_t)index accessContext:(TSCEGridAccessContext *)context
{
  begin = self->_grids.__begin_;
  lastReturnedIndex = self->_lastReturnedIndex;
  if (lastReturnedIndex != 0x7FFFFFFFFFFFFFFFLL && lastReturnedIndex + 1 == index)
  {
    lastReturnedSubindex = self->_lastReturnedSubindex;
    argumentCounts = self->_argumentCounts;
    if (lastReturnedSubindex != argumentCounts[self->_lastReturnedArgIndex] - 1)
    {
      indexCopy2 = lastReturnedSubindex + 1;
LABEL_23:
      self->_lastReturnedSubindex = indexCopy2;
      goto LABEL_24;
    }

    v15 = self->_grids.var0 - begin;
    self->_lastReturnedSubindex = 0;
    v16 = self->_lastReturnedArgIndex + 1;
    do
    {
      v17 = v16;
      self->_lastReturnedArgIndex = v16;
      if (v16 >= v15)
      {
        break;
      }
    }

    while (!argumentCounts[v16++]);
    if (v15 != v17)
    {
      goto LABEL_24;
    }

    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAggregateGrid valueAtIndex:accessContext:]", context);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAggregateGrid.mm", v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 125, 0, "ArgumentAccessor consistency violation");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
    v31 = objc_msgSend_functionName(context->var1, v28, v29, v30);
    v34 = objc_msgSend_argumentErrorForFunctionName_(TSCEError, v32, v31, v33);
    v37 = objc_msgSend_errorValue_(TSCEErrorValue, v35, v34, v36);
  }

  else
  {
    if (lastReturnedIndex == 0x7FFFFFFFFFFFFFFFLL || lastReturnedIndex - 1 != index)
    {
      v9 = self->_argumentCounts;
      v10 = *v9;
      if (*v9 <= index)
      {
        v39 = 0;
        v40 = v9 + 1;
        indexCopy2 = index;
        do
        {
          indexCopy2 -= v10;
          v11 = v39 + 1;
          v10 = v40[v39++];
        }

        while (indexCopy2 >= v10);
      }

      else
      {
        v11 = 0;
        indexCopy2 = index;
      }

      self->_lastReturnedArgIndex = v11;
      goto LABEL_23;
    }

    v38 = self->_lastReturnedSubindex;
    if (v38)
    {
      self->_lastReturnedSubindex = v38 - 1;
LABEL_24:
      self->_lastReturnedIndex = index;
      v41 = objc_msgSend_valueAtIndex_accessContext_(begin[self->_lastReturnedArgIndex], a2, self->_lastReturnedSubindex, context);
      goto LABEL_25;
    }

    v43 = self->_lastReturnedArgIndex - 1;
    while (1)
    {
      self->_lastReturnedArgIndex = v43;
      if (v43 + 1 < 1)
      {
        break;
      }

      v44 = self->_argumentCounts[v43--];
      if (v44)
      {
        indexCopy2 = v44 - 1;
        goto LABEL_23;
      }
    }

    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAggregateGrid valueAtIndex:accessContext:]", context);
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAggregateGrid.mm", v48);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v50, v46, v49, 140, 0, "ArgumentAccessor consistency violation");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53);
    v31 = objc_msgSend_functionName(context->var1, v54, v55, v56);
    v34 = objc_msgSend_argumentErrorForFunctionName_(TSCEError, v57, v31, v58);
    v37 = objc_msgSend_errorValue_(TSCEErrorValue, v59, v34, v60);
  }

  v41 = v37;

LABEL_25:

  return v41;
}

- (char)deepType:(id)type outError:(id *)error
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAggregateGrid deepType:outError:]", error);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAggregateGrid.mm", v7);
  v9 = objc_opt_class();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v8, 176, 0, "Shouldn't call deepType on an %@ class", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  return 9;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 1) = 0;
  return self;
}

@end