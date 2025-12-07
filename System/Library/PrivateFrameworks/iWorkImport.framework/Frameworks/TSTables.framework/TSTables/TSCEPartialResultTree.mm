@interface TSCEPartialResultTree
- (TSCEPartialResult)root;
- (TSCEPartialResultTree)init;
- (id).cxx_construct;
- (id)lookupSymbol:(unsigned int)symbol;
- (unsigned)currentThunkOffset;
- (void)addPartialResult:(id)result;
- (void)addSymbol:(unsigned int)symbol mappedToIdentifier:(id)identifier;
- (void)popThunkOffset;
- (void)pushThunkOffset:(unsigned int)offset;
@end

@implementation TSCEPartialResultTree

- (TSCEPartialResultTree)init
{
  v3.receiver = self;
  v3.super_class = TSCEPartialResultTree;
  return [(TSCEPartialResultTree *)&v3 init];
}

- (void)addSymbol:(unsigned int)symbol mappedToIdentifier:(id)identifier
{
  symbolCopy = symbol;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v9 = &symbolCopy;
    v7 = sub_2212E351C(&self->_symbolLookup.__table_.__bucket_list_.__ptr_, &symbolCopy, &unk_2217E1201, &v9);
    objc_storeStrong(v7 + 3, identifier);
  }
}

- (id)lookupSymbol:(unsigned int)symbol
{
  symbolCopy = symbol;
  v3 = sub_2211DC534(&self->_symbolLookup.__table_.__bucket_list_.__ptr_, &symbolCopy);
  if (v3)
  {
    v3 = v3[3];
  }

  return v3;
}

- (TSCEPartialResult)root
{
  begin = self->_resultStack.__begin_;
  var0 = self->_resultStack.var0;
  if (begin == var0)
  {
    v15 = 0;
  }

  else
  {
    if (var0 - begin != 8)
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEPartialResultTree root]", v2);
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEPartialResultTree.mm", v9);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 163, 0, "Should be down to a single node here if everything is working right");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
      var0 = self->_resultStack.var0;
    }

    v15 = *(var0 - 1);
  }

  return v15;
}

- (void)pushThunkOffset:(unsigned int)offset
{
  end = self->_thunkOffsets.__end_;
  cap = self->_thunkOffsets.__cap_;
  if (end >= cap)
  {
    begin = self->_thunkOffsets.__begin_;
    v9 = end - begin;
    v10 = end - begin;
    v11 = v10 + 1;
    if ((v10 + 1) >> 62)
    {
      sub_22107C148();
    }

    v12 = cap - begin;
    if (v12 >> 1 > v11)
    {
      v11 = v12 >> 1;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFFCLL;
    v14 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    if (v14)
    {
      sub_2210C836C(&self->_thunkOffsets, v14);
    }

    v15 = end - begin;
    v16 = (4 * v10);
    v17 = (4 * v10 - 4 * v15);
    *v16 = offset;
    v7 = v16 + 1;
    memcpy(v17, begin, v9);
    v18 = self->_thunkOffsets.__begin_;
    self->_thunkOffsets.__begin_ = v17;
    self->_thunkOffsets.__end_ = v7;
    self->_thunkOffsets.__cap_ = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *end = offset;
    v7 = end + 1;
  }

  self->_thunkOffsets.__end_ = v7;
}

- (void)popThunkOffset
{
  begin = self->_thunkOffsets.__begin_;
  end = self->_thunkOffsets.__end_;
  if (begin == end)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEPartialResultTree popThunkOffset]", v2);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEPartialResultTree.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 172, 0, "Cannot pop thunk offset - stack is empty");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
    begin = self->_thunkOffsets.__begin_;
    end = self->_thunkOffsets.__end_;
  }

  if (begin != end)
  {
    self->_thunkOffsets.__end_ = end - 1;
  }
}

- (unsigned)currentThunkOffset
{
  end = self->_thunkOffsets.__end_;
  if (self->_thunkOffsets.__begin_ == end)
  {
    return 0;
  }

  else
  {
    return *(end - 1);
  }
}

- (void)addPartialResult:(id)result
{
  resultCopy = result;
  v59 = resultCopy;
  v8 = objc_msgSend_currentThunkOffset(self, v5, v6, v7);
  if (resultCopy)
  {
    v12 = v8;
    v13 = objc_msgSend_offset(resultCopy, v9, v10, v11);
    objc_msgSend_setOffset_(resultCopy, v14, (v13 + v12), v15);
  }

  else
  {
    v19 = [TSCEPartialResult alloc];
    v23 = objc_msgSend_nilValue(TSCENilValue, v20, v21, v22);
    v59 = objc_msgSend_initWithValue_(v19, v24, v23, v25);

    resultCopy = v59;
  }

  v28 = objc_msgSend_numArgs(resultCopy, v16, v17, v18);
  v29 = v28;
  if (v28 > (self->_resultStack.var0 - self->_resultStack.__begin_))
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSCEPartialResultTree addPartialResult:]", v27);
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEPartialResultTree.mm", v33);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v35, v31, v34, 201, 0, "Error, insufficient children to process node: %lu vs %lu needed", self->_resultStack.var0 - self->_resultStack.__begin_, v28);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38);
  }

  if (v28 && v28 <= (self->_resultStack.var0 - self->_resultStack.__begin_))
  {
    v39 = objc_opt_new();
    var0 = self->_resultStack.var0;
    v41 = &var0[-v29];
    if (var0 != v41)
    {
      v58 = var0 - &self->_resultStack.__begin_[v29];
      do
      {
        v44 = *v41;
        if (v44)
        {
          objc_msgSend_addObject_(v39, v42, v44, v43);
          objc_msgSend_setParent_(v44, v45, resultCopy, v46);
        }

        else
        {
          v47 = MEMORY[0x277D81150];
          v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[TSCEPartialResultTree addPartialResult:]", v43);
          v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEPartialResultTree.mm", v50);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v52, v48, v51, 210, 0, "invalid nil value for '%{public}s'", "child");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55);
        }

        ++v41;
        var0 = self->_resultStack.var0;
      }

      while (v41 != var0);
      v41 = (self->_resultStack.__begin_ + v58);
    }

    sub_221165C5C(&self->_resultStack, v41, var0);
    objc_msgSend_setChildren_(resultCopy, v56, v39, v57);
  }

  sub_2212E2EB8(&self->_resultStack.__begin_, &v59);
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 16) = 1065353216;
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 9) = 0;
  return self;
}

@end