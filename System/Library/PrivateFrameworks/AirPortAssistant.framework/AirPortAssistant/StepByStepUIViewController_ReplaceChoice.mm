@interface StepByStepUIViewController_ReplaceChoice
- (void)loadView;
- (void)setupTable;
- (void)touchInCellAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation StepByStepUIViewController_ReplaceChoice

- (void)setupTable
{
  v5 = objc_msgSend_inParamDict(self, a2, v2, v3);
  v8 = objc_msgSend_objectForKey_(v5, v6, @"kSBSKey_SelectorChoice", v7);
  v12 = v8;
  if (v8)
  {
    v13 = objc_msgSend_integerValue(v8, v9, v10, v11);
    if (v13 == 320)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2 * (v13 == 330);
    }

    objc_msgSend_setRightNavigationButton_enable_hide_(self, v14, @"kNext", 1, 0);
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_msgSend_tableManager(self, v9, v10, v11);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v16, v17, @"ReplaceChoice", v18) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = objc_msgSend_tableManager(self, v23, v24, v25);
    v27 = sub_23EB6CD3C(@"kReplaceBaseStationLabel", qword_27E383800);
    RowStyleBasicWithImage_text1_text2_withTag = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v26, v28, 0, v27, 0, 0);
    objc_msgSend_addObject_(v22, v30, RowStyleBasicWithImage_text1_text2_withTag, v31);
    v35 = objc_msgSend_tableManager(self, v32, v33, v34);
    v36 = sub_23EB6CD3C(@"kReplaceOtherLabel", qword_27E383800);
    v38 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v35, v37, 0, v36, 0, 2);
    objc_msgSend_addObject_(v22, v39, v38, v40);
    v44 = objc_msgSend_tableManager(self, v41, v42, v43);
    v45 = MEMORY[0x277CBEB38];
    v50 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v46, 1, v47);
    if (v12)
    {
      v51 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v48, v15, v49);
    }

    else
    {
      v51 = 0;
    }

    v52 = objc_msgSend_dictionaryWithObjectsAndKeys_(v45, v48, v22, v49, @"sectionRows", v50, @"sectionIsMenu", @"ReplaceChoice", @"identifier", v51, @"selectedMenuItemTag", 0);
    objc_msgSend_addSectionInfo_(v44, v53, v52, v54);
  }

  v55 = objc_msgSend_parentController(self, v19, v20, v21);
  v59 = objc_msgSend_tableHeaderContainerView(self, v56, v57, v58);
  v60 = MEMORY[0x277CBEA60];
  v64 = objc_msgSend_justTextContainerView(self, v61, v62, v63);
  v68 = objc_msgSend_topoView(self, v65, v66, v67);
  v71 = objc_msgSend_arrayWithObjects_(v60, v69, v64, v70, v68, 0);
  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(v55, v72, v59, v71, 1);
  v76 = objc_msgSend_tableHeaderContainerView(self, v73, v74, v75);
  v80 = objc_msgSend_tableView(self, v77, v78, v79);

  objc_msgSend_setTableHeaderView_(v80, v81, v76, v82);
}

- (void)loadView
{
  v31.receiver = self;
  v31.super_class = StepByStepUIViewController_ReplaceChoice;
  [(StepByStepUIViewController *)&v31 loadView];
  objc_msgSend_setRightNavigationButton_enable_hide_(self, v3, @"kNext", 0, 0);
  justTextLabel = self->super.justTextLabel;
  v8 = objc_msgSend_justTextContainerView(self, v5, v6, v7);
  ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v9, @"StepByStepStatus_ReplaceChoice%@", v10);
  sub_23EB5E054(justTextLabel, v8, ProductLocalizedStringWithFormat, v12);
  v16 = objc_msgSend_tableHeaderContainerView(self, v13, v14, v15);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v17, v16, v18);
  v22 = objc_msgSend_tableHeaderContainerView(self, v19, v20, v21);
  v26 = objc_msgSend_tableView(self, v23, v24, v25);
  objc_msgSend_setTableHeaderView_(v26, v27, v22, v28);
  objc_msgSend_setDelegate_(self, v29, self, v30);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  objc_msgSend_setupTable(self, a2, appear, v3);
  v9 = objc_msgSend_inParamDict(self, v6, v7, v8);
  v12 = objc_msgSend_objectForKey_(v9, v10, @"kSBSKey_TargetBase", v11);
  objc_msgSend_syncTopoUIForTarget_andSource_andNetwork_connectionType_(self, v13, v12, 0, 0, 0);
  v14.receiver = self;
  v14.super_class = StepByStepUIViewController_ReplaceChoice;
  [(StepByStepUIViewController *)&v14 viewWillAppear:appearCopy];
}

- (void)touchInCellAtIndexPath:(id)path
{
  v6 = objc_msgSend_tableManager(self, a2, path, v3);
  v10 = objc_msgSend_section(path, v7, v8, v9);
  v13 = objc_msgSend_tagOfSelectedRowInMenuSection_(v6, v11, v10, v12);
  v15 = 310;
  if (v13 == 1)
  {
    v15 = 320;
  }

  if (v13 == 2)
  {
    v16 = 330;
  }

  else
  {
    v16 = v15;
  }

  objc_msgSend_setRightNavigationButton_enable_hide_(self, v14, @"kNext", 1, 0);
  outResultsDict = self->super.super._outResultsDict;
  v21 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v18, v16, v19);

  objc_msgSend_setObject_forKey_(outResultsDict, v20, v21, @"kSBSKey_SelectorChoice");
}

@end