@interface TSTTableViewSortRule
+ (id)ruleWithViewIndex:(TSUViewColumnOrRowIndex)index direction:(int)direction;
- (TSTTableViewSortRule)initWithViewIndex:(TSUViewColumnOrRowIndex)index direction:(int)direction;
- (TSUModelColumnOrRowIndex)baseIndex;
- (id)initFromArchive:(const void *)archive;
- (void)encodeToArchive:(void *)archive;
@end

@implementation TSTTableViewSortRule

+ (id)ruleWithViewIndex:(TSUViewColumnOrRowIndex)index direction:(int)direction
{
  v4 = *&direction;
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithViewIndex_direction_(v6, v7, index._index, v4);

  return v8;
}

- (TSTTableViewSortRule)initWithViewIndex:(TSUViewColumnOrRowIndex)index direction:(int)direction
{
  v6.receiver = self;
  v6.super_class = TSTTableViewSortRule;
  result = [(TSTTableSortRule *)&v6 initWithBaseIndex:0x7FFFFFFFLL direction:*&direction];
  if (result)
  {
    result->_viewIndex = index;
  }

  return result;
}

- (TSUModelColumnOrRowIndex)baseIndex
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableViewSortRule baseIndex]", v2);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableSortRule.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 111, 0, "Base index is not valid on TSTTableViewSortRule.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  v14.receiver = self;
  v14.super_class = TSTTableViewSortRule;
  return [(TSTTableSortRule *)&v14 baseIndex];
}

- (void)encodeToArchive:(void *)archive
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableViewSortRule encodeToArchive:]", v3);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableSortRule.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 118, 0, "TSTTableViewColumnSortRule should never be archived");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  v13 = MEMORY[0x277CBEAD8];
  v14 = *MEMORY[0x277CBE658];
  v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"%s: %s", v16, "TSTTableViewColumnSortRule should never be archived", "[TSTTableViewSortRule encodeToArchive:]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v13, v18, v14, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (id)initFromArchive:(const void *)archive
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableViewSortRule initFromArchive:]", v3);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableSortRule.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 122, 0, "TSTTableViewColumnSortRule should never be unarchived");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  v13 = MEMORY[0x277CBEAD8];
  v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%s: %s", v15, "TSTTableViewColumnSortRule should never be unarchived", "[TSTTableViewSortRule initFromArchive:]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v13, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

@end