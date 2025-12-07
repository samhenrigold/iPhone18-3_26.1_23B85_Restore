@interface AUSetupController
+ (id)setupController;
+ (void)initialize;
- (AUSetupController)init;
- (BOOL)dirty;
- (BOOL)hasACPFeature:(unsigned int)feature;
- (BOOL)isMonitoring;
- (BOOL)rememberBasePassword;
- (BOOL)rememberWiFiPassword;
- (NSDictionary)bonjourRecord;
- (NSString)keychainBasePassword;
- (NSString)keychainDiskPassword;
- (NSString)keychainWiFiPassword;
- (_BaseStation)bsRef;
- (id)allKeychainMACAddresses;
- (id)bestKeychainMACAddress;
- (id)snapshotChangedKeys;
- (id)targetBaseInfoDict;
- (id)validateAllSettingsAndGetErrors;
- (id)validateSettingsAndGetErrors:(id)errors;
- (int)busyState;
- (int)cancelSetup;
- (int)cancelTask;
- (int)closeAllConnections:(BOOL)connections;
- (int)copyValue:(id *)value forBSSetting:(int)setting;
- (int)copyValue:(id *)value forSettingPath:(id)path;
- (int)getValue:(id *)value forBSSetting:(int)setting;
- (int)getValue:(id *)value forSettingPath:(id)path;
- (int)ignoreProblemCode:(unsigned int)code;
- (int)readPropertyListFromBaseAsync:(id)async;
- (int)rpcDisconnectAllDiskUsersWithMessageAsync:(id)async;
- (int)rpcRefreshBSSettingAsync:(int)async;
- (int)rpcRenewDHCPLeaseAsync;
- (int)rpcStartRemoteBrowse:(id)browse withService:(id)service;
- (int)rpcSystemInterfacesAsync;
- (int)rpcWPSAllowClientAsync:(id)async;
- (int)rpcWPSStartAsync:(BOOL)async dayPass:(BOOL)pass timeout:(unsigned int)timeout;
- (int)rpcWPSStopAsync;
- (int)setMonitorForChanges:(BOOL)changes;
- (int)setValue:(id)value forBSSetting:(int)setting;
- (int)setValue:(id)value forSettingPath:(id)path;
- (int)setupFromAutoguessRecommendation:(id)recommendation withOptions:(id)options;
- (int)setupWithTargetBaseStation:(id)station andSettings:(id)settings;
- (int)setupWithTargetNetwork:(id)network;
- (int)snapshotPop:(BOOL)pop;
- (int)snapshotPush;
- (int)stateForProblem:(unsigned int)problem;
- (int)subclassAssistantCallback:(AssistantCallbackContext *)callback;
- (int)taskArchiveDiskAsync:(id)async;
- (int)taskEraseDiskAsync:(id)async;
- (int)taskRestartAsync;
- (int)taskRestoreDefaultsAsync:(BOOL)async;
- (int)taskState;
- (int)taskUploadFirmwareAsync:(id)async;
- (int)unIgnoreProblemCode:(unsigned int)code;
- (int)updateKeychainWithPasswords;
- (int)updateKeychainWithPasswordsWithStatus:(int)status;
- (int)updateSettingsAsync;
- (int64_t)ethernetPortCount;
- (int64_t)unignoredProblemCount;
- (unsigned)taskCode;
- (void)dealloc;
- (void)deleteKeychainBasePassword;
- (void)deleteKeychainWirelessPassword;
- (void)handleBusyComplete;
- (void)handleBusyStart;
- (void)handleSetupComplete:(int)complete;
- (void)handleTaskComplete;
- (void)loadKeychainBasePassword;
- (void)loadKeychainWirelessPassword;
- (void)logChangesToCCL;
- (void)resetWiFiState;
- (void)saveKeychainBasePassword;
- (void)setBonjourRecord:(id)record;
- (void)setKeychainBasePassword:(id)password;
- (void)setKeychainDiskPassword:(id)password;
- (void)setKeychainWiFiPassword:(id)password;
- (void)setRememberBasePassword:(BOOL)password;
- (void)setRememberWiFiPassword:(BOOL)password;
- (void)setupUIConfigResult:(int)result withOptions:(id)options;
- (void)setupWiFiState;
- (void)snapshotResetAll;
- (void)updateRememberKeychainFlagsButSkipBasePassword:(BOOL)password;
- (void)updateRememberKeychainFlagsIfInitializing;
@end

@implementation AUSetupController

+ (void)initialize
{
  if (qword_27E383428 != -1)
  {
    sub_23EC18E88();
  }
}

- (AUSetupController)init
{
  v14.receiver = self;
  v14.super_class = AUSetupController;
  v2 = [(AssistantCallbackController *)&v14 init];
  if (v2)
  {
    *(v2 + 7) = objc_alloc_init(MEMORY[0x277CBEB58]);
    sub_23EBBCBC4(v2 + 5);
    sub_23EBBD130(*(v2 + 5), sub_23EB8491C, v2);
    v3 = *(v2 + 5);
    v7 = objc_msgSend_assistantCallback(v2, v4, v5, v6);
    sub_23EBBD1F4(v3, v7, v2);
    *(v2 + 88) = 1;
    v11 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v8, v9, v10);
    objc_msgSend_addObserver_selector_name_object_(v11, v12, v2, sel_applicationDidEnterBackgroundNotification_, *MEMORY[0x277D76660], 0);
  }

  if (dword_27E3818B0 <= 800 && (dword_27E3818B0 != -1 || sub_23EB74AC8(&dword_27E3818B0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3818B0, "[AUSetupController init]", 800, "\n");
  }

  return v2;
}

- (void)dealloc
{
  objc_msgSend_closeAllConnections_(self, a2, 1, v2);
  objc_msgSend_setLastDNSName_(self, v4, 0, v5);
  objc_msgSend_setLastSystemName_(self, v6, 0, v7);
  objc_msgSend_setAutoGuessSetupRecommendation_(self, v8, 0, v9);
  objc_msgSend_setLastInstrumentation_(self, v10, 0, v11);

  v15 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v12, v13, v14);
  objc_msgSend_removeObserver_name_object_(v15, v16, self, *MEMORY[0x277D76660], 0);
  v17.receiver = self;
  v17.super_class = AUSetupController;
  [(AssistantCallbackController *)&v17 dealloc];
}

- (int)closeAllConnections:(BOOL)connections
{
  connectionsCopy = connections;
  if (dword_27E3818B0 <= 800 && (dword_27E3818B0 != -1 || sub_23EB74AC8(&dword_27E3818B0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3818B0, "[AUSetupController closeAllConnections:]", 800, "\n");
  }

  if (!objc_msgSend_activeTask(self, a2, connections, v3) || connectionsCopy)
  {
    objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x277D82BB8], v6, self, sel_handleCopyAllSettingsUpdateThread_, 0);
    objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x277D82BB8], v7, self, sel_handleSettingsUpdate_, 0);

    self->_setupDelegates = 0;
    objc_sync_enter(self);
    configContext = self->_configContext;
    if (configContext)
    {
      sub_23EBBD130(configContext, 0, 0);
      connectionsCopy = sub_23EBBCCF0(self->_configContext);
      self->_configContext = 0;
    }

    else
    {
      connectionsCopy = 0;
    }

    objc_sync_exit(self);

    self->_lastHeardFromDevice = 0;
  }

  return connectionsCopy;
}

