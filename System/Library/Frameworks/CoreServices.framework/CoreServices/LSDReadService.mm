@interface LSDReadService
@end

@implementation LSDReadService

void __31___LSDReadService_XPCInterface__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEFA5700];
  v3 = +[_LSDReadService XPCInterface]::result;
  +[_LSDReadService XPCInterface]::result = v2;

  v4 = +[_LSDReadService XPCInterface]::result;
  if (+[_LSDReadService XPCInterface]::result || ([MEMORY[0x1E696AAA8] currentHandler], v113 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v113, "handleFailureInMethod:object:file:lineNumber:description:", *(a1 + 32), *(a1 + 40), @"LSDReadService.mm", 130, @"Failed to create XPC interface object."), v113, (v4 = +[_LSDReadService XPCInterface]::result) != 0))
  {
    v5 = [v4 setClass:_CSStoreGetXPCClass() forSelector:sel_getServerStoreNonBlockingWithCompletionHandler_ argumentIndex:0 ofReply:1];
    v6 = +[_LSDReadService XPCInterface]::result;
    v8 = _FSNodeGetClasses(v5, v7);
    [v6 setClasses:v8 forSelector:sel_getServerStoreNonBlockingWithCompletionHandler_ argumentIndex:1 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getServerStoreNonBlockingWithCompletionHandler_ argumentIndex:2 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getServerStoreNonBlockingWithCompletionHandler_ argumentIndex:4 ofReply:1];
    v9 = +[_LSDReadService XPCInterface]::result;
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    [v9 setClasses:v12 forSelector:sel_getKernelPackageExtensionsWithCompletionHandler_ argumentIndex:0 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getKernelPackageExtensionsWithCompletionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getDiskUsage_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getDiskUsage_completionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getDiskUsage_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getKnowledgeUUIDAndSequenceNumberWithCompletionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getKnowledgeUUIDAndSequenceNumberWithCompletionHandler_ argumentIndex:1 ofReply:1];
    v13 = +[_LSDReadService XPCInterface]::result;
    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    [v13 setClasses:v16 forSelector:sel_resolveQueries_legacySPI_completionHandler_ argumentIndex:0 ofReply:0];

    v17 = +[_LSDReadService XPCInterface]::result;
    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [v18 setWithObjects:{v19, v20, v21, v22, objc_opt_class(), 0}];
    [v17 setClasses:v23 forSelector:sel_resolveQueries_legacySPI_completionHandler_ argumentIndex:0 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_resolveQueries_legacySPI_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getBundleRecordForCurrentProcessWithCompletionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getBundleRecordForCurrentProcessWithCompletionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getBundleProxyForCurrentProcessWithCompletionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getBundleProxyForCurrentProcessWithCompletionHandler_ argumentIndex:1 ofReply:1];
    v24 = +[_LSDReadService XPCInterface]::result;
    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    [v24 setClasses:v27 forSelector:sel_getBundleRecordForCoreTypesWithCompletionHandler_ argumentIndex:0 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getExtensionPointRecordWithIdentifier_platform_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getExtensionPointRecordWithIdentifier_platform_completionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getExtensionPointRecordWithIdentifier_platform_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getExtensionPointRecordForCurrentProcessWithCompletionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getTypeRecordWithIdentifier_allowUndeclared_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getTypeRecordWithIdentifier_allowUndeclared_completionHandler_ argumentIndex:0 ofReply:1];
    v28 = +[_LSDReadService XPCInterface]::result;
    v29 = MEMORY[0x1E695DFD8];
    v30 = objc_opt_class();
    v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
    [v28 setClasses:v31 forSelector:sel_getTypeRecordsWithIdentifiers_completionHandler_ argumentIndex:0 ofReply:0];

    v32 = +[_LSDReadService XPCInterface]::result;
    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = [v33 setWithObjects:{v34, v35, objc_opt_class(), 0}];
    [v32 setClasses:v36 forSelector:sel_getTypeRecordsWithIdentifiers_completionHandler_ argumentIndex:0 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getTypeRecordWithTag_ofClass_conformingToIdentifier_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getTypeRecordWithTag_ofClass_conformingToIdentifier_completionHandler_ argumentIndex:1 ofReply:0];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getTypeRecordWithTag_ofClass_conformingToIdentifier_completionHandler_ argumentIndex:2 ofReply:0];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getTypeRecordWithTag_ofClass_conformingToIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getTypeRecordsWithTag_ofClass_conformingToIdentifier_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getTypeRecordsWithTag_ofClass_conformingToIdentifier_completionHandler_ argumentIndex:1 ofReply:0];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getTypeRecordsWithTag_ofClass_conformingToIdentifier_completionHandler_ argumentIndex:2 ofReply:0];
    v37 = +[_LSDReadService XPCInterface]::result;
    v38 = MEMORY[0x1E695DFD8];
    v39 = objc_opt_class();
    v40 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];
    [v37 setClasses:v40 forSelector:sel_getTypeRecordsWithTag_ofClass_conformingToIdentifier_completionHandler_ argumentIndex:0 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getTypeRecordForImportedTypeWithIdentifier_conformingToIdentifier_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getTypeRecordForImportedTypeWithIdentifier_conformingToIdentifier_completionHandler_ argumentIndex:1 ofReply:0];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getTypeRecordForImportedTypeWithIdentifier_conformingToIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getRelatedTypesOfTypeWithIdentifier_maximumDegreeOfSeparation_completionHandler_ argumentIndex:0 ofReply:0];
    v41 = +[_LSDReadService XPCInterface]::result;
    v42 = MEMORY[0x1E695DFD8];
    v43 = objc_opt_class();
    v44 = [v42 setWithObjects:{v43, objc_opt_class(), 0}];
    [v41 setClasses:v44 forSelector:sel_getRelatedTypesOfTypeWithIdentifier_maximumDegreeOfSeparation_completionHandler_ argumentIndex:0 ofReply:1];

    v45 = +[_LSDReadService XPCInterface]::result;
    v46 = MEMORY[0x1E695DFD8];
    v47 = objc_opt_class();
    v48 = [v46 setWithObjects:{v47, objc_opt_class(), 0}];
    [v45 setClasses:v48 forSelector:sel_getRelatedTypesOfTypeWithIdentifier_maximumDegreeOfSeparation_completionHandler_ argumentIndex:1 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getWhetherTypeIdentifier_conformsToTypeIdentifier_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getWhetherTypeIdentifier_conformsToTypeIdentifier_completionHandler_ argumentIndex:1 ofReply:0];
    if (IconServicesLibrary(void)::frameworkLibrary || (IconServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2)) != 0)
    {
      [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getBoundIconInfoForDocumentProxy_completionHandler_ argumentIndex:0 ofReply:0];
      [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getBoundIconInfoForDocumentProxy_completionHandler_ argumentIndex:0 ofReply:1];
      [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getBoundIconInfoForDocumentProxy_completionHandler_ argumentIndex:1 ofReply:1];
    }

    v49 = +[_LSDReadService XPCInterface]::result;
    v50 = MEMORY[0x1E695DFD8];
    v51 = objc_opt_class();
    v52 = [v50 setWithObjects:{v51, objc_opt_class(), 0}];
    [v49 setClasses:v52 forSelector:sel_getAllUserActivityTypesAndDomainNamesWithCompletionHandler_ argumentIndex:0 ofReply:1];

    v53 = +[_LSDReadService XPCInterface]::result;
    v54 = MEMORY[0x1E695DFD8];
    v55 = objc_opt_class();
    v56 = [v54 setWithObjects:{v55, objc_opt_class(), 0}];
    [v53 setClasses:v56 forSelector:sel_getAllUserActivityTypesAndDomainNamesWithCompletionHandler_ argumentIndex:1 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getAllUserActivityTypesAndDomainNamesWithCompletionHandler_ argumentIndex:2 ofReply:1];
    v57 = +[_LSDReadService XPCInterface]::result;
    v58 = MEMORY[0x1E695DFD8];
    v59 = objc_opt_class();
    v60 = [v58 setWithObjects:{v59, objc_opt_class(), 0}];
    [v57 setClasses:v60 forSelector:sel_getResourceValuesForKeys_mimic_preferredLocalizations_completionHandler_ argumentIndex:0 ofReply:0];

    v61 = [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getResourceValuesForKeys_mimic_preferredLocalizations_completionHandler_ argumentIndex:1 ofReply:0];
    v62 = +[_LSDReadService XPCInterface]::result;
    v63 = _LSGetURLPropertyClasses(v61);
    [v62 setClasses:v63 forSelector:sel_getResourceValuesForKeys_mimic_preferredLocalizations_completionHandler_ argumentIndex:0 ofReply:1];

    v64 = +[_LSDReadService XPCInterface]::result;
    v65 = MEMORY[0x1E695DFD8];
    v66 = objc_opt_class();
    v67 = [v65 setWithObjects:{v66, objc_opt_class(), 0}];
    [v64 setClasses:v67 forSelector:sel_getResourceValuesForKeys_mimic_preferredLocalizations_completionHandler_ argumentIndex:1 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getResourceValuesForKeys_mimic_preferredLocalizations_completionHandler_ argumentIndex:2 ofReply:1];
    v68 = +[_LSDReadService XPCInterface]::result;
    v69 = MEMORY[0x1E695DFD8];
    v70 = objc_opt_class();
    v71 = [v69 setWithObjects:{v70, objc_opt_class(), 0}];
    [v68 setClasses:v71 forSelector:sel_mapBundleIdentifiers_orMachOUUIDs_completionHandler_ argumentIndex:0 ofReply:0];

    v72 = +[_LSDReadService XPCInterface]::result;
    v73 = MEMORY[0x1E695DFD8];
    v74 = objc_opt_class();
    v75 = [v73 setWithObjects:{v74, objc_opt_class(), 0}];
    [v72 setClasses:v75 forSelector:sel_mapBundleIdentifiers_orMachOUUIDs_completionHandler_ argumentIndex:1 ofReply:0];

    v76 = +[_LSDReadService XPCInterface]::result;
    v77 = MEMORY[0x1E695DFD8];
    v78 = objc_opt_class();
    v79 = [v77 setWithObjects:{v78, objc_opt_class(), 0}];
    [v76 setClasses:v79 forSelector:sel_mapBundleIdentifiers_orMachOUUIDs_completionHandler_ argumentIndex:0 ofReply:1];

    v80 = +[_LSDReadService XPCInterface]::result;
    v81 = MEMORY[0x1E695DFD8];
    v82 = objc_opt_class();
    v83 = [v81 setWithObjects:{v82, objc_opt_class(), 0}];
    [v80 setClasses:v83 forSelector:sel_mapBundleIdentifiers_orMachOUUIDs_completionHandler_ argumentIndex:1 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_mapBundleIdentifiers_orMachOUUIDs_completionHandler_ argumentIndex:2 ofReply:1];
    v84 = +[_LSDReadService XPCInterface]::result;
    v85 = MEMORY[0x1E695DFD8];
    v86 = objc_opt_class();
    v87 = [v85 setWithObjects:{v86, objc_opt_class(), 0}];
    [v84 setClasses:v87 forSelector:sel_mapPlugInBundleIdentifiersToContainingBundleIdentifiers_completionHandler_ argumentIndex:0 ofReply:0];

    v88 = +[_LSDReadService XPCInterface]::result;
    v89 = MEMORY[0x1E695DFD8];
    v90 = objc_opt_class();
    v91 = [v89 setWithObjects:{v90, objc_opt_class(), 0}];
    [v88 setClasses:v91 forSelector:sel_mapPlugInBundleIdentifiersToContainingBundleIdentifiers_completionHandler_ argumentIndex:0 ofReply:1];

    v92 = [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_mapPlugInBundleIdentifiersToContainingBundleIdentifiers_completionHandler_ argumentIndex:1 ofReply:1];
    v93 = +[_LSDReadService XPCInterface]::result;
    v94 = XNSGetPropertyListClasses(v92);
    [v93 setClasses:v94 forSelector:sel_getPreferencesWithCompletionHandler_ argumentIndex:0 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getPreferencesWithCompletionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getSettingsStoreConfigurationWithCompletionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getSettingsStoreConfigurationWithCompletionHandler_ argumentIndex:1 ofReply:1];
    v95 = [+[_LSDReadService XPCInterface]::result setClass:_CSStoreGetXPCClass() forSelector:sel_getSystemContentStoreWithCompletionHandler_ argumentIndex:0 ofReply:1];
    v96 = +[_LSDReadService XPCInterface]::result;
    v98 = _FSNodeGetClasses(v95, v97);
    [v96 setClasses:v98 forSelector:sel_getSystemContentStoreWithCompletionHandler_ argumentIndex:1 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getSystemContentStoreWithCompletionHandler_ argumentIndex:2 ofReply:1];
    v99 = +[_LSDReadService XPCInterface]::result;
    v100 = MEMORY[0x1E695DFD8];
    v101 = objc_opt_class();
    v102 = [v100 setWithObjects:{v101, objc_opt_class(), 0}];
    [v99 setClasses:v102 forSelector:sel_getApplicationCategoryIdentifiersSetWithCompletionHandler_ argumentIndex:0 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getApplicationCategoryIdentifiersSetWithCompletionHandler_ argumentIndex:1 ofReply:1];
    v103 = [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getRedactedAppexRecordForSystemAppexWithUUID_node_bundleIdentifier_platform_completionHandler_ argumentIndex:0 ofReply:0];
    v104 = +[_LSDReadService XPCInterface]::result;
    v106 = _FSNodeGetClasses(v103, v105);
    [v104 setClasses:v106 forSelector:sel_getRedactedAppexRecordForSystemAppexWithUUID_node_bundleIdentifier_platform_completionHandler_ argumentIndex:1 ofReply:0];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getRedactedAppexRecordForSystemAppexWithUUID_node_bundleIdentifier_platform_completionHandler_ argumentIndex:2 ofReply:0];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getRedactedAppexRecordForSystemAppexWithUUID_node_bundleIdentifier_platform_completionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getRedactedAppexRecordForSystemAppexWithUUID_node_bundleIdentifier_platform_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getEligibilityAnswerForDomain_withCompletionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getEligibilityAnswerForDomain_withCompletionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getHasEverChangedPreferredAppForCategory_completion_ argumentIndex:0 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getHasEverChangedPreferredAppForCategory_completion_ argumentIndex:1 ofReply:1];
    v107 = +[_LSDReadService XPCInterface]::result;
    v108 = MEMORY[0x1E695DFD8];
    v109 = objc_opt_class();
    v110 = [v108 setWithObjects:{v109, objc_opt_class(), 0}];
    [v107 setClasses:v110 forSelector:sel_getPreferredAppMarketplacesWithCompletion_ argumentIndex:0 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getPreferredAppMarketplacesWithCompletion_ argumentIndex:1 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getCurrentApplicationDefaultInfoForCategory_completion_ argumentIndex:0 ofReply:1];
    v111 = +[_LSDReadService XPCInterface]::result;
    v112 = objc_opt_class();

    [v111 setClass:v112 forSelector:sel_getCurrentApplicationDefaultInfoForCategory_completion_ argumentIndex:1 ofReply:1];
  }
}

@end