@interface AssistantUIController
- (AssistantUIController)init;
- (BOOL)restoreNetworkIfNeeded:(BOOL)needed disassociateIfNeeded:(BOOL)ifNeeded forceQuit:(BOOL)quit;
- (id)modifyTopoUIInLayer:(id)layer withLayout:(id)layout andOwningView:(id)view targetProductID:(id)d targetDeviceKind:(id)kind targetName:(id)name targetWiFiName:(id)fiName sourceProductID:(id)self0 sourceDeviceKind:(id)self1 sourceName:(id)self2 sourceWiFiName:(id)self3 connectionType:(id)self4;
- (id)setupPromptStringForBaseInfo:(id)info andResult:(int)result;
- (int)cancelCurrentAssistantState:(BOOL)state;
- (int)doneWithAssistant:(BOOL)assistant;
- (int)startAutoGuess;
- (int)startRestoreNetwork:(id)network;
- (int)startSetupFromAutoGuessRecommendation:(id)recommendation;
- (int)startSetupFromStepByStepResults:(id)results;
- (int)startStepByStepFromAutoGuessRecommendation;
- (void)autoguessProgressComplete:(id)complete;
- (void)autoguessProgressUpdated:(int)updated paramString:(id)string;
- (void)autoguessUpdateTargetInfo:(id)info;
- (void)dealloc;
- (void)deliverSetupUIConfigResult:(int)result withOptions:(id)options;
- (void)handlePresentAutoGuessUIFromAutoGuessCompleteResult:(BOOL)result;
- (void)presentUIForConnectionVerification:(int)verification status:(int)status paramDict:(id)dict;
- (void)presentUIForConnectionVerificationResult:(int)result withOptions:(id)options;
- (void)presentUIForStepByStepNextStepResult:(int)result withOptions:(id)options;
- (void)presentUIForUIConfigPrompt:(int)prompt paramDict:(id)dict;
- (void)restoreNetworkDone:(id)done;
- (void)setupCompleteWithResult:(int)result baseStationInfo:(id)info forController:(id)controller;
- (void)setupProgressUpdated:(int)updated status:(int)status paramDict:(id)dict forController:(id)controller;
- (void)setupUIConfigConnectionStatusUpdated:(int)updated status:(int)status paramDict:(id)dict forController:(id)controller;
- (void)showUIConfigPromptResult:(int)result withOptions:(id)options;
- (void)stepByStepCompleteWithResult:(int)result paramDict:(id)dict;
- (void)stepByStepNextStep:(int)step paramDict:(id)dict;
- (void)stepByStepProgressUpdated:(int)updated status:(int)status paramString:(id)string;
@end

@implementation AssistantUIController

- (AssistantUIController)init
{
  v14.receiver = self;
  v14.super_class = AssistantUIController;
  v2 = [(AssistantUIController *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(AutoGuessController);
    objc_msgSend_setAutoGuessController_(v2, v4, v3, v5);
    objc_msgSend_setDelegate_(v2->_autoGuessController, v6, v2, v7);
    v2->_state = 0;
    v8 = sub_23EB6CD3C(@"untitled", @"AirPortSettings");
    v12 = objc_msgSend_UTF8String(v8, v9, v10, v11);
    sub_23EBB63B4(v12);
  }

  return v2;
}

- (void)dealloc
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3);
  objc_msgSend_removeObserver_name_object_(v5, v6, self, @"com.apple.WiFiUtils.Join.Complete", 0);
  objc_msgSend_setAutoGuessController_(self, v7, 0, v8);
  v9.receiver = self;
  v9.super_class = AssistantUIController;
  [(AssistantUIController *)&v9 dealloc];
}

- (int)startAutoGuess
{
  if (self->_state)
  {
    LODWORD(delegate) = -6709;
  }

  else if (self->_autoGuessController)
  {
    *&self->_state = 1;
    v6 = objc_msgSend_sharedInstance(WiFiUtils, a2, v2, v3);
    if (objc_msgSend_airPortIsOn(v6, v7, v8, v9))
    {
      if (objc_msgSend_isCurrentlyAssociatedToAnInfrastructureNetwork_(v6, v10, 0, v11))
      {
        CurrentAssociationInfo = objc_msgSend_getCurrentAssociationInfo(v6, v10, v12, v11);
        objc_msgSend_setLastAssociatedInfo_(self, v14, CurrentAssociationInfo, v15);
        if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
        {
          sub_23EB75374(&dword_27E381438, "[AssistantUIController startAutoGuess]", 100, "lastAssociatedInfo: %@\n", self->_lastAssociatedInfo);
        }
      }
    }

    objc_msgSend_setTargetMACAddress_(self->_autoGuessController, v10, self->_targetMACAddress, v11);
    objc_msgSend_setTargetScanRecord_(self->_autoGuessController, v16, self->_targetScanRecord, v17);
    objc_msgSend_setTargetBrowseRecord_(self->_autoGuessController, v18, self->_targetBrowseRecord, v19);
    objc_msgSend_setUiDelegate_(self->_autoGuessController, v20, self->_delegate, v21);
    autoGuessController = self->_autoGuessController;
    if (objc_msgSend_count(self->_paramScanResults, v23, v24, v25))
    {
      LODWORD(delegate) = objc_msgSend_runAutoGuessWithWifiScanInfos_(autoGuessController, v26, self->_paramScanResults, v28);
    }

    else
    {
      v29 = objc_msgSend_unmergedScanInfoArray(v6, v26, v27, v28);
      LODWORD(delegate) = objc_msgSend_runAutoGuessWithWifiScanInfos_(autoGuessController, v30, v29, v31);
    }

    if (!delegate)
    {
      delegate = self->_delegate;
      if (delegate)
      {
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_presentUIForRecommendationStatus(self->_delegate, v32, v33, v34);
        }

        LODWORD(delegate) = 0;
      }
    }
  }

  else
  {
    LODWORD(delegate) = -6718;
  }

  return delegate;
}

