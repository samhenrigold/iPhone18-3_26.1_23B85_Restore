uint64_t LaunchServices::URLPropertyProvider::prepareIsApplicationValue(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (_LSGetBundleClassForNode(0, a2) != 2)
  {
    goto LABEL_5;
  }

  v10 = +[_LSDServiceDomain defaultServiceDomain];
  v11 = LaunchServices::Database::Context::_get(a1, v10, 0);

  if (v11)
  {
    if (_LSGetBundleClassForNode(v11, a2) == 2)
    {
      v12 = MEMORY[0x1E695E4D0];
LABEL_6:
      MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695EB20], *v12);
      return 1;
    }

LABEL_5:
    v12 = MEMORY[0x1E695E4C0];
    goto LABEL_6;
  }

  if (!a6)
  {
    return 0;
  }

  v14 = +[_LSDServiceDomain defaultServiceDomain];
  v15 = LaunchServices::Database::Context::_get(a1, v14, 0);

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1[3];
    v17 = v16;
  }

  result = 0;
  *a6 = v16;
  return result;
}

uint64_t _LSIsCurrentProcessSandboxed(_BYTE *a1, uint64_t a2)
{
  v4 = 0;
  if ([__LSDefaultsGetSharedInstance(a1 a2)])
  {
    v4 = 0;
    if (!a1)
    {
      return HIBYTE(v4);
    }

    goto LABEL_10;
  }

  if (_LSCheckCurrentProcessSandboxEveryTime(void)::once != -1)
  {
    _LSIsCurrentProcessSandboxed_cold_1();
  }

  if (_LSCheckCurrentProcessSandboxEveryTime(void)::result)
  {
    if (_LSGetAuditTokenForSelf::once != -1)
    {
      _LSGetAuditTokenForSelf_cold_1();
    }

    _LSIsAuditTokenSandboxed(_LSGetAuditTokenForSelf::result, &v4 + 1, &v4);
    if (a1)
    {
LABEL_10:
      *a1 = v4;
    }
  }

  else
  {
    if (_LSIsCurrentProcessSandboxed::once != -1)
    {
      _LSIsCurrentProcessSandboxed_cold_3();
    }

    HIBYTE(v4) = _LSIsCurrentProcessSandboxed::sSandbox;
    LOBYTE(v4) = _LSIsCurrentProcessSandboxed::sAppSandbox;
    if (a1)
    {
      goto LABEL_10;
    }
  }

  return HIBYTE(v4);
}

BOOL _LSCheckMachPortAccessForAuditToken(_OWORD *a1, void *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (_LSGetAuditTokenForSelf::once != -1)
    {
      _LSGetAuditTokenForSelf_cold_1();
    }

    if (_LSGetAuditTokenForSelf::result == a1 && !_LSIsCurrentProcessSandboxed(0, a2))
    {
      return 1;
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      [a2 UTF8String];
      v2 = sandbox_check_by_audit_token() == 0;
      objc_autoreleasePoolPop(v5);
    }
  }

  return v2;
}

uint64_t LaunchServices::URLPropertyProvider::prepareLocalizedNameValue(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = *MEMORY[0x1E69E9840];
  IsCurrentThreadInitializing = _LSContextIsCurrentThreadInitializing();
  if (IsCurrentThreadInitializing)
  {
    v12 = _LSDefaultLog(IsCurrentThreadInitializing);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [a2 URL];
      LaunchServices::URLPropertyProvider::prepareLocalizedNameValue(v13, &v20, v12);
    }
  }

  else
  {
    if (LaunchServices::URLPropertyProvider::shouldAvoidLocalizingNameBecauseIsInLightweightSystemSession(void)::onceToken != -1)
    {
      LaunchServices::URLPropertyProvider::prepareLocalizedNameValue();
    }

    if (LaunchServices::URLPropertyProvider::shouldAvoidLocalizingNameBecauseIsInLightweightSystemSession(void)::result != 1)
    {
      v17 = LaunchServices::URLPropertyProvider::getDisplayNameConstructor(a1, a2, a5, a6);
      v18 = v17;
      if (v17)
      {
        v15 = [v17 unlocalizedNameWithContextIfNeeded:a1];
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        goto LABEL_10;
      }

LABEL_15:
      v16 = 0;
      goto LABEL_16;
    }

    v12 = _LSDefaultLog(IsCurrentThreadInitializing);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [a2 URL];
      v20 = 138477827;
      v21 = v14;
      _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "Not localizing name for %{private}@ because we are in the system session, which has no user preferences.", &v20, 0xCu);
    }
  }

  v15 = [a2 nameWithError:a6];
  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_10:
  MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695EBC8], v15);
  v16 = 1;
LABEL_16:

  return v16;
}

uint64_t shouldConnectToLSD(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v2 = 1;
  }

  else
  {
    v2 = objc_opt_respondsToSelector() & 1;
  }

  return v2;
}

void performWithLSAWDistributedNotificationNameBasedOnObserverConformance(void *a1, void (*a2)(__CFString *))
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    a2(@"com.lsinstallprogress.appcontrols.cancel");
  }

  if (objc_opt_respondsToSelector())
  {
    a2(@"com.lsinstallprogress.appcontrols.pause");
  }

  if (objc_opt_respondsToSelector())
  {
    a2(@"com.lsinstallprogress.appcontrols.prioritize");
  }

  if (objc_opt_respondsToSelector())
  {
    a2(@"com.lsinstallprogress.appcontrols.resume");
  }

  if (objc_opt_respondsToSelector())
  {
    a2(@"com.lsinstallprogress.networkusagechanged");
  }

  if (objc_opt_respondsToSelector())
  {
    a2(@"com.apple.LaunchServices.pluginsregistered");
  }

  if (objc_opt_respondsToSelector())
  {
    a2(@"com.apple.LaunchServices.pluginsunregistered");
  }

  if (objc_opt_respondsToSelector())
  {
    a2(@"com.apple.LaunchServices.pluginswillberemoved");
  }

  if (objc_opt_respondsToSelector())
  {
    a2(@"com.apple.LaunchServices.applicationStateChanged");
  }
}

void sub_181657004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const char *___ZL38_LSCheckCurrentProcessSandboxEveryTimev_block_invoke()
{
  result = getenv("LS_PROCESS_WILL_BE_SANDBOXED");
  if (result)
  {
    result = atoi(result);
    _LSCheckCurrentProcessSandboxEveryTime(void)::result = result != 0;
  }

  return result;
}

id installProgressInterface(uint64_t a1)
{
  if (installProgressInterface_onceToken != -1)
  {
    installProgressInterface_cold_1();
  }

  v2 = installProgressInterface_interface;

  return v2;
}

void __installProgressInterface_block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v8 = [v0 setWithObjects:{v1, objc_opt_class(), 0}];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEFAB2B0];
  v3 = installProgressInterface_interface;
  installProgressInterface_interface = v2;

  [installProgressInterface_interface setClass:objc_opt_class() forSelector:sel_createInstallProgressForApplication_withPhase_andPublishingString_reply_ argumentIndex:0 ofReply:0];
  [installProgressInterface_interface setClass:objc_opt_class() forSelector:sel_createInstallProgressForApplication_withPhase_andPublishingString_reply_ argumentIndex:2 ofReply:0];
  [installProgressInterface_interface setClasses:v8 forSelector:sel_sendNotification_forApplications_withPlugins_ argumentIndex:1 ofReply:0];
  [installProgressInterface_interface setClass:objc_opt_class() forSelector:sel_sendNotification_forApplicationWithBundleIdentifier_completion_ argumentIndex:1 ofReply:0];
  [installProgressInterface_interface setClass:objc_opt_class() forSelector:sel_sendNotification_forApplicationWithBundleIdentifier_completion_ argumentIndex:0 ofReply:1];
  v4 = installProgressInterface_interface;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  [v4 setClasses:v7 forSelector:sel_setProgressProportionsByPhase_forInstallOfApplicationWithIdentifier_completion_ argumentIndex:0 ofReply:0];

  [installProgressInterface_interface setClass:objc_opt_class() forSelector:sel_setProgressProportionsByPhase_forInstallOfApplicationWithIdentifier_completion_ argumentIndex:1 ofReply:0];
  [installProgressInterface_interface setClass:objc_opt_class() forSelector:sel_setProgressProportionsByPhase_forInstallOfApplicationWithIdentifier_completion_ argumentIndex:0 ofReply:1];
}

id workspaceObserverInterface(uint64_t a1)
{
  if (workspaceObserverInterface_onceToken != -1)
  {
    workspaceObserverInterface_cold_1();
  }

  v2 = workspaceObserverInterface_interface;

  return v2;
}

void __workspaceObserverInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEF9D818];
  v1 = workspaceObserverInterface_interface;
  workspaceObserverInterface_interface = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationInstallsDidStart_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationInstallsDidChange_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationInstallsDidUpdateIcon_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationsWillInstall_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationsDidInstall_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_pluginsDidInstall_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationsWillUninstall_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_pluginsWillUninstall_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationsDidUninstall_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_pluginsDidUninstall_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationsDidFailToInstall_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationsDidFailToUninstall_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationStateDidChange_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationIconDidChange_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationInstallsArePrioritized_arePaused_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationInstallsArePrioritized_arePaused_ argumentIndex:1 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationInstallsDidPause_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationInstallsDidResume_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationInstallsDidCancel_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationInstallsDidPrioritize_ argumentIndex:0 ofReply:0];
  [workspaceObserverInterface_interface setClasses:v6 forSelector:sel_applicationsDidChangePersonas_ argumentIndex:0 ofReply:0];
}

id _LSProgressLog(uint64_t a1)
{
  if (_LSProgressLog_onceToken != -1)
  {
    _LSProgressLog_cold_1();
  }

  v2 = _LSProgressLog_log;

  return v2;
}

id _LSInstallLog(uint64_t a1)
{
  if (_LSInstallLog_onceToken != -1)
  {
    _LSInstallLog_cold_1();
  }

  v2 = _LSInstallLog_log;

  return v2;
}

BOOL _LSPluginCheckExtensionPoint(void *a1, unsigned int a2, uint64_t a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = _LSExtensionPointFindWithStringID(v7, *(a3 + 180), *(a3 + 20), 0, 0, 0);
  v21 = 0;
  v9 = _LSGetNSErrorFromOSStatusImpl(v8, &v21, 0, "_LSPluginCheckExtensionPoint", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSPluginBundle.mm", 1006);
  v10 = v21;
  v12 = v10;
  if (!v9)
  {
    if (*(a3 + 164))
    {
      v13 = [__LSDefaultsGetSharedInstance(v10 v11)];
      if (v13)
      {
        v14 = *(a3 + 224);
        if (v14 && (v13 = _LSBundleGet(v7, v14), (*(v13 + 174) & 4) != 0))
        {
          v15 = _LSDefaultLog(v13);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v18 = _LSDatabaseGetNSStringFromString(v7, *(a3 + 172));
            *buf = 138478083;
            v23 = v18;
            v24 = 2048;
            v25 = a2;
            _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEFAULT, "checking extension point for plugin %{private}@ (0x%llx), found it is inside a placeholder", buf, 0x16u);
          }
        }

        else
        {
          v15 = _LSDefaultLog(v13);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v19 = _LSDatabaseGetNSStringFromString(v7, *(a3 + 172));
            v20 = *(a3 + 20);
            *buf = 138478595;
            v23 = v19;
            v24 = 2048;
            v25 = a2;
            v26 = 2048;
            v27 = v20;
            v28 = 2112;
            v29 = v12;
            _os_log_error_impl(&dword_18162D000, v15, OS_LOG_TYPE_ERROR, "Plugin %{private}@ (0x%llx platform 0x%lx) has a bad extension point identifier specified in its Info.plist: %@", buf, 0x2Au);
          }
        }
      }
    }

    if (a4)
    {
      v16 = v12;
      *a4 = v12;
    }
  }

  return v9;
}

id _LSDecodeURLPropertyDictionary(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x1E695E268]];

  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___LSDecodeURLPropertyDictionary_block_invoke;
    v7[3] = &unk_1E6A1AF50;
    v4 = v3;
    v8 = v4;
    [v1 enumerateKeysAndObjectsUsingBlock:v7];
    v5 = [v4 copy];

    v1 = v5;
  }

  return v1;
}

uint64_t ___ZN14LaunchServices19URLPropertyProviderL60shouldAvoidLocalizingNameBecauseIsInLightweightSystemSessionEv_block_invoke()
{
  result = _os_feature_enabled_impl();
  if ((result & 1) == 0)
  {
    result = xpc_user_sessions_enabled();
    if (result)
    {
      result = xpc_user_sessions_get_session_uid();
      if (!result)
      {
        LaunchServices::URLPropertyProvider::shouldAvoidLocalizingNameBecauseIsInLightweightSystemSession(void)::result = 1;
      }
    }
  }

  return result;
}

id LaunchServices::URLPropertyProvider::getDisplayNameConstructor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (a3 + 40);
  v8 = *(a3 + 40);
  v9 = v8;
  if (!v8)
  {
    v8 = [_LSDisplayNameConstructor displayNameConstructorWithContextIfNeeded:a1 node:a2 error:a4];
    if (v8)
    {
      objc_storeStrong(v7, v8);
    }
  }

  return v8;
}

void sub_18165892C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&mutationLock);
  objc_exception_rethrow();
}

uint64_t LaunchServices::Record::checkForExfiltrationRisk(LaunchServices::Record *this, NSCoder *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (LaunchServices::Record::checkForExfiltrationRisk(NSCoder *)::once != -1)
  {
    LaunchServices::Record::checkForExfiltrationRisk();
  }

  if (LaunchServices::Record::checkForExfiltrationRisk(NSCoder *)::isSafeToSendData)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  memset(&v18, 0, sizeof(v18));
  v3 = [(LaunchServices::Record *)this connection];
  v4 = v3;
  if (v3)
  {
    objc_msgSend_auditToken(v3);
  }

  else
  {
    memset(&v18, 0, sizeof(v18));
  }

  v6 = _LSRecordLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = MEMORY[0x1E696AEC0];
    atoken = v18;
    v8 = audit_token_to_pid(&atoken);
    atoken = v18;
    v9 = audit_token_to_pidversion(&atoken);
    atoken = v18;
    v10 = audit_token_to_euid(&atoken);
    atoken = v18;
    v11 = audit_token_to_ruid(&atoken);
    atoken = v18;
    v12 = audit_token_to_egid(&atoken);
    atoken = v18;
    v13 = audit_token_to_rgid(&atoken);
    atoken = v18;
    v14 = audit_token_to_asid(&atoken);
    atoken = v18;
    v15 = [v7 stringWithFormat:@"[pid:%d/%d uid:%d/%d gid:%d/%d %d/%d]", v8, v9, v10, v11, v12, v13, v14, audit_token_to_auid(&atoken)];
    *buf = 138543362;
    v21 = v15;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEBUG, "checkForExfiltrationRisk: Checking if token %{public}@ is allowed to map the LS database or is a platform binary.", buf, 0xCu);
  }

  if (_LSAuditTokenMayMapDatabase(&v18))
  {
    return 0;
  }

  v16 = _LSIsAuditTokenPlatformBinary(&v18);
  if (v16)
  {
    return 0;
  }

  __LAUNCH_SERVICES_CLIENT_MAY_BE_EXFILTRATING_PRIVACY_SENSITIVE_INFORMATION__(v16);
  return 1;
}

uint64_t initMCEffectiveSettingsChangedNotification()
{
  v0 = ManagedConfigurationLibrary_frameworkLibrary;
  if (!ManagedConfigurationLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
    ManagedConfigurationLibrary_frameworkLibrary = v0;
  }

  result = *dlsym(v0, "MCEffectiveSettingsChangedNotification");
  constantMCEffectiveSettingsChangedNotification = result;
  getMCEffectiveSettingsChangedNotification = MCEffectiveSettingsChangedNotificationFunction;
  return result;
}

CFStringRef UTTypeCreatePreferredIdentifierForTag(CFStringRef inTagClass, CFStringRef inTag, CFStringRef inConformingToUTI)
{
  v3 = 0;
  if (inTagClass && inTag)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [UTTypeRecord typeRecordWithTag:inTag ofClass:inTagClass conformingToIdentifier:inConformingToUTI];
    v9 = v8;
    if (v8)
    {
      v3 = [v8 identifier];
    }

    else
    {
      v3 = 0;
    }

    objc_autoreleasePoolPop(v7);
  }

  return v3;
}

id _LSValidationTokenComputeHMAC(NSData *a1, NSData *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  _LSAssertRunningInServer("NSData *_LSValidationTokenComputeHMAC(NSData *__strong, NSData *__strong)", v5);
  v8 = [__LSDefaultsGetSharedInstance(v6 v7)];
  v9 = v8;
  v10 = 0;
  if (v4 && v3 && v8)
  {
    v11 = [(NSData *)v3 mutableCopy];
    [v11 appendData:v4];
    memset(v13, 0, sizeof(v13));
    CCHmac(4u, [v9 bytes], objc_msgSend(v9, "length"), objc_msgSend(v11, "bytes"), objc_msgSend(v11, "length"), v13);
    v10 = [MEMORY[0x1E695DEF0] dataWithBytes:v13 length:64];
  }

  return v10;
}

id _LSURLPropertyProviderAllKeys(uint64_t a1)
{
  if (_LSURLPropertyProviderAllKeys::onceToken != -1)
  {
    _LSURLPropertyProviderAllKeys_cold_1();
  }

  v2 = _LSURLPropertyProviderAllKeys::result;

  return v2;
}

void sub_1816593D8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(&currentLock);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_181659420(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1816593E4);
}

uint64_t _LSIsArrayWithValuesOfClasses(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = _LSIsSequenceOfClassWithValuesOfClasses(v4, v5, v3);

  return v6;
}

id _LSResolveRemoteURLPropertiesWithMimic(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [v7 URL];
  [v10 ls_setPreferredLocalizations:v8];
  [v10 setTemporaryResourceValue:v7 forKey:@"_LSMimicKey"];
  v11 = [v9 allObjects];
  v12 = [v10 resourceValuesForKeys:v11 error:a4];

  [v10 removeCachedResourceValueForKey:@"_LSMimicKey"];

  return v12;
}

void sub_181659574(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id LaunchServices::Record::getNullPlaceholder(LaunchServices::Record *this)
{
  if (LaunchServices::Record::getNullPlaceholder(void)::once != -1)
  {
    LaunchServices::Record::getNullPlaceholder();
  }

  v2 = LaunchServices::Record::getNullPlaceholder(void)::result;

  return v2;
}

Class initMCProfileConnection()
{
  if (!ManagedConfigurationLibrary_frameworkLibrary)
  {
    ManagedConfigurationLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
  }

  result = objc_getClass("MCProfileConnection");
  classMCProfileConnection = result;
  getMCProfileConnectionClass = MCProfileConnectionFunction;
  return result;
}

uint64_t LaunchServices::URLPropertyProvider::prepareTypeIdentifierAndObjectValue(id *a1, uint64_t a2, uint64_t a3, const void *a4, unsigned int *a5, void *a6)
{
  v12 = +[_LSDServiceDomain defaultServiceDomain];
  v13 = LaunchServices::Database::Context::_get(a1, v12, 0);

  if (!v13)
  {
    if (a6)
    {
      v24 = +[_LSDServiceDomain defaultServiceDomain];
      v25 = LaunchServices::Database::Context::_get(a1, v24, 0);

      if (v25)
      {
        v26 = 0;
      }

      else
      {
        v26 = a1[3];
        v27 = v26;
      }

      result = 0;
      *a6 = v26;
      return result;
    }

    return 0;
  }

  v14 = *(a5 + 32);
  if (v14 == 1)
  {
    v15 = _UTTypeGet(v13->db, *a5);
    *(a5 + 1) = v15;
    LOBYTE(v14) = *(a5 + 32);
    if (!v15 && (a5[8] & 1) != 0)
    {

      *(a5 + 32) = 0;
      goto LABEL_7;
    }
  }

  if ((v14 & 1) == 0)
  {
LABEL_7:
    LaunchServices::TypeEvaluator::TypeEvaluator(v31, a2);
    LaunchServices::TypeEvaluator::evaluateType(v31, &v13->db, a6, v28);
    std::__optional_storage_base<LaunchServices::TypeEvaluator::Result,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<LaunchServices::TypeEvaluator::Result,false>>(a5, v28);
    if (v30 == 1)
    {
    }

    if (a5[8])
    {
      goto LABEL_10;
    }

    return 0;
  }

LABEL_10:
  v16 = LaunchServices::TypeEvaluator::Result::getTypeIdentifier(a5, v13);
  v17 = *MEMORY[0x1E695E268];
  v18 = CFEqual(a4, *MEMORY[0x1E695E268]);
  if (v18)
  {
    UTTypeClass = LaunchServices::URLPropertyProvider::getUTTypeClass(v18);
    if (UTTypeClass)
    {
      v20 = UTTypeClass;
      if (!*a5 || ([UTTypeClass _constantTypeForURLPropertyProviderWithIdentifier:v16], (v21 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v22 = LaunchServices::TypeEvaluator::Result::getTypeRecord(a5, v13);
        v21 = [v20 _typeForURLPropertyProviderWithTypeRecord:v22];
      }

      MEMORY[0x1865D5CD0](a3, v17, v21);
    }
  }

  MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695EC28], v16);

  return 1;
}

uint64_t initMCFeatureMaximumAppsRating()
{
  v0 = ManagedConfigurationLibrary_frameworkLibrary;
  if (!ManagedConfigurationLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
    ManagedConfigurationLibrary_frameworkLibrary = v0;
  }

  result = *dlsym(v0, "MCFeatureMaximumAppsRating");
  constantMCFeatureMaximumAppsRating = result;
  getMCFeatureMaximumAppsRating = MCFeatureMaximumAppsRatingFunction;
  return result;
}

uint64_t LaunchServices::TypeEvaluator::TypeEvaluator(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = v3;
  *(a1 + 8) = 0;
  if (!v3)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"LaunchServices::TypeEvaluator::TypeEvaluator(const __strong id<FSNodePropertyProviding> _Nonnull)"];
    [v5 handleFailureInFunction:v6 file:@"UTTypeEvaluator.mm" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"node != nil"}];
  }

  return a1;
}

