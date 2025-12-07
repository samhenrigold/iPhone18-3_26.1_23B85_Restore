@interface StepByStepUIViewController_Join_Config
- (BOOL)shouldChangeTextField:(id)field atIndexPath:(id)path forTextIndex:(unint64_t)index toString:(id)string;
- (BOOL)shouldEnableNextButton;
- (StepByStepUIViewController_Join_Config)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)prepareParams;
- (void)primaryActionSelected:(BOOL)selected;
- (void)selectedDeviceUpdated;
- (void)setupDevices;
- (void)setupEditableBaseStationName;
- (void)setupHeaderAndFooter;
- (void)setupTable;
- (void)syncTopoUIForTarget:(id)target andSource:(id)source andNetwork:(id)network connectionType:(id)type;
- (void)validateAndUpdateNextButton;
@end

@implementation StepByStepUIViewController_Join_Config

- (StepByStepUIViewController_Join_Config)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = StepByStepUIViewController_Join_Config;
  v4 = [(StepByStepUIViewController_DevicePicker *)&v9 initWithNibName:name bundle:bundle];
  v7 = v4;
  if (v4)
  {
    v4->super._showSingleBaseTopo = 1;
    objc_msgSend_setDelegate_(v4, v5, v4, v6);
  }

  return v7;
}

- (void)loadView
{
  v13.receiver = self;
  v13.super_class = StepByStepUIViewController_Join_Config;
  [(StepByStepUIViewController_DevicePicker *)&v13 loadView];
  v6 = objc_msgSend_inParamDict(self, v3, v4, v5);
  v9 = objc_msgSend_objectForKey_(v6, v7, @"kSBSKey_Mode", v8);
  if (objc_msgSend_integerValue(v9, v10, v11, v12) == 2)
  {
    self->super.showFullList = 0;
  }
}

- (BOOL)shouldChangeTextField:(id)field atIndexPath:(id)path forTextIndex:(unint64_t)index toString:(id)string
{
  v17 = 0;
  v9 = objc_msgSend_tableManager(self, a2, field, path, index);
  objc_msgSend_tagOfCellAtIndexPath_tag_(v9, v10, path, &v17);
  if (v17 == 1937329773)
  {
    v14 = objc_msgSend_outResultsDict(self, v11, v12, v13);
    objc_msgSend_setValue_forKey_(v14, v15, string, @"kSBSKey_BaseName");
  }

  return 1;
}

- (void)setupEditableBaseStationName
{
  v3 = sub_23EB5E230(1937329773, a2);
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5, v6);
  v11 = objc_msgSend_personalizedBaseName(self, v8, v9, v10);
  if (!objc_msgSend_length(v11, v12, v13, v14))
  {
    v18 = sub_23EB6D75C(self->productID, self->deviceKind);
    objc_msgSend_setPersonalizedBaseName_(self, v19, v18, v20);
  }

  v21 = objc_msgSend_personalizedBaseName(self, v15, v16, v17);
  if (!objc_msgSend_length(v21, v22, v23, v24))
  {
    v28 = sub_23EB6D7A8(self->productID, self->deviceKind);
    objc_msgSend_setPersonalizedBaseName_(self, v29, v28, v30);
  }

  v31 = objc_msgSend_outResultsDict(self, v25, v26, v27);
  v35 = objc_msgSend_personalizedBaseName(self, v32, v33, v34);
  objc_msgSend_setValue_forKey_(v31, v36, v35, @"kSBSKey_BaseName");
  v39 = objc_msgSend_scanInfoSupportsSpruce_(WiFiUtils, v37, self->super.super.super._inParamDict, v38);
  self->supportsSpruce = v39;
  if ((v39 & 1) == 0)
  {
    deviceKind = self->deviceKind;
    if ((deviceKind - 2) >= 2)
    {
      if (deviceKind == 4)
      {
        v44 = @"CustomBaseName.MFiAccessory";
      }

      else
      {
        v44 = @"CustomBaseName";
      }
    }

    else
    {
      v3 = sub_23EB5E230(1635077710, v40);
      v44 = @"CustomBaseName.Airplay";
    }

    v45 = objc_msgSend_tableManager(self, v40, v41, v42);
    v46 = sub_23EB6CD3C(v44, qword_27E383800);
    v50 = objc_msgSend_personalizedBaseName(self, v47, v48, v49);
    v51 = sub_23EB6CD3C(@"CustomBaseNamePlaceholder", qword_27E383800);
    isSecure_keyboardType_withTag = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v45, v52, 0, v46, v50, v51, 0, 0, 1937329773);
    v56 = isSecure_keyboardType_withTag;
    if (v3)
    {
      objc_msgSend_setObject_forKey_(isSecure_keyboardType_withTag, v54, v3, @"nsFormatter");
    }

    objc_msgSend_addObject_(v7, v54, v56, v55);
    v60 = objc_msgSend_tableManager(self, v57, v58, v59);
    v64 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v61, v7, v62, @"sectionRows", @"WiFiName", @"identifier", 0);

    objc_msgSend_addSectionInfo_(v60, v63, v64, v65);
  }
}