- (int)startSetupFromAutoGuessRecommendation:(id)recommendation
{
  if (self->_state != 2)
  {
    return -6709;
  }

  if (self->_setupController)
  {
    return -6721;
  }

  v7 = objc_msgSend_primaryRecommendationDictionaryFromCompletionDict_(AutoGuessController, a2, self->_guessCompleteDict, v3);
  if (!v7)
  {
    return -6727;
  }

  v10 = v7;
  v11 = objc_msgSend_objectForKey_(v7, v8, @"BSAutoGuess_UnconfiguredNetwork", v9);
  v14 = objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v12, v11, v13);
  v18 = off_278C663C0;
  if ((v14 - 3) >= 2)
  {
    v18 = off_278C663C8;
  }

  v19 = objc_msgSend_setupController(*v18, v15, v16, v17);
  objc_msgSend_setSetupController_(self, v20, v19, v21);
  setupController = self->_setupController;
  if (!setupController)
  {
    return -6728;
  }

  self->_state = 5;
  v26 = objc_msgSend_setupDelegates(setupController, v22, v23, v24);
  objc_msgSend_addObject_(v26, v27, self, v28);
  objc_msgSend_setUiConfigDelegate_(self->_setupController, v29, self, v30);
  objc_msgSend_setUiDelegate_(self->_setupController, v31, self->_delegate, v32);
  setupOptions = self->_setupOptions;
  v36 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v34, 1, v35);
  objc_msgSend_setObject_forKey_(setupOptions, v37, v36, @"kBSAutoGuessSetupOptionKey_RecommendationIsAutomatic");
  if (recommendation)
  {
    v40 = objc_msgSend_objectForKey_(recommendation, v38, @"kSBSKey_BaseName", v39);
    if (v40)
    {
      objc_msgSend_setObject_forKey_(self->_setupOptions, v41, v40, @"kBSAutoGuessSetupOptionKey_BaseName");
    }

    v43 = objc_msgSend_objectForKey_(recommendation, v41, @"kSBSKey_BasePassword", v42);
    if (v43)
    {
      objc_msgSend_setObject_forKey_(self->_setupOptions, v44, v43, @"kBSAutoGuessSetupOptionKey_BasePassword");
    }

    v46 = objc_msgSend_objectForKey_(recommendation, v44, @"kSBSKey_AirPlayPassword", v45);
    if (v46)
    {
      objc_msgSend_setObject_forKey_(self->_setupOptions, v47, v46, @"kBSAutoGuessSetupOptionKey_AirPlayPassword");
    }

    v49 = objc_msgSend_objectForKey_(recommendation, v47, @"kSBSKey_NetworkName", v48);
    if (v49)
    {
      objc_msgSend_setObject_forKey_(self->_setupOptions, v50, v49, @"kBSAutoGuessSetupOptionKey_NetworkName");
    }

    v52 = objc_msgSend_objectForKey_(recommendation, v50, @"kSBSKey_NetworkPassword", v51);
    if (v52)
    {
      objc_msgSend_setObject_forKey_(self->_setupOptions, v53, v52, @"kBSAutoGuessSetupOptionKey_NetworkPassword");
    }

    v55 = objc_msgSend_objectForKey_(recommendation, v53, @"kSBSKey_SourceNetwork", v54);
    if (v55)
    {
      objc_msgSend_setObject_forKey_(self->_setupOptions, v56, v55, @"kBSAutoGuessSetupOptionKey_SourceNetwork");
    }

    v58 = objc_msgSend_objectForKey_(recommendation, v56, @"kSBSKey_SourceBase", v57);
    if (v58)
    {
      objc_msgSend_setObject_forKey_(self->_setupOptions, v59, v58, @"kBSAutoGuessSetupOptionKey_SourceBase");
    }

    v61 = objc_msgSend_objectForKey_(v10, v59, @"BSAutoGuess_UnconfiguredNetwork", v60);
    if (v61)
    {
      objc_msgSend_setObject_forKey_(self->_setupOptions, v38, v61, @"BSAutoGuess_UnconfiguredNetwork");
    }
  }

  result = objc_msgSend_setupFromAutoguessRecommendation_withOptions_(self->_setupController, v38, v10, self->_setupOptions);
  if (!result)
  {
    if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      objc_msgSend_presentUIForSetupStatusWithRecommendationDict_(self->_delegate, v62, v10, v64);
    }

    v65 = self->_setupController;

    return objc_msgSend_updateSettingsAsync(v65, v62, v63, v64);
  }

  return result;
}

- (int)startStepByStepFromAutoGuessRecommendation
{
  if (self->_state != 2)
  {
    return -6709;
  }

  if (self->_stepByStepController)
  {
    return -6721;
  }

  v5 = objc_msgSend_primaryRecommendationDictionaryFromCompletionDict_(AutoGuessController, a2, self->_guessCompleteDict, v2);
  if (!v5)
  {
    return -6727;
  }

  v9 = v5;
  v10 = objc_msgSend_stepByStepController(StepByStepController, v6, v7, v8);
  objc_msgSend_setStepByStepController_(self, v11, v10, v12);
  stepByStepController = self->_stepByStepController;
  if (!stepByStepController)
  {
    return -6728;
  }

  self->_state = 3;
  objc_msgSend_setDelegate_(stepByStepController, v13, self, v14);
  objc_msgSend_setUiDelegate_(self->_stepByStepController, v16, self->_delegate, v17);
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    objc_msgSend_presentUIForStepByStepStart(self->_delegate, v18, v20, v19);
  }

  v21 = objc_msgSend_restoreRecommendationDictionaryFromCompletionDict_(AutoGuessController, v18, self->_guessCompleteDict, v19);
  objc_msgSend_setRestoreRecommendation_(self->_stepByStepController, v22, v21, v23);
  v25 = self->_stepByStepController;
  setupOptions = self->_setupOptions;

  return objc_msgSend_setupFromAutoguessRecommendation_withOptions_(v25, v24, v9, setupOptions);
}

