@interface AssistantUIViewController
- (AssistantUIViewController)initWithNibName:(id)name bundle:(id)bundle;
- (BOOL)auUIAlertCancelAction:(id)action;
- (BOOL)auUIAlertOKAction:(id)action;
- (BOOL)disablesAutomaticKeyboardDismissal;
- (id)modifyTopoUIInLayer:(id)layer withLayout:(id)layout newLayout:(id)newLayout;
- (id)newStepByStepControllerForStep:(int)step;
- (id)radioNameFromBaseStation:(id)station;
- (id)valueForItemOfType:(id)type atTypeIndex:(unint64_t)index inCellWithTag:(int64_t)tag;
- (int)callbackAskUserAQuestion:(int)question paramDict:(id)dict forController:(id)controller;
- (int)callbackAskUserForPassword:(int)password param:(id)param forController:(id)controller;
- (int)callbackAskUserForSetupCode:(int)code isRetry:(BOOL)retry forController:(id)controller;
- (int)callbackAskUserForUncertifiedForController:(id)controller;
- (void)assistantUpdateProgress:(id)progress forState:(int)state;
- (void)assistantWaitingForResourcesComplete;
- (void)assistantWaitingForResourcesStart;
- (void)baseStationConfigurationComplete:(id)complete;
- (void)callbackAskCancel;
- (void)confirmSkipWANPort;
- (void)connectionVerificationSucceededForSelector:(int)selector;
- (void)continueWithDiagsAndUsageStats;
- (void)continueWithGuestNetSettings;
- (void)continueWithPPPoESettings;
- (void)continueWithSwapCabling;
- (void)dealloc;
- (void)doneWithAssistantResult:(int)result;
- (void)handleCancelRequest:(BOOL)request;
- (void)handleNextButton:(id)button;
- (void)loadView;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)playDoneSound;
- (void)popToRootViewControllerAnimated:(BOOL)animated;
- (void)presentUIForRecommendationResult:(int)result paramDict:(id)dict;
- (void)presentUIForRecommendationStatus;
- (void)presentUIForRecommmendationTargetInfo:(id)info;
- (void)presentUIForSetupResult:(int)result baseStationInfo:(id)info withPrompt:(id)prompt;
- (void)presentUIForSetupStatusWithRecommendationDict:(id)dict;
- (void)presentUIForStepByStepNextStep:(int)step paramDict:(id)dict;
- (void)presentWaitingForWANViewWithContinueText:(BOOL)text;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)readyToGuess;
- (void)replaceSubviewsInView:(id)view newSubviews:(id)subviews withAnimation:(BOOL)animation;
- (void)setupCompleteShowPasswords:(BOOL)passwords;
- (void)showAskUserForPPPoECredentialsForStatus:(int)status paramDict:(id)dict;
- (void)showAskUserSwapCablingForStatus:(int)status paramDict:(id)dict;
- (void)showTellUserToFixTheirInternetConnection;
- (void)showTellUserToPlugInEthernetForStatus:(int)status paramDict:(id)dict;
- (void)showTellUserToResetBroadbandDeviceForStatus:(int)status paramDict:(id)dict;
- (void)showUIConfigPromptForGuestNetConfigWithParamDict:(id)dict;
- (void)showUIConfigPromptToSendDiagsUsageStatsWithParamDict:(id)dict;
- (void)showUIForSetupStatus;
- (void)skipPluginAudioCabling;
- (void)skipWANPort;
- (void)touchInCellAtIndexPath:(id)path;
@end

@implementation AssistantUIViewController

- (AssistantUIViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = AssistantUIViewController;
  v4 = [(AUUITableViewController *)&v6 initWithNibName:name bundle:bundle];
  if (v4)
  {
    sub_23EB6CCD4(@"SetupRecommendations");
  }

  return v4;
}

- (void)loadView
{
  v198[1] = *MEMORY[0x277D85DE8];
  v196.receiver = self;
  v196.super_class = AssistantUIViewController;
  [(AUUITableViewController *)&v196 loadView];
  if (!objc_msgSend__assistantUIController(self, v3, v4, v5))
  {
    v8 = objc_alloc_init(AssistantUIController);
    objc_msgSend_set_assistantUIController_(self, v9, v8, v10);
  }

  objc_msgSend_setDelegate_(self, v6, self, v7);
  v11 = objc_alloc(MEMORY[0x277D751E0]);
  v13 = objc_msgSend_initWithBarButtonSystemItem_target_action_(v11, v12, 1, self, sel_handleCancelButton_);
  objc_msgSend_setCancelButton_(self, v14, v13, v15);
  v16 = objc_alloc(MEMORY[0x277D751E0]);
  v17 = sub_23EB6CD3C(@"kNext", qword_27E383800);
  v19 = objc_msgSend_initWithTitle_style_target_action_(v16, v18, v17, 2, self, sel_handleNextButton_);
  objc_msgSend_setNextButton_(self, v20, v19, v21);
  v25 = objc_msgSend_cancelButton(self, v22, v23, v24);
  v29 = objc_msgSend_navigationItem(self, v26, v27, v28);
  objc_msgSend_setLeftBarButtonItem_(v29, v30, v25, v31);
  Button = objc_msgSend_nextButton(self, v32, v33, v34);
  v39 = objc_msgSend_navigationItem(self, v36, v37, v38);
  objc_msgSend_setRightBarButtonItem_(v39, v40, Button, v41);
  v45 = objc_msgSend_nextButton(self, v42, v43, v44);
  objc_msgSend_setEnabled_(v45, v46, 0, v47);
  v51 = objc_msgSend_cancelButton(self, v48, v49, v50);
  objc_msgSend_setEnabled_(v51, v52, 0, v53);
  LODWORD(v56) = objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v54, self->_scanInfoRecord, v55);
  if (!v56)
  {
    v56 = objc_msgSend_callerParamDict(self, v57, v58, v59);
    if (v56)
    {
      v63 = objc_msgSend_callerParamDict(self, v60, v61, v62);
      v66 = objc_msgSend_objectForKey_(v63, v64, @"wacShouldHideFindAppUI", v65);
      if (objc_msgSend_BOOLValue(v66, v67, v68, v69))
      {
        LODWORD(v56) = 4;
      }

      else
      {
        LODWORD(v56) = 0;
      }
    }
  }

  v70 = sub_23EB6D2F0(v56);
  v71 = sub_23EB6CD3C(v70, qword_27E383800);
  v75 = objc_msgSend_navigationItem(self, v72, v73, v74);
  objc_msgSend_setTitle_(v75, v76, v71, v77);
  objc_msgSend_setDelegate_(self->_assistantUIController, v78, self, v79);
  objc_msgSend_performSelector_withObject_afterDelay_(self, v80, sel_initializeServiesDone, 0, 0.0);
  v84 = objc_msgSend_navigationController(self, v81, v82, v83);
  objc_msgSend_setDelegate_(v84, v85, self, v86);
  v87 = objc_alloc(MEMORY[0x277D751E0]);
  v88 = sub_23EB6CD3C(@"kBack", qword_27E383800);
  v90 = objc_msgSend_initWithTitle_style_target_action_(v87, v89, v88, 0, 0, 0);
  v94 = objc_msgSend_navigationItem(self, v91, v92, v93);
  objc_msgSend_setBackBarButtonItem_(v94, v95, v90, v96);
  v195 = 0;
  v100 = objc_msgSend_view(self, v97, v98, v99);
  objc_msgSend_frame(v100, v101, v102, v103);
  self->justTextLabel = objc_msgSend_labelViewInContainer_width_(AssistantSubUIViewController, v104, &v195, v105, v106);
  objc_msgSend_setJustTextContainerView_(self, v107, v195, v108);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->justTextContainerView, v109, 0, v110);
  justTextLabel = self->justTextLabel;
  v112 = MEMORY[0x277CCAAD0];
  v197 = @"height";
  v113 = MEMORY[0x277CCABB0];
  objc_msgSend_frame(justTextLabel, v114, v115, v116);
  *&v118 = v117;
  v198[0] = objc_msgSend_numberWithFloat_(v113, v119, v120, v121, v118);
  v123 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v122, v198, &v197, 1);
  v124 = _NSDictionaryOfVariableBindings(&cfstr_Justtextlabel.isa, self->justTextLabel, 0);
  v126 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v112, v125, @"V:[justTextLabel(>=height)]", 0, v123, v124);
  objc_msgSend_addConstraints_(justTextLabel, v127, v126, v128);
  v194 = 0;
  v195 = 0;
  v132 = objc_msgSend_view(self, v129, v130, v131);
  objc_msgSend_frame(v132, v133, v134, v135);
  self->spinnerWithStatusBelowLabel = objc_msgSend_labelViewInContainer_width_withSpinner_above_(AssistantSubUIViewController, v136, &v195, &v194, 1, v137);
  v138 = v195;
  self->spinnerWithStatusBelowSpinner = v194;
  objc_msgSend_setSpinnerWithStatusBelowView_(self, v139, v138, v140);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->spinnerWithStatusBelowView, v141, 0, v142);
  v195 = 0;
  v146 = objc_msgSend_view(self, v143, v144, v145);
  objc_msgSend_frame(v146, v147, v148, v149);
  v154 = objc_msgSend_topoViewWithWidth_(AssistantSubUIViewController, v150, v151, v152, v153);
  objc_msgSend_setTopoView_(self, v155, v154, v156);
  v160 = objc_msgSend_view(self, v157, v158, v159);
  objc_msgSend_frame(v160, v161, v162, v163);
  v168 = objc_msgSend_containerViewWithWidth_(AssistantSubUIViewController, v164, v165, v166, v167);
  objc_msgSend_setTableHeaderContainerView_(self, v169, v168, v170);
  v174 = objc_msgSend_view(self, v171, v172, v173);
  objc_msgSend_frame(v174, v175, v176, v177);
  v179 = v178;
  v183 = objc_msgSend_view(self, v180, v181, v182);
  objc_msgSend_frame(v183, v184, v185, v186);
  v191 = objc_msgSend_tableViewWithWidth_height_(AssistantSubUIViewController, v187, v188, v189, v179, v190);
  objc_msgSend_setTableView_(self, v192, v191, v193);
}

- (void)dealloc
{
  objc_msgSend_setPasswordAlert_(self, v3, 0, v4);
  objc_msgSend_setAskUserQuestionAlert_(self, v5, 0, v6);
  objc_msgSend_setConnectionVerificationAlert_(self, v7, 0, v8);
  objc_msgSend_set_controllerContext_(self, v9, 0, v10);
  mfiAccessoryResponseDict = self->_mfiAccessoryResponseDict;
  if (mfiAccessoryResponseDict)
  {
  }

  sub_23EB6CD10();
  objc_msgSend_setCurrentSubController_(self, v12, 0, v13);
  objc_msgSend_setJustTextContainerView_(self, v14, 0, v15);
  objc_msgSend_setSpinnerWithStatusBelowView_(self, v16, 0, v17);
  objc_msgSend_setTopoView_(self, v18, 0, v19);
  v20.receiver = self;
  v20.super_class = AssistantUIViewController;
  [(AUUITableViewController *)&v20 dealloc];
}

- (void)readyToGuess
{
  v5 = objc_msgSend_macAddress(self, a2, v2, v3);
  if (v5 || (v9 = objc_msgSend_scanInfoRecord(self, v6, v7, v8), (v5 = objc_msgSend_objectForKey_(v9, v10, @"BSSID", v11)) != 0) || (v12 = objc_msgSend_scanInfoRecord(self, v6, v7, v8), (v5 = objc_msgSend_objectForKey_(v12, v13, @"raMA", v14)) != 0))
  {
    v15 = v5;
    v16 = objc_msgSend_scanInfoRecord(self, v6, v7, v8);
    objc_msgSend_setTargetScanRecord_(self->_assistantUIController, v17, v16, v18);
    objc_msgSend_setTargetMACAddress_(self->_assistantUIController, v19, v15, v20);
    v24 = objc_msgSend_paramScanResults(self, v21, v22, v23);
    objc_msgSend_setParamScanResults_(self->_assistantUIController, v25, v24, v26);
    assistantUIController = self->_assistantUIController;

    MEMORY[0x2821F9670](assistantUIController, sel_startAutoGuess, v27, v28);
  }
}

