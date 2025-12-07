@interface StepByStepUIViewController
- (void)dealloc;
- (void)loadView;
- (void)stepByStepUpdateProgress:(id)progress forState:(int)state;
- (void)syncTopoUIForTarget:(id)target andSource:(id)source andNetwork:(id)network connectionType:(id)type;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation StepByStepUIViewController

- (void)dealloc
{
  objc_msgSend_setTopoLayout_(self, a2, 0, v2);
  objc_msgSend_setSpinnerWithStatusBelowLabel_(self, v4, 0, v5);
  objc_msgSend_setSpinnerWithStatusBelowView_(self, v6, 0, v7);
  objc_msgSend_setSpinnerWithStatusBelowSpinner_(self, v8, 0, v9);
  objc_msgSend_setTopoView_(self, v10, 0, v11);
  objc_msgSend_setTableFooterContainerView_(self, v12, 0, v13);
  objc_msgSend_setJustTextContainerView_(self, v14, 0, v15);
  objc_msgSend_setTableHeaderContainerView_(self, v16, 0, v17);
  v18.receiver = self;
  v18.super_class = StepByStepUIViewController;
  [(AssistantSubUIViewController *)&v18 dealloc];
}

- (void)loadView
{
  v122[1] = *MEMORY[0x277D85DE8];
  v120.receiver = self;
  v120.super_class = StepByStepUIViewController;
  [(AUUITableViewController *)&v120 loadView];
  v6 = objc_msgSend_view(self, v3, v4, v5);
  objc_msgSend_frame(v6, v7, v8, v9);
  v14 = objc_msgSend_topoViewWithWidth_(AssistantSubUIViewController, v10, v11, v12, v13);
  objc_msgSend_setTopoView_(self, v15, v14, v16);
  v119 = 0;
  v20 = objc_msgSend_view(self, v17, v18, v19);
  objc_msgSend_frame(v20, v21, v22, v23);
  self->justTextLabel = objc_msgSend_labelViewInContainer_width_(AssistantSubUIViewController, v24, &v119, v25, v26);
  objc_msgSend_setJustTextContainerView_(self, v27, v119, v28);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->justTextContainerView, v29, 0, v30);
  justTextLabel = self->justTextLabel;
  v32 = MEMORY[0x277CCAAD0];
  v121 = @"height";
  v33 = MEMORY[0x277CCABB0];
  objc_msgSend_frame(justTextLabel, v34, v35, v36);
  *&v38 = v37;
  v122[0] = objc_msgSend_numberWithFloat_(v33, v39, v40, v41, v38);
  v43 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v42, v122, &v121, 1);
  v44 = _NSDictionaryOfVariableBindings(&cfstr_Justtextlabel.isa, self->justTextLabel, 0);
  v46 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v32, v45, @"V:[justTextLabel(>=height)]", 0, v43, v44);
  objc_msgSend_addConstraints_(justTextLabel, v47, v46, v48);
  v52 = objc_msgSend_view(self, v49, v50, v51);
  objc_msgSend_frame(v52, v53, v54, v55);
  v60 = objc_msgSend_containerViewWithWidth_(AssistantSubUIViewController, v56, v57, v58, v59);
  objc_msgSend_setTableHeaderContainerView_(self, v61, v60, v62);
  v118 = 0;
  v119 = 0;
  v66 = objc_msgSend_view(self, v63, v64, v65);
  objc_msgSend_frame(v66, v67, v68, v69);
  v72 = objc_msgSend_labelViewInContainer_width_withSpinner_above_(AssistantSubUIViewController, v70, &v119, &v118, 1, v71);
  objc_msgSend_setSpinnerWithStatusBelowLabel_(self, v73, v72, v74);
  objc_msgSend_setSpinnerWithStatusBelowView_(self, v75, v119, v76);
  objc_msgSend_setSpinnerWithStatusBelowSpinner_(self, v77, v118, v78);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->spinnerWithStatusBelowView, v79, 0, v80);
  v84 = objc_msgSend_view(self, v81, v82, v83);
  objc_msgSend_frame(v84, v85, v86, v87);
  v92 = objc_msgSend_containerViewWithWidth_(AssistantSubUIViewController, v88, v89, v90, v91);
  objc_msgSend_setTableFooterContainerView_(self, v93, v92, v94);
  v98 = objc_msgSend_view(self, v95, v96, v97);
  objc_msgSend_frame(v98, v99, v100, v101);
  v103 = v102;
  v107 = objc_msgSend_view(self, v104, v105, v106);
  objc_msgSend_frame(v107, v108, v109, v110);
  v115 = objc_msgSend_tableViewWithWidth_height_(AssistantSubUIViewController, v111, v112, v113, v103, v114);
  objc_msgSend_setTableView_(self, v116, v115, v117);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6 = objc_msgSend_tableView(self, a2, appear, v3);
  objc_msgSend_setTableFooterView_(v6, v7, 0, v8);
  v9.receiver = self;
  v9.super_class = StepByStepUIViewController;
  [(AUUITableViewController *)&v9 viewWillAppear:appearCopy];
}