void LaunchServices::TypeEvaluation::runEvaluator(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int *a4@<X8>)
{
  v69[2] = *MEMORY[0x1E69E9840];
  *a4 = 0;
  *(a4 + 32) = 0;
  v60 = 0;
  if ([*a2 getCachedResourceValueIfPresent:&v60 forKey:*MEMORY[0x1E695DC68] error:0])
  {
    if (_UTTypeIdentifierIsDynamic(v60))
    {
      v8 = [(__CFString *)v60 copy];
      v9 = *(a4 + 32);
      *a4 = 0;
      *(a4 + 1) = 0;
      if (v9 == 1)
      {
        v10 = *(a4 + 2);
        *(a4 + 2) = v8;

LABEL_11:
        *(a4 + 24) = 0;
        goto LABEL_12;
      }

      *(a4 + 2) = v8;
    }

    else
    {
      LODWORD(v62) = 0;
      active = _UTGetActiveTypeForCFStringIdentifier(*a1, v60, &v62);
      if (!active)
      {
        goto LABEL_12;
      }

      v12 = *(a4 + 32);
      *a4 = v62;
      *(a4 + 1) = active;
      if (v12 == 1)
      {
        v13 = *(a4 + 2);
        *(a4 + 2) = 0;

        goto LABEL_11;
      }

      *(a4 + 2) = 0;
    }

    *(a4 + 32) = 1;
    goto LABEL_11;
  }

LABEL_12:
  if ((a4[8] & 1) == 0)
  {
    v14 = *a2;
    v57 = 256;
    TypeDirectory = 0;
    v59 = 0;
    *v55 = a1;
    v56 = 0;
    objc_storeStrong(&v56, v14);
    if (TypeDirectory)
    {
      goto LABEL_14;
    }

    LOBYTE(v57) = 0;
    if ([v56 isVolume])
    {
      TypeVolume = _UTTypeGetTypeVolume(**v55);
LABEL_21:
      TypeDirectory = TypeVolume;
      goto LABEL_79;
    }

    if ([v56 isDirectory])
    {
      LOBYTE(v61) = 0;
      if (_LSNodeIsPackageIgnoringTypeDeclarations(*v55, v56, &v61))
      {
        v30 = **v55;
        if (v61)
        {
          TypeAVCHDCollection = _UTTypeGetTypeAVCHDCollection(v30);
        }

        else
        {
          TypeAVCHDCollection = _UTTypeGetTypePackage(v30);
        }

        TypeDirectory = TypeAVCHDCollection;
        LOBYTE(v57) = v61 == 0;
      }

      else
      {
        TypeDirectory = _UTTypeGetTypeDirectory(**v55);
        HIBYTE(v57) = 0;
        v40 = LaunchServices::TypeEvaluation::State::getExtension(v55);
        LOBYTE(v57) = v40 != 0;
      }

      goto LABEL_78;
    }

    if ([v56 isSymbolicLink])
    {
      TypeVolume = _UTTypeGetTypeSymbolicLink(**v55);
      goto LABEL_21;
    }

    if ([v56 isAliasFile])
    {
      TypeVolume = _UTTypeGetTypeAliasFile(**v55);
      goto LABEL_21;
    }

    if ([v56 isRegularFile])
    {
      TypeVolume = _UTTypeGetTypeData(**v55);
      TypeDirectory = TypeVolume;
      LOBYTE(v57) = 1;
      goto LABEL_79;
    }

    v61 = 0;
    v49 = *MEMORY[0x1E695DB20];
    if (![v56 getResourceValue:&v61 forKey:*MEMORY[0x1E695DB20] options:1 error:a3])
    {
LABEL_114:

LABEL_78:
      TypeVolume = TypeDirectory;
LABEL_79:
      if (a3 && !TypeVolume)
      {
        if (*a3)
        {
          goto LABEL_84;
        }

        v39 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10813, 0, "resolveBaseType", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Type/UTTypeEvaluator.mm", 381);
        goto LABEL_70;
      }

      if (!TypeVolume)
      {
        goto LABEL_84;
      }

LABEL_14:
      if (v57 != 1)
      {
        goto LABEL_34;
      }

      LOBYTE(v62) = 0;
      v66 = 0;
      v15 = LaunchServices::TypeEvaluation::State::getExtension(v55);
      if (v15)
      {
        LODWORD(v69[0]) = 0;
        if (_UTTypeGetActiveIdentifierForTag(**v55, @"public.filename-extension", v15, TypeDirectory, v69))
        {
          v16 = v69[0];
          if (LODWORD(v69[0]))
          {
            v17 = _UTTypeGet(**v55, LODWORD(v69[0]));
            LODWORD(v62) = v16;
            v63 = v17;
            v64 = 0;
            v66 = 1;
            v65 = 0;
            goto LABEL_32;
          }
        }
      }

      if (!TypeDirectory || v57 != 1 || HIBYTE(v57) != 1)
      {
LABEL_32:
        std::__optional_storage_base<LaunchServices::TypeEvaluator::Result,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<LaunchServices::TypeEvaluator::Result,false>>(a4, &v62);
        if (v66 == 1)
        {
        }

LABEL_34:
        if ((a4[8] & 1) == 0)
        {
          LODWORD(v62) = 0;
          v23 = TypeDirectory;
          if (v23 == _UTTypeGetTypeData(**v55))
          {
            v24 = [v56 nameWithError:0];
            v25 = v24;
            if (v24)
            {
              if (![v24 caseInsensitiveCompare:@"makefile"] || !objc_msgSend(v25, "caseInsensitiveCompare:", @"gnumakefile"))
              {
                _UTGetActiveTypeForCFStringIdentifier(**v55, @"public.make-source", &v62);
              }

              if (LaunchServices::TypeEvaluation::gnitsFileNames(void)::once != -1)
              {
                LaunchServices::TypeEvaluation::runEvaluator();
              }

              if ([LaunchServices::TypeEvaluation::gnitsFileNames(void)::result containsObject:{v25, *v55}])
              {
                _UTGetActiveTypeForCFStringIdentifier(**v55, @"public.plain-text", &v62);
              }
            }

            v26 = v62;
            if (v62)
            {
              v27 = _UTTypeGet(**v55, v62);
              v28 = *(a4 + 32);
              *a4 = v26;
              *(a4 + 1) = v27;
              if (v28 == 1)
              {
                v29 = *(a4 + 2);
                *(a4 + 2) = 0;
              }

              else
              {
                *(a4 + 2) = 0;
                *(a4 + 32) = 1;
              }

              *(a4 + 24) = 0;
            }
          }
        }

        if (a4[8])
        {
          goto LABEL_67;
        }

        v32 = TypeDirectory;
        if (v32 == _UTTypeGetTypeData(**v55))
        {
          if ([v56 isExecutable])
          {
            TypeUnixExecutable = _UTTypeGetTypeUnixExecutable(**v55);
            goto LABEL_61;
          }
        }

        else
        {
          v34 = TypeDirectory;
          if (v34 == _UTTypeGetTypeDirectory(**v55))
          {
            TypeUnixExecutable = _UTTypeGetTypeFolder(**v55);
LABEL_61:
            v35 = TypeUnixExecutable;
            if (TypeUnixExecutable)
            {
              goto LABEL_63;
            }
          }
        }

        v35 = TypeDirectory;
        if (!TypeDirectory)
        {
LABEL_67:
          if (!a3 || (a4[8] & 1) != 0)
          {
LABEL_84:
            if (*(a4 + 32) != 1 || *(a2 + 8) != 1 || (v41 = *a4, LOBYTE(v62) = 0, v66 = 0, _UTTypeGetTypeData(**v55) != v41))
            {
LABEL_98:

              goto LABEL_99;
            }

            v69[0] = 0;
            v42 = [v56 URL];
            v69[0] = 0;
            if (_LSCopySniffedExtensionAndTypeIdentifierForURL())
            {
              v43 = v69[0] == 0;

              if (!v43)
              {
                LODWORD(v68[0]) = 0;
                v44 = **v55;
                v45 = v69[0];
                TypeData = _UTTypeGetTypeData(**v55);
                ActiveIdentifierForTag = _UTTypeGetActiveIdentifierForTag(v44, @"public.filename-extension", v45, TypeData, v68);
                v48 = ActiveIdentifierForTag != 0;
                if (ActiveIdentifierForTag)
                {
                  LODWORD(v62) = v68[0];
                  v63 = ActiveIdentifierForTag;
                  v64 = 0;
                  v66 = 1;
                  v65 = 1;
                }

                goto LABEL_93;
              }
            }

            else
            {
            }

            v48 = 0;
LABEL_93:
            if (v69[0])
            {
              CFRelease(v69[0]);
            }

            if (v48)
            {
              std::__optional_storage_base<LaunchServices::TypeEvaluator::Result,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<LaunchServices::TypeEvaluator::Result,false>>(a4, &v62);
              if (v66)
              {
              }
            }

            goto LABEL_98;
          }

          v39 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10813, 0, "runEvaluator", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Type/UTTypeEvaluator.mm", 274);
LABEL_70:
          *a3 = v39;
          goto LABEL_84;
        }

LABEL_63:
        v36 = _UTTypeGet(**v55, v35);
        v37 = *(a4 + 32);
        *a4 = v35;
        *(a4 + 1) = v36;
        if (v37 == 1)
        {
          v38 = *(a4 + 2);
          *(a4 + 2) = 0;
        }

        else
        {
          *(a4 + 2) = 0;
          *(a4 + 32) = 1;
        }

        *(a4 + 24) = 0;
        goto LABEL_67;
      }

      v19 = LaunchServices::TypeEvaluation::State::getExtension(v55);
      if (v19)
      {
        if (!_UTExtensionLooksLikeAppendedRandomness(**v55, v19))
        {
          v20 = @"public.filename-extension";
          v19 = v19;
          if (v20)
          {
            if (_UTTypeGet(**v55, TypeDirectory))
            {
              [(_LSDatabase *)**v55 store];
              v54 = _CSStringCopyCFString();
            }

            else
            {
              v54 = 0;
            }

            DynamicIdentifierForTag = _UTTypeCreateDynamicIdentifierForTag(*v55, v20, v19, v54);

LABEL_30:
            if (DynamicIdentifierForTag)
            {
              v22 = [(__CFString *)DynamicIdentifierForTag copy];
              LODWORD(v62) = 0;
              v63 = 0;
              v64 = v22;
              v66 = 1;
              v65 = 0;
            }

            goto LABEL_32;
          }

LABEL_29:
          DynamicIdentifierForTag = 0;
          goto LABEL_30;
        }

        v19 = 0;
      }

      v20 = 0;
      goto LABEL_29;
    }

    if (LaunchServices::TypeEvaluation::resolveBaseType(LaunchServices::TypeEvaluation::State &,NSError * {__autoreleasing}*)::once != -1)
    {
      LaunchServices::TypeEvaluation::runEvaluator();
    }

    v50 = [LaunchServices::TypeEvaluation::resolveBaseType(LaunchServices::TypeEvaluation::State & NSError * {__autoreleasing}*):"objectForKeyedSubscript:" :{v61, *v55}posixUTIs];
    if (v50)
    {
      v51 = _UTGetActiveTypeForCFStringIdentifier(**v55, v50, &TypeDirectory);
      if (!a3 || v51)
      {
        goto LABEL_113;
      }

      v69[0] = *MEMORY[0x1E696A278];
      v69[1] = v49;
      v62 = @"File system object has an unknown POSIX type.";
      v63 = v61;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:v69 count:2];
      v53 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10815, v52, "resolveBaseType", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Type/UTTypeEvaluator.mm", 366);
    }

    else
    {
      if (!a3)
      {
LABEL_113:

        goto LABEL_114;
      }

      v67[0] = *MEMORY[0x1E696A278];
      v67[1] = v49;
      v68[0] = @"File system object has an unknown POSIX type.";
      v68[1] = v61;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:2];
      v53 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10815, v52, "resolveBaseType", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Type/UTTypeEvaluator.mm", 371);
    }

    *a3 = v53;

    goto LABEL_113;
  }

LABEL_99:
}

void sub_18165A4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14)
{
  if (*(v14 + 32) == 1)
  {
  }

  _Unwind_Resume(a1);
}

id mapBundleIdentifiersToUUIDs(int a1, void *a2, void *a3)
{
  v5 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__4;
  v26 = __Block_byref_object_dispose__4;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __mapBundleIdentifiersToUUIDs_block_invoke;
  v15[3] = &unk_1E6A198D0;
  v15[4] = &v16;
  v6 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:v15];
  v7 = v6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __mapBundleIdentifiersToUUIDs_block_invoke_2;
  v13[3] = &unk_1E6A1A458;
  v14 = a1;
  if (a1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  if (a1)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  v13[4] = &v22;
  v13[5] = &v16;
  [v6 mapBundleIdentifiers:v8 orMachOUUIDs:v9 completionHandler:v13];
  v10 = v23[5];
  if (a3 && !v10)
  {
    *a3 = v17[5];
    v10 = v23[5];
  }

  v11 = v10;

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v11;
}

void sub_18165A83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t LaunchServices::URLPropertyProvider::prepareCanSetHiddenExtensionValue(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = LaunchServices::URLPropertyProvider::getDisplayNameConstructor(a1, a2, a5, a6);
  if (v8)
  {
    v9 = +[_LSDServiceDomain defaultServiceDomain];
    v10 = LaunchServices::Database::Context::_get(a1, v9, 0);

    v11 = [v8 canSetExtensionHiddenWithContext:v10];
    v12 = MEMORY[0x1E695E4C0];
    if (v11)
    {
      v12 = MEMORY[0x1E695E4D0];
    }

    MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E250], *v12);
  }

  else
  {
    MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E250], *MEMORY[0x1E695E4C0]);
  }

  return 1;
}

void ___ZL28_LSDNCGetForbiddenCharactersj_block_invoke()
{
  v6 = objc_alloc_init(MEMORY[0x1E696AD48]);
  [v6 addCharactersInRange:{0, 1}];
  v0 = [MEMORY[0x1E696AB08] illegalCharacterSet];
  [v6 formUnionWithCharacterSet:v0];

  v1 = [v6 copy];
  v2 = _LSDNCGetForbiddenCharacters::forbiddenWithoutNewlines;
  _LSDNCGetForbiddenCharacters::forbiddenWithoutNewlines = v1;

  v3 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  [v6 formUnionWithCharacterSet:v3];

  v4 = [v6 copy];
  v5 = _LSDNCGetForbiddenCharacters::forbiddenWithNewlines;
  _LSDNCGetForbiddenCharacters::forbiddenWithNewlines = v4;
}

void sub_18165AC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void ___ZL36_LSPlistLookUpIndexOfCompactedStringP8NSString_block_invoke()
{
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:256];
  for (i = 0; i != 256; ++i)
  {
    v1 = _LSPlistLookUpCompactedStringByIndex(i);
    if (v1)
    {
      v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
      [v5 setObject:v2 forKeyedSubscript:v1];
    }
  }

  v3 = [v5 copy];
  v4 = _LSPlistLookUpIndexOfCompactedString(NSString *)::indexes;
  _LSPlistLookUpIndexOfCompactedString(NSString *)::indexes = v3;
}

void ___ZL36_LSPlistLookUpCompactedStringByIndexm_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF70] arrayWithCapacity:256];
  for (i = 0; i != 256; ++i)
  {
    v2 = v8;
    v3 = i;
    memset(v8, 0, sizeof(v8));
    do
    {
      *v2++ = _ZZZL36_LSPlistLookUpCompactedStringByIndexmEUb_E12characterSet[v3 & 0x3F];
      v4 = v3 > 0x3F;
      v3 >>= 6;
    }

    while (v4);
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    [v0 addObject:v5];
  }

  v6 = [v0 copy];
  v7 = _LSPlistLookUpCompactedStringByIndex(unsigned long)::strings;
  _LSPlistLookUpCompactedStringByIndex(unsigned long)::strings = v6;
}

void ___ZL24_LSPlistGetCommonStringsv_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E695DF70] array];
  [v1 addObject:@"UISupportedInterfaceOrientations"];
  [v1 addObject:@"com.apple.security.exception.mach-lookup.global-name"];
  [v1 addObject:@"UIInterfaceOrientationLandscapeRight"];
  [v1 addObject:@"UIInterfaceOrientationPortrait"];
  [v1 addObject:@"CFBundleInfoDictionaryVersion"];
  [v1 addObject:@"UIInterfaceOrientationLandscapeLeft"];
  [v1 addObject:@"CFBundleSupportedPlatforms"];
  [v1 addObject:@"CFBundleShortVersionString"];
  [v1 addObject:@"CFBundleDevelopmentRegion"];
  [v1 addObject:@"com.apple.private.security.container-required"];
  [v1 addObject:@"CFBundleNumericVersion"];
  [v1 addObject:@"BuildMachineOSBuild"];
  [v1 addObject:@"CFBundlePackageType"];
  [v1 addObject:@"com.apple.springboard.opensensitiveurl"];
  [v1 addObject:@"CFBundleExecutable"];
  [v1 addObject:@"CFBundleIdentifier"];
  [v1 addObject:@"UIRequiredDeviceCapabilities"];
  [v1 addObject:@"UIViewControllerBasedStatusBarAppearance"];
  [v1 addObject:@"DTPlatformVersion"];
  [v1 addObject:@"com.apple.security.exception.files.home-relative-path.read-write"];
  [v1 addObject:@"MinimumOSVersion"];
  [v1 addObject:@"com.apple.UIKit.vends-view-services"];
  [v1 addObject:@"CFBundleSignature"];
  [v1 addObject:@"CFBundleVersion"];
  [v1 addObject:@"DTPlatformBuild"];
  [v1 addObject:@"CanInheritApplicationStateFromOtherProcesses"];
  [v1 addObject:@"LSRequiresIPhoneOS"];
  [v1 addObject:@"DTPlatformName"];
  [v1 addObject:@"UIDeviceFamily"];
  [v1 addObject:@"com.apple.private.tcc.allow"];
  [v1 addObject:@"CFBundleDisplayName"];
  [v1 addObject:@"com.apple.private.coreservices.canmaplsdatabase"];
  [v1 addObject:@"com.apple.security.exception.shared-preference.read-write"];
  [v1 addObject:@"DTXcodeBuild"];
  [v1 addObject:@"UIViewServiceUsesNSXPCConnection"];
  [v1 addObject:@"UILaunchStoryboardName"];
  [v1 addObject:@"UIInterfaceOrientationPortraitUpsideDown"];
  [v1 addObject:@"com.apple.itunesstored.private"];
  [v1 addObject:@"com.apple.accounts.appleaccount.fullaccess"];
  [v1 addObject:@"com.apple.private.accounts.allaccounts"];
  [v1 addObject:@"CFBundleName"];
  [v1 addObject:@"DTCompiler"];
  [v1 addObject:@"DTSDKBuild"];
  [v1 addObject:@"keychain-access-groups"];
  [v1 addObject:@"CFBundlePrimaryIcon"];
  [v1 addObject:@"com.apple.locationd.effective_bundle"];
  [v1 addObject:@"com.apple.Contacts.database-allow"];
  [v1 addObject:@"DTSDKName"];
  [v1 addObject:@"com.apple.security.exception.files.absolute-path.read-write"];
  [v1 addObject:@"kTCCServiceAddressBook"];
  [v1 addObject:@"com.apple.CommCenter.fine-grained"];
  [v1 addObject:@"com.apple.coremedia.allow-protected-content-playback"];
  [v1 addObject:@"com.apple.springboard.openurlinbackground"];
  [v1 addObject:@"com.apple.private.canModifyAppLinkPermissions"];
  [v1 addObject:@"iPhoneOS"];
  [v1 addObject:@"com.apple.frontboard.launchapplications"];
  [v1 addObject:@"application-identifier"];
  [v1 addObject:@"SBMatchingApplicationGenres"];
  [v1 addObject:@"com.apple.private.tcc.allow.overridable"];
  [v1 addObject:@"UIBackgroundModes"];
  [v1 addObject:@"com.apple.security.exception.files.absolute-path.read-only"];
  [v1 addObject:@"com.apple.security.exception.files.home-relative-path.read-only"];
  [v1 addObject:@"com.apple.private.appleaccount.app-hidden-from-icloud-settings"];
  [v1 addObject:@"com.apple.telephonyutilities.callservicesdaemon.callprovidermanager"];
  [v1 addObject:@"DTXcode"];
  [v1 addObject:@"com.apple.QuartzCore.secure-mode"];
  [v1 addObject:@"platform-application"];
  [v1 addObject:@"com.apple.private.corerecents"];
  [v1 addObject:@"CFBundleIcons"];
  [v1 addObject:@"NSLocationWhenInUseUsageDescription"];
  [v1 addObject:@"kTCCServicePhotos"];
  [v1 addObject:@"com.apple.wifi.manager-access"];
  [v1 addObject:@"CFBundleURLTypes"];
  [v1 addObject:@"UIApplicationSystemWindowsSecureKey"];
  [v1 addObject:@"com.apple.telephonyutilities.callservicesd"];
  [v1 addObject:@"com.apple.private.MobileGestalt.AllowedProtectedKeys"];
  [v1 addObject:@"com.apple.private.canGetAppLinkInfo"];
  [v1 addObject:@"com.apple.managedconfiguration.profiled-access"];
  [v1 addObject:@"SBMachServices"];
  [v1 addObject:@"com.apple.coreaudio.allow-amr-decode"];
  [v1 addObject:@"com.apple.telephonyutilities.callservicesdaemon.callstatecontroller"];
  [v1 addObject:@"SBAppTags"];
  [v1 addObject:@"com.apple.authkit.client.internal"];
  [v1 addObject:@"kTCCServiceCamera"];
  [v1 addObject:@"com.apple.SystemConfiguration.SCPreferences-write-access"];
  [v1 addObject:@"UIRequiresFullScreen"];
  [v1 addObject:@"com.apple.private.suggestions.contacts"];
  [v1 addObject:@"com.apple.developer.icloud-services"];
  [v1 addObject:@"com.apple.authkit.client.private"];
  [v1 addObject:@"com.apple.developer.icloud-container-identifiers"];
  [v1 addObject:@"com.apple.coreduetd.allow"];
  [v1 addObject:@"com.apple.developer.ubiquity-kvstore-identifier"];
  [v1 addObject:@"com.apple.private.coreservices.canopenactivity"];
  [v1 addObject:@"com.apple.springboard.activateRemoteAlert"];
  [v1 addObject:@"NSUserActivityTypes"];
  [v1 addObject:@"kTCCServiceMediaLibrary"];
  [v1 addObject:@"com.apple.accounts.appleidauthentication.defaultaccess"];
  [v1 addObject:@"com.apple.developer.icloud-container-environment"];
  [v1 addObject:@"com.apple.private.assets.accessible-asset-types"];
  [v1 addObject:@"com.apple.private.imcore.imremoteurlconnection"];
  [v1 addObject:@"com.apple.springboard.launchapplications"];
  [v1 addObject:@"CAProcessCanAccessGPU"];
  [v1 addObject:@"kTCCServiceMicrophone"];
  [v1 addObject:@"_LSSupportsRemoval"];
  [v1 addObject:@"UIApplicationShortcutItems"];
  [v1 addObject:@"com.apple.private.suggestions"];
  [v1 addObject:@"com.apple.springboard.shortcutitems.customimage"];
  [v1 addObject:@"SBUninstallIconOverrideStringsFile"];
  [v1 addObject:@"kTCCServiceCalendar"];
  [v1 addObject:@"com.apple.private.persona.read"];
  [v1 addObject:@"com.apple.mobile.deleted.AllowFreeSpace"];
  [v1 addObject:@"com.apple.SystemConfiguration.SCDynamicStore-write-access"];
  [v1 addObject:@"com.apple.springboard.allowallcallurls"];
  [v1 addObject:@"com.apple.security.exception.shared-preference.read-only"];
  [v1 addObject:@"com.apple.security.application-groups"];
  [v1 addObject:@"SBIsLaunchableDuringSetup"];
  [v1 addObject:@"com.apple.private.webinspector.allow-remote-inspection"];
  [v1 addObject:@"com.apple.locationd.usage_oracle"];
  [v1 addObject:@"CFBundleAllowMixedLocalizations"];
  [v1 addObject:@"com.apple.private.game-center.bypass-authentication"];
  [v1 addObject:@"com.apple.avfoundation.allow-still-image-capture-shutter-sound-manipulation"];
  [v1 addObject:@"hidden"];
  [v1 addObject:@"com.apple.mobilemail.mailservices"];
  [v1 addObject:@"armv7"];
  [v1 addObject:@"com.apple.coretelephony.Identity.get"];
  [v1 addObject:@"com.apple.private.healthkit.medicaliddata"];
  [v1 addObject:@"com.apple.coreduetd.people"];
  [v1 addObject:@"com.apple.private.hsa-authentication-processing"];
  [v1 addObject:@"com.apple.private.mobileinstall.upgrade-enabled"];
  [v1 addObject:@"com.apple.private.corespotlight.internal"];
  [v1 addObject:@"com.apple.springboard.appbackgroundstyle"];
  [v1 addObject:@"com.apple.private.subscriptionservice.internal"];
  [v1 addObject:@"com.apple.private.bmk.allow"];
  [v1 addObject:@"com.apple.security.exception.iokit-user-client-class"];
  [v1 addObject:@"com.apple.private.lockdown.finegrained-get"];
  [v1 addObject:@"com.apple.private.mobileinstall.allowedSPI"];
  [v1 addObject:@"CoreSpotlightContinuation"];
  [v1 addObject:@"CoreSpotlightActions"];
  [v1 addObject:@"com.apple.accounts.facebook.defaultaccess"];
  [v1 addObject:@"com.apple.developer.pass-type-identifiers"];
  [v1 addObject:@"com.apple.locationd.authorizeapplications"];
  [v1 addObject:@"com.apple.private.network.socket-delegate"];
  [v1 addObject:@"com.apple.QuartzCore.global-capture"];
  [v1 addObject:@"com.apple.media.ringtones.read-only"];
  [v1 addObject:@"com.apple.managedconfiguration.profiled.configurationprofiles"];
  [v1 addObject:@"com.apple.coremedia.allow-mpeg4streaming"];
  [v1 addObject:@"com.apple.private.cloudkit.systemService"];
  [v1 addObject:@"com.apple.springboard.openurlswhenlocked"];
  [v1 addObject:@"SBIconVisibilitySetByAppPreference"];
  [v1 addObject:@"com.apple.private.launchservices.suppresscustomschemeprompt"];
  [v1 addObject:@"com.apple.private.corespotlight.search.internal"];
  [v1 addObject:@"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.lsd.iconscache/Library/Caches/com.apple.IconsCache/"];
  [v1 addObject:@"com.apple.developer.healthkit"];
  [v1 addObject:@"CFBundleDocumentTypes"];
  [v1 addObject:@"aps-connection-initiate"];
  [v1 addObject:@"com.apple.private.communicationsfilter"];
  [v1 addObject:@"com.apple.private.social.facebook.like"];
  [v1 addObject:@"com.apple.keystore.device"];
  [v1 addObject:@"com.apple.springboard.activateawayviewplugins"];
  [v1 addObject:@"com.apple.springboard.statusbarstyleoverrides"];
  [v1 addObject:@"fairplay-client"];
  [v1 addObject:@"UIStatusBarStyle"];
  [v1 addObject:@"com.apple.security.system-groups"];
  [v1 addObject:@"com.apple.visualvoicemail.client"];
  [v1 addObject:@"UIMainStoryboardFile"];
  [v1 addObject:@"com.apple.certificates"];
  [v1 addObject:@"com.apple.videoconference.allow-conferencing"];
  [v1 addObject:@"com.apple.appstored.xpc.updates"];
  [v1 addObject:@"com.apple.private.externalaccessory.showallaccessories"];
  [v1 addObject:@"com.apple.private.librarian.container-proxy"];
  [v1 addObject:@"*.pass.com.apple.itunes.storecredit"];
  [v1 addObject:@"access-call-providers"];
  [v1 addObject:@"com.apple.hsa-authentication-server"];
  [v1 addObject:@"NSPrincipalClass"];
  [v1 addObject:@"UTExportedTypeDeclarations"];
  [v1 addObject:@"com.apple.assistant.dictation.prerecorded"];
  [v1 addObject:@"com.apple.private.game-center"];
  [v1 addObject:@"com.apple.safari.credit-cards"];
  [v1 addObject:@"com.apple.CoreRoutine.LocationOfInterest"];
  [v1 addObject:@"com.apple.developer.ubiquity-container-identifiers"];
  [v1 addObject:@"com.apple.private.allow-explicit-graphics-priority"];
  [v1 addObject:@"com.apple.seld.tsmmanager"];
  [v1 addObject:@"com.apple.springboard.wallpaperAnimationSuspension"];
  [v1 addObject:@"com.apple.icloud.fmfd.access"];
  [v1 addObject:@"com.apple.nanosystemsettings"];
  [v1 addObject:@"com.apple.backboardd.launchapplications"];
  [v1 addObject:@"SKRespectApplicationUserInterfaceLayoutDirection"];
  [v1 addObject:@"com.apple.nfcd.hwmanager"];
  [v1 addObject:@"com.apple.private.healthkit.authorization_bypass"];
  [v1 addObject:@"SBAppUsesLocalNotifications"];
  [v1 addObject:@"com.apple.private.ids.messaging.urgent-priority"];
  [v1 addObject:@"com.apple.private.ids.messaging"];
  [v1 addObject:@"com.apple.private.persona.write"];
  [v1 addObject:@"com.apple.security.temporary-exception.mach-lookup.global-name"];
  [v1 addObject:@"com.apple.companionappd.connect.allow"];
  [v1 addObject:@"com.apple.icloud.findmydeviced.access"];
  [v1 addObject:@"com.apple.mediastream.mstreamd-access"];
  [v1 addObject:@"com.apple.private.security.no-sandbox"];
  [v1 addObject:@"com.apple.private.hid.client.service-protected"];
  [v1 addObject:@"unboundedTaskCompletion"];
  [v1 addObject:@"com.apple.TextInput.rdt.me"];
  [v1 addObject:@"com.apple.identities"];
  [v1 addObject:@"com.apple.private.alloy.passbook.provisioning"];
  [v1 addObject:@"kTCCServiceReminders"];
  [v1 addObject:@"com.apple.backboardd.hostCanRequireTouchesFromHostedContent"];
  [v1 addObject:@"com.apple.launchservices.receivereferrerrurl"];
  [v1 addObject:@"com.apple.private.accounts.customaccesssinfo"];
  [v1 addObject:@"com.apple.radios.plist"];
  [v1 addObject:@"com.apple.locationd.prompt_behavior"];
  [v1 addObject:@"/Library/Preferences/com.apple.mobilephone.speeddial.plist"];
  [v1 addObject:@"com.apple.avfoundation.allow-shallow-depth-of-field-effect"];
  [v1 addObject:@"com.apple.excludes-extensions"];
  [v1 addObject:@"com.apple.private.ubiquity-additional-kvstore-identifiers"];
  [v1 addObject:@"UIStatusBarHidden"];
  [v1 addObject:@"com.apple.familycircle.agent"];
  [v1 addObject:@"com.apple.icloud.fmfd"];
  [v1 addObject:@"com.apple.mobile.keybagd.xpc"];
  [v1 addObject:@"com.apple.payment.all-access"];
  [v1 addObject:@"UIApplicationShortcutItemsVersion"];
  [v1 addObject:@"com.apple.bulletinboard.utilities"];
  [v1 addObject:@"com.apple.notificationcenter.widgetcontrollerhascontent"];
  [v1 addObject:@"com.apple.private.cloudkit.setEnvironment"];
  [v1 addObject:@"UIApplicationShortcutWidget"];
  [v1 addObject:@"com.apple.private.healthkit"];
  [v1 addObject:@"com.apple.cards.all-access"];
  [v1 addObject:@"com.apple.managedconfiguration.profiled"];
  [v1 addObject:@"com.apple.springboard.activateassistant"];
  [v1 addObject:@"com.apple.keystore.stash.access"];
  [v1 addObject:@"com.apple.routined.registration"];
  [v1 addObject:@"SBStarkCapable"];
  [v1 addObject:@"com.apple.mobilesafari"];
  [v1 addObject:@"/Media/PhotoData/"];
  [v1 addObject:@"UIBackgroundStyle"];
  [v1 addObject:@"/private/var/mobile/Library/Preferences/com.apple.restrictionspassword.plist"];
  [v1 addObject:@"DataProtectionClass"];
  [v1 addObject:@"SBIconVisibilityDefaultVisible"];
  [v1 addObject:@"UIStatusBarTintParameters"];
  [v1 addObject:@"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles/Library/ConfigurationProfiles/CloudConfigurationDetails.plist"];
  [v1 addObject:@"com.apple.intents.extension.discovery"];
  [v1 addObject:@"com.apple.private.healthkit.authorization_manager"];
  [v1 addObject:@"com.apple.passes.add-silently"];
  [v1 addObject:@"com.apple.private.tcc.manager"];
  [v1 addObject:@"com.apple.developer.extension-host.photo-editing"];
  [v1 addObject:@"com.apple.homekit.private-spi-access"];
  [v1 addObject:@"com.apple.nano.nanoregistry.pairunpairobliterate"];
  [v1 addObject:@"com.apple.private.suggestions.events"];
  [v1 addObject:@"com.apple.springboard.allowIconVisibilityChanges"];
  [v1 addObject:@"com.apple.private.ids.idquery-cache"];
  [v1 addObject:@"com.apple.private.ind.client"];
  [v1 addObject:@"continuous"];
  [v1 addObject:@"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles/Library/ConfigurationProfiles/MDMAppManagement.plist"];
  [v1 addObject:@"SBLaunchSuspendedAlways"];
  [v1 addObject:@"com.apple.private.can-load-any-content-blocker"];
  [v1 addObject:@"com.apple.springboard.setWantsLockButtonEvents"];
  [v1 addObject:@"com.apple.NPKCompanionAgent.client"];
  [v1 addObject:@"seatbelt-profiles"];
  [v1 addObject:@"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles/Library/ConfigurationProfiles/UserSettings.plist"];
  v2 = [v1 copy];

  objc_autoreleasePoolPop(v0);
  if (v2)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v2];
    v5 = _LSPlistGetCommonStrings(void)::result;
    _LSPlistGetCommonStrings(void)::result = v4;
  }

  if (!_LSPlistGetCommonStrings(void)::result)
  {
    v6 = _LSDefaultLog(v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ___ZL24_LSPlistGetCommonStringsv_block_invoke_cold_1(v6);
    }

    v7 = objc_alloc_init(MEMORY[0x1E695DFB8]);
    v8 = _LSPlistGetCommonStrings(void)::result;
    _LSPlistGetCommonStrings(void)::result = v7;
  }
}