- (void)baseStationConfigurationComplete:(id)complete
{
  if (objc_msgSend_doneWithAssistant_(self->_assistantUIController, a2, 0, v3) != -6771)
  {
    v8 = objc_msgSend_assistantResult(self->_assistantUIController, v5, v6, v7);

    MEMORY[0x2821F9670](self, sel_doneWithAssistantResult_, v8, v9);
  }
}

- (void)callbackAskCancel
{
  if (objc_msgSend__controllerContext(self, a2, v2, v3))
  {
    objc_msgSend_set_controllerContext_(self, v5, 0, v7);
  }

  v8 = objc_msgSend_uiAlert(self, v5, v6, v7);

  objc_msgSend_dismissWithNoActionAnimated_(v8, v9, 1, v10);
}

- (BOOL)auUIAlertOKAction:(id)action
{
  v6 = objc_msgSend_tag(action, a2, action, v3);
  v10 = 0;
  if (v6 > 4002)
  {
    switch(v6)
    {
      case 4003:
        v24 = objc_msgSend_uiAlert(self, v7, v8, v9);
        v28 = objc_msgSend_context(v24, v25, v26, v27);
        objc_msgSend_callbackAskUserAQuestionResult_result_(v28, v29, 5, 4294960539);
        goto LABEL_15;
      case 4004:
        v44 = objc_msgSend_uiAlert(self, v7, v8, v9);
        v48 = objc_msgSend_context(v44, v45, v46, v47);
        v52 = objc_msgSend_textField(action, v49, v50, v51);
        v56 = objc_msgSend_text(v52, v53, v54, v55);
        objc_msgSend_callbackAskUserForSetupCodeResult_password_(v48, v57, 0, v56);
        goto LABEL_15;
      case 4005:
        v17 = objc_msgSend_uiAlert(self, v7, v8, v9);
        v21 = objc_msgSend_context(v17, v18, v19, v20);
        objc_msgSend_callbackAskUserForUncertifiedResult_(v21, v22, 0, v23);
        goto LABEL_15;
    }
  }

  else
  {
    switch(v6)
    {
      case 4000:
        objc_msgSend_skipWANPort(self, v7, v8, v9);
        goto LABEL_15;
      case 4001:
        v30 = objc_msgSend_uiAlert(self, v7, v8, v9);
        v34 = objc_msgSend_context(v30, v31, v32, v33);
        v38 = objc_msgSend_textField(action, v35, v36, v37);
        v42 = objc_msgSend_text(v38, v39, v40, v41);
        objc_msgSend_callbackAskUserForPasswordResult_password_remember_(v34, v43, 0, v42, 2);
        goto LABEL_15;
      case 4002:
        v11 = objc_msgSend_uiAlert(self, v7, v8, v9);
        v15 = objc_msgSend_context(v11, v12, v13, v14);
        objc_msgSend_callbackAskUserAQuestionResult_result_(v15, v16, 4, 0);
LABEL_15:
        v10 = 1;
        break;
    }
  }

  objc_msgSend_setUiAlert_(self, v7, 0, v9);
  return v10;
}

- (BOOL)auUIAlertCancelAction:(id)action
{
  v5 = objc_msgSend_tag(action, a2, action, v3);
  v9 = 0;
  if (v5 > 4002)
  {
    switch(v5)
    {
      case 4003:
        v23 = objc_msgSend_uiAlert(self, v6, v7, v8);
        v27 = objc_msgSend_context(v23, v24, v25, v26);
        objc_msgSend_callbackAskUserAQuestionResult_result_(v27, v28, 5, 4294960527);
        goto LABEL_14;
      case 4004:
        v35 = objc_msgSend_uiAlert(self, v6, v7, v8);
        v39 = objc_msgSend_context(v35, v36, v37, v38);
        objc_msgSend_callbackAskUserForSetupCodeResult_password_(v39, v40, 4294960573, &stru_285145FE8);
        goto LABEL_14;
      case 4005:
        v16 = objc_msgSend_uiAlert(self, v6, v7, v8);
        v20 = objc_msgSend_context(v16, v17, v18, v19);
        objc_msgSend_callbackAskUserForUncertifiedResult_(v20, v21, 4294960573, v22);
        goto LABEL_14;
    }
  }

  else
  {
    switch(v5)
    {
      case 4000:
LABEL_14:
        v9 = 1;
        break;
      case 4001:
        v29 = objc_msgSend_uiAlert(self, v6, v7, v8);
        v33 = objc_msgSend_context(v29, v30, v31, v32);
        objc_msgSend_callbackAskUserForPasswordResult_password_remember_(v33, v34, 4294960573, 0, 2);
        goto LABEL_14;
      case 4002:
        v10 = objc_msgSend_uiAlert(self, v6, v7, v8);
        v14 = objc_msgSend_context(v10, v11, v12, v13);
        objc_msgSend_callbackAskUserAQuestionResult_result_(v14, v15, 4, 4294960573);
        goto LABEL_14;
    }
  }

  objc_msgSend_setUiAlert_(self, v6, 0, v8);
  return v9;
}

- (int)callbackAskUserForUncertifiedForController:(id)controller
{
  if (objc_msgSend_uiAlert(self, a2, controller, v3))
  {
    return -6721;
  }

  sub_23EB6CCD4(@"SetupRecommendations");
  v7 = [AUUIAlert alloc];
  v10 = objc_msgSend_initWithViewController_(v7, v8, self, v9);
  objc_msgSend_setUiAlert_(self, v11, v10, v12);
  v13 = sub_23EB6CD3C(@"kAddHomeKitAccessoryTitle", qword_27E383800);
  objc_msgSend_setTitle_(self->uiAlert, v14, v13, v15);
  v16 = sub_23EB6CD3C(@"kAddHomeKitAccessoryMessage", qword_27E383800);
  objc_msgSend_setMessage_(self->uiAlert, v17, v16, v18);
  objc_msgSend_setDelegate_(self->uiAlert, v19, self, v20);
  v21 = sub_23EB6CD3C(@"kAddHomeKitAccessoryAddAnyway", qword_27E383800);
  objc_msgSend_setOkButtonTitle_(self->uiAlert, v22, v21, v23);
  v24 = sub_23EB6CD3C(@"kCancel", qword_27E383800);
  objc_msgSend_setCancelButtonTitle_(self->uiAlert, v25, v24, v26);
  objc_msgSend_setContext_(self->uiAlert, v27, controller, v28);
  objc_msgSend_setTag_(self->uiAlert, v29, 4005, v30);
  objc_msgSend_show(self->uiAlert, v31, v32, v33);
  return 0;
}

- (int)callbackAskUserForPassword:(int)password param:(id)param forController:(id)controller
{
  if (!param)
  {
    return -6705;
  }

  if (objc_msgSend_uiAlert(self, a2, *&password, param))
  {
    return -6721;
  }

  if (!password)
  {
    v10 = @"kAskUserForBasePassword";
    goto LABEL_9;
  }

  if (password == 1)
  {
    v10 = @"kAskUserForNetworkPassword";
LABEL_9:
    v11 = MEMORY[0x277CCACA8];
    v12 = sub_23EB6CD3C(v10, qword_27E383800);
    valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v11, v13, v12, @"%@", 0, param);
    v15 = [AUPasswordUIAlert alloc];
    v18 = objc_msgSend_initWithViewController_(v15, v16, self, v17);
    objc_msgSend_setUiAlert_(self, v19, v18, v20);
    objc_msgSend_setTitle_(self->uiAlert, v21, valid, v22);
    objc_msgSend_setMessage_(self->uiAlert, v23, &stru_285145FE8, v24);
    objc_msgSend_setDelegate_(self->uiAlert, v25, self, v26);
    v27 = sub_23EB6CD3C(@"kOK", qword_27E383800);
    objc_msgSend_setOkButtonTitle_(self->uiAlert, v28, v27, v29);
    v30 = sub_23EB6CD3C(@"kCancel", qword_27E383800);
    objc_msgSend_setCancelButtonTitle_(self->uiAlert, v31, v30, v32);
    objc_msgSend_setContext_(self->uiAlert, v33, controller, v34);
    objc_msgSend_setTag_(self->uiAlert, v35, 4001, v36);
    objc_msgSend_show(self->uiAlert, v37, v38, v39);
    return 0;
  }

  return -6705;
}

- (int)callbackAskUserForSetupCode:(int)code isRetry:(BOOL)retry forController:(id)controller
{
  retryCopy = retry;
  if (objc_msgSend_uiAlert(self, a2, *&code, retry))
  {
    return -6721;
  }

  sub_23EB6CCD4(@"SetupRecommendations");
  if (retryCopy)
  {
    v9 = @"kAskUserForSetupCodeRetry";
  }

  else
  {
    v9 = @"kAskUserForSetupCode";
  }

  v10 = sub_23EB6CD3C(v9, qword_27E383800);
  v11 = [AUSetupCodeUIAlert alloc];
  v14 = objc_msgSend_initWithViewController_(v11, v12, self, v13);
  objc_msgSend_setUiAlert_(self, v15, v14, v16);
  objc_msgSend_setTitle_(self->uiAlert, v17, v10, v18);
  objc_msgSend_setMessage_(self->uiAlert, v19, &stru_285145FE8, v20);
  objc_msgSend_setDelegate_(self->uiAlert, v21, self, v22);
  v23 = sub_23EB6CD3C(@"kOK", qword_27E383800);
  objc_msgSend_setOkButtonTitle_(self->uiAlert, v24, v23, v25);
  v26 = sub_23EB6CD3C(@"kCancel", qword_27E383800);
  objc_msgSend_setCancelButtonTitle_(self->uiAlert, v27, v26, v28);
  objc_msgSend_setContext_(self->uiAlert, v29, controller, v30);
  objc_msgSend_setTag_(self->uiAlert, v31, 4004, v32);
  objc_msgSend_show(self->uiAlert, v33, v34, v35);
  return 0;
}

