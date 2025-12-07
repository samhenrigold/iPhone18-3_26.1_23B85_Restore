@interface StepByStepUIViewController_ExtendWireless_Config
- (BOOL)shouldChangeTextField:(id)field atIndexPath:(id)path forTextIndex:(unint64_t)index toString:(id)string;
- (StepByStepUIViewController_ExtendWireless_Config)initWithNibName:(id)name bundle:(id)bundle;
- (id)deviceTableLabel;
- (void)primaryActionSelected:(BOOL)selected;
- (void)selectedDeviceUpdated;
- (void)setupAndShowEditableBaseStationName;
- (void)setupDevices;
- (void)setupHeaderAndFooter;
- (void)validateAndUpdateNextButton;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation StepByStepUIViewController_ExtendWireless_Config

- (StepByStepUIViewController_ExtendWireless_Config)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = StepByStepUIViewController_ExtendWireless_Config;
  result = [(StepByStepUIViewController_DevicePicker *)&v5 initWithNibName:name bundle:bundle];
  if (result)
  {
    result->connectionType = &off_27E3830E8[0]->isa;
    result->unlocalizedStatusString = @"StepByStepStatus_ExtendWireless%@";
    result->isReallyJoin = 0;
  }

  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6 = objc_msgSend_inParamDict(self, a2, appear, v3);
  v9 = objc_msgSend_valueForKey_(v6, v7, @"kSBSKey_SelectorChoice", v8);
  if (v9 && objc_msgSend_integerValue(v9, v10, v11, v12) == 212)
  {
    self->isReallyJoin = 1;
    self->unlocalizedStatusString = @"PrimarySetupRecommendation_Join.Specific";
  }

  v13.receiver = self;
  v13.super_class = StepByStepUIViewController_ExtendWireless_Config;
  [(StepByStepUIViewController_DevicePicker *)&v13 viewWillAppear:appearCopy];
}

- (void)setupAndShowEditableBaseStationName
{
  v5 = objc_msgSend_tableManager(self, a2, v2, v3);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v5, v6, @"WiFiName", v7) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9, v10);
    v15 = objc_msgSend_inParamDict(self, v12, v13, v14);
    v18 = objc_msgSend_objectForKey_(v15, v16, @"kSBSKey_TargetBase", v17);
    v19 = sub_23EB6A2C0(v18);
    v23 = objc_msgSend_inParamDict(self, v20, v21, v22);
    v26 = objc_msgSend_objectForKey_(v23, v24, @"kSBSKey_TargetBase", v25);
    v27 = sub_23EB6A294(v26);
    v28 = sub_23EB6D75C(v19, v27);
    objc_msgSend_setPersonalizedBaseName_(self, v29, v28, v30);
    v34 = objc_msgSend_personalizedBaseName(self, v31, v32, v33);
    if (!objc_msgSend_length(v34, v35, v36, v37))
    {
      v41 = sub_23EB6D7A8(v19, v27);
      objc_msgSend_setPersonalizedBaseName_(self, v42, v41, v43);
    }

    v44 = objc_msgSend_outResultsDict(self, v38, v39, v40);
    v48 = objc_msgSend_personalizedBaseName(self, v45, v46, v47);
    objc_msgSend_setValue_forKey_(v44, v49, v48, @"kSBSKey_BaseName");
    v53 = objc_msgSend_tableManager(self, v50, v51, v52);
    v54 = sub_23EB6CD3C(@"CustomBaseName", qword_27E383800);
    v58 = objc_msgSend_personalizedBaseName(self, v55, v56, v57);
    v59 = sub_23EB6CD3C(@"CustomBaseNamePlaceholder", qword_27E383800);
    isSecure_keyboardType_withTag = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v53, v60, 0, v54, v58, v59, 0, 0, 1937329773);
    objc_msgSend_addObject_(v11, v62, isSecure_keyboardType_withTag, v63);
    v67 = objc_msgSend_tableManager(self, v64, v65, v66);
    v71 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v68, v11, v69, @"sectionRows", @"WiFiName", @"identifier", 0);

    objc_msgSend_addSectionInfo_(v67, v70, v71, v72);
  }
}

- (void)setupHeaderAndFooter
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

  MEMORY[0x2821F9670](self, sel_setupAndShowEditableBaseStationName, v33, v34);
}

- (void)primaryActionSelected:(BOOL)selected
{
  if (selected)
  {

    (MEMORY[0x2821F9670])(self, sel_setupAndShowEditableBaseStationName, selected);
  }

  else
  {
    v5 = objc_msgSend_tableManager(self, a2, selected, v3);

    objc_msgSend_deleteSectionWithIdentifier_(v5, v6, @"WiFiName", v7);
  }
}

- (void)selectedDeviceUpdated
{
  v4 = objc_msgSend_nameForNetworkOrDevice_(StepByStepUtilities, a2, self->super._selectedDevice, v2);
  ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v5, self->unlocalizedStatusString, v6);
  justTextLabel = self->super.super.justTextLabel;
  v12 = objc_msgSend_justTextContainerView(self, v9, v10, v11);
  valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v13, ProductLocalizedStringWithFormat, @"%@", 0, v4);
  sub_23EB5E054(justTextLabel, v12, valid, v15);
  v19 = objc_msgSend_tableHeaderContainerView(self, v16, v17, v18);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v20, v19, v21);
  v25 = objc_msgSend_tableHeaderContainerView(self, v22, v23, v24);
  v29 = objc_msgSend_tableView(self, v26, v27, v28);

  objc_msgSend_setTableHeaderView_(v29, v30, v25, v31);
}

- (id)deviceTableLabel
{
  if (self->isReallyJoin)
  {
    v2 = @"StepByStepStatus_ExtendWireless_Config.DeviceToJoin";
  }

  else
  {
    v2 = @"StepByStepStatus_ExtendWireless_Config.DeviceToExtend";
  }

  return sub_23EB6CD3C(v2, qword_27E383800);
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
    connectionType = self->connectionType;

    MEMORY[0x2821F9670](self, sel_setConnectionMedium_, connectionType, v18);
  }
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

@end