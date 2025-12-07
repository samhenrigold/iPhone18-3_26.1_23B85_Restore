@interface InternetViewController
- (void)addInformationalDiagramWithWANConnectedBaseProductID:(unsigned int)d replacementProductID:(unsigned int)iD;
- (void)addInternetNotWorkingUI;
- (void)addInternetWANPluginUI;
- (void)addSwapCablingUI;
- (void)dealloc;
- (void)determineInfoForDevice:(id)device deviceDiagramInfo:(id *)info;
- (void)loadView;
- (void)presentSwapCablingCompleteUI;
- (void)setCommonTraitsForLabel:(id)label forSize:(double)size;
- (void)startAnimatingCablingForView:(id)view startingOpacity:(float)opacity endingOpacity:(float)endingOpacity duration:(double)duration;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation InternetViewController

- (void)loadView
{
  v60 = 0;
  v61 = 0;
  v59.receiver = self;
  v59.super_class = InternetViewController;
  [(AUUITableViewController *)&v59 loadView];
  v6 = objc_msgSend_view(self, v3, v4, v5);
  objc_msgSend_frame(v6, v7, v8, v9);
  v11 = v10;
  v16 = objc_msgSend_tableViewWithWidth_height_(AssistantSubUIViewController, v12, v13, v14, v10, v15);
  objc_msgSend_setTableView_(self, v17, v16, v18);
  v22 = objc_msgSend_containerViewWithWidth_(AssistantSubUIViewController, v19, v20, v21, v11);
  objc_msgSend_setTableHeaderContainerView_(self, v23, v22, v24);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->tableHeaderContainerView, v25, 0, v26);
  self->spinnerWithStatusAdjacentLabel = objc_msgSend_labelViewInContainer_width_withSpinner_above_(AssistantSubUIViewController, v27, &v61, &v60, 0, v11);
  objc_msgSend_setSpinnerWithStatusAdjacentView_(self, v28, v61, v29);
  self->spinnerWithStatusAdjacentSpinner = v60;
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->spinnerWithStatusAdjacentView, v30, 0, v31);
  v61 = 0;
  self->descriptionLabel = objc_msgSend_labelViewInContainer_width_(AssistantSubUIViewController, v32, &v61, v33, v11);
  objc_msgSend_setDescriptionContainerView_(self, v34, v61, v35);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->descriptionContainerView, v36, 0, v37);
  v41 = objc_msgSend_containerViewWithWidth_(AssistantSubUIViewController, v38, v39, v40, v11);
  objc_msgSend_setDiagramContainerView_(self, v42, v41, v43);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->diagramContainerView, v44, 0, v45);
  objc_msgSend_setLeftNavigationButton_enable_hide_(self, v46, @"kBack", 1, 0);
  v50 = objc_msgSend_internetFlow(self, v47, v48, v49) != 3;
  objc_msgSend_setRightNavigationButton_enable_hide_(self, v51, @"kNext", v50, 0);
  v55 = objc_msgSend_internetFlow(self, v52, v53, v54);
  switch(v55)
  {
    case 3:
      objc_msgSend_addSwapCablingUI(self, v56, v57, v58);
      break;
    case 2:
      objc_msgSend_addInternetNotWorkingUI(self, v56, v57, v58);
      break;
    case 1:
      objc_msgSend_addInternetWANPluginUI(self, v56, v57, v58);
      break;
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6 = objc_msgSend_layer(self->cablingImageLastFrame, a2, disappear, v3);
  objc_msgSend_removeAllAnimations(v6, v7, v8, v9);
  v10.receiver = self;
  v10.super_class = InternetViewController;
  [(AUUITableViewController *)&v10 viewWillDisappear:disappearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v18.receiver = self;
  v18.super_class = InternetViewController;
  [(InternetViewController *)&v18 viewDidAppear:appear];
  objc_msgSend_bounds(self->tableHeaderContainerView, v4, v5, v6);
  v8 = v7;
  v10 = v9;
  v14 = objc_msgSend_tableView(self, v11, v12, v13);
  objc_msgSend_setContentSize_(v14, v15, v16, v17, v8, v10);
}

- (void)dealloc
{
  objc_msgSend_setSpinnerWithStatusAdjacentView_(self, a2, 0, v2);
  objc_msgSend_setDescriptionContainerView_(self, v4, 0, v5);
  objc_msgSend_setTableHeaderContainerView_(self, v6, 0, v7);
  objc_msgSend_setDiagramContainerView_(self, v8, 0, v9);
  objc_msgSend_setCablingImageLastFrame_(self, v10, 0, v11);
  objc_msgSend_setSwapDescriptionText_(self, v12, 0, v13);
  objc_msgSend_setSwapSourceLabelText_(self, v14, 0, v15);
  v16.receiver = self;
  v16.super_class = InternetViewController;
  [(AssistantSubUIViewController *)&v16 dealloc];
}

- (void)presentSwapCablingCompleteUI
{
  v5 = objc_msgSend_inParamDict(self, a2, v2, v3);
  v8 = objc_msgSend_objectForKey_(v5, v6, @"kSBSKey_TargetBase", v7);
  v9 = sub_23EB6CD3C(@"SwapAllCablesDetectedOK", qword_27E383800);
  v10 = MEMORY[0x277CCACA8];
  v11 = sub_23EB6A2C0(v8);
  v12 = sub_23EB6A294(v8);
  v13 = sub_23EB6CEE0(v11, v12, 0);
  valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v10, v14, v9, @"%@", 0, v13);
  sub_23EB5E054(self->descriptionLabel, self->descriptionContainerView, valid, v16);
  objc_msgSend_setText_(self->spinnerWithStatusAdjacentLabel, v17, &stru_285145FE8, v18);
  objc_msgSend_setRightNavigationButton_enable_hide_(self, v19, @"kNext", 1, 0);
  spinnerWithStatusAdjacentSpinner = self->spinnerWithStatusAdjacentSpinner;

  objc_msgSend_stopAnimating(spinnerWithStatusAdjacentSpinner, v20, v21, v22);
}

