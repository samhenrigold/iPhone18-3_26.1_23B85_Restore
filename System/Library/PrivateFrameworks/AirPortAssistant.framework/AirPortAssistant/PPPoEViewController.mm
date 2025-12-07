@interface PPPoEViewController
- (BOOL)shouldChangeTextField:(id)field atIndexPath:(id)path forTextIndex:(unint64_t)index toString:(id)string;
- (id)valueForItemOfType:(id)type atTypeIndex:(unint64_t)index inCellWithTag:(int64_t)tag;
- (void)dealloc;
- (void)loadView;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)setupInitialTableHeaderConfiguration;
- (void)touchInCellAtIndexPath:(id)path;
@end

@implementation PPPoEViewController

- (void)setupInitialTableHeaderConfiguration
{
  objc_msgSend_setLeftNavigationButton_enable_hide_(self, a2, @"kBack", 1, 0);
  objc_msgSend_setRightNavigationButton_enable_hide_(self, v3, @"kNext", 1, 0);
  objc_msgSend_setDelegate_(self, v4, self, v5);
  v6 = sub_23EB6CD3C(@"PPPoESetupInfo", qword_27E383800);
  v10 = objc_msgSend_parentController(self, v7, v8, v9);
  tableHeaderContainerView = self->tableHeaderContainerView;
  v14 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v12, self->justTextContainerView, v13);
  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(v10, v15, tableHeaderContainerView, v14, 1);
  sub_23EB5E054(self->justTextLabel, self->justTextContainerView, v6, v16);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v17, self->tableHeaderContainerView, v18);
  v19 = self->tableHeaderContainerView;
  v23 = objc_msgSend_tableView(self, v20, v21, v22);

  objc_msgSend_setTableHeaderView_(v23, v24, v19, v25);
}

- (void)loadView
{
  v157.receiver = self;
  v157.super_class = PPPoEViewController;
  [(AUUITableViewController *)&v157 loadView];
  v156 = 0;
  v6 = objc_msgSend_view(self, v3, v4, v5);
  objc_msgSend_frame(v6, v7, v8, v9);
  self->justTextLabel = objc_msgSend_labelViewInContainer_width_(AssistantSubUIViewController, v10, &v156, v11, v12);
  objc_msgSend_setJustTextContainerView_(self, v13, v156, v14);
  v18 = objc_msgSend_view(self, v15, v16, v17);
  objc_msgSend_frame(v18, v19, v20, v21);
  v26 = objc_msgSend_containerViewWithWidth_(AssistantSubUIViewController, v22, v23, v24, v25);
  objc_msgSend_setTableHeaderContainerView_(self, v27, v26, v28);
  v32 = objc_msgSend_view(self, v29, v30, v31);
  objc_msgSend_frame(v32, v33, v34, v35);
  v37 = v36;
  v41 = objc_msgSend_view(self, v38, v39, v40);
  objc_msgSend_frame(v41, v42, v43, v44);
  v49 = objc_msgSend_tableViewWithWidth_height_(AssistantSubUIViewController, v45, v46, v47, v37, v48);
  objc_msgSend_setTableView_(self, v50, v49, v51);
  objc_msgSend_setupInitialTableHeaderConfiguration(self, v52, v53, v54);
  v58 = objc_msgSend_tableManager(self, v55, v56, v57);
  v64 = 0x277CBE000;
  if (objc_msgSend_indexOfSectionWithIdentifier_(v58, v59, @"PPPoEAccountInfo", v60) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v65 = objc_msgSend_array(MEMORY[0x277CBEB18], v61, v62, v63);
    outResultsDict = self->super._outResultsDict;
    v67 = sub_23EB6CDF8(1885689166);
    v70 = objc_msgSend_objectForKey_(outResultsDict, v68, v67, v69);
    if (v70)
    {
      v74 = v70;
    }

    else
    {
      v74 = &stru_285145FE8;
    }

    v75 = objc_msgSend_tableManager(self, v71, v72, v73);
    v76 = sub_23EB6D520(1885689166);
    isSecure_keyboardType_withTag = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v75, v77, 0, v76, v74, 0, 0, 0, 1885689166);
    objc_msgSend_addObject_(v65, v79, isSecure_keyboardType_withTag, v80);
    v81 = self->super._outResultsDict;
    v82 = sub_23EB6CDF8(1885687895);
    v85 = objc_msgSend_objectForKey_(v81, v83, v82, v84);
    if (v85)
    {
      v89 = v85;
    }

    else
    {
      v89 = &stru_285145FE8;
    }

    v90 = objc_msgSend_tableManager(self, v86, v87, v88);
    v91 = sub_23EB6D520(1885687895);
    v93 = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v90, v92, 0, v91, v89, 0, 1, 0, 1885687895);
    objc_msgSend_addObject_(v65, v94, v93, v95);
    v96 = self->super._outResultsDict;
    v97 = sub_23EB6CDF8(1885688654);
    v100 = objc_msgSend_objectForKey_(v96, v98, v97, v99);
    if (v100)
    {
      v104 = v100;
    }

    else
    {
      v104 = &stru_285145FE8;
    }

    v105 = objc_msgSend_tableManager(self, v101, v102, v103);
    v106 = sub_23EB6D520(1885688654);
    v64 = 0x277CBE000uLL;
    v108 = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v105, v107, 0, v106, v104, 0, 0, 0, 1885688654);
    objc_msgSend_addObject_(v65, v109, v108, v110);
    v114 = objc_msgSend_tableManager(self, v111, v112, v113);
    v115 = MEMORY[0x277CBEB38];
    v116 = sub_23EB6CD3C(@"PPPoEAccountInformation", qword_27E383800);
    v119 = objc_msgSend_dictionaryWithObjectsAndKeys_(v115, v117, v65, v118, @"sectionRows", v116, @"header", @"PPPoEAccountInfo", @"identifier", 0);
    objc_msgSend_addSectionInfo_(v114, v120, v119, v121);
  }

  v122 = objc_msgSend_tableManager(self, v61, v62, v63);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v122, v123, @"PPPoEConnectionInfo", v124) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v128 = objc_msgSend_array(MEMORY[0x277CBEB18], v125, v126, v127);
    v132 = objc_msgSend_tableManager(self, v129, v130, v131);
    v133 = sub_23EB6D520(1651724355);
    RowStyleBasicWithImage_text1_text2_withTag = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v132, v134, 0, v133, @"dynamicValue", 1651724355);
    v139 = objc_msgSend_tableManager(self, v136, v137, v138);
    objc_msgSend_setNewRow_accessoryType_(v139, v140, RowStyleBasicWithImage_text1_text2_withTag, 1);
    objc_msgSend_addObject_(v128, v141, RowStyleBasicWithImage_text1_text2_withTag, v142);
    v146 = objc_msgSend_tableManager(self, v143, v144, v145);
    v149 = objc_msgSend_dictionaryWithObjectsAndKeys_(*(v64 + 2872), v147, v128, v148, @"sectionRows", @"PPPoEConnectionInfo", @"identifier", 0);
    objc_msgSend_addSectionInfo_(v146, v150, v149, v151);
  }

  v152 = self->super._outResultsDict;
  v153 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v125, 0, v127);
  v154 = sub_23EB6CDF8(1651724355);
  objc_msgSend_setObject_forKey_(v152, v155, v153, v154);
}