- (void)setupHeaderAndFooter
{
  v5 = MEMORY[0x277CBEB18];
  v6 = objc_msgSend_justTextContainerView(self, a2, v2, v3);
  v12 = objc_msgSend_arrayWithObject_(v5, v7, v6, v8);
  if ((self->deviceKind - 2) >= 3)
  {
    v13 = objc_msgSend_topoView(self, v9, v10, v11);
    objc_msgSend_addObject_(v12, v14, v13, v15);
  }

  v16 = objc_msgSend_parentController(self, v9, v10, v11);
  v20 = objc_msgSend_tableHeaderContainerView(self, v17, v18, v19);
  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(v16, v21, v20, v12, 1);
  v25 = objc_msgSend_tableHeaderContainerView(self, v22, v23, v24);
  v29 = objc_msgSend_tableView(self, v26, v27, v28);
  objc_msgSend_setTableHeaderView_(v29, v30, v25, v31);
  justTextLabel = self->super.super.justTextLabel;
  v36 = objc_msgSend_justTextContainerView(self, v33, v34, v35);
  ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v37, @"PrimarySetupRecommendation_Join%@", v38);
  sub_23EB5E054(justTextLabel, v36, ProductLocalizedStringWithFormat, v40);
  v44 = objc_msgSend_tableHeaderContainerView(self, v41, v42, v43);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v45, v44, v46);
  v50 = objc_msgSend_tableHeaderContainerView(self, v47, v48, v49);
  v54 = objc_msgSend_tableView(self, v51, v52, v53);
  objc_msgSend_setTableHeaderView_(v54, v55, v50, v56);

  objc_msgSend_setupTable(self, v57, v58, v59);
}

- (void)primaryActionSelected:(BOOL)selected
{
  objc_msgSend_setupTable(self, a2, selected, v3);

  objc_msgSend_validateAndUpdateNextButton(self, v5, v6, v7);
}

- (void)prepareParams
{
  v5 = objc_msgSend_inParamDict(self, a2, v2, v3);
  v8 = objc_msgSend_objectForKey_(v5, v6, @"kSBSKey_NetworkPassword", v7);
  if (v8)
  {
    objc_msgSend_setValue_forKey_(self->super.super.super._outResultsDict, v9, v8, @"kSBSKey_NetworkPassword");
  }

  v12 = objc_msgSend_inParamDict(self, v9, v10, v11);
  v15 = objc_msgSend_objectForKey_(v12, v13, @"kSBSKey_Mode", v14);
  if (objc_msgSend_integerValue(v15, v16, v17, v18) == 2)
  {
    objc_msgSend_setLeftNavigationButton_enable_hide_(self, v19, @"kCancel", 1, 0);
  }

  v22 = objc_msgSend_inParamDict(self, v19, v20, v21);
  v25 = objc_msgSend_objectForKey_(v22, v23, @"kSBSKey_TargetBase", v24);
  if (v25)
  {
    v29 = v25;
    self->productID = sub_23EB6A2C0(v25);
    self->deviceKind = sub_23EB6A294(v29);
  }

  else
  {
    v30 = objc_msgSend_inParamDict(self, v26, v27, v28);
    v33 = objc_msgSend_objectForKey_(v30, v31, @"kSBSKey_TargetNetwork", v32);
    self->productID = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, v34, v33, v35);
    v36 = sub_23EB6A1FC(v33);
    self->deviceKind = v36;
    if ((v36 - 3) <= 1)
    {
      v40 = objc_msgSend_scanInfoFriendlyName_(WiFiUtils, v37, v33, v38);

      objc_msgSend_setPersonalizedBaseName_(self, v39, v40, v41);
    }
  }
}

