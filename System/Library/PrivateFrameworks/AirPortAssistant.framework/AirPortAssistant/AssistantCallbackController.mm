@interface AssistantCallbackController
+ (id)keychainPasswordForBaseStation:(id)station;
+ (int)removeKeychainPasswordForBaseStation:(id)station;
+ (int)updateKeychainBasePassword:(id)password forMACAddress:(id)address withBaseName:(id)name;
+ (int)updateKeychainNetworkPassword:(id)password forNetworkNamed:(id)named;
+ (void)keychainPasswordForBaseStation:(id)station delegate:(id)delegate;
- (AssistantCallbackController)init;
- (int)assistantCallback:(AssistantCallbackContext *)callback withSelector:(int)selector;
- (int)startJoinNetwork:(id)network password:(id)password rememberChoice:(int)choice;
- (int)startScanForNetworks:(id)networks wifiType:(int)type mergeResults:(BOOL)results maxAge:(unint64_t)age;
- (void)callbackAskUserAQuestionResult:(int)result result:(int)a4;
- (void)callbackAskUserForPasswordResult:(int)result password:(id)password remember:(int)remember;
- (void)callbackAskUserToChooseFromStringListResult:(int)result selectedString:(id)string;
- (void)dealloc;
- (void)joinNetworkDone:(id)done;
- (void)scanForNetworksDone:(id)done;
- (void)userResponseToJoinNetwork:(int)network;
- (void)userResponseToPPPoECredsFailed:(int)failed;
- (void)userResponseToWarning:(int)warning;
@end

@implementation AssistantCallbackController

- (AssistantCallbackController)init
{
  v3.receiver = self;
  v3.super_class = AssistantCallbackController;
  return [(AssistantCallbackController *)&v3 init];
}

- (void)dealloc
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3);
  objc_msgSend_removeObserver_name_object_(v5, v6, self, @"com.apple.WiFiUtils.Join.Complete", 0);
  v10 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v7, v8, v9);
  objc_msgSend_removeObserver_name_object_(v10, v11, self, @"com.apple.WiFiUtils.Scan.Complete", 0);
  uiDelegate = self->_uiDelegate;
  if (uiDelegate && self->_callbackContext)
  {
    objc_msgSend_callbackAskCancel(uiDelegate, v12, v13, v14);
  }

  v16.receiver = self;
  v16.super_class = AssistantCallbackController;
  [(AssistantCallbackController *)&v16 dealloc];
}

+ (int)updateKeychainNetworkPassword:(id)password forNetworkNamed:(id)named
{
  if (named)
  {
    return 0;
  }

  else
  {
    return -6705;
  }
}

+ (int)updateKeychainBasePassword:(id)password forMACAddress:(id)address withBaseName:(id)name
{
  result = -6705;
  if (address && password && name)
  {
    if (objc_msgSend_length(address, a2, password, address))
    {
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_23EB5292C;
      block[3] = &unk_278C66C28;
      block[4] = address;
      block[5] = password;
      block[6] = name;
      dispatch_async(global_queue, block);
      return 0;
    }

    else
    {
      return -6705;
    }
  }

  return result;
}

+ (id)keychainPasswordForBaseStation:(id)station
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = 0;
  if (!station)
  {
    goto LABEL_13;
  }

  v4 = 0;
  if (sub_23EB6AB20(station, &v18))
  {
    goto LABEL_15;
  }

  v5 = v18;
  if (!v18)
  {
    goto LABEL_15;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v3, &v14, v19, 16);
  if (!v6)
  {
LABEL_13:
    v4 = 0;
    goto LABEL_15;
  }

  v9 = v6;
  v10 = *v15;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = objc_msgSend_keychainPasswordForMACAddress_(KeychainWrapper, v7, *(*(&v14 + 1) + 8 * i), v8);
      if (v12)
      {
        v4 = v12;
        goto LABEL_15;
      }
    }

    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v14, v19, 16);
    v4 = 0;
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_15:

  return v4;
}

+ (void)keychainPasswordForBaseStation:(id)station delegate:(id)delegate
{
  v4 = 0;
  v10 = 0;
  if (station)
  {
    if (delegate)
    {
      v7 = sub_23EB6AB20(station, &v10);
      v4 = v10;
      if (!v7)
      {
        if (v10)
        {
          global_queue = dispatch_get_global_queue(0, 0);
          v9[0] = MEMORY[0x277D85DD0];
          v9[1] = 3221225472;
          v9[2] = sub_23EB52BB0;
          v9[3] = &unk_278C66C28;
          v9[4] = v4;
          v9[5] = delegate;
          v9[6] = station;
          dispatch_async(global_queue, v9);
          v4 = v10;
        }
      }
    }
  }
}

