@interface StepByStepUIViewController_ExtendWirelessNetworkChoice
- (BOOL)canBeExtendedWithDWDS;
- (void)addBrowsedRecords:(id)records toDestList:(id)list;
- (void)selectedDeviceUpdated;
- (void)setupDevices;
- (void)setupHeaderAndFooter;
- (void)stepByStepUpdateProgress:(id)progress forState:(int)state;
- (void)touchInCellAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation StepByStepUIViewController_ExtendWirelessNetworkChoice

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9 = objc_msgSend_objectForKey_(self->super.super.super._outResultsDict, a2, @"kSBSKey_SelectorChoice", v3);
  if (!v9)
  {
    v10 = objc_msgSend_inParamDict(self, v6, v7, v8);
    v9 = objc_msgSend_objectForKey_(v10, v11, @"kSBSKey_SelectorChoice", v12);
    if (!v9)
    {
      v9 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v13, 211, v14);
    }

    objc_msgSend_setObject_forKey_(self->super.super.super._outResultsDict, v13, v9, @"kSBSKey_SelectorChoice");
  }

  *(&self->super.showFullList + 3) = objc_msgSend_integerValue(v9, v6, v7, v8);
  sourceNetwork = self->super._sourceNetwork;
  if (sourceNetwork)
  {
    objc_msgSend_setObject_forKey_(self->super.super.super._outResultsDict, v15, sourceNetwork, @"kSBSKey_SourceNetwork");
  }

  sourceBase = self->super._sourceBase;
  if (sourceBase)
  {
    objc_msgSend_setObject_forKey_(self->super.super.super._outResultsDict, v15, sourceBase, @"kSBSKey_SourceBase");
  }

  v18.receiver = self;
  v18.super_class = StepByStepUIViewController_ExtendWirelessNetworkChoice;
  [(StepByStepUIViewController_DevicePicker *)&v18 viewWillAppear:appearCopy];
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
}

- (void)selectedDeviceUpdated
{
  canBeExtendedWithDWDS = objc_msgSend_canBeExtendedWithDWDS(self, a2, v2, v3);
  if (canBeExtendedWithDWDS)
  {
    v8 = @"StepByStepStatus_ExtendWireless%@";
  }

  else
  {
    v8 = @"PrimarySetupRecommendation_Join.Specific%@";
  }

  if (canBeExtendedWithDWDS)
  {
    v9 = 211;
  }

  else
  {
    v9 = 212;
  }

  ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v6, v8, v7);
  outResultsDict = self->super.super.super._outResultsDict;
  v14 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v12, v9, v13);
  objc_msgSend_setObject_forKey_(outResultsDict, v15, v14, @"kSBSKey_SelectorChoice");
  v18 = objc_msgSend_nameForNetworkOrDevice_(StepByStepUtilities, v16, self->super._selectedDevice, v17);
  justTextLabel = self->super.super.justTextLabel;
  justTextContainerView = self->super.super.justTextContainerView;
  valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v21, ProductLocalizedStringWithFormat, @"%@", 0, v18);
  sub_23EB5E054(justTextLabel, justTextContainerView, valid, v23);
  v27 = objc_msgSend_tableHeaderContainerView(self, v24, v25, v26);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v28, v27, v29);
  v33 = objc_msgSend_tableHeaderContainerView(self, v30, v31, v32);
  v37 = objc_msgSend_tableView(self, v34, v35, v36);

  objc_msgSend_setTableHeaderView_(v37, v38, v33, v39);
}

- (void)setupDevices
{
  v5 = MEMORY[0x277CBEB18];
  v6 = objc_msgSend_inParamDict(self, a2, v2, v3);
  v9 = objc_msgSend_objectForKey_(v6, v7, @"kSBSKey_NetworkScanRecordList", v8);
  v12 = objc_msgSend_arrayWithArray_(v5, v10, v9, v11);
  if (v12)
  {
    v16 = v12;
    v17 = objc_msgSend_inParamDict(self, v13, v14, v15);
    v20 = objc_msgSend_objectForKey_(v17, v18, @"kSBSKey_BrowseRecordList", v19);
    objc_msgSend_addBrowsedRecords_toDestList_(self, v21, v20, v16);
    v24 = objc_msgSend_sortedArrayUsingSelector_(v16, v22, sel_ssidAndBaseNameLocalizedCaseInsensitiveCompare_, v23);
    objc_msgSend_setSortedDevices_(self, v25, v24, v26);
    sourceBase = self->super._sourceBase;
    self->super._selectedDevice = sourceBase;
    if (!sourceBase)
    {
      self->super._selectedDevice = self->super._sourceNetwork;
    }

    v29 = off_27E3830E8[0];

    MEMORY[0x2821F9670](self, sel_setConnectionMedium_, v29, v27);
  }
}