- (int)cancelCurrentAssistantState:(BOOL)state
{
  stateCopy = state;
  autoGuessController = self->_autoGuessController;
  if (autoGuessController && self->_state == 1)
  {
    v7 = objc_msgSend_cancelAutoGuess(autoGuessController, a2, state, v3);
    if (v7 == -6720)
    {
      self->_state = 10;
      v8 = self->_autoGuessController;
      objc_msgSend_setAutoGuessController_(self, v9, 0, v10);
LABEL_17:
      v7 = 0;
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  setupController = self->_setupController;
  if (!setupController)
  {
LABEL_11:
    stepByStepController = self->_stepByStepController;
    if (stepByStepController && self->_state == 3)
    {
      v7 = objc_msgSend_cancelStepByStep(stepByStepController, a2, state, v3);
      if (!v7)
      {
        self->_state = 10;
        v17 = self->_stepByStepController;
        objc_msgSend_setStepByStepController_(self, v18, 0, v19);
      }

      goto LABEL_18;
    }

    self->_state = 10;
    if (self->_assistantResult)
    {
      v7 = 0;
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  state = self->_state;
  switch(state)
  {
    case 7:
      objc_msgSend_showUIConfigPromptResult_withOptions_(self, a2, 4294960573, 0);
      break;
    case 6:
      objc_msgSend_presentUIForConnectionVerificationResult_withOptions_(self, a2, 4294960573, 0);
      break;
    case 5:
      v7 = objc_msgSend_cancelSetup(setupController, a2, state, v3);
      if (v7 == -6720)
      {
        self->_state = 10;
        v13 = self->_setupController;
        objc_msgSend_setSetupController_(self, v14, 0, v15);
        goto LABEL_17;
      }

LABEL_18:
      self->_assistantResult = -6723;
      goto LABEL_22;
    default:
      goto LABEL_11;
  }

  v7 = 4294960525;
LABEL_22:
  v20 = objc_msgSend_sharedInstance(WiFiUtils, a2, state, v3);
  objc_msgSend_cancelAsync(v20, v21, v22, v23);
  if (stateCopy)
  {
    if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
    {
      sub_23EB75374(&dword_27E381438, "[AssistantUIController cancelCurrentAssistantState:]", 100, "forcing cancel state cancel err: %m\n", v7);
    }

    *&self->_state = 0xFFFFE5BD0000000ALL;
    if (self->_autoGuessController)
    {
      v27 = objc_msgSend_autoGuessController(self, v24, v25, v26);
      objc_msgSend_setDelegate_(v27, v28, 0, v29);
    }

    if (self->_stepByStepController)
    {
      v30 = objc_msgSend_stepByStepController(self, v24, v25, v26);
      objc_msgSend_setDelegate_(v30, v31, 0, v32);
    }

    if (self->_setupController)
    {
      v33 = objc_msgSend_setupController(self, v24, v25, v26);
      objc_msgSend_setUiConfigDelegate_(v33, v34, 0, v35);
      v39 = objc_msgSend_setupController(self, v36, v37, v38);
      v43 = objc_msgSend_setupDelegates(v39, v40, v41, v42);
      objc_msgSend_removeObject_(v43, v44, self, v45);
    }

    LODWORD(v7) = 0;
  }

  return v7;
}

- (int)doneWithAssistant:(BOOL)assistant
{
  state = self->_state;
  if ((state - 9) > 1)
  {
    return -6709;
  }

  self->_state = 11;
  if (state == 9 || !objc_msgSend_restoreNetworkIfNeeded_disassociateIfNeeded_forceQuit_(self, a2, 1, 1, assistant))
  {
    if (dword_27E381438 <= 100)
    {
      if (dword_27E381438 == -1)
      {
        v4 = 0;
        if (!sub_23EB74AC8(&dword_27E381438, 0x64u))
        {
          return v4;
        }
      }

      else
      {
        v4 = 0;
      }

      sub_23EB75374(&dword_27E381438, "[AssistantUIController doneWithAssistant:]", 100, "No restore needed - done\n");
      return v4;
    }

    return 0;
  }

  else if (dword_27E381438 > 100)
  {
    return -6771;
  }

  else
  {
    if (dword_27E381438 != -1)
    {
      v4 = -6771;
LABEL_16:
      sub_23EB75374(&dword_27E381438, "[AssistantUIController doneWithAssistant:]", 100, "Holding up done, until restore is complete\n");
      return v4;
    }

    v4 = -6771;
    if (sub_23EB74AC8(&dword_27E381438, 0x64u))
    {
      goto LABEL_16;
    }
  }

  return v4;
}

- (id)modifyTopoUIInLayer:(id)layer withLayout:(id)layout andOwningView:(id)view targetProductID:(id)d targetDeviceKind:(id)kind targetName:(id)name targetWiFiName:(id)fiName sourceProductID:(id)self0 sourceDeviceKind:(id)self1 sourceName:(id)self2 sourceWiFiName:(id)self3 connectionType:(id)self4
{
  if (layout)
  {
    layoutCopy = layout;
    if (layer)
    {
      objc_msgSend_setContainerLayer_(layout, a2, layer, layout);
    }
  }

  else
  {
    if (!layer)
    {
      return 0;
    }

    v20 = [NetTopoMiniStaticLayout alloc];
    layoutCopy = objc_msgSend_initWithContainerLayer_andOptions_(v20, v21, layer, 4);
  }

  objc_msgSend_setNetTopoMiniStaticLayout_(view, a2, layoutCopy, layout);
  v25 = 4;
  if (iD)
  {
    if (sub_23EC13544(view, v22, v23, v24) == 1)
    {
      v25 = 2;
    }

    else
    {
      v25 = 4;
    }
  }

  objc_msgSend_setLayoutOptions_(layoutCopy, v22, v25, v24);
  objc_msgSend_setOwningView_(layoutCopy, v26, view, v27);
  v33 = objc_msgSend_array(MEMORY[0x277CBEB18], v28, v29, v30);
  if (iD)
  {
    v34 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v31, off_27E3830B0[0], v32, off_27E3830A8[0], iD, off_27E3830B8[0], deviceKind, off_27E3830C0[0], 0);
    v37 = v34;
    if (wiFiName)
    {
      objc_msgSend_setObject_forKey_(v34, v35, wiFiName, off_27E3830C8[0]);
    }

    if (sourceName)
    {
      objc_msgSend_setObject_forKey_(v37, v35, sourceName, off_27E3830D0[0]);
    }

    objc_msgSend_addObject_(v33, v35, v37, v36);
  }

  v38 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v31, off_27E3830B0[0], v32, off_27E3830A8[0], d, off_27E3830B8[0], kind, off_27E3830C0[0], 0);
  v41 = v38;
  if (fiName)
  {
    objc_msgSend_setObject_forKey_(v38, v39, fiName, off_27E3830C8[0]);
  }

  if (name)
  {
    objc_msgSend_setObject_forKey_(v41, v39, name, off_27E3830D0[0]);
  }

  if (iD)
  {
    objc_msgSend_setObject_forKey_(v41, v39, type, off_27E3830D8[0]);
  }

  objc_msgSend_addObject_(v33, v39, v41, v40);
  objc_msgSend_createLayoutForDevices_(layoutCopy, v42, v33, v43);
  return layoutCopy;
}

- (void)deliverSetupUIConfigResult:(int)result withOptions:(id)options
{
  v5 = *&result;
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_setupUIConfigResult_withOptions_(self->_setupController, v7, v5, options);
  }

  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    MEMORY[0x2821F9670](delegate, sel_showUIConfigPromptPostHook, v8, v9);
  }
}

- (void)presentUIForConnectionVerificationResult:(int)result withOptions:(id)options
{
  if (self->_setupController)
  {
    if (self->_state == 6)
    {
      objc_msgSend_deliverSetupUIConfigResult_withOptions_(self, a2, *&result, options);
    }
  }
}

- (void)showUIConfigPromptResult:(int)result withOptions:(id)options
{
  if (self->_setupController)
  {
    if (self->_state == 7)
    {
      objc_msgSend_deliverSetupUIConfigResult_withOptions_(self, a2, *&result, options);
      self->_state = 5;
    }
  }
}

- (void)presentUIForStepByStepNextStepResult:(int)result withOptions:(id)options
{
  v5 = *&result;
  if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
  {
    sub_23EB75374(&dword_27E381438, "[AssistantUIController presentUIForStepByStepNextStepResult:withOptions:]", 100, "result: %ld options: %@\n", v5, options);
  }

  if (self->_state == 3)
  {
    stepByStepController = self->_stepByStepController;

    MEMORY[0x2821F9670](stepByStepController, sel_stepByStepNextStepResult_withOptions_, v5, options);
  }
}

