@interface StepByStepUIViewController_Create_Guest
- (BOOL)validateAndSetValues;
- (void)addGuestNetworkIsEnabledSection;
- (void)addGuestNetworkPasswordSection;
- (void)loadView;
- (void)setupInitialTableHeaderConfiguration;
- (void)setupTable;
- (void)switchTouchedInCellAtIndexPath:(id)path forSwitchIndex:(unint64_t)index isOn:(BOOL)on;
- (void)updateTable;
- (void)validateAndUpdateNextButton;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation StepByStepUIViewController_Create_Guest

- (void)loadView
{
  v54.receiver = self;
  v54.super_class = StepByStepUIViewController_Create_Guest;
  [(StepByStepUIViewController *)&v54 loadView];
  objc_msgSend_setGuestNetworkEnabled_(self, v3, 0, v4);
  objc_msgSend_setGuestNetSecMode_(self, v5, 1, v6);
  outResultsDict = self->super.super._outResultsDict;
  v8 = MEMORY[0x277CCABB0];
  v12 = objc_msgSend_guestNetworkEnabled(self, v9, v10, v11);
  v15 = objc_msgSend_numberWithBool_(v8, v13, v12, v14);
  objc_msgSend_setValue_forKey_(outResultsDict, v16, v15, @"kSBSKey_GuestNetwork_On");
  objc_msgSend_setValue_forKey_(self->super.super._outResultsDict, v17, &stru_285145FE8, @"kSBSKey_GuestNetwork_Name");
  v18 = self->super.super._outResultsDict;
  v19 = MEMORY[0x277CCABB0];
  v23 = objc_msgSend_guestNetSecMode(self, v20, v21, v22);
  v26 = objc_msgSend_numberWithInteger_(v19, v24, v23, v25);
  objc_msgSend_setValue_forKey_(v18, v27, v26, @"kSBSKey_GuestNetwork_Security");
  objc_msgSend_setValue_forKey_(self->super.super._outResultsDict, v28, &stru_285145FE8, @"kSBSKey_GuestNetwork_Password");
  objc_msgSend_setRightNavigationButton_enable_hide_(self, v29, @"kNext", 0, 0);
  justTextLabel = self->super.justTextLabel;
  justTextContainerView = self->super.justTextContainerView;
  ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v32, @"StepByStepChoice_Create_Guest.GuestNetworkInfo%@", v33);
  sub_23EB5E054(justTextLabel, justTextContainerView, ProductLocalizedStringWithFormat, v35);
  v39 = objc_msgSend_tableHeaderContainerView(self, v36, v37, v38);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v40, v39, v41);
  v45 = objc_msgSend_tableHeaderContainerView(self, v42, v43, v44);
  v49 = objc_msgSend_tableView(self, v46, v47, v48);
  objc_msgSend_setTableHeaderView_(v49, v50, v45, v51);
  objc_msgSend_setDelegate_(self, v52, self, v53);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6 = objc_msgSend_valueForKey_(self->super.super._outResultsDict, a2, @"kSBSKey_GuestNetwork_On", v3);
  v10 = objc_msgSend_BOOLValue(v6, v7, v8, v9);
  objc_msgSend_setGuestNetworkEnabled_(self, v11, v10, v12);
  v15 = objc_msgSend_valueForKey_(self->super.super._outResultsDict, v13, @"kSBSKey_GuestNetwork_Name", v14);
  if (v15)
  {
    objc_msgSend_setWifiName_(self, v16, v15, v17);
  }

  else
  {
    objc_msgSend_setWifiName_(self, v16, &stru_285145FE8, v17);
  }

  v20 = objc_msgSend_valueForKey_(self->super.super._outResultsDict, v18, @"kSBSKey_GuestNetwork_Security", v19);
  v24 = objc_msgSend_integerValue(v20, v21, v22, v23);
  objc_msgSend_setGuestNetSecMode_(self, v25, v24, v26);
  v29 = objc_msgSend_valueForKey_(self->super.super._outResultsDict, v27, @"kSBSKey_GuestNetwork_Password", v28);
  if (v29)
  {
    objc_msgSend_setWifiPassword_(self, v30, v29, v31);
  }

  else
  {
    objc_msgSend_setWifiPassword_(self, v30, &stru_285145FE8, v31);
  }

  v35 = objc_msgSend_inParamDict(self, v32, v33, v34);
  v38 = objc_msgSend_objectForKey_(v35, v36, @"kSBSKey_TargetBase", v37);
  objc_msgSend_syncTopoUIForTarget_andSource_andNetwork_connectionType_(self, v39, v38, 0, 0, 0);
  objc_msgSend_setupTable(self, v40, v41, v42);
  objc_msgSend_updateTable(self, v43, v44, v45);
  objc_msgSend_validateAndUpdateNextButton(self, v46, v47, v48);
  v49.receiver = self;
  v49.super_class = StepByStepUIViewController_Create_Guest;
  [(StepByStepUIViewController *)&v49 viewWillAppear:appearCopy];
}

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