+ (int)removeKeychainPasswordForBaseStation:(id)station
{
  v9 = 0;
  if (station)
  {
    v3 = sub_23EB6AB20(station, &v9);
    v4 = v9;
    if (v3)
    {
      v5 = v3;
    }

    else if (v9)
    {
      global_queue = dispatch_get_global_queue(0, 0);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = sub_23EB52DA4;
      v8[3] = &unk_278C66C50;
      v8[4] = v4;
      dispatch_async(global_queue, v8);
      v5 = 0;
      v4 = v9;
    }

    else
    {
      v5 = -6728;
    }
  }

  else
  {
    v4 = 0;
    v5 = -6705;
  }

  return v5;
}

- (void)callbackAskUserForPasswordResult:(int)result password:(id)password remember:(int)remember
{
  callbackContext = self->_callbackContext;
  if (callbackContext)
  {
    if (result)
    {
LABEL_3:
      sub_23EBEB6CC(callbackContext, result);
      goto LABEL_4;
    }

    if (!password)
    {
      result = -6705;
      goto LABEL_3;
    }

    v11 = sub_23EBEB5E8(callbackContext, @"BSAssistantCallback_String", password, password, *&remember, v5, v6, v7);
    result = v11;
    if (remember != 2 && !v11)
    {
      v17 = MEMORY[0x277CBED28];
      if (remember != 1)
      {
        v17 = MEMORY[0x277CBED10];
      }

      result = sub_23EBEB5E8(self->_callbackContext, @"BSAssistantCallback_Boolean", *v17, v12, v13, v14, v15, v16);
    }

    callbackContext = self->_callbackContext;
    if (callbackContext)
    {
      goto LABEL_3;
    }
  }

LABEL_4:
  self->_callbackContext = 0;
}

- (void)callbackAskUserToChooseFromStringListResult:(int)result selectedString:(id)string
{
  resultCopy = result;
  callbackContext = self->_callbackContext;
  if (!result && callbackContext)
  {
    resultCopy = sub_23EBEB5E8(callbackContext, @"BSAssistantCallback_String", string, string, v4, v5, v6, v7);
    callbackContext = self->_callbackContext;
  }

  sub_23EBEB6CC(callbackContext, resultCopy);
  self->_callbackContext = 0;
}

- (void)callbackAskUserAQuestionResult:(int)result result:(int)a4
{
  switch(result)
  {
    case 5:
      MEMORY[0x2821F9670](self, sel_userResponseToPPPoECredsFailed_, *&a4, *&a4);
      break;
    case 4:
      objc_msgSend_userResponseToWarning_(self, a2, *&a4, *&a4);
      break;
    case 3:
      objc_msgSend_userResponseToJoinNetwork_(self, a2, *&a4, *&a4);
      break;
  }
}