- (void)touchInCellAtIndexPath:(id)path
{
  v6 = objc_msgSend_section(path, a2, path, v3);
  v10 = objc_msgSend_tableManager(self, v7, v8, v9);
  if (v6 == objc_msgSend_indexOfSectionWithIdentifier_(v10, v11, off_27E383208, v12))
  {
    v16 = objc_msgSend_tableManager(self, v13, v14, v15);
    v19 = objc_msgSend_tagOfSelectedRowInMenuSection_(v16, v17, v6, v18);
    *(&self->super.showFullList + 3) = v19;
    outResultsDict = self->super.super.super._outResultsDict;
    v23 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v21, v19, v22);
    objc_msgSend_setObject_forKey_(outResultsDict, v24, v23, @"kSBSKey_SelectorChoice");

    objc_msgSend_selectedDeviceUpdated(self, v25, v26, v27);
  }

  else
  {
    v28.receiver = self;
    v28.super_class = StepByStepUIViewController_ExtendWirelessNetworkChoice;
    [(StepByStepUIViewController_DevicePicker *)&v28 touchInCellAtIndexPath:path];
  }
}

- (void)stepByStepUpdateProgress:(id)progress forState:(int)state
{
  v4 = *&state;
  v7 = objc_msgSend_tableManager(self, a2, progress, *&state);
  v10 = objc_msgSend_indexOfSectionWithIdentifier_(v7, v8, off_27E383208, v9);
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = v10;
    v15 = objc_msgSend_tableManager(self, v11, v12, v13);
    objc_msgSend_deleteSection_(v15, v16, v14, v17);
  }

  v18.receiver = self;
  v18.super_class = StepByStepUIViewController_ExtendWirelessNetworkChoice;
  [(StepByStepUIViewController *)&v18 stepByStepUpdateProgress:progress forState:v4];
}

- (BOOL)canBeExtendedWithDWDS
{
  v5 = objc_msgSend_inParamDict(self, a2, v2, v3);
  v8 = objc_msgSend_objectForKey_(v5, v6, @"kSBSKey_Mode", v7);
  if (objc_msgSend_integerValue(v8, v9, v10, v11) != 1)
  {
    return 0;
  }

  selectedDevice = self->super._selectedDevice;
  if (!selectedDevice)
  {
    return 0;
  }

  v15 = objc_msgSend_productIDForNetworkOrDevice_(StepByStepUtilities, v12, selectedDevice, v13);
  v19 = objc_msgSend_integerValue(v15, v16, v17, v18);
  result = 0;
  if (v19)
  {
    v21 = v19 == 3;
  }

  else
  {
    v21 = 1;
  }

  if (!v21 && v19 != 102)
  {
    return 1;
  }

  return result;
}

- (void)addBrowsedRecords:(id)records toDestList:(id)list
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, records, list);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  recordsCopy = records;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(records, v8, &v28, v32, 16);
  if (v9)
  {
    v13 = v9;
    v14 = *v29;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v29 != v14)
      {
        objc_enumerationMutation(recordsCopy);
      }

      v16 = *(*(&v28 + 1) + 8 * v15);
      v17 = objc_msgSend_objectForKey_(v16, v10, @"raMA", v12);
      v20 = objc_msgSend_objectForKey_(v16, v18, @"raM2", v19);
      if (!objc_msgSend_length(v17, v21, v22, v23))
      {
        break;
      }

      if (sub_23EB6B8F0(v17, 0, list) != -1 || objc_msgSend_length(v20, v10, v24, v12) && sub_23EB6B8F0(v20, 0, list) != -1)
      {
        objc_msgSend_addObject_(v6, v10, v16, v12);
      }

      if (v13 == ++v15)
      {
        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(recordsCopy, v10, &v28, v32, 16);
        v13 = v25;
        if (v25)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    if (objc_msgSend_count(v6, v10, v11, v12))
    {
      objc_msgSend_addObjectsFromArray_(list, v26, v6, v27);
    }
  }
}

@end