Boolean FSEventStreamSetExclusionPaths(FSEventStreamRef streamRef, CFArrayRef pathsToExclude)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(streamRef + 188))
  {
    return 0;
  }

  Count = CFArrayGetCount(pathsToExclude);
  *(streamRef + 12) = Count;
  if (Count && Count <= 8)
  {
    if (Count >= 1)
    {
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(pathsToExclude, v6);
        TypeID = CFStringGetTypeID();
        if (TypeID != CFGetTypeID(ValueAtIndex) || !CFStringGetFileSystemRepresentation(ValueAtIndex, buffer, 1024))
        {
          break;
        }

        if (*(streamRef + 16) || !fsevent_realpath(buffer, __s1))
        {
          __strlcpy_chk();
        }

        *(streamRef + v6++ + 13) = strdup(__s1);
        if (*(streamRef + 12) <= v6)
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  else
  {
    result = 0;
    *(streamRef + 12) = 0;
  }

  return result;
}

char *fsevent_realpath(const char *a1, char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1817E89B0;
  memset(v7, 0, 512);
  v5 = 0;
  v6 = 32;
  DWORD1(v4) = 0x80000000;
  if (getattrlist(a1, &v4, v7, 0x420uLL, 0x20u) == -1)
  {
    return 0;
  }

  if (!a2)
  {
    return &v7[1] + SDWORD2(v7[1]) + 8;
  }

  strlcpy(a2, &v7[1] + SDWORD2(v7[1]) + 8, 0x400uLL);
  return a2;
}

uint64_t FSEvents_connect(uint64_t a1)
{
  pthread_mutex_lock(&FSEvents_f2d_public_port_mutex);
  if (FSEvents_f2d_public_port)
  {
    pthread_mutex_unlock(&FSEvents_f2d_public_port_mutex);
    return 0;
  }

  else
  {
    v1 = bootstrap_look_up2();
    v2 = pthread_mutex_unlock(&FSEvents_f2d_public_port_mutex);
    if (v1)
    {
      v4 = fsevent_default_log(v2, v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        FSEvents_connect_cold_1();
      }
    }
  }

  return v1;
}

uint64_t register_with_server(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5, const void **a6, uint64_t a7, uint64_t a8, int a9, _DWORD *a10)
{
  v13 = a5;
  v17 = FSEvents_connect(a2);
  if (v17)
  {
    return v17;
  }

  v74 = a7;
  v19 = malloc_type_malloc(4 * v13, 0x100004052888210uLL);
  if (v19)
  {
    v21 = v19;
    v75 = malloc_type_malloc(4 * v13, 0x100004052888210uLL);
    if (v75)
    {
      v70 = a8;
      v71 = a3;
      v73 = a4;
      v23 = v13;
      if (v13 < 1)
      {
        v24 = 0;
      }

      else
      {
        v24 = 0;
        v25 = v13;
        v26 = a6;
        v27 = v21;
        do
        {
          v28 = *v26++;
          v29 = strlen(v28);
          *v27++ = v29;
          v24 += v29;
          --v25;
        }

        while (v25);
      }

      v32 = v24 + v13;
      v33 = malloc_type_malloc(v24 + v13, 0xBF49D592uLL);
      v35 = v33;
      if (!v33)
      {
        v50 = fsevent_default_log(0, v34);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          register_with_server_cold_5();
        }

        v51 = 0;
        v44 = 0;
        v17 = 4294967293;
        goto LABEL_49;
      }

      v72 = v32;
      v69 = v21;
      v36 = 0;
      if (v13 >= 1)
      {
        v37 = v75;
        v38 = v21;
        do
        {
          *v37++ = v36;
          v39 = *v38++;
          v40 = v39 + 1;
          v41 = *a6++;
          v33 = memcpy(&v35[v36], v41, v40);
          v36 += v40;
          --v23;
        }

        while (v23);
      }

      v42 = v72;
      if (v36 != v72)
      {
        v43 = fsevent_default_log(v33, v34);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          register_with_server_cold_1();
        }
      }

      v44 = *(a1 + 96);
      v45 = v73;
      if (v44)
      {
        if (v44 < 1)
        {
          v46 = 0;
          v21 = v69;
        }

        else
        {
          v46 = 0;
          v47 = (a1 + 104);
          v48 = *(a1 + 96);
          v21 = v69;
          do
          {
            v49 = *v47++;
            v46 += strlen(v49) + 1;
            --v48;
          }

          while (v48);
        }

        v53 = malloc_type_malloc(4 * v44, 0x100004052888210uLL);
        if (!v53)
        {
          v66 = fsevent_default_log(0, v54);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            register_with_server_cold_3();
          }

          v51 = 0;
          v44 = 0;
          v17 = 4294967292;
          goto LABEL_49;
        }

        v51 = v53;
        v55 = malloc_type_malloc(v46, 0x6F28CA70uLL);
        if (!v55)
        {
          v67 = fsevent_default_log(0, v56);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            register_with_server_cold_2();
          }

          v44 = 0;
          v17 = 4294967291;
          goto LABEL_49;
        }

        v44 = v55;
        v52 = *(a1 + 96);
        if (v52 >= 1)
        {
          v68 = v35;
          v57 = 0;
          v58 = v55;
          v59 = 0;
          v60 = a1 + 104;
          do
          {
            v51[v57] = v59;
            v61 = strlen(*(v60 + 8 * v57));
            v62 = v61 + 1;
            memcpy(&v58[v59], *(v60 + 8 * v57), v61 + 1);
            v59 += v62;
            ++v57;
            v52 = *(a1 + 96);
          }

          while (v52 > v57);
          v21 = v69;
          v45 = v73;
          v44 = v58;
          v35 = v68;
        }

        v42 = v72;
      }

      else
      {
        LODWORD(v52) = 0;
        v51 = 0;
        LODWORD(v46) = 0;
        v21 = v69;
      }

      v63 = f2d_register_rpc(FSEvents_f2d_public_port, v71, v45, v13, v75, v13, v35, v42, v52, v51, v52, v44, v46, v70, a9, v74, a10);
      v17 = v63;
      if (v63)
      {
        v65 = fsevent_default_log(v63, v64);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          register_with_server_cold_4();
        }
      }

LABEL_49:
      free(v21);
      free(v75);
      if (v35)
      {
        free(v35);
      }

      if (v51)
      {
        free(v51);
      }

      if (v44)
      {
        free(v44);
      }

      return v17;
    }

    v31 = fsevent_default_log(0, v22);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      register_with_server_cold_6();
    }

    free(v21);
    return 4294967294;
  }

  else
  {
    v30 = fsevent_default_log(0, v20);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      register_with_server_cold_7();
    }

    return 0xFFFFFFFFLL;
  }
}

id LaunchServices::TypeEvaluation::State::getExtension(LaunchServices::TypeEvaluation::State *this)
{
  v1 = *(this + 3);
  if (v1 || ([*(this + 1) extensionWithError:0], v3 = objc_claimAutoreleasedReturnValue(), v4 = *(this + 3), *(this + 3) = v3, v4, (v1 = *(this + 3)) != 0))
  {
    if ([v1 length])
    {
      v5 = v1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t f2d_register_rpc(int a1, int a2, int a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, int a9, uint64_t a10, int a11, uint64_t a12, int a13, uint64_t a14, int a15, uint64_t a16, _DWORD *a17)
{
  v48 = *MEMORY[0x1E69E9840];
  *&msg[20] = 0u;
  *&msg[4] = 0u;
  *&msg[24] = 5;
  *&msg[28] = a2;
  v24 = 1310720;
  v25 = a5;
  v26 = 16777472;
  v27 = 4 * a6;
  v28 = a7;
  v29 = 16777472;
  v30 = a8;
  v31 = a10;
  v32 = 16777472;
  v33 = 4 * a11;
  v34 = a12;
  v35 = 16777472;
  v36 = a13;
  v37 = *MEMORY[0x1E69E99E0];
  v38 = a3;
  v39 = a4;
  v40 = a6;
  v41 = a8;
  v42 = a9;
  v43 = a11;
  v44 = a13;
  v45 = a14;
  v46 = a15;
  v47 = a16;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = -2147478253;
  *&msg[16] = 0x101D000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v19 = *&msg[12];
  }

  else
  {
    v19 = special_reply_port;
  }

  v20 = mach_msg(msg, 3162115, 0xA0u, 0x30u, v19, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) > 0xE || ((1 << (v20 - 2)) & 0x4003) == 0)
  {
    if (!v20)
    {
      if (*&msg[20] == 71)
      {
        v21 = 4294966988;
      }

      else if (*&msg[20] == 66100)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v21 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v21 = 4294966996;
              }

              else
              {
                v21 = *&msg[32];
              }
            }
          }

          else
          {
            v21 = 4294966996;
          }

          goto LABEL_24;
        }

        v21 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 40 && !*&msg[8] && HIWORD(v24) << 16 == 1114112)
        {
          v21 = 0;
          *a17 = *&msg[28];
          return v21;
        }
      }

      else
      {
        v21 = 4294966995;
      }

LABEL_24:
      mach_msg_destroy(msg);
      return v21;
    }

    mig_dealloc_special_reply_port();
  }

  return v21;
}

void resume_source(NSObject *a1, int *a2)
{
  if (a1)
  {
    v3 = *a2;
    if (*a2)
    {
      if (v3 == 2)
      {
        dispatch_resume(a1);
      }

      else if (v3 == 1)
      {
        dispatch_activate(a1);
      }

      *a2 = 3;
    }
  }
}

uint64_t _UTTypeGetActiveIdentifierForTag(void *a1, const __CFString *a2, const __CFString *a3, int a4, uint64_t a5)
{
  v9 = a1;
  v10 = v9;
  v11 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (v9 && a2 && a3)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___UTTypeGetActiveIdentifierForTag_block_invoke;
    v13[3] = &unk_1E6A1EEC0;
    v17 = a4;
    v14 = v9;
    v15 = &v18;
    v16 = a5;
    _UTEnumerateTypesForTag(v14, a2, a3, v13);

    v11 = v19[3];
  }

  _Block_object_dispose(&v18, 8);

  return v11;
}

void sub_18165D0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Boolean FSEventStreamStart(FSEventStreamRef streamRef)
{
  if (!streamRef)
  {
    v5 = fsevent_default_log(0, v1);
    v4 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      return v4;
    }

    FSEventStreamStart_cold_3();
    goto LABEL_20;
  }

  if (*(streamRef + 188))
  {
    v3 = fsevent_default_log(streamRef, v1);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      return v4;
    }

    FSEventStreamStart_cold_1();
    goto LABEL_20;
  }

  if (!*(streamRef + 27) && !*(streamRef + 45))
  {
    v9 = fsevent_default_log(streamRef, v1);
    v4 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      return v4;
    }

    FSEventStreamStart_cold_2();
    goto LABEL_20;
  }

  v6 = *(streamRef + 46);
  if ((v6 & 4) != 0 && !*(streamRef + 54) && !*(streamRef + 52) && !*(streamRef + 53))
  {
LABEL_20:
    LOBYTE(v4) = 0;
    return v4;
  }

  if (!*(streamRef + 49))
  {
    if (!register_with_server(streamRef, "FSEventStreamStart", *(streamRef + 48), *(streamRef + 16), *(streamRef + 18), *(streamRef + 10), *(streamRef + 21), *(streamRef + 22), v6, streamRef + 49))
    {
      *(streamRef + 188) = 1;
      if (*(streamRef + 27))
      {
        context.version = 0;
        context.info = streamRef;
        context.retain = _FSEventStreamRetainAndReturnSelf;
        context.release = FSEventStreamRelease;
        context.copyDescription = FSEventStreamCopyDescription;
        v10 = CFMachPortCreateWithPort(0, *(streamRef + 49), FSEventsClientPortCallback, &context, 0);
        *(streamRef + 26) = v10;
        CFMachPortSetInvalidationCallBack(v10, server_gone_callback);
      }

      else
      {
        v11 = *(streamRef + 45);
        if (v11)
        {
          resume_source(v11, streamRef + 92);
          if (create_f2d_private_port_source(streamRef))
          {
            resume_source(*(streamRef + 47), streamRef + 96);
          }
        }
      }

      goto LABEL_14;
    }

    goto LABEL_20;
  }

LABEL_14:
  v7 = *(streamRef + 52);
  if (v7)
  {
    CFFileDescriptorEnableCallBacks(v7, 1uLL);
  }

  v8 = *(streamRef + 54);
  if (v8)
  {
    resume_source(v8, streamRef + 110);
  }

  LOBYTE(v4) = 1;
  return v4;
}

BOOL create_f2d_private_port_source(uint64_t a1)
{
  v2 = *(a1 + 196);
  v3 = dispatch_source_create(MEMORY[0x1E69E96E0], v2, 1uLL, *(a1 + 352));
  if (v3)
  {
    FSEventStreamRetain(a1);
    dispatch_set_qos_class_fallback();
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __create_f2d_private_port_source_block_invoke;
    handler[3] = &__block_descriptor_tmp_54;
    handler[4] = a1;
    dispatch_source_set_event_handler(v3, handler);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __create_f2d_private_port_source_block_invoke_2;
    v5[3] = &__block_descriptor_tmp_55;
    v6 = v2;
    v5[4] = v3;
    v5[5] = a1;
    dispatch_source_set_cancel_handler(v3, v5);
    *(a1 + 376) = v3;
    *(a1 + 384) = 1;
  }

  return v3 != 0;
}

void _UTEnumerateTypesForTag(void *a1, const __CFString *a2, const __CFString *a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (a2)
    {
      if (a3)
      {
        if (v8)
        {
          StringForCFString = _LSDatabaseGetStringForCFString(v7, a2, 1);
          if (StringForCFString)
          {
            BindingMapIndex = _LSDatabaseFindBindingMapIndex(v7, StringForCFString);
            if (BindingMapIndex != -1)
            {
              v12 = [(_LSDatabase *)v7 schema];
              v13 = _LSDatabaseGetStringForCFString(v7, a3, *(v12 + 104 * BindingMapIndex + 220));
              if (v13)
              {
                v14[0] = MEMORY[0x1E69E9820];
                v14[1] = 3221225472;
                v14[2] = ___UTEnumerateTypesForTag_block_invoke;
                v14[3] = &unk_1E6A1EF60;
                v15 = v7;
                v16 = v9;
                _LSDatabaseEnumeratingBindingMap(v15, BindingMapIndex, v13, v14);
              }
            }
          }
        }
      }
    }
  }
}

void FSEventStreamRetain(FSEventStreamRef streamRef)
{
  if (streamRef)
  {
    atomic_fetch_add(streamRef, 1u);
  }

  else
  {
    v2 = fsevent_default_log(0, v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamRetain_cold_1();
    }
  }
}

uint64_t _LSDatabaseFindBindingMapIndex(char *a1, int a2)
{
  v3 = 0;
  v4 = a1 + 48;
  if (!a1)
  {
    v4 = 0;
  }

  v5 = (v4 + 216);
  while (1)
  {
    a1 = a1;
    v6 = *v5;
    v5 += 26;
    if (v6 == a2)
    {
      break;
    }

    if (++v3 == 14)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

uint64_t _UTTypeGetPedigreeInternal(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [(_LSDatabase *)*a1 store];
  v6 = _CSStringCopyCFString();
  if (v6)
  {
    [v5 addObject:v6];
  }

  v7 = *a1;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = ___UTTypeGetPedigreeInternal_block_invoke;
  v14 = &unk_1E6A1EF88;
  v16 = a1;
  v8 = v5;
  v15 = v8;
  _UTTypeSearchConformsToTypesCommon(v7, a2, -1, _UTTypeSearchConformsToTypesWithBlock::$_0::__invoke, &v11, 0);
  v9 = [v8 copy];

  return v9;
}

void sub_18165DB8C(void *exc_buf)
{
  objc_begin_catch(exc_buf);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_18165DBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

__n128 std::__optional_storage_base<LaunchServices::TypeEvaluator::Result,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<LaunchServices::TypeEvaluator::Result,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32))
  {
    if (*(a1 + 32))
    {
      *a1 = *a2;
      v4 = *(a2 + 16);
      *(a2 + 16) = 0;
      v5 = *(a1 + 16);
      *(a1 + 16) = v4;

      *(a1 + 24) = *(a2 + 24);
    }
  }

  else if (*(a1 + 32))
  {

    *(a1 + 32) = 0;
  }

  else
  {
    result = *a2;
    *a1 = *a2;
    v7 = *(a2 + 16);
    *(a2 + 16) = 0;
    *(a1 + 16) = v7;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = 1;
  }

  return result;
}

id LaunchServices::TypeEvaluator::Result::getTypeIdentifier(id *this, LSContext *a2)
{
  if (this[1])
  {
    [(_LSDatabase *)a2->db store];
    v2 = _CSStringCopyCFString();
  }

  else
  {
    v2 = this[2];
  }

  return v2;
}

uint64_t _UTTypeSearchConformsToTypesWithBlock::$_0::__invoke(uint64_t a1)
{
  v2 = 0;
  (*(*(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), &v2);
  return v2;
}

BOOL _LSURLPropertiesNeedReplacement(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:*MEMORY[0x1E695E268]];
  v2 = v1 != 0;

  return v2;
}

Boolean UTTypeConformsTo(CFStringRef inUTI, CFStringRef inConformsToUTI)
{
  v2 = 0;
  if (inUTI && inConformsToUTI)
  {
    if (inUTI == inConformsToUTI || off_1EEF61AE0(inUTI, inConformsToUTI))
    {
      return 1;
    }

    else if (_LSCurrentProcessMayMapDatabase() && _UTTypeIdentifierIsDeclarable(inUTI) && _UTTypeIdentifierIsDeclarable(inConformsToUTI))
    {
      v7 = 0;
      if (_LSContextInit(&v7))
      {
        v2 = 0;
      }

      else
      {
        v6 = 0;
        if (_UTGetActiveTypeForCFStringIdentifier(v7, inUTI, &v6 + 1) && _UTGetActiveTypeForCFStringIdentifier(v7, inConformsToUTI, &v6))
        {
          v2 = _UTTypeConformsTo(v7, HIDWORD(v6), v6);
        }

        else
        {
          v2 = 0;
        }

        _LSContextDestroy(&v7);
      }
    }

    else
    {
      return [UTTypeRecord _typeIdentifier:inUTI conformsToTypeIdentifier:inConformsToUTI];
    }
  }

  return v2;
}

uint64_t LaunchServices::URLPropertyProvider::prepareLocalizedNameDictionaryValue(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v10 = [a2 canIssueIO];
  if (v10)
  {
    v11 = [_LSDisplayNameConstructor displayNameConstructorsWithContextIfNeeded:a1 node:a2 error:a6];
    if (!v11)
    {
      v19 = 0;
      goto LABEL_11;
    }

    v12 = [MEMORY[0x1E695DF90] dictionary];
    v13 = [MEMORY[0x1E695DF90] dictionary];
    v14 = v13;
    if (v12)
    {
      if (v13)
      {
LABEL_5:
        v33 = MEMORY[0x1E69E9820];
        v34 = 3221225472;
        v35 = ___ZN14LaunchServices19URLPropertyProviderL35prepareLocalizedNameDictionaryValueERNS_8Database7ContextEPU34objcproto23FSNodePropertyProviding11objc_objectP11__FileCachePK10__CFStringPNS0_5StateEPU15__autoreleasingP7NSError_block_invoke;
        v36 = &unk_1E6A1E5C0;
        v39 = a1;
        v15 = v12;
        v37 = v15;
        v16 = v14;
        v38 = v16;
        [v11 enumerateKeysAndObjectsUsingBlock:&v33];
        v17 = [v15 copy];
        MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E378], v17);

        v18 = [v16 copy];
        MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E380], v18);

        v19 = 1;
        goto LABEL_11;
      }
    }

    else
    {
      v29 = [MEMORY[0x1E696AAA8] currentHandler];
      v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean LaunchServices::prepareLocalizedNameDictionaryValue(Context &, __unsafe_unretained id<FSNodePropertyProviding>, _CFURLFileCacheRef, CFStringRef, State *, NSError *__autoreleasing *)"}];
      [v29 handleFailureInFunction:v30 file:@"LSURLPropertyProvider.mm" lineNumber:828 description:@"Failed to create localized name dictionary."];

      if (v14)
      {
        goto LABEL_5;
      }
    }

    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean LaunchServices::prepareLocalizedNameDictionaryValue(Context &, __unsafe_unretained id<FSNodePropertyProviding>, _CFURLFileCacheRef, CFStringRef, State *, NSError *__autoreleasing *)"}];
    [v31 handleFailureInFunction:v32 file:@"LSURLPropertyProvider.mm" lineNumber:829 description:@"Failed to create localized name dictionary."];

    goto LABEL_5;
  }

  v20 = _LSDefaultLog(v10);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    LaunchServices::URLPropertyProvider::prepareLocalizedNameDictionaryValue(v20, v21, v22, v23, v24, v25, v26, v27);
  }

  if (!a6)
  {
    return 0;
  }

  v40 = *MEMORY[0x1E696A278];
  v41[0] = @"can't provide with mimic";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v11, "prepareLocalizedNameDictionaryValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 817);
  *a6 = v19 = 0;
LABEL_11:

  return v19;
}

_DWORD *_LSBindingListGetEntryAtIndex(void *a1, uint64_t a2, unsigned int a3)
{
  v4 = a1;
  [(_LSDatabase *)v4 store];
  [(_LSDatabase *)v4 schema];
  Unit = CSStoreGetUnit();
  if (*Unit <= a3)
  {
    i = 0;
  }

  else
  {
    for (i = Unit + 1; a3; --a3)
    {
      i += i[1] + 2;
    }
  }

  return i;
}

void ___ZN14LaunchServices19URLPropertyProviderL13prepareValuesEPK7__CFURLP11__FileCachePKPK10__CFStringPPKvlSC_PP9__CFError_block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 | v8)
  {
    if (v7)
    {
      v10 = [v7 objectForKeyedSubscript:*MEMORY[0x1E695E268]];
      v11 = v10 != 0;

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = ___ZN14LaunchServices19URLPropertyProviderL13prepareValuesEPK7__CFURLP11__FileCachePKPK10__CFStringPPKvlSC_PP9__CFError_block_invoke_3;
      v13[3] = &__block_descriptor_41_e25_v32__0__NSString_8_16_B24l;
      v14 = v11;
      v13[4] = a1[6];
      [v7 enumerateKeysAndObjectsUsingBlock:v13];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = ___ZN14LaunchServices19URLPropertyProviderL13prepareValuesEPK7__CFURLP11__FileCachePKPK10__CFStringPPKvlSC_PP9__CFError_block_invoke_4;
    v12[3] = &__block_descriptor_40_e22_v24__0__NSString_8_B16l;
    v12[4] = a1[6];
    [v8 enumerateObjectsUsingBlock:v12];
    *(*(a1[4] + 8) + 24) = 1;
  }

  else
  {
    *(*(a1[4] + 8) + 24) = 0;
    objc_storeStrong((*(a1[5] + 8) + 40), a4);
  }
}

void ___ZN14LaunchServices19URLPropertyProviderL13prepareValuesEPK7__CFURLP11__FileCachePKPK10__CFStringPPKvlSC_PP9__CFError_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = v5;
  if (*(a1 + 40) == 1)
  {
    v7 = _LSReplaceURLPropertyValueForDecoding(v5);

    v6 = v7;
  }

  MEMORY[0x1865D5CD0](*(a1 + 32), v8, v6);
}

id _LSGetBRDisplayNameForSideFaultFileNode(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_7;
  }

  if (![v1 isSideFault])
  {
    goto LABEL_7;
  }

  v3 = [v2 URL];

  if (!softLinkBRCopyRepresentedFileNameForFaultFileURL)
  {
    goto LABEL_7;
  }

  v4 = softLinkBRCopyRepresentedFileNameForFaultFileURL(v3);
  if (v4 && (_NSIsNSString() & 1) == 0)
  {

LABEL_7:
    v4 = 0;
  }

  return v4;
}

uint64_t _LSExtensionPointFindWithIdentifier(void *a1, const __CFString *a2, int a3, int a4, _DWORD *a5, void *a6)
{
  v11 = a1;
  StringForCFString = _LSDatabaseGetStringForCFString(v11, a2, 0);
  v13 = _LSExtensionPointFindWithStringID(v11, StringForCFString, a3, a4, a5, a6);

  return v13;
}

uint64_t _UTTypeGetBundleBaseData(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  v5 = *(a2 + 20);
  if ((*(a2 + 9) & 0x20) != 0)
  {
    v6 = _LSGetPlugin(v3, v5);
  }

  else
  {
    v6 = _LSBundleGet(v3, v5);
  }

  v7 = v6;

  return v7;
}

uint64_t _LSDNCGetBundleClass(id *a1, void *a2, int a3, _DWORD *a4, void *a5)
{
  v9 = a2;
  if (!a3)
  {
    v12 = _LSGetBundleClassForNode(0, v9);
    goto LABEL_5;
  }

  v10 = +[_LSDServiceDomain defaultServiceDomain];
  v11 = LaunchServices::Database::Context::_get(a1, v10, 0);

  if (v11)
  {
    v12 = _LSGetBundleClassForNode(v11, v9);
LABEL_5:
    *a4 = v12;
    v13 = 1;
    goto LABEL_6;
  }

  if (a5)
  {
    v15 = +[_LSDServiceDomain defaultServiceDomain];
    v16 = LaunchServices::Database::Context::_get(a1, v15, 0);

    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = a1[3];
    }

    v13 = 0;
    *a5 = v17;
  }

  else
  {
    v13 = 0;
  }

LABEL_6:

  return v13;
}

uint64_t _LSCheckEntitlementForXPCConnection(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v5 = _LSCheckEntitlementForXPCConnectionQuiet(v3, a2);
  if (!v5)
  {
    v7 = _LSDefaultLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218242;
      pid = xpc_connection_get_pid(v4);
      v11 = 2114;
      v12 = a2;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Connection from process %llu does not have the required entitlement %{public}@", &v9, 0x16u);
    }

    goto LABEL_7;
  }

  v6 = 1;
LABEL_8:

  return v6;
}

BOOL _LSCheckEntitlementForXPCConnectionQuiet(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = _LSCopyEntitlementValueForXPCConnection(v3, a2);
    v6 = v5;
    if (v5)
    {
      v7 = _LSGetBooleanValueForEntitlementValue(v5, 0);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id _LSCopyEntitlementValueForXPCConnection(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0;
  if (v3 && a2)
  {
    v5 = objc_autoreleasePoolPush();
    if (![a2 UTF8String])
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"xpc_object_t _LSCopyEntitlementValueForXPCConnection(__strong xpc_connection_t, CFStringRef)"}];
      [v7 handleFailureInFunction:v8 file:@"LSEntitlements.mm" lineNumber:1010 description:{@"Couldn't get C string from entitlement name '%@'", a2}];
    }

    v4 = xpc_connection_copy_entitlement_value();
    objc_autoreleasePoolPop(v5);
  }

  return v4;
}

CFStringRef UTTypeCopyPreferredTagWithClass(CFStringRef inUTI, CFStringRef inTagClass)
{
  v2 = UTTypeCopyAllTagsWithClass(inUTI, inTagClass);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFArrayGetCount(v2) < 1)
  {
    v5 = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
    v5 = CFRetain(ValueAtIndex);
  }

  CFRelease(v3);
  return v5;
}