- (void)setupDevices
{
  v5 = MEMORY[0x277CBEB18];
  v6 = objc_msgSend_inParamDict(self, a2, v2, v3);
  v9 = objc_msgSend_objectForKey_(v6, v7, @"kSBSKey_NetworkScanRecordList", v8);
  v12 = objc_msgSend_arrayWithArray_(v5, v10, v9, v11);
  if (v12)
  {
    v15 = objc_msgSend_sortedArrayUsingSelector_(v12, v13, sel_ssidLocalizedCaseInsensitiveCompare_, v14);
    objc_msgSend_setSortedDevices_(self, v16, v15, v17);
    self->super._selectedDevice = self->super._sourceNetwork;
    v19 = off_27E3830E8[0];

    MEMORY[0x2821F9670](self, sel_setConnectionMedium_, v19, v18);
  }
}

- (void)selectedDeviceUpdated
{
  v4 = objc_msgSend_nameForNetworkOrDevice_(StepByStepUtilities, a2, self->super._selectedDevice, v2);
  ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v5, @"PrimarySetupRecommendation_Join.Specific%@", v6);
  justTextLabel = self->super.super.justTextLabel;
  v12 = objc_msgSend_justTextContainerView(self, v9, v10, v11);
  valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v13, ProductLocalizedStringWithFormat, @"%@", 0, v4);
  sub_23EB5E054(justTextLabel, v12, valid, v15);
  v19 = objc_msgSend_tableHeaderContainerView(self, v16, v17, v18);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v20, v19, v21);
  v25 = objc_msgSend_tableHeaderContainerView(self, v22, v23, v24);
  v29 = objc_msgSend_tableView(self, v26, v27, v28);
  objc_msgSend_setTableHeaderView_(v29, v30, v25, v31);
  shouldEnableNextButton = objc_msgSend_shouldEnableNextButton(self, v32, v33, v34);

  objc_msgSend_setRightNavigationButton_enable_hide_(self, v35, @"kNext", shouldEnableNextButton, 0);
}