- (void)autoguessUpdateTargetInfo:(id)info
{
  if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
  {
    sub_23EB75374(&dword_27E381438, "[AssistantUIController autoguessUpdateTargetInfo:]", 100, "targetInfo: %@ \n", info);
  }

  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;

    MEMORY[0x2821F9670](delegate, sel_presentUIForRecommmendationTargetInfo_, info, v5);
  }
}

- (void)autoguessProgressUpdated:(int)updated paramString:(id)string
{
  v5 = *&updated;
  if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
  {
    sub_23EB75374(&dword_27E381438, "[AssistantUIController autoguessProgressUpdated:paramString:]", 100, "selector: %d paramString: %@\n", v5, string);
  }

  v7 = &stru_285145FE8;
  if (v5 <= 14)
  {
    if (v5 <= 6)
    {
      if (v5 == 3)
      {
        v8 = qword_27E383800;
        v9 = @"kProgress_Browsing";
        goto LABEL_31;
      }

      if (v5 != 5 || !string)
      {
        goto LABEL_33;
      }

      v10 = MEMORY[0x277CCACA8];
      v11 = qword_27E383800;
      v12 = @"kProgress_NetworkJoin";
    }

    else
    {
      switch(v5)
      {
        case 7:
          if (!string)
          {
            goto LABEL_33;
          }

          v10 = MEMORY[0x277CCACA8];
          v11 = qword_27E383800;
          v12 = @"kProgress_WaitingForBase";
          break;
        case 9:
          if (!string)
          {
            goto LABEL_33;
          }

          v10 = MEMORY[0x277CCACA8];
          v11 = qword_27E383800;
          v12 = @"kProgress_NetworkSearch";
          break;
        case 0xB:
          v8 = qword_27E383800;
          v9 = @"kProgress_WaitingForResources";
LABEL_31:
          valid = sub_23EB6CD3C(v9, v8);
          goto LABEL_32;
        default:
          goto LABEL_33;
      }
    }

    v13 = sub_23EB6CD3C(v12, v11);
    valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v10, v14, v13, @"%@", 0, string);
LABEL_32:
    v7 = valid;
    goto LABEL_33;
  }

  if (v5 <= 16)
  {
    v8 = qword_27E383800;
    if (v5 == 15)
    {
      v9 = @"kIntializingServicesString";
    }

    else
    {
      v9 = @"kProgress_ExaminingRestoreProfile";
    }

    goto LABEL_31;
  }

  switch(v5)
  {
    case 0x11:
      v8 = qword_27E383800;
      v9 = @"kProgress_ExaminingOtherBaseStations";
      goto LABEL_31;
    case 0x12:
      v8 = qword_27E383800;
      v9 = @"kProgress_ExaminingNewBaseStation";
      goto LABEL_31;
    case 0x13:
      v8 = qword_27E383800;
      v9 = @"kCancelingServicesString";
      goto LABEL_31;
  }

LABEL_33:
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;
    state = self->_state;

    MEMORY[0x2821F9670](delegate, sel_assistantUpdateProgress_forState_, v7, state);
  }
}

- (void)autoguessProgressComplete:(id)complete
{
  objc_msgSend_setGuessCompleteDict_(self, a2, complete, v3);
  Instrumentation = objc_msgSend_lastInstrumentation(self->_autoGuessController, v5, v6, v7);
  objc_msgSend_setLastAutoguessInstrumentation_(self, v9, Instrumentation, v10);
  v11 = self->_autoGuessController;
  objc_msgSend_setAutoGuessController_(self, v12, 0, v13);
  if (objc_msgSend_restoreNetworkIfNeeded_disassociateIfNeeded_forceQuit_(self, v14, 1, 0, 0) && dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
  {
    sub_23EB75374(&dword_27E381438, "[AssistantUIController autoguessProgressComplete:]", 100, "Restoring network \n");
  }

  objc_msgSend_handlePresentAutoGuessUIFromAutoGuessCompleteResult_(self, v15, 1, v16);
}

- (void)setupProgressUpdated:(int)updated status:(int)status paramDict:(id)dict forController:(id)controller
{
  v7 = *&updated;
  if (dword_27E381438 <= 100)
  {
    v9 = *&status;
    if (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u))
    {
      sub_23EB75374(&dword_27E381438, "[AssistantUIController setupProgressUpdated:status:paramDict:forController:]", 100, "selector: %d status: %ld paramDict: %@\n", v7, v9, dict);
    }
  }

  v10 = objc_msgSend_objectForKey_(dict, a2, @"BSAssistantProgressKey_StringParameter", *&status);
  v11 = v10;
  switch(v7)
  {
    case 5:
      if (!v10)
      {
        goto LABEL_30;
      }

      v15 = MEMORY[0x277CCACA8];
      v16 = qword_27E383800;
      v17 = @"kProgress_NetworkJoin";
      goto LABEL_41;
    case 7:
      if (!v10)
      {
        goto LABEL_30;
      }

      v15 = MEMORY[0x277CCACA8];
      v16 = qword_27E383800;
      v17 = @"kProgress_WaitingForBase";
      goto LABEL_41;
    case 9:
      if (!v10)
      {
        goto LABEL_30;
      }

      v15 = MEMORY[0x277CCACA8];
      v16 = qword_27E383800;
      v17 = @"kProgress_NetworkSearch";
      goto LABEL_41;
    case 11:
      v27 = MEMORY[0x277CCACA8];
      v28 = sub_23EB6CD3C(@"kProgress_WaitingForResources", qword_27E383800);
      valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v27, v29, v28, @"%@", 0, v11);
      if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        objc_msgSend_assistantWaitingForResourcesStart(self->_delegate, v30, v31, v32);
      }

      goto LABEL_43;
    case 12:
      if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        objc_msgSend_assistantWaitingForResourcesComplete(self->_delegate, v33, v34, v35);
      }

      goto LABEL_30;
    case 14:
      v13 = qword_27E383800;
      v14 = @"kProgress_Start";
      goto LABEL_14;
    case 15:
      if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v21 = objc_msgSend_objectForKey_(dict, v19, @"BSAssistantProgressKey_DictionaryParameter", v20);
        v24 = objc_msgSend_objectForKey_(v21, v22, @"kBSConfigurationSetupComplete_RemovedBase", v23);
        objc_msgSend_performSelector_withObject_(self->_delegate, v25, sel_setRemovedBaseStation_, v24);
      }

      goto LABEL_30;
    case 18:
      if (!v10)
      {
        goto LABEL_30;
      }

      v15 = MEMORY[0x277CCACA8];
      v16 = qword_27E383800;
      v17 = @"kProgress_ReadSettings";
      goto LABEL_41;
    case 20:
      if (!v10)
      {
        goto LABEL_30;
      }

      v15 = MEMORY[0x277CCACA8];
      v16 = qword_27E383800;
      v17 = @"kProgress_WriteSettings";
      goto LABEL_41;
    case 21:
      if (!v10)
      {
        goto LABEL_30;
      }

      v15 = MEMORY[0x277CCACA8];
      v16 = qword_27E383800;
      v17 = @"kProgress_BaseReady";
