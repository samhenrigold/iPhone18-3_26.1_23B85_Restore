@interface StepByStepUIViewController_ReplaceNetworkChoice
- (void)setupDevices;
- (void)setupHeaderAndFooter;
@end

@implementation StepByStepUIViewController_ReplaceNetworkChoice

- (void)setupHeaderAndFooter
{
  justTextLabel = self->super.super.justTextLabel;
  v6 = objc_msgSend_justTextContainerView(self, a2, v2, v3);
  ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v7, @"StepByStepStatus_ReplaceNetworkChoice%@", v8);
  sub_23EB5E054(justTextLabel, v6, ProductLocalizedStringWithFormat, v10);
  v14 = objc_msgSend_tableHeaderContainerView(self, v11, v12, v13);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v15, v14, v16);
  v20 = objc_msgSend_parentController(self, v17, v18, v19);
  v24 = objc_msgSend_tableHeaderContainerView(self, v21, v22, v23);
  v25 = MEMORY[0x277CBEA60];
  v29 = objc_msgSend_justTextContainerView(self, v26, v27, v28);
  v33 = objc_msgSend_topoView(self, v30, v31, v32);
  v36 = objc_msgSend_arrayWithObjects_(v25, v34, v29, v35, v33, 0);
  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(v20, v37, v24, v36, 1);
  v41 = objc_msgSend_tableHeaderContainerView(self, v38, v39, v40);
  v45 = objc_msgSend_tableView(self, v42, v43, v44);

  objc_msgSend_setTableHeaderView_(v45, v46, v41, v47);
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
    v19 = off_27E3830F0;

    MEMORY[0x2821F9670](self, sel_setConnectionMedium_, v19, v18);
  }
}

@end