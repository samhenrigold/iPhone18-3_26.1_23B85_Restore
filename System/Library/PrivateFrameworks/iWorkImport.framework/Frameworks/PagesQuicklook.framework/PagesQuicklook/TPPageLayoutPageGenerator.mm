@interface TPPageLayoutPageGenerator
- (BOOL)wantsPageInSectionHint:(id)hint withState:(id)state;
- (void)createOrUpdatePageHintInSectionHint:(id)hint withState:(id)state;
@end

@implementation TPPageLayoutPageGenerator

- (BOOL)wantsPageInSectionHint:(id)hint withState:(id)state
{
  stateCopy = state;
  if (objc_msgSend_pageIndex(stateCopy, v5, v10, v11, v12, v13, v6, v7, v8, v9))
  {
    LOBYTE(v23) = 0;
  }

  else
  {
    v24 = objc_msgSend_section(stateCopy, v14, v19, v20, v21, v22, v15, v16, v17, v18);
    v34 = objc_msgSend_documentRoot(v24, v25, v30, v31, v32, v33, v26, v27, v28, v29);
    v44 = objc_msgSend_settings(v34, v35, v40, v41, v42, v43, v36, v37, v38, v39);
    v23 = objc_msgSend_hasBody(v44, v45, v50, v51, v52, v53, v46, v47, v48, v49) ^ 1;
  }

  return v23;
}

- (void)createOrUpdatePageHintInSectionHint:(id)hint withState:(id)state
{
  hintCopy = hint;
  v15 = objc_msgSend_pageIndex(state, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  v32 = objc_msgSend_pageHintForPageIndex_(hintCopy, v16, v20, v21, v22, v23, v15, v17, v18, v19);

  objc_msgSend_setPageKind_(v32, v24, v28, v29, v30, v31, 6, v25, v26, v27);
}

@end