LABEL_41:
      v36 = sub_23EB6CD3C(v17, v16);
      v18 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v15, v37, v36, @"%@", 0, v11);
      goto LABEL_42;
    case 22:
      self->_state = 6;
      if (!v10)
      {
        goto LABEL_30;
      }

      v13 = qword_27E383800;
      v14 = @"kProgress_VerifyConnection";
      goto LABEL_14;
    case 23:
    case 25:
      v12 = 5;
      goto LABEL_29;
    case 24:
      self->_state = 6;
      if (!v10)
      {
        goto LABEL_30;
      }

      v13 = qword_27E383800;
      v14 = @"kProgress_PluginConnection";
LABEL_14:
      v18 = sub_23EB6CD3C(v14, v13);
LABEL_42:
      valid = v18;
      goto LABEL_43;
    case 26:
      v12 = 8;
LABEL_29:
      self->_state = v12;
      goto LABEL_30;
    default:
      if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
      {
        sub_23EB75374(&dword_27E381438, "[AssistantUIController setupProgressUpdated:status:paramDict:forController:]", 100, "\n");
      }

LABEL_30:
      valid = &stru_285145FE8;
LABEL_43:
      if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        delegate = self->_delegate;
        state = self->_state;

        MEMORY[0x2821F9670](delegate, sel_assistantUpdateProgress_forState_, valid, state);
      }

      return;
  }
}

- (void)setupCompleteWithResult:(int)result baseStationInfo:(id)info forController:(id)controller
{
  self->_assistantResult = result;
  if (result == -6723)
  {
    resultCopy = 4294960527;
  }

  else
  {
    resultCopy = result;
  }

  if (resultCopy != -6769)
  {
    if (resultCopy)
    {
      self->_state = 10;
    }

    else
    {
      self->_state = 9;
      objc_msgSend_setLastAssociatedInfo_(self, a2, 0, info, controller);
    }
  }

  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = objc_msgSend_setupPromptStringForBaseInfo_andResult_(self, a2, info, resultCopy);
    objc_msgSend_presentUIForSetupResult_baseStationInfo_withPrompt_(self->_delegate, v9, resultCopy, info, v8);
  }

  Instrumentation = objc_msgSend_lastInstrumentation(self->_setupController, a2, *&result, info);
  objc_msgSend_setLastSetupInstrumentation_(self, v11, Instrumentation, v12);
  v13 = self->_setupController;
  objc_msgSend_setSetupController_(self, v14, 0, v15);
  objc_msgSend_setStepByStepController_(self, v16, 0, v17);
  if (resultCopy == -6769)
  {

    objc_msgSend_handlePresentAutoGuessUIFromAutoGuessCompleteResult_(self, v18, 0, v19);
  }
}

- (void)setupUIConfigConnectionStatusUpdated:(int)updated status:(int)status paramDict:(id)dict forController:(id)controller
{
  v7 = *&status;
  v8 = *&updated;
  if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
  {
    sub_23EB75374(&dword_27E381438, "[AssistantUIController setupUIConfigConnectionStatusUpdated:status:paramDict:forController:]", 100, " selector: %d status: %ld paramDict: %@\n", v8, v7, dict);
  }

  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_showUIConfigPromptPreHook(self->_delegate, v10, v11, v12);
    }

    MEMORY[0x2821F9670](self, sel_presentUIForConnectionVerification_status_paramDict_, v8, v7);
  }

  else if (self->_state == 6)
  {
    self->_connectionStatusSelectorAwaitingResolution = 0;
    if (self->_delegate)
    {
      if (objc_opt_respondsToSelector())
      {
        delegate = self->_delegate;

        MEMORY[0x2821F9670](delegate, sel_connectionVerificationSucceededForSelector_, v8, v13);
      }
    }
  }
}

- (void)stepByStepProgressUpdated:(int)updated status:(int)status paramString:(id)string
{
  v6 = *&updated;
  if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
  {
    sub_23EB75374(&dword_27E381438, "[AssistantUIController stepByStepProgressUpdated:status:paramString:]", 100, "selector: %d paramString: %@\n", v6, string);
  }

  v8 = &stru_285145FE8;
  if (v6 <= 4)
  {
    if (v6 == 1)
    {
      v12 = qword_27E383800;
      v13 = @"kPerformingWiFiScanString";
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_22;
      }

      v12 = qword_27E383800;
      v13 = @"kProgress_Browsing";
    }

    valid = sub_23EB6CD3C(v13, v12);
    goto LABEL_21;
  }

  if (v6 == 9)
  {
    if (string)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = qword_27E383800;
      v11 = @"kProgress_NetworkSearch";
      goto LABEL_18;
    }
  }

  else if (v6 == 7)
  {
    if (string)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = qword_27E383800;
      v11 = @"kProgress_WaitingForBase";
      goto LABEL_18;
    }
  }

  else if (v6 == 5 && string)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = qword_27E383800;
    v11 = @"kProgress_NetworkJoin";
LABEL_18:
    v14 = sub_23EB6CD3C(v11, v10);
    valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v9, v15, v14, @"%@", 0, string);
LABEL_21:
    v8 = valid;
  }

LABEL_22:
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;
    state = self->_state;

    MEMORY[0x2821F9670](delegate, sel_assistantUpdateProgress_forState_, v8, state);
  }
}

- (void)stepByStepCompleteWithResult:(int)result paramDict:(id)dict
{
  if (result == -6769)
  {
    goto LABEL_8;
  }

  v6 = *&result;
  if (result == -6723)
  {
    v7 = 10;
  }

  else
  {
    v7 = 4;
  }

  self->_state = v7;
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_presentUIForStepByStepResult_(self->_delegate, a2, v6, dict);
  }

  if (v6)
  {
LABEL_8:
    objc_msgSend_handlePresentAutoGuessUIFromAutoGuessCompleteResult_(self, a2, 0, dict);
    v8 = self->_stepByStepController;

    objc_msgSend_setStepByStepController_(self, v9, 0, v10);
  }

  else if (dict)
  {

    MEMORY[0x2821F9670](self, sel_startSetupFromStepByStepResults_, dict, dict);
  }
}

- (void)stepByStepNextStep:(int)step paramDict:(id)dict
{
  if (self->_delegate)
  {
    v6 = *&step;
    if (objc_opt_respondsToSelector())
    {
      delegate = self->_delegate;

      MEMORY[0x2821F9670](delegate, sel_presentUIForStepByStepNextStep_paramDict_, v6, dict);
    }
  }
}

