@interface StepByStepUIViewController_ReplaceBaseStation_Config
- (BOOL)shouldChangeTextField:(id)field atIndexPath:(id)path forTextIndex:(unint64_t)index toString:(id)string;
- (void)dealloc;
- (void)loadView;
- (void)prepareParams;
- (void)primaryActionSelected:(BOOL)selected;
- (void)selectedDeviceUpdated;
- (void)setupDevices;
- (void)setupEditableBaseStationName;
- (void)setupHeaderAndFooter;
- (void)validateAndUpdateNextButton;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation StepByStepUIViewController_ReplaceBaseStation_Config

- (void)loadView
{
  v16.receiver = self;
  v16.super_class = StepByStepUIViewController_ReplaceBaseStation_Config;
  [(StepByStepUIViewController_DevicePicker *)&v16 loadView];
  v15 = 0;
  v6 = objc_msgSend_view(self, v3, v4, v5);
  objc_msgSend_frame(v6, v7, v8, v9);
  self->justTextLabel2 = objc_msgSend_labelViewInContainer_width_(AssistantSubUIViewController, v10, &v15, v11, v12);
  objc_msgSend_setJustTextContainerView2_(self, v13, v15, v14);
}

- (void)dealloc
{
  objc_msgSend_setJustTextContainerView2_(self, a2, 0, v2);
  v4.receiver = self;
  v4.super_class = StepByStepUIViewController_ReplaceBaseStation_Config;
  [(StepByStepUIViewController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6 = objc_msgSend_tableFooterContainerView(self, a2, appear, v3);
  v10 = objc_msgSend_tableView(self, v7, v8, v9);
  objc_msgSend_setTableFooterView_(v10, v11, v6, v12);
  v13.receiver = self;
  v13.super_class = StepByStepUIViewController_ReplaceBaseStation_Config;
  [(StepByStepUIViewController_DevicePicker *)&v13 viewWillAppear:appearCopy];
}

- (void)setupEditableBaseStationName
{
  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3);
  v9 = objc_msgSend_inParamDict(self, v6, v7, v8);
  v12 = objc_msgSend_objectForKey_(v9, v10, @"kSBSKey_TargetBase", v11);
  v13 = sub_23EB6A2C0(v12);
  v17 = objc_msgSend_inParamDict(self, v14, v15, v16);
  v20 = objc_msgSend_objectForKey_(v17, v18, @"kSBSKey_TargetBase", v19);
  v21 = sub_23EB6A294(v20);
  v22 = sub_23EB6D75C(v13, v21);
  objc_msgSend_setPersonalizedBaseName_(self, v23, v22, v24);
  v28 = objc_msgSend_personalizedBaseName(self, v25, v26, v27);
  if (!objc_msgSend_length(v28, v29, v30, v31))
  {
    v35 = sub_23EB6D7A8(v13, v21);
    objc_msgSend_setPersonalizedBaseName_(self, v36, v35, v37);
  }

  v38 = objc_msgSend_outResultsDict(self, v32, v33, v34);
  v42 = objc_msgSend_personalizedBaseName(self, v39, v40, v41);
  objc_msgSend_setValue_forKey_(v38, v43, v42, @"kSBSKey_BaseName");
  v47 = objc_msgSend_tableManager(self, v44, v45, v46);
  v48 = sub_23EB6CD3C(@"CustomBaseName", qword_27E383800);
  v52 = objc_msgSend_personalizedBaseName(self, v49, v50, v51);
  v53 = sub_23EB6CD3C(@"CustomBaseNamePlaceholder", qword_27E383800);
  isSecure_keyboardType_withTag = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v47, v54, 0, v48, v52, v53, 0, 0, 1937329773);
  objc_msgSend_addObject_(v5, v56, isSecure_keyboardType_withTag, v57);
  v61 = objc_msgSend_tableManager(self, v58, v59, v60);
  v65 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v62, v5, v63, @"sectionRows", @"WiFiName", @"identifier", 0);

  objc_msgSend_addSectionInfo_(v61, v64, v65, v66);
}

