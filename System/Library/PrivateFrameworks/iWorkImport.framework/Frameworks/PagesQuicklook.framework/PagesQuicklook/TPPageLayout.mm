@interface TPPageLayout
- (BOOL)textIsVertical;
- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size;
- (CGRect)nonAutosizedFrameForTextLayout:(id)layout;
- (Class)repClassForTextLayout:(id)layout;
- (TPSectionTemplateDrawableProvider)sectionTemplateDrawableProvider;
- (UIEdgeInsets)adjustedInsetsForTarget:(id)target;
- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap;
- (id)dependentsOfTextLayout:(id)layout;
- (id)existingAttachmentLayoutForInfo:(id)info;
- (id)layoutsForChildInfo:(id)info;
- (id)p_childLayoutInParentLayout:(id)layout forChildInfo:(id)info;
- (unint64_t)pageCount;
- (unint64_t)pageIndex;
- (unint64_t)pageNumber;
- (void)validate;
@end

@implementation TPPageLayout

- (id)p_childLayoutInParentLayout:(id)layout forChildInfo:(id)info
{
  v35 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  infoCopy = info;
  v8 = sub_275FF976C(self, infoCopy);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, 0, v11, v12, v13, &v30, v34, 16, v10);
  if (v14)
  {
    v23 = v14;
    v24 = 0;
    v25 = *v31;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v8);
        }

        v27 = *(*(&v30 + 1) + 8 * i);
        if (!v24 || objc_msgSend_orderedBefore_(*(*(&v30 + 1) + 8 * i), v15, v19, v20, v21, v22, v24, v16, v17, v18))
        {
          v28 = v27;

          v24 = v28;
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v15, v19, v20, v21, v22, &v30, v34, 16, v18);
    }

    while (v23);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)layoutsForChildInfo:(id)info
{
  v3 = sub_275FF976C(self, info);
  v13 = objc_msgSend_copy(v3, v4, v9, v10, v11, v12, v5, v6, v7, v8);

  return v13;
}

- (unint64_t)pageIndex
{
  v10 = objc_msgSend_info(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_pageIndex(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (id)existingAttachmentLayoutForInfo:(id)info
{
  infoCopy = info;
  v14 = objc_msgSend_layoutController(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v22 = objc_msgSend_layoutForInfo_childOfLayout_(v14, v15, v18, v19, v20, v21, infoCopy, self, v16, v17);

  return v22;
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)layout
{
  v3.n128_u64[0] = *MEMORY[0x277CBF3A8];
  v4.n128_u64[0] = *(MEMORY[0x277CBF3A8] + 8);
  (MEMORY[0x2821F9670])(self, sel_autosizedFrameForTextLayout_textSize_, v3, v4);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size
{
  layoutCopy = layout;
  v5 = MEMORY[0x277D81150];
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v10, v11, v12, v13, "[TPPageLayout autosizedFrameForTextLayout:textSize:]", v7, v8, v9);
  v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageLayout.m", v16, v17, v18);
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v26, v27, v28, v29, v30, v14, v23, 178, 0, "Abstract method not overridden by %{public}@", v25);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v36, v37, v38, v39, v32, v33, v34, v35);
  v40 = MEMORY[0x277CBEAD8];
  v41 = *MEMORY[0x277CBE658];
  v42 = MEMORY[0x277CCACA8];
  v43 = objc_opt_class();
  v44 = NSStringFromClass(v43);
  v53 = objc_msgSend_stringWithFormat_(v42, v45, v49, v50, v51, v52, @"Abstract method not overridden by %@: %s", v46, v47, v48, v44, "[TPPageLayout autosizedFrameForTextLayout:textSize:]");
  v60 = objc_msgSend_exceptionWithName_reason_userInfo_(v40, v54, v56, v57, v58, v59, v41, v53, 0, v55);
  v61 = v60;

  objc_exception_throw(v60);
}

- (id)dependentsOfTextLayout:(id)layout
{
  layoutCopy = layout;
  v4 = MEMORY[0x277D81150];
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v9, v10, v11, v12, "[TPPageLayout dependentsOfTextLayout:]", v6, v7, v8);
  v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageLayout.m", v15, v16, v17);
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v25, v26, v27, v28, v29, v13, v22, 183, 0, "Abstract method not overridden by %{public}@", v24);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v35, v36, v37, v38, v31, v32, v33, v34);
  v39 = MEMORY[0x277CBEAD8];
  v40 = *MEMORY[0x277CBE658];
  v41 = MEMORY[0x277CCACA8];
  v42 = objc_opt_class();
  v43 = NSStringFromClass(v42);
  v52 = objc_msgSend_stringWithFormat_(v41, v44, v48, v49, v50, v51, @"Abstract method not overridden by %@: %s", v45, v46, v47, v43, "[TPPageLayout dependentsOfTextLayout:]");
  v59 = objc_msgSend_exceptionWithName_reason_userInfo_(v39, v53, v55, v56, v57, v58, v40, v52, 0, v54);
  v60 = v59;

  objc_exception_throw(v59);
}

