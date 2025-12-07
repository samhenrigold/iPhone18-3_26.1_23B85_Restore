@interface TPEndnotePageGenerator
- (BOOL)wantsPageInSectionHint:(id)hint withState:(id)state;
- (TPEndnotePageGenerator)initWithFootnoteLayoutController:(id)controller;
- (void)createOrUpdatePageHintInSectionHint:(id)hint withState:(id)state;
@end

@implementation TPEndnotePageGenerator

- (TPEndnotePageGenerator)initWithFootnoteLayoutController:(id)controller
{
  controllerCopy = controller;
  v42.receiver = self;
  v42.super_class = TPEndnotePageGenerator;
  v6 = [(TPEndnotePageGenerator *)&v42 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_footnoteLayoutController, controller);
    if (!v7->_footnoteLayoutController)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v12, v13, v14, v15, "[TPEndnotePageGenerator initWithFootnoteLayoutController:]", v9, v10, v11);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPEndnotePageGenerator.m", v19, v20, v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v27, v28, v29, v30, v31, v17, v26, 28, 0, "Endnote page generator must be created with a footnote layout controller");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v37, v38, v39, v40, v33, v34, v35, v36);
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)wantsPageInSectionHint:(id)hint withState:(id)state
{
  stateCopy = state;
  footnoteLayoutController = self->_footnoteLayoutController;
  hintCopy = hint;
  v18 = objc_msgSend_sectionCharRange(stateCopy, v9, v14, v15, v16, v17, v10, v11, v12, v13);
  v20 = v19;
  Section = objc_msgSend_onLastSection(stateCopy, v19, v25, v26, v27, v28, v21, v22, v23, v24);
  isLastSection_sectionHint = objc_msgSend_endnoteRangeForSectionCharRange_isLastSection_sectionHint_(footnoteLayoutController, v30, v31, v32, v33, v34, v18, v20, Section, hintCopy);
  v37 = v36;

  v47 = isLastSection_sectionHint != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend_footnoteIndex(stateCopy, v38, v43, v44, v45, v46, v39, v40, v41, v42) < (isLastSection_sectionHint + v37);
  return v47;
}

- (void)createOrUpdatePageHintInSectionHint:(id)hint withState:(id)state
{
  hintCopy = hint;
  v15 = objc_msgSend_pageIndex(state, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  v32 = objc_msgSend_pageHintForPageIndex_(hintCopy, v16, v20, v21, v22, v23, v15, v17, v18, v19);

  objc_msgSend_setPageKind_(v32, v24, v28, v29, v30, v31, 4, v25, v26, v27);
}

@end