- (BOOL)shouldEnableNextButton
{
  actionController = self->super.actionController;
  if (actionController && !objc_msgSend_isPrimaryRecommendation(actionController, a2, v2, v3))
  {
    goto LABEL_5;
  }

  v6 = objc_msgSend_nameForNetworkOrDevice_(StepByStepUtilities, a2, self->super._selectedDevice, v3);
  v10 = objc_msgSend_length(v6, v7, v8, v9);
  if (v10)
  {
    if (self->supportsSpruce)
    {
LABEL_5:
      LOBYTE(v10) = 1;
      return v10;
    }

    v14 = objc_msgSend_outResultsDict(self, v11, v12, v13);
    v17 = objc_msgSend_valueForKey_(v14, v15, @"kSBSKey_BaseName", v16);
    v21 = objc_msgSend_UTF8String(v17, v18, v19, v20);
    LODWORD(v10) = sub_23EB6BC14(v21);
    if (!v10)
    {
      return v10;
    }

    deviceKind = self->deviceKind;
    if ((deviceKind - 2) > 2)
    {
      v50 = objc_msgSend_tableManager(self, v22, v23, v24);
      ValueForFirstItemOfType_inCellWithTag = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v50, v51, @"editTextView", 1113673825);
      v55 = objc_msgSend_tableManager(self, v52, v53, v54);
      v57 = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v55, v56, @"editTextView", 1113673814);
      v61 = objc_msgSend_tableManager(self, v58, v59, v60);
      LODWORD(v10) = objc_msgSend_verifyStr1_forTag1_matchesStr2_forTag2_(v61, v62, ValueForFirstItemOfType_inCellWithTag, 1113673825, v57, 1113673814);
      if (v10)
      {
        v66 = objc_msgSend_UTF8String(ValueForFirstItemOfType_inCellWithTag, v63, v64, v65);
        LODWORD(v10) = sub_23EB6BC58(v66);
        if (v10)
        {
          p_outResultsDict = &self->super.super.super._outResultsDict;
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (deviceKind == 4)
      {
        goto LABEL_5;
      }

      v26 = objc_msgSend_tableManager(self, v22, v23, v24);
      ValueForFirstItemOfType_inCellWithTag = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v26, v27, @"editTextView", 1097420897);
      v32 = objc_msgSend_tableManager(self, v29, v30, v31);
      v34 = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v32, v33, @"editTextView", 1097420886);
      v38 = objc_msgSend_tableManager(self, v35, v36, v37);
      LODWORD(v10) = objc_msgSend_verifyStr1_forTag1_matchesStr2_forTag2_(v38, v39, ValueForFirstItemOfType_inCellWithTag, 1097420897, v34, 1097420886);
      if (!v10)
      {
        return v10;
      }

      if (!objc_msgSend_length(ValueForFirstItemOfType_inCellWithTag, v40, v41, v42) && !objc_msgSend_length(v34, v43, v44, v45))
      {
        goto LABEL_5;
      }

      v46 = objc_msgSend_UTF8String(ValueForFirstItemOfType_inCellWithTag, v43, v44, v45);
      LODWORD(v10) = sub_23EB6BC9C(v46);
      if (v10)
      {
        LODWORD(v10) = sub_23EB6BC58(v46);
        if (v10)
        {
          p_outResultsDict = &self->super.super.super._outResultsDict;
          objc_msgSend_setValue_forKey_(*p_outResultsDict, v47, ValueForFirstItemOfType_inCellWithTag, @"kSBSKey_AirPlayPassword");
LABEL_19:
          objc_msgSend_setValue_forKey_(*p_outResultsDict, v49, ValueForFirstItemOfType_inCellWithTag, @"kSBSKey_BasePassword");
          goto LABEL_5;
        }
      }
    }
  }

  return v10;
}

- (void)validateAndUpdateNextButton
{
  shouldEnableNextButton = objc_msgSend_shouldEnableNextButton(self, a2, v2, v3);

  objc_msgSend_setRightNavigationButton_enable_hide_(self, v5, @"kNext", shouldEnableNextButton, 0);
}