- (BOOL)validateAndSetValues
{
  v5 = objc_msgSend_tableManager(self, a2, v2, v3);
  ValueForFirstItemOfType_inCellWithTag = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v5, v6, @"editTextView", 1196314221);
  v11 = objc_msgSend_UTF8String(ValueForFirstItemOfType_inCellWithTag, v8, v9, v10);
  v12 = sub_23EB6BB98(v11);
  if (v12)
  {
    objc_msgSend_setWifiName_(self, v13, ValueForFirstItemOfType_inCellWithTag, v14);
    if (objc_msgSend_guestNetSecMode(self, v15, v16, v17) != 7)
    {
LABEL_6:
      LOBYTE(v12) = 1;
      return v12;
    }

    v21 = objc_msgSend_tableManager(self, v18, v19, v20);
    v23 = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v21, v22, @"editTextView", 1196314743);
    v27 = objc_msgSend_tableManager(self, v24, v25, v26);
    v29 = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v27, v28, @"editTextView", 1196314710);
    v33 = objc_msgSend_tableManager(self, v30, v31, v32);
    v12 = objc_msgSend_verifyStr1_forTag1_matchesStr2_forTag2_(v33, v34, v23, 1196314743, v29, 1196314710);
    if (v12)
    {
      v38 = objc_msgSend_UTF8String(v23, v35, v36, v37);
      v12 = sub_23EB6BBDC(v38);
      if (v12)
      {
        objc_msgSend_setWifiPassword_(self, v39, v23, v40);
        goto LABEL_6;
      }
    }
  }

  return v12;
}

- (void)switchTouchedInCellAtIndexPath:(id)path forSwitchIndex:(unint64_t)index isOn:(BOOL)on
{
  onCopy = on;
  v18 = 0;
  v8 = objc_msgSend_tableManager(self, a2, path, index);
  if (objc_msgSend_tagOfCellAtIndexPath_tag_(v8, v9, path, &v18))
  {
    if (v18 == 1196314707)
    {
      if (onCopy)
      {
        objc_msgSend_setGuestNetSecMode_(self, v10, 7, v11);
      }

      else
      {
        objc_msgSend_setGuestNetSecMode_(self, v10, 1, v11);
      }
    }

    else
    {
      if (v18 != 1196315511)
      {
        return;
      }

      objc_msgSend_setGuestNetworkEnabled_(self, v10, onCopy, v11);
    }

    objc_msgSend_updateTable(self, v12, v13, v14);
    objc_msgSend_validateAndUpdateNextButton(self, v15, v16, v17);
  }
}

- (void)setupTable
{
  v5 = objc_msgSend_tableManager(self, a2, v2, v3);
  objc_msgSend_cleanTableViewForReuse(v5, v6, v7, v8);
  v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v9, v10, v11);
  v16 = objc_msgSend_tableManager(self, v13, v14, v15);
  v17 = sub_23EB6CD3C(@"StepByStepChoice_Create_Guest.GuestNetSwitchLabel", qword_27E383800);
  v21 = objc_msgSend_guestNetworkEnabled(self, v18, v19, v20);
  v23 = objc_msgSend_createRowStyleBasicOnOffWithImage_labelText_isOn_withTag_(v16, v22, 0, v17, v21, 1196315511);
  objc_msgSend_addObject_(v12, v24, v23, v25);
  v29 = objc_msgSend_tableManager(self, v26, v27, v28);
  v32 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v30, v12, v31, @"sectionRows", @"GuestNetworkSwitch", @"identifier", 0);
  objc_msgSend_addSectionInfo_(v29, v33, v32, v34);

  objc_msgSend_setupInitialTableHeaderConfiguration(self, v35, v36, v37);
}