- (int)callbackAskUserAQuestion:(int)question paramDict:(id)dict forController:(id)controller
{
  if (self->_controllerContext)
  {
    return -6721;
  }

  if (question == 5)
  {
    if (dict)
    {
      v64 = objc_msgSend_objectForKey_(dict, a2, @"kAssistantCallbackAskUserParamKey_MessageKey", dict);
      v65 = sub_23EB6CD3C(v64, qword_27E383800);
      v68 = objc_msgSend_objectForKey_(dict, v66, @"kAssistantCallbackAskUserParamKey_OKKey", v67);
      v69 = sub_23EB6CD3C(v68, qword_27E383800);
      v72 = objc_msgSend_objectForKey_(dict, v70, @"kAssistantCallbackAskUserParamKey_CancelKey", v71);
      v73 = sub_23EB6CD3C(v72, qword_27E383800);
      v74 = [AUUIAlert alloc];
      v77 = objc_msgSend_initWithViewController_(v74, v75, self, v76);
      objc_msgSend_setUiAlert_(self, v78, v77, v79);
      objc_msgSend_setTitle_(self->uiAlert, v80, v65, v81);
      objc_msgSend_setMessage_(self->uiAlert, v82, &stru_285145FE8, v83);
      objc_msgSend_setDelegate_(self->uiAlert, v84, self, v85);
      objc_msgSend_setOkButtonTitle_(self->uiAlert, v86, v69, v87);
      objc_msgSend_setCancelButtonTitle_(self->uiAlert, v88, v73, v89);
      objc_msgSend_setContext_(self->uiAlert, v90, controller, v91);
      objc_msgSend_setTag_(self->uiAlert, v92, 4003, v93);
      objc_msgSend_show(self->uiAlert, v94, v95, v96);
      return 0;
    }
  }

  else
  {
    if (question != 4)
    {
      if (question == 3)
      {
        objc_msgSend_callbackAskUserAQuestionResult_result_(controller, a2, *&question, 0);
      }

      return 0;
    }

    if (dict)
    {
      v9 = objc_msgSend_objectForKey_(dict, a2, @"kAssistantCallbackAskUserParamKey_Warning_MessageKey", dict);
      v12 = objc_msgSend_objectForKey_(dict, v10, @"kAssistantCallbackAskUserParamKey_Warning_MessageParam1", v11);
      v15 = objc_msgSend_objectForKey_(dict, v13, @"kAssistantCallbackAskUserParamKey_Warning_MessageParam2", v14);
      v16 = MEMORY[0x277CCACA8];
      v17 = sub_23EB6CD3C(v9, qword_27E383800);
      valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v16, v18, v17, @"%@%@", 0, v12, v15);
      v22 = objc_msgSend_objectForKey_(dict, v20, @"kAssistantCallbackAskUserParamKey_Warning_PromptKey", v21);
      v25 = objc_msgSend_objectForKey_(dict, v23, @"kAssistantCallbackAskUserParamKey_Warning_PromptParam1", v24);
      v28 = objc_msgSend_objectForKey_(dict, v26, @"kAssistantCallbackAskUserParamKey_Warning_PromptParam2", v27);
      v29 = MEMORY[0x277CCACA8];
      v30 = sub_23EB6CD3C(v22, qword_27E383800);
      v32 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v29, v31, v30, @"%@%@", 0, v25, v28);
      v35 = objc_msgSend_objectForKey_(dict, v33, @"kAssistantCallbackAskUserParamKey_OKKey", v34);
      if (!v35)
      {
        v35 = @"kOK";
      }

      v36 = sub_23EB6CD3C(v35, qword_27E383800);
      v39 = objc_msgSend_objectForKey_(dict, v37, @"kAssistantCallbackAskUserParamKey_CancelKey", v38);
      if (v39)
      {
        v39 = sub_23EB6CD3C(v39, qword_27E383800);
      }

      if (v39)
      {
        v40 = v36;
      }

      else
      {
        v40 = 0;
      }

      if (v39)
      {
        v36 = v39;
      }

      v41 = [AUUIAlert alloc];
      v44 = objc_msgSend_initWithViewController_(v41, v42, self, v43);
      objc_msgSend_setUiAlert_(self, v45, v44, v46);
      objc_msgSend_setTitle_(self->uiAlert, v47, v32, v48);
      objc_msgSend_setMessage_(self->uiAlert, v49, valid, v50);
      objc_msgSend_setDelegate_(self->uiAlert, v51, self, v52);
      objc_msgSend_setOkButtonTitle_(self->uiAlert, v53, v40, v54);
      objc_msgSend_setCancelButtonTitle_(self->uiAlert, v55, v36, v56);
      objc_msgSend_setContext_(self->uiAlert, v57, controller, v58);
      objc_msgSend_setTag_(self->uiAlert, v59, 4002, v60);
      objc_msgSend_show(self->uiAlert, v61, v62, v63);
      return 0;
    }
  }

  return -6705;
}

- (void)playDoneSound
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();
  v6 = objc_msgSend_bundleForClass_(v2, v4, v3, v5);
  v8 = objc_msgSend_pathForResource_ofType_(v6, v7, @"burn complete.aif", &stru_285145FE8);
  v9 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBED08], v8, kCFURLPOSIXPathStyle, 0);
  outSystemSoundID = 0;
  v10 = AudioServicesCreateSystemSoundID(v9, &outSystemSoundID);
  CFRelease(v9);
  if (!v10)
  {
    AudioServicesAddSystemSoundCompletion(outSystemSoundID, 0, 0, sub_23EB56F7C, 0);
    AudioServicesPlayAlertSound(outSystemSoundID);
  }
}

- (void)showTellUserToResetBroadbandDeviceForStatus:(int)status paramDict:(id)dict
{
  v5 = [InternetViewController alloc];
  v7 = objc_msgSend_initWithNibName_bundle_(v5, v6, 0, 0);
  v11 = objc_msgSend_guessCompleteDict(self->_assistantUIController, v8, v9, v10);
  v14 = objc_msgSend_unconfiguredBaseStationFromGuessCompleteDict_(AutoGuessController, v12, v11, v13);
  if (v14)
  {
    v17 = v14;
    objc_msgSend_setCurrentSubController_(self, v15, v7, v16);
    v21 = objc_msgSend_currentSubController(self, v18, v19, v20);
    objc_msgSend_setInParamDict_(v21, v22, v17, v23);
    v27 = objc_msgSend_currentSubController(self, v24, v25, v26);
    objc_msgSend_setParentController_(v27, v28, self, v29);

    self->_currentUIConfigStep = 1;
    objc_msgSend_presentInternetDisconnectedUI(v7, v30, v31, v32);
    objc_msgSend_setDelegate_(v7, v33, self, v34);

    objc_msgSend_pushViewController_animated_(self, v35, v7, 1);
  }
}

- (void)showAskUserForPPPoECredentialsForStatus:(int)status paramDict:(id)dict
{
  v5 = [PPPoEViewController alloc];
  v7 = objc_msgSend_initWithNibName_bundle_(v5, v6, 0, 0);
  objc_msgSend_setCurrentSubController_(self, v8, v7, v9);
  v13 = objc_msgSend_currentSubController(self, v10, v11, v12);
  objc_msgSend_setParentController_(v13, v14, self, v15);

  self->_currentUIConfigStep = 3;

  objc_msgSend_pushViewController_animated_(self, v16, v7, 1);
}

- (void)showUIConfigPromptToSendDiagsUsageStatsWithParamDict:(id)dict
{
  v4 = [AssistantDiagsUsageStatsUIViewController alloc];
  v6 = objc_msgSend_initWithNibName_bundle_(v4, v5, 0, 0);
  objc_msgSend_setCurrentSubController_(self, v7, v6, v8);
  v12 = objc_msgSend_currentSubController(self, v9, v10, v11);
  objc_msgSend_setParentController_(v12, v13, self, v14);

  self->_currentUIConfigStep = 7;

  objc_msgSend_pushViewController_animated_(self, v15, v6, 1);
}

- (void)showUIConfigPromptForGuestNetConfigWithParamDict:(id)dict
{
  v6 = objc_msgSend_newStepByStepControllerForStep_(self, a2, 3, v3);
  if (v6)
  {
    v9 = v6;
    v10 = MEMORY[0x277CBEAC0];
    v11 = objc_msgSend_objectForKey_(dict, v7, @"kBSConfigurationUIConfig_TargetBaseKey", v8);
    v14 = objc_msgSend_objectForKey_(dict, v12, @"kBSConfigurationUIConfig_BaseNameKey", v13);
    v17 = objc_msgSend_objectForKey_(dict, v15, @"kBSConfigurationUIConfig_NetworkameKey", v16);
    v20 = objc_msgSend_dictionaryWithObjectsAndKeys_(v10, v18, v11, v19, @"kSBSKey_TargetBase", v14, @"kSBSKey_BaseName", v17, @"kSBSKey_NetworkName", 0);
    objc_msgSend_setInParamDict_(v9, v21, v20, v22);
    objc_msgSend_setCurrentSubController_(self, v23, v9, v24);
    v28 = objc_msgSend_currentSubController(self, v25, v26, v27);
    objc_msgSend_setParentController_(v28, v29, self, v30);

    self->_currentUIConfigStep = 8;

    objc_msgSend_pushViewController_animated_(self, v31, v9, 1);
  }
}

- (void)showTellUserToPlugInEthernetForStatus:(int)status paramDict:(id)dict
{
  v5 = [InternetViewController alloc];
  v7 = objc_msgSend_initWithNibName_bundle_(v5, v6, 0, 0);
  v11 = objc_msgSend_guessCompleteDict(self->_assistantUIController, v8, v9, v10);
  v14 = objc_msgSend_unconfiguredBaseStationFromGuessCompleteDict_(AutoGuessController, v12, v11, v13);
  if (v14)
  {
    v17 = v14;
    objc_msgSend_setCurrentSubController_(self, v15, v7, v16);
    v21 = objc_msgSend_currentSubController(self, v18, v19, v20);
    objc_msgSend_setInParamDict_(v21, v22, v17, v23);
    v27 = objc_msgSend_currentSubController(self, v24, v25, v26);
    objc_msgSend_setParentController_(v27, v28, self, v29);

    self->_currentUIConfigStep = 1;
    objc_msgSend_presentInternetWANPluginUI(v7, v30, v31, v32);
    objc_msgSend_setDelegate_(v7, v33, self, v34);

    objc_msgSend_pushViewController_animated_(self, v35, v7, 1);
  }
}

- (void)showAskUserSwapCablingForStatus:(int)status paramDict:(id)dict
{
  if (status == -6771)
  {
    v5 = objc_msgSend_currentSubController(self, a2, *&status, dict);

    MEMORY[0x2821F9670](v5, sel_presentSwapCablingCompleteUI, v6, v7);
  }

  else
  {
    v9 = [InternetViewController alloc];
    v11 = objc_msgSend_initWithNibName_bundle_(v9, v10, 0, 0);
    v14 = objc_msgSend_objectForKey_(dict, v12, @"kBSConfigurationSwapCabling_TargetBase", v13);
    if (v14)
    {
      v17 = v14;
      v18 = objc_msgSend_objectForKey_(dict, v15, @"kBSConfigurationSwapCabling_SourceBase", v16);
      if (v18)
      {
        v21 = v18;
        objc_msgSend_setCurrentSubController_(self, v19, v11, v20);
        v24 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEAC0], v22, v17, v23, @"kSBSKey_TargetBase", v21, @"kSBSKey_SourceBase", 0);
        v28 = objc_msgSend_currentSubController(self, v25, v26, v27);
        objc_msgSend_setInParamDict_(v28, v29, v24, v30);
        v34 = objc_msgSend_currentSubController(self, v31, v32, v33);
        objc_msgSend_setParentController_(v34, v35, self, v36);

        self->_currentUIConfigStep = 5;
        objc_msgSend_presentSwapCablingUI(v11, v37, v38, v39);
        objc_msgSend_setDelegate_(v11, v40, self, v41);

        objc_msgSend_pushViewController_animated_(self, v42, v11, 1);
      }
    }
  }
}

- (void)showTellUserToFixTheirInternetConnection
{
  v3 = [InternetViewController alloc];
  v5 = objc_msgSend_initWithNibName_bundle_(v3, v4, 0, 0);
  objc_msgSend_setCurrentSubController_(self, v6, v5, v7);
  v11 = objc_msgSend_currentSubController(self, v8, v9, v10);
  objc_msgSend_setParentController_(v11, v12, self, v13);

  objc_msgSend_pushViewController_animated_(self, v14, v5, 1);
}

