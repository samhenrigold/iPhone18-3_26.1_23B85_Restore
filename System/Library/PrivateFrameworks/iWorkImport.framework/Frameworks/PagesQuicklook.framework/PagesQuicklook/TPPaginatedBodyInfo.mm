@interface TPPaginatedBodyInfo
- (BOOL)laysOutVertically;
- (id)nextTargetFirstChildHint;
- (id)nextTargetFirstColumn;
- (id)nextTargetTopicNumberHints;
- (id)pageHint;
- (id)pageInfo;
- (id)previousTargetLastColumn;
- (int64_t)modelRootIndex;
- (void)inflateBodyLayout:(id)layout;
@end

@implementation TPPaginatedBodyInfo

- (id)pageInfo
{
  objc_opt_class();
  v12 = objc_msgSend_parentInfo(self, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v13 = TSUCheckedDynamicCast();

  return v13;
}

- (id)previousTargetLastColumn
{
  v10 = objc_msgSend_pageInfo(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_pageController(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v30 = objc_msgSend_pageIndex(v10, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  v39 = objc_msgSend_i_columnPriorToPageIndex_(v20, v31, v35, v36, v37, v38, v30, v32, v33, v34);

  return v39;
}

- (id)nextTargetFirstColumn
{
  v10 = objc_msgSend_pageInfo(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_pageController(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v30 = objc_msgSend_pageIndex(v10, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  v39 = objc_msgSend_i_columnAfterPageIndex_(v20, v31, v35, v36, v37, v38, v30, v32, v33, v34);

  return v39;
}

- (id)nextTargetTopicNumberHints
{
  v10 = objc_msgSend_pageInfo(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_pageController(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v30 = objc_msgSend_pageIndex(v10, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  v39 = objc_msgSend_i_topicNumberHintsAfterPageIndex_(v20, v31, v35, v36, v37, v38, v30, v32, v33, v34);

  return v39;
}

- (id)nextTargetFirstChildHint
{
  v10 = objc_msgSend_pageInfo(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_pageController(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v30 = objc_msgSend_pageIndex(v10, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  v39 = objc_msgSend_i_firstChildHintAfterPageIndex_(v20, v31, v35, v36, v37, v38, v30, v32, v33, v34);

  return v39;
}

- (id)pageHint
{
  v10 = objc_msgSend_pageInfo(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_pageController(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v30 = objc_msgSend_pageIndex(v10, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  v39 = objc_msgSend_i_pageHintForPageIndex_(v20, v31, v35, v36, v37, v38, v30, v32, v33, v34);

  return v39;
}

- (BOOL)laysOutVertically
{
  v10 = objc_msgSend_pageInfo(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_documentRoot(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v30 = objc_msgSend_laysOutBodyVertically(v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);

  return v30;
}

- (void)inflateBodyLayout:(id)layout
{
  layoutCopy = layout;
  v14 = objc_msgSend_info(layoutCopy, v5, v10, v11, v12, v13, v6, v7, v8, v9);

  if (v14 != self)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v20, v21, v22, v23, "[TPPaginatedBodyInfo inflateBodyLayout:]", v17, v18, v19);
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedBodyInfo.m", v27, v28, v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v35, v36, v37, v38, v39, v25, v34, 58, 0, "we really only should be inflating body layouts that point to this info");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v45, v46, v47, v48, v41, v42, v43, v44);
  }

  v67 = objc_msgSend_pageInfo(self, v15, v20, v21, v22, v23, v16, v17, v18, v19);
  v58 = objc_msgSend_pageController(v67, v49, v54, v55, v56, v57, v50, v51, v52, v53);
  objc_msgSend_i_inflateColumnsInBodyLayout_(v58, v59, v63, v64, v65, v66, layoutCopy, v60, v61, v62);
}

- (int64_t)modelRootIndex
{
  v10 = objc_msgSend_pageInfo(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_pageIndex(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

@end