- (void)updateTable
{
  if (objc_msgSend_guestNetworkEnabled(self, a2, v2, v3))
  {
    objc_msgSend_addGuestNetworkIsEnabledSection(self, v5, v6, v7);
    if (objc_msgSend_guestNetSecMode(self, v8, v9, v10) != 1)
    {

      MEMORY[0x2821F9670](self, sel_addGuestNetworkPasswordSection, v12, v13);
      return;
    }
  }

  else
  {
    v14 = objc_msgSend_tableManager(self, v5, v6, v7);
    objc_msgSend_deleteSectionWithIdentifier_(v14, v15, @"GuestNetworkWiFiName", v16);
    v20 = objc_msgSend_tableManager(self, v17, v18, v19);
    objc_msgSend_deleteSectionWithIdentifier_(v20, v21, @"GuestNetworkWPASwitch", v22);
  }

  v23 = objc_msgSend_tableManager(self, v11, v12, v13);

  objc_msgSend_deleteSectionWithIdentifier_(v23, v24, @"GuestNetworkPassword", v25);
}

- (void)addGuestNetworkIsEnabledSection
{
  v5 = objc_msgSend_tableManager(self, a2, v2, v3);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v5, v6, @"GuestNetworkWiFiName", v7) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9, v10);
    v15 = objc_msgSend_tableManager(self, v12, v13, v14);
    v16 = sub_23EB6CD3C(@"CustomWiFiName", qword_27E383800);
    v17 = sub_23EB6CD3C(@"CustomWiFiNamePlaceholder", qword_27E383800);
    isSecure_keyboardType_withTag = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v15, v18, 0, v16, &stru_285145FE8, v17, 0, 0, 1196314221);
    v21 = sub_23EB5E230(1651722062, v20);
    if (v21)
    {
      objc_msgSend_setObject_forKey_(isSecure_keyboardType_withTag, v22, v21, @"nsFormatter");
    }

    objc_msgSend_addObject_(v11, v22, isSecure_keyboardType_withTag, v23);
    v27 = objc_msgSend_tableManager(self, v24, v25, v26);
    v30 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v28, v11, v29, @"sectionRows", @"GuestNetworkWiFiName", @"identifier", 0);
    objc_msgSend_addSectionInfo_(v27, v31, v30, v32);
  }

  v33 = objc_msgSend_tableManager(self, v8, v9, v10);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v33, v34, @"GuestNetworkWPASwitch", v35) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v39 = objc_msgSend_array(MEMORY[0x277CBEB18], v36, v37, v38);
    v43 = objc_msgSend_tableManager(self, v40, v41, v42);
    v44 = sub_23EB6CD3C(@"StepByStepChoice_Create_Guest.GuestNetWPASwitchLabel", qword_27E383800);
    v48 = objc_msgSend_guestNetSecMode(self, v45, v46, v47) != 1;
    v50 = objc_msgSend_createRowStyleBasicOnOffWithImage_labelText_isOn_withTag_(v43, v49, 0, v44, v48, 1196314707);
    objc_msgSend_addObject_(v39, v51, v50, v52);
    v56 = objc_msgSend_tableManager(self, v53, v54, v55);
    v60 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v57, v39, v58, @"sectionRows", @"GuestNetworkWPASwitch", @"identifier", 0);

    objc_msgSend_addSectionInfo_(v56, v59, v60, v61);
  }
}

