@interface StepByStepUIViewController_Restore_Config
- (void)dealloc;
- (void)loadView;
- (void)setupInitialTableHeaderConfiguration;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation StepByStepUIViewController_Restore_Config

- (void)loadView
{
  v59.receiver = self;
  v59.super_class = StepByStepUIViewController_Restore_Config;
  [(StepByStepUIViewController *)&v59 loadView];
  v58 = 0;
  v6 = objc_msgSend_view(self, v3, v4, v5);
  objc_msgSend_frame(v6, v7, v8, v9);
  self->restoreRecommendationLabel = objc_msgSend_labelViewInContainer_width_(AssistantSubUIViewController, v10, &v58, v11, v12);
  objc_msgSend_setRestoreRecommendationContainerView_(self, v13, v58, v14);
  v58 = 0;
  v18 = objc_msgSend_view(self, v15, v16, v17);
  objc_msgSend_frame(v18, v19, v20, v21);
  self->dontRestoreRecommendationLabel = objc_msgSend_labelViewInContainer_width_(AssistantSubUIViewController, v22, &v58, v23, v24);
  objc_msgSend_setDontRestoreRecommendationContainerView_(self, v25, v58, v26);
  v30 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v27, v28, v29, 0.5, 0.0, 0.0, 1.0);
  objc_msgSend_setTextColor_(self->dontRestoreRecommendationLabel, v31, v30, v32);
  v36 = objc_msgSend_tableHeaderContainerView(self, v33, v34, v35);
  v40 = objc_msgSend_tableView(self, v37, v38, v39);
  objc_msgSend_setTableHeaderView_(v40, v41, v36, v42);
  v46 = objc_msgSend_tableView(self, v43, v44, v45);
  v47 = MEMORY[0x277CCAAD0];
  tableHeaderContainerView = self->super.tableHeaderContainerView;
  v52 = objc_msgSend_tableView(self, v49, v50, v51);
  v54 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v47, v53, tableHeaderContainerView, 7, 0, v52, 7, 1.0, 0.0);
  objc_msgSend_addConstraint_(v46, v55, v54, v56);
  objc_msgSend_setRightNavigationButton_enable_hide_(self, v57, @"kNext", 1, 0);
}

- (void)dealloc
{
  objc_msgSend_setRestoreRecommendationContainerView_(self, a2, 0, v2);
  objc_msgSend_setDontRestoreRecommendationContainerView_(self, v4, 0, v5);
  v6.receiver = self;
  v6.super_class = StepByStepUIViewController_Restore_Config;
  [(StepByStepUIViewController *)&v6 dealloc];
}

- (void)setupInitialTableHeaderConfiguration
{
  v5 = MEMORY[0x277CBEA60];
  v6 = objc_msgSend_justTextContainerView(self, a2, v2, v3);
  v13 = objc_msgSend_topoView(self, v7, v8, v9);
  if (self->dontRestore)
  {
    v14 = objc_msgSend_dontRestoreRecommendationContainerView(self, v10, v11, v12);
  }

  else
  {
    v14 = objc_msgSend_restoreRecommendationContainerView(self, v10, v11, v12);
  }

  v17 = objc_msgSend_arrayWithObjects_(v5, v15, v6, v16, v13, v14, 0);
  v21 = objc_msgSend_parentController(self, v18, v19, v20);
  v25 = objc_msgSend_tableHeaderContainerView(self, v22, v23, v24);
  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(v21, v26, v25, v17, 1);
  v30 = objc_msgSend_tableHeaderContainerView(self, v27, v28, v29);
  v34 = objc_msgSend_tableView(self, v31, v32, v33);

  objc_msgSend_setTableHeaderView_(v34, v35, v30, v36);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v6 = objc_msgSend_inParamDict(self, a2, appear, v3);
  v9 = objc_msgSend_objectForKey_(v6, v7, @"kSBSKey_TargetBase", v8);
  objc_msgSend_syncTopoUIForTarget_andSource_andNetwork_connectionType_(self, v10, v9, 0, 0, 0);
  justTextLabel = self->super.justTextLabel;
  justTextContainerView = self->super.justTextContainerView;
  ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v13, @"StepByStepStatus_Restore%@", v14);
  sub_23EB5E054(justTextLabel, justTextContainerView, ProductLocalizedStringWithFormat, v16);
  v20 = objc_msgSend_tableHeaderContainerView(self, v17, v18, v19);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v21, v20, v22);
  v26 = objc_msgSend_inParamDict(self, v23, v24, v25);
  v29 = objc_msgSend_objectForKey_(v26, v27, @"kSBSKey_RestoreRecommendation", v28);
  v33 = objc_msgSend_inParamDict(self, v30, v31, v32);
  v37 = objc_msgSend_inParamDict(self, v34, v35, v36);
  v40 = objc_msgSend_objectForKey_(v37, v38, @"kSBSKey_Step", v39);
  v44 = objc_msgSend_integerValue(v40, v41, v42, v43);
  objc_msgSend_formatRecommendation_fromParamDict_forStep_restoreString_restoreSpecificString_dontRecommendString_(StepByStepUtilities, v45, v29, v33, v44, &v66, &v65, &v64);
  v49 = objc_msgSend_length(v64, v46, v47, v48);
  self->dontRestore = v49 != 0;
  if (v49)
  {
    dontRestoreRecommendationLabel = self->dontRestoreRecommendationLabel;
    dontRestoreRecommendationContainerView = self->dontRestoreRecommendationContainerView;
    v55 = v64;
  }

  else
  {
    v56 = objc_msgSend_length(v65, v50, v51, v52);
    dontRestoreRecommendationContainerView = self->restoreRecommendationContainerView;
    if (v56)
    {
      v57 = &v65;
    }

    else
    {
      v57 = &v66;
    }

    v55 = *v57;
    dontRestoreRecommendationLabel = self->restoreRecommendationLabel;
  }

  sub_23EB5E054(dontRestoreRecommendationLabel, dontRestoreRecommendationContainerView, v55, v52);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v58, self->super.tableHeaderContainerView, v59);
  objc_msgSend_setupInitialTableHeaderConfiguration(self, v60, v61, v62);
  v63.receiver = self;
  v63.super_class = StepByStepUIViewController_Restore_Config;
  [(StepByStepUIViewController *)&v63 viewWillAppear:appearCopy];
}

@end