CFArrayRef UTTypeCopyAllTagsWithClass(CFStringRef inUTI, CFStringRef inTagClass)
{
  v2 = 0;
  if (inUTI && inTagClass)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [UTTypeRecord typeRecordWithIdentifier:inUTI];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 tagSpecification];
      v9 = objc_opt_class();
      v2 = [v8 objectForKey:inTagClass ofClass:v9 valuesOfClass:objc_opt_class()];

      if (v2)
      {
        v10 = v2;
      }
    }

    else
    {
      v2 = 0;
    }

    objc_autoreleasePoolPop(v5);
  }

  return v2;
}

void ___ZN14LaunchServices6RecordL18getNullPlaceholderEv_block_invoke()
{
  v0 = objc_alloc_init(__LSRECORD_NULL_PLACEHOLDER__);
  v1 = LaunchServices::Record::getNullPlaceholder(void)::result;
  LaunchServices::Record::getNullPlaceholder(void)::result = v0;
}

unint64_t _LSDBEnumeratorGetNextObject(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0;
  if (*(a1 + 80))
  {
    goto LABEL_19;
  }

  v2 = +[_LSDServiceDomain defaultServiceDomain];
  v3 = LaunchServices::Database::Context::_get((a1 + 32), v2, 0);

  if (!v3)
  {
    v14 = +[_LSDServiceDomain defaultServiceDomain];
    v15 = LaunchServices::Database::Context::_get((a1 + 32), v14, 0);

    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(a1 + 56);
    }

    _LSEnumeratorFireErrorHandler(a1, v16);

LABEL_19:
    if (*(a1 + 80))
    {
      return 0;
    }

    *(a1 + 80) |= 1u;
    *(a1 + 64) = -1;
    v17 = a1 + 32;
    if (*v17)
    {
      if (*(v17 + 16) == 1)
      {
        _LSContextDestroy(*v17);
      }
    }

    v18 = *(v17 + 8);
    *v17 = 0;
    *(v17 + 8) = 0;

    *(v17 + 16) = 0;
    v19 = *(v17 + 24);
    *(v17 + 24) = 0;

    return v21;
  }

  if (!_LSDBEnumeratorPrepareIfNeeded(a1))
  {
    goto LABEL_19;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 64);
  *&v4 = 138478083;
  v20 = v4;
  do
  {
    v7 = objc_autoreleasePoolPush();
    v8 = _LSEnumeratorLog;
    if (os_log_type_enabled(_LSEnumeratorLog, OS_LOG_TYPE_DEBUG))
    {
      *buf = v20;
      v23 = a1;
      v24 = 2048;
      v25 = v6;
      _os_log_debug_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEBUG, "Enumerator %{private}@ iteration %llu", buf, 0x16u);
    }

    v9 = [a1 _getObject:&v21 atIndex:v6 context:{v3, v20}];
    if (v21 && v5 && ((*(v5 + 16))(v5) & 1) == 0)
    {
      v10 = v21;
      v21 = 0;
    }

    objc_autoreleasePoolPop(v7);
    v11 = v6 + 1;
    result = v21;
    v13 = (v21 | (((v6 == -1) << 63) >> 63) ^ (v6 == -1)) == 0;
    ++v6;
  }

  while ((v13 & v9 & 1) != 0);
  *(a1 + 64) = v11;
  if (!result)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t _LSDBEnumeratorPrepareIfNeeded(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 80) & 2) == 0)
  {
    *(a1 + 80) |= 2u;
    if (*(a1 + 64))
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _LSDBEnumeratorPrepareIfNeeded(_LSDBEnumerator *const __strong _Nonnull)"];
      [v13 handleFailureInFunction:v14 file:@"LSEnumerator.mm" lineNumber:226 description:@"Need to prepare after first iteration. This should not be possible."];
    }

    v2 = objc_autoreleasePoolPush();
    v3 = +[_LSDServiceDomain defaultServiceDomain];
    v4 = LaunchServices::Database::Context::_get((a1 + 32), v3, 0);

    if (v4)
    {
      v15 = 0;
      v5 = [a1 _prepareWithContext:v4 error:&v15];
      v6 = v15;
      v7 = _LSEnumeratorLog;
      if (v5)
      {
        if (os_log_type_enabled(_LSEnumeratorLog, OS_LOG_TYPE_DEBUG))
        {
          _LSDBEnumeratorPrepareIfNeeded_cold_2(a1, v7);
        }

        *(a1 + 80) |= 4u;
      }

      else
      {
        if (os_log_type_enabled(_LSEnumeratorLog, OS_LOG_TYPE_ERROR))
        {
          _LSDBEnumeratorPrepareIfNeeded_cold_1();
        }

        _LSEnumeratorFireErrorHandler(a1, v6);
      }
    }

    else
    {
      v8 = _LSEnumeratorLog;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = LaunchServices::Database::Context::error((a1 + 32));
        _LSDBEnumeratorPrepareIfNeeded_cold_3(a1, v9, buf, v8);
      }

      v10 = +[_LSDServiceDomain defaultServiceDomain];
      v11 = LaunchServices::Database::Context::_get((a1 + 32), v10, 0);

      if (v11)
      {
        v6 = 0;
      }

      else
      {
        v6 = *(a1 + 56);
      }

      _LSEnumeratorFireErrorHandler(a1, v6);
    }

    objc_autoreleasePoolPop(v2);
  }

  return (*(a1 + 80) >> 2) & 1;
}

uint64_t _UTGetLocalizedDescription(void *a1, uint64_t a2)
{
  v3 = a1;
  v7 = 0;
  v4 = objc_autoreleasePoolPush();
  _UTTypeSearchConformsToTypesCommon(v3, a2, 32, _UTGetLocalizedDescriptionImpl, &v7, 0);
  objc_autoreleasePoolPop(v4);
  v5 = v7;

  return v5;
}

BOOL _UTGetLocalizedDescriptionImpl(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v12 = &v14;
  v13 = v2;
  v14 = a1;
  v4 = v1;
  v5 = v4;
  if (*(v3 + 24))
  {
    v15[0] = &v12;
    v6 = v4;
    v7 = v6;
    if (*(v3 + 10))
    {
      [(_LSDatabase *)v6 store];
      if (_CSArrayGetCount() != 1)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void LaunchServices::UTTypeEnumerateFlavoredDisplayNames(__strong LSDatabaseRef, const _UTTypeData *, const F &) [F = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/UTTypeCore.mm:159:55)]"}];
        [(_LSDatabase *)v7 store];
        [v10 handleFailureInFunction:v11 file:@"UTTypeCore.mm" lineNumber:143 description:{@"bogus array in %s, %zu elements", "UTTypeEnumerateFlavoredDisplayNames", _CSArrayGetCount()}];
      }

      [(_LSDatabase *)v7 store];
      v15[1] = MEMORY[0x1E69E9820];
      v15[2] = 3221225472;
      v15[3] = ___ZN14LaunchServicesL35UTTypeEnumerateFlavoredDisplayNamesIZNS_L54UTTypeEnumerateAvailableAndPresentFlavoredDisplayNamesIZL30_UTGetLocalizedDescriptionImplPK16UTTypeSearchInfoE3__0EEvP11_LSDatabasePK11_UTTypeDataRKT_EUljRKNS_23UTTypeDisplayNameFlavorEPhE_EEvS7_SA_SD__block_invoke;
      v15[4] = &__block_descriptor_40_e14_v24__0I8I12_16l;
      v15[5] = v15;
      _CSArrayEnumerateAllValues();
    }

    else
    {
      v8 = *(v3 + 24);
      if (v8 && LaunchServices::LocalizedString::Get(**v12, *(v3 + 24)))
      {
        *v13 = v8;
      }
    }
  }

  return *v2 != 0;
}

void sub_18165FD88(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 80), 8);

  _Unwind_Resume(a1);
}

id LaunchServices::LocalizedString::getDefaultValueUnsafely(LaunchServices::LocalizedString *this, _LSDatabase *a2)
{
  v3 = a2;
  if (!v3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *LaunchServices::LocalizedString::getDefaultValueUnsafely(_LSDatabase *__strong _Nonnull) const"];
    [v12 handleFailureInFunction:v13 file:@"LSLocalizedString.mm" lineNumber:265 description:{@"Invalid parameter not satisfying: %@", @"db != nil"}];
  }

  v4 = objc_autoreleasePoolPush();
  if ((*(this + 8) & 2) != 0)
  {
    [(_LSDatabase *)v3 store];
    v8 = _CSStringCopyCFString();
    if (*(this + 8))
    {
      v7 = @"✴️";
    }

    else
    {
      v7 = @"🔂";
    }

    v6 = v8;
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (!*this || (v5 = *(this + 1), !v5) || !_LSDatabaseGetStringForCFString(v3, @"LSDefaultLocalizedValue", 0))
    {
      v6 = 0;
      goto LABEL_17;
    }

    v14 = 0;
    v15 = &v14;
    v16 = 0x3812000000;
    v17 = __Block_byref_object_copy__33;
    v18 = __Block_byref_object_dispose__33;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    [(_LSDatabase *)v3 store];
    _CSArrayEnumerateAllValues();
    if (*(v15 + 52) == 1)
    {
      v6 = _LSDatabaseGetNSStringFromArray(v3, v5, *(v15 + 12));
      v7 = @"🔴";
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    _Block_object_dispose(&v14, 8);
    if (!v6)
    {
      goto LABEL_17;
    }
  }

  if (v7 && [__LSDefaultsGetSharedInstance(v8 v9)])
  {
    v10 = [v6 stringByAppendingString:v7];

    v6 = v10;
  }

LABEL_17:
  objc_autoreleasePoolPop(v4);

  return v6;
}

uint64_t _LSPluginIsValid(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5, __CFString **a6)
{
  v66 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v11 = a4;
  v12 = v11;
  v61 = 0;
  if (!a3)
  {
    if (!a6)
    {
      goto LABEL_15;
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = @"No plugin data pointer";
LABEL_20:
    *a6 = v20;
    goto LABEL_21;
  }

  v13 = *(a3 + 4);
  if (!v13)
  {
    if (a6)
    {
      *a6 = @"No container set for plugin";
    }

    v21 = _LSDefaultLog(v11);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v21, OS_LOG_TYPE_DEFAULT, "ERROR: No container set for plugin", buf, 2u);
    }

    goto LABEL_15;
  }

  v14 = _LSContainerGet(v10, v13);
  if (!v14)
  {
    if (!a6)
    {
      goto LABEL_15;
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = @"No container data for plugin";
    goto LABEL_20;
  }

  v15 = _LSContainerCheckState(v10, *(a3 + 4), v14, &v61, 0);
  if (!v15)
  {
    if (v61 != 1)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Container state is %i", v61];
      if (a6)
      {
        v16 = v16;
        *a6 = v16;
      }

      goto LABEL_7;
    }

    v23 = *(a3 + 168);
    v24 = v10;
    [(_LSDatabase *)v10 store];
    v17 = _CSStringCopyCFString();
    if (_LSIsNewsWidgetBundleIdentifier(v17))
    {
      v25 = +[LSApplicationRestrictionsManager sharedInstance];
      v26 = [(LSApplicationRestrictionsManager *)v25 isAppExtensionRestricted:v17];

      if (v26)
      {
        if (!a6)
        {
          goto LABEL_16;
        }

        v18 = 0;
        v19 = 0;
        v20 = @"News app extension is restricted";
        goto LABEL_20;
      }
    }

    else
    {
      if ((v23 & 8) != 0)
      {
        if (!a6)
        {
          goto LABEL_16;
        }

        v18 = 0;
        v19 = 0;
        v20 = @"Has override";
        goto LABEL_20;
      }

      if ((*(a3 + 164) & 2) != 0)
      {
        if (!a6)
        {
          goto LABEL_16;
        }

        v18 = 0;
        v19 = 0;
        v20 = @"Requires GC";
        goto LABEL_20;
      }

      if (v12)
      {
        v27 = _LSDatabaseGetNSStringFromString(v10, *(a3 + 176));
        v29 = _LSPlistGetDictionary(v10, *(a3 + 140), v28);
        if (v27)
        {
          v30 = v27;
        }

        else
        {
          v30 = v17;
        }

        if (((v12)[2](v12, v30, v29) & 1) == 0)
        {
          if (a6)
          {
            *a6 = @"Rejected by filter block";
          }

          goto LABEL_16;
        }
      }

      v32 = (a3 + 224);
      v31 = *(a3 + 224);
      if (v31)
      {
        v33 = _LSBundleGet(v10, v31);
        v34 = v33;
        if (!v33)
        {
          v35 = _LSDefaultLog(0);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            _LSPluginIsValid_cold_1();
          }

          v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parent app %llx", *v32];
          if (a6)
          {
            v36 = v36;
            *a6 = v36;
          }

          goto LABEL_16;
        }

        v58 = *(v33 + 172);
        v18 = _LSDatabaseGetNSStringFromString(v10, *(v33 + 12));
        if (_LSBundleDataIsInUnsupportedLocation(v10, v34))
        {
          if (!a6)
          {
            goto LABEL_17;
          }

          v19 = 0;
          v20 = @"Parent app is in an unsupported location";
          goto LABEL_20;
        }

        if ((v58 & 0x40000) != 0)
        {
          if (!a6)
          {
            goto LABEL_17;
          }

          v19 = 0;
          v20 = @"Parent app is a placeholder";
          goto LABEL_20;
        }

        if ((a5 & 3) == 0 && (v58 & 0x400000000000) != 0)
        {
          if (!a6)
          {
            goto LABEL_17;
          }

          v19 = 0;
          v20 = @"Parent app has a parallel placeholder";
          goto LABEL_20;
        }

        v37 = *(a3 + 20);
        if ((v37 | 2) != 2 && dyld_get_base_platform() != 2)
        {
          v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Plugin invalid plugin platform %d on platform %d", v37, 2];
          if (a6)
          {
            v43 = v43;
            *a6 = v43;
          }

          goto LABEL_17;
        }

        v38 = *(v34 + 180);
        if ((v38 & 0x2000000) != 0)
        {
          v39 = +[LSEligibilityPredicateEvaluator sharedCachingEligibilityPredicateEvaluator];
          v40 = *v32;
          v60 = 0;
          v41 = [v39 evaluateBundle:v40 bundleData:v34 database:v10 error:&v60];
          v42 = v60;
          v56 = v42;
          if (v41)
          {
            if (([v41 BOOLValue] & 1) == 0)
            {
              if (a6)
              {
                *a6 = @"Parent app is ineligible";
              }

              goto LABEL_17;
            }
          }

          else
          {
            v44 = _LSBindingLog(v42);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v45 = *v32;
              *buf = 134218242;
              v63 = v45;
              v64 = 2112;
              v65 = v56;
              _os_log_impl(&dword_18162D000, v44, OS_LOG_TYPE_ERROR, "Couldn't check eligibility of parent app %llx: %@", buf, 0x16u);
            }
          }

          v38 = *(v34 + 180);
        }

        if ((v38 & 0x4000000) != 0)
        {
          v46 = +[LSFeatureFlagPredicateEvaluator defaultEvaluator];
          v47 = *v32;
          v59 = 0;
          v48 = [v46 evaluateBundle:v47 bundleData:v34 database:v10 error:&v59];
          v49 = v59;
          v57 = v49;
          if (v48)
          {
            if (([v48 BOOLValue] & 1) == 0)
            {
              if (a6)
              {
                *a6 = @"Parent app is disabled by feature flag";
              }

              goto LABEL_17;
            }
          }

          else
          {
            v50 = _LSBindingLog(v49);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v51 = *v32;
              *buf = 134218242;
              v63 = v51;
              v64 = 2112;
              v65 = v57;
              _os_log_impl(&dword_18162D000, v50, OS_LOG_TYPE_ERROR, "Couldn't check feature flag of parent app %llx: %@", buf, 0x16u);
            }
          }
        }

        if ((v58 & 0x40000000000) == 0)
        {
          v52 = +[LSApplicationRestrictionsManager sharedInstance];
          v53 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v34 + 420)];
          if ([(LSApplicationRestrictionsManager *)v52 isRatingAllowed:v53 forBundleIdentifier:v18])
          {
            v54 = +[LSApplicationRestrictionsManager sharedInstance];
            v55 = [(LSApplicationRestrictionsManager *)v54 isApplicationRestricted:v18];

            if (!v55)
            {
              goto LABEL_44;
            }
          }

          else
          {
          }

          if (!a6)
          {
            goto LABEL_17;
          }

          v19 = 0;
          v20 = @"Blocked by ManagedConfiguration";
          goto LABEL_20;
        }

LABEL_44:
        v19 = 1;
        goto LABEL_21;
      }
    }

    v18 = 0;
    goto LABEL_44;
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_LSContainerCheckState() returned %i", v15];
  if (a6)
  {
    v16 = v16;
    *a6 = v16;
  }

LABEL_7:

LABEL_15:
  v17 = 0;
LABEL_16:
  v18 = 0;
LABEL_17:
  v19 = 0;
LABEL_21:

  return v19;
}

uint64_t ___ZNK14LaunchServices15LocalizedString23getDefaultValueUnsafelyEP11_LSDatabase_block_invoke(uint64_t result, int a2, int a3, _BYTE *a4)
{
  if (*(result + 40) == a3)
  {
    v4 = *(*(result + 32) + 8);
    *(v4 + 48) = a2;
    *(v4 + 52) = 1;
    *a4 = 1;
  }

  return result;
}

BOOL _LSIsNewsWidgetBundleIdentifier(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 caseInsensitiveCompare:@"com.apple.news.widget"] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t _LSEnumerateViableBundlesOfClass(uint64_t *a1, int a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (a1)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"OSStatus _LSEnumerateViableBundlesOfClass(LSContext *, LSBundleClass, void (^__strong)(LSBundleID, const LSBundleData *, Boolean *))"}];
    [v8 handleFailureInFunction:v9 file:@"LSBundle.mm" lineNumber:2613 description:{@"Invalid parameter not satisfying: %@", @"inContext != NULL"}];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"OSStatus _LSEnumerateViableBundlesOfClass(LSContext *, LSBundleClass, void (^__strong)(LSBundleID, const LSBundleData *, Boolean *))"}];
  [v10 handleFailureInFunction:v11 file:@"LSBundle.mm" lineNumber:2614 description:{@"Invalid parameter not satisfying: %@", @"inSearchBlock != nil"}];

LABEL_3:
  v6 = _LSCheckAllContainerStates(a1);
  if (!v6)
  {
    [(_LSDatabase *)*a1 store];
    [(_LSDatabase *)*a1 schema];
    v12 = v5;
    _CSStoreEnumerateUnits();
  }

  return v6;
}

uint64_t _LSCheckAllContainerStates(uint64_t *a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  [(_LSDatabase *)*a1 store];
  [(_LSDatabase *)*a1 schema];
  v7[1] = MEMORY[0x1E69E9820];
  v7[2] = 3221225472;
  v7[3] = ___LSCheckAllContainerStates_block_invoke;
  v7[4] = &unk_1E6A1B310;
  v7[5] = &v8;
  v7[6] = a1;
  _CSStoreEnumerateUnits();
  if (*(v9 + 24))
  {
    v7[0] = 0;
    v2 = _LSContextUpdate(a1, 1, v7);
    v3 = v7[0];
    v4 = v3;
    if (v2)
    {
      v5 = 0;
    }

    else
    {
      v5 = _LSGetOSStatusFromNSError(v3);
    }
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

id _LSDatabaseGetNSStringFromString(_LSDatabase *a1, uint64_t a2)
{
  [(_LSDatabase *)a1 store];
  v2 = _CSStringCopyCFString();

  return v2;
}

BOOL _LSBundleDataIsInUnsupportedLocation(void *a1, uint64_t a2)
{
  v2 = *(a2 + 172);
  _LSContainerGet(a1, *(a2 + 4));
  return (v2 & 0x1000000040) != 0;
}

void __mapBundleIdentifiersToUUIDs_block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = a2;
  v7 = a3;
  v8 = a4;
  if (*(a1 + 48))
  {
    v9 = v30;
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;
  if (*(a1 + 48))
  {
    v11 = v7;
  }

  else
  {
    v11 = v30;
  }

  v12 = v11;
  v13 = v12;
  if (v10)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = *(*(a1 + 40) + 8);
    v16 = v8;
    v17 = *(v15 + 40);
    *(v15 + 40) = v16;
  }

  else
  {
    v29 = v8;
    v17 = [MEMORY[0x1E695DF90] dictionary];
    v18 = [v10 count];
    v19 = [v13 count];
    if (v18 >= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      for (i = 0; i != v20; ++i)
      {
        v22 = [v10 objectAtIndexedSubscript:i];
        v23 = [v17 objectForKeyedSubscript:v22];

        if (!v23)
        {
          v23 = [MEMORY[0x1E695DFA8] set];
          v24 = [v10 objectAtIndexedSubscript:i];
          [v17 setObject:v23 forKeyedSubscript:v24];
        }

        v25 = [v13 objectAtIndexedSubscript:i];
        [v23 addObject:v25];
      }
    }

    v26 = [v17 copy];
    v27 = *(*(a1 + 32) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    v8 = v29;
  }
}

void *std::__hash_table<std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::__unordered_map_hasher<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::hash<objc_selector *>,std::equal_to<objc_selector *>,true>,std::__unordered_map_equal<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::equal_to<objc_selector *>,std::hash<objc_selector *>,true>,std::allocator<std::__hash_value_type<objc_selector *,objc_object * {__strong}>>>::__emplace_unique_key_args<objc_selector *,objc_selector *,decltype(nullptr)>(void *a1, void *a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != *a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void sub_1816612D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_181661394(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_1816616F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  objc_destroyWeak((v19 + 48));
  objc_destroyWeak((v19 + 40));

  objc_destroyWeak((v20 - 80));
  LaunchServices::Database::Context::~Context(va);
  objc_destroyWeak((v20 - 88));

  _Unwind_Resume(a1);
}

_LSChangeObserver *_LSContextAddChangeObserver(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(_LSChangeObserver);
  v9 = *(*a1 + 16);
  v8 = *(*a1 + 20);
  v11 = [(_LSDServiceDomain *)v5 resolvedSessionKey];
  v13 = v11;
  v14 = v9 | (v8 << 32);
  if (v8)
  {
    if ((v11 & 0x100000000) != 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v11 & 0x100000000) == 0 && v9 == v11)
  {
    goto LABEL_9;
  }

  v15 = _LSDefaultLog(v11);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    v27 = _LSSessionKeyCopyDescription(v14);
    v28 = _LSSessionKeyCopyDescription(v13);
    *buf = 138412802;
    v35 = v27;
    v36 = 2112;
    v37 = v5;
    v38 = 2112;
    v39 = v28;
    _os_log_fault_impl(&dword_18162D000, v15, OS_LOG_TYPE_FAULT, "Adding change observer for context with session key %@ but service domain %@ implied session key %@", buf, 0x20u);
  }

LABEL_9:
  v16 = [__LSDefaultsGetSharedInstance(v11 v12)];
  v17 = MEMORY[0x1865D71B0](v6);
  v18 = v7->block;
  v7->block = v17;

  v7->uid = v9;
  v20 = _LSGetDispatchTokenQueue(v19);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = ___LSContextAddChangeObserver_block_invoke;
  v31[3] = &unk_1E6A1ABE8;
  v21 = v7;
  v32 = v21;
  v22 = v5;
  v33 = v22;
  LaunchServices::notifyd::NotifyToken::RegisterDispatch(v16, v20, v31, buf);
  LaunchServices::notifyd::NotifyToken::operator=(v21 + 5, buf);
  LaunchServices::notifyd::NotifyToken::~NotifyToken(buf);

  v24 = _LSGetDispatchTokenQueue(v23);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___LSContextAddChangeObserver_block_invoke_3;
  block[3] = &unk_1E6A1A830;
  v25 = v21;
  v30 = v25;
  dispatch_barrier_async(v24, block);

  return v25;
}

uint64_t _UTTypeSearchConformingTypesCommon(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v11 = a1;
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  v17 = v11;
  v18 = a5;
  v19 = a2;
  v20 = _UTTypeGet(v11, a2);
  v21 = a4;
  v22 = 0;
  v12 = 32;
  if (a3 >= 0)
  {
    v12 = a3;
  }

  v23 = v12;
  if (_UTTypeSearchConformingTypesCore(v15))
  {
    if (a6)
    {
      *a6 = v19;
    }

    v13 = v20;
  }

  else
  {
    v13 = 0;
  }

  std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table(v15);

  return v13;
}

void sub_181661E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table(&a9);

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return [v0 setObject:v1 forKeyedSubscript:?];
}

uint64_t _UTTypeSearchConformingTypesCore(unint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::find<unsigned int>(a1, (a1 + 56)))
  {
    v2 = 0;
  }

  else
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int &>(a1, (a1 + 56), (a1 + 56));
    *(a1 + 72) = *(a1 + 88);
    if ((*(a1 + 80))(a1 + 40))
    {
      v2 = 1;
    }

    else
    {
      if (*(a1 + 96) > *(a1 + 88))
      {
        v3 = *(a1 + 40);
        v4 = *(a1 + 56);
        v5 = *(a1 + 64);
        ++*(a1 + 88);
        v6 = *(v5 + 12);
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = ___ZL32_UTTypeSearchConformingTypesCoreP14UTTypeSearchPB_block_invoke;
        v9[3] = &unk_1E6A19430;
        v10 = v3;
        v11 = &v13;
        v12 = a1;
        v7 = v3;
        _LSDatabaseEnumeratingBindingMap(v7, 0, v6, v9);
        --*(a1 + 88);
        *(a1 + 56) = v4;
        *(a1 + 64) = v5;
      }

      v2 = *(v14 + 24);
    }
  }

  _Block_object_dispose(&v13, 8);
  return v2;
}