- (int)startSetupFromStepByStepResults:(id)results
{
  if (self->_setupController)
  {
    return -6721;
  }

  v36[3] = v3;
  v36[4] = v4;
  v35 = 0;
  v36[0] = 0;
  result = sub_23EBD9210(results, v36, &v35);
  if (!result)
  {
    if (v36[0])
    {
      v7 = v36[0];
      v8 = v35;
      v12 = objc_msgSend_setupController(AUSetupController, v9, v10, v11);
      objc_msgSend_setSetupController_(self, v13, v12, v14);
      setupController = self->_setupController;
      if (setupController)
      {
        self->_state = 5;
        v19 = objc_msgSend_setupDelegates(setupController, v15, v16, v17);
        objc_msgSend_addObject_(v19, v20, self, v21);
        objc_msgSend_setUiConfigDelegate_(self->_setupController, v22, self, v23);
        objc_msgSend_setUiDelegate_(self->_setupController, v24, self->_delegate, v25);
        v28 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEB38], v26, v35, v27);
        objc_msgSend_setSetupOptions_(self, v29, v28, v30);
        result = objc_msgSend_setupFromAutoguessRecommendation_withOptions_(self->_setupController, v31, v36[0], v35);
        if (!result)
        {
          if (self->_delegate)
          {
            if (objc_opt_respondsToSelector())
            {
              objc_msgSend_presentUIForSetupStatusWithRecommendationDict_(self->_delegate, v32, v36[0], v34);
            }
          }

          return objc_msgSend_updateSettingsAsync(self->_setupController, v32, v33, v34);
        }
      }

      else
      {
        return -6728;
      }
    }

    else
    {
      return -6727;
    }
  }

  return result;
}

- (void)presentUIForConnectionVerification:(int)verification status:(int)status paramDict:(id)dict
{
  v6 = *&status;
  v7 = *&verification;
  if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
  {
    sub_23EB75374(&dword_27E381438, "[AssistantUIController(Private) presentUIForConnectionVerification:status:paramDict:]", 100, " selector: %d status: %ld paramDict: %@\n", v7, v6, dict);
  }

  self->_connectionStatusSelectorAwaitingResolution = v7;
  if (v7 <= 2)
  {
    if (v7 != 1)
    {
      if (v7 != 2)
      {
        return;
      }

      if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
      {
        sub_23EB75374(&dword_27E381438, "[AssistantUIController(Private) presentUIForConnectionVerification:status:paramDict:]", 100, "%s: eBSConfigurationUIConfigSelector_DHCPOrPPPoESeen\n", "[AssistantUIController(Private) presentUIForConnectionVerification:status:paramDict:]");
      }

LABEL_19:
      if (objc_opt_respondsToSelector())
      {
        delegate = self->_delegate;

        MEMORY[0x2821F9670](delegate, sel_showTellUserToResetBroadbandDeviceForStatus_paramDict_, v6, dict);
      }

      return;
    }

    if (objc_opt_respondsToSelector())
    {
      v12 = self->_delegate;

      MEMORY[0x2821F9670](v12, sel_showTellUserToPlugInEthernetForStatus_paramDict_, v6, dict);
    }
  }

  else
  {
    if (v7 != 3)
    {
      if (v7 != 4)
      {
        if (v7 == 5 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v9 = self->_delegate;

          MEMORY[0x2821F9670](v9, sel_showAskUserSwapCablingForStatus_paramDict_, v6, dict);
        }

        return;
      }

      goto LABEL_19;
    }

    if (objc_opt_respondsToSelector())
    {
      v11 = self->_delegate;

      MEMORY[0x2821F9670](v11, sel_showAskUserForPPPoECredentialsForStatus_paramDict_, v6, dict);
    }
  }
}

- (void)presentUIForUIConfigPrompt:(int)prompt paramDict:(id)dict
{
  self->_state = 7;
  if (prompt == 8)
  {
    if (objc_opt_respondsToSelector())
    {
      if (objc_opt_respondsToSelector())
      {
        objc_msgSend_showUIConfigPromptPreHook(self->_delegate, v10, v11, v12);
      }

      delegate = self->_delegate;

      MEMORY[0x2821F9670](delegate, sel_showUIConfigPromptForGuestNetConfigWithParamDict_, dict, v12);
    }
  }

  else if (prompt == 7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_showUIConfigPromptPreHook(self->_delegate, v6, v7, v8);
    }

    v9 = self->_delegate;

    MEMORY[0x2821F9670](v9, sel_showUIConfigPromptToSendDiagsUsageStatsWithParamDict_, dict, v8);
  }
}

- (void)handlePresentAutoGuessUIFromAutoGuessCompleteResult:(BOOL)result
{
  resultCopy = result;
  if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
  {
    sub_23EB75374(&dword_27E381438, "[AssistantUIController(Private) handlePresentAutoGuessUIFromAutoGuessCompleteResult:]", 100, "\n");
  }

  v6 = 0x277CBE000uLL;
  if (!self->_guessCompleteDict)
  {
    v23 = 0;
    v25 = 0;
    v24 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 4294960591;
    goto LABEL_35;
  }

  if (resultCopy)
  {
    v7 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, result, v3);
    objc_msgSend_setSetupOptions_(self, v8, v7, v9);
  }

  if (!self->_setupOptions)
  {
    v23 = 0;
    v25 = 0;
    v24 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 4294960568;
    goto LABEL_35;
  }

  v10 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, result, v3);
  if (objc_msgSend_BOOLForKey_(v10, v11, @"skipConnectionTesting", v12))
  {
    setupOptions = self->_setupOptions;
    v16 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v13, 1, v14);
    objc_msgSend_setObject_forKey_(setupOptions, v17, v16, @"kBSAutoGuessSetupOptionKey_SkipInternetTests");
  }

  v18 = objc_msgSend_primaryRecommendationDictionaryFromCompletionDict_(AutoGuessController, v13, self->_guessCompleteDict, v14);
  v23 = objc_msgSend_objectForKey_(v18, v19, @"BSAutoGuess_Recommendation", v20);
  if (v18)
  {
    v24 = objc_msgSend_objectForKey_(v18, v21, @"BSAutoGuess_Recommendation", v22);
  }

  else
  {
    v24 = 0;
  }

  v30 = objc_msgSend_valueForKey_(v18, v21, @"BSAutoGuess_UnconfiguredBase", v22);
  v33 = objc_msgSend_objectForKey_(v30, v31, @"syFl", v32);
  if (v33)
  {
    v28 = (objc_msgSend_integerValue(v33, v34, v35, v36) >> 10) & 1;
  }

  else
  {
    v28 = 0;
  }

  v27 = objc_msgSend_restoreOfferFromCompletionDict_(AutoGuessController, v34, self->_guessCompleteDict, v36);
  v25 = objc_msgSend_recommendationStringFromCompletionDict_(AutoGuessController, v37, self->_guessCompleteDict, v38);
  if (!v25)
  {
    goto LABEL_33;
  }

  v39 = objc_msgSend_objectForKey_(self->_guessCompleteDict, a2, @"fullGuessResults", v3);
  v42 = objc_msgSend_objectForKey_(v39, v40, @"BSAutoGuessComplete_ErrorResult", v41);
  v46 = objc_msgSend_integerValue(v42, v43, v44, v45);
  v29 = v46;
  if (v46)
  {
    v26 = 0;
    self->_state = 10;
    self->_assistantResult = v46;
LABEL_34:
    v6 = 0x277CBE000uLL;
    goto LABEL_35;
  }

  *&self->_state = 2;
  if (!v23)
  {
    v26 = 0;
    v29 = 4294960569;
    goto LABEL_34;
  }

  isEqualToString = objc_msgSend_isEqualToString_(v23, a2, @"BSSetupRecommend_OfferCreate", v3);
  if (!isEqualToString)
  {
    if (objc_msgSend_isEqualToString_(v23, a2, @"BSSetupRecommend_OfferJoinNetwork", v3))
    {
      v64 = 0;
      v50 = objc_msgSend_objectForKey_(v18, a2, @"BSAutoGuess_SourceNetwork", v3);
      if (v50)
      {
        v51 = v50;
        if (objc_msgSend_networkIsSecure_secMode_isEnterprise_(WiFiUtils, a2, v50, 0, &v64) && (v64 & 1) == 0)
        {
          NetworkPassword = objc_msgSend_getNetworkPassword_(WiFiUtils, a2, v51, v3);
          v26 = 1;
          if (NetworkPassword)
          {
            v6 = 0x277CBE000;
            if (resultCopy)
            {
              objc_msgSend_setObject_forKey_(self->_setupOptions, a2, NetworkPassword, @"kBSAutoGuessSetupOptionKey_NetworkPassword");
              v26 = 1;
            }

            goto LABEL_49;
          }
        }

        else
        {
          v26 = 1;
        }
      }

      else
      {
        v26 = 0;
      }

      v6 = 0x277CBE000;
LABEL_49:
      v29 = 0;
      goto LABEL_35;
    }

LABEL_33:
    v26 = 0;
    v29 = 0;
    goto LABEL_34;
  }

  v6 = 0x277CBE000;
  if (resultCopy)
  {
    v48 = sub_23EB6D820(isEqualToString, a2);
    objc_msgSend_setObject_forKey_(self->_setupOptions, v49, v48, @"kBSAutoGuessSetupOptionKey_NetworkName");
  }

  v29 = 0;
  v26 = 3;
