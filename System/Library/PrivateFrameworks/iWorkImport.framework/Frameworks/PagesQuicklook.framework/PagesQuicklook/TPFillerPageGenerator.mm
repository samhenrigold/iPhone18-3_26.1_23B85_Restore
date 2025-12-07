@interface TPFillerPageGenerator
- (BOOL)wantsPageInSectionHint:(id)hint withState:(id)state;
- (void)createOrUpdatePageHintInSectionHint:(id)hint withState:(id)state;
@end

@implementation TPFillerPageGenerator

- (BOOL)wantsPageInSectionHint:(id)hint withState:(id)state
{
  stateCopy = state;
  if (objc_msgSend_pageIndex(stateCopy, v5, v10, v11, v12, v13, v6, v7, v8, v9))
  {
    goto LABEL_5;
  }

  v23 = objc_msgSend_section(stateCopy, v14, v19, v20, v21, v22, v15, v16, v17, v18);
  v33 = objc_msgSend_documentRoot(v23, v24, v29, v30, v31, v32, v25, v26, v27, v28);
  v43 = objc_msgSend_settings(v33, v34, v39, v40, v41, v42, v35, v36, v37, v38);
  hasBody = objc_msgSend_hasBody(v43, v44, v49, v50, v51, v52, v45, v46, v47, v48);

  if (!hasBody)
  {
    goto LABEL_5;
  }

  v63 = objc_msgSend_documentPageIndex(stateCopy, v54, v59, v60, v61, v62, v55, v56, v57, v58);
  v73 = objc_msgSend_section(stateCopy, v64, v69, v70, v71, v72, v65, v66, v67, v68);
  started = objc_msgSend_sectionStartKind(v73, v74, v79, v80, v81, v82, v75, v76, v77, v78);

  if (started == 2)
  {
    v63 ^= 1u;
    goto LABEL_6;
  }

  if (started != 1)
  {
LABEL_5:
    v63 = 0;
  }

LABEL_6:

  return v63 & 1;
}

- (void)createOrUpdatePageHintInSectionHint:(id)hint withState:(id)state
{
  hintCopy = hint;
  v15 = objc_msgSend_pageIndex(state, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  v32 = objc_msgSend_pageHintForPageIndex_(hintCopy, v16, v20, v21, v22, v23, v15, v17, v18, v19);

  objc_msgSend_setPageKind_(v32, v24, v28, v29, v30, v31, 2, v25, v26, v27);
}

@end