- (void)determineInfoForDevice:(id)device deviceDiagramInfo:(id *)info
{
  info->var1 = sub_23EB6A2C0(device);
  info->var2 = sub_23EB6B128(device);
  info->var4 = sub_23EB6A294(device);
  v6 = sub_23EB4BDDC(info->var1);
  info->var3 = v6;
  info->var0 = 1;
  if (v6)
  {
    info->var0 = sub_23EB4BDAC(info->var1);
  }
}

- (void)startAnimatingCablingForView:(id)view startingOpacity:(float)opacity endingOpacity:(float)endingOpacity duration:(double)duration
{
  v11 = objc_msgSend_layer(view, a2, view, v6);
  *&v12 = opacity;
  objc_msgSend_setOpacity_(v11, v13, v14, v15, v12);
  v18 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v16, @"opacity", v17);
  LODWORD(v19) = 2139095040;
  objc_msgSend_setRepeatCount_(v18, v20, v21, v22, v19);
  objc_msgSend_setAutoreverses_(v18, v23, 1, v24);
  objc_msgSend_setDuration_(v18, v25, v26, v27, duration);
  *&v28 = endingOpacity;
  v32 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v29, v30, v31, v28);
  objc_msgSend_setToValue_(v18, v33, v32, v34);
  v38 = objc_msgSend_layer(view, v35, v36, v37);

  MEMORY[0x2821F9670](v38, sel_addAnimation_forKey_, v18, @"fadeAnimation");
}