- (void)addGuestNetworkPasswordSection
{
  v5 = objc_msgSend_tableManager(self, a2, v2, v3);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v5, v6, @"GuestNetworkPassword", v7) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9, v10);
    v15 = objc_msgSend_tableManager(self, v12, v13, v14);
    v16 = sub_23EB6CD3C(@"PasswordLabel", qword_27E383800);
    v20 = objc_msgSend_wifiPassword(self, v17, v18, v19);
    v21 = sub_23EB6CD3C(@"CreatePasswordPlaceholder", qword_27E383800);
    isSecure_keyboardType_withTag = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v15, v22, 0, v16, v20, v21, 1, 0, 1196314743);
    v28 = sub_23EB5E230(1651722064, v24);
    if (v28)
    {
      objc_msgSend_setObject_forKey_(isSecure_keyboardType_withTag, v25, v28, @"nsFormatter");
    }

    v29 = objc_msgSend_tableManager(self, v25, v26, v27);
    objc_msgSend_setNewRow_verifierAccessoryType_(v29, v30, isSecure_keyboardType_withTag, 0);
    objc_msgSend_addObject_(v11, v31, isSecure_keyboardType_withTag, v32);
    v36 = objc_msgSend_tableManager(self, v33, v34, v35);
    v37 = sub_23EB6CD3C(@"VerifyLabel", qword_27E383800);
    v41 = objc_msgSend_wifiPassword(self, v38, v39, v40);
    v42 = sub_23EB6CD3C(@"VerifyPlaceholder", qword_27E383800);
    v44 = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v36, v43, 0, v37, v41, v42, 1, 0, 1196314710);
    v48 = v44;
    if (v28)
    {
      objc_msgSend_setObject_forKey_(v44, v45, v28, @"nsFormatter");
    }

    v49 = objc_msgSend_tableManager(self, v45, v46, v47);
    objc_msgSend_setNewRow_verifierAccessoryType_(v49, v50, v48, 0);
    objc_msgSend_addObject_(v11, v51, v48, v52);
    v56 = objc_msgSend_tableManager(self, v53, v54, v55);
    v57 = MEMORY[0x277CBEB38];
    v58 = sub_23EB6CD3C(@"WiFiPasswordRequirement", qword_27E383800);
    v62 = objc_msgSend_dictionaryWithObjectsAndKeys_(v57, v59, v11, v60, @"sectionRows", v58, @"footer", @"GuestNetworkPassword", @"identifier", 0);

    objc_msgSend_addSectionInfo_(v56, v61, v62, v63);
  }
}

- (void)validateAndUpdateNextButton
{
  outResultsDict = self->super.super._outResultsDict;
  v6 = MEMORY[0x277CCABB0];
  v7 = objc_msgSend_guestNetworkEnabled(self, a2, v2, v3);
  v10 = objc_msgSend_numberWithBool_(v6, v8, v7, v9);
  objc_msgSend_setValue_forKey_(outResultsDict, v11, v10, @"kSBSKey_GuestNetwork_On");
  if (!objc_msgSend_guestNetworkEnabled(self, v12, v13, v14))
  {
LABEL_5:
    v37 = 1;
    goto LABEL_7;
  }

  if (objc_msgSend_validateAndSetValues(self, v15, v16, v17))
  {
    v18 = self->super.super._outResultsDict;
    v19 = objc_msgSend_wifiName(self, v15, v16, v17);
    objc_msgSend_setValue_forKey_(v18, v20, v19, @"kSBSKey_GuestNetwork_Name");
    v21 = self->super.super._outResultsDict;
    v22 = MEMORY[0x277CCABB0];
    v26 = objc_msgSend_guestNetSecMode(self, v23, v24, v25);
    v29 = objc_msgSend_numberWithInteger_(v22, v27, v26, v28);
    objc_msgSend_setValue_forKey_(v21, v30, v29, @"kSBSKey_GuestNetwork_Security");
    if (objc_msgSend_guestNetSecMode(self, v31, v32, v33) != 1)
    {
      v34 = self->super.super._outResultsDict;
      v35 = objc_msgSend_wifiPassword(self, v15, v16, v17);
      objc_msgSend_setValue_forKey_(v34, v36, v35, @"kSBSKey_GuestNetwork_Password");
    }

    goto LABEL_5;
  }

  v37 = 0;
LABEL_7:
  v38 = objc_msgSend_navigationItem(self, v15, v16, v17);
  v42 = objc_msgSend_rightBarButtonItem(v38, v39, v40, v41);

  objc_msgSend_setEnabled_(v42, v43, v37, v44);
}

@end