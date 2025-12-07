@interface TPPageIndexPath
- (TPPageIndexPath)initWithSectionIndex:(unint64_t)index pageIndex:(unint64_t)pageIndex;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setSectionIndex:(unint64_t)index;
@end

@implementation TPPageIndexPath

- (void)setSectionIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageIndexPath setSectionIndex:]", v3, v4, v5);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageIndexPath.m", v15, v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v23, v24, v25, v26, v27, v13, v22, 26, 0, "bad section index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v33, v34, v35, v36, v29, v30, v31, v32);
  }

  self->_sectionIndex = index;
}

- (TPPageIndexPath)initWithSectionIndex:(unint64_t)index pageIndex:(unint64_t)pageIndex
{
  v42.receiver = self;
  v42.super_class = TPPageIndexPath;
  v6 = [(TPPageIndexPath *)&v42 init];
  v15 = v6;
  if (v6)
  {
    v6->_sectionIndex = index;
    if (pageIndex >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v11, v12, v13, v14, "[TPPageIndexPath initWithSectionIndex:pageIndex:]", v8, v9, v10);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageIndexPath.m", v19, v20, v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v27, v28, v29, v30, v31, v17, v26, 33, 0, "Illegal page index: %lu", pageIndex);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v37, v38, v39, v40, v33, v34, v35, v36);
    }

    v15->_pageIndex = pageIndex;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v14 = objc_msgSend_allocWithZone_(v5, v6, v10, v11, v12, v13, zone, v7, v8, v9);
  sectionIndex = self->_sectionIndex;
  pageIndex = self->_pageIndex;

  return objc_msgSend_initWithSectionIndex_pageIndex_(v14, v15, v18, v19, v20, v21, sectionIndex, pageIndex, v16, v17);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return objc_msgSend_stringWithFormat_(v3, v5, v9, v10, v11, v12, @"(%@*) %p: section index %d, page index %d", v6, v7, v8, v4, self, self->_sectionIndex, self->_pageIndex);
}

@end