@interface PPPoEConnectionUIViewController
- (void)loadView;
- (void)touchInCellAtIndexPath:(id)path;
@end

@implementation PPPoEConnectionUIViewController

- (void)loadView
{
  v115.receiver = self;
  v115.super_class = PPPoEConnectionUIViewController;
  [(AUUITableViewController *)&v115 loadView];
  v6 = objc_msgSend_view(self, v3, v4, v5);
  objc_msgSend_frame(v6, v7, v8, v9);
  v11 = v10;
  v15 = objc_msgSend_view(self, v12, v13, v14);
  objc_msgSend_frame(v15, v16, v17, v18);
  v23 = objc_msgSend_tableViewWithWidth_height_(AssistantSubUIViewController, v19, v20, v21, v11, v22);
  objc_msgSend_setTableView_(self, v24, v23, v25);
  v29 = objc_msgSend_parentController(self, v26, v27, v28);
  objc_msgSend_setParentController_(self, v30, v29, v31);
  objc_msgSend_setDelegate_(self, v32, self, v33);
  v37 = objc_msgSend_view(self, v34, v35, v36);
  objc_msgSend_frame(v37, v38, v39, v40);
  v45 = objc_msgSend_containerViewWithWidth_(AssistantSubUIViewController, v41, v42, v43, v44);
  objc_msgSend_setTableHeaderView_(v23, v46, v45, v47);
  objc_msgSend_setLeftNavigationButton_enable_hide_(self, v48, @"kBack", 1, 0);
  objc_msgSend_setRightNavigationButton_enable_hide_(self, v49, @"kNext", 0, 1);
  v50 = sub_23EB6CDF8(1651724355);
  v56 = objc_msgSend_objectForKey_(self->super._outResultsDict, v51, v50, v52);
  if (!v56)
  {
    v56 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v53, 0, v55);
  }

  v57 = objc_msgSend_tableManager(self, v53, v54, v55);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v57, v58, @"PPPoEAccountInfo", v59) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v63 = objc_msgSend_array(MEMORY[0x277CBEB18], v60, v61, v62);
    v67 = objc_msgSend_tableManager(self, v64, v65, v66);
    v68 = sub_23EB6D620(1651724355, 0);
    RowStyleBasicWithImage_text1_text2_withTag = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v67, v69, 0, v68, 0, 0);
    objc_msgSend_addObject_(v63, v71, RowStyleBasicWithImage_text1_text2_withTag, v72);
    v76 = objc_msgSend_tableManager(self, v73, v74, v75);
    v77 = sub_23EB6D620(1651724355, 1);
    v79 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v76, v78, 0, v77, 0, 1);
    objc_msgSend_addObject_(v63, v80, v79, v81);
    v85 = objc_msgSend_tableManager(self, v82, v83, v84);
    v86 = sub_23EB6D620(1651724355, 2);
    v88 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v85, v87, 0, v86, 0, 2);
    objc_msgSend_addObject_(v63, v89, v88, v90);
    v94 = objc_msgSend_tableManager(self, v91, v92, v93);
    v95 = MEMORY[0x277CBEB38];
    v96 = sub_23EB6D520(1651724355);
    v99 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v97, 1, v98);
    v102 = objc_msgSend_dictionaryWithObjectsAndKeys_(v95, v100, v63, v101, @"sectionRows", @"PPPoEConnectionSelectionInfo", @"identifier", v96, @"header", v99, @"sectionIsMenu", v56, @"selectedMenuItemTag", 0);
    objc_msgSend_addSectionInfo_(v94, v103, v102, v104);
  }

  v105 = objc_msgSend_tableManager(self, v60, v61, v62);
  v109 = objc_msgSend_integerValue(v56, v106, v107, v108);
  v112 = objc_msgSend_indexPathOfCellWithTag_(v105, v110, v109, v111);
  objc_msgSend_touchInCellAtIndexPath_(self, v113, v112, v114);
}

- (void)touchInCellAtIndexPath:(id)path
{
  v5 = objc_msgSend_tableManager(self, a2, path, v3);
  v8 = objc_msgSend_indexOfSectionWithIdentifier_(v5, v6, @"PPPoEConnectionSelectionInfo", v7);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v13 = v8;
    v14 = objc_msgSend_tableManager(self, v9, v10, v11);
    v12 = objc_msgSend_tagOfSelectedRowInMenuSection_(v14, v15, v13, v16);
  }

  outResultsDict = self->super._outResultsDict;
  v18 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v9, v12, v11);
  v20 = sub_23EB6CDF8(1651724355);

  objc_msgSend_setObject_forKey_(outResultsDict, v19, v18, v20);
}

@end