- (int)assistantCallback:(AssistantCallbackContext *)callback withSelector:(int)selector
{
  if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
  {
    sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) assistantCallback:withSelector:]", 800, "inSelector: %d\n", selector);
  }

  switch(selector)
  {
    case 1:
      v7 = objc_msgSend_subclassAssistantCallback_(self, a2, callback, *&selector);
      if (v7)
      {
        goto LABEL_99;
      }

      return 0;
    case 2:
      v111 = 0;
      v112 = 0;
      sub_23EBEB494(callback, @"BSAssistantCallback_ScanInfo", &v111);
      if (v7)
      {
        goto LABEL_99;
      }

      if (!v111)
      {
        goto LABEL_151;
      }

      sub_23EBEB494(callback, @"BSAssistantCallback_Boolean", &v112);
      if (v50)
      {
        updated = v50;
        if (v50 != -6727)
        {
          goto LABEL_100;
        }

        v112 = *MEMORY[0x277CBED10];
      }

      if (self->_callbackContext)
      {
        goto LABEL_22;
      }

      self->_callbackContext = callback;
      if (CFBooleanGetValue(v112) && self->_uiDelegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v54 = objc_msgSend_objectForKey_(v111, v51, @"SSID_STR", v52);
        if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
        {
          sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) assistantCallback:withSelector:]", 800, "***Asking user if switching is OK\n");
        }

        uiDelegate = self->_uiDelegate;
        v56 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v53, v54, @"kAssistantCallbackAskUserParamKey_SwitchNetwork_SSID");
        v7 = objc_msgSend_callbackAskUserAQuestion_paramDict_forController_(uiDelegate, v57, 3, v56, self);
        if (v7)
        {
          goto LABEL_99;
        }
      }

      else
      {
        objc_msgSend_userResponseToJoinNetwork_(self, v51, 0, v52);
      }

      return 0;
    case 3:
      if (self->_callbackContext)
      {
        goto LABEL_22;
      }

      self->_callbackContext = callback;
      if (self->_uiDelegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v111 = 0;
        v112 = 0;
        v109 = 0;
        v110 = 0;
        v107 = 0;
        v108 = 0;
        v105 = 0;
        v106 = 0;
        v104 = 0;
        sub_23EBEB494(callback, @"kBSAssistantCallback_Warn_PromptKey", &v112);
        if (v7)
        {
          goto LABEL_99;
        }

        if (!v112)
        {
          goto LABEL_151;
        }

        sub_23EBEB494(callback, @"kBSAssistantCallback_Warn_PromptParam1", &v111);
        if (v87 == -6727)
        {
          v111 = 0;
        }

        else
        {
          updated = v87;
          if (v87)
          {
            goto LABEL_100;
          }

          if (!v111)
          {
            goto LABEL_151;
          }
        }

        sub_23EBEB494(callback, @"kBSAssistantCallback_Warn_PromptParam2", &v110);
        if (v95 == -6727)
        {
          v110 = 0;
        }

        else
        {
          updated = v95;
          if (v95)
          {
            goto LABEL_100;
          }

          if (!v110)
          {
            goto LABEL_151;
          }
        }

        sub_23EBEB494(callback, @"kBSAssistantCallback_Warn_MessageKey", &v109);
        if (v7)
        {
          goto LABEL_99;
        }

        if (v109)
        {
          sub_23EBEB494(callback, @"kBSAssistantCallback_Warn_MessageParam1", &v108);
          if (v96 == -6727)
          {
            v108 = 0;
          }

          else
          {
            updated = v96;
            if (v96)
            {
              goto LABEL_100;
            }

            if (!v108)
            {
              goto LABEL_151;
            }
          }

          sub_23EBEB494(callback, @"kBSAssistantCallback_Warn_MessageParam2", &v107);
          if (v97 == -6727)
          {
            v107 = 0;
          }

          else
          {
            updated = v97;
            if (v97)
            {
              goto LABEL_100;
            }

            if (!v107)
            {
              goto LABEL_151;
            }
          }

          sub_23EBEB494(callback, @"kBSAssistantCallback_Warn_OkKey", &v106);
          if (v98 == -6727)
          {
            v106 = 0;
          }

          else
          {
            updated = v98;
            if (v98)
            {
              goto LABEL_100;
            }

            if (!v106)
            {
              goto LABEL_151;
            }
          }

          sub_23EBEB494(callback, @"kBSAssistantCallback_Warn_CancelKey", &v105);
          if (v99 == -6727)
          {
            v100 = 0;
            v105 = 0;
          }

          else
          {
            updated = v99;
            if (v99)
            {
              goto LABEL_100;
            }

            v100 = v105;
            if (!v105)
            {
              goto LABEL_151;
            }
          }

          v7 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v104, "{%ks=%O%ks=%O%ks=%O%ks=%O%ks=%O%ks=%O%ks=%O%ks=%O}", "kAssistantCallbackAskUserParamKey_Warning_PromptKey", v112, "kAssistantCallbackAskUserParamKey_Warning_PromptParam1", v111, "kAssistantCallbackAskUserParamKey_Warning_PromptParam2", v110, "kAssistantCallbackAskUserParamKey_Warning_MessageKey", v109, "kAssistantCallbackAskUserParamKey_Warning_MessageParam1", v108, "kAssistantCallbackAskUserParamKey_Warning_MessageParam2", v107, "kAssistantCallbackAskUserParamKey_OKKey", v106, "kAssistantCallbackAskUserParamKey_CancelKey", v100);
          if (v7)
          {
            goto LABEL_99;
          }

          if (v104)
          {
            if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
            {
              sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) assistantCallback:withSelector:]", 800, "***Warning user\n");
            }

            updated = objc_msgSend_callbackAskUserAQuestion_paramDict_forController_(self->_uiDelegate, v101, 4, v104, self);
            v49 = v104;
            if (v104)
            {
              goto LABEL_41;
            }

            goto LABEL_42;
          }
        }

        goto LABEL_151;
      }

      objc_msgSend_userResponseToWarning_(self, a2, 0, *&selector);
      return 0;
    case 4:
      v111 = 0;
      v112 = 0;
      v109 = 0;
      v110 = 0;
      sub_23EBEB494(callback, @"kBSAssistantCallback_MessageKey", &v112);
      if (v7)
      {
        goto LABEL_99;
      }

      if (!v112)
      {
        goto LABEL_151;
      }

      sub_23EBEB494(callback, @"kBSAssistantCallback_OkKey", &v111);
      if (v7)
      {
        goto LABEL_99;
      }

      if (!v111)
      {
        goto LABEL_151;
      }

      sub_23EBEB494(callback, @"kBSAssistantCallback_CancelKey", &v110);
      if (v7)
      {
        goto LABEL_99;
      }

      if (!v110)
      {
        goto LABEL_151;
      }

      v7 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v109, "{%ks=%O%ks=%O%ks=%O}", "kAssistantCallbackAskUserParamKey_MessageKey", v112, "kAssistantCallbackAskUserParamKey_OKKey", v111, "kAssistantCallbackAskUserParamKey_CancelKey", v110);
      if (v7)
      {
        goto LABEL_99;
      }

      if (!v109)
      {
        goto LABEL_151;
      }

      if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
      {
        sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) assistantCallback:withSelector:]", 800, "***Asking User whether to Skip PPPoE Creds failed\n");
      }

      if (self->_callbackContext)
      {
        goto LABEL_22;
      }

      self->_callbackContext = callback;
      updated = objc_msgSend_callbackAskUserAQuestion_paramDict_forController_(self->_uiDelegate, v48, 5, v109, self);
      v49 = v109;
      if (v109)
      {
LABEL_41:
        CFRelease(v49);
      }

