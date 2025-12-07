@interface StepByStepUIViewController_ExtendWired_Connections
- (void)loadView;
@end

@implementation StepByStepUIViewController_ExtendWired_Connections

- (void)loadView
{
  objc_msgSend_setInternetFlow_(self, a2, 3, v2);
  v7 = objc_msgSend_inParamDict(self, v4, v5, v6);
  v10 = objc_msgSend_objectForKey_(v7, v8, @"kSBSKey_Step", v9);
  if (objc_msgSend_integerValue(v10, v11, v12, v13) == 13)
  {
    v17 = sub_23EB6CD3C(@"StepByStepStatus_ReplaceOtherConnections.PlugInWANCable", qword_27E383800);
    objc_msgSend_setSwapDescriptionText_(self, v18, v17, v19);
    v20 = sub_23EB6CD3C(@"StepByStepStatus_ReplaceOtherConnections.SourceDevice", qword_27E383800);
  }

  else
  {
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v23 = objc_msgSend_inParamDict(self, v14, v15, v16);
    v26 = objc_msgSend_objectForKey_(v23, v24, @"kSBSKey_SourceBase", v25);
    objc_msgSend_determineInfoForDevice_deviceDiagramInfo_(self, v27, v26, &v43);
    v28 = sub_23EB6CD3C(@"StepByStepStatus_ExtendWiredNetworkConnections.PlugInWANCable", qword_27E383800);
    objc_msgSend_setSwapDescriptionText_(self, v29, v28, v30);
    v20 = sub_23EB6CEE0(v44, SHIDWORD(v45), 0);
  }

  objc_msgSend_setSwapSourceLabelText_(self, v21, v20, v22);
  v34 = objc_msgSend_inParamDict(self, v31, v32, v33);
  v37 = objc_msgSend_objectForKey_(v34, v35, @"kSBSKey_Mode", v36);
  if (objc_msgSend_integerValue(v37, v38, v39, v40) == 2)
  {
    objc_msgSend_setLeftNavigationButton_enable_hide_(self, v41, @"kCancel", 1, 0);
  }

  v42.receiver = self;
  v42.super_class = StepByStepUIViewController_ExtendWired_Connections;
  [(InternetViewController *)&v42 loadView];
}

@end