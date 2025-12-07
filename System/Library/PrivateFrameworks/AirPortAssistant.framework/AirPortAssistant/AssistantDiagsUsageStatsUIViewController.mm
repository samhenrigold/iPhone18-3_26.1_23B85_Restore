@interface AssistantDiagsUsageStatsUIViewController
- (void)dealloc;
- (void)handleTextLinkTap;
- (void)loadView;
- (void)setUpInitialTableFooter;
- (void)touchInCellAtIndexPath:(id)path;
@end

@implementation AssistantDiagsUsageStatsUIViewController

- (void)setUpInitialTableFooter
{
  v5 = objc_msgSend_view(self, a2, v2, v3);
  objc_msgSend_frame(v5, v6, v7, v8);
  v13 = objc_msgSend_containerViewWithWidth_(AssistantSubUIViewController, v9, v10, v11, v12);
  v14 = [TextLinkButton alloc];
  objc_msgSend_frame(v13, v15, v16, v17);
  v21 = objc_msgSend_initWithFrame_(v14, v18, v19, v20);
  objc_msgSend_addSubview_(v13, v22, v21, v23);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v21, v24, 0, v25);
  objc_msgSend_setDelegate_(v21, v26, self, v27);
  v28 = sub_23EB6CD3C(@"DiagsAndUsageApplePrivacyHelpTitle", @"AirPortSettings");
  objc_msgSend_setTitle_forState_(v21, v29, v28, 0);
  objc_msgSend_sizeToFit(v21, v30, v31, v32);
  v33 = MEMORY[0x277CCAAD0];
  v34 = _NSDictionaryOfVariableBindings(&cfstr_Textlinkbutton.isa, v21, 0);
  v36 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v33, v35, @"V:|[textLinkButton]|", 0, 0, v34);
  objc_msgSend_addConstraints_(v13, v37, v36, v38);
  v39 = MEMORY[0x277CCAAD0];
  v40 = _NSDictionaryOfVariableBindings(&cfstr_Textlinkbutton.isa, v21, 0);
  v42 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v39, v41, @"H:|[textLinkButton]|", 0, 0, v40);
  objc_msgSend_addConstraints_(v13, v43, v42, v44);
  objc_msgSend_setLinkContainerView_(self, v45, v13, v46);
  v50 = objc_msgSend_tableView(self, v47, v48, v49);

  objc_msgSend_setTableFooterView_(v50, v51, v13, v52);
}

- (void)dealloc
{
  objc_msgSend_setLinkContainerView_(self, a2, 0, v2);
  v4.receiver = self;
  v4.super_class = AssistantDiagsUsageStatsUIViewController;
  [(AssistantSubUIViewController *)&v4 dealloc];
}

- (void)loadView
{
  v78.receiver = self;
  v78.super_class = AssistantDiagsUsageStatsUIViewController;
  [(AUUITableViewController *)&v78 loadView];
  objc_msgSend_setDelegate_(self, v3, self, v4);
  v8 = objc_msgSend_view(self, v5, v6, v7);
  objc_msgSend_frame(v8, v9, v10, v11);
  v13 = v12;
  v17 = objc_msgSend_view(self, v14, v15, v16);
  objc_msgSend_frame(v17, v18, v19, v20);
  v25 = objc_msgSend_tableViewWithWidth_height_(AssistantSubUIViewController, v21, v22, v23, v13, v24);
  objc_msgSend_setTableView_(self, v26, v25, v27);
  objc_msgSend_setLeftNavigationButton_enable_hide_(self, v28, @"kBack", 1, 0);
  objc_msgSend_setRightNavigationButton_enable_hide_(self, v29, @"kNext", 0, 0);
  v33 = objc_msgSend_tableManager(self, v30, v31, v32);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v33, v34, @"SendDontSend", v35) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v39 = objc_msgSend_array(MEMORY[0x277CBEB18], v36, v37, v38);
    v43 = objc_msgSend_tableManager(self, v40, v41, v42);
    v44 = sub_23EB6CD3C(@"DiagsAndUsageSend", @"AirPortSettings");
    RowStyleBasicWithImage_text1_text2_withTag = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v43, v45, 0, v44, 0, 1399156324);
    objc_msgSend_addObject_(v39, v47, RowStyleBasicWithImage_text1_text2_withTag, v48);
    v52 = objc_msgSend_tableManager(self, v49, v50, v51);
    v53 = sub_23EB6CD3C(@"DiagsAndUsageDontSend", @"AirPortSettings");
    v55 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v52, v54, 0, v53, 0, 1315918692);
    objc_msgSend_addObject_(v39, v56, v55, v57);
    v61 = objc_msgSend_tableManager(self, v58, v59, v60);
    v62 = MEMORY[0x277CBEB38];
    v65 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v63, 1, v64);
    v66 = sub_23EB6CD3C(@"DiagsAndUsageTitle", @"AirPortSettings");
    v67 = sub_23EB6CD3C(@"DiagsAndUsageHelpAppleText", @"AirPortSettings");
    v70 = objc_msgSend_dictionaryWithObjectsAndKeys_(v62, v68, v39, v69, @"sectionRows", v65, @"sectionIsMenu", v66, @"header", v67, @"footer", @"SendDontSend", @"identifier", 0);
    objc_msgSend_addSectionInfo_(v61, v71, v70, v72);
  }

  objc_msgSend_setUpInitialTableFooter(self, v36, v37, v38);
  outResultsDict = self->super._outResultsDict;
  v74 = sub_23EB6CDF8(1937011781);
  if (objc_msgSend_objectForKey_(outResultsDict, v75, v74, v76))
  {
    objc_msgSend_setRightNavigationButton_enable_hide_(self, v77, @"kNext", 1, 0);
  }
}

- (void)touchInCellAtIndexPath:(id)path
{
  v15 = 0;
  v6 = objc_msgSend_tableManager(self, a2, path, v3);
  objc_msgSend_tagOfCellAtIndexPath_tag_(v6, v7, path, &v15);
  objc_msgSend_setRightNavigationButton_enable_hide_(self, v8, @"kNext", 1, 0);
  outResultsDict = self->super._outResultsDict;
  v12 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v10, v15 == 1399156324, v11);
  v13 = sub_23EB6CDF8(1937011781);
  objc_msgSend_setValue_forKey_(outResultsDict, v14, v12, v13);
}

- (void)handleTextLinkTap
{
  v3 = [DiagsPrivacyHelpViewController alloc];
  v5 = objc_msgSend_initWithNibName_bundle_(v3, v4, 0, 0);
  v9 = objc_msgSend_navigationController(self, v6, v7, v8);

  objc_msgSend_pushViewController_animated_(v9, v10, v5, 1);
}

@end