LABEL_42:
      if (updated)
      {
        goto LABEL_100;
      }

      return 0;
    case 5:
    case 6:
      v112 = 0;
      sub_23EBEB494(callback, @"BSAssistantCallback_AskUserDictionary", &v112);
      if (v7)
      {
        goto LABEL_99;
      }

      v11 = v112;
      if (!v112)
      {
        goto LABEL_151;
      }

      if (self->_uiDelegate)
      {
        if (objc_opt_respondsToSelector())
        {
          if (self->_callbackContext)
          {
            goto LABEL_22;
          }

          self->_callbackContext = callback;
          v12 = self->_uiDelegate;
          v13 = objc_msgSend_allKeys(v112, v8, v9, v10);
          started = objc_msgSend_callbackAskUserToChooseFromStringList_context_forController_(v12, v14, v13, selector == 6, self);
          goto LABEL_110;
        }

        v11 = v112;
      }

      v88 = objc_msgSend_allKeys(v11, v8, v9, v10);
      if (objc_msgSend_count(v88, v89, v90, v91))
      {
        v46 = objc_msgSend_objectAtIndex_(v88, v92, 0, v93);
        v47 = @"BSAssistantCallback_String";
        goto LABEL_98;
      }

      return 0;
    case 7:
      v109 = 0;
      v110 = 0;
      v112 = 0;
      sub_23EBEB494(callback, @"BSAssistantCallback_String", &v112);
      v111 = 0;
      sub_23EBEB494(callback, @"BSAssistantCallback_Number", &v111);
      sub_23EBEB494(callback, @"BSAssistantCallback_WiFiType", &v110);
      if (v7)
      {
        goto LABEL_99;
      }

      if (!v110)
      {
        goto LABEL_119;
      }

      sub_23EBEB494(callback, @"BSAssistantCallback_Boolean", &v109);
      if (v7)
      {
        goto LABEL_99;
      }

      if (!v109)
      {
        goto LABEL_151;
      }

      if (self->_callbackContext)
      {
        goto LABEL_22;
      }

      self->_callbackContext = callback;
      v67 = v112;
      v68 = objc_msgSend_integerValue(v110, v64, v65, v66);
      v72 = objc_msgSend_BOOLValue(v109, v69, v70, v71);
      v76 = objc_msgSend_integerValue(v111, v73, v74, v75);
      started = objc_msgSend_startScanForNetworks_wifiType_mergeResults_maxAge_(self, v77, v67, v68, v72, v76);
      goto LABEL_110;
    case 8:
      v31 = objc_msgSend_sharedInstance(WiFiUtils, a2, callback, *&selector);
      if (!objc_msgSend_airPortIsOn(v31, v32, v33, v34))
      {
        goto LABEL_78;
      }

      if (!objc_msgSend_isCurrentlyAssociatedToAnInfrastructureNetwork_(v31, v35, 0, v36))
      {
        goto LABEL_78;
      }

      CurrentAssociationInfo = objc_msgSend_getCurrentAssociationInfo(v31, v37, v38, v39);
      if (!CurrentAssociationInfo)
      {
        goto LABEL_78;
      }

      v46 = CurrentAssociationInfo;
      v47 = @"BSAssistantCallback_AssociationInfo";