- (void)addSwapCablingUI
{
  v5 = objc_msgSend_inParamDict(self, a2, v2, v3);
  v8 = objc_msgSend_objectForKey_(v5, v6, @"kSBSKey_TargetBase", v7);
  v12 = objc_msgSend_inParamDict(self, v9, v10, v11);
  v15 = objc_msgSend_objectForKey_(v12, v13, @"kSBSKey_SourceBase", v14);
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  objc_msgSend_determineInfoForDevice_deviceDiagramInfo_(self, v16, v8, &v53);
  objc_msgSend_determineInfoForDevice_deviceDiagramInfo_(self, v17, v15, &v50);
  v21 = objc_msgSend_swapDescriptionText(self, v18, v19, v20);
  if (!objc_msgSend_length(v21, v22, v23, v24))
  {
    v28 = MEMORY[0x277CCACA8];
    v29 = sub_23EB6CD3C(@"SwapAllCables", qword_27E383800);
    v30 = sub_23EB6CEE0(v51, SHIDWORD(v52), 0);
    v33 = sub_23EB6D18C(v15, 1, v31, v32);
    v34 = sub_23EB6CEE0(v54, SHIDWORD(v55), 0);
    valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v28, v35, v29, @"%@%@%@", 0, v30, v33, v34);
    objc_msgSend_setSwapDescriptionText_(self, v37, valid, v38);
  }

  descriptionLabel = self->descriptionLabel;
  descriptionContainerView = self->descriptionContainerView;
  v41 = objc_msgSend_swapDescriptionText(self, v25, v26, v27);
  sub_23EB5E054(descriptionLabel, descriptionContainerView, v41, v42);
  objc_msgSend_startAnimating(self->spinnerWithStatusAdjacentSpinner, v43, v44, v45);
  v46 = sub_23EB6CD3C(@"SwapCablesWaiting", qword_27E383800);
  objc_msgSend_setText_(self->spinnerWithStatusAdjacentLabel, v47, v46, v48);
  objc_msgSend_addInformationalDiagramWithWANConnectedBaseProductID_replacementProductID_(self, v49, v51, v54);
}

- (void)addInternetWANPluginUI
{
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v5 = objc_msgSend_inParamDict(self, a2, v2, v3);
  objc_msgSend_determineInfoForDevice_deviceDiagramInfo_(self, v6, v5, &v30);
  v7 = MEMORY[0x277CCACA8];
  v8 = sub_23EB6CE6C(v31, SHIDWORD(v32));
  valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v7, v9, @"InternetNoWorkie%@", @"%@", 0, v8);
  v11 = sub_23EB6CD3C(@"TextualSentenceConcatenator", qword_27E383800);
  v12 = MEMORY[0x277CCACA8];
  v13 = sub_23EB6CD3C(valid, qword_27E383800);
  v14 = sub_23EB6CD3C(@"PlugInWANCableForInternet", qword_27E383800);
  v16 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v12, v15, v11, @"%@%@", 0, v13, v14);
  v17 = sub_23EB6CD3C(@"TextualSentenceConcatenator2NewLines", qword_27E383800);
  v18 = MEMORY[0x277CCACA8];
  v19 = sub_23EB6CD3C(@"ContinueWithoutInternet", qword_27E383800);
  v21 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v18, v20, v17, @"%@%@", 0, v16, v19);
  sub_23EB5E054(self->descriptionLabel, self->descriptionContainerView, v21, v22);
  objc_msgSend_startAnimating(self->spinnerWithStatusAdjacentSpinner, v23, v24, v25);
  v26 = sub_23EB6CD3C(@"WaitingForWANPlugin", qword_27E383800);
  objc_msgSend_setText_(self->spinnerWithStatusAdjacentLabel, v27, v26, v28);
  objc_msgSend_addInformationalDiagramWithWANConnectedBaseProductID_replacementProductID_(self, v29, v31, 0);
}