- (void)handleNextButton:(id)button
{
  v5 = objc_msgSend_state(self->_assistantUIController, a2, button, v3);
  if (v5 > 5)
  {
    if (v5 == 7)
    {
      currentUIConfigStep = self->_currentUIConfigStep;
      if (currentUIConfigStep == 8)
      {

        MEMORY[0x2821F9670](self, sel_continueWithGuestNetSettings, v7, v8);
      }

      else if (currentUIConfigStep == 7)
      {

        MEMORY[0x2821F9670](self, sel_continueWithDiagsAndUsageStats, v7, v8);
      }
    }

    else if (v5 == 6)
    {
      v20 = self->_currentUIConfigStep;
      if (v20 > 4)
      {
        if (v20 == 5)
        {

          MEMORY[0x2821F9670](self, sel_continueWithSwapCabling, v7, v8);
        }

        else if (v20 == 6)
        {

          MEMORY[0x2821F9670](self, sel_skipPluginAudioCabling, v7, v8);
        }
      }

      else if (v20 == 1)
      {

        MEMORY[0x2821F9670](self, sel_confirmSkipWANPort, v7, v8);
      }

      else if (v20 == 3)
      {

        MEMORY[0x2821F9670](self, sel_continueWithPPPoESettings, v7, v8);
      }
    }
  }

  else
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        v9 = objc_msgSend_navigationController(self, v6, v7, v8);
        v16 = objc_msgSend_topViewController(v9, v10, v11, v12);
        if (dword_27E381018 <= 100 && (dword_27E381018 != -1 || sub_23EB74AC8(&dword_27E381018, 0x64u)))
        {
          sub_23EB75374(&dword_27E381018, "[AssistantUIViewController handleNextButton:]", 100, "GOING FORWARD from current controller %@\n", v16);
        }

        assistantUIController = self->_assistantUIController;
        v19 = objc_msgSend_outResultsDict(v16, v13, v14, v15);

        objc_msgSend_presentUIForStepByStepNextStepResult_withOptions_(assistantUIController, v18, 0, v19);
      }

      return;
    }

    v21 = objc_msgSend_navigationController(self, v6, v7, v8);
    v25 = objc_msgSend_topViewController(v21, v22, v23, v24);
    v29 = objc_msgSend_tableManager(v25, v26, v27, v28);
    v33 = objc_msgSend_tableManager(v25, v30, v31, v32);
    v36 = objc_msgSend_indexOfSectionWithIdentifier_(v33, v34, @"ActionTableSection", v35);
    v39 = objc_msgSend_tagOfSelectedRowInMenuSection_(v29, v37, v36, v38);
    self->_selectedActionTag = v39;
    if (v39 == 1349675373)
    {
      goto LABEL_22;
    }

    if (v39 != 1299149413)
    {
      if (v39)
      {
        return;
      }

LABEL_22:
      v43 = objc_msgSend_outResultsDict(v25, v40, v41, v42);

      MEMORY[0x2821F9670](self, sel_startSetup_, v43, v44);
      return;
    }

    v46 = self->_assistantUIController;

    MEMORY[0x2821F9670](v46, sel_startStepByStepFromAutoGuessRecommendation, v41, v42);
  }
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  self->_goingBack = 0;
  if (objc_msgSend_currentSubController(self, a2, controller, viewController, animated) && objc_msgSend_currentSubController(self, v8, v9, v10) != viewController)
  {
    v11 = objc_msgSend_viewControllers(controller, v8, v9, v10);
    v15 = objc_msgSend_currentSubController(self, v12, v13, v14);
    self->_goingBack = objc_msgSend_indexOfObject_(v11, v16, v15, v17) == 0x7FFFFFFFFFFFFFFFLL;
  }

  if (dword_27E381018 <= 100 && (dword_27E381018 != -1 || sub_23EB74AC8(&dword_27E381018, 0x64u)))
  {
    sub_23EB75374(&dword_27E381018, "[AssistantUIViewController navigationController:didShowViewController:animated:]", 100, "%@\n", viewController);
  }

  if (objc_msgSend_state(self->_assistantUIController, v8, v9, v10) == 3)
  {
    if (!self->_goingBack)
    {
      goto LABEL_26;
    }

    objc_msgSend_presentUIForStepByStepNextStepResult_withOptions_(self->_assistantUIController, v18, 4294960527, 0);
LABEL_19:
    if (dword_27E381018 <= 100 && (dword_27E381018 != -1 || sub_23EB74AC8(&dword_27E381018, 0x64u)))
    {
      v23 = objc_msgSend_currentSubController(self, v18, v19, v20);
      sub_23EB75374(&dword_27E381018, "[AssistantUIViewController navigationController:didShowViewController:animated:]", 100, "GOING BACKWARD from %@ to %@\n", v23, viewController);
    }

    goto LABEL_26;
  }

  if (objc_msgSend_state(self->_assistantUIController, v18, v19, v20) == 6)
  {
    if (!self->_goingBack)
    {
      goto LABEL_26;
    }

    currentUIConfigStep = self->_currentUIConfigStep;
    if ((currentUIConfigStep - 3) < 4 || currentUIConfigStep == 1)
    {
      objc_msgSend_presentUIForConnectionVerificationResult_withOptions_(self->_assistantUIController, v18, 4294960527, 0);
    }

    goto LABEL_19;
  }

  if (objc_msgSend_state(self->_assistantUIController, v18, v19, v20) == 7 && self->_goingBack)
  {
    objc_msgSend_showUIConfigPromptResult_withOptions_(self->_assistantUIController, v18, 4294960527, 0);
    objc_msgSend_showUIForSetupStatus(self, v24, v25, v26);
  }

LABEL_26:
  v27 = objc_msgSend_tableManager(self, v18, v19, v20);

  MEMORY[0x2821F9670](v27, sel_hideKeyboard, v28, v29);
}

- (void)touchInCellAtIndexPath:(id)path
{
  v5 = objc_msgSend_section(path, a2, path, v3);
  v9 = objc_msgSend_tableManager(self, v6, v7, v8);
  if (v5 == objc_msgSend_indexOfSectionWithIdentifier_(v9, v10, @"ShowPasswords", v11))
  {
    v15 = !self->showingPasswordsAtEnd;

    MEMORY[0x2821F9670](self, sel_setupCompleteShowPasswords_, v15, v14);
  }

  else
  {
    v16 = objc_msgSend_tableManager(self, v12, v13, v14);
    if (v5 == objc_msgSend_indexOfSectionWithIdentifier_(v16, v17, @"FindAppTableSection", v18))
    {
      mfiAccessoryResponseDict = self->_mfiAccessoryResponseDict;

      sub_23EC18B48(mfiAccessoryResponseDict);
    }
  }
}

- (void)assistantWaitingForResourcesStart
{
  v4 = objc_msgSend_cancelButton(self, a2, v2, v3);

  objc_msgSend_setEnabled_(v4, v5, 1, v6);
}

- (void)assistantWaitingForResourcesComplete
{
  v4 = objc_msgSend_cancelButton(self, a2, v2, v3);

  objc_msgSend_setEnabled_(v4, v5, 0, v6);
}

- (void)assistantUpdateProgress:(id)progress forState:(int)state
{
  v4 = *&state;
  if (state > 4)
  {
    if (state != 5)
    {
      if (state == 6)
      {
        goto LABEL_14;
      }

      if (state != 8)
      {
        return;
      }

      if (objc_msgSend_settingUpStatusText(self, a2, progress, *&state))
      {
        justTextLabel = self->justTextLabel;
        justTextContainerView = self->justTextContainerView;
        v16 = objc_msgSend_settingUpStatusText(self, a2, progress, *&state);
        sub_23EB5E054(justTextLabel, justTextContainerView, v16, v17);
        objc_msgSend_setSettingUpStatusText_(self, v18, 0, v19);
      }
    }

    if (!objc_msgSend_length(progress, a2, progress, *&state))
    {
      return;
    }

    goto LABEL_14;
  }

  if ((state - 3) < 2)
  {
    if (objc_msgSend_length(progress, a2, progress, *&state))
    {
      objc_msgSend_currentSubController(self, v7, v8, v9);
      if (objc_opt_respondsToSelector())
      {
        v13 = objc_msgSend_currentSubController(self, v10, v11, v12);

        MEMORY[0x2821F9670](v13, sel_stepByStepUpdateProgress_forState_, progress, v4);
      }
    }

    return;
  }

  if (state != 1)
  {
    return;
  }

LABEL_14:
  sub_23EB5E054(self->spinnerWithStatusBelowLabel, self->spinnerWithStatusBelowView, progress, *&state);
  tableHeaderContainerView = self->tableHeaderContainerView;

  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v20, tableHeaderContainerView, v21);
}

- (void)doneWithAssistantResult:(int)result
{
  v3 = *&result;
  if (dword_27E381018 <= 100 && (dword_27E381018 != -1 || sub_23EB74AC8(&dword_27E381018, 0x64u)))
  {
    sub_23EB75374(&dword_27E381018, "[AssistantUIViewController doneWithAssistantResult:]", 100, " result %d\n", v3);
  }

  v5 = self->_assistantUIController;
  objc_msgSend_set_assistantUIController_(self, v6, 0, v7);
  v11 = objc_msgSend_uiAlert(self, v8, v9, v10);
  objc_msgSend_dismissWithNoActionAnimated_(v11, v12, 1, v13);
  if (self->_assistantDelegate)
  {
    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_assistantCompleteWithResult_(self->_assistantDelegate, v14, v3, v15);
      self->_assistantDelegate = 0;
    }
  }
}

- (void)presentUIForRecommendationStatus
{
  v5 = objc_msgSend_tableManager(self, a2, v2, v3);
  objc_msgSend_cleanTableViewForReuse(v5, v6, v7, v8);
  justTextLabel = self->justTextLabel;
  justTextContainerView = self->justTextContainerView;
  v11 = sub_23EB6CD3C(@"CheckingOutYourNetwork", qword_27E383800);
  sub_23EB5E054(justTextLabel, justTextContainerView, v11, v12);
  spinnerWithStatusBelowLabel = self->spinnerWithStatusBelowLabel;
  spinnerWithStatusBelowView = self->spinnerWithStatusBelowView;
  v15 = sub_23EB6CD3C(@"kIntializingServicesString", qword_27E383800);
  sub_23EB5E054(spinnerWithStatusBelowLabel, spinnerWithStatusBelowView, v15, v16);
  if (!objc_msgSend_subviews(self->tableHeaderContainerView, v17, v18, v19))
  {
    tableHeaderContainerView = self->tableHeaderContainerView;
    v24 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v20, self->justTextContainerView, v22, self->spinnerWithStatusBelowView, 0);
    objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(self, v25, tableHeaderContainerView, v24, 1);
  }

  v26 = self->tableHeaderContainerView;
  v27 = objc_msgSend_tableView(self, v20, v21, v22);
  objc_msgSend_setTableHeaderView_(v27, v28, v26, v29);
  Button = objc_msgSend_nextButton(self, v30, v31, v32);
  objc_msgSend_setEnabled_(Button, v34, 0, v35);
  v39 = objc_msgSend_cancelButton(self, v36, v37, v38);
  objc_msgSend_setEnabled_(v39, v40, 1, v41);
  spinnerWithStatusBelowSpinner = self->spinnerWithStatusBelowSpinner;

  objc_msgSend_startAnimating(spinnerWithStatusBelowSpinner, v42, v43, v44);
}

- (void)presentUIForRecommmendationTargetInfo:(id)info
{
  if (dword_27E381018 <= 100 && (dword_27E381018 != -1 || sub_23EB74AC8(&dword_27E381018, 0x64u)))
  {
    sub_23EB75374(&dword_27E381018, "[AssistantUIViewController presentUIForRecommmendationTargetInfo:]", 100, "targetInfo: %@\n", info);
  }

  v6 = objc_msgSend_objectForKey_(info, a2, @"kRecommendationTargetInfoKey_ProductID", v3);
  v9 = objc_msgSend_objectForKey_(info, v7, @"kRecommendationTargetInfoKey_DeviceKind", v8);
  v16 = objc_msgSend_integerValue(v9, v10, v11, v12);
  if ((v16 - 3) > 1)
  {
    v20 = objc_msgSend_integerValue(v6, v13, v14, v15);
    v17 = sub_23EB6D7A8(v20, v16);
  }

  else
  {
    v17 = objc_msgSend_objectForKey_(info, v13, @"kRecommendationTargetInfoKey_BaseName", v15);
  }

  v21 = v17;
  v22 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v18, self->justTextContainerView, v19);
  v25 = v22;
  if ((v16 - 2) >= 3)
  {
    objc_msgSend_addObject_(v22, v23, self->topoView, v24);
  }

  objc_msgSend_addObject_(v25, v23, self->spinnerWithStatusBelowView, v24);
  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(self, v26, self->tableHeaderContainerView, v25, 1);
  tableHeaderContainerView = self->tableHeaderContainerView;
  v31 = objc_msgSend_tableView(self, v28, v29, v30);
  objc_msgSend_setTableHeaderView_(v31, v32, tableHeaderContainerView, v33);
  assistantUIController = self->_assistantUIController;
  v38 = objc_msgSend_layer(self->topoView, v35, v36, v37);
  v42 = objc_msgSend_topoLayout(self, v39, v40, v41);
  v46 = objc_msgSend_topoView(self, v43, v44, v45);
  v49 = objc_msgSend_modifyTopoUIInLayer_withLayout_andOwningView_targetProductID_targetDeviceKind_targetName_targetWiFiName_sourceProductID_sourceDeviceKind_sourceName_sourceWiFiName_connectionType_(assistantUIController, v47, v38, v42, v46, v6, v9, v21, 0, 0, 0, 0, 0, 0);

  objc_msgSend_setTopoLayout_(self, v48, v49, v50);
}

