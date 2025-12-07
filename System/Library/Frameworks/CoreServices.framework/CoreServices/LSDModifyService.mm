@interface LSDModifyService
@end

@implementation LSDModifyService

void __33___LSDModifyService_XPCInterface__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEFA3FE0];
  v3 = +[_LSDModifyService XPCInterface]::result;
  +[_LSDModifyService XPCInterface]::result = v2;

  if (+[_LSDModifyService XPCInterface]::result || ([MEMORY[0x1E696AAA8] currentHandler], v65 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v65, "handleFailureInMethod:object:file:lineNumber:description:", *(a1 + 32), *(a1 + 40), @"LSDModifyService.mm", 94, @"Failed to create XPC interface object."), v65, +[_LSDModifyService XPCInterface]::result))
  {
    v64 = XNSGetPropertyListClasses(v4);
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setDatabaseIsSeeded_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerItemInfo_alias_diskImageAlias_bundleURL_installationPlist_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerItemInfo_alias_diskImageAlias_bundleURL_installationPlist_completionHandler_ argumentIndex:1 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerItemInfo_alias_diskImageAlias_bundleURL_installationPlist_completionHandler_ argumentIndex:2 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerItemInfo_alias_diskImageAlias_bundleURL_installationPlist_completionHandler_ argumentIndex:3 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClasses:v64 forSelector:sel_registerItemInfo_alias_diskImageAlias_bundleURL_installationPlist_completionHandler_ argumentIndex:4 ofReply:0];
    v5 = +[_LSDModifyService XPCInterface]::result;
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    [v5 setClasses:v8 forSelector:sel_registerItemInfo_alias_diskImageAlias_bundleURL_installationPlist_completionHandler_ argumentIndex:2 ofReply:1];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerItemInfo_alias_diskImageAlias_bundleURL_installationPlist_completionHandler_ argumentIndex:4 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterBundleUnit_options_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerContainerURL_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerContainerURL_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_updateContainerUnit_completionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_updateContainerUnit_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerExtensionPoint_platform_declaringURL_withInfo_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClasses:v64 forSelector:sel_registerExtensionPoint_platform_declaringURL_withInfo_completionHandler_ argumentIndex:3 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerExtensionPoint_platform_declaringURL_withInfo_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterExtensionPoint_platform_withVersion_parentBundleUnit_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterExtensionPoint_platform_withVersion_parentBundleUnit_completionHandler_ argumentIndex:2 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterExtensionPoint_platform_withVersion_parentBundleUnit_completionHandler_ argumentIndex:3 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterExtensionPoint_platform_withVersion_parentBundleUnit_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setHandler_version_roles_forContentType_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setHandler_version_roles_forContentType_completionHandler_ argumentIndex:3 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setHandler_version_roles_forContentType_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_removeHandlerForContentType_roles_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_removeHandlerForContentType_roles_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setHandler_version_forURLScheme_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setHandler_version_forURLScheme_completionHandler_ argumentIndex:2 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setHandler_version_forURLScheme_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_removeHandlerForURLScheme_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_removeHandlerForURLScheme_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_relaxApplicationTypeRequirements_forBundleIdentifier_completionHandler_ argumentIndex:1 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_relaxApplicationTypeRequirements_forBundleIdentifier_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_resetServerStoreWithCompletionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_returnSaveToken_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClasses:v64 forSelector:sel_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_returnSaveToken_completionHandler_ argumentIndex:1 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClasses:v64 forSelector:sel_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_returnSaveToken_completionHandler_ argumentIndex:2 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClasses:v64 forSelector:sel_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_returnSaveToken_completionHandler_ argumentIndex:3 ofReply:0];
    v9 = [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_returnSaveToken_completionHandler_ argumentIndex:5 ofReply:0];
    v10 = +[_LSDModifyService XPCInterface]::result;
    v11 = pendingSaveTokenInterface(v9);
    [v10 setInterface:v11 forSelector:sel_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_returnSaveToken_completionHandler_ argumentIndex:1 ofReply:1];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_returnSaveToken_completionHandler_ argumentIndex:2 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_removeDatabaseStoreOnNextOpportunity_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_rebuildApplicationDatabasesForSystem_internal_user_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_installApplication_atURL_withOptions_installType_reply_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_installApplication_atURL_withOptions_installType_reply_ argumentIndex:1 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClasses:v64 forSelector:sel_installApplication_atURL_withOptions_installType_reply_ argumentIndex:2 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClasses:v64 forSelector:sel_installApplication_atURL_withOptions_installType_reply_ argumentIndex:0 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_installApplication_atURL_withOptions_installType_reply_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_uninstallApplication_withOptions_uninstallType_reply_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClasses:v64 forSelector:sel_uninstallApplication_withOptions_uninstallType_reply_ argumentIndex:1 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClasses:v64 forSelector:sel_uninstallApplication_withOptions_uninstallType_reply_ argumentIndex:0 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_uninstallApplication_withOptions_uninstallType_reply_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterApplicationAtURL_operationUUID_reply_ argumentIndex:0 ofReply:0];
    v12 = [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterApplicationAtURL_operationUUID_reply_ argumentIndex:1 ofReply:0];
    v13 = +[_LSDModifyService XPCInterface]::result;
    v14 = pendingSaveTokenInterface(v12);
    [v13 setInterface:v14 forSelector:sel_unregisterApplicationAtURL_operationUUID_reply_ argumentIndex:0 ofReply:1];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterApplicationAtURL_operationUUID_reply_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterPluginAtURL_operationUUID_reply_ argumentIndex:0 ofReply:0];
    v15 = [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterPluginAtURL_operationUUID_reply_ argumentIndex:1 ofReply:0];
    v16 = +[_LSDModifyService XPCInterface]::result;
    v17 = pendingSaveTokenInterface(v15);
    [v16 setInterface:v17 forSelector:sel_unregisterPluginAtURL_operationUUID_reply_ argumentIndex:0 ofReply:1];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterPluginAtURL_operationUUID_reply_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClasses:v64 forSelector:sel_registerBuiltinApplication_personaUniqueStrings_operationUUID_reply_ argumentIndex:0 ofReply:0];
    v18 = +[_LSDModifyService XPCInterface]::result;
    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    [v18 setClasses:v21 forSelector:sel_registerBuiltinApplication_personaUniqueStrings_operationUUID_reply_ argumentIndex:1 ofReply:0];

    v22 = [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerBuiltinApplication_personaUniqueStrings_operationUUID_reply_ argumentIndex:2 ofReply:0];
    v23 = +[_LSDModifyService XPCInterface]::result;
    v24 = pendingSaveTokenInterface(v22);
    [v23 setInterface:v24 forSelector:sel_registerBuiltinApplication_personaUniqueStrings_operationUUID_reply_ argumentIndex:0 ofReply:1];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerBuiltinApplication_personaUniqueStrings_operationUUID_reply_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClasses:v64 forSelector:sel_registerBuiltinAppex_operationUUID_reply_ argumentIndex:0 ofReply:0];
    v25 = [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerBuiltinAppex_operationUUID_reply_ argumentIndex:1 ofReply:0];
    v26 = +[_LSDModifyService XPCInterface]::result;
    v27 = pendingSaveTokenInterface(v25);
    [v26 setInterface:v27 forSelector:sel_registerBuiltinAppex_operationUUID_reply_ argumentIndex:0 ofReply:1];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerBuiltinAppex_operationUUID_reply_ argumentIndex:1 ofReply:1];
    v28 = [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_refreshExtensionPointsWithOperationUUID_reply_ argumentIndex:0 ofReply:0];
    v29 = +[_LSDModifyService XPCInterface]::result;
    v30 = pendingSaveTokenInterface(v28);
    [v29 setInterface:v30 forSelector:sel_refreshExtensionPointsWithOperationUUID_reply_ argumentIndex:0 ofReply:1];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_refreshExtensionPointsWithOperationUUID_reply_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_refreshContentInFrameworkAtURL_reply_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_refreshContentInFrameworkAtURL_reply_ argumentIndex:0 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterApplicationsAtMountPoint_operationUUID_reply_ argumentIndex:0 ofReply:0];
    v31 = [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterApplicationsAtMountPoint_operationUUID_reply_ argumentIndex:1 ofReply:0];
    v32 = +[_LSDModifyService XPCInterface]::result;
    v33 = pendingSaveTokenInterface(v31);
    [v32 setInterface:v33 forSelector:sel_unregisterApplicationsAtMountPoint_operationUUID_reply_ argumentIndex:0 ofReply:1];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterApplicationsAtMountPoint_operationUUID_reply_ argumentIndex:1 ofReply:1];
    v34 = +[_LSDModifyService XPCInterface]::result;
    v35 = MEMORY[0x1E695DFD8];
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = [v35 setWithObjects:{v36, v37, objc_opt_class(), 0}];
    [v34 setClasses:v38 forSelector:sel_setUpdateAvailabilities_completionHandler_ argumentIndex:0 ofReply:0];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setUpdateAvailabilities_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_garbageCollectDatabaseWithCompletionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClasses:v64 forSelector:sel_setPreferenceValue_forKey_forApplicationAtURL_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setPreferenceValue_forKey_forApplicationAtURL_completionHandler_ argumentIndex:1 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setPreferenceValue_forKey_forApplicationAtURL_completionHandler_ argumentIndex:2 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setPreferenceValue_forKey_forApplicationAtURL_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClasses:v64 forSelector:sel_setPreferenceValueForCallingApplication_forKey_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setPreferenceValueForCallingApplication_forKey_completionHandler_ argumentIndex:1 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setPreferenceValueForCallingApplication_forKey_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClasses:v64 forSelector:sel_performPostInstallationRegistration_personaUniqueStrings_operationUUID_reply_ argumentIndex:0 ofReply:0];
    v39 = +[_LSDModifyService XPCInterface]::result;
    v40 = MEMORY[0x1E695DFD8];
    v41 = objc_opt_class();
    v42 = [v40 setWithObjects:{v41, objc_opt_class(), 0}];
    [v39 setClasses:v42 forSelector:sel_performPostInstallationRegistration_personaUniqueStrings_operationUUID_reply_ argumentIndex:1 ofReply:0];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_performPostInstallationRegistration_personaUniqueStrings_operationUUID_reply_ argumentIndex:2 ofReply:0];
    v43 = [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_performPostInstallationRegistration_personaUniqueStrings_operationUUID_reply_ argumentIndex:0 ofReply:1];
    v44 = +[_LSDModifyService XPCInterface]::result;
    v45 = pendingSaveTokenInterface(v43);
    [v44 setInterface:v45 forSelector:sel_performPostInstallationRegistration_personaUniqueStrings_operationUUID_reply_ argumentIndex:1 ofReply:1];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_performPostInstallationRegistration_personaUniqueStrings_operationUUID_reply_ argumentIndex:2 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_performPostUninstallationUnregistrationOfBundleID_operationUUID_unregisterType_precondition_reply_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_performPostUninstallationUnregistrationOfBundleID_operationUUID_unregisterType_precondition_reply_ argumentIndex:1 ofReply:0];
    v46 = [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_performPostUninstallationUnregistrationOfBundleID_operationUUID_unregisterType_precondition_reply_ argumentIndex:3 ofReply:0];
    v47 = +[_LSDModifyService XPCInterface]::result;
    v48 = pendingSaveTokenInterface(v46);
    [v47 setInterface:v48 forSelector:sel_performPostUninstallationUnregistrationOfBundleID_operationUUID_unregisterType_precondition_reply_ argumentIndex:0 ofReply:1];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_performPostUninstallationUnregistrationOfBundleID_operationUUID_unregisterType_precondition_reply_ argumentIndex:1 ofReply:1];
    v49 = +[_LSDModifyService XPCInterface]::result;
    v50 = MEMORY[0x1E695DFD8];
    v51 = objc_opt_class();
    v52 = [v50 setWithObjects:{v51, objc_opt_class(), 0}];
    [v49 setClasses:v52 forSelector:sel_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply_ argumentIndex:0 ofReply:0];

    v53 = +[_LSDModifyService XPCInterface]::result;
    v54 = MEMORY[0x1E695DFD8];
    v55 = objc_opt_class();
    v56 = [v54 setWithObjects:{v55, objc_opt_class(), 0}];
    [v53 setClasses:v56 forSelector:sel_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply_ argumentIndex:1 ofReply:0];

    v57 = [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply_ argumentIndex:2 ofReply:0];
    v58 = +[_LSDModifyService XPCInterface]::result;
    v59 = pendingSaveTokenInterface(v57);
    [v58 setInterface:v59 forSelector:sel_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply_ argumentIndex:0 ofReply:1];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_forceSaveForTestingWithCompletion_ argumentIndex:0 ofReply:1];
    v60 = +[_LSDModifyService XPCInterface]::result;
    v61 = MEMORY[0x1E695DFD8];
    v62 = objc_opt_class();
    v63 = [v61 setWithObjects:{v62, objc_opt_class(), 0}];
    [v60 setClasses:v63 forSelector:sel_setPreferredAppMarketplaces_completion_ argumentIndex:0 ofReply:0];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setPreferredAppMarketplaces_completion_ argumentIndex:0 ofReply:1];
  }
}

void __34___LSDModifyService_dispatchQueue__block_invoke()
{
  inactive = dispatch_workloop_create_inactive("com.apple.launchservices.modify-service-queue");
  dispatch_workloop_set_autorelease_frequency(inactive, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dispatch_activate(inactive);
  v1 = +[_LSDModifyService dispatchQueue]::result;
  +[_LSDModifyService dispatchQueue]::result = inactive;
}

@end