- (void)addInformationalDiagramWithWANConnectedBaseProductID:(unsigned int)d replacementProductID:(unsigned int)iD
{
  v4 = *&iD;
  v5 = *&d;
  v7 = [InfoDiagramView alloc];
  objc_msgSend_frame(self->diagramContainerView, v8, v9, v10);
  v12 = objc_msgSend_initWithFrame_wanConnectedBaseProductID_replacementProductID_(v7, v11, v5, v4);
  if (objc_msgSend_swapSourceLabelText(self, v13, v14, v15))
  {
    v19 = objc_msgSend_swapSourceLabelText(self, v16, v17, v18);
    objc_msgSend_setWANConnectedBaseLabelString_(v12, v20, v19, v21);
  }

  objc_msgSend_addSubview_(self->diagramContainerView, v16, v12, v18);
  diagramContainerView = self->diagramContainerView;
  v23 = MEMORY[0x277CCAAD0];
  v24 = _NSDictionaryOfVariableBindings(&cfstr_Diagramcontain.isa, diagramContainerView, 0);
  v26 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v23, v25, @"V:[diagramContainerView(100@250)]", 0, 0, v24);
  objc_msgSend_addConstraints_(diagramContainerView, v27, v26, v28);
  v29 = self->diagramContainerView;
  v30 = MEMORY[0x277CCAAD0];
  v31 = _NSDictionaryOfVariableBindings(&cfstr_Infoview.isa, v12, 0);
  v33 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v30, v32, @"V:|-10-[infoView]-10-|", 512, 0, v31);
  objc_msgSend_addConstraints_(v29, v34, v33, v35);
  v36 = self->diagramContainerView;
  v38 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v37, v12, 9, 0, v36, 9, 1.0, 0.0);
  objc_msgSend_addConstraint_(v36, v39, v38, v40);
  v41 = self->diagramContainerView;
  v42 = MEMORY[0x277CCAAD0];
  v43 = _NSDictionaryOfVariableBindings(&cfstr_Infoview.isa, v12, 0);
  v45 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v42, v44, @"H:|-(>=10)-[infoView]-(>=10)-|", 0, 0, v43);
  objc_msgSend_addConstraints_(v41, v46, v45, v47);
  objc_msgSend_setNeedsLayout(self->diagramContainerView, v48, v49, v50);
  v54 = objc_msgSend_parentController(self, v51, v52, v53);
  tableHeaderContainerView = self->tableHeaderContainerView;
  v58 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v56, self->spinnerWithStatusAdjacentView, v57, self->diagramContainerView, self->descriptionContainerView, 0);
  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(v54, v59, tableHeaderContainerView, v58, 1);
  v60 = self->tableHeaderContainerView;
  v64 = objc_msgSend_tableView(self, v61, v62, v63);
  objc_msgSend_setTableHeaderView_(v64, v65, v60, v66);
  v70 = objc_msgSend_tableView(self, v67, v68, v69);
  v71 = MEMORY[0x277CCAAD0];
  v72 = _NSDictionaryOfVariableBindings(&cfstr_Tableheadercon.isa, self->tableHeaderContainerView, 0);
  v74 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v71, v73, @"V:|[tableHeaderContainerView]", 0, 0, v72);
  objc_msgSend_addConstraints_(v70, v75, v74, v76);
  v80 = objc_msgSend_tableView(self, v77, v78, v79);
  v81 = MEMORY[0x277CCAAD0];
  v82 = _NSDictionaryOfVariableBindings(&cfstr_Tableheadercon.isa, self->tableHeaderContainerView, 0);
  v84 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v81, v83, @"H:|[tableHeaderContainerView]|", 0, 0, v82);
  objc_msgSend_addConstraints_(v80, v85, v84, v86);
  v90 = objc_msgSend_tableView(self, v87, v88, v89);
  v91 = MEMORY[0x277CCAAD0];
  v92 = self->tableHeaderContainerView;
  v96 = objc_msgSend_tableView(self, v93, v94, v95);
  v98 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v91, v97, v92, 7, 0, v96, 7, 1.0, 0.0);
  objc_msgSend_addConstraint_(v90, v99, v98, v100);
  cablingImageLastFrame = self->cablingImageLastFrame;

  MEMORY[0x2821F9670](self, sel_startAnimatingCablingForView_startingOpacity_endingOpacity_duration_, cablingImageLastFrame, v101);
}

- (void)setCommonTraitsForLabel:(id)label forSize:(double)size
{
  objc_msgSend_setTextAlignment_(label, a2, 1, v4);
  objc_msgSend_setLineBreakMode_(label, v7, 0, v8);
  v12 = objc_msgSend__secondaryLabelColor(MEMORY[0x277D75348], v9, v10, v11);
  objc_msgSend_setTextColor_(label, v13, v12, v14);
  objc_msgSend_setNumberOfLines_(label, v15, 0, v16);
  v21 = objc_msgSend_systemFontOfSize_(MEMORY[0x277D74300], v17, v18, v19, size);

  objc_msgSend_setFont_(label, v20, v21, v22);
}