- (void)presentUIForRecommendationResult:(int)result paramDict:(id)dict
{
  if (result == -6723)
  {

    MEMORY[0x2821F9670](self, sel_doneWithAssistantResult_, 4294960573, dict);
  }

  else
  {
    self->_goingBack = 0;
    v7 = objc_msgSend_navigationController(self, a2, *&result, dict);
    if (objc_msgSend_topViewController(v7, v8, v9, v10) != self)
    {
      v14 = objc_msgSend_navigationController(self, v11, v12, v13);
      v18 = objc_msgSend_topViewController(v14, v15, v16, v17);
      objc_msgSend_setCurrentSubController_(self, v19, v18, v20);
    }

    v21 = objc_msgSend_navigationController(self, v11, v12, v13);
    v25 = objc_msgSend_topViewController(v21, v22, v23, v24);
    if (dict)
    {
      if (v25 == self)
      {
        objc_msgSend_setRecommendationParamDict_(self, v26, dict, v27);
        v30 = objc_msgSend_objectForKey_(dict, v28, @"promptString", v29);
        if (v30)
        {
          v34 = v30;
          v35 = objc_msgSend_cancelButton(self, v31, v32, v33);
          objc_msgSend_setEnabled_(v35, v36, 1, v37);
          objc_msgSend_stopAnimating(self->spinnerWithStatusBelowSpinner, v38, v39, v40);
          objc_msgSend_setText_(self->spinnerWithStatusBelowLabel, v41, &stru_285145FE8, v42);
          sub_23EB5E054(self->spinnerWithStatusBelowLabel, self->spinnerWithStatusBelowView, &stru_285145FE8, v43);
          sub_23EB5E054(self->justTextLabel, self->justTextContainerView, v34, v44);
          objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v45, self->tableHeaderContainerView, v46);
          tableHeaderContainerView = self->tableHeaderContainerView;
          v51 = objc_msgSend_tableView(self, v48, v49, v50);
          objc_msgSend_setTableHeaderView_(v51, v52, tableHeaderContainerView, v53);
          Button = objc_msgSend_nextButton(self, v54, v55, v56);
          objc_msgSend_setEnabled_(Button, v58, 0, v59);
          if (!result)
          {
            v93 = 0;
            v63 = objc_msgSend_guessCompleteDict(self->_assistantUIController, v60, v61, v62);
            v66 = objc_msgSend_primaryRecommendationDictionaryFromCompletionDict_(AutoGuessController, v64, v63, v65);
            v70 = objc_msgSend_sharedInstance(WiFiUtils, v67, v68, v69);
            v74 = objc_msgSend_unmergedScanInfoArray(v70, v71, v72, v73);
            if (!sub_23EBD9E90(v66, v74, &v93))
            {
              if (v93)
              {
                v77 = objc_msgSend_objectForKey_(v93, v75, @"kSBSKey_Step", v76);
                v81 = objc_msgSend_integerValue(v77, v78, v79, v80);
                v84 = objc_msgSend_newStepByStepControllerForStep_(self, v82, v81, v83);
                if (v84)
                {
                  v87 = v84;
                  objc_msgSend_setParentController_(v84, v85, self, v86);
                  objc_msgSend_setInParamDict_(v87, v88, v93, v89);

                  objc_msgSend_pushViewController_animated_(self, v90, v87, 0);
                  objc_msgSend_setCurrentSubController_(self, v91, v87, v92);
                }
              }
            }
          }
        }
      }
    }
  }
}

- (void)presentUIForStepByStepNextStep:(int)step paramDict:(id)dict
{
  v5 = *&step;
  if (dword_27E381018 <= 100 && (dword_27E381018 != -1 || sub_23EB74AC8(&dword_27E381018, 0x64u)))
  {
    sub_23EB75374(&dword_27E381018, "[AssistantUIViewController presentUIForStepByStepNextStep:paramDict:]", 100, "step: %d\n", v5);
  }

  if (self->_goingBack)
  {
    v7 = objc_msgSend_navigationController(self, a2, *&step, dict);
    v11 = objc_msgSend_topViewController(v7, v8, v9, v10);
    objc_msgSend_setCurrentSubController_(self, v12, v11, v13);
    self->_goingBack = 0;
    if (dword_27E381018 <= 100 && (dword_27E381018 != -1 || sub_23EB74AC8(&dword_27E381018, 0x64u)))
    {
      v17 = "going BACKWARD to %@\n";
LABEL_24:
      v67 = objc_msgSend_currentSubController(self, v14, v15, v16);
      sub_23EB75374(&dword_27E381018, "[AssistantUIViewController presentUIForStepByStepNextStep:paramDict:]", 100, v17, v67);
    }
  }

  else
  {
    v18 = objc_msgSend_newStepByStepControllerForStep_(self, a2, v5, dict);
    objc_msgSend_setParentController_(v18, v19, self, v20);
    objc_msgSend_setInParamDict_(v18, v21, dict, v22);
    v26 = objc_msgSend_currentSubController(self, v23, v24, v25);
    v30 = objc_msgSend_inParamDict(v26, v27, v28, v29);
    v33 = objc_msgSend_objectForKey_(v30, v31, @"kSBSKey_CannotBeBackedInto", v32);
    if (objc_msgSend_BOOLValue(v33, v34, v35, v36))
    {
      v40 = objc_msgSend_navigationController(self, v37, v38, v39);
      objc_msgSend_popViewControllerAnimated_(v40, v41, 0, v42);
    }

    if (objc_msgSend_currentSubController(self, v37, v38, v39) && (v46 = objc_msgSend_currentSubController(self, v43, v44, v45), v50 = objc_msgSend_inParamDict(v46, v47, v48, v49), v53 = objc_msgSend_objectForKey_(v50, v51, @"kSBSKey_Step", v52), objc_msgSend_integerValue(v53, v54, v55, v56) == v5))
    {
      v58 = objc_msgSend_navigationController(self, v43, v57, v45);
      objc_msgSend_popViewControllerAnimated_(v58, v59, 0, v60);
      if (dword_27E381018 <= 100 && (dword_27E381018 != -1 || sub_23EB74AC8(&dword_27E381018, 0x64u)))
      {
        sub_23EB75374(&dword_27E381018, "[AssistantUIViewController presentUIForStepByStepNextStep:paramDict:]", 100, "REPLACING step with same step %d\n", v5);
      }

      v61 = 0;
    }

    else
    {
      v61 = 1;
    }

    objc_msgSend_setCurrentSubController_(self, v43, v18, v45);

    v65 = objc_msgSend_currentSubController(self, v62, v63, v64);
    objc_msgSend_pushViewController_animated_(self, v66, v65, v61);
    if (dword_27E381018 <= 100 && (dword_27E381018 != -1 || sub_23EB74AC8(&dword_27E381018, 0x64u)))
    {
      v17 = "going FORWARD to %@\n";
      goto LABEL_24;
    }
  }
}

- (id)modifyTopoUIInLayer:(id)layer withLayout:(id)layout newLayout:(id)newLayout
{
  v6 = objc_msgSend_topoDevicesDescriptor(newLayout, a2, layer, layout);
  v10 = objc_msgSend_count(v6, v7, v8, v9);
  if (v10 == 2)
  {
    v27 = objc_msgSend_objectAtIndex_(v6, v11, 0, v13);
    v30 = objc_msgSend_valueForKey_(v27, v28, off_27E3830B8[0], v29);
    v33 = objc_msgSend_valueForKey_(v27, v31, off_27E3830C0[0], v32);
    v36 = objc_msgSend_valueForKey_(v27, v34, off_27E3830C8[0], v35);
    v39 = objc_msgSend_valueForKey_(v27, v37, off_27E3830D0[0], v38);
    v42 = objc_msgSend_objectAtIndex_(v6, v40, 1, v41);
    v17 = objc_msgSend_valueForKey_(v42, v43, off_27E3830B8[0], v44);
    v20 = objc_msgSend_valueForKey_(v42, v45, off_27E3830C0[0], v46);
    v23 = objc_msgSend_valueForKey_(v42, v47, off_27E3830C8[0], v48);
    v26 = objc_msgSend_valueForKey_(v42, v49, off_27E3830D0[0], v50);
    v53 = objc_msgSend_valueForKey_(v42, v51, off_27E3830D8[0], v52);
  }

  else
  {
    if (v10 == 1)
    {
      v14 = objc_msgSend_objectAtIndex_(v6, v11, 0, v13);
      v17 = objc_msgSend_valueForKey_(v14, v15, off_27E3830B8[0], v16);
      v20 = objc_msgSend_valueForKey_(v14, v18, off_27E3830C0[0], v19);
      v23 = objc_msgSend_valueForKey_(v14, v21, off_27E3830C8[0], v22);
      v26 = objc_msgSend_valueForKey_(v14, v24, off_27E3830D0[0], v25);
    }

    else
    {
      v17 = 0;
      v20 = 0;
      v26 = 0;
      v23 = 0;
    }

    v30 = 0;
    v33 = 0;
    v39 = 0;
    v36 = 0;
    v53 = 0;
  }

  selfCopy = self;
  assistantUIController = self->_assistantUIController;
  v56 = objc_msgSend_topoView(selfCopy, v11, v12, v13);
  return objc_msgSend_modifyTopoUIInLayer_withLayout_andOwningView_targetProductID_targetDeviceKind_targetName_targetWiFiName_sourceProductID_sourceDeviceKind_sourceName_sourceWiFiName_connectionType_(assistantUIController, v57, layer, layout, v56, v17, v20, v26, v23, v30, v33, v39, v36, v53);
}

- (void)connectionVerificationSucceededForSelector:(int)selector
{
  v5 = objc_msgSend_uiAlert(self, a2, *&selector, v3);
  objc_msgSend_dismissWithNoActionAnimated_(v5, v6, 1, v7);

  objc_msgSend_showUIForSetupStatus(self, v8, v9, v10);
}