- (Class)repClassForTextLayout:(id)layout
{
  layoutCopy = layout;
  v4 = MEMORY[0x277D81150];
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v9, v10, v11, v12, "[TPPageLayout repClassForTextLayout:]", v6, v7, v8);
  v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageLayout.m", v15, v16, v17);
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v25, v26, v27, v28, v29, v13, v22, 188, 0, "Abstract method not overridden by %{public}@", v24);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v35, v36, v37, v38, v31, v32, v33, v34);
  v39 = MEMORY[0x277CBEAD8];
  v40 = *MEMORY[0x277CBE658];
  v41 = MEMORY[0x277CCACA8];
  v42 = objc_opt_class();
  v43 = NSStringFromClass(v42);
  v52 = objc_msgSend_stringWithFormat_(v41, v44, v48, v49, v50, v51, @"Abstract method not overridden by %@: %s", v45, v46, v47, v43, "[TPPageLayout repClassForTextLayout:]");
  v59 = objc_msgSend_exceptionWithName_reason_userInfo_(v39, v53, v55, v56, v57, v58, v40, v52, 0, v54);
  v60 = v59;

  objc_exception_throw(v59);
}

- (void)validate
{
  v2.receiver = self;
  v2.super_class = TPPageLayout;
  [(TPPageLayout *)&v2 validate];
}

- (unint64_t)pageNumber
{
  v9 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPPageLayout pageNumber]", v2, v3, v4);
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageLayout.m", v12, v13, v14);
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v22, v23, v24, v25, v26, v10, v19, 224, 0, "Abstract method not overridden by %{public}@", v21);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v32, v33, v34, v35, v28, v29, v30, v31);
  v36 = MEMORY[0x277CBEAD8];
  v37 = *MEMORY[0x277CBE658];
  v38 = MEMORY[0x277CCACA8];
  v39 = objc_opt_class();
  v40 = NSStringFromClass(v39);
  v49 = objc_msgSend_stringWithFormat_(v38, v41, v45, v46, v47, v48, @"Abstract method not overridden by %@: %s", v42, v43, v44, v40, "[TPPageLayout pageNumber]");
  v56 = objc_msgSend_exceptionWithName_reason_userInfo_(v36, v50, v52, v53, v54, v55, v37, v49, 0, v51);
  v57 = v56;

  objc_exception_throw(v56);
}

- (unint64_t)pageCount
{
  v9 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPPageLayout pageCount]", v2, v3, v4);
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageLayout.m", v12, v13, v14);
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v22, v23, v24, v25, v26, v10, v19, 229, 0, "Abstract method not overridden by %{public}@", v21);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v32, v33, v34, v35, v28, v29, v30, v31);
  v36 = MEMORY[0x277CBEAD8];
  v37 = *MEMORY[0x277CBE658];
  v38 = MEMORY[0x277CCACA8];
  v39 = objc_opt_class();
  v40 = NSStringFromClass(v39);
  v49 = objc_msgSend_stringWithFormat_(v38, v41, v45, v46, v47, v48, @"Abstract method not overridden by %@: %s", v42, v43, v44, v40, "[TPPageLayout pageCount]");
  v56 = objc_msgSend_exceptionWithName_reason_userInfo_(v36, v50, v52, v53, v54, v55, v37, v49, 0, v51);
  v57 = v56;

  objc_exception_throw(v56);
}

- (UIEdgeInsets)adjustedInsetsForTarget:(id)target
{
  v3 = *MEMORY[0x277D81428];
  v4 = *(MEMORY[0x277D81428] + 8);
  v5 = *(MEMORY[0x277D81428] + 16);
  v6 = *(MEMORY[0x277D81428] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap
{
  if (outWidth)
  {
    *outWidth = width;
  }

  if (gap)
  {
    *gap = 0.0;
  }

  return 0.0;
}

- (BOOL)textIsVertical
{
  v9 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPPageLayout textIsVertical]", v2, v3, v4);
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageLayout.m", v12, v13, v14);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v20, v21, v22, v23, v24, v10, v19, 273, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v30, v31, v32, v33, v26, v27, v28, v29);
  v34 = MEMORY[0x277CBEAD8];
  v35 = *MEMORY[0x277CBE658];
  v44 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v36, v40, v41, v42, v43, @"%s: %s", v37, v38, v39, "Do not call method", "[TPPageLayout textIsVertical]");
  v51 = objc_msgSend_exceptionWithName_reason_userInfo_(v34, v45, v47, v48, v49, v50, v35, v44, 0, v46);
  v52 = v51;

  objc_exception_throw(v51);
}

- (TPSectionTemplateDrawableProvider)sectionTemplateDrawableProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sectionTemplateDrawableProvider);

  return WeakRetained;
}

@end