- (int)subclassAssistantCallback:(AssistantCallbackContext *)callback
{
  if (!callback)
  {
    LODWORD(v9) = -6705;
    return v9;
  }

  v43 = 0;
  v44 = 0;
  sub_23EBEB494(callback, @"kBSAssistantCallback_Configuration_UIConfigSelector", &v44);
  v8 = v9;
  LODWORD(v9) = 0;
  if (!v8 && v44)
  {
    v10 = objc_msgSend_integerValue(v44, v5, v6, v7);
    if (sub_23EBEB5B8(callback, @"kBSAssistantCallback_Configuration_UIConfigParamDict"))
    {
      sub_23EBEB494(callback, @"kBSAssistantCallback_Configuration_UIConfigParamDict", &v43);
      if (v9)
      {
        return v9;
      }

      v14 = v43;
      if (!v43)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = 0;
      v43 = 0;
    }

    if ((v10 - 1) < 6)
    {
      sub_23EBEB494(callback, @"kBSAssistantCallback_Configuration_UIConfigConnectionStatusOSStatus", &v44);
      if (!v9)
      {
        if (!v44)
        {
LABEL_39:
          LODWORD(v9) = -6728;
          return v9;
        }

        v21 = objc_msgSend_integerValue(v44, v15, v16, v17);
        if (dword_27E3818B0 <= 800 && (dword_27E3818B0 != -1 || sub_23EB74AC8(&dword_27E3818B0, 0x320u)))
        {
          sub_23EB75374(&dword_27E3818B0, "[AUSetupController subclassAssistantCallback:]", 800, "selector: %d status: %ld paramDict: %@\n", v10, v21, v43);
        }

        if (!objc_msgSend_uiConfigDelegate(self, v18, v19, v20) || (objc_msgSend_uiConfigDelegate(self, v22, v23, v24), (objc_opt_respondsToSelector() & 1) == 0))
        {
          if (v21)
          {
            sub_23EBEB6CC(callback, -6757);
          }

          goto LABEL_43;
        }

        callbackContext = self->super._callbackContext;
        if (!callbackContext || callbackContext == callback)
        {
          if (v21)
          {
            callbackCopy = callback;
          }

          else
          {
            callbackCopy = 0;
          }

          self->super._callbackContext = callbackCopy;
          v30 = objc_msgSend_uiConfigDelegate(self, v25, v26, v27);
          objc_msgSend_setupUIConfigConnectionStatusUpdated_status_paramDict_forController_(v30, v31, v10, v21, v43, self);
          goto LABEL_43;
        }

LABEL_44:
        LODWORD(v9) = -6721;
        return v9;
      }

      return v9;
    }

    if ((v10 - 7) >= 2)
    {
      LODWORD(v9) = -6705;
      return v9;
    }

    if (dword_27E3818B0 > 800)
    {
      goto LABEL_31;
    }

    if (dword_27E3818B0 == -1)
    {
      if (!sub_23EB74AC8(&dword_27E3818B0, 0x320u))
      {
        goto LABEL_31;
      }

      v14 = v43;
    }

    sub_23EB75374(&dword_27E3818B0, "[AUSetupController subclassAssistantCallback:]", 800, "selector: %d paramDict: %@\n", v10, v14);
LABEL_31:
    v9 = objc_msgSend_uiConfigDelegate(self, v11, v12, v13);
    if (v9)
    {
      objc_msgSend_uiConfigDelegate(self, v32, v33, v34);
      if (objc_opt_respondsToSelector())
      {
        v38 = self->super._callbackContext;
        if (v38)
        {
          v39 = v38 == callback;
        }

        else
        {
          v39 = 1;
        }

        if (!v39)
        {
          goto LABEL_44;
        }

        self->super._callbackContext = callback;
        v40 = objc_msgSend_uiConfigDelegate(self, v35, v36, v37);
        objc_msgSend_setupUIConfigPrompt_paramDict_forController_(v40, v41, v10, v43, self);
      }

LABEL_43:
      LODWORD(v9) = 0;
    }
  }

  return v9;
}

+ (id)setupController
{
  v2 = objc_alloc_init(AUSetupController);

  return v2;
}

- (int)cancelTask
{
  configContext = self->_configContext;
  if (configContext)
  {
    return sub_23EBBD00C(configContext);
  }

  else
  {
    return -6720;
  }
}

- (int)cancelSetup
{
  configContext = self->_configContext;
  if (configContext)
  {
    return sub_23EBBCEC0(configContext, 0);
  }

  else
  {
    return -6720;
  }
}

- (int)setValue:(id)value forBSSetting:(int)setting
{
  configContext = self->_configContext;
  if (!configContext)
  {
    return -6718;
  }

  v8 = 0;
  result = sub_23EBBEC90(configContext, &v8);
  if (!result)
  {
    if (v8)
    {
      return sub_23EBB3DBC(v8, setting, value);
    }

    else
    {
      return -6728;
    }
  }

  return result;
}

- (int)copyValue:(id *)value forBSSetting:(int)setting
{
  if (!value)
  {
    return -6705;
  }

  *value = 0;
  configContext = self->_configContext;
  if (!configContext)
  {
    return -6718;
  }

  if (!setting)
  {
    return -6705;
  }

  v8 = 0;
  result = sub_23EBBEC90(configContext, &v8);
  if (!result)
  {
    if (v8)
    {
      return sub_23EBB3F30(v8, setting, value);
    }

    else
    {
      return -6728;
    }
  }

  return result;
}

- (int)getValue:(id *)value forBSSetting:(int)setting
{
  v5 = objc_msgSend_copyValue_forBSSetting_(self, a2, value, *&setting);
  if (!v5)
  {
    v6 = *value;
  }

  return v5;
}

- (int)setValue:(id)value forSettingPath:(id)path
{
  configContext = self->_configContext;
  if (!configContext)
  {
    return -6718;
  }

  v13 = 0;
  result = sub_23EBBEC90(configContext, &v13);
  if (!result)
  {
    v11 = v13;
    if (v13)
    {
      v12 = objc_msgSend_UTF8String(path, v8, v9, v10);
      return sub_23EBB3B84(v11, v12, value);
    }

    else
    {
      return -6728;
    }
  }

  return result;
}

- (int)copyValue:(id *)value forSettingPath:(id)path
{
  if (!value)
  {
    return -6705;
  }

  *value = 0;
  configContext = self->_configContext;
  if (!configContext)
  {
    return -6718;
  }

  if (!path)
  {
    return -6705;
  }

  v13 = 0;
  result = sub_23EBBEC90(configContext, &v13);
  if (!result)
  {
    v11 = v13;
    if (v13)
    {
      v12 = objc_msgSend_UTF8String(path, v8, v9, v10);
      return sub_23EBB3E20(v11, v12, value);
    }

    else
    {
      return -6728;
    }
  }

  return result;
}

- (int)getValue:(id *)value forSettingPath:(id)path
{
  v5 = objc_msgSend_copyValue_forSettingPath_(self, a2, value, path);
  if (!v5)
  {
    v6 = *value;
  }

  return v5;
}

- (BOOL)hasACPFeature:(unsigned int)feature
{
  configContext = self->_configContext;
  if (configContext)
  {
    v6 = 0;
    if (sub_23EBBEC90(configContext, &v6))
    {
      LOBYTE(configContext) = 0;
    }

    else
    {
      LOBYTE(configContext) = v6;
      if (v6)
      {
        LOBYTE(configContext) = sub_23EBB4248(v6, feature);
      }
    }
  }

  return configContext;
}

- (int)stateForProblem:(unsigned int)problem
{
  configContext = self->_configContext;
  if (configContext)
  {
    v4 = *&problem;
    v7 = 0;
    v6 = 0;
    if (sub_23EBBEC90(configContext, &v7))
    {
      LODWORD(configContext) = 0;
    }

    else
    {
      LODWORD(configContext) = v7;
      if (v7)
      {
        LODWORD(configContext) = sub_23EBB4248(v7, 1400460148);
        if (configContext)
        {
          LODWORD(configContext) = sub_23EBB427C(v7, v4, &v6);
          if (configContext)
          {
            if (v6)
            {
              LODWORD(configContext) = 1;
            }

            else
            {
              LODWORD(configContext) = 2;
            }
          }
        }
      }
    }
  }

  return configContext;
}