- (void)presentUIForSetupStatusWithRecommendationDict:(id)dict
{
  v6 = objc_msgSend_objectForKey_(dict, a2, @"BSAutoGuess_Recommendation", v3);
  if (!v6)
  {
    return;
  }

  v9 = v6;
  v10 = objc_msgSend_objectForKey_(dict, v7, @"BSAutoGuess_UnconfiguredBase", v8);
  v13 = objc_msgSend_objectForKey_(dict, v11, @"BSAutoGuess_UnconfiguredNetwork", v12);
  if (v10)
  {
    v16 = sub_23EB6A2C0(v10);
    v17 = sub_23EB6A294(v10);
    v18 = v16;
  }

  else
  {
    v19 = v13;
    v20 = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, v14, v13, v15);
    v17 = objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v21, v19, v22);
    v18 = v20;
  }

  v23 = sub_23EB6CE6C(v18, v17);
  v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v24, @"%1$@.InProcess%2$@", v25, v9, v23);
  valid = sub_23EB6CD3C(v26, qword_27E383800);
  v31 = objc_msgSend_setupOptions(self->_assistantUIController, v28, v29, v30);
  v34 = objc_msgSend_objectForKey_(v31, v32, @"kBSAutoGuessSetupOptionKey_ExtendOption_JoinApple", v33);
  if (objc_msgSend_BOOLValue(v34, v35, v36, v37))
  {
    v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v38, @"%1$@.InProcess%2$@", v39, @"BSSetupRecommend_OfferJoinNetwork", v23);
  }

  if ((objc_msgSend_isEqualToString_(v9, v38, @"BSSetupRecommend_OfferExtendWirelessly", v39) & 1) == 0 && !objc_msgSend_isEqualToString_(v9, v40, @"BSSetupRecommend_AskUserChooseBaseWireless", v41))
  {
    if ((objc_msgSend_isEqualToString_(v9, v40, @"BSSetupRecommend_OfferExtendOverEthernet", v41) & 1) != 0 || objc_msgSend_isEqualToString_(v9, v52, @"BSSetupRecommend_AskUserChooseBaseWired", v53))
    {
      v54 = objc_msgSend_objectForKey_(dict, v52, @"BSAutoGuess_SourceBase", v53);
      if (v54)
      {
LABEL_18:
        v51 = objc_msgSend_valueForKey_(v54, v55, @"name", v57);
        goto LABEL_19;
      }

      v58 = objc_msgSend_setupOptions(self->_assistantUIController, v55, v56, v57);
      v54 = objc_msgSend_objectForKey_(v58, v59, @"kBSAutoGuessSetupOptionKey_SourceBase", v60);
    }

    else
    {
      if ((objc_msgSend_isEqualToString_(v9, v52, @"BSSetupRecommend_OfferCreate", v53) & 1) != 0 || objc_msgSend_isEqualToString_(v9, v120, @"BSSetupRecommend_OfferReplaceSourceIsUnconfigurable", v122))
      {
        v123 = objc_msgSend_setupOptions(self->_assistantUIController, v120, v121, v122);
        if (!objc_msgSend_objectForKey_(v123, v124, @"kBSAutoGuessSetupOptionKey_NetworkName", v125))
        {
          return;
        }

        goto LABEL_21;
      }

      if ((objc_msgSend_isEqualToString_(v9, v120, @"BSSetupRecommend_OfferJoinNetwork", v122) & 1) != 0 || objc_msgSend_isEqualToString_(v9, v126, @"BSSetupRecommend_AskUserChooseNetworkToJoin", v128))
      {
        v129 = objc_msgSend_setupOptions(self->_assistantUIController, v126, v127, v128);
        v132 = objc_msgSend_objectForKey_(v129, v130, @"kBSAutoGuessSetupOptionKey_SourceNetwork", v131);
        if (!v132)
        {
          v132 = objc_msgSend_objectForKey_(dict, v133, @"BSAutoGuess_SourceNetwork", v134);
          if (!v132)
          {
            return;
          }
        }

        v51 = objc_msgSend_scanInfoNetworkName_(WiFiUtils, v133, v132, v134);
        goto LABEL_19;
      }

      if (objc_msgSend_isEqualToString_(v9, v126, @"BSSetupRecommend_OfferRestore", v128) & 1) != 0 || (objc_msgSend_isEqualToString_(v9, v64, @"BSSetupRecommend_OfferReplaceConfiguration", v65))
      {
        goto LABEL_21;
      }

      if (!objc_msgSend_isEqualToString_(v9, v64, @"BSSetupRecommend_OfferReplace", v65))
      {
        return;
      }

      v54 = objc_msgSend_objectForKey_(dict, v135, @"BSAutoGuess_SourceBase", v136);
    }

    if (!v54)
    {
      return;
    }

    goto LABEL_18;
  }

  v42 = objc_msgSend_objectForKey_(dict, v40, @"BSAutoGuess_SourceBase", v41);
  if (!v42)
  {
    v46 = objc_msgSend_setupOptions(self->_assistantUIController, v43, v44, v45);
    v42 = objc_msgSend_objectForKey_(v46, v47, @"kBSAutoGuessSetupOptionKey_SourceBase", v48);
    if (!v42)
    {
      return;
    }
  }

  v49 = v42;
  v50 = objc_msgSend_valueForKey_(v42, v43, @"raNm", v45);
  if (v50)
  {
    goto LABEL_20;
  }

  v51 = sub_23EB6AE14(v49);
LABEL_19:
  v50 = v51;
LABEL_20:
  v61 = MEMORY[0x277CCACA8];
  v62 = sub_23EB6CD3C(v26, qword_27E383800);
  valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v61, v63, v62, @"%@", 0, v50);
LABEL_21:
  objc_msgSend_setSettingUpStatusText_(self, v64, valid, v65);
  v69 = objc_msgSend_navigationController(self, v66, v67, v68);
  v73 = objc_msgSend_topViewController(v69, v70, v71, v72);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v77 = objc_msgSend_topoLayout(v73, v74, v75, v76);
    v81 = objc_msgSend_topoLayout(self, v78, v79, v80);
    v85 = objc_msgSend_layer(self->topoView, v82, v83, v84);
    objc_msgSend_modifyTopoUIInLayer_withLayout_newLayout_(self, v86, v85, v81, v77);
    if (objc_opt_respondsToSelector())
    {
      justTextLabel = self->justTextLabel;
      justTextContainerView = self->justTextContainerView;
      v89 = objc_msgSend_performSelector_(v73, v74, sel_justTextLabel, v76);
      v93 = objc_msgSend_text(v89, v90, v91, v92);
      sub_23EB5E054(justTextLabel, justTextContainerView, v93, v94);
    }
  }

  objc_msgSend_showUIForSetupStatus(self, v74, v75, v76);
  v95 = sub_23EB6CD3C(@"kDone", qword_27E383800);
  Button = objc_msgSend_nextButton(self, v96, v97, v98);
  objc_msgSend_setTitle_(Button, v100, v95, v101);
  v105 = objc_msgSend_nextButton(self, v102, v103, v104);
  objc_msgSend_setStyle_(v105, v106, 2, v107);
  v111 = objc_msgSend_nextButton(self, v108, v109, v110);
  objc_msgSend_setEnabled_(v111, v112, 0, v113);
  v117 = objc_msgSend_cancelButton(self, v114, v115, v116);

  objc_msgSend_setEnabled_(v117, v118, 0, v119);
}

- (void)presentUIForSetupResult:(int)result baseStationInfo:(id)info withPrompt:(id)prompt
{
  infoCopy = info;
  sub_23EB5E054(self->justTextLabel, self->justTextContainerView, &stru_285145FE8, info);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v9, self->tableHeaderContainerView, v10);
  if (result == -6769)
  {
LABEL_11:
    v46 = objc_msgSend_cancelButton(self, v11, v12, v13);
    objc_msgSend_setEnabled_(v46, v47, 1, v48);
    objc_msgSend_stopAnimating(self->spinnerWithStatusBelowSpinner, v49, v50, v51);
    spinnerWithStatusBelowLabel = self->spinnerWithStatusBelowLabel;
    spinnerWithStatusBelowView = self->spinnerWithStatusBelowView;

    sub_23EB5E054(spinnerWithStatusBelowLabel, spinnerWithStatusBelowView, &stru_285145FE8, v52);
    return;
  }

  if (result)
  {
    if (result == -6723)
    {
      objc_msgSend_handleCancelButton_(self, v11, 0, v13);
    }

    else
    {
      sub_23EB5E054(self->justTextLabel, self->justTextContainerView, prompt, v13);
      objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v44, self->tableHeaderContainerView, v45);
    }

    goto LABEL_11;
  }

  v14 = objc_msgSend_objectForKey_(infoCopy, v11, @"kSetupBaseStationInfoKey_RecommendationInfo", v13);
  v17 = objc_msgSend_objectForKey_(v14, v15, @"BSAutoGuess_Recommendation", v16);
  if (objc_msgSend_isEqualToString_(v17, v18, @"BSSetupRecommend_OfferReplaceSourceIsUnconfigurable", v19))
  {
    v217 = infoCopy;
    v216 = sub_23EB6CD3C(@"TextualSentenceConcatenator", qword_27E383800);
    v23 = objc_msgSend_objectForKey_(v14, v21, @"BSAutoGuess_SourceBase", v22);
    v24 = sub_23EB6AE14(v23);
    v28 = objc_msgSend_setupOptions(self->_assistantUIController, v25, v26, v27);
    v31 = objc_msgSend_objectForKey_(v28, v29, @"kBSAutoGuessSetupOptionKey_BaseName", v30);
    v35 = objc_msgSend_length(v24, v32, v33, v34);
    v39 = objc_msgSend_length(v31, v36, v37, v38);
    if (v35 && v39 && !objc_msgSend_isEqualToString_(v24, v40, v31, v41))
    {
      v55 = sub_23EB6CD3C(@"RestoreDefaultsReplacedNamed", @"AirPortSettings");
      valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v56, v55, @"%@", 0, v24);
    }

    else
    {
      valid = sub_23EB6CD3C(@"RestoreDefaultsReplaced", @"AirPortSettings");
    }

    prompt = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v43, v216, @"%@%@", 0, prompt, valid);
    infoCopy = v217;
  }

  sub_23EB5E054(self->justTextLabel, self->justTextContainerView, prompt, v20);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v57, self->tableHeaderContainerView, v58);
  v62 = objc_msgSend_tableManager(self, v59, v60, v61);
  objc_msgSend_cleanTableViewForReuse(v62, v63, v64, v65);
  v68 = objc_msgSend_objectForKey_(infoCopy, v66, @"kSetupBaseStationInfoKey_BrowseRecord", v67);
  v72 = sub_23EB6A1FC(v68) != 2 && sub_23EB6A1FC(v68) != 3 && sub_23EB6A1FC(v68) != 4;
  v73 = objc_msgSend_callerParamDict(self, v69, v70, v71);
  if (v73)
  {
    v77 = objc_msgSend_callerParamDict(self, v74, v75, v76);
    v80 = objc_msgSend_objectForKey_(v77, v78, @"wacShouldHideFindAppUI", v79);
    LODWORD(v73) = objc_msgSend_BOOLValue(v80, v81, v82, v83);
  }

  if (((v72 | v73) & 1) == 0)
  {
    v84 = objc_msgSend_objectForKey_(infoCopy, v74, @"kSetupBaseStationInfoKey_MFiAccessoryResponse", v76);
    self->_mfiAccessoryResponseDict = v84;
    if (v84)
    {
      if (sub_23EC18B08(v84))
      {
        v85 = objc_msgSend_array(MEMORY[0x277CBEB18], v74, v75, v76);
        v89 = objc_msgSend_tableManager(self, v86, v87, v88);
        v90 = sub_23EB6CD3C(@"FindAppForAccessory", @"AirPortSettings");
        RowStyleBasicWholeCellButton_withTag = objc_msgSend_createRowStyleBasicWholeCellButton_withTag_(v89, v91, v90, 1097887809);
        objc_msgSend_addObject_(v85, v93, RowStyleBasicWholeCellButton_withTag, v94);
        v98 = objc_msgSend_tableManager(self, v95, v96, v97);
        v101 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v99, v85, v100, @"sectionRows", @"FindAppTableSection", @"identifier", 0);
        objc_msgSend_addSectionInfo_(v98, v102, v101, v103);
      }
    }
  }

  v104 = objc_msgSend_array(MEMORY[0x277CBEB18], v74, v75, v76);
  v108 = objc_msgSend_text(self->justTextLabel, v105, v106, v107);
  if (objc_msgSend_length(v108, v109, v110, v111))
  {
    objc_msgSend_addObject_(v104, v112, self->justTextContainerView, v113);
  }

  if (v72)
  {
    objc_msgSend_addObject_(v104, v112, self->topoView, v113);
  }

  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(self, v112, self->tableHeaderContainerView, v104, 1);
  tableHeaderContainerView = self->tableHeaderContainerView;
  v118 = objc_msgSend_tableView(self, v115, v116, v117);
  objc_msgSend_setTableHeaderView_(v118, v119, tableHeaderContainerView, v120);
  v121 = sub_23EB6CD3C(@"kDone", qword_27E383800);
  Button = objc_msgSend_nextButton(self, v122, v123, v124);
  objc_msgSend_setTitle_(Button, v126, v121, v127);
  v131 = objc_msgSend_nextButton(self, v128, v129, v130);
  objc_msgSend_setStyle_(v131, v132, 2, v133);
  v137 = objc_msgSend_nextButton(self, v134, v135, v136);
  objc_msgSend_setEnabled_(v137, v138, 1, v139);
  v143 = objc_msgSend_nextButton(self, v140, v141, v142);
  objc_msgSend_setAction_(v143, v144, sel_baseStationConfigurationComplete_, v145);
  v146 = sub_23EB6CD3C(@"SetupCompleteTitle", qword_27E383800);
  v150 = objc_msgSend_navigationItem(self, v147, v148, v149);
  objc_msgSend_setTitle_(v150, v151, v146, v152);
  v156 = objc_msgSend_navigationItem(self, v153, v154, v155);
  objc_msgSend_setLeftBarButtonItem_(v156, v157, 0, v158);
  v161 = objc_msgSend_objectForKey_(infoCopy, v159, @"kSetupBaseStationInfoKey_GeneralInfo", v160);
  v162 = sub_23EB6CDF8(1937330263);
  v168 = objc_msgSend_objectForKey_(v161, v163, v162, v164);
  if (v168)
  {
    v169 = objc_msgSend_setupOptions(self->_assistantUIController, v165, v166, v167);
    objc_msgSend_setObject_forKey_(v169, v170, v168, @"kBSAutoGuessSetupOptionKey_BasePassword");
  }

  v171 = objc_msgSend_objectForKey_(infoCopy, v165, @"kSetupBaseStationInfoKey_RadioInfo", v167);
  v172 = sub_23EB6CDF8(1651725131);
  if (objc_msgSend_objectForKey_(v171, v173, v172, v174))
  {
    v178 = objc_msgSend_setupOptions(self->_assistantUIController, v175, v176, v177);
    v181 = objc_msgSend_objectForKey_(infoCopy, v179, @"kSetupBaseStationInfoKey_RadioInfo", v180);
    v182 = sub_23EB6CDF8(1651725131);
    v185 = objc_msgSend_objectForKey_(v181, v183, v182, v184);
    objc_msgSend_setObject_forKey_(v178, v186, v185, @"kBSAutoGuessSetupOptionKey_NetworkPassword");
  }

  if (objc_msgSend_objectForKey_(infoCopy, v175, @"kSetupBaseStationInfoKey_DiskInfo", v177))
  {
    v190 = objc_msgSend_objectForKey_(infoCopy, v187, @"kSetupBaseStationInfoKey_DiskInfo", v189);
    v191 = sub_23EB6CDF8(1718842224);
    v194 = objc_msgSend_objectForKey_(v190, v192, v191, v193);
    if (v194)
    {
      v168 = v194;
    }

    v198 = objc_msgSend_setupOptions(self->_assistantUIController, v195, v196, v197);
    objc_msgSend_setObject_forKey_(v198, v199, v168, @"kBSAutoGuessSetupOptionKey_DiskSharing_Password");
  }

  else
  {
    v202 = objc_msgSend_setupOptions(self->_assistantUIController, v187, v188, v189);
    objc_msgSend_removeObjectForKey_(v202, v203, @"kBSAutoGuessSetupOptionKey_DiskSharing_Password", v204);
  }

  v205 = objc_msgSend_objectForKey_(infoCopy, v200, @"kSetupBaseStationInfoKey_GuestNetworkInfo", v201);
  v206 = sub_23EB6CDF8(1651722064);
  v209 = objc_msgSend_objectForKey_(v205, v207, v206, v208);
  if (v209)
  {
    v213 = v209;
    v214 = objc_msgSend_setupOptions(self->_assistantUIController, v210, v211, v212);

    objc_msgSend_setObject_forKey_(v214, v215, v213, @"kBSAutoGuessSetupOptionKey_GuestNetwork_Password");
  }
}

