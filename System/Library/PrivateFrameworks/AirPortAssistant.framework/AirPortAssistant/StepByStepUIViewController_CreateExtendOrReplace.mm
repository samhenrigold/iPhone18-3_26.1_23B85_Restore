@interface StepByStepUIViewController_CreateExtendOrReplace
- (void)handleSelectorChoiceWithTag:(unint64_t)tag;
- (void)loadView;
- (void)setupInitialTableHeaderConfiguration;
- (void)setupTable;
- (void)touchInCellAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation StepByStepUIViewController_CreateExtendOrReplace

- (void)setupInitialTableHeaderConfiguration
{
  v5 = MEMORY[0x277CBEA60];
  v6 = objc_msgSend_justTextContainerView(self, a2, v2, v3);
  v10 = objc_msgSend_topoView(self, v7, v8, v9);
  v13 = objc_msgSend_arrayWithObjects_(v5, v11, v6, v12, v10, 0);
  v17 = objc_msgSend_parentController(self, v14, v15, v16);
  v21 = objc_msgSend_tableHeaderContainerView(self, v18, v19, v20);
  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(v17, v22, v21, v13, 1);
  v26 = objc_msgSend_tableHeaderContainerView(self, v23, v24, v25);
  v30 = objc_msgSend_tableView(self, v27, v28, v29);

  objc_msgSend_setTableHeaderView_(v30, v31, v26, v32);
}

- (void)setupTable
{
  objc_msgSend_setDelegate_(self, a2, self, v2);
  v7 = objc_msgSend_inParamDict(self, v4, v5, v6);
  v10 = objc_msgSend_objectForKey_(v7, v8, @"kSBSKey_SelectorChoice", v9);
  if (v10)
  {
    v14 = objc_msgSend_integerValue(v10, v11, v12, v13);
    v17 = objc_msgSend_selectorChoiceToMatrixTag_(StepByStepUtilities, v15, v14, v16);
LABEL_5:
    v28 = v17;
    goto LABEL_6;
  }

  v21 = objc_msgSend_inParamDict(self, v11, v12, v13);
  v24 = objc_msgSend_objectForKey_(v21, v22, @"kSBSKey_AutoGuessRecommendation", v23);
  if (objc_msgSend_length(v24, v25, v26, v27))
  {
    v17 = objc_msgSend_autoGuessRecommendationToMatrixTag_(StepByStepUtilities, v18, v24, v20);
    goto LABEL_5;
  }

  v28 = 1131570529;
LABEL_6:
  v29 = objc_msgSend_tableManager(self, v18, v19, v20);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v29, v30, @"CERR", v31) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v39 = objc_msgSend_tableManager(self, v36, v37, v38);
    v40 = sub_23EB6CD3C(@"kCreateNetworkLabel", qword_27E383800);
    RowStyleBasicWithImage_text1_text2_withTag = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v39, v41, 0, v40, 0, 1131570529);
    objc_msgSend_addObject_(v35, v43, RowStyleBasicWithImage_text1_text2_withTag, v44);
    v48 = objc_msgSend_tableManager(self, v45, v46, v47);
    v49 = sub_23EB6CD3C(@"AddToExistingNetwork", qword_27E383800);
    v51 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v48, v50, 0, v49, 0, 1165522021);
    objc_msgSend_addObject_(v35, v52, v51, v53);
    v57 = objc_msgSend_tableManager(self, v54, v55, v56);
    v58 = sub_23EB6CD3C(@"kReplaceABaseStationLabel", qword_27E383800);
    v60 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v57, v59, 0, v58, 0, 1382379628);
    objc_msgSend_addObject_(v35, v61, v60, v62);
    v66 = objc_msgSend_inParamDict(self, v63, v64, v65);
    if (objc_msgSend_objectForKey_(v66, v67, @"kSBSKey_RestoreRecommendation", v68))
    {
      v72 = objc_msgSend_tableManager(self, v69, v70, v71);
      v73 = sub_23EB6CD3C(@"kRestorePreviousConfig", qword_27E383800);
      v75 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v72, v74, 0, v73, 0, 1382380404);
      objc_msgSend_addObject_(v35, v76, v75, v77);
    }

    v78 = objc_msgSend_tableManager(self, v69, v70, v71);
    v79 = MEMORY[0x277CBEB38];
    v82 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v80, 1, v81);
    v85 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v83, v28, v84);
    v88 = objc_msgSend_dictionaryWithObjectsAndKeys_(v79, v86, v35, v87, @"sectionRows", v82, @"sectionIsMenu", v85, @"selectedMenuItemTag", @"CERR", @"identifier", 0);
    objc_msgSend_addSectionInfo_(v78, v89, v88, v90);
  }

  v91 = objc_msgSend_tableManager(self, v32, v33, v34);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v91, v92, @"CERRFooter", v93) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v95 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v99 = objc_msgSend_tableManager(self, v96, v97, v98);
    v102 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v100, v95, v101, @"sectionRows", &stru_285145FE8, @"footer", @"CERRFooter", @"identifier", 0);
    objc_msgSend_addSectionInfo_(v99, v103, v102, v104);
  }

  MEMORY[0x2821F9670](self, sel_handleSelectorChoiceWithTag_, v28, v94);
}