- (void)setupHeaderAndFooter
{
  v5 = objc_msgSend_tableManager(self, a2, v2, v3);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v5, v6, @"WiFiName", v7) == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_setupEditableBaseStationName(self, v8, v9, v10);
  }

  v11 = objc_msgSend_parentController(self, v8, v9, v10);
  v15 = objc_msgSend_tableHeaderContainerView(self, v12, v13, v14);
  v16 = MEMORY[0x277CBEA60];
  v20 = objc_msgSend_justTextContainerView(self, v17, v18, v19);
  v24 = objc_msgSend_topoView(self, v21, v22, v23);
  v27 = objc_msgSend_arrayWithObjects_(v16, v25, v20, v26, v24, 0);
  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(v11, v28, v15, v27, 0);
  v32 = objc_msgSend_tableHeaderContainerView(self, v29, v30, v31);
  v36 = objc_msgSend_tableView(self, v33, v34, v35);
  objc_msgSend_setTableHeaderView_(v36, v37, v32, v38);
  v42 = objc_msgSend_parentController(self, v39, v40, v41);
  v46 = objc_msgSend_tableFooterContainerView(self, v43, v44, v45);
  v47 = MEMORY[0x277CBEA60];
  v51 = objc_msgSend_justTextContainerView2(self, v48, v49, v50);
  v54 = objc_msgSend_arrayWithObjects_(v47, v52, v51, v53, 0);
  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(v42, v55, v46, v54, 0);
  v59 = objc_msgSend_tableFooterContainerView(self, v56, v57, v58);
  v63 = objc_msgSend_tableView(self, v60, v61, v62);

  objc_msgSend_setTableFooterView_(v63, v64, v59, v65);
}

- (void)prepareParams
{
  v5 = objc_msgSend_inParamDict(self, a2, v2, v3);
  v8 = objc_msgSend_objectForKey_(v5, v6, @"kSBSKey_SelectorChoice", v7);
  if (v8)
  {
    objc_msgSend_setObject_forKey_(self->super.super.super._outResultsDict, v9, v8, @"kSBSKey_SelectorChoice");
    v13 = objc_msgSend_inParamDict(self, v10, v11, v12);
    v16 = objc_msgSend_objectForKey_(v13, v14, @"kSBSKey_Mode", v15);
    if (objc_msgSend_integerValue(v16, v17, v18, v19) == 2)
    {

      objc_msgSend_setLeftNavigationButton_enable_hide_(self, v20, @"kCancel", 1, 0);
    }
  }
}

- (void)setupDevices
{
  v5 = MEMORY[0x277CBEB18];
  v6 = objc_msgSend_inParamDict(self, a2, v2, v3);
  v9 = objc_msgSend_objectForKey_(v6, v7, @"kSBSKey_BrowseRecordList", v8);
  v12 = objc_msgSend_arrayWithArray_(v5, v10, v9, v11);
  if (v12)
  {
    v15 = objc_msgSend_sortedArrayUsingSelector_(v12, v13, sel_ssidAndBaseNameLocalizedCaseInsensitiveCompare_, v14);
    objc_msgSend_setSortedDevices_(self, v16, v15, v17);
    self->super._selectedDevice = self->super._sourceBase;
    v19 = off_27E3830F0;

    MEMORY[0x2821F9670](self, sel_setConnectionMedium_, v19, v18);
  }
}