- (id)valueForItemOfType:(id)type atTypeIndex:(unint64_t)index inCellWithTag:(int64_t)tag
{
  if (tag > 1196314742)
  {
    if (tag == 1196314743)
    {
      v5 = @"kBSAutoGuessSetupOptionKey_GuestNetwork_Password";
      goto LABEL_11;
    }

    if (tag == 1464225889)
    {
      v5 = @"kBSAutoGuessSetupOptionKey_NetworkPassword";
      goto LABEL_11;
    }

    return &stru_285145FE8;
  }

  if (tag == 1113673825)
  {
    v5 = @"kBSAutoGuessSetupOptionKey_BasePassword";
    goto LABEL_11;
  }

  if (tag != 1147752545)
  {
    return &stru_285145FE8;
  }

  v5 = @"kBSAutoGuessSetupOptionKey_DiskSharing_Password";
LABEL_11:
  v7 = objc_msgSend_setupOptions(self->_assistantUIController, a2, type, index);

  return objc_msgSend_objectForKey_(v7, v8, v5, v9);
}

- (void)presentWaitingForWANViewWithContinueText:(BOOL)text
{
  v4 = [InternetViewController alloc];
  v6 = objc_msgSend_initWithNibName_bundle_(v4, v5, 0, 0);
  v10 = objc_msgSend_guessCompleteDict(self->_assistantUIController, v7, v8, v9);
  v13 = objc_msgSend_unconfiguredBaseStationFromGuessCompleteDict_(AutoGuessController, v11, v10, v12);
  if (v13)
  {
    v16 = v13;
    objc_msgSend_setCurrentSubController_(self, v14, v6, v15);
    v20 = objc_msgSend_currentSubController(self, v17, v18, v19);
    objc_msgSend_setInParamDict_(v20, v21, v16, v22);
    v26 = objc_msgSend_currentSubController(self, v23, v24, v25);
    objc_msgSend_setParentController_(v26, v27, self, v28);

    self->_currentUIConfigStep = 1;
    objc_msgSend_presentInternetWANPluginUI(v6, v29, v30, v31);
    objc_msgSend_setDelegate_(v6, v32, self, v33);

    objc_msgSend_pushViewController_animated_(self, v34, v6, 1);
  }
}

- (void)replaceSubviewsInView:(id)view newSubviews:(id)subviews withAnimation:(BOOL)animation
{
  subviewsCopy = subviews;
  v97 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_count(subviews, a2, view, subviews, animation);
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v11 = objc_msgSend_subviews(view, v8, v9, v10);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v92, v96, 16);
  if (v13)
  {
    v17 = v13;
    v18 = *v93;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v93 != v18)
        {
          objc_enumerationMutation(v11);
        }

        objc_msgSend_removeFromSuperview(*(*(&v92 + 1) + 8 * i), v14, v15, v16);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v92, v96, 16);
    }

    while (v17);
  }

  if (v7)
  {
    Object = objc_msgSend_firstObject(subviewsCopy, v14, v15, v16);
    LODWORD(v21) = 1148846080;
    objc_msgSend_setContentCompressionResistancePriority_forAxis_(Object, v22, 1, v23, v21);
    objc_msgSend_addSubview_(view, v24, Object, v25);
    v26 = MEMORY[0x277CCAAD0];
    v27 = _NSDictionaryOfVariableBindings(&cfstr_Cursubview.isa, Object, 0);
    v29 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v26, v28, @"H:|[curSubview]|", 0, 0, v27);
    objc_msgSend_addConstraints_(view, v30, v29, v31);
    v32 = MEMORY[0x277CCAAD0];
    v33 = _NSDictionaryOfVariableBindings(&cfstr_Cursubview.isa, Object, 0);
    v35 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v32, v34, @"V:|[curSubview]", 0, 0, v33);
    objc_msgSend_addConstraints_(view, v36, v35, v37);
    v38 = *MEMORY[0x277D76C80];
    v39 = *(MEMORY[0x277D76C80] + 8);
    objc_msgSend_systemLayoutSizeFittingSize_(Object, v40, v41, v42, *MEMORY[0x277D76C80], v39);
    v44 = v43 + 0.0;
    if ((v7 - 1) >= 2)
    {
      v45 = v7 - 2;
      v46 = 1;
      v47 = Object;
      do
      {
        Object = objc_msgSend_objectAtIndex_(subviewsCopy, v14, v46, v16);
        objc_msgSend_addSubview_(view, v48, Object, v49);
        v50 = subviewsCopy;
        v51 = MEMORY[0x277CCAAD0];
        v52 = _NSDictionaryOfVariableBindings(&cfstr_Cursubview.isa, Object, 0);
        v54 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v51, v53, @"H:|[curSubview]|", 0, 0, v52);
        objc_msgSend_addConstraints_(view, v55, v54, v56);
        v57 = MEMORY[0x277CCAAD0];
        v58 = _NSDictionaryOfVariableBindings(&cfstr_Previoussubvie.isa, v47, Object, 0);
        v59 = v57;
        subviewsCopy = v50;
        v61 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v59, v60, @"V:[previousSubview][curSubview]", 0, 0, v58);
        objc_msgSend_addConstraints_(view, v62, v61, v63);
        objc_msgSend_systemLayoutSizeFittingSize_(Object, v64, v65, v66, v38, v39);
        v44 = v44 + v67;
        ++v46;
        v47 = Object;
        --v45;
      }

      while (v45);
      goto LABEL_15;
    }

    if (v7 != 1)
    {
LABEL_15:
      v68 = objc_msgSend_lastObject(subviewsCopy, v14, v15, v16);
      objc_msgSend_addSubview_(view, v69, v68, v70);
      v71 = MEMORY[0x277CCAAD0];
      v72 = _NSDictionaryOfVariableBindings(&cfstr_Cursubview.isa, v68, 0);
      v74 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v71, v73, @"H:|[curSubview]|", 0, 0, v72);
      objc_msgSend_addConstraints_(view, v75, v74, v76);
      v77 = MEMORY[0x277CCAAD0];
      v78 = _NSDictionaryOfVariableBindings(&cfstr_Previoussubvie.isa, Object, v68, 0);
      v80 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v77, v79, @"V:[previousSubview][curSubview]|", 0, 0, v78);
      objc_msgSend_addConstraints_(view, v81, v80, v82);
      objc_msgSend_systemLayoutSizeFittingSize_(v68, v83, v84, v85, v38, v39);
    }
  }

  objc_msgSend_frame(view, v14, v15, v16);
  objc_msgSend_setFrame_(view, v86, v87, v88);
  objc_msgSend_setNeedsLayout(view, v89, v90, v91);
}

- (id)newStepByStepControllerForStep:(int)step
{
  v3 = &off_278C66C98;
  v4 = 15;
  while (*(v3 - 2) != step)
  {
    v3 += 2;
    if (!--v4)
    {
      return 0;
    }
  }

  v6 = objc_alloc(NSClassFromString(*v3));

  return objc_msgSend_initWithNibName_bundle_(v6, v7, 0, 0);
}

- (void)popToRootViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = objc_msgSend_navigationController(self, a2, animated, v3);
  v10 = v6;
  if (animatedCopy)
  {
    v11 = objc_msgSend_viewControllers(v6, v7, v8, v9);
    if (objc_msgSend_count(v11, v12, v13, v14) >= 2)
    {
      v17 = objc_msgSend_objectAtIndex_(v11, v15, 0, v16);
      v18 = MEMORY[0x277CBEB18];
      v22 = objc_msgSend_topViewController(v10, v19, v20, v21);
      v25 = objc_msgSend_arrayWithObject_(v18, v23, v22, v24);
      objc_msgSend_setViewControllers_animated_(v10, v26, v25, 0);
      objc_msgSend_removeAllObjects(v25, v27, v28, v29);
      objc_msgSend_addObject_(v25, v30, v17, v31);
      objc_msgSend_setViewControllers_animated_(v10, v32, v25, 1);
    }
  }

  else
  {
    objc_msgSend_popToRootViewControllerAnimated_(v6, v7, 0, v9);
  }

  objc_msgSend_setCurrentSubController_(self, v15, 0, v16);
  self->_goingBack = 0;
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = objc_msgSend_navigationController(self, a2, controller, animated);

  objc_msgSend_pushViewController_animated_(v6, v7, controller, animatedCopy);
}