- (void)syncTopoUIForTarget:(id)target andSource:(id)source andNetwork:(id)network connectionType:(id)type
{
  v10 = MEMORY[0x277CCABB0];
  v11 = sub_23EB6A2C0(target);
  v14 = objc_msgSend_numberWithInteger_(v10, v12, v11, v13);
  v15 = MEMORY[0x277CCABB0];
  v16 = sub_23EB6A294(target);
  v82 = objc_msgSend_numberWithInteger_(v15, v17, v16, v18);
  if (source)
  {
    v22 = MEMORY[0x277CCABB0];
    v23 = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, v19, source, v21);
    v26 = objc_msgSend_numberWithInteger_(v22, v24, v23, v25);
    v27 = MEMORY[0x277CCABB0];
    if (v26)
    {
      v28 = v26;
      v29 = sub_23EB6A1FC(source);
      v32 = objc_msgSend_numberWithInteger_(v27, v30, v29, v31);
      v36 = objc_msgSend_integerValue(v28, v33, v34, v35);
      v40 = objc_msgSend_integerValue(v32, v37, v38, v39);
      v41 = sub_23EB6D7A8(v36, v40);
    }

    else
    {
      v42 = sub_23EB6A2C0(source);
      v28 = objc_msgSend_numberWithInteger_(v27, v43, v42, v44);
      v45 = MEMORY[0x277CCABB0];
      v46 = sub_23EB6A294(source);
      v32 = objc_msgSend_numberWithInteger_(v45, v47, v46, v48);
      v41 = objc_msgSend_objectForKey_(source, v49, @"name", v50);
    }

    source = v41;
  }

  else
  {
    v28 = 0;
    v32 = 0;
  }

  v51 = objc_msgSend_integerValue(v14, v19, v20, v21);
  v52 = sub_23EB6A294(target);
  v53 = sub_23EB6D7A8(v51, v52);
  v57 = objc_msgSend_parentController(self, v54, v55, v56);
  v61 = objc_msgSend__assistantUIController(v57, v58, v59, v60);
  v65 = objc_msgSend_topoView(self, v62, v63, v64);
  v69 = objc_msgSend_layer(v65, v66, v67, v68);
  v73 = objc_msgSend_topoLayout(self, v70, v71, v72);
  v77 = objc_msgSend_topoView(self, v74, v75, v76);
  v80 = objc_msgSend_modifyTopoUIInLayer_withLayout_andOwningView_targetProductID_targetDeviceKind_targetName_targetWiFiName_sourceProductID_sourceDeviceKind_sourceName_sourceWiFiName_connectionType_(v61, v78, v69, v73, v77, v14, v82, v53, network, v28, v32, source, network, type);

  objc_msgSend_setTopoLayout_(self, v79, v80, v81);
}

- (void)stepByStepUpdateProgress:(id)progress forState:(int)state
{
  if (objc_msgSend_tableView(self, a2, progress, *&state) && objc_msgSend_tableFooterContainerView(self, v6, v7, v8) && objc_msgSend_spinnerWithStatusBelowView(self, v9, v10, v11) && objc_msgSend_spinnerWithStatusBelowLabel(self, v12, v13, v14))
  {
    v18 = objc_msgSend_navigationItem(self, v15, v16, v17);
    v22 = objc_msgSend_rightBarButtonItem(v18, v19, v20, v21);
    objc_msgSend_setEnabled_(v22, v23, 0, v24);
    v28 = objc_msgSend_tableView(self, v25, v26, v27);
    if (objc_msgSend_numberOfSections(v28, v29, v30, v31) >= 1)
    {
      v35 = objc_msgSend_tableManager(self, v32, v33, v34);
      objc_msgSend_cleanTableViewForReuse(v35, v36, v37, v38);
      v39 = MEMORY[0x277CBEA60];
      v43 = objc_msgSend_spinnerWithStatusBelowView(self, v40, v41, v42);
      v46 = objc_msgSend_arrayWithObjects_(v39, v44, v43, v45, 0);
      v50 = objc_msgSend_parentController(self, v47, v48, v49);
      v54 = objc_msgSend_tableFooterContainerView(self, v51, v52, v53);
      objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(v50, v55, v54, v46, 1);
      v59 = objc_msgSend_tableFooterContainerView(self, v56, v57, v58);
      v63 = objc_msgSend_tableView(self, v60, v61, v62);
      objc_msgSend_setTableFooterView_(v63, v64, v59, v65);
    }

    objc_msgSend_startAnimating(self->spinnerWithStatusBelowSpinner, v32, v33, v34);
    spinnerWithStatusBelowLabel = self->spinnerWithStatusBelowLabel;
    spinnerWithStatusBelowView = self->spinnerWithStatusBelowView;
    if (objc_msgSend_length(progress, v68, v69, v70))
    {
      objc_msgSend_setText_(spinnerWithStatusBelowLabel, v71, progress, v72);
    }

    else
    {
      objc_msgSend_setText_(spinnerWithStatusBelowLabel, v71, @"\n", v72);
    }

    objc_msgSend_sizeToFit(spinnerWithStatusBelowLabel, v73, v74, v75);
    objc_msgSend_setNeedsLayout(spinnerWithStatusBelowLabel, v76, v77, v78);
    objc_msgSend_setNeedsLayout(spinnerWithStatusBelowView, v79, v80, v81);
    tableHeaderContainerView = self->tableHeaderContainerView;

    objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v82, tableHeaderContainerView, v83);
  }
}

@end