void sub_181662048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UTTypeSearchConformingTypesWithBlock::$_0::__invoke(uint64_t a1)
{
  v2 = 0;
  (*(*(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), &v2);
  return v2;
}

uint64_t ___ZL32_UTTypeSearchConformingTypesCoreP14UTTypeSearchPB_block_invoke(uint64_t result, uint64_t a2, int a3, _BYTE *a4)
{
  v4 = a3 & 0xFFFFFFFC;
  if ((~a3 & 3) == 0 && v4 != 0)
  {
    v7 = result;
    result = _UTTypeGet(*(result + 32), a3 & 0xFFFFFFFC);
    if (result)
    {
      if (*(result + 8))
      {
        v8 = *(v7 + 48);
        *(v8 + 56) = v4;
        *(v8 + 64) = result;
        result = _UTTypeSearchConformingTypesCore(*(v7 + 48));
        if (result)
        {
          *(*(*(v7 + 40) + 8) + 24) = 1;
          *a4 = 1;
        }
      }
    }
  }

  return result;
}

BOOL _LSNSErrorIsXPCConnectionInterrupted(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 domain];
    if ([v3 isEqual:*MEMORY[0x1E696A250]])
    {
      v4 = [v2 code] == 4097;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void LaunchServices::Record::storeWeakSharedRecord(void *a1, id *a2)
{
  v3 = a1;
  objc_storeWeak(a2, v3);
  if (v3)
  {
    [v3 _setShared:1];
    CFAutorelease(v3);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,unsigned int const&,unsigned int &>(void *a1, unsigned int *a2, _DWORD *a3, int *a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_181662938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::allocator<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

void *std::__hash_table<std::__hash_value_type<void const*,std::vector<std::pair<objc_selector *,void (*)(objc_object *,objc_selector *)>>>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::vector<std::pair<objc_selector *,void (*)(objc_object *,objc_selector *)>>>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::vector<std::pair<objc_selector *,void (*)(objc_object *,objc_selector *)>>>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::vector<std::pair<objc_selector *,void (*)(objc_object *,objc_selector *)>>>>>::__emplace_unique_key_args<void const*,void const*,std::vector<std::pair<objc_selector *,void (*)(objc_object *,objc_selector *)>>>(void *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void _LSEnumerateExtensionPoints(void *a1, uint64_t a2)
{
  v3 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x5812000000;
  v16 = __Block_byref_object_copy__27;
  v17 = __Block_byref_object_dispose__27;
  v18 = &unk_1818533FF;
  memset(v19, 0, sizeof(v19));
  v20 = 1065353216;
  [(_LSDatabase *)v3 store];
  [(_LSDatabase *)v3 schema];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = ___LSEnumerateExtensionPoints_block_invoke;
  v10 = &unk_1E6A1AAF8;
  v4 = v3;
  v11 = v4;
  v12 = &v13;
  _CSStringBindingEnumerateAllBindings();
  v6 = 0;
  v5 = v14 + 8;
  do
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    (*(a2 + 16))(a2, *(v5 + 6), v5[2], &v6);
  }

  while (!v6);

  _Block_object_dispose(&v13, 8);
  std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table(v19);
}

void sub_181662DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table(v16 + 48);

  _Unwind_Resume(a1);
}

void std::vector<std::pair<objc_selector *,void (*)(objc_object *,objc_selector *)>>::shrink_to_fit(const void **a1)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = a1[2] - *a1;
  v5 = v2 - *a1;
  if (v4 > v5)
  {
    if (v2 != v3)
    {
      std::allocator<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::allocate_at_least[abi:nn200100](a1, v5 >> 4);
    }

    v7 = 0;
    if (v4 >> 4)
    {
      v8 = 16 * (v5 >> 4);
      v9 = a1[1] - v3;
      v10 = (v8 - v9);
      memcpy((v8 - v9), v3, v9);
      v7 = *a1;
      *a1 = v10;
      a1[1] = v8;
      a1[2] = 0;
    }

    if (v7)
    {

      operator delete(v7);
    }
  }
}

void sub_181663698(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

_DWORD *_FSEventStreamCreate(const char *a1, uint64_t Default, uint64_t a3, __int128 *a4, int a5, CFArrayRef theArray, uint64_t a7, uint64_t a8, int a9)
{
  v95[127] = *MEMORY[0x1E69E9840];
  if ((a9 & 0x41) == 0x40)
  {
    v10 = fsevent_default_log(a1, Default);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamCreate_cold_9();
    }

    return 0;
  }

  v16 = Default;
  Count = CFArrayGetCount(theArray);
  if (*MEMORY[0x1E695E480] == v16)
  {
    v16 = CFAllocatorGetDefault();
  }

  v18 = MEMORY[0x1865D4CB0](v16, 456, 0x10F0040DD1F3337, 0);
  if (!v18)
  {
    v60 = fsevent_default_log(0, v19);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamCreate_cold_8();
    }

    return 0;
  }

  v20 = v18;
  *(v18 + 448) = 0;
  *(v18 + 416) = 0u;
  *(v18 + 432) = 0u;
  *(v18 + 384) = 0u;
  *(v18 + 400) = 0u;
  *(v18 + 352) = 0u;
  *(v18 + 368) = 0u;
  *(v18 + 320) = 0u;
  *(v18 + 336) = 0u;
  *(v18 + 288) = 0u;
  *(v18 + 304) = 0u;
  *(v18 + 256) = 0u;
  *(v18 + 272) = 0u;
  *(v18 + 224) = 0u;
  *(v18 + 240) = 0u;
  *(v18 + 192) = 0u;
  *(v18 + 208) = 0u;
  *(v18 + 160) = 0u;
  *(v18 + 176) = 0u;
  *(v18 + 128) = 0u;
  *(v18 + 144) = 0u;
  *(v18 + 96) = 0u;
  *(v18 + 112) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 80) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 8) = v16;
  CFRetain(v16);
  *(v20 + 16) = a3;
  if (a4)
  {
    v21 = *a4;
    v22 = a4[1];
    *(v20 + 56) = *(a4 + 4);
    *(v20 + 40) = v22;
    *(v20 + 24) = v21;
  }

  v78 = a7;
  v23 = *(v20 + 40);
  if (v23)
  {
    v23(*(v20 + 32));
  }

  *(v20 + 64) = a5;
  *(v20 + 72) = Count;
  *(v20 + 80) = MEMORY[0x1865D4CB0](v16, 8 * Count, 0x10040436913F5, 0);
  *(v20 + 88) = MEMORY[0x1865D4CB0](v16, 4 * Count, 0x100004052888210, 0);
  v25 = *(v20 + 80);
  if (!v25)
  {
    v61 = fsevent_default_log(0, v24);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamCreate_cold_7();
    }

    goto LABEL_89;
  }

  bzero(v25, 8 * Count);
  bzero(*(v20 + 88), 4 * Count);
  if ((a9 & 4) == 0)
  {
    v80 = a1;
    *(v20 + 408) = -1;
    goto LABEL_14;
  }

  v62 = kqueue();
  *(v20 + 408) = v62;
  if ((v62 & 0x80000000) != 0)
  {
    v68 = fsevent_default_log(v62, v63);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamCreate_cold_3();
    }

    goto LABEL_89;
  }

  v64 = MEMORY[0x1865D4CB0](v16, 32 * Count, 0x101004048259AEFLL, 0);
  *(v20 + 392) = v64;
  if (!v64)
  {
    v69 = fsevent_default_log(0, v65);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamCreate_cold_2();
    }

    goto LABEL_89;
  }

  bzero(v64, 32 * Count);
  v66 = MEMORY[0x1865D4CB0](v16, 32 * Count, 0x108004019856BD9, 0);
  *(v20 + 400) = v66;
  if (!v66)
  {
    v73 = fsevent_default_log(0, v67);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamCreate_cold_1();
    }

LABEL_89:
    _FSEventStreamDeallocate(v20, v55);
    return 0;
  }

  v80 = a1;
  bzero(v66, 32 * Count);
LABEL_14:
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      TypeID = CFStringGetTypeID();
      v29 = CFGetTypeID(ValueAtIndex);
      if (TypeID != v29)
      {
        v70 = fsevent_default_log(v29, v30);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          _FSEventStreamCreate_cold_4();
        }

        goto LABEL_89;
      }

      FileSystemRepresentation = CFStringGetFileSystemRepresentation(ValueAtIndex, buffer, 1024);
      if (!FileSystemRepresentation)
      {
        v71 = fsevent_default_log(FileSystemRepresentation, v32);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          _FSEventStreamCreate_cold_6();
        }

        goto LABEL_89;
      }

      if (a5)
      {
        v33 = 1000;
        while (1)
        {
          v34 = getfsstat(0, 0, 2);
          if (v34 < 0)
          {
            goto LABEL_33;
          }

          v35 = 2168 * (v34 + 1);
          v36 = malloc_type_malloc(2168 * (v34 + 1), 0x100004087E0324AuLL);
          if (!v36)
          {
            goto LABEL_33;
          }

          v37 = v36;
          v38 = getfsstat(v36, v35, 2);
          if ((v38 & 0x80000000) == 0)
          {
            break;
          }

          free(v37);
          if (!--v33)
          {
            goto LABEL_33;
          }
        }

        if (!v38)
        {
LABEL_33:
          v39 = buffer;
          __strlcpy_chk();
LABEL_34:
          *(*(v20 + 88) + 4 * i) |= 2u;
          goto LABEL_35;
        }

        v40 = v38;
        f_mntonname = v37->f_mntonname;
        while (*(f_mntonname - 10) != a5)
        {
          f_mntonname += 2168;
          if (!--v40)
          {
            v39 = buffer;
            __strlcpy_chk();
LABEL_64:
            free(v37);
            goto LABEL_34;
          }
        }

        snprintf(__s, 0x400uLL, "%s/%s", f_mntonname, buffer);
        if (realpath_DARWIN_EXTSN(__s, __s1))
        {
          v58 = strlen(f_mntonname);
          if (__s1[v58] == 47)
          {
            v39 = &__s1[v58 + 1];
          }

          else
          {
            v39 = &__s1[v58];
          }

          goto LABEL_64;
        }

        free(v37);
      }

      else
      {
        v39 = __s1;
        if (fsevent_realpath(buffer, __s1))
        {
          goto LABEL_35;
        }
      }

      if (buffer[0] == 47)
      {
        v39 = buffer;
        __strlcpy_chk();
      }

      else
      {
        v39 = __s1;
        getcwd(__s1, 0x400uLL);
        __strlcat_chk();
        __strlcat_chk();
      }

LABEL_35:
      v42 = (strlen(v39) + 1);
      *(*(v20 + 80) + 8 * i) = MEMORY[0x1865D4CB0](v16, v42, 1425393460, 0);
      v44 = *(*(v20 + 80) + 8 * i);
      if (!v44)
      {
        v72 = fsevent_default_log(0, v43);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          _FSEventStreamCreate_cold_5();
        }

        goto LABEL_89;
      }

      strlcpy(v44, v39, v42);
      if (*buffer == 0x2F6D65747379532FLL && v95[0] == 0x2F73656D756C6F56 && *(v95 + 5) == 0x2F617461442F7365)
      {
        *(*(v20 + 88) + 4 * i) |= 1u;
        if ((a9 & 4) == 0)
        {
          continue;
        }
      }

      else if ((a9 & 4) == 0)
      {
        continue;
      }

      v47 = *(v20 + 392);
      v48 = v47 + 32 * i;
      *(v48 + 4) = -1;
      if (!*(v20 + 64) || __s1[0] == 47)
      {
        *(v48 + 24) = strdup(__s1);
      }

      else
      {
        if (!realpath_DARWIN_EXTSN(*(*(v20 + 80) + 8 * i), __s))
        {
          getcwd(__s, 0x400uLL);
          v49 = strlen(__s);
          __s[v49] = 47;
          strlcpy(&__s[v49 + 1], *(*(v20 + 80) + 8 * i), 1024 - (v49 + 1));
        }

        *(*(v20 + 392) + 32 * i + 24) = strdup(__s);
        v47 = *(v20 + 392);
      }

      v50 = (v47 + 32 * i);
      *v50 = 8;
      v51 = watch_path(v80, *(v20 + 408), __s1, *(v20 + 400) + 32 * i, v50, i);
      if (v51)
      {
        v53 = v51;
        v54 = fsevent_default_log(v51, v52);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v59 = strerror(v53);
          *__s = 136316674;
          v82 = v80;
          v83 = 2080;
          v84 = "_FSEventStreamCreate";
          v85 = 2080;
          v86 = v39;
          v87 = 2080;
          *v88 = __s1;
          *&v88[8] = 1024;
          *&v88[10] = i;
          v89 = 1024;
          v90 = v53;
          v91 = 2080;
          v92 = v59;
          _os_log_error_impl(&dword_18162D000, v54, OS_LOG_TYPE_ERROR, "%s: %s: ERROR: watch_path() failed for srcPath='%s' resolvedPath='%s' index=%d (%d):(%s)", __s, 0x40u);
        }

        if ((v53 - 23) < 2)
        {
          goto LABEL_89;
        }
      }

      v56 = watch_all_parents(v80, *(v20 + 408), __s1, *(v20 + 392) + 32 * i, i);
      if (v56)
      {
        v74 = v56;
        v75 = fsevent_default_log(v56, v57);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          v77 = strerror(v74);
          *__s = 136316162;
          v82 = v80;
          v83 = 2080;
          v84 = "_FSEventStreamCreate";
          v85 = 2080;
          v86 = v39;
          v87 = 1024;
          *v88 = v74;
          *&v88[4] = 2080;
          *&v88[6] = v77;
          _os_log_error_impl(&dword_18162D000, v75, OS_LOG_TYPE_ERROR, "%s: %s: ERROR: watch_all_parents() failed for '%s' (%d):(%s)", __s, 0x30u);
        }

        goto LABEL_89;
      }
    }
  }

  *(v20 + 168) = v78;
  *(v20 + 176) = a8;
  *(v20 + 184) = a9;
  *(v20 + 188) = 0;
  *(v20 + 190) = v78 != -1;
  *(v20 + 216) = 0;
  *(v20 + 360) = 0;
  *(v20 + 432) = 0;
  *(v20 + 192) = 0;
  *(v20 + 200) = 0;
  *v20 = 1;
  return v20;
}

void FSEventStreamSetDispatchQueue(FSEventStreamRef streamRef, dispatch_queue_t q)
{
  if (streamRef)
  {
    if (q)
    {
      if (!*(streamRef + 48))
      {
        d2f_port = allocate_d2f_port("FSEventStreamSetDispatchQueue", streamRef);
        if (d2f_port)
        {
          v15 = fsevent_default_log(d2f_port, v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            FSEventStreamSetDispatchQueue_cold_1();
          }

          return;
        }

        pthread_mutex_lock(&FSEvents_streamDict_mutex);
        v16 = *MEMORY[0x1E695E480];
        if (!FSEvents_streamDict)
        {
          FSEvents_streamDict = CFDictionaryCreateMutable(v16, 0, MEMORY[0x1E695E9D8], 0);
        }

        v17 = CFNumberCreate(v16, kCFNumberIntType, streamRef + 192);
        CFDictionaryAddValue(FSEvents_streamDict, v17, streamRef);
        pthread_mutex_unlock(&FSEvents_streamDict_mutex);
        CFRelease(v17);
      }

      pthread_mutex_init((streamRef + 240), 0);
      pthread_cond_init((streamRef + 304), 0);
      dispatch_retain(q);
      *(streamRef + 44) = q;
      d2f_port_source = create_d2f_port_source(streamRef);
      if (d2f_port_source)
      {
        if ((*(streamRef + 184) & 4) == 0)
        {
          return;
        }

        v6 = *(streamRef + 102);
        v7 = dispatch_source_create(MEMORY[0x1E69E96F8], v6, 0, *(streamRef + 44));
        if (v7)
        {
          v9 = v7;
          dispatch_set_qos_class_fallback();
          FSEventStreamRetain(streamRef);
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 0x40000000;
          handler[2] = __FSEventStreamSetDispatchQueue_block_invoke;
          handler[3] = &__block_descriptor_tmp_0;
          handler[4] = streamRef;
          v22 = v6;
          dispatch_source_set_event_handler(v9, handler);
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 0x40000000;
          v19[2] = __FSEventStreamSetDispatchQueue_block_invoke_2;
          v19[3] = &__block_descriptor_tmp_24;
          v20 = v6;
          v19[4] = v9;
          v19[5] = streamRef;
          dispatch_source_set_cancel_handler(v9, v19);
          *(streamRef + 54) = v9;
          *(streamRef + 110) = 1;
          return;
        }

        v18 = fsevent_default_log(0, v8);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          FSEventStreamSetDispatchQueue_cold_3();
        }
      }

      else
      {
        v12 = fsevent_default_log(d2f_port_source, v5);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          FSEventStreamSetDispatchQueue_cold_2();
        }
      }

      if (*(streamRef + 54))
      {
        cancel_source(streamRef + 54, streamRef + 110);
        *(streamRef + 102) = -1;
      }

      if (*(streamRef + 45))
      {
        cancel_source(streamRef + 45, streamRef + 92);
        *(streamRef + 48) = 0;
      }
    }

    else
    {
      if (*(streamRef + 45))
      {
        cancel_source(streamRef + 45, streamRef + 92);
        *(streamRef + 48) = 0;
      }

      if (*(streamRef + 47))
      {
        cancel_source(streamRef + 47, streamRef + 96);
        *(streamRef + 49) = 0;
      }

      if ((*(streamRef + 184) & 4) != 0 && *(streamRef + 54))
      {
        cancel_source(streamRef + 54, streamRef + 110);
        *(streamRef + 102) = -1;
      }

      v11 = *(streamRef + 44);
      if (v11)
      {
        dispatch_release(v11);
        *(streamRef + 44) = 0;
      }
    }
  }

  else
  {
    v10 = fsevent_default_log(0, q);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamSetDispatchQueue_cold_4();
    }
  }
}

uint64_t allocate_d2f_port(uint64_t a1, uint64_t a2)
{
  v2 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, (a2 + 192));
  v4 = v2;
  if (v2)
  {
    v5 = fsevent_default_log(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      allocate_d2f_port_cold_1();
    }
  }

  return v4;
}

BOOL create_d2f_port_source(uint64_t a1)
{
  v2 = *(a1 + 192);
  v3 = dispatch_source_create(MEMORY[0x1E69E96D8], v2, 0, *(a1 + 352));
  if (v3)
  {
    FSEventStreamRetain(a1);
    dispatch_set_qos_class_fallback();
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __create_d2f_port_source_block_invoke;
    handler[3] = &__block_descriptor_tmp_66;
    v8 = v2;
    dispatch_source_set_event_handler(v3, handler);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __create_d2f_port_source_block_invoke_2;
    v5[3] = &__block_descriptor_tmp_67;
    v6 = v2;
    v5[4] = v3;
    v5[5] = a1;
    dispatch_source_set_cancel_handler(v3, v5);
    *(a1 + 360) = v3;
    *(a1 + 368) = 1;
  }

  return v3 != 0;
}

void _UTEnumerateTypesForIdentifier(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = v6;
  if (v5 && a2 && v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___UTEnumerateTypesForIdentifier_block_invoke;
    v8[3] = &unk_1E6A1EF60;
    v9 = v5;
    v10 = v7;
    _LSDatabaseEnumeratingBindingMap(v9, 0, a2, v8);
  }
}

id fallbackDynamicOrBaseTypeRecord(LSContext *a1, const __CFString *a2, __CFString *inUTI, __CFString *a4)
{
  if (!a4 || ![(__CFString *)inUTI isEqual:@"public.filename-extension"]|| !_UTExtensionLooksLikeAppendedRandomness(a1->db, a2) || ([(__CFString *)a4 isEqualToString:@"public.data"]& 1) == 0 && ([(__CFString *)a4 isEqualToString:@"public.folder"]& 1) == 0 && ![(__CFString *)a4 isEqualToString:@"public.directory"]|| ([UTTypeRecord _typeRecordWithContext:a1 identifier:a4 allowUndeclared:0], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    DynamicIdentifierForTag = _UTTypeCreateDynamicIdentifierForTag(&a1->db, inUTI, a2, a4);
    if (DynamicIdentifierForTag)
    {
      v8 = [[_UTDynamicTypeRecord alloc] _initWithContext:a1 dynamicUTI:DynamicIdentifierForTag];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

CFStringRef _UTTypeCreateDynamicIdentifierForTag(void **a1, CFStringRef inUTI, const __CFString *a3, const __CFString *a4)
{
  result = 0;
  if (inUTI && a3)
  {
    if (a1)
    {
      v12 = 0;
      if (!_UTGetActiveTypeForCFStringIdentifier(*a1, inUTI, &v12))
      {
        v11 = 0;
        return _UTTypeCreateDynamicIdentifierForTagCommon(inUTI, a3, a4, v11);
      }

      TypeCaseInsensitiveText = _UTTypeGetTypeCaseInsensitiveText(*a1);
      v10 = _UTTypeConformsTo(*a1, v12, TypeCaseInsensitiveText);
    }

    else
    {
      v10 = UTTypeConformsTo(inUTI, @"public.case-insensitive-text");
    }

    v11 = v10;
    return _UTTypeCreateDynamicIdentifierForTagCommon(inUTI, a3, a4, v11);
  }

  return result;
}

BOOL _UTExtensionLooksLikeAppendedRandomness(void *a1, CFStringRef theString)
{
  if (!theString)
  {
    return 0;
  }

  Length = CFStringGetLength(theString);
  if ((Length - 12) > 0x74)
  {
    return 0;
  }

  v5 = Length;
  v6 = v19;
  v20.location = 0;
  v20.length = Length;
  CFStringGetCharacters(theString, v20, v19);
  v7 = &v19[v5];
  v8 = 2 * v5;
  v9 = v7;
  v10 = v19;
  do
  {
    v11 = *v10++;
    if (v11 == 45)
    {
      v9 = v6;
    }

    v6 = v10;
    v8 -= 2;
  }

  while (v8);
  v12 = v7 - v9;
  if (v5 <= v12 || v12 - 2 >= 0x14)
  {
    return 0;
  }

  while (++v9 != v7)
  {
    v16 = *v9;
    if ((v16 - 48) >= 0xA && (v16 & 0xFFFFFFDF) - 65 > 0x19)
    {
      if (v9 != v7)
      {
        return 0;
      }

      break;
    }
  }

  v18 = CFStringCreateWithCharacters(*MEMORY[0x1E695E480], v19, v5 - v12);
  v14 = _UTTypeGetActiveIdentifierForTag(a1, @"public.filename-extension", v18, 0, 0) != 0;
  CFRelease(v18);
  return v14;
}

uint64_t _UTTypeGetTypeCaseInsensitiveText(void *a1)
{
  v1 = a1;
  v2 = [(_LSDatabase *)v1 schema];
  CachedType = _UTTypeGetCachedType(v1, @"public.case-insensitive-text", (*(v2 + 1616) + 132));

  return CachedType;
}

void _LSGetVersionFromString(__CFString *a1@<X0>, _OWORD *a2@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  *a2 = 0u;
  a2[1] = 0u;
  if (a1)
  {
    if (CFStringGetCString(a1, buffer, 1024, 0x8000100u))
    {
      LaunchServices::VersionNumber::FromCString(buffer, a2);
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      v5 = [(__CFString *)a1 UTF8String];
      if (v5)
      {
        LaunchServices::VersionNumber::FromCString(v5, a2);
      }

      objc_autoreleasePoolPop(v4);
    }
  }
}

uint64_t LaunchServices::VersionNumber::FromCString@<X0>(uint64_t this@<X0>, _OWORD *a2@<X8>)
{
  v11[3] = *MEMORY[0x1E69E9840];
  *a2 = 0u;
  a2[1] = 0u;
  if (this)
  {
    v2 = (this - 1);
    do
    {
      v3 = *++v2;
      v4 = v3 - 48;
      if (v3)
      {
        v5 = v4 > 9;
      }

      else
      {
        v5 = 0;
      }
    }

    while (v5);
    v6 = 0;
    v11[0] = a2;
    v11[1] = a2 + 8;
    v11[2] = a2 + 1;
    while (2)
    {
      v7 = 0;
      v8 = v11[v6];
      while (1)
      {
        v9 = *v2;
        if (!*v2)
        {
          break;
        }

        if (v9 == 46)
        {
          ++v2;
          break;
        }

        v10 = v9 - 48;
        if (v10 >= 0xA)
        {
          *v8 = v7;
          return this;
        }

        v7 = 10 * v7 + v10;
        ++v2;
      }

      *v8 = v7;
      if (++v6 != 3)
      {
        continue;
      }

      break;
    }
  }

  return this;
}

void enumeratePluginsMatchingQuery(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[_LSQueryContext defaultContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __enumeratePluginsMatchingQuery_block_invoke;
  v7[3] = &unk_1E6A19BD8;
  v8 = v3;
  v6 = v3;
  [v5 enumerateResolvedResultsOfQuery:v4 withBlock:v7];
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

id __copy_helper_block_ea8_48c14_ZTS9LSContext(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,BOOL>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t UTTypeCopyParentIdentifiers(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [UTTypeRecord typeRecordWithIdentifier:a1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 parentTypeIdentifiers];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 array];
      v8 = [v7 copy];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v8;
}

CFStringRef _UTTypeCreateDynamicIdentifierForTagCommon(const __CFString *a1, const __CFString *a2, const __CFString *a3, int a4)
{
  DynamicIdentifierForFileInfo = 0;
  v21 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    memset(v20, 0, sizeof(v20));
    v9 = CFGetTypeID(a1);
    if (v9 == CFStringGetTypeID())
    {
      Length = CFStringGetLength(a1);
      v11 = XCFBufInitWithCFStringRange(v20, a1, 0, Length, 1);
    }

    else
    {
      XCFBufInit(v20);
      v11 = 0;
    }

    memset(v19, 0, sizeof(v19));
    v12 = CFGetTypeID(a2);
    if (v12 == CFStringGetTypeID())
    {
      v13 = CFStringGetLength(a2);
      v14 = XCFBufInitWithCFStringRange(v19, a2, 0, v13, a4);
      if (v11 && v14)
      {
        memset(v18, 0, sizeof(v18));
        if (a3)
        {
          v15 = CFGetTypeID(a3);
          if (v15 == CFStringGetTypeID())
          {
            v16 = CFStringGetLength(a3);
            if (XCFBufInitWithCFStringRange(v18, a3, 0, v16, 1))
            {
              DynamicIdentifierForFileInfo = _UTTypeCreateDynamicIdentifierForFileInfo(v19, v20, v18, 1);
              XCFBufDestroy(v18);
LABEL_21:
              XCFBufDestroy(v19);
LABEL_22:
              XCFBufDestroy(v20);
              return DynamicIdentifierForFileInfo;
            }
          }

          else
          {
            XCFBufInit(v18);
          }

          DynamicIdentifierForFileInfo = 0;
          goto LABEL_21;
        }

        DynamicIdentifierForFileInfo = _UTTypeCreateDynamicIdentifierForFileInfo(v19, v20, 0, 0);
        goto LABEL_21;
      }

      if (v14)
      {
        XCFBufDestroy(v19);
      }
    }

    else
    {
      XCFBufInit(v19);
    }

    DynamicIdentifierForFileInfo = 0;
    if (!v11)
    {
      return DynamicIdentifierForFileInfo;
    }

    goto LABEL_22;
  }

  return DynamicIdentifierForFileInfo;
}

void ___ZL45_LSGetCurrentSystemIOSSupportAndBuildVersionsP15LSVersionNumberS0_PPK10__CFStringS0_S4__block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = _CFCopySystemVersionPlatformDictionary();
  v1 = v0;
  v2 = MEMORY[0x1E695E208];
  v3 = MEMORY[0x1E695E1E8];
  if (v0)
  {
    Value = CFDictionaryGetValue(v0, *MEMORY[0x1E695E208]);
    if (Value)
    {
      _LSGetVersionFromString(Value, &v13);
      _LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::cachedSystemVersion = v13;
      *algn_1ED444F90 = v14;
    }

    v5 = CFDictionaryGetValue(v1, *v3);
    if (v5)
    {
      _LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::cachedBuildVersion = CFStringCreateCopy(*MEMORY[0x1E695E480], v5);
    }
  }

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 contentsAtPath:@"/private/preboot/Cryptexes/OS/SystemVersion.plist"];

  if (v7)
  {
    v12 = 0;
    v8 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:&v12];
    v9 = v12;
    if (v8)
    {
      v10 = CFDictionaryGetValue(v1, *v2);
      if (v10)
      {
        _LSGetVersionFromString(v10, &v13);
        _LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::cachedCryptexVersion = v13;
        unk_1EA8313E8 = v14;
      }

      v11 = CFDictionaryGetValue(v1, *v3);
      if (v11)
      {
        _LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::cachedCryptexBuildVersion = CFStringCreateCopy(*MEMORY[0x1E695E480], v11);
      }
    }
  }

  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_181665A6C(_Unwind_Exception *a1)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(a1);
}

CFStringRef _UTTypeCreateDynamicIdentifierForFileInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a2 || a4)
  {
    XCFBufInit(&v17);
    if (a4)
    {
      XCFBufAppend(&v17, "?0=", 3);
      v8 = 0;
      v9 = (a3 + 8);
      do
      {
        if (v8)
        {
          XCFBufAppend(&v17, ",", 1);
        }

        v10 = *(v9 - 1);
        v11 = *v9;
        v9 += 4;
        XCFBufInitWithBytes(&v19, v10, v11, 0);
        _UTAbbreviateTerm(&v19);
        _UTAppendCharactersAddingEscapes(&v17, v19, v20);
        XCFBufDestroy(&v19);
        ++v8;
      }

      while (a4 != v8);
    }
  }

  else
  {
    if (*a2)
    {
      CFStringGetLength(@"public.filename-extension");
    }

    XCFBufInit(&v17);
  }

  if (a1)
  {
    if (v18)
    {
      XCFBufAppend(&v17, ":", 1);
    }

    XCFBufInitWithBytes(&v19, *a2, *(a2 + 8), 0);
    _UTAbbreviateTerm(&v19);
    _UTAppendCharactersAddingEscapes(&v17, v19, v20);
    XCFBufDestroy(&v19);
    XCFBufAppend(&v17, "=", 1);
    _UTAppendCharactersAddingEscapes(&v17, *a1, *(a1 + 8));
  }

  v12 = 0;
  v13 = v17;
  if (v17)
  {
    v14 = v18;
    if (v18)
    {
      memset(v21, 0, sizeof(v21));
      XCFBufInit(v21);
      XCFBufAppend(v21, "dyn.a", 5);
      v15 = _UTBase32EncodedLength(v14);
      XCFBufAddCapacity(v21, v15);
      _UTBase32Encode(v13, v14, (*&v21[0] + DWORD2(v21[0])));
      DWORD2(v21[0]) += v15;
      *(*&v21[0] + DWORD2(v21[0])) = 0;
      v12 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], *&v21[0], DWORD2(v21[0]), 0x8000100u, 0);
      XCFBufDestroy(v21);
    }
  }

  XCFBufDestroy(&v17);
  return v12;
}

