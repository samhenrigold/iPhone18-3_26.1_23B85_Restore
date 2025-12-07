@interface RecommendationActionController
+ (RecommendationActionController)recommendationActionControllerWithTableManager:(id)manager andAssistantUIViewController:(id)controller;
- (BOOL)isPrimaryRecommendation;
- (id)getSectionInfoWithLongStrings:(BOOL)strings;
- (void)selectPrimaryRecommendation;
@end

@implementation RecommendationActionController

+ (RecommendationActionController)recommendationActionControllerWithTableManager:(id)manager andAssistantUIViewController:(id)controller
{
  v4 = 0;
  if (manager && controller)
  {
    v4 = objc_alloc_init(RecommendationActionController);
    objc_msgSend_setSectionIdentifier_(v4, v7, @"ActionTableSection", v8);
    objc_msgSend_setTableManager_(v4, v9, manager, v10);
    v14 = objc_msgSend_recommendationParamDict(controller, v11, v12, v13);
    v17 = objc_msgSend_objectForKey_(v14, v15, @"actionKey", v16);
    objc_msgSend_setActionKey_(v4, v18, v17, v19);
  }

  return v4;
}

- (id)getSectionInfoWithLongStrings:(BOOL)strings
{
  stringsCopy = strings;
  valid = sub_23EB6CD3C(self->actionKey, qword_27E383800);
  v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7, v8);
  if (stringsCopy)
  {
    v13 = sub_23EB6CD3C(@"TextualSentenceConcatenator", qword_27E383800);
    v14 = MEMORY[0x277CCACA8];
    v15 = sub_23EB6CD3C(@"RecommendedInParens", qword_27E383800);
    valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v14, v16, v13, @"%@%@", 0, valid, v15);
  }

  v17 = objc_msgSend_tableManager(self, v9, v10, v11);
  RowStyleBasicWithImage_text1_text2_withTag = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v17, v18, 0, valid, 0, 1349675373);
  objc_msgSend_addObject_(v12, v20, RowStyleBasicWithImage_text1_text2_withTag, v21);
  v25 = objc_msgSend_tableManager(self, v22, v23, v24);
  v26 = sub_23EB6CD3C(@"OtherOptionsEllipsis", qword_27E383800);
  v28 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v25, v27, 0, v26, 0, 1299149413);
  objc_msgSend_addObject_(v12, v29, v28, v30);
  v31 = MEMORY[0x277CBEB38];
  v34 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v32, 1, v33);
  v37 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v35, 1349675373, v36);
  return objc_msgSend_dictionaryWithObjectsAndKeys_(v31, v38, v12, v39, @"sectionRows", v34, @"sectionIsMenu", v37, @"selectedMenuItemTag", self->sectionIdentifier, @"identifier", 0);
}

- (BOOL)isPrimaryRecommendation
{
  tableManager = self->tableManager;
  v4 = objc_msgSend_indexOfSectionWithIdentifier_(tableManager, a2, self->sectionIdentifier, v2);
  return objc_msgSend_tagOfSelectedRowInMenuSection_(tableManager, v5, v4, v6) == 1349675373;
}

- (void)selectPrimaryRecommendation
{
  tableManager = self->tableManager;
  v5 = objc_msgSend_indexPathOfCellWithTag_(tableManager, a2, 1349675373, v2);

  objc_msgSend_selectMenuCellAtIndexPath_(tableManager, v4, v5, v6);
}

@end