- (void)confirmSkipWANPort
{
  v5 = objc_msgSend_guessCompleteDict(self->_assistantUIController, a2, v2, v3);
  v8 = objc_msgSend_unconfiguredBaseStationFromGuessCompleteDict_(AutoGuessController, v6, v5, v7);
  v12 = objc_msgSend_currentSubController(self, v9, v10, v11);
  if (v12 && objc_msgSend_internetFlow(v12, v13, v14, v15) == 1)
  {
    v16 = @"ConnectionVerificationMessage1";
  }

  else
  {
    v16 = @"ConnectionVerificationMessage2";
  }

  v17 = sub_23EB6CD3C(v16, qword_27E383800);
  v18 = MEMORY[0x277CCACA8];
  v19 = sub_23EB6A2C0(v8);
  v20 = sub_23EB6A294(v8);
  v21 = sub_23EB6CEE0(v19, v20, 0);
  valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v18, v22, v17, @"%@", 0, v21);
  v24 = [AUUIAlert alloc];
  v27 = objc_msgSend_initWithViewController_(v24, v25, self, v26);
  objc_msgSend_setUiAlert_(self, v28, v27, v29);
  v30 = sub_23EB6CD3C(@"NoInternetConnection", qword_27E383800);
  objc_msgSend_setTitle_(self->uiAlert, v31, v30, v32);
  objc_msgSend_setMessage_(self->uiAlert, v33, valid, v34);
  objc_msgSend_setDelegate_(self->uiAlert, v35, self, v36);
  v37 = sub_23EB6CD3C(@"ContinueAnyway", qword_27E383800);
  objc_msgSend_setOkButtonTitle_(self->uiAlert, v38, v37, v39);
  v40 = sub_23EB6CD3C(@"ReviewSettings", qword_27E383800);
  objc_msgSend_setCancelButtonTitle_(self->uiAlert, v41, v40, v42);
  objc_msgSend_setTag_(self->uiAlert, v43, 4000, v44);
  objc_msgSend_setStackButtons_(self->uiAlert, v45, 1, v46);
  uiAlert = self->uiAlert;

  objc_msgSend_show(uiAlert, v47, v48, v49);
}

- (void)skipWANPort
{
  objc_msgSend_presentUIForConnectionVerificationResult_withOptions_(self->_assistantUIController, a2, 4294960539, 0);

  objc_msgSend_showUIForSetupStatus(self, v3, v4, v5);
}

- (void)continueWithPPPoESettings
{
  assistantUIController = self->_assistantUIController;
  v6 = objc_msgSend_currentSubController(self, a2, v2, v3);
  v10 = objc_msgSend_outResultsDict(v6, v7, v8, v9);
  objc_msgSend_presentUIForConnectionVerificationResult_withOptions_(assistantUIController, v11, 0, v10);

  objc_msgSend_showUIForSetupStatus(self, v12, v13, v14);
}

- (void)continueWithDiagsAndUsageStats
{
  assistantUIController = self->_assistantUIController;
  v6 = objc_msgSend_currentSubController(self, a2, v2, v3);
  v10 = objc_msgSend_outResultsDict(v6, v7, v8, v9);
  objc_msgSend_showUIConfigPromptResult_withOptions_(assistantUIController, v11, 0, v10);

  objc_msgSend_showUIForSetupStatus(self, v12, v13, v14);
}

- (void)continueWithGuestNetSettings
{
  v14 = 0;
  v5 = objc_msgSend_currentSubController(self, a2, v2, v3);
  v9 = objc_msgSend_outResultsDict(v5, v6, v7, v8);
  sub_23EBD8FF8(v9, &v14);
  objc_msgSend_showUIConfigPromptResult_withOptions_(self->_assistantUIController, v10, 0, v14);

  objc_msgSend_showUIForSetupStatus(self, v11, v12, v13);
}

- (void)continueWithSwapCabling
{
  objc_msgSend_presentUIForConnectionVerificationResult_withOptions_(self->_assistantUIController, a2, 4294960525, 0);

  objc_msgSend_showUIForSetupStatus(self, v3, v4, v5);
}

- (void)skipPluginAudioCabling
{
  objc_msgSend_presentUIForConnectionVerificationResult_withOptions_(self->_assistantUIController, a2, 4294960539, 0);

  objc_msgSend_showUIForSetupStatus(self, v3, v4, v5);
}

- (void)showUIForSetupStatus
{
  if (dword_27E381018 <= 100 && (dword_27E381018 != -1 || sub_23EB74AC8(&dword_27E381018, 0x64u)))
  {
    sub_23EB75374(&dword_27E381018, "[AssistantUIViewController(private) showUIForSetupStatus]", 100, "\n");
  }

  v5 = objc_msgSend_currentSubController(self, a2, v2, v3);
  v9 = objc_msgSend_tableManager(v5, v6, v7, v8);
  objc_msgSend_cleanTableViewForReuse(v9, v10, v11, v12);
  objc_msgSend_popToRootViewControllerAnimated_(self, v13, 0, v14);
  v18 = objc_msgSend_guessCompleteDict(self->_assistantUIController, v15, v16, v17);
  if (v18)
  {
    v21 = objc_msgSend_primaryRecommendationDictionaryFromCompletionDict_(AutoGuessController, v19, v18, v20);
    v24 = objc_msgSend_valueForKey_(v21, v22, @"BSAutoGuess_UnconfiguredBase", v23);
  }

  else
  {
    v21 = 0;
    v24 = objc_msgSend_valueForKey_(0, v19, @"BSAutoGuess_UnconfiguredBase", v20);
  }

  if (v24)
  {
    v27 = sub_23EB6A294(v24);
  }

  else
  {
    v28 = objc_msgSend_valueForKey_(v21, v25, @"BSAutoGuess_UnconfiguredNetwork", v26);
    v27 = objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v29, v28, v30);
  }

  v31 = v27;
  v32 = sub_23EB6D2F0(v27);
  v33 = sub_23EB6CD3C(v32, qword_27E383800);
  v37 = objc_msgSend_navigationItem(self, v34, v35, v36);
  objc_msgSend_setTitle_(v37, v38, v33, v39);
  v42 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v40, self->justTextContainerView, v41);
  v45 = v42;
  if ((v31 - 2) >= 3)
  {
    objc_msgSend_addObject_(v42, v43, self->topoView, v44);
  }

  objc_msgSend_addObject_(v45, v43, self->spinnerWithStatusBelowView, v44);
  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(self, v46, self->tableHeaderContainerView, v45, 1);
  tableHeaderContainerView = self->tableHeaderContainerView;
  v51 = objc_msgSend_tableView(self, v48, v49, v50);
  objc_msgSend_setTableHeaderView_(v51, v52, tableHeaderContainerView, v53);
  spinnerWithStatusBelowSpinner = self->spinnerWithStatusBelowSpinner;

  objc_msgSend_startAnimating(spinnerWithStatusBelowSpinner, v54, v55, v56);
}

- (BOOL)disablesAutomaticKeyboardDismissal
{
  v3.receiver = self;
  v3.super_class = AssistantUIViewController;
  [(AssistantUIViewController *)&v3 disablesAutomaticKeyboardDismissal];
  return 0;
}

- (void)setupCompleteShowPasswords:(BOOL)passwords
{
  if (!passwords)
  {
    goto LABEL_13;
  }

  v5 = objc_msgSend_tableManager(self, a2, passwords, v3);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v5, v6, @"ShowPasswords", v7) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = objc_msgSend_tableManager(self, v8, v9, v10);
    objc_msgSend_deleteSectionWithIdentifier_(v11, v12, @"ShowPasswords", v13);
  }

  v14 = objc_msgSend_tableManager(self, v8, v9, v10);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v14, v15, @"PasswordsTableSection", v16) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, passwords, v3);
    v21 = objc_msgSend_tableManager(self, v18, v19, v20);
    v22 = sub_23EB6CD3C(@"WiFiPasswordLabel", qword_27E383800);
    RowStyleBasicWithImage_text1_text2_withTag = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v21, v23, 0, v22, @"dynamicValue", 1464225889);
    objc_msgSend_addObject_(v17, v25, RowStyleBasicWithImage_text1_text2_withTag, v26);
    v30 = objc_msgSend_tableManager(self, v27, v28, v29);
    v31 = sub_23EB6CD3C(@"BasePasswordLabel", qword_27E383800);
    v33 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v30, v32, 0, v31, @"dynamicValue", 1113673825);
    objc_msgSend_addObject_(v17, v34, v33, v35);
    v39 = objc_msgSend_setupOptions(self->_assistantUIController, v36, v37, v38);
    if (objc_msgSend_valueForKey_(v39, v40, @"kBSAutoGuessSetupOptionKey_DiskSharing_Password", v41) && objc_msgSend_valueForItemOfType_atTypeIndex_inCellWithTag_(self, v42, @"editTextView", 0, 1147752545))
    {
      v45 = objc_msgSend_tableManager(self, v42, v43, v44);
      v46 = sub_23EB6CD3C(@"DiskPasswordLabel", qword_27E383800);
      v48 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v45, v47, 0, v46, @"dynamicValue", 1147752545);
      objc_msgSend_addObject_(v17, v49, v48, v50);
    }

    if (objc_msgSend_valueForItemOfType_atTypeIndex_inCellWithTag_(self, v42, @"editTextView", 0, 1196314743))
    {
      v54 = objc_msgSend_tableManager(self, v51, v52, v53);
      v55 = sub_23EB6CD3C(@"GuestNetPasswordLabel", qword_27E383800);
      v57 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v54, v56, 0, v55, @"dynamicValue", 1196314743);
      objc_msgSend_addObject_(v17, v58, v57, v59);
    }

    v60 = objc_msgSend_tableManager(self, v51, v52, v53);
    v64 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v61, v17, v62, @"sectionRows", @"PasswordsTableSection", @"identifier", 0);

    objc_msgSend_addSectionInfo_(v60, v63, v64, v65);
  }

  else
  {
LABEL_13:
    v66 = objc_msgSend_tableManager(self, a2, passwords, v3);

    objc_msgSend_deleteSectionWithIdentifier_(v66, v67, @"PasswordsTableSection", v68);
  }
}

- (void)handleCancelRequest:(BOOL)request
{
  requestCopy = request;
  objc_msgSend_setEnabled_(self->cancelButton, a2, 0, v3);
  objc_msgSend_setEnabled_(self->nextButton, v6, 0, v7);
  v12 = objc_msgSend_cancelCurrentAssistantState_(self->_assistantUIController, v8, requestCopy, v9);
  if (dword_27E381018 <= 100 && (dword_27E381018 != -1 || sub_23EB74AC8(&dword_27E381018, 0x64u)))
  {
    sub_23EB75374(&dword_27E381018, "[AssistantUIViewController(private) handleCancelRequest:]", 100, "cancelCurrentAssistantState err: %m\n", v12);
  }

  if (requestCopy || v12 != -6771)
  {
    v16 = objc_msgSend_doneWithAssistant_(self->_assistantUIController, v10, requestCopy, v11);
    if (dword_27E381018 <= 100 && (dword_27E381018 != -1 || sub_23EB74AC8(&dword_27E381018, 0x64u)))
    {
      sub_23EB75374(&dword_27E381018, "[AssistantUIViewController(private) handleCancelRequest:]", 100, "doneWithAssistant err: %m\n", v16);
    }

    if (requestCopy || v16 != -6771)
    {
      v17 = objc_msgSend_assistantResult(self->_assistantUIController, v13, v14, v15);

      MEMORY[0x2821F9670](self, sel_doneWithAssistantResult_, v17, v18);
    }
  }
}

- (id)radioNameFromBaseStation:(id)station
{
  if (station)
  {
    return objc_msgSend_objectForKey_(station, a2, @"raNm", v3);
  }

  else
  {
    return 0;
  }
}

@end