void *XCFBufAppend(_DWORD *a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  XCFBufAddCapacity(a1, a3);
  result = memcpy((*a1 + a1[2]), a2, v3);
  v7 = a1[2] + v3;
  a1[2] = v7;
  *(*a1 + v7) = 0;
  return result;
}

_DWORD *XCFBufAddCapacity(_DWORD *result, int a2)
{
  v2 = result[2] + a2;
  v3 = result[6];
  if (v2 > v3)
  {
    v4 = result;
    if (v2 <= ((2 * v3) | 1))
    {
      v5 = 2 * v3 + 1;
    }

    else
    {
      v5 = result[2] + a2;
    }

    v6 = *result;
    v7 = *(result + 2);
    if (v6 == v7)
    {
      result = malloc_type_realloc(v7, (v5 + 1), 0x100004077774924uLL);
      *(v4 + 2) = result;
    }

    else
    {
      v8 = malloc_type_malloc((v5 + 1), 0x100004077774924uLL);
      *(v4 + 2) = v8;
      memcpy(v8, *v4, v4[2]);
      result = *(v4 + 2);
    }

    *v4 = result;
    v4[6] = v5;
  }

  return result;
}

uint64_t XCFBufInitWithBytes(uint64_t a1, void *__src, size_t __len, int a4)
{
  *(a1 + 28) = 0;
  result = a1 + 28;
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 24) = 127;
  *(a1 + 16) = 0;
  if (!__len)
  {
    return 0;
  }

  v7 = __len;
  if (__len >= 0x80)
  {
    result = malloc_type_malloc((__len + 1), 0x100004077774924uLL);
    if (!result)
    {
      return result;
    }

    *(a1 + 16) = result;
    *a1 = result;
    *(a1 + 24) = v7;
  }

  v9 = v7;
  memmove(result, __src, v7);
  *(*a1 + v7) = 0;
  *(a1 + 8) = v7;
  if (a4)
  {
    v10 = *a1;
    do
    {
      v11 = *v10;
      if ((v11 - 65) <= 0x19)
      {
        *v10 = v11 | 0x20;
      }

      ++v10;
      --v9;
    }

    while (v9);
  }

  return 1;
}

id _LSPlistGetDictionary(_LSDatabase *a1, uint64_t a2, _LSPlistHint *a3)
{
  v3 = _LSPlistGet(a1, a2);
  v4 = _LSPlistDataGetDictionary(v3, 0);

  return v4;
}

{
  v3 = _LSPlistGet(a1, a2);
  v4 = _LSPlistDataGetDictionary(v3, 0);

  return v4;
}

{
  v3 = _LSPlistGet(a1, a2);
  v4 = _LSPlistDataGetDictionary(v3, 0);

  return v4;
}

_DWORD *_UTAbbreviateTerm(_DWORD *result)
{
  v1 = result[2];
  if (v1 >= 3)
  {
    v2 = result;
    v3 = 0;
    v4 = *result;
    while (1)
    {
      v5 = (&builtins)[v3];
      result = strncmp(v5, v4, v1);
      if (!result && !v5[v1])
      {
        break;
      }

      if (++v3 == 22)
      {
        return result;
      }
    }

    if (v3 > 0xF)
    {
      *v4 = a0123456789abcd_0[v3 >> 4];
      *(*v2 + 1) = a0123456789abcd_0[v3 & 0xF];
      *(*v2 + 2) = 0;
      v6 = 2;
    }

    else
    {
      *v4 = a0123456789abcd_0[v3];
      v6 = 1;
    }

    v2[2] = v6;
  }

  return result;
}

_DWORD *_UTAppendCharactersAddingEscapes(_DWORD *a1, _BYTE *a2, unsigned int a3)
{
  result = XCFBufAddCapacity(a1, 2 * a3);
  v7 = *a1;
  v8 = a1[2];
  if (a3)
  {
    v9 = (v7 + v8);
    v10 = a3;
    do
    {
      v11 = *a2;
      if ((v11 - 44) <= 0x30 && ((1 << (v11 - 44)) & 0x1000000024001) != 0 || v11 == 0)
      {
        *v9++ = 92;
        ++a1[2];
        LOBYTE(v11) = *a2;
      }

      *v9++ = v11;
      v8 = (a1[2] + 1);
      a1[2] = v8;
      ++a2;
      --v10;
    }

    while (v10);
    v7 = *a1;
  }

  *(v7 + v8) = 0;
  return result;
}

unsigned __int8 *_UTBase32Encode(unsigned __int8 *result, unsigned int a2, _BYTE *a3)
{
  v4 = result;
  v5 = &result[a2];
  v6 = a2 % 5;
  if (&v5[-v6] > result)
  {
    do
    {
      result = _UTBase32EncodeDatum(v4, 5, a3);
      v4 += 5;
      a3 += 8;
    }

    while (v4 < &v5[-v6]);
  }

  if (v6)
  {

    return _UTBase32EncodeDatum(v4, v6, a3);
  }

  return result;
}

unsigned __int8 *_UTBase32EncodeDatum(unsigned __int8 *result, int a2, _BYTE *a3)
{
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      *a3 = encoder[*result >> 3];
      v3 = 4 * (*result & 7);
      v4 = 1;
    }

    else
    {
      if (a2 != 2)
      {
        return result;
      }

      *a3 = encoder[*result >> 3];
      a3[1] = encoder[(result[1] >> 6) & 0xFFFFFFFFFFFFFFE3 | (4 * (*result & 7))];
      a3[2] = encoder[(result[1] >> 1) & 0x1F];
      v3 = 16 * (result[1] & 1);
      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        *a3 = encoder[*result >> 3];
        a3[1] = encoder[(result[1] >> 6) & 0xFFFFFFFFFFFFFFE3 | (4 * (*result & 7))];
        a3[2] = encoder[(result[1] >> 1) & 0x1F];
        a3[3] = encoder[(result[2] >> 4) & 0xFFFFFFFFFFFFFFEFLL | (16 * (result[1] & 1))];
        v3 = 2 * (result[2] & 0xF);
        v4 = 4;
        break;
      case 4:
        *a3 = encoder[*result >> 3];
        a3[1] = encoder[(result[1] >> 6) & 0xFFFFFFFFFFFFFFE3 | (4 * (*result & 7))];
        a3[2] = encoder[(result[1] >> 1) & 0x1F];
        a3[3] = encoder[(result[2] >> 4) & 0xFFFFFFFFFFFFFFEFLL | (16 * (result[1] & 1))];
        a3[4] = encoder[(result[3] >> 7) & 0xFFFFFFFFFFFFFFE1 | (2 * (result[2] & 0xF))];
        a3[5] = encoder[(result[3] >> 2) & 0x1F];
        v3 = 8 * (result[3] & 3);
        v4 = 6;
        break;
      case 5:
        *a3 = encoder[*result >> 3];
        a3[1] = encoder[(result[1] >> 6) & 0xFFFFFFFFFFFFFFE3 | (4 * (*result & 7))];
        a3[2] = encoder[(result[1] >> 1) & 0x1F];
        a3[3] = encoder[(result[2] >> 4) & 0xFFFFFFFFFFFFFFEFLL | (16 * (result[1] & 1))];
        a3[4] = encoder[(result[3] >> 7) & 0xFFFFFFFFFFFFFFE1 | (2 * (result[2] & 0xF))];
        a3[5] = encoder[(result[3] >> 2) & 0x1F];
        a3[6] = encoder[(result[4] >> 5) & 0xFFFFFFFFFFFFFFE7 | (8 * (result[3] & 3))];
        v3 = result[4] & 0x1F;
        v4 = 7;
        break;
      default:
        return result;
    }
  }

  a3[v4] = encoder[v3];
  return result;
}

uint64_t _LSIsCPUTypeSubtypeRunnable(int a1, int a2)
{
  if (a1 == 16777228)
  {
    if (_LSGetCPUType::once != -1)
    {
      _LSGetCPUType_cold_1();
    }

    if (_LSGetCPUType::type != 16777228)
    {
      goto LABEL_20;
    }

    v5 = a2 & 0xFFFFFF;
    if ((a2 & 0xFFFFFF) != 0 && v5 != 0xFFFFFF && v5 != 2)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (a1 != 16777223)
  {
    v3 = a2 == -1;
    if (a1 != -1)
    {
      v3 = 0;
    }

    return v3 & 1;
  }

  if (_LSGetCPUType::once != -1)
  {
    _LSGetCPUType_cold_1();
  }

  if (_LSGetCPUType::type != 16777223)
  {
LABEL_20:
    v3 = 0;
    return v3 & 1;
  }

  v4 = a2 & 0xFFFFFF;
  if ((a2 & 0xFFFFFF) == 0xFFFFFF)
  {
LABEL_19:
    v3 = 1;
    return v3 & 1;
  }

  if (v4 != 8)
  {
    if (v4 != 3)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (_LSPlatformSupportsHaswell::onceToken != -1)
  {
    _LSIsCPUTypeSubtypeRunnable_cold_2();
  }

  v3 = _LSPlatformSupportsHaswell::canRun;
  return v3 & 1;
}

uint64_t initMCFeatureSystemAppRemovalAllowed()
{
  v0 = ManagedConfigurationLibrary_frameworkLibrary;
  if (!ManagedConfigurationLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
    ManagedConfigurationLibrary_frameworkLibrary = v0;
  }

  result = *dlsym(v0, "MCFeatureSystemAppRemovalAllowed");
  constantMCFeatureSystemAppRemovalAllowed = result;
  getMCFeatureSystemAppRemovalAllowed = MCFeatureSystemAppRemovalAllowedFunction;
  return result;
}

Boolean UTTypeIsDynamic(CFStringRef inUTI)
{
  if (inUTI)
  {
    v1 = inUTI;
    LODWORD(inUTI) = _UTTypeIdentifierIsValid(inUTI);
    if (inUTI)
    {
      LOBYTE(inUTI) = _UTTypeIdentifierIsDynamic(v1) != 0;
    }
  }

  return inUTI;
}

id _LSGetBRDisplayNameForContainerNode(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  if (v3 && [v3 isDirectory])
  {
    v5 = [v3 nameWithError:0];
    v6 = v5;
    if (v5 && (CFStringFind(v5, @"~", 0).location != -1 || CFStringCompare(v6, @"Desktop", 0) == kCFCompareEqualTo || CFStringCompare(v6, @"Documents", 0) == kCFCompareEqualTo))
    {
      v7 = [v3 URL];

      if (v4)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = ___LSGetBRDisplayNameForContainerNode_block_invoke;
        v16[3] = &unk_1E6A1AA08;
        v16[4] = &v17;
        v16[5] = v7;
        [v4 enumerateObjectsUsingBlock:v16];
      }

      v8 = v18;
      if (!v18[5])
      {
        v9 = softLinkBRCopyDisplayNameForContainerAtURL;
        if (softLinkBRCopyDisplayNameForContainerAtURL)
        {
          v10 = softLinkBRCopyDisplayNameForContainerAtURL(v7, 0);
          v8 = v18;
          v9 = v18[5];
        }

        else
        {
          v10 = 0;
        }

        v8[5] = v10;
      }
    }
  }

  v11 = v18;
  if (v18[5])
  {
    v12 = _NSIsNSString();
    v11 = v18;
    if ((v12 & 1) == 0)
    {
      v13 = v18[5];
      v18[5] = 0;

      v11 = v18;
    }
  }

  v14 = v11[5];
  _Block_object_dispose(&v17, 8);

  return v14;
}

void sub_181666B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_181666D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t _LSFindOrFindOrRegisterBundleNode(uint64_t *a1, void *a2, unsigned int *a3, uint64_t a4, FSNode *a5, unsigned int *a6, LSBundleData **a7)
{
  v10 = a4;
  v13 = a2;
  if ([v13 canIssueIO])
  {
    v14 = _LSFindOrRegisterBundleNode(a1, v13, a3, v10, a5, a6, a7);
  }

  else
  {
    v14 = _LSBundleFindWithNode(a1, v13, a6, a7);
  }

  v15 = v14;

  return v15;
}

uint64_t _LSFindOrRegisterBundleNode(uint64_t *a1, void *a2, unsigned int *a3, unsigned int a4, FSNode *a5, unsigned int *a6, LSBundleData **a7)
{
  v79 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = v11;
  v13 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  theArray = 0;
  v72 = 0;
  v14 = 4294967246;
  v70 = 0;
  if (!a1 || !v11)
  {
    goto LABEL_120;
  }

  if (a3)
  {
    v15 = *a3;
  }

  else
  {
    v15 = _LSGetBundleClassForNode(a1, v11);
  }

  if (v15 == 11)
  {
    v16 = a4 | 0x10000000;
  }

  else
  {
    v16 = a4;
  }

  v17 = v15 > 0x10 || ((1 << v15) & 0x16804) == 0;
  if (v17 && (v16 & 0x10000000) == 0)
  {
    v20 = 0;
    v13 = 0;
    v14 = 4294956485;
    if ((v16 & 0x4000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_43;
  }

  v18 = _LSBundleFindWithNode(a1, v12, &v75, &v74);
  v14 = v18;
  if (v18 == -9499)
  {
    v19 = 1;
  }

  else
  {
    if (v18)
    {
      v13 = 0;
      goto LABEL_120;
    }

    v19 = _LSBundleNeedsRegistration(a1, v12, v16, v75, v74) != 0;
  }

  v13 = 0;
  v20 = 0;
  if (!a5 || !v19)
  {
LABEL_42:
    if ((v16 & 0x4000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_43;
  }

  if (!*a1)
  {
    v13 = 0;
    v14 = 4294956479;
    goto LABEL_120;
  }

  v69 = 0;
  v21 = _LSContainerFindOrRegisterWithNode(a1, v12, v16, &v73, 0, &v72, &v69);
  v22 = v69;
  v13 = v22;
  if ((v21 & 1) == 0)
  {
    v14 = _LSGetOSStatusFromNSError(v22);
    if (v14)
    {
      goto LABEL_120;
    }
  }

  v75 = 0;
  v74 = 0;
  v23 = _LSBundleFindWithNode(a1, v12, &v75, &v74);
  v14 = v23;
  if (v23 == -9499)
  {
    v24 = 1;
  }

  else
  {
    if (v23)
    {
      goto LABEL_120;
    }

    v24 = _LSBundleNeedsRegistration(a1, v12, v16, v75, v74) != 0;
  }

  if (!v74)
  {
    if (v24)
    {
      v61 = 0;
      goto LABEL_37;
    }

    goto LABEL_41;
  }

  if (!v24)
  {
LABEL_41:
    v20 = 0;
    goto LABEL_42;
  }

  v61 = *&v74->appStoreToolsBuildVersion;
  if ((*(&v74->_clas + 1) & 0x80) == 0)
  {
    v16 |= 2u;
  }

LABEL_37:
  v25 = objc_autoreleasePoolPush();
  v26 = v73;
  v27 = theArray;
  v28 = v72;
  theArray = 0;
  if (v27)
  {
    CFRelease(v27);
  }

  v68 = 0;
  v29 = _LSRegisterBundleNode(a1, v26, v28, v12, v16, a5, &theArray, &v70, &v75, &v68);
  v30 = v68;
  v31 = v30;
  if (v29)
  {
    v14 = 0;
  }

  else
  {
    v14 = _LSGetOSStatusFromNSError(v30);
  }

  objc_autoreleasePoolPop(v25);
  if (!v14)
  {
    if (theArray && (Count = CFArrayGetCount(theArray), Count >= 1))
    {
      for (i = 0; i != Count; ++i)
      {
        v35 = objc_autoreleasePoolPush();
        LODWORD(v64) = 0;
        *buf = 0;
        if (!theArray || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, i), v37 = CFURLGetTypeID(), ValueAtIndex) && v37 && CFGetTypeID(ValueAtIndex) != v37)
        {
          ValueAtIndex = 0;
        }

        if (v70)
        {
          v16 |= 6u;
        }

        else
        {
          v16 = v16 & 0xFFFFFFF9 | 4;
        }

        v14 = FSNodeCreateWithURL(ValueAtIndex, 0, buf);
        if (!v14)
        {
          v67 = 0;
          v38 = _LSRegisterBundleNode(a1, v73, v72, *buf, v16, a5, 0, 0, &v64, &v67);
          v39 = v67;
          v40 = v39;
          if (v38)
          {
            v14 = 0;
          }

          else
          {
            v14 = _LSGetOSStatusFromNSError(v39);
          }
        }

        objc_autoreleasePoolPop(v35);
      }
    }

    else
    {
      v14 = 0;
    }

    if ((v16 & 0x3000000) == 0x2000000)
    {
      [(_LSDatabase *)*a1 store];
      Generation = CSStoreGetGeneration();
      v66 = 0;
      v42 = _LSContextUpdate(a1, 1, &v66);
      v43 = v66;
      v44 = v43;
      if (v42)
      {
        v45 = _LSRegistrationLog(v43);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          [(_LSDatabase *)*a1 store];
          v46 = CSStoreGetGeneration();
          *buf = 134218240;
          *&buf[4] = Generation;
          v77 = 2048;
          v78 = v46;
          _os_log_impl(&dword_18162D000, v45, OS_LOG_TYPE_DEFAULT, "LSFORBN: Caller wants reinitialization, updated store from generation %lu to %lu", buf, 0x16u);
        }
      }

      else
      {
        v48 = _LSRegistrationLog(v43);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_18162D000, v48, OS_LOG_TYPE_ERROR, "LSFORBN: couldn't update context as asked", buf, 2u);
        }

        v14 = _LSGetOSStatusFromNSError(v44);
        if (v14)
        {

          goto LABEL_120;
        }
      }

      v74 = _LSBundleGet(*a1, v75);
      if (!v74)
      {
        v65 = 0;
        v64 = 0;
        v49 = _LSBundleFindWithNode(a1, v12, &v65, &v64);
        if (v49)
        {
          v50 = _LSRegistrationLog(v49);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            *&buf[4] = v75;
            _os_log_impl(&dword_18162D000, v50, OS_LOG_TYPE_ERROR, "Couldn't refind bundle unit after registering %llx", buf, 0xCu);
          }
        }

        else if (*(v64 + 276) > v61)
        {
          v56 = _LSRegistrationLog(v49);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v75;
            v77 = 2048;
            v78 = v65;
            _os_log_impl(&dword_18162D000, v56, OS_LOG_TYPE_ERROR, "After registering bundle unit %llx and reinitializing context, couldn't find it, but did find bundle unit %llx on refetch-by-node; using that", buf, 0x16u);
          }

          v75 = v65;
          v74 = v64;
        }
      }

      v14 = 0;
    }

    else
    {
      v74 = 0;
    }

    v20 = 1;
    if ((v16 & 0x4000000) == 0)
    {
LABEL_103:
      if (v14 && v14 != -10654)
      {
        goto LABEL_120;
      }

      v57 = v75;
      v58 = v74;
      if (v14 || !v75 || v74)
      {
        if (v14)
        {
          goto LABEL_116;
        }
      }

      else
      {
        v58 = _LSBundleGet(*a1, v75);
        v74 = v58;
        v57 = v75;
      }

      if (!v57)
      {
        goto LABEL_123;
      }

      if (((v20 ^ 1 | ((v16 & 0x2000000) >> 25)) & 1) == 0)
      {
        v59 = _LSDefaultLog(v58);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          _LSFindOrRegisterBundleNode_cold_1(&v74, v16, v59);
        }

        goto LABEL_116;
      }

      if (!v58)
      {
LABEL_123:
        v14 = 4294956482;
        goto LABEL_120;
      }

LABEL_116:
      if (a6)
      {
        *a6 = v75;
      }

      if (a7)
      {
        *a7 = v74;
      }

      goto LABEL_120;
    }

LABEL_43:
    if (!v75)
    {
      goto LABEL_128;
    }

    if (v74)
    {
      v32 = *(&v74->_clas + 5) & 1;
    }

    else
    {
      *buf = 0;
      if (_LSContextInit(buf))
      {
        v32 = 0;
      }

      else
      {
        v47 = _LSBundleGet(*buf, v75);
        v74 = v47;
        if (v47)
        {
          v32 = *(v47 + 173) & 1;
          v74 = 0;
        }

        else
        {
          v32 = 0;
        }

        _LSContextDestroy(buf);
      }
    }

    if (v32)
    {
LABEL_128:
      v51 = [(FSNode *)v12 URL];
      v52 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle();

      if (v52)
      {
        v53 = CFBundleCopyBundleURL(v52);
        if (v53)
        {
          v54 = [[FSNode alloc] initWithURL:v53 flags:0 error:0];
          if (v54)
          {
            v55 = _LSFindOrRegisterBundleNode(a1, v54, 0, v16 & 0xFBFFFFFF, 0, &v75, &v74);
            if (v55)
            {
              v14 = v55;
            }

            else
            {
              v14 = 4294956642;
            }
          }

          CFRelease(v53);
        }

        CFRelease(v52);
      }
    }

    goto LABEL_103;
  }

LABEL_120:

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v14;
}

void sub_1816676CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, CFTypeRef cf, void *a23)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

void sub_1816678EC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_181667900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSBundleNeedsRegistration(LSContext *a1, FSNode *a2, int a3, uint64_t a4, const LSBundleData *a5)
{
  v6 = a4;
  v19 = *MEMORY[0x1E69E9840];
  HasChanged = a2;
  v11 = HasChanged;
  if (HasChanged)
  {
    HasChanged = _LSNodeHasChanged(HasChanged, v10, v6, a5, 0);
    v13 = (a3 & 0x40000000) == 0 || HasChanged == 0;
    if ((a3 & 1) != 0 || !v13)
    {
      goto LABEL_14;
    }
  }

  else if (a3)
  {
    goto LABEL_14;
  }

  HasChanged = [(_LSDatabase *)a1->db isSeeded];
  if (HasChanged)
  {
    v14 = 0;
    goto LABEL_17;
  }

LABEL_14:
  v15 = getNeedsRegistrationLog(HasChanged);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134217984;
    v18 = v6;
    _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEFAULT, "bundle 0x%llx needs registration", &v17, 0xCu);
  }

  v14 = 1;
LABEL_17:

  return v14;
}

id getValueForKeyFromPlugin(NSString *a1, const LSPluginData *a2, _LSDatabase *a3)
{
  v5 = a1;
  v6 = a3;
  if ([(NSString *)v5 isEqualToString:@"NSExtensionIdentifier"]|| [(NSString *)v5 isEqualToString:@"NSExtensionPointName"]|| [(NSString *)v5 isEqualToString:@"NSExtensionPointIdentifier"]|| [(NSString *)v5 isEqualToString:@"com.apple.uuid"])
  {
    [(_LSDatabase *)v6 store];
    v7 = _CSStringCopyCFString();
  }

  else
  {
    v9 = [(NSString *)v5 isEqualToString:@"NSExtensionContainingApp"];
    if (v9)
    {
      var8 = a2->var8;
      if (var8)
      {
        if (v6)
        {
          v11 = _LSBundleGet(v6, var8);
          if (v11)
          {
            v12 = *v11;
            if (v12)
            {
              v13 = _LSAliasCopyResolvedNode(v6, v12, 0, 0, 0);
              v14 = v13;
              if (v13)
              {
                v15 = [v13 URL];
                v7 = [v15 path];
              }

              else
              {
                v7 = 0;
              }

              goto LABEL_6;
            }
          }
        }

        else
        {
          v16 = _LSDefaultLog(v9);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            getValueForKeyFromPlugin(v16);
          }
        }
      }
    }

    v7 = 0;
  }

LABEL_6:

  return v7;
}

uint64_t _UTDynamicValuesSearch(uint64_t a1, const __CFString *a2, int a3, uint64_t a4, uint64_t (*a5)(uint64_t *), uint64_t a6)
{
  v54 = *MEMORY[0x1E69E9840];
  XCFBufInit(&v44);
  if (a2 && (v12 = CFGetTypeID(a2), v12 == CFStringGetTypeID()))
  {
    Length = CFStringGetLength(a2);
    XCFBufInitWithCFStringRange(&v46, a2, 0, Length, 0);
  }

  else
  {
    XCFBufInit(&v46);
  }

  if (v47 >= 5 && *(v46 + 4) == 97)
  {
    v14 = _UTBase32DecodedLength(v47 - 5);
    XCFBufAddCapacity(&v44, v14);
    v15 = _UTBase32Decode(v46 + 5, v47 - 5, v44);
    v44[v14] = 0;
    v45 = v14;
    XCFBufDestroy(&v46);
    if (v15)
    {
      v53 = a6;
      i = v44;
      v46 = a1;
      v48 = v44;
      if (v44)
      {
        while (1)
        {
          v17 = v44;
          v18 = &v44[v45];
          if (v18 == i)
          {
            v25 = 0;
            goto LABEL_24;
          }

          v19 = i;
          v20 = i;
          while (1)
          {
            v21 = *v20;
            if (v21 == 61)
            {
              break;
            }

            if (v20 + 1 == v18)
            {
              v22 = v20;
            }

            else
            {
              v22 = v20 + 1;
            }

            if (v21 == 92 && v17 != 0)
            {
              v20 = v22;
            }

            v24 = *v20++;
            *v19++ = v24;
            if (v20 == v18)
            {
              v42 = 0;
              LODWORD(v49) = 0;
              v48 = 0;
              goto LABEL_79;
            }
          }

          v25 = v20 - i;
          for (i = v20; ; i = v29 + 1)
          {
LABEL_24:
            if (i == v18)
            {
              i = 0;
              goto LABEL_38;
            }

            v26 = *i;
            if (v26 == 58)
            {
              break;
            }

            if (i + 1 == v18)
            {
              v27 = i;
            }

            else
            {
              v27 = i + 1;
            }

            if (v26 != 92 || v17 == 0)
            {
              v29 = i;
            }

            else
            {
              v29 = v27;
            }
          }

          ++i;
LABEL_38:
          LODWORD(v49) = v25;
          if (v25)
          {
            v30 = v48;
            if (*v48 == 63)
            {
              v47 = 1;
              v30 = ++v48;
              LODWORD(v49) = --v25;
            }

            else
            {
              v47 = 2;
            }

            v51 = &v30[v25 + 1];
            v31 = _UTDebreviateTerm(&v48);
            v48 = v31;
            v49 = v32;
            if (!a3 || v47 == a3)
            {
              if (!a4)
              {
                goto LABEL_52;
              }

              v42 = 0;
              if (*(a4 + 8) != v32 || !v31)
              {
                goto LABEL_45;
              }

              if (!strncmp(*a4, v31, v32))
              {
LABEL_52:
                v50 = 0;
                v33 = v51;
                if (v51)
                {
                  do
                  {
                    v34 = v33 - v44;
                    if (v45 <= v33 - v44)
                    {
                      v40 = 0;
                      v42 = 0;
                      LODWORD(v52) = 0;
                    }

                    else
                    {
                      v35 = v34;
                      v36 = &v44[v34];
                      if (v35 != v45)
                      {
                        v37 = &v44[v45];
                        v38 = v36;
                        do
                        {
                          v39 = *v38;
                          if (v39 == 92)
                          {
                            if (v38 + 1 != v37)
                            {
                              ++v38;
                            }

                            LOBYTE(v39) = *v38;
                          }

                          else if (v39 == 44 || v39 == 58)
                          {
                            if (v39 == 58)
                            {
                              v40 = 0;
                            }

                            else
                            {
                              v40 = (v38 + 1);
                            }

                            goto LABEL_69;
                          }

                          ++v38;
                          *v36++ = v39;
                        }

                        while (v38 != v37);
                      }

                      v40 = 0;
LABEL_69:
                      LODWORD(v52) = v36 - v33;
                      if (v36 == v33)
                      {
                        v42 = 0;
                      }

                      else
                      {
                        if (v47 == 1)
                        {
                          v51 = _UTDebreviateTerm(&v51);
                          v52 = v41;
                        }

                        v42 = a5(&v46);
                      }
                    }

                    v51 = v40;
                    ++v50;
                    if (!v40)
                    {
                      break;
                    }

                    v33 = v40;
                  }

                  while (!v42);
                  goto LABEL_45;
                }
              }
            }
          }

          v42 = 0;
LABEL_45:
          v48 = i;
          if (!i || v42)
          {
            goto LABEL_79;
          }
        }
      }
    }
  }

  else
  {
    XCFBufDestroy(&v46);
  }

  v42 = 0;
LABEL_79:
  XCFBufDestroy(&v44);
  return v42;
}