LABEL_98:
      v7 = sub_23EBEB5E8(callback, v47, v46, v41, v42, v43, v44, v45);
      if (v7)
      {
        goto LABEL_99;
      }

      goto LABEL_118;
    case 9:
      v78 = objc_msgSend_sharedInstance(WiFiUtils, a2, callback, *&selector);
      if (!objc_msgSend_airPortIsOn(v78, v79, v80, v81))
      {
        goto LABEL_82;
      }

      v29 = objc_msgSend_disassociateSync(v78, v82, v83, v84);
      goto LABEL_81;
    case 10:
      v22 = objc_msgSend_sharedInstance(WiFiUtils, a2, callback, *&selector);
      if (objc_msgSend_airPortIsOn(v22, v23, v24, v25))
      {
        v29 = objc_msgSend_clearScanCacheSync(v22, v26, v27, v28);
LABEL_81:
        v85 = v29;
      }

      else
      {
LABEL_82:
        v85 = 0;
      }

      callbackCopy2 = callback;
      goto LABEL_84;
    case 11:
      v111 = 0;
      v112 = 0;
      sub_23EBEB494(callback, @"BSAssistantCallback_String", &v112);
      sub_23EBEB494(callback, @"BSAssistantCallback_StringList", &v111);
LABEL_78:
      updated = -6727;
      goto LABEL_100;
    case 12:
      if (!self->_uiDelegate || (objc_opt_respondsToSelector() & 1) == 0)
      {
        updated = -6735;
        goto LABEL_100;
      }

      v111 = 0;
      v112 = 0;
      sub_23EBEB494(callback, @"BSAssistantCallback_KeychainServiceType", &v112);
      if (v7)
      {
        goto LABEL_99;
      }

      sub_23EBEB494(callback, @"BSAssistantCallback_KeychainDeviceName", &v111);
      if (v7)
      {
        goto LABEL_99;
      }

      if (objc_msgSend_isEqualToString_(v112, v16, @"keychainBaseStationType", v17))
      {
        isEqualToString = 0;
      }

      else
      {
        isEqualToString = objc_msgSend_isEqualToString_(v112, v18, @"keychainNetworkType", v19);
      }

      if (self->_callbackContext)
      {
LABEL_22:
        updated = -6721;
        goto LABEL_100;
      }

      self->_callbackContext = callback;
      started = objc_msgSend_callbackAskUserForPassword_param_forController_(self->_uiDelegate, v18, isEqualToString, v111, self);