- (void)setupTable
{
  actionController = self->super.actionController;
  if (actionController && !objc_msgSend_isPrimaryRecommendation(actionController, a2, v2, v3))
  {
    v116 = objc_msgSend_tableManager(self, a2, v2, v3);
    objc_msgSend_deleteSectionWithIdentifier_(v116, v117, @"kBasePasswordIdentifier", v118);
    v122 = objc_msgSend_tableManager(self, v119, v120, v121);
    objc_msgSend_deleteSectionWithIdentifier_(v122, v123, @"WiFiName", v124);
    v128 = objc_msgSend_tableManager(self, v125, v126, v127);

    objc_msgSend_deleteSectionWithIdentifier_(v128, v129, @"kirPlayPasswordIdentifier", v130);
  }

  else
  {
    v6 = objc_msgSend_tableManager(self, a2, v2, v3);
    if (objc_msgSend_indexOfSectionWithIdentifier_(v6, v7, @"WiFiName", v8) == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_setupEditableBaseStationName(self, v9, v10, v11);
    }

    if ((self->deviceKind - 2) >= 3)
    {
      v12 = objc_msgSend_tableManager(self, v9, v10, v11);
      if (objc_msgSend_indexOfSectionWithIdentifier_(v12, v13, @"kBasePasswordIdentifier", v14) == 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = objc_msgSend_objectForKey_(self->super.super.super._outResultsDict, v9, @"kSBSKey_BasePassword", v11);
        v19 = objc_msgSend_array(MEMORY[0x277CBEB18], v16, v17, v18);
        v23 = objc_msgSend_tableManager(self, v20, v21, v22);
        v24 = sub_23EB6CD3C(@"PasswordLabel", qword_27E383800);
        v25 = sub_23EB6CD3C(@"CreatePasswordPlaceholder", qword_27E383800);
        isSecure_keyboardType_withTag = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v23, v26, 0, v24, v15, v25, 1, 1, 1113673825);
        v32 = sub_23EB5E230(1651721296, v28);
        if (v32)
        {
          objc_msgSend_setObject_forKey_(isSecure_keyboardType_withTag, v29, v32, @"nsFormatter");
        }

        v33 = objc_msgSend_tableManager(self, v29, v30, v31);
        objc_msgSend_setNewRow_verifierAccessoryType_(v33, v34, isSecure_keyboardType_withTag, 0);
        objc_msgSend_addObject_(v19, v35, isSecure_keyboardType_withTag, v36);
        v40 = objc_msgSend_tableManager(self, v37, v38, v39);
        v41 = sub_23EB6CD3C(@"VerifyLabel", qword_27E383800);
        v42 = sub_23EB6CD3C(@"VerifyPlaceholder", qword_27E383800);
        v44 = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v40, v43, 0, v41, v15, v42, 1, 1, 1113673814);
        v48 = v44;
        if (v32)
        {
          objc_msgSend_setObject_forKey_(v44, v45, v32, @"nsFormatter");
        }

        v49 = objc_msgSend_tableManager(self, v45, v46, v47);
        objc_msgSend_setNewRow_verifierAccessoryType_(v49, v50, v48, 0);
        objc_msgSend_addObject_(v19, v51, v48, v52);
        v53 = sub_23EB6CD3C(@"AdminPasswordSectionTitle", qword_27E383800);
        v57 = objc_msgSend_tableManager(self, v54, v55, v56);
        v60 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v58, v19, v59, @"sectionRows", v53, @"header", @"kBasePasswordIdentifier", @"identifier", 0);
        objc_msgSend_addSectionInfo_(v57, v61, v60, v62);
      }
    }

    if ((self->deviceKind & 0xFFFFFFFE) == 2)
    {
      v63 = objc_msgSend_tableManager(self, v9, v10, v11);
      if (objc_msgSend_indexOfSectionWithIdentifier_(v63, v64, @"kirPlayPasswordIdentifier", v65) == 0x7FFFFFFFFFFFFFFFLL)
      {
        v68 = objc_msgSend_objectForKey_(self->super.super.super._outResultsDict, v66, @"kSBSKey_AirPlayPassword", v67);
        v72 = objc_msgSend_array(MEMORY[0x277CBEB18], v69, v70, v71);
        v76 = objc_msgSend_tableManager(self, v73, v74, v75);
        v77 = sub_23EB6CD3C(@"PasswordLabel", qword_27E383800);
        v78 = sub_23EB6CD3C(@"AirPlayPasswordPlaceholder", qword_27E383800);
        v80 = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v76, v79, 0, v77, v68, v78, 1, 1, 1097420897);
        v85 = sub_23EB5E230(1651720528, v81);
        if (v85)
        {
          objc_msgSend_setObject_forKey_(v80, v82, v85, @"nsFormatter");
        }

        v86 = objc_msgSend_tableManager(self, v82, v83, v84);
        objc_msgSend_setNewRow_verifierAccessoryType_(v86, v87, v80, 0);
        objc_msgSend_addObject_(v72, v88, v80, v89);
        v93 = objc_msgSend_tableManager(self, v90, v91, v92);
        v94 = sub_23EB6CD3C(@"VerifyLabel", qword_27E383800);
        v95 = sub_23EB6CD3C(@"AirPlayVerifyPlaceholder", qword_27E383800);
        v97 = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v93, v96, 0, v94, v68, v95, 1, 1, 1097420886);
        v101 = v97;
        if (v85)
        {
          objc_msgSend_setObject_forKey_(v97, v98, v85, @"nsFormatter");
        }

        v102 = objc_msgSend_tableManager(self, v98, v99, v100);
        objc_msgSend_setNewRow_verifierAccessoryType_(v102, v103, v101, 0);
        objc_msgSend_addObject_(v72, v104, v101, v105);
        v106 = sub_23EB6CD3C(@"AirPlayPasswordSectionTitle", qword_27E383800);
        v110 = objc_msgSend_tableManager(self, v107, v108, v109);
        v114 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v111, v72, v112, @"sectionRows", v106, @"header", @"kirPlayPasswordIdentifier", @"identifier", 0);

        objc_msgSend_addSectionInfo_(v110, v113, v114, v115);
      }
    }
  }
}