uint64_t _LSNodeHasChanged(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, _BYTE *a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v41 = 0.0;
  v9 = [v8 getContentModificationDate:&v41 error:0];
  v10 = v9;
  if (v9)
  {
    ModTime = _LSBundleDataGetModTime(a4);
    v12 = ModTime;
    v13 = v41;
    if (ModTime == v41)
    {
      v14 = 0;
      goto LABEL_8;
    }

    v15 = getNeedsRegistrationLog(ModTime);
    v17 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v12 > v13)
    {
      if (v17)
      {
        v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v12];
        v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v41];
        *buf = 134218498;
        v43 = a3;
        v44 = 2114;
        v45 = v18;
        v46 = 2114;
        v47 = v19;
        _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEFAULT, "bundle 0x%llx mod date went backwards from %{public}@ to %{public}@, verifying with fresh node", buf, 0x20u);
      }

      v20 = [FSNode alloc];
      v21 = objc_alloc(MEMORY[0x1E695DFF8]);
      v22 = [v8 URL];
      v23 = [v22 absoluteString];
      v24 = [v21 initWithString:v23];
      v40 = 0;
      v25 = [(FSNode *)v20 initWithURL:v24 flags:0 error:&v40];
      v26 = v40;

      if (!v25)
      {
        v35 = getNeedsRegistrationLog(v27);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v43 = v26;
          _os_log_impl(&dword_18162D000, v35, OS_LOG_TYPE_DEFAULT, "Couldn't get fresh node: %@", buf, 0xCu);
        }

        v14 = 1;
        v15 = v26;
        goto LABEL_31;
      }

      v38 = v26;
      v39 = 0.0;
      v28 = [(FSNode *)v25 getContentModificationDate:&v39 error:&v38];
      v15 = v38;

      if (v28)
      {
        v30 = v39;
        v31 = getNeedsRegistrationLog(v29);
        v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
        if (v12 == v30)
        {
          if (v32)
          {
            *buf = 134217984;
            v43 = a3;
            _os_log_impl(&dword_18162D000, v31, OS_LOG_TYPE_DEFAULT, "bundle 0x%llx fresh node shows no change, cached data was stale", buf, 0xCu);
          }

          v14 = 0;
          goto LABEL_30;
        }

        if (v32)
        {
          v36 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v12];
          v37 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v39];
          *buf = 134218498;
          v43 = a3;
          v44 = 2114;
          v45 = v36;
          v46 = 2114;
          v47 = v37;
          _os_log_impl(&dword_18162D000, v31, OS_LOG_TYPE_DEFAULT, "bundle 0x%llx fresh node confirms mod date changed from %{public}@ to %{public}@", buf, 0x20u);
        }
      }

      else
      {
        v31 = getNeedsRegistrationLog(v29);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v43 = v15;
          _os_log_impl(&dword_18162D000, v31, OS_LOG_TYPE_DEFAULT, "Couldn't get refreshed modification date: %@", buf, 0xCu);
        }
      }

      v14 = 1;
LABEL_30:

LABEL_31:
      goto LABEL_7;
    }

    if (v17)
    {
      v33 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v12];
      v34 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v41];
      *buf = 134218498;
      v43 = a3;
      v44 = 2114;
      v45 = v33;
      v46 = 2114;
      v47 = v34;
      _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEFAULT, "bundle 0x%llx mod date changed from %{public}@ to %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v15 = getNeedsRegistrationLog(v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v43 = a3;
      _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEFAULT, "bundle 0x%llx does not appear to exist anymore", buf, 0xCu);
    }
  }

  v14 = 1;
LABEL_7:

LABEL_8:
  if (a5)
  {
    *a5 = v10;
  }

  return v14;
}

uint64_t _UTDynamicGetTagSpecification(const __CFString *a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__53;
  v9 = __Block_byref_object_dispose__53;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___UTDynamicGetTagSpecification_block_invoke;
  v4[3] = &unk_1E6A1E6F8;
  v4[4] = &v5;
  _UTDynamicValuesSearch(0, a1, 2, 0, _UTDynamicValuesSearchWithBlock::$_0::__invoke, v4);
  if ([v6[5] count])
  {
    v1 = objc_alloc(MEMORY[0x1E695DF20]);
    v2 = [v1 initWithDictionary:v6[5] copyItems:1];
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_181668724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t _FSNodeGetTimestampValue(void *a1, uint64_t a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695DAA8] == a2 || *MEMORY[0x1E695DA98] == a2 || *MEMORY[0x1E695DA80] == a2)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    *v12 = 0u;
    v13 = 0u;
    v10 = [a1 URL];
    v6 = _CFURLCopyResourcePropertyValuesAndFlags() != 0;

    if (v6)
    {
      if (a3)
      {
        *a3 = 0;
      }
    }

    else if (a4)
    {
      *a4 = 0;
    }
  }

  else
  {
    v12[0] = 0;
    v6 = [a1 getResourceValue:v12 forKey:a2 options:3 error:a4];
    v7 = v6 ^ 1;
    v8 = v12[0];
    if (!a3)
    {
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {
      if (v12[0])
      {
        [v12[0] timeIntervalSinceReferenceDate];
        *a3 = v9;
        v8 = v12[0];
      }

      else
      {
        *a3 = 0;
      }
    }
  }

  return v6;
}

BOOL _UTBase32Decode(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  v4 = a1;
  v5 = a1 + a2;
  v6 = a2 & 7;
  if (v5 - v6 != a1)
  {
    v7 = a2 - v6;
    while (_UTBase32DecodeDatum(v4, 8, a3))
    {
      v4 += 8;
      a3 += 5;
      v7 -= 8;
      if (!v7)
      {
        v4 = v5 - v6;
        break;
      }
    }
  }

  if (v6 && _UTBase32DecodeDatum(v4, v6, a3))
  {
    v4 = v5;
  }

  return v4 == v5;
}

uint64_t _UTBase32DecodeDatum(uint64_t a1, int a2, _BYTE *a3)
{
  v3 = 0;
  v20[1] = *MEMORY[0x1E69E9840];
  if (a1 && (a2 - 1) <= 7)
  {
    v4 = 0;
    v20[0] = 0;
    do
    {
      v5 = decoder[*(a1 + v4)];
      if (v5 < 0)
      {
        return 0;
      }

      *(v20 + v4++) = v5;
    }

    while (a2 != v4);
    if (a2 <= 4)
    {
      if (a2 == 2)
      {
        *a3 = (BYTE1(v20[0]) >> 2) | (8 * LOBYTE(v20[0]));
      }

      else if (a2 == 4)
      {
        v11 = BYTE1(v20[0]);
        *a3 = (BYTE1(v20[0]) >> 2) | (8 * LOBYTE(v20[0]));
        a3[1] = (2 * BYTE2(v20[0])) | (v11 << 6) | (BYTE3(v20[0]) >> 4);
      }
    }

    else
    {
      switch(a2)
      {
        case 5:
          v12 = BYTE1(v20[0]);
          *a3 = (BYTE1(v20[0]) >> 2) | (8 * LOBYTE(v20[0]));
          v13 = (2 * BYTE2(v20[0])) | (v12 << 6);
          v14 = BYTE3(v20[0]);
          a3[1] = v13 | (BYTE3(v20[0]) >> 4);
          a3[2] = (BYTE4(v20[0]) >> 1) | (16 * v14);
          break;
        case 7:
          v15 = BYTE1(v20[0]);
          *a3 = (BYTE1(v20[0]) >> 2) | (8 * LOBYTE(v20[0]));
          v16 = (2 * BYTE2(v20[0])) | (v15 << 6);
          v17 = BYTE3(v20[0]);
          a3[1] = v16 | (BYTE3(v20[0]) >> 4);
          v18 = BYTE4(v20[0]);
          a3[2] = (BYTE4(v20[0]) >> 1) | (16 * v17);
          a3[3] = (4 * BYTE5(v20[0])) | (v18 << 7) | (BYTE6(v20[0]) >> 3);
          break;
        case 8:
          v6 = BYTE1(v20[0]);
          *a3 = (BYTE1(v20[0]) >> 2) | (8 * LOBYTE(v20[0]));
          v7 = (2 * BYTE2(v20[0])) | (v6 << 6);
          v8 = BYTE3(v20[0]);
          a3[1] = v7 | (BYTE3(v20[0]) >> 4);
          v9 = BYTE4(v20[0]);
          a3[2] = (BYTE4(v20[0]) >> 1) | (16 * v8);
          v10 = BYTE6(v20[0]);
          a3[3] = (4 * BYTE5(v20[0])) | (v9 << 7) | (BYTE6(v20[0]) >> 3);
          a3[4] = HIBYTE(v20[0]) | (32 * v10);
          break;
      }
    }

    return 1;
  }

  return v3;
}

char *_UTDebreviateTerm(_DWORD *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (!*a1)
  {
    return v2;
  }

  v3 = a1[2];
  if (!v3)
  {
    return 0;
  }

  if (v3 <= 2)
  {
    v8 = 0;
    __str = *v2;
    if (v3 != 1)
    {
      LOBYTE(v8) = v2[1];
    }

    *__error() = 0;
    v4 = strtoul(&__str, 0, 16);
    v5 = v4;
    if (v4)
    {
      if (v4 <= 0x15)
      {
LABEL_9:
        v2 = (&builtins)[v5];
        strlen(v2);
        return v2;
      }
    }

    else if (!*__error())
    {
      goto LABEL_9;
    }

    return *a1;
  }

  return v2;
}

uint64_t _UTDynamicValuesSearchWithBlock::$_0::__invoke(uint64_t a1)
{
  v2 = MEMORY[0x1865D71B0](*(a1 + 56));
  v5 = 0;
  (v2)[2](v2, *(a1 + 8), a1 + 16, *(a1 + 32), a1 + 40, &v5);
  v3 = v5;

  return v3;
}

void __mutateSubscriberCountForNotificationName_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = mutateSubscriberCountForNotificationName_notificationSubscriberCounts;
  mutateSubscriberCountForNotificationName_notificationSubscriberCounts = v0;
}

LaunchServices::LocalizedString *_LSBundleGetLocalizedNameDictionary(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = _LSBundleGet(v7, a2);
  v11 = *(v10 + 112);
  if (!v11)
  {
    v11 = *(v10 + 104);
  }

  v12 = LaunchServices::LocalizedString::Get(v7, v11);
  if (v12)
  {
    v12 = LaunchServices::LocalizedString::getAllUnsafeLocalizations(v12, v7, 0, 0, 0);
    v13 = v12;
    if (v12)
    {
      v14 = _LSDefaultLog(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        _LSBundleGetShortDescription(v7, a2);
        objc_claimAutoreleasedReturnValue();
        _LSBundleGetLocalizedNameDictionary_cold_1();
      }

      v15 = v13;
      goto LABEL_11;
    }
  }

  v16 = _LSDefaultLog(v12);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    _LSBundleGetShortDescription(v7, a2);
    objc_claimAutoreleasedReturnValue();
    _LSBundleGetLocalizedNameDictionary_cold_2();
  }

  v15 = _LSBundleCopyStringDictionaryForKey(v7, a2, v8, *MEMORY[0x1E695E120], v9);
  if (v15)
  {
LABEL_11:
    if ([v15 count] != 1)
    {
      goto LABEL_16;
    }
  }

  v17 = _LSBundleCopyStringDictionaryForKey(v7, a2, v8, *MEMORY[0x1E695E4F8], v9);
  v18 = v17;
  if (v17 && [v17 count] >= 2)
  {
    v19 = v18;

    v15 = v19;
  }

LABEL_16:

  return v15;
}

void mutateSubscriberCountForNotificationName(const __CFString *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (mutateSubscriberCountForNotificationName_onceToken != -1)
  {
    mutateSubscriberCountForNotificationName_cold_1();
  }

  os_unfair_lock_lock(&mutateSubscriberCountForNotificationName_notificationCountLock);
  v4 = [mutateSubscriberCountForNotificationName_notificationSubscriberCounts objectForKey:a1];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 unsignedIntValue];
  }

  else
  {
    v6 = 0;
  }

  v7 = v3[2](v3, v6);
  v8 = v7;
  if (v6 != v7)
  {
    if (v6)
    {
      if (!v7)
      {
        v9 = _LSInstallLog(v7);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138412290;
          v16 = a1;
          _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "unregistering for distributed notification %@ in this process", &v15, 0xCu);
        }

        DistributedCenter = CFNotificationCenterGetDistributedCenter();
        CFNotificationCenterRemoveObserver(DistributedCenter, +[LSApplicationWorkspace defaultWorkspace], a1, 0);
      }
    }

    else
    {
      v11 = _LSInstallLog(v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = a1;
        _os_log_impl(&dword_18162D000, v11, OS_LOG_TYPE_DEFAULT, "registering for distributed notification %@ in this process", &v15, 0xCu);
      }

      v12 = CFNotificationCenterGetDistributedCenter();
      CFNotificationCenterAddObserver(v12, +[LSApplicationWorkspace defaultWorkspace], LSApplicationWorkspaceNotificationCallback, a1, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  v13 = mutateSubscriberCountForNotificationName_notificationSubscriberCounts;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
  [v13 setObject:v14 forKey:a1];

  os_unfair_lock_unlock(&mutateSubscriberCountForNotificationName_notificationCountLock);
}

id getValueForKeyFromPlist(NSString *a1, NSDictionary *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [(NSDictionary *)v4 objectForKey:@"NSExtension"];
  v6 = [v5 objectForKey:@"NSExtensionAttributes"];
  v7 = v6;
  if (!v6 || ([v6 objectForKey:v3], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [(NSDictionary *)v4 objectForKey:v3];
  }

  return v8;
}

void sub_181669758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816698E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UTDynamicGetFirstTag(const __CFString *a1, const __CFString *cf)
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__53;
  v13 = __Block_byref_object_dispose__53;
  v14 = 0;
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFStringGetTypeID()))
  {
    Length = CFStringGetLength(cf);
    if (XCFBufInitWithCFStringRange(v15, cf, 0, Length, 1))
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = ___UTDynamicGetFirstTag_block_invoke;
      v8[3] = &unk_1E6A1E6F8;
      v8[4] = &v9;
      _UTDynamicValuesSearch(0, a1, 2, v15, _UTDynamicValuesSearchWithBlock::$_0::__invoke, v8);
      XCFBufDestroy(v15);
    }
  }

  else
  {
    XCFBufInit(v15);
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_181669A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id a19)
{
  _Block_object_dispose(&a14, 8);

  _Unwind_Resume(a1);
}

uint64_t _UTDynamicEnumerateParentIdentifiers(const __CFString *a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___UTDynamicEnumerateParentIdentifiers_block_invoke;
  v3[3] = &unk_1E6A1E770;
  v3[4] = a2;
  return _UTDynamicValuesSearch(0, a1, 1, &kUTTypeConformsToKeyChars, _UTDynamicValuesSearchWithBlock::$_0::__invoke, v3);
}

BOOL _LSIsPackageExtension(LSContext *a1, int a2, CFStringRef theString)
{
  if (!theString)
  {
    goto LABEL_9;
  }

  Length = CFStringGetLength(theString);
  switch(Length)
  {
    case 3:
      v7 = @"app";
LABEL_8:
      v8 = 1;
      if (CFStringCompare(theString, v7, 1uLL) == kCFCompareEqualTo)
      {
        return v8;
      }

      break;
    case 11:
      v7 = @"placeholder";
      goto LABEL_8;
    case 7:
      v7 = @"service";
      goto LABEL_8;
  }

LABEL_9:
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  StringForCFString = _LSDatabaseGetStringForCFString(a1->db, theString, 1);
  if (StringForCFString)
  {
    db = a1->db;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___ZL28_LSIsClaimedPackageExtensionP9LSContextPK10__CFString_block_invoke;
    v16[3] = &unk_1E6A1B4B8;
    v16[4] = &v17;
    v16[5] = a1;
    _LSDatabaseEnumeratingBindingMap(db, 1, StringForCFString, v16);
  }

  v11 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  v12 = v11 == 0;
  v8 = v11 != 0;
  v12 = !v12 || a2 == 0;
  if (!v12)
  {
    v13 = a1->db;
    TypePackage = _UTTypeGetTypePackage(v13);
    return _UTTypeGetActiveIdentifierForTag(v13, @"public.filename-extension", theString, TypePackage, 0) != 0;
  }

  return v8;
}

void sub_18166A278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSCopyBundleURLForXPCConnection(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    xpc_connection_get_audit_token();
    v4 = _LSCopyBundleURLForAuditToken(&v6, a2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void ___ZL30_LSDNCGetBiDiControlCharactersv_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD48]);
  v1 = 0;
  v4 = v0;
  do
  {
    [v0 addCharactersInRange:{_LSBiDiControlCharacters[v1++], 1}];
    v0 = v4;
  }

  while (v1 != 12);
  v2 = [v4 copy];
  v3 = _LSDNCGetBiDiControlCharacters(void)::result;
  _LSDNCGetBiDiControlCharacters(void)::result = v2;
}

id UMUserManagerFunction(void)
{
  return classUMUserManager;
}

{
  return classUMUserManager;
}

{
  return classUMUserManager;
}

uint64_t _UTDynamicGetPedigree(uint64_t a1, __CFString *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    if (v5)
    {
      v6 = [(__CFString *)a2 copy];
      [v5 addObject:v6];

      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = ___UTDynamicGetPedigree_block_invoke;
      v12 = &unk_1E6A1E798;
      v14 = a1;
      v2 = v5;
      v13 = v2;
      _UTDynamicEnumerateParentIdentifiers(a2, &v9);
    }

    else
    {
      v2 = 0;
    }
  }

  v7 = [v2 copy];

  return v7;
}

CFDictionaryRef UTTypeCopyDeclaration(CFStringRef inUTI)
{
  if (!inUTI || !_UTTypeIdentifierIsDeclarable(inUTI))
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [UTTypeRecord typeRecordWithIdentifier:inUTI];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 declaration];
    v6 = [v5 _expensiveDictionaryRepresentation];
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v6;
}

void ___ZN14LaunchServices19URLPropertyProviderL35prepareLocalizedNameDictionaryValueERNS_8Database7ContextEPU34objcproto23FSNodePropertyProviding11objc_objectP11__FileCachePK10__CFStringPNS0_5StateEPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 unlocalizedNameWithContextIfNeeded:*(a1 + 48) asIfShowingAllExtensions:MEMORY[0x1E695E118]];
  v8 = [v5 unlocalizedNameWithContextIfNeeded:*(a1 + 48) asIfShowingAllExtensions:MEMORY[0x1E695E110]];
  if ([v7 isEqual:v8])
  {
    v9 = v7;

    v8 = v9;
  }

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v10];
  [*(a1 + 40) setObject:v8 forKeyedSubscript:v10];

  objc_autoreleasePoolPop(v6);
}

void _LSDNCWithCharacters(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [(__CFString *)v3 length];
  CharactersPtr = CFStringGetCharactersPtr(v3);
  if (CharactersPtr)
  {
    v4[2](v4, CharactersPtr, v5);
  }

  else
  {
    if (v5 > 0xFF)
    {
      memset(__p, 0, 24);
      std::vector<unsigned short>::__vallocate[abi:nn200100](__p, v5);
    }

    [(__CFString *)v3 getCharacters:__p range:0, v5];
    v4[2](v4, __p, v5);
  }
}

void sub_18166B6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void std::allocator<LSApplicationRecord * {__strong}>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