LABEL_110:
      updated = started;
      if (!started)
      {
        return 0;
      }

      goto LABEL_100;
    case 13:
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_23EB53AAC;
      block[3] = &unk_278C66C70;
      block[4] = callback;
      v103 = 13;
      dispatch_async(global_queue, block);
      return 0;
    case 14:
      v111 = 0;
      v112 = 0;
      v110 = 0;
      sub_23EBEB494(callback, @"BSAssistantCallback_KeychainAccount", &v112);
      if (v7)
      {
        goto LABEL_99;
      }

      if (!v112)
      {
        goto LABEL_151;
      }

      sub_23EBEB494(callback, @"BSAssistantCallback_KeychainServiceType", &v111);
      if (v7)
      {
        goto LABEL_99;
      }

      if (!v111)
      {
        goto LABEL_151;
      }

      sub_23EBEB494(callback, @"BSAssistantCallback_String", &v110);
      if (v7)
      {
        goto LABEL_99;
      }

      if (!v110)
      {
LABEL_151:
        updated = -6728;
        goto LABEL_100;
      }

      if (!objc_msgSend_isEqualToString_(v111, v58, @"keychainBaseStationType", v59))
      {
        if (objc_msgSend_isEqualToString_(v111, v60, @"keychainNetworkType", v62))
        {
          goto LABEL_118;
        }

LABEL_119:
        updated = -6705;
LABEL_100:
        if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
        {
          sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) assistantCallback:withSelector:]", 800, "failing inSelector: %d err: %m\n", selector);
        }

        sub_23EBEB6CC(callback, updated);
        self->_callbackContext = 0;
        return 0;
      }

      v109 = 0;
      v112 = sub_23EB6D320(v112, 0, v61, v62);
      sub_23EBEB494(callback, @"BSAssistantCallback_KeychainDeviceName", &v109);
      if (v7)
      {
LABEL_99:
        updated = v7;
        goto LABEL_100;
      }

      updated = objc_msgSend_updateKeychainBasePassword_forMACAddress_withBaseName_(AssistantCallbackController, v63, v110, v112, v109);
      if (updated)
      {
        goto LABEL_100;
      }

LABEL_118:
      callbackCopy2 = callback;
      v85 = 0;
LABEL_84:
      sub_23EBEB6CC(callbackCopy2, v85);
      return 0;
    default:
      goto LABEL_119;
  }
}

- (void)userResponseToJoinNetwork:(int)network
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v11 = 0;
  if (!self->_callbackContext)
  {
    goto LABEL_17;
  }

  if (network)
  {
LABEL_18:
    sub_23EBEB6CC(&self->_callbackContext->var0, network);
    self->_callbackContext = 0;
    return;
  }

  v13 = 0;
  if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
  {
    sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) userResponseToJoinNetwork:]", 800, "***Done asking user if switching is OK\n");
  }

  sub_23EBEB494(self->_callbackContext, @"BSAssistantCallback_ScanInfo", &v14);
  if (started)
  {
LABEL_8:
    network = started;
    goto LABEL_18;
  }

  if (!v14)
  {
LABEL_17:
    network = -6705;
    goto LABEL_18;
  }

  sub_23EBEB52C(self->_callbackContext, @"BSAssistantCallback_JoinRememberChoice", &v12);
  if (started)
  {
    goto LABEL_8;
  }

  if (!objc_msgSend_networkIsSecure_secMode_isEnterprise_(WiFiUtils, v5, v14, 0, &v11) || (v11 & 1) != 0)
  {
    NetworkPassword = 0;
LABEL_14:
    started = objc_msgSend_startJoinNetwork_password_rememberChoice_(self, v6, v14, NetworkPassword, v12);
    goto LABEL_15;
  }

  sub_23EBEB494(self->_callbackContext, @"BSAssistantCallback_ScanInfoPassword", &v13);
  if (v8 == -6727)
  {
    NetworkPassword = objc_msgSend_getNetworkPassword_(WiFiUtils, v9, v14, v10);
    v13 = NetworkPassword;
    if (!NetworkPassword)
    {
      network = -16;
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  network = v8;
  if (v8)
  {
    goto LABEL_18;
  }

  started = objc_msgSend_startJoinNetwork_password_rememberChoice_(self, v9, v14, v13, v12);
LABEL_15:
  if (started)
  {
    goto LABEL_8;
  }
}

- (void)userResponseToWarning:(int)warning
{
  if (self->_callbackContext)
  {
    warningCopy = warning;
    if (!warning)
    {
      if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
      {
        sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) userResponseToWarning:]", 800, "***Done giving the user a warning\n");
      }

      warningCopy = 0;
    }
  }

  else
  {
    warningCopy = -6705;
  }

  sub_23EBEB6CC(&self->_callbackContext->var0, warningCopy);
  self->_callbackContext = 0;
}

- (void)userResponseToPPPoECredsFailed:(int)failed
{
  if (self->_callbackContext)
  {
    failedCopy = failed;
    if (!failed)
    {
      if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
      {
        sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) userResponseToPPPoECredsFailed:]", 800, "***Done asking user to skip bad PPPoE Credentials\n");
      }

      failedCopy = 0;
    }
  }

  else
  {
    failedCopy = -6705;
  }

  sub_23EBEB6CC(&self->_callbackContext->var0, failedCopy);
  self->_callbackContext = 0;
}