- (void)selectedDeviceUpdated
{
  v4 = objc_msgSend_nameForNetworkOrDevice_(StepByStepUtilities, a2, self->super._selectedDevice, v2);
  v7 = objc_msgSend_objectForKey_(self->super._sourceBase, v5, @"raNm", v6);
  ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v8, @"StepByStepStatus_ReplaceBaseStation%@", v9);
  justTextLabel = self->super.super.justTextLabel;
  justTextContainerView = self->super.super.justTextContainerView;
  valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v13, ProductLocalizedStringWithFormat, @"%@", 0, v4);
  sub_23EB5E054(justTextLabel, justTextContainerView, valid, v15);
  v19 = objc_msgSend_tableHeaderContainerView(self, v16, v17, v18);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v20, v19, v21);
  v25 = objc_msgSend_tableHeaderContainerView(self, v22, v23, v24);
  v29 = objc_msgSend_tableView(self, v26, v27, v28);
  objc_msgSend_setTableHeaderView_(v29, v30, v25, v31);
  v35 = objc_msgSend_inParamDict(self, v32, v33, v34);
  v38 = objc_msgSend_objectForKey_(v35, v36, @"kSBSKey_SelectorChoice", v37);
  v42 = objc_msgSend_integerValue(v38, v39, v40, v41);
  v45 = objc_msgSend_selectorChoiceToReplaceOption_(StepByStepUtilities, v43, v42, v44);
  v48 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v46, @"ReplaceBaseRecommendOption.%@", v47, v45);
  v51 = sub_23EB6CD3C(v48, qword_27E383800);
  switch(v42)
  {
    case 0x137:
      v53 = MEMORY[0x277CCACA8];
      v54 = sub_23EB6A2C0(self->super._targetBase);
      v55 = sub_23EB6A294(self->super._targetBase);
      v61 = sub_23EB6CEE0(v54, v55, 0);
      v52 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v53, v56, v51, @"%@%@", 0, v4, v61);
      goto LABEL_7;
    case 0x138:
      v52 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v49, v51, @"%@%@", 0, v4, v7);
      goto LABEL_7;
    case 0x139:
      v52 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v49, v51, @"%@", 0, v4);
LABEL_7:
      v57 = v52;
      goto LABEL_9;
  }

  v57 = &stru_285145FE8;
LABEL_9:
  sub_23EB5E054(self->justTextLabel2, self->justTextContainerView2, v57, v50);
  tableHeaderContainerView = self->super.super.tableHeaderContainerView;

  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v58, tableHeaderContainerView, v59);
}

- (void)validateAndUpdateNextButton
{
  v5 = objc_msgSend_outResultsDict(self, a2, v2, v3);
  if (objc_msgSend_valueForKey_(v5, v6, @"kSBSKey_SourceBase", v7))
  {
    v11 = objc_msgSend_outResultsDict(self, v8, v9, v10);
    v14 = objc_msgSend_valueForKey_(v11, v12, @"kSBSKey_BaseName", v13);
    v18 = objc_msgSend_length(v14, v15, v16, v17) != 0;
    v22 = objc_msgSend_navigationItem(self, v19, v20, v21);
    v26 = objc_msgSend_rightBarButtonItem(v22, v23, v24, v25);

    objc_msgSend_setEnabled_(v26, v27, v18, v28);
  }
}

- (BOOL)shouldChangeTextField:(id)field atIndexPath:(id)path forTextIndex:(unint64_t)index toString:(id)string
{
  v8 = objc_msgSend_outResultsDict(self, a2, field, path, index);
  objc_msgSend_setValue_forKey_(v8, v9, string, @"kSBSKey_BaseName");
  objc_msgSend_validateAndUpdateNextButton(self, v10, v11, v12);
  return 1;
}

- (void)primaryActionSelected:(BOOL)selected
{
  selectedCopy = selected;
  v6 = objc_msgSend_tableManager(self, a2, selected, v3);
  if (selectedCopy)
  {
    if (objc_msgSend_indexOfSectionWithIdentifier_(v6, v7, @"WiFiName", v8) == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_setupEditableBaseStationName(self, v9, v10, v11);
    }

    v15 = objc_msgSend_tableFooterContainerView(self, v9, v10, v11);
  }

  else
  {
    objc_msgSend_deleteSectionWithIdentifier_(v6, v7, @"WiFiName", v8);
    v15 = 0;
  }

  v16 = objc_msgSend_tableView(self, v12, v13, v14);

  objc_msgSend_setTableFooterView_(v16, v17, v15, v18);
}

@end