- (void)addInternetNotWorkingUI
{
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v5 = objc_msgSend_inParamDict(self, a2, v2, v3);
  v8 = objc_msgSend_objectForKey_(v5, v6, @"kSBSKey_TargetBase", v7);
  objc_msgSend_determineInfoForDevice_deviceDiagramInfo_(self, v9, v8, &v97);
  v10 = MEMORY[0x277CCACA8];
  v11 = sub_23EB6CE6C(v98, SHIDWORD(v99));
  v14 = objc_msgSend_stringWithFormat_(v10, v12, @"InternetNoWorkie%@", v13, v11);
  v15 = sub_23EB6CD3C(@"TextualSentenceConcatenator2NewLines", qword_27E383800);
  v16 = MEMORY[0x277CCACA8];
  v17 = sub_23EB6CD3C(v14, qword_27E383800);
  v18 = sub_23EB6CD3C(@"NoInternet1", qword_27E383800);
  valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v16, v19, v15, @"%@%@", 0, v17, v18);
  v21 = MEMORY[0x277CCACA8];
  v22 = sub_23EB6CD3C(@"NoInternet1.1", qword_27E383800);
  v24 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v21, v23, v15, @"%@%@", 0, valid, v22);
  v25 = MEMORY[0x277CCACA8];
  v26 = sub_23EB6CD3C(@"NoInternet2", qword_27E383800);
  v28 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v25, v27, v15, @"%@%@", 0, v24, v26);
  v29 = MEMORY[0x277CCACA8];
  v30 = sub_23EB6CD3C(@"NoInternet3", qword_27E383800);
  v32 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v29, v31, v15, @"%@%@", 0, v28, v30);
  v33 = MEMORY[0x277CCACA8];
  v34 = sub_23EB6CD3C(@"ContinueWithoutInternet", qword_27E383800);
  v36 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v33, v35, v15, @"%@%@", 0, v32, v34);
  sub_23EB5E054(self->descriptionLabel, self->descriptionContainerView, v36, v37);
  objc_msgSend_startAnimating(self->spinnerWithStatusAdjacentSpinner, v38, v39, v40);
  v41 = sub_23EB6CD3C(@"WaitingForInternetAccess", qword_27E383800);
  objc_msgSend_setText_(self->spinnerWithStatusAdjacentLabel, v42, v41, v43);
  sub_23EB7C020(self->diagramContainerView, v44, v45, v46);
  v50 = objc_msgSend_parentController(self, v47, v48, v49);
  tableHeaderContainerView = self->tableHeaderContainerView;
  v54 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v52, self->spinnerWithStatusAdjacentView, v53, self->diagramContainerView, self->descriptionContainerView, 0);
  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(v50, v55, tableHeaderContainerView, v54, 1);
  v56 = self->tableHeaderContainerView;
  v60 = objc_msgSend_tableView(self, v57, v58, v59);
  objc_msgSend_setTableHeaderView_(v60, v61, v56, v62);
  v66 = objc_msgSend_tableView(self, v63, v64, v65);
  v67 = MEMORY[0x277CCAAD0];
  v68 = _NSDictionaryOfVariableBindings(&cfstr_Tableheadercon.isa, self->tableHeaderContainerView, 0);
  v70 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v67, v69, @"V:|[tableHeaderContainerView]", 0, 0, v68);
  objc_msgSend_addConstraints_(v66, v71, v70, v72);
  v76 = objc_msgSend_tableView(self, v73, v74, v75);
  v77 = MEMORY[0x277CCAAD0];
  v78 = _NSDictionaryOfVariableBindings(&cfstr_Tableheadercon.isa, self->tableHeaderContainerView, 0);
  v80 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v77, v79, @"H:|[tableHeaderContainerView]|", 0, 0, v78);
  objc_msgSend_addConstraints_(v76, v81, v80, v82);
  v86 = objc_msgSend_tableView(self, v83, v84, v85);
  v87 = MEMORY[0x277CCAAD0];
  v88 = self->tableHeaderContainerView;
  v92 = objc_msgSend_tableView(self, v89, v90, v91);
  v94 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v87, v93, v88, 7, 0, v92, 7, 1.0, 0.0);
  objc_msgSend_addConstraint_(v86, v95, v94, v96);
}

@end