- (int)startJoinNetwork:(id)network password:(id)password rememberChoice:(int)choice
{
  if (network)
  {
    v6 = *&choice;
    v9 = objc_msgSend_sharedInstance(WiFiUtils, a2, network, password);
    v11 = objc_msgSend_joinNetworkWithScanInfoAsync_password_rememberChoice_(v9, v10, network, password, v6);
  }

  else
  {
    v11 = 4294960591;
  }

  if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
  {
    sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) startJoinNetwork:password:rememberChoice:]", 800, "err: %#m\n", v11);
  }

  v12 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, network, password);
  objc_msgSend_addObserver_selector_name_object_(v12, v13, self, sel_joinNetworkDone_, @"com.apple.WiFiUtils.Join.Complete", 0);
  return v11;
}

- (void)joinNetworkDone:(id)done
{
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, done, v3);
  objc_msgSend_removeObserver_name_object_(v6, v7, self, @"com.apple.WiFiUtils.Join.Complete", 0);
  if (self->_callbackContext && (v11 = objc_msgSend_userInfo(done, v8, v9, v10), (v14 = objc_msgSend_objectForKey_(v11, v12, @"WiFiUtils_OSStatus", v13)) != 0))
  {
    v18 = objc_msgSend_integerValue(v14, v15, v16, v17);
  }

  else
  {
    v18 = 4294960591;
  }

  if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
  {
    sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) joinNetworkDone:]", 800, "err: %#m\n", v18);
  }

  sub_23EBEB6CC(&self->_callbackContext->var0, v18);
  self->_callbackContext = 0;
}

- (int)startScanForNetworks:(id)networks wifiType:(int)type mergeResults:(BOOL)results maxAge:(unint64_t)age
{
  resultsCopy = results;
  v8 = *&type;
  v11 = objc_msgSend_sharedInstance(WiFiUtils, a2, networks, *&type);
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v12, v13, v14);
    objc_msgSend_addObserver_selector_name_object_(v16, v17, self, sel_scanForNetworksDone_, @"com.apple.WiFiUtils.Scan.Complete", 0);
    v22 = objc_msgSend_asyncWiFiScan_wifiType_merge_maxAge_(v15, v18, networks, v8, resultsCopy, age);
    if (v22)
    {
      v23 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v19, v20, v21);
      objc_msgSend_removeObserver_name_object_(v23, v24, self, @"com.apple.WiFiUtils.Scan.Complete", 0);
    }
  }

  else
  {
    v22 = 4294960569;
  }

  if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
  {
    sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) startScanForNetworks:wifiType:mergeResults:maxAge:]", 800, "err: %#m\n", v22);
  }

  return v22;
}

- (void)scanForNetworksDone:(id)done
{
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, done, v3);
  objc_msgSend_removeObserver_name_object_(v6, v7, self, @"com.apple.WiFiUtils.Scan.Complete", 0);
  if (self->_callbackContext && (v11 = objc_msgSend_userInfo(done, v8, v9, v10)) != 0 && (v14 = v11, (v15 = objc_msgSend_objectForKey_(v11, v12, @"WiFiUtils_OSStatus", v13)) != 0))
  {
    v21 = objc_msgSend_integerValue(v15, v16, v17, v18);
    if (!v21)
    {
      v22 = objc_msgSend_objectForKey_(v14, v19, @"WiFiUtils_ScanInfos", v20);
      if (objc_msgSend_count(v22, v23, v24, v25))
      {
        v21 = sub_23EBEB5E8(self->_callbackContext, @"BSAssistantCallback_ScanInfoRecords", v22, v26, v27, v28, v29, v30);
      }

      else
      {
        v21 = 4294960569;
      }
    }
  }

  else
  {
    v21 = 4294960591;
  }

  if (dword_27E380EF8 <= 800 && (dword_27E380EF8 != -1 || sub_23EB74AC8(&dword_27E380EF8, 0x320u)))
  {
    sub_23EB75374(&dword_27E380EF8, "[AssistantCallbackController(Private) scanForNetworksDone:]", 800, "err: %#m\n", v21);
  }

  sub_23EBEB6CC(&self->_callbackContext->var0, v21);
  self->_callbackContext = 0;
}

@end