id *std::vector<LSRecord * {__weak}>::__insert_with_size[abi:nn200100]<LSRecord * const*,LSRecord * const*>(uint64_t *a1, id *a2, void **a3, void **a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 3)
    {
      v16 = v10 - a2;
      if ((v10 - a2) >> 3 >= a5)
      {
        v24 = 8 * a5;
        std::vector<LSRecord * {__weak}>::__move_range(a1, a2, a1[1], &a2[a5]);
        v25 = v5;
        do
        {
          v26 = *v7++;
          objc_storeWeak(v25++, v26);
          v24 -= 8;
        }

        while (v24);
      }

      else
      {
        v32 = (v10 - a2) >> 3;
        v18 = (a3 + v16);
        v19 = a1[1];
        if ((a3 + v16) != a4)
        {
          v20 = a1[1];
          do
          {
            v21 = *v18++;
            objc_initWeak(v20++, v21);
            v19 += 8;
          }

          while (v18 != a4);
        }

        a1[1] = v19;
        if (v32 >= 1)
        {
          std::vector<LSRecord * {__weak}>::__move_range(a1, v5, v10, &v5[a5]);
          if (v10 != v5)
          {
            v22 = v5;
            do
            {
              v23 = *v7++;
              objc_storeWeak(v22++, v23);
              v16 -= 8;
            }

            while (v16);
          }
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + ((v10 - *a1) >> 3);
      if (v12 >> 61)
      {
        std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
      }

      v13 = a2 - v11;
      v14 = v9 - v11;
      if (v14 >> 2 > v12)
      {
        v12 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      v33[4] = a1;
      if (v15)
      {
        std::allocator<LSApplicationRecord * {__strong}>::allocate_at_least[abi:nn200100](a1, v15);
      }

      v27 = (8 * (v13 >> 3));
      v33[0] = 0;
      v33[1] = v27;
      v33[3] = 0;
      v28 = 8 * a5;
      v29 = &v27[a5];
      do
      {
        v30 = *v7++;
        objc_initWeak(v27++, v30);
        v28 -= 8;
      }

      while (v28);
      v33[2] = v29;
      v5 = std::vector<LSRecord * {__weak}>::__swap_out_circular_buffer(a1, v33, v5);
      std::__split_buffer<LSRecord * {__weak}>::~__split_buffer(v33);
    }
  }

  return v5;
}

void sub_18166B9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<LSRecord * {__weak}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<LSRecord * {__weak}>::__swap_out_circular_buffer(uint64_t a1, uint64_t a2, id *from)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<LSRecord * {__weak}>,LSRecord * {__weak}*>(a1, from, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - from;
  *(a1 + 8) = from;
  v9 = (v8 + v7 - from);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<LSRecord * {__weak}>,LSRecord * {__weak}*>(a1, v7, from, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<LSRecord * {__weak}>,LSRecord * {__weak}*>(int a1, id *from, id *a3, id *to)
{
  if (from != a3)
  {
    v6 = from;
    v7 = from;
    do
    {
      objc_moveWeak(to++, v7++);
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      objc_destroyWeak(v6++);
    }
  }
}

uint64_t std::__split_buffer<LSRecord * {__weak}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    objc_destroyWeak((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

id *std::remove[abi:nn200100]<std::__wrap_iter<LSRecord * {__weak}*>,decltype(nullptr)>(id *a1, id *a2)
{
  v3 = std::__find[abi:nn200100]<LSRecord * {__weak}*,LSRecord * {__weak}*,decltype(nullptr),std::__identity>(a1, a2);
  v4 = v3 + 1;
  if (v3 != a2 && v4 != a2)
  {
    do
    {
      WeakRetained = objc_loadWeakRetained(v4);

      if (WeakRetained)
      {
        v7 = objc_loadWeakRetained(v4);
        objc_storeWeak(v3, v7);

        ++v3;
      }

      ++v4;
    }

    while (v4 != a2);
  }

  return v3;
}

id *std::__find[abi:nn200100]<LSRecord * {__weak}*,LSRecord * {__weak}*,decltype(nullptr),std::__identity>(id *location, id *a2)
{
  for (i = location; i != a2; ++i)
  {
    WeakRetained = objc_loadWeakRetained(i);

    if (!WeakRetained)
    {
      break;
    }
  }

  return i;
}

id *std::vector<LSRecord * {__weak}>::erase(uint64_t a1, id *a2, id *location)
{
  if (location != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<LSRecord * {__weak}*,LSRecord * {__weak}*,LSRecord * {__weak}*>(&v9, location, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        objc_destroyWeak(--v7);
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void ___ZN14LaunchServices6RecordL25detachRecordsOnMainThreadEPKP8LSRecordm_block_invoke()
{
  v0 = *LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool;
  v1 = *(LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool + 8);
  if (*LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool != v1)
  {
    v2 = *LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool;
    do
    {
      WeakRetained = objc_loadWeakRetained(v2);
      [WeakRetained _resolveAllProperties];

      ++v2;
    }

    while (v2 != v1);
    do
    {
      v4 = objc_loadWeakRetained(v0);
      [v4 detach];

      ++v0;
    }

    while (v0 != v1);
  }

  v5 = LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool;
  if (LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool)
  {
    v6 = LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool;
    std::vector<LSRecord * {__weak}>::__destroy_vector::operator()[abi:nn200100](&v6);
    MEMORY[0x1865D6250](v5, 0x80C40D6874129);
  }

  LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::detachPool = 0;
  LaunchServices::Record::detachRecordsOnMainThread(LSRecord * const*,unsigned long)::nilScanIndex = 0;
}

uint64_t _UTTypeGetTypeFolder(void *a1)
{
  v1 = a1;
  v2 = [(_LSDatabase *)v1 schema];
  CachedType = _UTTypeGetCachedType(v1, @"public.folder", (*(v2 + 1616) + 108));

  return CachedType;
}

uint64_t _LSAliasMatchesPath_NoIO(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a3;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _LSAliasMatchesPath_NoIO(__strong LSDatabaseRef, LSAliasID, NSString *__strong, LSPathMatchType)"}];
    [v14 handleFailureInFunction:v15 file:@"LSAlias.mm" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"inDB != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _LSAliasMatchesPath_NoIO(__strong LSDatabaseRef, LSAliasID, NSString *__strong, LSPathMatchType)"}];
  [v16 handleFailureInFunction:v17 file:@"LSAlias.mm" lineNumber:236 description:{@"Invalid parameter not satisfying: %@", @"inPath != nil"}];

LABEL_3:
  v10 = _LSAliasGet(v7, a2);
  v11 = v10;
  if (v10)
  {
    v12 = _LSAliasDataMatchesPath_NoIO(v10, v9, a4);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t LaunchServices::URLPropertyProvider::setValues(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = objc_autoreleasePoolPush();
  v14 = [FSNode alloc];
  if (a8)
  {
    v15 = &v46;
  }

  else
  {
    v15 = 0;
  }

  if (a8)
  {
    v46 = 0;
  }

  v33 = [(FSNode *)v14 initWithURL:a1 flags:64 error:v15];
  if (a8)
  {
    v16 = v46;
  }

  else
  {
    v16 = 0;
  }

  if (!v33)
  {
    v24 = 1;
    goto LABEL_31;
  }

  v45 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v38[0] = 0;
  v40 = 0;
  v41 = 0;
  if (a6 < 1)
  {
    v25 = 0;
    v18 = 0;
    v24 = 1;
    goto LABEL_24;
  }

  v30 = a1;
  v31 = a8;
  v32 = v13;
  v17 = 0;
  v18 = 1;
  while (1)
  {
    v19 = *(a3 + 8 * v17);
    if (v19)
    {
      break;
    }

LABEL_18:
    v18 = ++v17 < a6;
    if (a6 == v17)
    {
      v24 = 1;
      goto LABEL_23;
    }
  }

  v20 = *(a4 + 8 * v17);
  v21 = *(*(a5 + 8 * v17) + 32);
  if (!v21)
  {
LABEL_16:
    if (!v20)
    {
      MEMORY[0x1865D5C80](a2, v19);
    }

    goto LABEL_18;
  }

  v37 = v16;
  v22 = v21(&v42, v33, a2, v19, v20, v38, &v37);
  v23 = v37;

  if (v22)
  {
    v16 = v23;
    goto LABEL_16;
  }

  v24 = 0;
  v16 = v23;
LABEL_23:
  v25 = v41;
  a8 = v31;
  v13 = v32;
  a1 = v30;
LABEL_24:

  if (v40 == 1)
  {
  }

  if (v42 && v44 == 1)
  {
    _LSContextDestroy(v42);
  }

  v26 = v43;
  v42 = 0;
  v43 = 0;

  v44 = 0;
  v27 = v45;
  v45 = 0;

  if (a8 != 0 && v18)
  {
    v36 = v16;
    LaunchServices::URLPropertyProvider::normalizeError(a1, 1, &v36);
    v28 = v36;

    v16 = v28;
    v24 = 0;
    *a8 = v16;
  }

LABEL_31:

  objc_autoreleasePoolPop(v13);
  return v24;
}

CFUUIDRef FSEventsCopyUUIDForDevice(dev_t dev)
{
  v11 = *MEMORY[0x1E69E9840];
  if (dev <= 0)
  {
    v3 = fsevent_default_log(*&dev, v1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      FSEventsCopyUUIDForDevice_cold_1();
    }
  }

  if (FSEvents_connect("FSEventsCopyUUIDForDevice"))
  {
    return 0;
  }

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  f2d_get_server_uuid_rpc(FSEvents_f2d_public_port, dev, v9);
  if (LODWORD(v9[0]) == 1429032782 && *(v9 + 3) == 1145656661)
  {
    return 0;
  }

  v7 = CFStringCreateWithBytes(0, v9, 36, 0x600u, 0);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v4 = CFUUIDCreateFromString(0, v7);
  CFRelease(v8);
  return v4;
}

uint64_t f2d_get_server_uuid_rpc(int a1, int a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  *&msg[20] = 0u;
  memset(v14, 0, sizeof(v14));
  v13 = 0u;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x101D200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v6 = *&msg[12];
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(msg, 3162115, 0x24u, 0x50u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&msg[20] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&msg[20] == 66102)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 72)
          {
            if (!*&msg[8])
            {
              v8 = *&msg[32];
              if (!*&msg[32])
              {
                v11 = *v14;
                *a3 = v13;
                *(a3 + 16) = v11;
                *(a3 + 32) = *&v14[16];
                return v8;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v9 = 1;
            }

            else
            {
              v9 = *&msg[32] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  return v8;
}

FSEventStreamEventId FSEventsGetCurrentEventId(void)
{
  v2 = 0;
  v0 = FSEvents_connect("FSEventsGetCurrentEventId");
  result = 0;
  if (!v0)
  {
    f2d_get_current_event_id_rpc(FSEvents_f2d_public_port, &v2);
    return v2;
  }

  return result;
}

uint64_t f2d_get_current_event_id_rpc(int a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x101D300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v5 = *&msg[12];
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(msg, 3162115, 0x18u, 0x34u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&msg[20] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&msg[20] == 66103)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v7 = *&msg[32];
              if (!*&msg[32])
              {
                *a2 = v11;
                return v7;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v8 = 1;
            }

            else
            {
              v8 = *&msg[32] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  return v7;
}

uint64_t LaunchServices::URLPropertyProvider::prepareApplicationFlags(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = +[_LSDServiceDomain defaultServiceDomain];
  v11 = LaunchServices::Database::Context::_get(a1, v10, 0);

  if (!v11)
  {
    if (a6)
    {
      v24 = +[_LSDServiceDomain defaultServiceDomain];
      v25 = LaunchServices::Database::Context::_get(a1, v24, 0);

      if (v25)
      {
        v26 = 0;
      }

      else
      {
        v26 = a1[3];
        v29 = v26;
      }

      goto LABEL_28;
    }

    return 0;
  }

  v30 = 0;
  v12 = _LSFindOrFindOrRegisterBundleNode(v11, a2, 0, 0x2000000, 0, 0, &v30);
  if (v12)
  {
    v13 = v12 == -10811;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    if (a6)
    {
      v26 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v12, 0, "prepareApplicationFlags", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 994);
      v28 = v26;
LABEL_28:
      result = 0;
      *a6 = v26;
      return result;
    }

    return 0;
  }

  if (!v30 || ((clas = v30->_clas, v15 = clas > 0x10, v16 = (1 << clas) & 0x14004, !v15) ? (v17 = v16 == 0) : (v17 = 1), v17))
  {
    MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E228], 0);
    v22 = *MEMORY[0x1E695E220];
    v23 = a3;
    v21 = 0;
  }

  else
  {
    v18 = *MEMORY[0x1E695E4D0];
    v19 = *MEMORY[0x1E695E4C0];
    if ((*(&v30->_clas + 1) & 0x40000) != 0)
    {
      v20 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v20 = *MEMORY[0x1E695E4C0];
    }

    MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E228], v20);
    if ((*(&v30->_clas + 1) & 0x200000) != 0)
    {
      v21 = v18;
    }

    else
    {
      v21 = v19;
    }

    v22 = *MEMORY[0x1E695E220];
    v23 = a3;
  }

  MEMORY[0x1865D5CD0](v23, v22, v21);
  return 1;
}

uint64_t LaunchServices::URLPropertyProvider::prepareVolumeLocalizedNameValue(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v9 = [a2 canIssueIO];
  if (v9)
  {
    v10 = [a2 volumeNodeWithFlags:16 error:a6];
    v11 = v10;
    if (v10)
    {
      v22 = 0;
      v12 = [v10 getResourceValue:&v22 forKey:*MEMORY[0x1E695DC10] options:3 error:a6];
      if (v12)
      {
        MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695ED60], v22);
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = _LSDefaultLog(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LaunchServices::URLPropertyProvider::prepareVolumeLocalizedNameValue(v13, v14, v15, v16, v17, v18, v19, v20);
    }

    if (!a6)
    {
      return 0;
    }

    v23 = *MEMORY[0x1E696A278];
    v24[0] = @"can't provide with mimic";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v11, "prepareVolumeLocalizedNameValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 860);
    *a6 = v12 = 0;
  }

  return v12;
}

uint64_t (*initBRCopyDisplayNameForContainerAtURL(const __CFURL *a1, const __CFString *a2))(const __CFURL *, const __CFString *)
{
  v4 = CloudDocsLibrary(void)::frameworkLibrary;
  if (!CloudDocsLibrary(void)::frameworkLibrary)
  {
    v4 = dlopen("/System/Library/PrivateFrameworks/CloudDocs.framework/CloudDocs", 2);
    CloudDocsLibrary(void)::frameworkLibrary = v4;
  }

  result = dlsym(v4, "BRCopyDisplayNameForContainerAtURL");
  softLinkBRCopyDisplayNameForContainerAtURL = result;
  if (result)
  {

    return result(a1, a2);
  }

  return result;
}

void std::vector<LSRecord * {__weak}>::__destroy_vector::operator()[abi:nn200100](id ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        objc_destroyWeak(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ___ZN14LaunchServices13PropertyListsL27filterValueFromPropertyListEP11objc_objectP10objc_classS4__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

void receive_and_dispatch_rcv_msg(uint64_t a1)
{
  v1 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9AC8];
  v3 = MEMORY[0x1EEE9AC00](a1);
  v4 = (v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v15 - v5);
  v7 = mach_msg(v4, 50331910, 0, v2, v1, 0, 0);
  if (!v7)
  {
LABEL_8:
    v10 = (v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
    goto LABEL_9;
  }

  if (v7 != 268451844)
  {
    v14 = fsevent_default_log(v7, v8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      receive_and_dispatch_rcv_msg_cold_2();
    }

    goto LABEL_8;
  }

  v9 = v4->msgh_size + 68;
  v10 = malloc_type_malloc(v9, 0x1000040504FFAC1uLL);
  v11 = mach_msg(v10, 262, 0, v9, v1, 0, 0);
  if (v11)
  {
    v13 = fsevent_default_log(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      receive_and_dispatch_rcv_msg_cold_1();
    }
  }

LABEL_9:
  *v6 = 0;
  v6[1] = v2;
  FSEventsD2F_server(v10, v6);
  if (v10 != v4)
  {
    free(v10);
  }
}

uint64_t FSEventsD2F_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  if (a1[5] == 67000)
  {
    _Xcallback_rpc(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

void _Xcallback_rpc(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 4 && *(a1 + 4) == 120)
  {
    if (*(a1 + 39) == 1 && *(a1 + 55) == 1 && *(a1 + 71) == 1 && *(a1 + 87) == 1)
    {
      v3 = *(a1 + 40) >> 2;
      if (v3 == *(a1 + 104))
      {
        v4 = *(a1 + 56) >> 2;
        if (v4 == *(a1 + 108))
        {
          v5 = *(a1 + 72) >> 3;
          if (v5 == *(a1 + 112) && *(a1 + 88) == *(a1 + 116))
          {
            *(a2 + 32) = implementation_callback_rpc(*(a1 + 12), *(a1 + 100), *(a1 + 28), v3, *(a1 + 44), v4, *(a1 + 60), v5, *(a1 + 76), *(a1 + 88));
            mig_deallocate(*(a1 + 76), *(a1 + 88));
            *(a1 + 76) = 0;
            *(a1 + 88) = 0;
            mig_deallocate(*(a1 + 60), *(a1 + 72));
            *(a1 + 60) = 0;
            *(a1 + 72) = 0;
            mig_deallocate(*(a1 + 44), *(a1 + 56));
            *(a1 + 44) = 0;
            *(a1 + 56) = 0;
            mig_deallocate(*(a1 + 28), *(a1 + 40));
            *(a1 + 28) = 0;
            *(a1 + 40) = 0;
            return;
          }
        }
      }
    }

    v6 = -300;
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

uint64_t implementation_callback_rpc(_BOOL8 a1, uint64_t a2, uint64_t a3, int a4, _BYTE *a5, int a6, void *a7, int a8, char *a9, int a10)
{
  v15 = a2;
  v165 = *MEMORY[0x1E69E9840];
  valuePtr = a1;
  if (a2 != a4)
  {
    v16 = fsevent_default_log(a1, a2);
    a1 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (a1)
    {
      implementation_callback_rpc_cold_1();
    }
  }

  if (v15 != a6)
  {
    v17 = fsevent_default_log(a1, a2);
    a1 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (a1)
    {
      implementation_callback_rpc_cold_2();
    }
  }

  if (v15 == a8 || (v18 = fsevent_default_log(a1, a2), !(a1 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))))
  {
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_84:
    v76 = fsevent_default_log(a1, a2);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_18();
    }

    return 4294967278;
  }

  implementation_callback_rpc_cold_3();
  if (!v15)
  {
    goto LABEL_84;
  }

LABEL_10:
  v19 = *MEMORY[0x1E695E480];
  v20 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  if (!v20)
  {
    v38 = fsevent_default_log(0, v21);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_17();
    }

    return 4294967279;
  }

  v22 = v20;
  pthread_mutex_lock(&FSEvents_streamDict_mutex);
  Value = CFDictionaryGetValue(FSEvents_streamDict, v22);
  pthread_mutex_unlock(&FSEvents_streamDict_mutex);
  CFRelease(v22);
  if (!Value)
  {
    v40 = fsevent_default_log(v24, v25);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_16();
    }

    return 4294967286;
  }

  v26 = 0;
  v27 = 0;
  LODWORD(v28) = 0;
  LODWORD(v155) = a10;
  v154 = a9;
  v150 = v15;
  do
  {
    v29 = *&a5[v26];
    v30 = (v29 << 8) & 0x1000;
    if ((v29 & 0x20) != 0)
    {
      v30 = 4096;
    }

    v31 = vandq_s8(vshlq_u32(vdupq_n_s32(v29), xmmword_1817E8990), xmmword_1817E89A0);
    v32 = vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
    v33 = v32.i32[0] | v29 & 0x100000 | v32.i32[1] | (v29 >> 4) & 0x40000 | (((v29 >> 19) & 1) << 21) | (v29 << 8) & 0x400F00 | v30 & 0xFFFFFFF8 | (v29 >> 29);
    if ((v29 & 0x40) != 0)
    {
      v33 |= 0xA000u;
    }

    v34 = (v29 << 6) & 0x8000;
    if ((v29 & 0x400) != 0)
    {
      v34 = 0x8000;
    }

    *&a5[v26] = (v29 >> 2) & 0x80000 | (((v29 >> 8) & 1) << 14) | (((v29 >> 7) & 1) << 8) | v34 | v33;
    if ((v33 & 6) != 0)
    {
      v35 = *(Value + 18);
      v27 = 1;
    }

    else
    {
      v35 = 1;
    }

    v28 = (v35 + v28);
    v26 += 4;
  }

  while (4 * v15 != v26);
  v36 = *(Value + 46);
  if ((v36 & 0x40) != 0)
  {
    v37 = malloc_type_calloc(v28, 8uLL, 0x100004000313F17uLL);
    if ((*(Value + 46) & 0x100) != 0)
    {
      goto LABEL_25;
    }

LABEL_33:
    v153 = 0;
    goto LABEL_34;
  }

  v37 = 0;
  if ((v36 & 0x100) == 0)
  {
    goto LABEL_33;
  }

LABEL_25:
  v153 = malloc_type_calloc(v28, 4uLL, 0x100004052888210uLL);
LABEL_34:
  if (v15 == 1 && (*a5 & 0x10) != 0)
  {
    if (!Value[190])
    {
      return 0;
    }

    Value[190] = 0;
  }

  if (!Value[188])
  {
    return 4294966297;
  }

  v152 = malloc_type_malloc(8 * v28, 0x10040436913F5uLL);
  if (!v152)
  {
    v71 = fsevent_default_log(0, v41);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_15();
    }

    v45 = 0;
    v39 = 4294967285;
    goto LABEL_215;
  }

  *&v147 = a3;
  v42 = malloc_type_calloc(v28, 4uLL, 0x100004052888210uLL);
  v45 = v42;
  v151 = v37;
  if (!v42)
  {
    v72 = fsevent_default_log(0, v43);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_14();
    }

    v73 = 0;
    v74 = 0;
    v75 = 0;
    v48 = 0;
    v52 = 0;
    v39 = 4294967285;
    goto LABEL_199;
  }

  v148 = v42;
  v143 = 8 * v28;
  if (!v27)
  {
    if (!v28)
    {
      v52 = a7;
      v48 = a5;
      goto LABEL_127;
    }

    v149 = a7;
    v146 = v19;
    v142 = 0;
    v77 = (v147 + 4);
    *&v44 = 136315394;
    v147 = v44;
    v78 = v152;
    v79 = v153;
    v80 = v28;
    v81 = v155;
    while (1)
    {
      if (*(v77 - 1) >= v81)
      {
        v82 = fsevent_default_log(v42, v43);
        v42 = os_log_type_enabled(v82, OS_LOG_TYPE_ERROR);
        v81 = v155;
        if (v42)
        {
          *buf = v147;
          v162 = "implementation_callback_rpc";
          v163 = 2080;
          v164 = "path_offsets[i] < paths_blobCnt";
          _os_log_error_impl(&dword_18162D000, v82, OS_LOG_TYPE_ERROR, "%s(): failed assertion '%s'\n", buf, 0x16u);
          v81 = v155;
        }
      }

      v83 = *(v77 - 1);
      if (v83 >= v81)
      {
        v84 = "ERROR: failed assertion: path_offsets[i] < paths_blobCnt";
      }

      else
      {
        v84 = v154 + v83;
      }

      *v78 = v84;
      if (v151)
      {
        v42 = strlen(v84);
        v81 = v155;
        v85 = v155;
        if (v28 != 1)
        {
          v85 = v155;
          if (v80 != 1)
          {
            v85 = *v77;
          }
        }

        v86 = v83 + v42 + 1;
        if (v86 == v85)
        {
          v87 = 0;
        }

        else
        {
          if (v86 + 8 > v85)
          {
            goto LABEL_105;
          }

          v87 = *(v154 + v86);
        }

        *v37 = v87;
      }

LABEL_105:
      if (v153)
      {
        v42 = strlen(v84);
        v81 = v155;
        v88 = v155;
        if (v28 != 1)
        {
          v88 = v155;
          if (v80 != 1)
          {
            v88 = *v77;
          }
        }

        v89 = v83 + v42 + 9;
        if (v89 == v88)
        {
          v90 = 0;
LABEL_113:
          *v79 = v90;
          goto LABEL_114;
        }

        if (v89 + 4 <= v88)
        {
          v90 = *(v154 + v89);
          goto LABEL_113;
        }
      }

LABEL_114:
      ++v79;
      v37 = (v37 + 8);
      ++v77;
      ++v78;
      if (!--v80)
      {
        v45 = v148;
        v52 = v149;
        v48 = a5;
        v27 = v142;
        v19 = v146;
        goto LABEL_127;
      }
    }
  }

  v149 = a7;
  v46 = malloc_type_malloc(4 * v28, 0x100004052888210uLL);
  if (!v46)
  {
    v91 = fsevent_default_log(0, v47);
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_6();
    }

    v73 = 0;
    v74 = 0;
    v75 = 0;
    v48 = 0;
    v52 = 0;
    v39 = 4294967281;
    goto LABEL_199;
  }

  v48 = v46;
  v49 = malloc_type_malloc(v143, 0x100004000313F17uLL);
  if (!v49)
  {
    v92 = fsevent_default_log(0, v50);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_5();
    }

    v73 = 0;
    v74 = 0;
    v75 = 0;
    v52 = 0;
    v39 = 4294967280;
    goto LABEL_199;
  }

  v52 = v49;
  v146 = v19;
  v142 = v27;
  v53 = 0;
  v54 = 0;
  *&v145 = v147 + 4;
  *&v51 = 136315394;
  v141 = v51;
  v55 = v150;
  v56 = v155;
  do
  {
    v57 = *&a5[4 * v53];
    v58 = *(v149 + v53);
    if ((v57 & 6) == 0)
    {
      if (*(v147 + 4 * v53) >= v56)
      {
        v144 = fsevent_default_log(v49, v55);
        v49 = os_log_type_enabled(v144, OS_LOG_TYPE_ERROR);
        v56 = v155;
        if (v49)
        {
          *buf = v141;
          v162 = "implementation_callback_rpc";
          v163 = 2080;
          v164 = "path_offsets[i] < paths_blobCnt";
          _os_log_error_impl(&dword_18162D000, v144, OS_LOG_TYPE_ERROR, "%s(): failed assertion '%s'\n", buf, 0x16u);
          v56 = v155;
        }
      }

      v63 = *(v147 + 4 * v53);
      v64 = v154 + v63;
      if (v63 >= v56)
      {
        v64 = "ERROR: failed assertion: path_offsets[i] < paths_blobCnt";
      }

      v152[v54] = v64;
      if (v151)
      {
        v49 = strlen(v152[v53]);
        v56 = v155;
        v65 = v155;
        if (v28 != 1)
        {
          v65 = v155;
          if (v53 != v28)
          {
            v65 = *(v145 + 4 * v53);
          }
        }

        v66 = v63 + v49 + 1;
        if (v66 == v65)
        {
          v67 = 0;
        }

        else
        {
          if (v66 + 8 > v65)
          {
            goto LABEL_64;
          }

          v67 = *(v154 + v66);
        }

        *(v151 + v54) = v67;
      }

LABEL_64:
      v55 = v150;
      if (v153)
      {
        v49 = strlen(v152[v53]);
        v56 = v155;
        v68 = v155;
        if (v28 != 1)
        {
          v68 = v155;
          if (v53 != v28)
          {
            v68 = *(v145 + 4 * v53);
          }
        }

        v69 = v63 + v49 + 9;
        if (v69 == v68)
        {
          v70 = 0;
          v55 = v150;
LABEL_72:
          v153[v54] = v70;
          goto LABEL_73;
        }

        v55 = v150;
        if (v69 + 4 <= v68)
        {
          v70 = *(v154 + v69);
          goto LABEL_72;
        }
      }

LABEL_73:
      *&v48[4 * v54] = v57;
      v52[v54++] = v58;
      v45 = v148;
      goto LABEL_74;
    }

    v59 = *(Value + 9);
    if (v59 >= 1)
    {
      v60 = 0;
      v61 = v152;
      do
      {
        v62 = v54 + v60;
        v61[v62] = *(*(Value + 10) + 8 * v60);
        v45[v62] = *(*(Value + 11) + 4 * v60);
        *&v48[4 * v62] = v57 | 1;
        v52[v62] = v58;
        ++v60;
      }

      while (v59 != v60);
      v54 += v60;
    }

LABEL_74:
    v53 = v53 + 1;
  }

  while (v53 != v55);
  if (v54 == v28)
  {
    v27 = v142;
    v19 = v146;
    goto LABEL_128;
  }

  v93 = fsevent_default_log(v49, v55);
  v27 = v142;
  v19 = v146;
  if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
  {
    implementation_callback_rpc_cold_4();
  }

LABEL_127:
  v55 = v150;
LABEL_128:
  v94 = 0;
  v95 = *(Value + 21);
  if (v95 == -1)
  {
    v95 = 0;
  }

  do
  {
    if (v52[v94] > v95)
    {
      v95 = v52[v94];
    }

    v94 = v94 + 1;
  }

  while (v55 != v94);
  *(Value + 21) = v95;
  v96 = *(Value + 46);
  if ((v96 & 0x40) == 0)
  {
    if ((v96 & 1) == 0)
    {
      v75 = 0;
      goto LABEL_158;
    }

    v126 = malloc_type_calloc(v28, 8uLL, 0x6004044C4A2DFuLL);
    if (!v126)
    {
      v136 = fsevent_default_log(0, v127);
      if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
      {
        implementation_callback_rpc_cold_13();
      }

      v73 = 0;
      v74 = 0;
      v75 = 0;
      v39 = 4294967284;
      goto LABEL_199;
    }

    v73 = v126;
    if (v28)
    {
      v128 = 0;
      while (1)
      {
        v129 = caller_path(v152[v128], v45[v128]);
        v130 = CFStringCreateWithFileSystemRepresentation(v19, v129);
        if (!v130)
        {
          break;
        }

        v73[v128++] = v130;
        if (v28 == v128)
        {
          goto LABEL_176;
        }
      }

      v137 = fsevent_default_log(0, v131);
      if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
      {
        implementation_callback_rpc_cold_11();
      }

      v74 = 0;
      v75 = 0;
      v39 = 4294967283;
      goto LABEL_199;
    }

LABEL_176:
    v132 = CFArrayCreate(v19, v73, v28, MEMORY[0x1E695E9C0]);
    if (v132)
    {
      v74 = v132;
      v75 = 0;
LABEL_159:
      if (*(Value + 2) && Value[188] && !Value[189])
      {
        FSEventStreamRetain(Value);
        v117 = *(Value + 46);
        if ((v117 & 0x40) != 0)
        {
          (*(Value + 2))(Value, *(Value + 4), v28, v75, v48, v52);
        }

        else if (v117)
        {
          (*(Value + 2))(Value, *(Value + 4), v28, v74, v48, v52);
        }

        else
        {
          v149 = v75;
          v142 = v27;
          v154 = &v141;
          MEMORY[0x1EEE9AC00](v116);
          if (v143 >= 0x200)
          {
            v119 = 512;
          }

          else
          {
            v119 = v143;
          }

          v155 = (&v141 - ((v118 + 15) & 0xFFFFFFFF0));
          bzero(v155, v119);
          if (v28)
          {
            v120 = v28;
            v121 = v155;
            v122 = v148;
            v123 = v152;
            do
            {
              v125 = *v123++;
              v124 = v125;
              LODWORD(v125) = *v122++;
              *v121 = caller_path(v124, v125);
              v121 = (v121 + 8);
              --v120;
            }

            while (v120);
          }

          (*(Value + 2))(Value, *(Value + 4), v28, v155, v48, v52);
          v27 = v142;
          v45 = v148;
          v75 = v149;
        }

        if (*(Value + 45))
        {
          pthread_mutex_lock((Value + 240));
          pthread_cond_signal((Value + 304));
          pthread_mutex_unlock((Value + 240));
        }

        FSEventStreamRelease(Value);
      }

      v39 = 0;
      goto LABEL_199;
    }

    v138 = fsevent_default_log(0, v133);
    if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_12();
    }

LABEL_181:
    v74 = 0;
    v75 = 0;
    v39 = 4294967282;
    goto LABEL_199;
  }

  Mutable = CFArrayCreateMutable(v19, v55, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    v134 = fsevent_default_log(0, v98);
    if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_10();
    }

    v73 = 0;
    goto LABEL_181;
  }

  v75 = Mutable;
  if (!v28)
  {
LABEL_158:
    v74 = 0;
    v73 = 0;
    goto LABEL_159;
  }

  v146 = v19;
  v100 = 0;
  *&v99 = 136315394;
  v145 = v99;
  v154 = v151;
  v149 = Mutable;
  v150 = v153;
  while (1)
  {
    v101 = v152[v100];
    v102 = v45[v100];
    v155 = CFDictionaryCreateMutable(v146, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v155)
    {
      break;
    }

    v104 = caller_path(v101, v102);
    v105 = CFStringCreateWithFileSystemRepresentation(v146, v104);
    if (v105)
    {
      v107 = v105;
      CFDictionaryAddValue(v155, @"path", v105);
      CFRelease(v107);
      v45 = v148;
      v75 = v149;
    }

    else
    {
      *&v147 = fsevent_default_log(0, v106);
      v45 = v148;
      v75 = v149;
      if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
      {
        *buf = v145;
        v162 = "implementation_callback_rpc";
        v163 = 2080;
        v164 = v104;
        _os_log_error_impl(&dword_18162D000, v147, OS_LOG_TYPE_ERROR, "%s: ERROR: CFStringCreateWithFileSystemRepresentation('%s') failed", buf, 0x16u);
      }
    }

    if ((*&a5[4 * v100] & 0x77FF00) != 0)
    {
      if (v151 && *v154)
      {
        v108 = CFNumberCreate(v146, kCFNumberSInt64Type, v154);
        if (v108)
        {
          v110 = v108;
          CFDictionaryAddValue(v155, @"fileID", v108);
          CFRelease(v110);
        }

        else
        {
          v111 = fsevent_default_log(0, v109);
          if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
          {
            implementation_callback_rpc_cold_7(v159, &v160, v111);
          }
        }
      }

      if (v153 && *v150)
      {
        v112 = CFNumberCreate(v146, kCFNumberSInt32Type, v150);
        if (v112)
        {
          v114 = v112;
          CFDictionaryAddValue(v155, @"docID", v112);
          CFRelease(v114);
        }

        else
        {
          v115 = fsevent_default_log(0, v113);
          if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
          {
            implementation_callback_rpc_cold_7(v157, &v158, v115);
          }
        }
      }
    }

    CFArraySetValueAtIndex(v75, v100, v155);
    CFRelease(v155);
    ++v100;
    v150 += 4;
    v154 = (v154 + 8);
    if (v28 == v100)
    {
      goto LABEL_158;
    }
  }

  v135 = fsevent_default_log(0, v103);
  if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
  {
    implementation_callback_rpc_cold_9();
  }

  v73 = 0;
  v74 = 0;
  v39 = 4294967281;
  v45 = v148;
  v75 = v149;
LABEL_199:
  free(v152);
  if (v48 && v27)
  {
    free(v48);
  }

  if (v52 && v27)
  {
    free(v52);
  }

  v37 = v151;
  if (v73)
  {
    if (v28)
    {
      v139 = v73;
      do
      {
        if (!*v139)
        {
          break;
        }

        CFRelease(*v139++);
        --v28;
      }

      while (v28);
    }

    free(v73);
  }

  if (v74)
  {
    CFRelease(v74);
  }

  if (v75)
  {
    CFRelease(v75);
  }

LABEL_215:
  if (v37)
  {
    free(v37);
  }

  free(v45);
  return v39;
}