- (void)loadView
{
  v26.receiver = self;
  v26.super_class = StepByStepUIViewController_CreateExtendOrReplace;
  [(StepByStepUIViewController *)&v26 loadView];
  v6 = objc_msgSend_view(self, v3, v4, v5);
  objc_msgSend_frame(v6, v7, v8, v9);
  v11 = v10;
  v15 = objc_msgSend_view(self, v12, v13, v14);
  objc_msgSend_frame(v15, v16, v17, v18);
  v23 = objc_msgSend_tableViewWithWidth_height_(AssistantSubUIViewController, v19, v20, v21, v11, v22);
  objc_msgSend_setTableView_(self, v24, v23, v25);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  objc_msgSend_setRightNavigationButton_enable_hide_(self, a2, @"kNext", 0, 0);
  objc_msgSend_setupTable(self, v5, v6, v7);
  justTextLabel = self->super.justTextLabel;
  justTextContainerView = self->super.justTextContainerView;
  ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v10, @"StepByStepStatus_CreateExtendReplace%@", v11);
  sub_23EB5E054(justTextLabel, justTextContainerView, ProductLocalizedStringWithFormat, v13);
  v17 = objc_msgSend_tableHeaderContainerView(self, v14, v15, v16);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v18, v17, v19);
  v23 = objc_msgSend_tableHeaderContainerView(self, v20, v21, v22);
  v27 = objc_msgSend_tableView(self, v24, v25, v26);
  objc_msgSend_setTableHeaderView_(v27, v28, v23, v29);
  objc_msgSend_setupInitialTableHeaderConfiguration(self, v30, v31, v32);
  v36 = objc_msgSend_inParamDict(self, v33, v34, v35);
  v39 = objc_msgSend_objectForKey_(v36, v37, @"kSBSKey_TargetBase", v38);
  objc_msgSend_syncTopoUIForTarget_andSource_andNetwork_connectionType_(self, v40, v39, 0, 0, 0);
  v41.receiver = self;
  v41.super_class = StepByStepUIViewController_CreateExtendOrReplace;
  [(StepByStepUIViewController *)&v41 viewWillAppear:appearCopy];
}

- (void)touchInCellAtIndexPath:(id)path
{
  v6 = objc_msgSend_tableManager(self, a2, path, v3);
  v10 = objc_msgSend_section(path, v7, v8, v9);
  v13 = objc_msgSend_tagOfSelectedRowInMenuSection_(v6, v11, v10, v12);

  MEMORY[0x2821F9670](self, sel_handleSelectorChoiceWithTag_, v13, v14);
}

- (void)handleSelectorChoiceWithTag:(unint64_t)tag
{
  v6 = objc_msgSend_matrixTagToSelectorChoice_(StepByStepUtilities, a2, tag, v3);
  outResultsDict = self->super.super._outResultsDict;
  v10 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v8, v6, v9);
  objc_msgSend_setObject_forKey_(outResultsDict, v11, v10, @"kSBSKey_SelectorChoice");
  objc_msgSend_setRightNavigationButton_enable_hide_(self, v12, @"kNext", 1, 0);
  v16 = &stru_285145FE8;
  if (tag > 1382379627)
  {
    if (tag == 1382379628)
    {
      ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v13, @"ReplaceFooter%@", v15);
    }

    else
    {
      if (tag != 1382380404)
      {
        goto LABEL_11;
      }

      ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v13, @"RestoreFooter%@", v15);
    }
  }

  else if (tag == 1131570529)
  {
    ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v13, @"CreateFooter%@", v15);
  }

  else
  {
    if (tag != 1165522021)
    {
      goto LABEL_11;
    }

    ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v13, @"AddToFooter%@", v15);
  }

  v16 = ProductLocalizedStringWithFormat;
LABEL_11:
  v18 = objc_msgSend_tableManager(self, v13, v14, v15);

  MEMORY[0x2821F9670](v18, sel_updateFooter_forSectionWithIdentifier_, v16, @"CERRFooter");
}

@end