LABEL_35:
  v52 = *(v6 + 2872);
  v53 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, v26, v3);
  v56 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v54, v28, v55);
  v59 = objc_msgSend_dictionaryWithObjectsAndKeys_(v52, v57, v53, v58, @"passwordUIFlags", v56, @"pppoeDetected", 0);
  v61 = v59;
  if (v25)
  {
    objc_msgSend_setObject_forKey_(v59, v60, v25, @"promptString");
  }

  if (v27)
  {
    objc_msgSend_setObject_forKey_(v61, v60, v27, @"restoreOffer");
  }

  if (v24)
  {
    objc_msgSend_setObject_forKey_(v61, v60, v24, @"actionKey");
  }

  if (v23)
  {
    objc_msgSend_setObject_forKey_(v61, v60, v23, @"primaryRecommendation");
  }

  if (self->_delegate)
  {
    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_presentUIForRecommendationResult_paramDict_(self->_delegate, v62, v29, v61);
    }
  }
}

- (id)setupPromptStringForBaseInfo:(id)info andResult:(int)result
{
  if (!info || result)
  {
    v72 = qword_27E383800;

    return sub_23EB6CD3C(@"kSetup_SetupRecommendationErrorGeneric", v72);
  }

  else
  {
    v6 = objc_msgSend_objectForKey_(info, a2, @"kSetupBaseStationInfoKey_RecommendationInfo", *&result);
    v9 = objc_msgSend_objectForKey_(v6, v7, @"BSAutoGuess_Recommendation", v8);
    v12 = objc_msgSend_objectForKey_(info, v10, @"kSetupBaseStationInfoKey_GeneralInfo", v11);
    v13 = sub_23EB6CDF8(1937326416);
    v16 = objc_msgSend_objectForKey_(v12, v14, v13, v15);
    v17 = sub_23EB6CDF8(1937329773);
    v20 = objc_msgSend_objectForKey_(v12, v18, v17, v19);
    v23 = objc_msgSend_objectForKey_(v6, v21, @"BSAutoGuess_SourceBase", v22);
    v26 = objc_msgSend_objectForKey_(v23, v24, @"name", v25);
    v30 = objc_msgSend_setupOptions(self, v27, v28, v29);
    v33 = objc_msgSend_objectForKey_(v30, v31, @"kBSAutoGuessSetupOptionKey_ExtendOption_JoinApple", v32);
    v37 = objc_msgSend_BOOLValue(v33, v34, v35, v36);
    v42 = objc_msgSend_objectForKey_(info, v38, @"kSetupBaseStationInfoKey_BrowseRecord", v39);
    if (v37)
    {
      v9 = @"BSSetupRecommend_OfferJoinNetwork";
      isEqualToString = objc_msgSend_isEqualToString_(@"BSSetupRecommend_OfferJoinNetwork", v40, @"BSSetupRecommend_OfferReplaceSourceIsUnconfigurable", v41);
    }

    else
    {
      isEqualToString = objc_msgSend_isEqualToString_(v9, v40, @"BSSetupRecommend_OfferReplaceSourceIsUnconfigurable", v41);
    }

    v46 = isEqualToString;
    if ((objc_msgSend_isEqualToString_(v9, v44, @"BSSetupRecommend_OfferCreate", v45) & 1) != 0 || v46)
    {
      v73 = objc_msgSend_valueForKey_(self->_setupOptions, v47, @"kBSAutoGuessSetupOptionKey_NetworkName", v48);
      v76 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v74, @"%@.Complete", v75, v9);
      v69 = sub_23EB6CD3C(v76, qword_27E383800);
      if (v73)
      {
        return objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v77, v69, @"%@", 0, v73);
      }
    }

    else if ((objc_msgSend_isEqualToString_(v9, v47, @"BSSetupRecommend_OfferJoinNetwork", v48) & 1) != 0 || objc_msgSend_isEqualToString_(v9, v49, @"BSSetupRecommend_AskUserChooseNetworkToJoin", v50))
    {
      v51 = objc_msgSend_objectForKey_(info, v49, @"kSetupBaseStationInfoKey_RadioInfo", v50);
      v52 = sub_23EB6CDF8(1918979693);
      v20 = objc_msgSend_objectForKey_(v51, v53, v52, v54);
      v57 = objc_msgSend_objectForKey_(info, v55, @"kSetupBaseStationInfoKey_BrowseRecord", v56);
      v58 = sub_23EB6A1FC(v57);
      v59 = MEMORY[0x277CCACA8];
      v63 = objc_msgSend_integerValue(v16, v60, v61, v62);
      v64 = sub_23EB6CE6C(v63, v58);
      v67 = objc_msgSend_stringWithFormat_(v59, v65, @"%@.Complete%@", v66, v9, v64);
      v69 = sub_23EB6CD3C(v67, qword_27E383800);
      if (v20)
      {
        v70 = MEMORY[0x277CCACA8];
        return objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v70, v68, v69, @"%@", 0, v20);
      }
    }

    else
    {
      v78 = objc_msgSend_isEqualToString_(v9, v49, @"BSSetupRecommend_OfferRestore", v50);
      v79 = MEMORY[0x277CCACA8];
      v83 = objc_msgSend_integerValue(v16, v80, v81, v82);
      v84 = sub_23EB6A294(v42);
      v85 = sub_23EB6CE6C(v83, v84);
      v88 = objc_msgSend_stringWithFormat_(v79, v86, @"%@.Complete%@", v87, v9, v85);
      v69 = sub_23EB6CD3C(v88, qword_27E383800);
      if (!v78 && v26)
      {
        return objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v68, v69, @"%@", 0, v26);
      }

      if (v20)
      {
        v70 = MEMORY[0x277CCACA8];
        return objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v70, v68, v69, @"%@", 0, v20);
      }
    }

    return v69;
  }
}