- (int64_t)unignoredProblemCount
{
  v31 = *MEMORY[0x277D85DE8];
  configContext = self->_configContext;
  if (!configContext)
  {
    return 0;
  }

  v28 = 0;
  v29 = 0;
  if (sub_23EBBEC90(configContext, &v29) || !v29)
  {
    return 0;
  }

  if (!sub_23EBB4248(v29, 1400460148))
  {
    v27 = 0;
    sub_23EBBF110(self->_configContext, &v27);
    if (v27)
    {
      return sub_23EB6B004(v27);
    }

    return 0;
  }

  v4 = 0;
  if (!sub_23EBB3F30(v29, 1937331060, &v28) && v28)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = objc_msgSend_objectForKey_(v28, v6, @"problems", v7, 0);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v23, v30, 16);
    if (v10)
    {
      v13 = v10;
      v4 = 0;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v16 = objc_msgSend_objectForKey_(*(*(&v23 + 1) + 8 * i), v11, @"code", v12);
          v20 = sub_23EB6D4A8(v16, v17, v18, v19);
          if (objc_msgSend_stateForProblem_(self, v21, v20, v22) == 2)
          {
            ++v4;
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v23, v30, 16);
      }

      while (v13);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)validateAllSettingsAndGetErrors
{
  v5 = 0;
  result = self->_configContext;
  if (result)
  {
    v6 = 0;
    if (sub_23EBBEC90(result, &v6))
    {
      return 0;
    }

    else
    {
      result = v6;
      if (v6)
      {
        v3 = sub_23EBB4690(v6, &v5);
        result = v5;
        if (v3 != -6727)
        {
          if (v5)
          {
            v4 = v5;
            return v5;
          }
        }
      }
    }
  }

  return result;
}

- (id)validateSettingsAndGetErrors:(id)errors
{
  v7 = 0;
  result = self->_configContext;
  if (result)
  {
    *v8 = 0;
    if (sub_23EBBEC90(result, v8))
    {
      return 0;
    }

    else
    {
      result = *v8;
      if (*v8)
      {
        v5 = sub_23EBB4360(*v8, errors, &v7);
        result = v7;
        if (v5 != -6727)
        {
          if (v7)
          {
            v6 = v7;
            return v7;
          }
        }
      }
    }
  }

  return result;
}

- (int)ignoreProblemCode:(unsigned int)code
{
  configContext = self->_configContext;
  if (!configContext)
  {
    return -6718;
  }

  v4 = *&code;
  v6 = 0;
  result = sub_23EBBEC90(configContext, &v6);
  if (!result)
  {
    if (v6)
    {
      return sub_23EBB42A0(v6, v4);
    }

    else
    {
      return -6728;
    }
  }

  return result;
}

- (int)unIgnoreProblemCode:(unsigned int)code
{
  configContext = self->_configContext;
  if (!configContext)
  {
    return -6718;
  }

  v4 = *&code;
  v6 = 0;
  result = sub_23EBBEC90(configContext, &v6);
  if (!result)
  {
    if (v6)
    {
      return sub_23EBB42B4(v6, v4);
    }

    else
    {
      return -6728;
    }
  }

  return result;
}

- (NSString)keychainBasePassword
{
  objc_sync_enter(self);
  keychainBasePassword = self->_keychainBasePassword;
  objc_sync_exit(self);
  return keychainBasePassword;
}

- (NSString)keychainWiFiPassword
{
  objc_sync_enter(self);
  keychainWiFiPassword = self->_keychainWiFiPassword;
  objc_sync_exit(self);
  return keychainWiFiPassword;
}

- (NSString)keychainDiskPassword
{
  objc_sync_enter(self);
  keychainDiskPassword = self->_keychainDiskPassword;
  objc_sync_exit(self);
  return keychainDiskPassword;
}

- (void)setKeychainBasePassword:(id)password
{
  keychainBasePassword = self->_keychainBasePassword;
  if (keychainBasePassword)
  {
    v4 = keychainBasePassword == password;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    objc_sync_enter(self);
    passwordCopy = password;

    self->_keychainBasePassword = password;
    if (objc_msgSend_length(password, v8, v9, v10))
    {
      v14 = objc_msgSend_rememberBasePassword(self, v11, v12, v13);
      objc_msgSend_setRememberBasePassword_(self, v15, v14, v16);
    }

    else
    {
      objc_msgSend_setRememberBasePassword_(self, v11, 0, v13);
    }

    objc_sync_exit(self);
  }
}

- (void)setKeychainWiFiPassword:(id)password
{
  keychainWiFiPassword = self->_keychainWiFiPassword;
  if (keychainWiFiPassword)
  {
    v4 = keychainWiFiPassword == password;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    objc_sync_enter(self);
    if (objc_msgSend_length(password, v7, v8, v9))
    {
      v13 = objc_msgSend_length(self->_keychainWiFiPassword, v10, v11, v12) == 0;
    }

    else
    {
      v13 = 0;
    }

    passwordCopy = password;

    self->_keychainWiFiPassword = password;
    if (v13)
    {
      objc_msgSend_setRememberWiFiPassword_(self, v15, 1, v17);
    }

    else if (objc_msgSend_length(password, v15, v16, v17))
    {
      v21 = objc_msgSend_rememberWiFiPassword(self, v18, v19, v20);
      objc_msgSend_setRememberWiFiPassword_(self, v22, v21, v23);
    }

    else
    {
      objc_msgSend_setRememberWiFiPassword_(self, v18, 0, v20);
    }

    objc_sync_exit(self);
  }
}

- (void)setKeychainDiskPassword:(id)password
{
  keychainDiskPassword = self->_keychainDiskPassword;
  if (keychainDiskPassword)
  {
    v4 = keychainDiskPassword == password;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    objc_sync_enter(self);
    passwordCopy = password;

    self->_keychainDiskPassword = password;
    if (objc_msgSend_length(password, v8, v9, v10))
    {
      v14 = objc_msgSend_rememberDiskPassword(self, v11, v12, v13);
      objc_msgSend_setRememberDiskPassword_(self, v15, v14, v16);
    }

    else
    {
      objc_msgSend_setRememberDiskPassword_(self, v11, 0, v13);
    }

    objc_sync_exit(self);
  }
}

- (int)readPropertyListFromBaseAsync:(id)async
{
  configContext = self->_configContext;
  if (!configContext)
  {
    return -6718;
  }

  result = sub_23EBBF76C(configContext, async);
  if (!result)
  {
    objc_msgSend_handleBusyStart(self, v6, v7, v8);
    result = 0;
    self->_performingManualRead = 1;
  }

  return result;
}

- (int)updateSettingsAsync
{
  configContext = self->_configContext;
  if (!configContext)
  {
    return -6718;
  }

  result = sub_23EBBFA24(configContext);
  if (!result)
  {
    objc_msgSend_handleBusyStart(self, v5, v6, v7);
    objc_msgSend_setupWiFiState(self, v8, v9, v10);
    return 0;
  }

  return result;
}

- (id)snapshotChangedKeys
{
  v8 = 0;
  v4 = objc_msgSend_bsRef(self, a2, v2, v3);
  v5 = sub_23EBB41B0(v4, &v8);
  result = v8;
  if (!v5)
  {
    if (v8)
    {
      v7 = v8;
      return v8;
    }
  }

  return result;
}

- (void)snapshotResetAll
{
  v4 = objc_msgSend_bsRef(self, a2, v2, v3);

  sub_23EBB41D4(v4);
}

- (int)snapshotPush
{
  v4 = objc_msgSend_bsRef(self, a2, v2, v3);

  return sub_23EBB41E4(v4);
}

- (int)snapshotPop:(BOOL)pop
{
  popCopy = pop;
  v5 = objc_msgSend_bsRef(self, a2, pop, v3);

  return sub_23EBB41F4(v5, popCopy);
}

- (id)bestKeychainMACAddress
{
  v15 = 0;
  if ((objc_msgSend_getValue_forBSSetting_(self, a2, &v15, 2002865473) || !objc_msgSend_length(v15, v3, v4, v5) || objc_msgSend_isEqualToString_(v15, v3, @"00:00:00:00:00:00", v8)) && (v15 = 0, objc_msgSend_getValue_forBSSetting_(self, v3, &v15, 1918979393)) || !objc_msgSend_length(v15, v3, v6, v7) || objc_msgSend_isEqualToString_(v15, v3, @"00:00:00:00:00:00", v9))
  {
    v15 = 0;
    if (objc_msgSend_getValue_forBSSetting_(self, v3, &v15, 1818316097))
    {
      return 0;
    }
  }

  result = objc_msgSend_length(v15, v3, v10, v11);
  if (result)
  {
    if (objc_msgSend_isEqualToString_(v15, v13, @"00:00:00:00:00:00", v14))
    {
      return 0;
    }

    else
    {
      return v15;
    }
  }

  return result;
}