- (void)dealloc
{
  objc_msgSend_setPppoeConnectionUIViewController_(self, a2, 0, v2);
  objc_msgSend_setTableHeaderContainerView_(self, v4, 0, v5);
  objc_msgSend_setJustTextContainerView_(self, v6, 0, v7);
  v8.receiver = self;
  v8.super_class = PPPoEViewController;
  [(AssistantSubUIViewController *)&v8 dealloc];
}

- (id)valueForItemOfType:(id)type atTypeIndex:(unint64_t)index inCellWithTag:(int64_t)tag
{
  if (tag != 1651724355)
  {
    return &stru_285145FE8;
  }

  outResultsDict = self->super._outResultsDict;
  v7 = sub_23EB6CDF8(1651724355);
  v10 = objc_msgSend_objectForKey_(outResultsDict, v8, v7, v9);
  v14 = objc_msgSend_integerValue(v10, v11, v12, v13);

  return sub_23EB6D620(1651724355, v14);
}

- (BOOL)shouldChangeTextField:(id)field atIndexPath:(id)path forTextIndex:(unint64_t)index toString:(id)string
{
  v15 = 0;
  v9 = objc_msgSend_tableManager(self, a2, field, path, index);
  if (objc_msgSend_tagOfCellAtIndexPath_tag_(v9, v10, path, &v15))
  {
    if (!string)
    {
      string = &stru_285145FE8;
    }

    outResultsDict = self->super._outResultsDict;
    v12 = sub_23EB6CDF8(v15);
    objc_msgSend_setObject_forKey_(outResultsDict, v13, string, v12);
  }

  return 1;
}

- (void)touchInCellAtIndexPath:(id)path
{
  v49 = 0;
  v6 = objc_msgSend_tableManager(self, a2, path, v3);
  if (objc_msgSend_tagOfCellAtIndexPath_tag_(v6, v7, path, &v49) && v49 == 1651724355)
  {
    v8 = sub_23EB6CDF8(1651724355);
    v13 = objc_msgSend_objectForKey_(self->super._outResultsDict, v9, v8, v10);
    if (!v13)
    {
      v13 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v11, 0, v12);
    }

    v14 = [PPPoEConnectionUIViewController alloc];
    v16 = objc_msgSend_initWithNibName_bundle_(v14, v15, 0, 0);
    objc_msgSend_setPppoeConnectionUIViewController_(self, v17, v16, v18);
    v22 = objc_msgSend_outResultsDict(self->pppoeConnectionUIViewController, v19, v20, v21);
    objc_msgSend_setObject_forKey_(v22, v23, v13, v8);
    v27 = objc_msgSend_tableManager(self, v24, v25, v26);
    objc_msgSend_endEditing(v27, v28, v29, v30);
    v34 = objc_msgSend_navigationController(self, v31, v32, v33);
    self->previousNavDelegate = objc_msgSend_delegate(v34, v35, v36, v37);
    v41 = objc_msgSend_navigationController(self, v38, v39, v40);
    objc_msgSend_setDelegate_(v41, v42, self, v43);
    v47 = objc_msgSend_navigationController(self, v44, v45, v46);
    objc_msgSend_pushViewController_animated_(v47, v48, self->pppoeConnectionUIViewController, 1);
  }
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  if (self->pppoeConnectionUIViewController != viewController)
  {
    v6 = sub_23EB6CDF8(1651724355);
    v10 = objc_msgSend_outResultsDict(self->pppoeConnectionUIViewController, v7, v8, v9);
    v13 = objc_msgSend_objectForKey_(v10, v11, v6, v12);
    if (v13)
    {
      objc_msgSend_setObject_forKey_(self->super._outResultsDict, v14, v13, v6);
      v18 = objc_msgSend_tableView(self, v15, v16, v17);
      objc_msgSend_reloadData(v18, v19, v20, v21);
      previousNavDelegate = self->previousNavDelegate;
      v26 = objc_msgSend_navigationController(self, v23, v24, v25);

      objc_msgSend_setDelegate_(v26, v27, previousNavDelegate, v28);
    }
  }
}

@end