- (BOOL)restoreNetworkIfNeeded:(BOOL)needed disassociateIfNeeded:(BOOL)ifNeeded forceQuit:(BOOL)quit
{
  quitCopy = quit;
  ifNeededCopy = ifNeeded;
  if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
  {
    sub_23EB75374(&dword_27E381438, "[AssistantUIController(Private) restoreNetworkIfNeeded:disassociateIfNeeded:forceQuit:]", 100, "_lastAssociatedInfo: %@\n", self->_lastAssociatedInfo);
  }

  v8 = objc_msgSend_sharedInstance(WiFiUtils, a2, needed, ifNeeded);
  v12 = objc_msgSend_airPortIsOn(v8, v9, v10, v11);
  if (v12)
  {
    isCurrentlyAssociatedToAnInfrastructureNetwork = objc_msgSend_isCurrentlyAssociatedToAnInfrastructureNetwork_(v8, v13, 0, v14);
    lastAssociatedInfo = self->_lastAssociatedInfo;
    if (lastAssociatedInfo)
    {
      v23 = objc_msgSend_objectForKey_(lastAssociatedInfo, v15, @"SSID_STR", v17);
      if (isCurrentlyAssociatedToAnInfrastructureNetwork)
      {
        CurrentAssociationInfo = objc_msgSend_getCurrentAssociationInfo(v8, v20, v21, v22);
        v27 = objc_msgSend_objectForKey_(CurrentAssociationInfo, v25, @"SSID_STR", v26);
      }

      else
      {
        v27 = &stru_285145FE8;
      }

      if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
      {
        sub_23EB75374(&dword_27E381438, "[AssistantUIController(Private) restoreNetworkIfNeeded:disassociateIfNeeded:forceQuit:]", 100, "curName: %@ oldName: %@\n", v27, v23);
      }

      isEqualToString = objc_msgSend_isEqualToString_(v23, v20, v27, v22);
      if ((isEqualToString & 1) == 0 && !quitCopy)
      {
        LOBYTE(v12) = objc_msgSend_startRestoreNetwork_(self, v15, v23, v17) == 0;
        return v12;
      }

      if (isEqualToString)
      {
        goto LABEL_11;
      }
    }

    else if (((ifNeededCopy || quitCopy) & isCurrentlyAssociatedToAnInfrastructureNetwork & 1) == 0)
    {
LABEL_11:
      LOBYTE(v12) = 0;
      return v12;
    }

    objc_msgSend_disassociateSync(v8, v15, v16, v17);
    goto LABEL_11;
  }

  return v12;
}

- (int)startRestoreNetwork:(id)network
{
  if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
  {
    sub_23EB75374(&dword_27E381438, "[AssistantUIController(Private) startRestoreNetwork:]", 100, "\n");
  }

  if (!network)
  {
    return -6705;
  }

  v6 = objc_msgSend_sharedInstance(WiFiUtils, a2, network, v3);
  v9 = objc_msgSend_objectForKey_(self->_lastAssociatedInfo, v7, @"BSSID", v8);
  if (v9 && (v12 = objc_msgSend_scanInfoForMACAddress_(v6, v10, v9, v11)) != 0 || (v12 = objc_msgSend_scanInfoForName_wifiType_(v6, v10, network, 3)) != 0)
  {
    v13 = v12;
    v23 = 0;
    if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
    {
      sub_23EB75374(&dword_27E381438, "[AssistantUIController(Private) startRestoreNetwork:]", 100, " restoring with scan info \n");
    }

    if (objc_msgSend_networkIsSecure_secMode_isEnterprise_(WiFiUtils, v10, v13, 0, &v23) && (v23 & 1) == 0)
    {
      NetworkPassword = objc_msgSend_getNetworkPassword_(WiFiUtils, v14, v13, v15);
      if (!NetworkPassword)
      {
        return -16;
      }
    }

    else
    {
      NetworkPassword = 0;
    }

    result = objc_msgSend_joinNetworkWithScanInfoAsync_password_rememberChoice_(v6, v14, v13, NetworkPassword, 1);
    if (!result)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
    {
      sub_23EB75374(&dword_27E381438, "[AssistantUIController(Private) startRestoreNetwork:]", 100, " restoring with name only \n");
    }

    result = objc_msgSend_joinNetworkWithNameAsync_password_rememberChoice_(v6, v10, network, 0, 1);
    if (!result)
    {
LABEL_24:
      v21 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v18, v19, v20);
      objc_msgSend_addObserver_selector_name_object_(v21, v22, self, sel_restoreNetworkDone_, @"com.apple.WiFiUtils.Join.Complete", 0);
      return 0;
    }
  }

  return result;
}

- (void)restoreNetworkDone:(id)done
{
  if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
  {
    sub_23EB75374(&dword_27E381438, "[AssistantUIController(Private) restoreNetworkDone:]", 100, "\n");
  }

  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, done, v3);
  objc_msgSend_removeObserver_name_object_(v6, v7, self, @"com.apple.WiFiUtils.Join.Complete", 0);
  v11 = objc_msgSend_userInfo(done, v8, v9, v10);
  v14 = objc_msgSend_objectForKey_(v11, v12, @"WiFiUtils_OSStatus", v13);
  if (v14)
  {
    objc_msgSend_integerValue(v14, v15, v16, v17);
  }

  if (self->_state == 11 && self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;
    v22 = objc_msgSend_assistantResult(self, v18, v19, v20);

    MEMORY[0x2821F9670](delegate, sel_doneWithAssistantResult_, v22, v23);
  }
}

@end