- (id)allKeychainMACAddresses
{
  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3);
  v25 = 0;
  if (!objc_msgSend_getValue_forBSSetting_(self, v6, &v25, 2002865473) && objc_msgSend_length(v25, v7, v8, v9) && (objc_msgSend_isEqualToString_(v25, v7, @"00:00:00:00:00:00", v17) & 1) == 0)
  {
    objc_msgSend_addObject_(v5, v7, v25, v18);
  }

  v25 = 0;
  if (!objc_msgSend_getValue_forBSSetting_(self, v7, &v25, 1918979393) && objc_msgSend_length(v25, v10, v11, v12) && (objc_msgSend_isEqualToString_(v25, v10, @"00:00:00:00:00:00", v19) & 1) == 0)
  {
    objc_msgSend_addObject_(v5, v10, v25, v20);
  }

  v25 = 0;
  if (!objc_msgSend_getValue_forBSSetting_(self, v10, &v25, 1818316097) && objc_msgSend_length(v25, v13, v14, v15) && (objc_msgSend_isEqualToString_(v25, v21, @"00:00:00:00:00:00", v22) & 1) == 0)
  {
    objc_msgSend_addObject_(v5, v23, v25, v24);
  }

  return v5;
}

- (void)updateRememberKeychainFlagsIfInitializing
{
  if (!self->_initializedBasePasswordFlag && objc_msgSend_bonjourRecord(self, a2, v2, v3))
  {
    self->_initializedBasePasswordFlag = 1;

    objc_msgSend_updateRememberKeychainFlagsButSkipBasePassword_(self, v5, 0, v6);
  }
}

- (void)updateRememberKeychainFlagsButSkipBasePassword:(BOOL)password
{
  if (!password)
  {
    objc_msgSend_loadKeychainBasePassword(self, a2, password, v3);
  }

  MEMORY[0x2821F9670](self, sel_loadKeychainWirelessPassword, password, v3);
}

- (int)updateKeychainWithPasswordsWithStatus:(int)status
{
  if (status == -16)
  {
    objc_msgSend_deleteKeychainBasePassword(self, a2, *&status, v3);
    return 0;
  }

  else
  {

    return objc_msgSend_updateKeychainWithPasswords(self, a2, *&status, v3);
  }
}

- (int)updateKeychainWithPasswords
{
  if (dword_27E3818B0 <= 800 && (dword_27E3818B0 != -1 || sub_23EB74AC8(&dword_27E3818B0, 0x320u)))
  {
    v5 = objc_msgSend_rememberBasePassword(self, a2, v2, v3);
    sub_23EB75374(&dword_27E3818B0, "[AUSetupController updateKeychainWithPasswords]", 800, "self.rememberBasePassword %d\n", v5);
  }

  if (objc_msgSend_rememberBasePassword(self, a2, v2, v3))
  {
    objc_msgSend_saveKeychainBasePassword(self, v6, v7, v8);
  }

  return 0;
}