- (void)syncTopoUIForTarget:(id)target andSource:(id)source andNetwork:(id)network connectionType:(id)type
{
  if (source)
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, a2, source, source, network);
    v13 = objc_msgSend_numberWithInteger_(v9, v11, v10, v12);
    if (v13)
    {
      v16 = v13;
      v17 = MEMORY[0x277CCABB0];
      v18 = sub_23EB6A1FC(target);
      v21 = objc_msgSend_numberWithInteger_(v17, v19, v18, v20);
      LODWORD(v17) = objc_msgSend_integerValue(v16, v22, v23, v24);
      v91 = v21;
      v28 = objc_msgSend_integerValue(v21, v25, v26, v27);
      v29 = sub_23EB6D7A8(v17, v28);
    }

    else
    {
      v30 = objc_msgSend_objectForKey_(source, v14, @"txt", v15);
      v16 = objc_msgSend_objectForKey_(v30, v31, @"syAP", v32);
      v33 = MEMORY[0x277CCABB0];
      v34 = sub_23EB6A294(source);
      v91 = objc_msgSend_numberWithInteger_(v33, v35, v34, v36);
      v29 = objc_msgSend_objectForKey_(source, v37, @"name", v38);
    }

    v90 = v29;
  }

  else
  {
    v16 = 0;
    v90 = 0;
    v91 = 0;
  }

  v39 = sub_23EB6D7A8(self->productID, self->deviceKind);
  v43 = objc_msgSend_parentController(self, v40, v41, v42);
  v47 = objc_msgSend__assistantUIController(v43, v44, v45, v46);
  v51 = objc_msgSend_topoView(self, v48, v49, v50);
  v55 = objc_msgSend_layer(v51, v52, v53, v54);
  v59 = objc_msgSend_topoLayout(self, v56, v57, v58);
  v63 = objc_msgSend_topoView(self, v60, v61, v62);
  v66 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v64, self->productID, v65);
  v69 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v67, self->deviceKind, v68);
  v71 = objc_msgSend_modifyTopoUIInLayer_withLayout_andOwningView_targetProductID_targetDeviceKind_targetName_targetWiFiName_sourceProductID_sourceDeviceKind_sourceName_sourceWiFiName_connectionType_(v47, v70, v55, v59, v63, v66, v69, v39, &stru_285145FE8, v16, v91, v90, &stru_285145FE8, type);
  objc_msgSend_setTopoLayout_(self, v72, v71, v73);
  v74 = MEMORY[0x277CCACA8];
  v75 = sub_23EB6CEE0(self->productID, self->deviceKind, 0);
  v76 = sub_23EB6CD3C(@"Password", qword_27E383800);
  v79 = objc_msgSend_stringWithFormat_(v74, v77, @"%@ %@", v78, v75, v76);
  v83 = objc_msgSend_tableManager(self, v80, v81, v82);
  objc_msgSend_updateHeader_forSectionWithIdentifier_(v83, v84, v79, @"kBasePasswordIdentifier");
  v85 = sub_23EB6CD3C(@"BasePasswordExplanation", qword_27E383800);
  v89 = objc_msgSend_tableManager(self, v86, v87, v88);

  MEMORY[0x2821F9670](v89, sel_updateFooter_forSectionWithIdentifier_, v85, @"kBasePasswordIdentifier");
}

@end