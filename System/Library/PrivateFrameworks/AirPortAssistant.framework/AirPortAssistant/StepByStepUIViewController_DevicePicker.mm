@interface StepByStepUIViewController_DevicePicker
- (StepByStepUIViewController_DevicePicker)initWithNibName:(id)name bundle:(id)bundle;
- (id)pickerContent;
- (void)loadView;
- (void)setupPickerTable;
- (void)touchInCellAtIndexPath:(id)path;
- (void)updateSelections;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation StepByStepUIViewController_DevicePicker

- (StepByStepUIViewController_DevicePicker)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = StepByStepUIViewController_DevicePicker;
  result = [(AssistantSubUIViewController *)&v5 initWithNibName:name bundle:bundle];
  if (result)
  {
    result->showFullList = 1;
  }

  return result;
}

- (void)loadView
{
  v51.receiver = self;
  v51.super_class = StepByStepUIViewController_DevicePicker;
  [(StepByStepUIViewController *)&v51 loadView];
  objc_msgSend_setDelegate_(self, v3, self, v4);
  v8 = objc_msgSend_inParamDict(self, v5, v6, v7);
  self->_sourceBase = objc_msgSend_objectForKey_(v8, v9, @"kSBSKey_SourceBase", v10);
  v14 = objc_msgSend_inParamDict(self, v11, v12, v13);
  self->_sourceNetwork = objc_msgSend_objectForKey_(v14, v15, @"kSBSKey_SourceNetwork", v16);
  v20 = objc_msgSend_inParamDict(self, v17, v18, v19);
  self->_targetBase = objc_msgSend_objectForKey_(v20, v21, @"kSBSKey_TargetBase", v22);
  objc_msgSend_setupDevices(self, v23, v24, v25);
  if (!self->_selectedDevice)
  {
    v29 = objc_msgSend_sortedDevices(self, v26, v27, v28);
    if (objc_msgSend_count(v29, v30, v31, v32))
    {
      v36 = objc_msgSend_sortedDevices(self, v33, v34, v35);
      v39 = objc_msgSend_objectAtIndex_(v36, v37, 0, v38);
      self->_selectedDevice = v39;
      if (!v39)
      {
        return;
      }
    }

    else if (!self->_selectedDevice)
    {
      return;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_prepareParams(self, v40, v41, v42);
  }

  v43 = objc_msgSend_inParamDict(self, v40, v41, v42);
  v46 = objc_msgSend_objectForKey_(v43, v44, @"kSBSKey_Mode", v45);
  if (objc_msgSend_integerValue(v46, v47, v48, v49) == 2)
  {
    objc_msgSend_setLeftNavigationButton_enable_hide_(self, v50, @"kCancel", 1, 0);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6 = objc_msgSend_inParamDict(self, a2, appear, v3);
  v9 = objc_msgSend_objectForKey_(v6, v7, @"kSBSKey_Mode", v8);
  if (objc_msgSend_integerValue(v9, v10, v11, v12) == 2)
  {
    objc_msgSend_setLeftNavigationButton_enable_hide_(self, v13, @"kCancel", 1, 0);
    if (objc_msgSend_showMoreOptions(self, v15, v16, v17))
    {
      if (!objc_msgSend_actionController(self, v13, v18, v14))
      {
        v20 = objc_msgSend_tableManager(self, v13, v19, v14);
        v24 = objc_msgSend_parentController(self, v21, v22, v23);
        v26 = objc_msgSend_recommendationActionControllerWithTableManager_andAssistantUIViewController_(RecommendationActionController, v25, v20, v24);
        objc_msgSend_setActionController_(self, v27, v26, v28);
      }
    }
  }

  if (objc_msgSend_conformsToProtocol_(self, v13, &unk_285171958, v14))
  {
    objc_msgSend_setupPickerTable(self, v29, v30, v31);
    objc_msgSend_setupHeaderAndFooter(self, v32, v33, v34);
    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_updateNavigationButtons(self, v29, v30, v31);
    }
  }

  objc_msgSend_updateSelections(self, v29, v30, v31);
  v35.receiver = self;
  v35.super_class = StepByStepUIViewController_DevicePicker;
  [(StepByStepUIViewController *)&v35 viewWillAppear:appearCopy];
}

- (void)touchInCellAtIndexPath:(id)path
{
  v6 = objc_msgSend_section(path, a2, path, v3);
  v10 = objc_msgSend_tableManager(self, v7, v8, v9);
  if (v6 == objc_msgSend_indexOfSectionWithIdentifier_(v10, v11, qword_27E383200, v12))
  {
    if (objc_opt_respondsToSelector())
    {
      v69 = 0;
      v19 = objc_msgSend_tableManager(self, v16, v17, v18);
      if (objc_msgSend_tagOfCellAtIndexPath_tag_(v19, v20, path, &v69))
      {
        if (v69 != 1400203111)
        {
          if (v69 == 1333028978)
          {
            self->showFullList = 1;
            v24 = objc_msgSend_tableManager(self, v21, v22, v23);
            objc_msgSend_deleteSectionWithIdentifier_animated_(v24, v25, qword_27E383200, 1);
            objc_msgSend_setupPickerTable(self, v26, v27, v28);
          }

          else
          {
            v44 = objc_msgSend_row(path, v21, v22, v23);
            if (objc_msgSend_sortedDevices(self, v45, v46, v47))
            {
              v51 = objc_msgSend_sortedDevices(self, v48, v49, v50);
              if (v44 < objc_msgSend_count(v51, v52, v53, v54))
              {
                v58 = objc_msgSend_sortedDevices(self, v55, v56, v57);
                v62 = objc_msgSend_row(path, v59, v60, v61);
                v65 = objc_msgSend_objectAtIndex_(v58, v63, v62, v64);
                self->_selectedDevice = v65;
                if (v65)
                {
                  objc_msgSend_updateSelections(self, v66, v67, v68);
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v29 = objc_msgSend_tableManager(self, v13, v14, v15);
    if (v6 == objc_msgSend_indexOfSectionWithIdentifier_(v29, v30, @"ActionTableSection", v31))
    {
      actionController = self->actionController;
      if (actionController)
      {
        isPrimaryRecommendation = objc_msgSend_isPrimaryRecommendation(actionController, v32, v33, v34);
        if (isPrimaryRecommendation)
        {
          objc_msgSend_setupPickerTable(self, v36, v37, v38);
        }

        else
        {
          v40 = objc_msgSend_tableManager(self, v36, v37, v38);
          objc_msgSend_deleteSectionWithIdentifier_(v40, v41, qword_27E383200, v42);
        }

        if (objc_opt_respondsToSelector())
        {

          MEMORY[0x2821F9670](self, sel_primaryActionSelected_, isPrimaryRecommendation, v43);
        }
      }
    }
  }
}

- (void)setupPickerTable
{
  if (self->actionController)
  {
    v5 = objc_msgSend_tableManager(self, a2, v2, v3);
    v9 = objc_msgSend_sectionIdentifier(self->actionController, v6, v7, v8);
    if (objc_msgSend_indexOfSectionWithIdentifier_(v5, v10, v9, v11) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = objc_msgSend_tableManager(self, v12, v13, v14);
      actionController = self->actionController;
      v20 = sub_23EC13460(self, v17, v18, v19) != 1;
      SectionInfoWithLongStrings = objc_msgSend_getSectionInfoWithLongStrings_(actionController, v21, v20, v22);
      objc_msgSend_addSectionInfo_(v15, v24, SectionInfoWithLongStrings, v25);
    }

    else
    {
      objc_msgSend_selectPrimaryRecommendation(self->actionController, v12, v13, v14);
    }
  }

  v26 = objc_msgSend_tableManager(self, a2, v2, v3);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v26, v27, qword_27E383200, v28) == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!self->actionController || (v32 = objc_msgSend_sortedDevices(self, v29, v30, v31), objc_msgSend_count(v32, v33, v34, v35) >= 2))
    {
      v36 = objc_msgSend_sortedDevices(self, v29, v30, v31);
      if (objc_msgSend_count(v36, v37, v38, v39))
      {
        v70 = objc_msgSend_deviceTableLabel(self, v40, v41, v42);
        v46 = objc_msgSend_sortedDevices(self, v43, v44, v45);
        v49 = objc_msgSend_indexOfObject_(v46, v47, self->_selectedDevice, v48);
        v69 = objc_msgSend_tableManager(self, v50, v51, v52);
        v53 = MEMORY[0x277CBEB38];
        v57 = objc_msgSend_pickerContent(self, v54, v55, v56);
        v58 = qword_27E383200;
        v61 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v59, 1, v60);
        v64 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v62, v49, v63);
        v68 = objc_msgSend_dictionaryWithObjectsAndKeys_(v53, v65, v57, v66, @"sectionRows", v58, @"identifier", v61, @"sectionIsMenu", v70, @"header", v64, @"selectedMenuItemTag", 0);

        objc_msgSend_insertSectionInfo_atIndex_withRowAnimation_(v69, v67, v68, 0, 100);
      }
    }
  }
}

- (void)updateSelections
{
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_selectedDeviceUpdated(self, v3, v4, v5);
  }

  v8 = objc_msgSend_objectForKey_(self->_selectedDevice, v3, @"BSSID", v5);
  selectedDevice = self->_selectedDevice;
  if (v8)
  {
    self->_sourceNetwork = selectedDevice;
    objc_msgSend_objectForKey_(selectedDevice, v6, @"SSID_STR", v7);
    if (self->_showSingleBaseTopo)
    {
      v12 = 0;
    }

    else
    {
      v12 = self->_selectedDevice;
    }

    self->_sourceBase = v12;
    v23 = self->_selectedDevice;
    if (v23)
    {
      objc_msgSend_setObject_forKey_(self->super.super._outResultsDict, v10, v23, @"kSBSKey_SourceNetwork");
    }

    v91 = 0;
    v92 = 0;
  }

  else
  {
    self->_sourceBase = selectedDevice;
    objc_msgSend_objectForKey_(selectedDevice, v6, @"raNm", v7);
    v14 = self->_selectedDevice;
    if (v14)
    {
      objc_msgSend_setObject_forKey_(self->super.super._outResultsDict, v13, v14, @"kSBSKey_SourceBase");
    }

    v15 = MEMORY[0x277CCABB0];
    v16 = sub_23EB6A2C0(self->_sourceBase);
    v92 = objc_msgSend_numberWithInteger_(v15, v17, v16, v18);
    v19 = MEMORY[0x277CCABB0];
    v20 = sub_23EB6A294(self->_sourceBase);
    v91 = objc_msgSend_numberWithInteger_(v19, v21, v20, v22);
  }

  v24 = MEMORY[0x277CCABB0];
  v25 = objc_msgSend_inParamDict(self, v10, v23, v11);
  ProductIDFromParamDict = objc_msgSend_getProductIDFromParamDict_(StepByStepUtilities, v26, v25, v27);
  v31 = objc_msgSend_numberWithInteger_(v24, v29, ProductIDFromParamDict, v30);
  v32 = MEMORY[0x277CCABB0];
  v36 = objc_msgSend_inParamDict(self, v33, v34, v35);
  DeviceKindFromParamDict = objc_msgSend_getDeviceKindFromParamDict_(StepByStepUtilities, v37, v36, v38);
  v42 = objc_msgSend_numberWithInteger_(v32, v40, DeviceKindFromParamDict, v41);
  v46 = objc_msgSend_parentController(self, v43, v44, v45);
  v50 = objc_msgSend__assistantUIController(v46, v47, v48, v49);
  v54 = objc_msgSend_topoView(self, v51, v52, v53);
  v58 = objc_msgSend_layer(v54, v55, v56, v57);
  v62 = objc_msgSend_topoLayout(self, v59, v60, v61);
  v66 = objc_msgSend_topoView(self, v63, v64, v65);
  v70 = objc_msgSend_inParamDict(self, v67, v68, v69);
  v73 = objc_msgSend_objectForKey_(v70, v71, @"kSBSKey_TargetNetwork", v72);
  v77 = objc_msgSend_integerValue(v31, v74, v75, v76);
  v79 = sub_23EB6D0E0(v73, v77, 0, v78);
  v82 = objc_msgSend_objectForKey_(self->_sourceBase, v80, @"name", v81);
  v86 = objc_msgSend_connectionMedium(self, v83, v84, v85);
  v89 = objc_msgSend_modifyTopoUIInLayer_withLayout_andOwningView_targetProductID_targetDeviceKind_targetName_targetWiFiName_sourceProductID_sourceDeviceKind_sourceName_sourceWiFiName_connectionType_(v50, v87, v58, v62, v66, v31, v42, v79, 0, v92, v91, v82, 0, v86);

  objc_msgSend_setTopoLayout_(self, v88, v89, v90);
}

- (id)pickerContent
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3);
  if (self->showFullList)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v9 = objc_msgSend_sortedDevices(self, v5, v6, v7, 0);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v47, v51, 16);
    if (v11)
    {
      v15 = v11;
      v16 = 0;
      v17 = *v48;
      do
      {
        v18 = 0;
        v19 = v16;
        do
        {
          if (*v48 != v17)
          {
            objc_enumerationMutation(v9);
          }

          v20 = *(*(&v47 + 1) + 8 * v18);
          v21 = objc_msgSend_tableManager(self, v12, v13, v14);
          v24 = objc_msgSend_nameForNetworkOrDevice_(StepByStepUtilities, v22, v20, v23);
          v16 = v19 + 1;
          RowStyleBasicWithImage_text1_text2_withTag = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v21, v25, 0, v24, 0, v19);
          objc_msgSend_addObject_(v8, v27, RowStyleBasicWithImage_text1_text2_withTag, v28);
          ++v18;
          ++v19;
        }

        while (v15 != v18);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v47, v51, 16);
      }

      while (v15);
    }
  }

  else
  {
    v29 = objc_msgSend_tableManager(self, v5, v6, v7);
    v32 = objc_msgSend_nameForNetworkOrDevice_(StepByStepUtilities, v30, self->_selectedDevice, v31);
    v34 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v29, v33, 0, v32, 0, 1400203111);
    objc_msgSend_addObject_(v8, v35, v34, v36);
    v40 = objc_msgSend_tableManager(self, v37, v38, v39);
    v41 = sub_23EB6CD3C(@"ShowOtherNetworksEllipsis", qword_27E383800);
    v43 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v40, v42, 0, v41, 0, 1333028978);
    objc_msgSend_addObject_(v8, v44, v43, v45);
  }

  return v8;
}

@end