- (void)loadKeychainBasePassword
{
  v5 = 0;
  objc_sync_enter(self);
  configContext = self->_configContext;
  if (configContext && !sub_23EBBF110(configContext, &v5) && v5)
  {
    CFRetain(v5);
    objc_sync_exit(self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23EB86590;
    block[3] = &unk_278C69060;
    block[4] = self;
    block[5] = v5;
    dispatch_group_async(qword_27E383438, qword_27E383430, block);
  }

  else
  {
    objc_sync_exit(self);
  }
}

- (void)saveKeychainBasePassword
{
  if (objc_msgSend_rememberBasePassword(self, a2, v2, v3))
  {
    v22 = 0;
    v23 = 0;
    v21 = 0;
    objc_sync_enter(self);
    configContext = self->_configContext;
    if (!configContext || sub_23EBBEC90(configContext, &v21) || !v21)
    {
      goto LABEL_4;
    }

    v12 = objc_msgSend_bestKeychainMACAddress(self, v6, v7, v8);
    if (dword_27E3818B0 <= 800 && (dword_27E3818B0 != -1 || sub_23EB74AC8(&dword_27E3818B0, 0x320u)))
    {
      sub_23EB75374(&dword_27E3818B0, "[AUSetupController saveKeychainBasePassword]", 800, "macAddress: %@ err: %#m\n", v12, 0);
    }

    if (!objc_msgSend_length(v12, v9, v10, v11) || objc_msgSend_getValue_forBSSetting_(self, v13, &v23, 1937330263) || (v17 = v23) == 0)
    {
LABEL_4:
      objc_sync_exit(self);
      return;
    }

    if (dword_27E3818B0 <= 800)
    {
      if (dword_27E3818B0 != -1)
      {
LABEL_18:
        v18 = objc_msgSend_length(v17, v14, v15, v16);
        sub_23EB75374(&dword_27E3818B0, "[AUSetupController saveKeychainBasePassword]", 800, "password (length): %ld err: %#m\n", v18);
        goto LABEL_19;
      }

      if (sub_23EB74AC8(&dword_27E3818B0, 0x320u))
      {
        v17 = v23;
        goto LABEL_18;
      }
    }

LABEL_19:
    if (!objc_msgSend_getValue_forBSSetting_(self, v14, &v22, 1937329773))
    {
      v19 = v22;
      if (v22)
      {
        if (dword_27E3818B0 <= 800)
        {
          if (dword_27E3818B0 != -1)
          {
LABEL_25:
            sub_23EB75374(&dword_27E3818B0, "[AUSetupController saveKeychainBasePassword]", 800, "name: %@ err: %#m\n", v19, 0);
            goto LABEL_26;
          }

          if (sub_23EB74AC8(&dword_27E3818B0, 0x320u))
          {
            v19 = v22;
            goto LABEL_25;
          }
        }

LABEL_26:
        objc_sync_exit(self);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23EB86828;
        block[3] = &unk_278C69088;
        block[4] = v23;
        block[5] = self;
        block[6] = v12;
        block[7] = v22;
        dispatch_group_async(qword_27E383438, qword_27E383430, block);
        return;
      }
    }

    goto LABEL_4;
  }
}

- (void)deleteKeychainBasePassword
{
  v5 = 0;
  objc_sync_enter(self);
  configContext = self->_configContext;
  if (configContext && !sub_23EBBF110(configContext, &v5) && v5)
  {
    CFRetain(v5);
    objc_sync_exit(self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23EB869DC;
    block[3] = &unk_278C69060;
    block[4] = self;
    block[5] = v5;
    dispatch_group_async(qword_27E383438, qword_27E383430, block);
  }

  else
  {
    objc_sync_exit(self);
  }
}

- (void)loadKeychainWirelessPassword
{
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  objc_sync_enter(self);
  configContext = self->_configContext;
  if (configContext && !sub_23EBBEC90(configContext, &v21) && v21 && (v4 = sub_23EBB6604(v21), v5 = sub_23EB6D3EC(1918979693, v4), !objc_msgSend_getValue_forSettingPath_(self, v6, &v20, v5)) && v20 && objc_msgSend_length(v20, v7, v8, v9) && !objc_msgSend_getValue_forBSSetting_(self, v10, &v18, 1651717454) && v18 && (!objc_msgSend_BOOLValue(v18, v11, v12, v13) || (v14 = sub_23EBB65F0(v21), v15 = sub_23EB6D3EC(1918979693, v14), !objc_msgSend_getValue_forSettingPath_(self, v16, &v19, v15)) && v19))
  {
    objc_sync_exit(self);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_23EB86BB8;
    v17[3] = &unk_278C69088;
    v17[4] = v20;
    v17[5] = v18;
    v17[6] = v19;
    v17[7] = self;
    dispatch_group_async(qword_27E383438, qword_27E383430, v17);
  }

  else
  {
    objc_sync_exit(self);
  }
}

- (void)deleteKeychainWirelessPassword
{
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  objc_sync_enter(self);
  configContext = self->_configContext;
  if (!configContext || sub_23EBBEC90(configContext, &v18) || !v18 || objc_msgSend_getValue_forBSSetting_(self, v4, &v15, 1651717454) || !v15 || (v5 = sub_23EBB6604(v18), v6 = sub_23EB6D3EC(1918979693, v5), objc_msgSend_getValue_forSettingPath_(self, v7, &v17, v6)) || !v17 || objc_msgSend_BOOLValue(v15, v8, v9, v10) && ((v11 = sub_23EBB65F0(v18), v12 = sub_23EB6D3EC(1918979693, v11), objc_msgSend_getValue_forSettingPath_(self, v13, &v16, v12)) || !v16))
  {
    objc_sync_exit(self);
  }

  else
  {
    objc_sync_exit(self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_23EB86E48;
    v14[3] = &unk_278C69088;
    v14[4] = v17;
    v14[5] = v15;
    v14[6] = v16;
    v14[7] = self;
    dispatch_group_async(qword_27E383438, qword_27E383430, v14);
  }
}

- (int)rpcSystemInterfacesAsync
{
  configContext = self->_configContext;
  if (configContext)
  {
    return sub_23EBB7918(configContext);
  }

  else
  {
    return -6718;
  }
}

- (int)rpcStartRemoteBrowse:(id)browse withService:(id)service
{
  configContext = self->_configContext;
  if (configContext)
  {
    return sub_23EBB7B38(configContext, browse, service);
  }

  else
  {
    return -6718;
  }
}

- (int)rpcRefreshBSSettingAsync:(int)async
{
  configContext = self->_configContext;
  if (configContext)
  {
    return sub_23EBB7F44(configContext, *&async);
  }

  else
  {
    return -6718;
  }
}

- (int)rpcDisconnectAllDiskUsersWithMessageAsync:(id)async
{
  configContext = self->_configContext;
  if (configContext)
  {
    return sub_23EBB825C(configContext, async);
  }

  else
  {
    return -6718;
  }
}

- (int)rpcRenewDHCPLeaseAsync
{
  configContext = self->_configContext;
  if (configContext)
  {
    return sub_23EBB84FC(configContext);
  }

  else
  {
    return -6718;
  }
}

- (int)rpcWPSStartAsync:(BOOL)async dayPass:(BOOL)pass timeout:(unsigned int)timeout
{
  configContext = self->_configContext;
  if (configContext)
  {
    return sub_23EBB86B0(configContext, async, pass, *&timeout);
  }

  else
  {
    return -6718;
  }
}

- (int)rpcWPSStopAsync
{
  configContext = self->_configContext;
  if (configContext)
  {
    return sub_23EBB89D4(configContext);
  }

  else
  {
    return -6718;
  }
}

- (int)rpcWPSAllowClientAsync:(id)async
{
  configContext = self->_configContext;
  if (configContext)
  {
    return sub_23EBB8CE8(configContext, async);
  }

  else
  {
    return -6718;
  }
}

- (int)taskState
{
  v4 = 0;
  configContext = self->_configContext;
  if (configContext)
  {
    sub_23EBB77D8(configContext, &v4);
    LODWORD(configContext) = v4;
  }

  return configContext;
}

- (unsigned)taskCode
{
  v6 = 0;
  if (!self->_configContext || objc_msgSend_taskState(self, a2, v2, v3) != 6)
  {
    return 0;
  }

  sub_23EBB779C(self->_configContext, &v6);
  return v6;
}

- (int)busyState
{
  v4 = 0;
  configContext = self->_configContext;
  if (configContext)
  {
    sub_23EBB78F0(configContext, &v4);
    LODWORD(configContext) = v4;
  }

  return configContext;
}

- (int)taskRestartAsync
{
  if (!self->_configContext)
  {
    return -6718;
  }

  objc_msgSend_setActiveTask_(self, a2, 1, v2);
  result = sub_23EBB900C(self->_configContext);
  if (!result)
  {
    objc_msgSend_handleBusyStart(self, v5, v6, v7);
    objc_msgSend_setupWiFiState(self, v8, v9, v10);
    return 0;
  }

  return result;
}

- (int)taskRestoreDefaultsAsync:(BOOL)async
{
  if (!self->_configContext)
  {
    return -6718;
  }

  asyncCopy = async;
  objc_msgSend_setActiveTask_(self, a2, 1, v3);
  result = sub_23EBB9E34(self->_configContext, asyncCopy);
  if (!result)
  {
    objc_msgSend_handleBusyStart(self, v7, v8, v9);
    objc_msgSend_setupWiFiState(self, v10, v11, v12);
    return 0;
  }

  return result;
}

- (int)taskUploadFirmwareAsync:(id)async
{
  if (!self->_configContext)
  {
    return -6718;
  }

  if (!async)
  {
    return -6705;
  }

  objc_msgSend_setActiveTask_(self, a2, 1, v3);
  result = sub_23EBBAC3C(self->_configContext, async);
  if (!result)
  {
    objc_msgSend_handleBusyStart(self, v7, v8, v9);
    objc_msgSend_setupWiFiState(self, v10, v11, v12);
    return 0;
  }

  return result;
}

- (int)taskEraseDiskAsync:(id)async
{
  configContext = self->_configContext;
  if (!configContext)
  {
    return -6718;
  }

  if (async)
  {
    return sub_23EBBBDE8(configContext, async);
  }

  return -6705;
}

- (int)taskArchiveDiskAsync:(id)async
{
  configContext = self->_configContext;
  if (!configContext)
  {
    return -6718;
  }

  if (async)
  {
    return sub_23EBBC3D0(configContext, async);
  }

  return -6705;
}

- (int)setMonitorForChanges:(BOOL)changes
{
  if (self->_configContext)
  {
    return sub_23EBC220C(self->_configContext, changes, self->_busy);
  }

  else
  {
    return -6718;
  }
}

- (BOOL)isMonitoring
{
  v4 = 0;
  configContext = self->_configContext;
  if (configContext)
  {
    sub_23EBC2310(configContext, &v4);
    LOBYTE(configContext) = v4;
  }

  return configContext;
}

- (BOOL)rememberBasePassword
{
  result = 1;
  v5 = 1;
  configContext = self->_configContext;
  if (configContext)
  {
    sub_23EBBECD8(configContext, &v5);
    return v5 != 0;
  }

  return result;
}

- (void)setRememberBasePassword:(BOOL)password
{
  configContext = self->_configContext;
  if (configContext)
  {
    sub_23EBBED88(configContext, password);
  }
}

- (BOOL)rememberWiFiPassword
{
  result = 1;
  v5 = 1;
  configContext = self->_configContext;
  if (configContext)
  {
    sub_23EBBEE38(configContext, &v5);
    return v5 != 0;
  }

  return result;
}

- (void)setRememberWiFiPassword:(BOOL)password
{
  configContext = self->_configContext;
  if (configContext)
  {
    sub_23EBBEEE8(configContext, password);
  }
}

- (NSDictionary)bonjourRecord
{
  v3 = 0;
  result = self->_configContext;
  if (result)
  {
    sub_23EBBF110(result, &v3);
    return v3;
  }

  return result;
}

- (void)setBonjourRecord:(id)record
{
  if (dword_27E3818B0 <= 800 && (dword_27E3818B0 != -1 || sub_23EB74AC8(&dword_27E3818B0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3818B0, "[AUSetupController setBonjourRecord:]", 800, "record: %@\n", record);
  }

  if (self->_configContext)
  {
    objc_sync_enter(self);
    if (record)
    {
      self->_needToNilBonjour = 0;
      goto LABEL_8;
    }

    if (!self->_busy)
    {
      p_needToNilBonjour = &self->_needToNilBonjour;
      self->_needToNilBonjour = 0;
      goto LABEL_20;
    }

    v9 = objc_msgSend_taskState(self, v5, v6, v7);
    v10 = v9 != 0;
    p_needToNilBonjour = &self->_needToNilBonjour;
    self->_needToNilBonjour = v10;
    if (!v9 || dword_27E3818B0 > 800)
    {
      goto LABEL_20;
    }

    if (dword_27E3818B0 == -1)
    {
      if (!sub_23EB74AC8(&dword_27E3818B0, 0x320u))
      {
LABEL_20:
        if (*p_needToNilBonjour)
        {
LABEL_21:

          objc_sync_exit(self);
          return;
        }

        v12 = sub_23EBBCEC0(self->_configContext, 1);
        if (dword_27E3818B0 <= 800)
        {
          v13 = v12;
          if (dword_27E3818B0 != -1 || sub_23EB74AC8(&dword_27E3818B0, 0x320u))
          {
            sub_23EB75374(&dword_27E3818B0, "[AUSetupController setBonjourRecord:]", 800, "err: %#m\n", v13);
          }
        }

LABEL_8:
        v8 = objc_msgSend_taskState(self, v5, v6, v7);
        if (v8 == 6 || !v8)
        {
          sub_23EBBCA7C(self->_configContext, record);
        }

        goto LABEL_21;
      }

      v10 = *p_needToNilBonjour;
    }

    sub_23EB75374(&dword_27E3818B0, "[AUSetupController setBonjourRecord:]", 800, "_needToNilBonjour: %d\n", v10);
    goto LABEL_20;
  }
}

- (BOOL)dirty
{
  configContext = self->_configContext;
  if (configContext)
  {
    v6 = 0;
    v5 = 0;
    return !sub_23EBBEC90(configContext, &v5) && v5 && !sub_23EBB3A0C(v5, &v6) && v6;
  }

  else
  {
    return 0;
  }
}

- (_BaseStation)bsRef
{
  v3 = 0;
  result = self->_configContext;
  if (result)
  {
    sub_23EBBEC90(result, &v3);
    return v3;
  }

  return result;
}

- (int64_t)ethernetPortCount
{
  v8 = 0;
  Value_forBSSetting = objc_msgSend_getValue_forBSSetting_(self, a2, &v8, 1937326416);
  result = 0;
  if (!Value_forBSSetting)
  {
    v7 = objc_msgSend_integerValue(v8, v2, v3, v4);
    return sub_23EB4BDAC(v7);
  }

  return result;
}

- (void)setupUIConfigResult:(int)result withOptions:(id)options
{
  callbackContext = self->super._callbackContext;
  if (callbackContext)
  {
    if (!options || (resultCopy = sub_23EBEB5E8(callbackContext, @"kBSAssistantCallback_Configuration_UIConfigResultsDict", options, options, v4, v5, v6, v7)) == 0)
    {
      resultCopy = result;
    }

    v12 = self->super._callbackContext;
    if (v12)
    {
      sub_23EBEB6CC(v12, resultCopy);
    }
  }

  self->super._callbackContext = 0;
}

- (int)setupFromAutoguessRecommendation:(id)recommendation withOptions:(id)options
{
  if (dword_27E3818B0 <= 800 && (dword_27E3818B0 != -1 || sub_23EB74AC8(&dword_27E3818B0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3818B0, "[AUSetupController setupFromAutoguessRecommendation:withOptions:]", 800, "\n");
  }

  if (!self->_configContext)
  {
    return -6718;
  }

  if (!recommendation)
  {
    return -6705;
  }

  v7 = objc_msgSend_objectForKey_(recommendation, a2, @"BSAutoGuess_Recommendation", options);
  objc_msgSend_setAutoGuessSetupRecommendation_(self, v8, v7, v9);
  if (!self->_autoGuessSetupRecommendation)
  {
    return -6727;
  }

  v13 = options ? objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEB38], v10, options, v12) : objc_msgSend_dictionary(MEMORY[0x277CBEB38], v10, v11, v12);
  v17 = v13;
  v18 = objc_msgSend_objectForKey_(recommendation, v14, @"BSAutoGuess_UnconfiguredBase", v15);
  v21 = objc_msgSend_objectForKey_(recommendation, v19, @"BSAutoGuess_UnconfiguredNetwork", v20);
  if (!(v18 | v21))
  {
    return -6727;
  }

  v24 = v21;
  v25 = objc_msgSend_objectForKey_(recommendation, v22, @"BSAutoGuess_UnconfiguredBaseSettings", v23);
  v28 = v25;
  if (v18)
  {
    if (!v25)
    {
      return -6727;
    }
  }

  if (v18)
  {
    objc_msgSend_setObject_forKey_(v17, v26, v18, @"kBSAutoGuessSetupOptionKey_TargetBase");
  }

  if (v28)
  {
    objc_msgSend_setObject_forKey_(v17, v26, v28, @"kBSAutoGuessSetupOptionKey_TargetSettings");
  }

  if (v24)
  {
    objc_msgSend_setObject_forKey_(v17, v26, v24, @"kBSAutoGuessSetupOptionKey_TargetNetwork");
  }

  if (v18)
  {
    v29 = sub_23EB6A2C0(v18);
    v30 = sub_23EB6A294(v18);
  }

  else
  {
    v29 = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, v26, v24, v27);
    v30 = objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v33, v24, v34);
  }

  v35 = v30;
  v36 = objc_msgSend_objectForKey_(options, v31, @"kBSAutoGuessSetupOptionKey_BaseName", v32);
  if (objc_msgSend_length(v36, v37, v38, v39))
  {
    if (!v36)
    {
      return -6727;
    }
  }

  else
  {
    v36 = sub_23EB6D75C(v29, v35);
    if (!objc_msgSend_length(v36, v42, v43, v44))
    {
      v36 = sub_23EB6D7A8(v29, v35);
    }

    if (!v36)
    {
      return -6727;
    }

    objc_msgSend_setObject_forKey_(v17, v45, v36, @"kBSAutoGuessSetupOptionKey_BaseName");
  }

  if ((objc_msgSend_isEqualToString_(self->_autoGuessSetupRecommendation, v40, @"BSSetupRecommend_OfferExtendWirelessly", v41) & 1) != 0 || objc_msgSend_isEqualToString_(self->_autoGuessSetupRecommendation, v46, @"BSSetupRecommend_AskUserChooseBaseWireless", v47))
  {
    v48 = objc_msgSend_objectForKey_(options, v46, @"kBSAutoGuessSetupOptionKey_ExtendOption_JoinApple", v47);
    v52 = objc_msgSend_BOOLValue(v48, v49, v50, v51);
    v55 = objc_msgSend_objectForKey_(recommendation, v53, @"BSAutoGuess_SourceBase", v54);
    if (v55)
    {
      objc_msgSend_setObject_forKey_(v17, v56, v55, @"kBSAutoGuessSetupOptionKey_SourceBase");
    }

    if (v52)
    {
      v57 = 7;
    }

    else
    {
      v57 = 6;
    }

    goto LABEL_41;
  }

  if ((objc_msgSend_isEqualToString_(self->_autoGuessSetupRecommendation, v46, @"BSSetupRecommend_OfferExtendOverEthernet", v47) & 1) != 0 || objc_msgSend_isEqualToString_(self->_autoGuessSetupRecommendation, v66, @"BSSetupRecommend_AskUserChooseBaseWired", v67))
  {
    v68 = objc_msgSend_objectForKey_(recommendation, v66, @"BSAutoGuess_SourceBase", v67);
    if (v68)
    {
      objc_msgSend_setObject_forKey_(v17, v69, v68, @"kBSAutoGuessSetupOptionKey_SourceBase");
    }

    v57 = 8;
    goto LABEL_41;
  }

  if ((objc_msgSend_isEqualToString_(self->_autoGuessSetupRecommendation, v66, @"BSSetupRecommend_OfferCreate", v67) & 1) != 0 || objc_msgSend_isEqualToString_(self->_autoGuessSetupRecommendation, v70, @"BSSetupRecommend_OfferReplaceSourceIsUnconfigurable", v71))
  {
    v72 = objc_msgSend_objectForKey_(options, v70, @"kBSAutoGuessSetupOptionKey_SkipInternetTests", v71);
    objc_msgSend_BOOLValue(v72, v73, v74, v75);
    result = sub_23EBBEF98(self->_configContext, 1);
    if (result)
    {
      return result;
    }

    if (objc_msgSend_isEqualToString_(self->_autoGuessSetupRecommendation, v76, @"BSSetupRecommend_OfferReplaceSourceIsUnconfigurable", v77))
    {
      v80 = objc_msgSend_objectForKey_(recommendation, v78, @"BSAutoGuess_SourceBase", v79);
      if (v80)
      {
        objc_msgSend_setObject_forKey_(v17, v81, v80, @"kBSAutoGuessSetupOptionKey_SourceBase");
        v57 = 12;
        goto LABEL_41;
      }

      return -6727;
    }

    v57 = 1;
  }

  else
  {
    if ((objc_msgSend_isEqualToString_(self->_autoGuessSetupRecommendation, v70, @"BSSetupRecommend_OfferJoinNetwork", v71) & 1) != 0 || objc_msgSend_isEqualToString_(self->_autoGuessSetupRecommendation, v82, @"BSSetupRecommend_AskUserChooseNetworkToJoin", v83))
    {
      v84 = objc_msgSend_objectForKey_(recommendation, v82, @"BSAutoGuess_SourceNetwork", v83);
      if (v84)
      {
        objc_msgSend_setObject_forKey_(v17, v85, v84, @"kBSAutoGuessSetupOptionKey_SourceNetwork");
      }

      if ((v35 & 0xFFFFFFFE) == 2 && !objc_msgSend_objectForKey_(v17, v85, @"kBSAutoGuessSetupOptionKey_BasePassword", v86))
      {
        result = sub_23EBBED88(self->_configContext, 0);
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = sub_23EBBEF98(self->_configContext, 1);
        if (result)
        {
          return result;
        }
      }

      v57 = 2;
      goto LABEL_41;
    }

    if (objc_msgSend_isEqualToString_(self->_autoGuessSetupRecommendation, v82, @"BSSetupRecommend_OfferRestore", v83))
    {
      v91 = objc_msgSend_objectForKey_(options, v87, @"kBSAutoGuessSetupOptionKey_ConfigChangeLogDict", v88);
      if (v91)
      {
        objc_msgSend_setObject_forKey_(v17, v89, v91, @"kBSAutoGuessSetupOptionKey_ConfigChangeLogDict");
      }

      if (objc_msgSend_objectForKey_(v91, v89, @"device", v90))
      {
        objc_msgSend_setObject_forKey_(v17, v92, v36, @"kBSAutoGuessSetupOptionKey_BaseName");
      }

      v57 = 3;
      goto LABEL_41;
    }

    if (!objc_msgSend_isEqualToString_(self->_autoGuessSetupRecommendation, v87, @"BSSetupRecommend_OfferReplaceConfiguration", v88))
    {
      if (!objc_msgSend_isEqualToString_(self->_autoGuessSetupRecommendation, v93, @"BSSetupRecommend_OfferReplace", v94))
      {
        return -6735;
      }

      v99 = objc_msgSend_objectForKey_(recommendation, v97, @"BSAutoGuess_SourceBase", v98);
      if (!v99)
      {
        return -6727;
      }

      objc_msgSend_setObject_forKey_(v17, v100, v99, @"kBSAutoGuessSetupOptionKey_SourceBase");
      v57 = 9;
      goto LABEL_41;
    }

    v95 = objc_msgSend_objectForKey_(options, v93, @"kBSAutoGuessSetupOptionKey_ConfigChangeLogDict", v94);
    if (!v95)
    {
      return -6727;
    }

    objc_msgSend_setObject_forKey_(v17, v96, v95, @"kBSAutoGuessSetupOptionKey_ConfigChangeLogDict");
    result = sub_23EBBEF98(self->_configContext, 1);
    if (result)
    {
      return result;
    }

    v57 = 4;
  }

LABEL_41:
  result = sub_23EBBC828(self->_configContext, v57, v17);
  if (!result)
  {
    configContext = self->_configContext;
    v61 = objc_msgSend_objectForKey_(options, v58, @"kBSAutoGuessSetupOptionKey_RecommendationIsAutomatic", v59);
    v65 = objc_msgSend_BOOLValue(v61, v62, v63, v64);

    return sub_23EBBF030(configContext, v65);
  }

  return result;
}

- (int)setupWithTargetNetwork:(id)network
{
  configContext = self->_configContext;
  if (!configContext)
  {
    return -6718;
  }

  if (network)
  {
    return sub_23EBBC8E4(configContext, network);
  }

  return -6705;
}

- (int)setupWithTargetBaseStation:(id)station andSettings:(id)settings
{
  configContext = self->_configContext;
  if (!configContext)
  {
    return -6718;
  }

  if (station)
  {
    return sub_23EBBC998(configContext, station, settings);
  }

  return -6705;
}

- (void)handleBusyStart
{
  if (dword_27E3818B0 <= 800 && (dword_27E3818B0 != -1 || sub_23EB74AC8(&dword_27E3818B0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3818B0, "[AUSetupController(private) handleBusyStart]", 800, "_busy:\n %d\n", self->_busy);
  }

  self->_busy = 1;
  self->_needToNilBonjour = 0;
}

- (void)handleBusyComplete
{
  if (dword_27E3818B0 <= 800 && (dword_27E3818B0 != -1 || sub_23EB74AC8(&dword_27E3818B0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3818B0, "[AUSetupController(private) handleBusyComplete]", 800, "_busy:\n %d\n", self->_busy);
  }

  self->_busy = 0;
  self->_performingManualRead = 0;
  if (self->_needToNilBonjour)
  {

    MEMORY[0x2821F9670](self, sel_setBonjourRecord_, 0, v2);
  }
}

- (void)setupWiFiState
{
  v5 = objc_msgSend_sharedInstance(WiFiUtils, a2, v2, v3);
  AutoJoinState = objc_msgSend_getAutoJoinState(v5, v6, v7, v8);
  self->_autoJoinState = AutoJoinState;
  if (AutoJoinState)
  {
    objc_msgSend_setAutoJoinState_(v5, v10, 0, v12);
  }

  isScanningActive = objc_msgSend_isScanningActive(v5, v10, v11, v12);
  self->_scanningState = isScanningActive;
  if (isScanningActive)
  {
    if (objc_msgSend_isScanInProgress(v5, v14, v15, v16))
    {
      objc_msgSend_cancelAsync(v5, v17, v18, v19);
    }

    objc_msgSend_activateScanning_(v5, v17, 0, v19);
  }
}

- (void)resetWiFiState
{
  if (self->_autoJoinState)
  {
    v5 = objc_msgSend_sharedInstanceRef(WiFiUtils, a2, v2, v3);
    objc_msgSend_setAutoJoinState_(v5, v6, self->_autoJoinState, v7);
  }

  self->_autoJoinState = 0;
  if (self->_scanningState)
  {
    v8 = objc_msgSend_sharedInstanceRef(WiFiUtils, a2, v2, v3);
    objc_msgSend_activateScanning_(v8, v9, self->_scanningState, v10);
  }

  self->_scanningState = 0;
}

- (void)handleSetupComplete:(int)complete
{
  objc_msgSend_resetWiFiState(self, a2, *&complete, v3);
  if (!complete)
  {
    v9 = objc_msgSend_bonjourRecord(self, v6, v7, v8);
    sub_23EC127B0(v9);
  }

  v13 = 0;
  v10 = sub_23EBBD2B8(self->_configContext);
  if (!sub_23EBEB420(v10, &v13))
  {
    if (dword_27E3818B0 <= 800 && (dword_27E3818B0 != -1 || sub_23EB74AC8(&dword_27E3818B0, 0x320u)))
    {
      sub_23EB75374(&dword_27E3818B0, "[AUSetupController(private) handleSetupComplete:]", 800, "instrumentation:\n %@\n", v13);
    }

    objc_msgSend_setLastInstrumentation_(self, v11, v13, v12);
  }
}

- (void)handleTaskComplete
{
  objc_msgSend_resetWiFiState(self, a2, v2, v3);

  objc_msgSend_setActiveTask_(self, v5, 0, v6);
}

- (void)logChangesToCCL
{
  v4 = objc_msgSend_bsRef(self, a2, v2, v3);

  MEMORY[0x2821F9670](ConfigChangeLogs, sel_writeConfigChangeLog_, v4, v5);
}

- (id)targetBaseInfoDict
{
  if (!self->_configContext)
  {
    return 0;
  }

  v121 = 0;
  v122 = 0;
  v120 = 0;
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3);
  if (sub_23EBBEC90(self->_configContext, &v122))
  {
    v7 = 1;
  }

  else
  {
    v7 = v122 == 0;
  }

  if (!v7 && !objc_msgSend_getValue_forBSSetting_(self, v6, &v121, 1651717454))
  {
    if (v121)
    {
      v11 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v8, v9, v10);
      v12 = sub_23EBB6604(v122);
      v13 = sub_23EB6D3EC(1918979693, v12);
      if (!objc_msgSend_getValue_forSettingPath_(self, v14, &v120, v13))
      {
        v15 = v120;
        if (v120)
        {
          v16 = sub_23EB6CDF8(1918979693);
          objc_msgSend_setObject_forKey_(v11, v17, v15, v16);
          v18 = sub_23EBB6604(v122);
          v19 = sub_23EB6D3EC(1651725131, v18);
          if (!objc_msgSend_getValue_forSettingPath_(self, v20, &v120, v19))
          {
            v21 = v120;
            if (v120)
            {
              v22 = sub_23EB6CDF8(1651725131);
              objc_msgSend_setObject_forKey_(v11, v23, v21, v22);
              objc_msgSend_setObject_forKey_(v5, v24, v11, @"kSetupBaseStationInfoKey_RadioInfo");
              if (objc_msgSend_BOOLValue(v121, v25, v26, v27))
              {
                v31 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v28, v29, v30);
                v32 = sub_23EBB65F0(v122);
                v33 = sub_23EB6D3EC(1918979693, v32);
                if (objc_msgSend_getValue_forSettingPath_(self, v34, &v120, v33))
                {
                  return v5;
                }

                v35 = v120;
                if (!v120)
                {
                  return v5;
                }

                v36 = sub_23EB6CDF8(1918979693);
                objc_msgSend_setObject_forKey_(v31, v37, v35, v36);
                v38 = sub_23EBB65F0(v122);
                v39 = sub_23EB6D3EC(1651725131, v38);
                if (objc_msgSend_getValue_forSettingPath_(self, v40, &v120, v39))
                {
                  return v5;
                }

                v41 = v120;
                if (!v120)
                {
                  return v5;
                }

                v42 = sub_23EB6CDF8(1651725131);
                objc_msgSend_setObject_forKey_(v31, v43, v41, v42);
                objc_msgSend_setObject_forKey_(v5, v44, v31, @"kSetupBaseStationInfoKey_RadioInfo5GHz");
              }

              if (objc_msgSend_bonjourRecord(self, v28, v29, v30))
              {
                v48 = objc_msgSend_bonjourRecord(self, v45, v46, v47);
                objc_msgSend_setObject_forKey_(v5, v49, v48, @"kSetupBaseStationInfoKey_BrowseRecord");
                v53 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v50, v51, v52);
                if (!objc_msgSend_getValue_forBSSetting_(self, v54, &v120, 1937330263))
                {
                  v55 = v120;
                  if (v120)
                  {
                    v56 = sub_23EB6CDF8(1937330263);
                    objc_msgSend_setObject_forKey_(v53, v57, v55, v56);
                    if (!objc_msgSend_getValue_forBSSetting_(self, v58, &v120, 1937329773))
                    {
                      v59 = v120;
                      if (v120)
                      {
                        v60 = sub_23EB6CDF8(1937329773);
                        objc_msgSend_setObject_forKey_(v53, v61, v59, v60);
                        if (!objc_msgSend_getValue_forBSSetting_(self, v62, &v120, 1937326416))
                        {
                          v63 = v120;
                          if (v120)
                          {
                            v64 = sub_23EB6CDF8(1937326416);
                            objc_msgSend_setObject_forKey_(v53, v65, v63, v64);
                            objc_msgSend_setObject_forKey_(v5, v66, v53, @"kSetupBaseStationInfoKey_GeneralInfo");
                            if (!objc_msgSend_hasACPFeature_(self, v67, 1297314927, v68))
                            {
                              goto LABEL_39;
                            }

                            v72 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v69, v70, v71);
                            if (!objc_msgSend_getValue_forBSSetting_(self, v73, &v120, 1651721805))
                            {
                              v74 = v120;
                              if (v120)
                              {
                                v75 = sub_23EB6CDF8(1651721805);
                                objc_msgSend_setObject_forKey_(v72, v76, v74, v75);
                                if (objc_msgSend_integerValue(v120, v77, v78, v79) == 1)
                                {
                                  if (objc_msgSend_getValue_forBSSetting_(self, v80, &v120, 1718842224))
                                  {
                                    return v5;
                                  }

                                  v55 = v120;
                                  if (!v120)
                                  {
                                    return v5;
                                  }
                                }

                                else
                                {
                                  if (objc_msgSend_integerValue(v120, v80, v81, v82) != 2)
                                  {
                                    v120 = 0;
                                    goto LABEL_38;
                                  }

                                  v120 = v55;
                                }

                                v85 = sub_23EB6CDF8(1718842224);
                                objc_msgSend_setObject_forKey_(v72, v86, v55, v85);
LABEL_38:
                                objc_msgSend_setObject_forKey_(v5, v84, v72, @"kSetupBaseStationInfoKey_DiskInfo");
LABEL_39:
                                if (objc_msgSend_hasACPFeature_(self, v69, 1198748750, v71))
                                {
                                  v90 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v87, v88, v89);
                                  v91 = sub_23EB6D3EC(1651722053, -1);
                                  if (objc_msgSend_getValue_forSettingPath_(self, v92, &v120, v91))
                                  {
                                    return v5;
                                  }

                                  v93 = v120;
                                  if (!v120)
                                  {
                                    return v5;
                                  }

                                  v94 = sub_23EB6CDF8(1651722053);
                                  objc_msgSend_setObject_forKey_(v90, v95, v93, v94);
                                  if (objc_msgSend_integerValue(v120, v96, v97, v98))
                                  {
                                    v100 = sub_23EB6D3EC(1651722062, -1);
                                    if (objc_msgSend_getValue_forSettingPath_(self, v101, &v120, v100))
                                    {
                                      return v5;
                                    }

                                    v102 = v120;
                                    if (!v120)
                                    {
                                      return v5;
                                    }

                                    v103 = sub_23EB6CDF8(1651722062);
                                    objc_msgSend_setObject_forKey_(v90, v104, v102, v103);
                                    v105 = sub_23EB6D3EC(1651722067, -1);
                                    if (objc_msgSend_getValue_forSettingPath_(self, v106, &v120, v105))
                                    {
                                      return v5;
                                    }

                                    v107 = v120;
                                    if (!v120)
                                    {
                                      return v5;
                                    }

                                    v108 = sub_23EB6CDF8(1651722067);
                                    objc_msgSend_setObject_forKey_(v90, v109, v107, v108);
                                    v110 = sub_23EB6D3EC(1651722064, -1);
                                    if (objc_msgSend_getValue_forSettingPath_(self, v111, &v120, v110))
                                    {
                                      return v5;
                                    }

                                    v112 = v120;
                                    if (!v120)
                                    {
                                      return v5;
                                    }

                                    v113 = sub_23EB6CDF8(1651722064);
                                    objc_msgSend_setObject_forKey_(v90, v114, v112, v113);
                                  }

                                  objc_msgSend_setObject_forKey_(v5, v99, v90, @"kSetupBaseStationInfoKey_GuestNetworkInfo");
                                }

                                if (!self->_autoGuessSetupRecommendation)
                                {
                                  return v5;
                                }

                                v119 = 0;
                                v115 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v87, v88, v89);
                                objc_msgSend_setObject_forKey_(v115, v116, self->_autoGuessSetupRecommendation, @"BSAutoGuess_Recommendation");
                                v117 = sub_23EBBF0C8(self->_configContext, &v119);
                                if (v117 != -6727)
                                {
                                  if (v117 || !v119)
                                  {
                                    return v5;
                                  }

                                  objc_msgSend_setObject_forKey_(v115, v118, v119, @"BSAutoGuess_SourceBase");
                                }

                                objc_msgSend_setObject_forKey_(v5, v118, v115, @"kSetupBaseStationInfoKey_RecommendationInfo");
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

@end