@interface TLToneStoreDownloadStoreServicesController
- (NSString)storeAccountName;
- (TLToneStoreDownloadStoreServicesController)init;
- (void)_assertRunningOnAccessQueue;
- (void)_handleAccountStoreDidChangeNotification:(id)notification;
- (void)_handleToneManagerContentsDidChangeNotification:(id)notification;
- (void)_notifyObserversOfCheckingForDownloadsFinishedWithoutNeedToIssueAnyDownload;
- (void)_notifyObserversOfStartedToneStoreDownloads:(id)downloads progressedToneStoreDownload:(id)download finishedToneStoreDownloads:(id)storeDownloads;
- (void)_notifyObserversOfUpdatedStoreAccountName:(id)name;
- (void)_openToneStoreWithStoreItemKind:(id)kind;
- (void)_performBlockOnAccessQueue:(id)queue;
- (void)_updateStoreAccountName;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)downloadManager:(id)manager downloadStatesDidChange:(id)change;
- (void)openAlertToneStore;
- (void)openRingtoneStore;
- (void)purchaseManager:(id)manager didFinishPurchasesWithResponses:(id)responses;
- (void)redownloadAllTones;
- (void)removeObserver:(id)observer;
@end

@implementation TLToneStoreDownloadStoreServicesController

- (TLToneStoreDownloadStoreServicesController)init
{
  v132[2] = *MEMORY[0x1E69E9840];
  v118.receiver = self;
  v118.super_class = TLToneStoreDownloadStoreServicesController;
  v2 = [(TLToneStoreDownloadStoreServicesController *)&v118 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = MEMORY[0x1E696AEC0];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:v3];
    bundleIdentifier = [v5 bundleIdentifier];
    v7 = NSStringFromClass(v3);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v10 = [v4 stringWithFormat:@"%@.%@-%@-%@", bundleIdentifier, v7, @"AccessQueue", uUIDString];
    accessQueueLabel = v2->_accessQueueLabel;
    v2->_accessQueueLabel = v10;

    v12 = dispatch_queue_create([(NSString *)v2->_accessQueueLabel UTF8String], 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v12;

    v124 = 0;
    v125 = &v124;
    v126 = 0x2050000000;
    v15 = getSSDownloadManagerOptionsClass_softClass;
    v127 = getSSDownloadManagerOptionsClass_softClass;
    if (!getSSDownloadManagerOptionsClass_softClass)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadManagerOptionsClass_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      __getSSDownloadManagerOptionsClass_block_invoke(&v119, v14);
      v15 = v125[3];
    }

    v16 = v15;
    _Block_object_dispose(&v124, 8);
    v115 = objc_alloc_init(v15);
    v17 = getSSDownloadKindRingtone();
    v132[0] = v17;
    v18 = getSSDownloadKindTone();
    v132[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:2];
    [v115 setDownloadKinds:v19];

    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v20 = getSSDownloadExternalPropertyBytesDownloadedSymbolLoc_ptr;
    v127 = getSSDownloadExternalPropertyBytesDownloadedSymbolLoc_ptr;
    if (!getSSDownloadExternalPropertyBytesDownloadedSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadExternalPropertyBytesDownloadedSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v21 = StoreServicesLibrary();
      v22 = dlsym(v21, "SSDownloadExternalPropertyBytesDownloaded");
      *(v123[1] + 24) = v22;
      getSSDownloadExternalPropertyBytesDownloadedSymbolLoc_ptr = *(v123[1] + 24);
      v20 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v20)
    {
      goto LABEL_61;
    }

    v23 = *v20;
    v130[0] = v23;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v24 = getSSDownloadExternalPropertyPercentCompleteSymbolLoc_ptr;
    v127 = getSSDownloadExternalPropertyPercentCompleteSymbolLoc_ptr;
    if (!getSSDownloadExternalPropertyPercentCompleteSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadExternalPropertyPercentCompleteSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v25 = StoreServicesLibrary();
      v26 = dlsym(v25, "SSDownloadExternalPropertyPercentComplete");
      *(v123[1] + 24) = v26;
      getSSDownloadExternalPropertyPercentCompleteSymbolLoc_ptr = *(v123[1] + 24);
      v24 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v24)
    {
      goto LABEL_61;
    }

    v27 = *v24;
    v130[1] = v27;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v28 = getSSDownloadExternalPropertyPolicySizeLimitSymbolLoc_ptr;
    v127 = getSSDownloadExternalPropertyPolicySizeLimitSymbolLoc_ptr;
    if (!getSSDownloadExternalPropertyPolicySizeLimitSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadExternalPropertyPolicySizeLimitSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v29 = StoreServicesLibrary();
      v30 = dlsym(v29, "SSDownloadExternalPropertyPolicySizeLimit");
      *(v123[1] + 24) = v30;
      getSSDownloadExternalPropertyPolicySizeLimitSymbolLoc_ptr = *(v123[1] + 24);
      v28 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v28)
    {
      goto LABEL_61;
    }

    v31 = *v28;
    v130[2] = v31;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v32 = getSSDownloadExternalPropertyRentalInformationSymbolLoc_ptr;
    v127 = getSSDownloadExternalPropertyRentalInformationSymbolLoc_ptr;
    if (!getSSDownloadExternalPropertyRentalInformationSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadExternalPropertyRentalInformationSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v33 = StoreServicesLibrary();
      v34 = dlsym(v33, "SSDownloadExternalPropertyRentalInformation");
      *(v123[1] + 24) = v34;
      getSSDownloadExternalPropertyRentalInformationSymbolLoc_ptr = *(v123[1] + 24);
      v32 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v32)
    {
      goto LABEL_61;
    }

    v131 = *v32;
    v35 = MEMORY[0x1E695DEC8];
    v36 = v131;
    v37 = [v35 arrayWithObjects:v130 count:4];

    [v115 setPrefetchedDownloadExternalProperties:v37];
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v38 = getSSDownloadPropertyClientBundleIdentifierSymbolLoc_ptr;
    v127 = getSSDownloadPropertyClientBundleIdentifierSymbolLoc_ptr;
    if (!getSSDownloadPropertyClientBundleIdentifierSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyClientBundleIdentifierSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v39 = StoreServicesLibrary();
      v40 = dlsym(v39, "SSDownloadPropertyClientBundleIdentifier");
      *(v123[1] + 24) = v40;
      getSSDownloadPropertyClientBundleIdentifierSymbolLoc_ptr = *(v123[1] + 24);
      v38 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v38)
    {
      goto LABEL_61;
    }

    p_isa = &v2->super.isa;
    v41 = *v38;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v42 = getSSDownloadPropertyDownloadPhaseSymbolLoc_ptr;
    v127 = getSSDownloadPropertyDownloadPhaseSymbolLoc_ptr;
    v128[0] = v41;
    if (!getSSDownloadPropertyDownloadPhaseSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyDownloadPhaseSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v43 = StoreServicesLibrary();
      v44 = dlsym(v43, "SSDownloadPropertyDownloadPhase");
      *(v123[1] + 24) = v44;
      getSSDownloadPropertyDownloadPhaseSymbolLoc_ptr = *(v123[1] + 24);
      v42 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v42)
    {
      goto LABEL_61;
    }

    v45 = *v42;
    v128[1] = v45;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v46 = getSSDownloadPropertyEncodedErrorDataSymbolLoc_ptr;
    v127 = getSSDownloadPropertyEncodedErrorDataSymbolLoc_ptr;
    if (!getSSDownloadPropertyEncodedErrorDataSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyEncodedErrorDataSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v47 = StoreServicesLibrary();
      v48 = dlsym(v47, "SSDownloadPropertyEncodedErrorData");
      *(v123[1] + 24) = v48;
      getSSDownloadPropertyEncodedErrorDataSymbolLoc_ptr = *(v123[1] + 24);
      v46 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v46)
    {
      goto LABEL_61;
    }

    v49 = *v46;
    v128[2] = v49;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v50 = getSSDownloadPropertyIsRestoreSymbolLoc_ptr;
    v127 = getSSDownloadPropertyIsRestoreSymbolLoc_ptr;
    if (!getSSDownloadPropertyIsRestoreSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyIsRestoreSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v51 = StoreServicesLibrary();
      v52 = dlsym(v51, "SSDownloadPropertyIsRestore");
      *(v123[1] + 24) = v52;
      getSSDownloadPropertyIsRestoreSymbolLoc_ptr = *(v123[1] + 24);
      v50 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v50)
    {
      goto LABEL_61;
    }

    v53 = *v50;
    v128[3] = v53;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v54 = getSSDownloadPropertyKindSymbolLoc_ptr;
    v127 = getSSDownloadPropertyKindSymbolLoc_ptr;
    if (!getSSDownloadPropertyKindSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyKindSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v55 = StoreServicesLibrary();
      v56 = dlsym(v55, "SSDownloadPropertyKind");
      *(v123[1] + 24) = v56;
      getSSDownloadPropertyKindSymbolLoc_ptr = *(v123[1] + 24);
      v54 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v54)
    {
      goto LABEL_61;
    }

    v113 = *v54;
    v128[4] = v113;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v57 = getSSDownloadPropertyReasonSymbolLoc_ptr;
    v127 = getSSDownloadPropertyReasonSymbolLoc_ptr;
    if (!getSSDownloadPropertyReasonSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyReasonSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v58 = StoreServicesLibrary();
      v59 = dlsym(v58, "SSDownloadPropertyReason");
      *(v123[1] + 24) = v59;
      getSSDownloadPropertyReasonSymbolLoc_ptr = *(v123[1] + 24);
      v57 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v57)
    {
      goto LABEL_61;
    }

    v112 = *v57;
    v128[5] = v112;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v60 = getSSDownloadPropertyStoreItemIdentifierSymbolLoc_ptr;
    v127 = getSSDownloadPropertyStoreItemIdentifierSymbolLoc_ptr;
    if (!getSSDownloadPropertyStoreItemIdentifierSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyStoreItemIdentifierSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v61 = StoreServicesLibrary();
      v62 = dlsym(v61, "SSDownloadPropertyStoreItemIdentifier");
      *(v123[1] + 24) = v62;
      getSSDownloadPropertyStoreItemIdentifierSymbolLoc_ptr = *(v123[1] + 24);
      v60 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v60)
    {
      goto LABEL_61;
    }

    v111 = *v60;
    v128[6] = v111;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v63 = getSSDownloadPropertyTitleSymbolLoc_ptr;
    v127 = getSSDownloadPropertyTitleSymbolLoc_ptr;
    if (!getSSDownloadPropertyTitleSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyTitleSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v64 = StoreServicesLibrary();
      v65 = dlsym(v64, "SSDownloadPropertyTitle");
      *(v123[1] + 24) = v65;
      getSSDownloadPropertyTitleSymbolLoc_ptr = *(v123[1] + 24);
      v63 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v63)
    {
      goto LABEL_61;
    }

    v110 = *v63;
    v128[7] = v110;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v66 = getSSDownloadPropertyHandlerIDSymbolLoc_ptr;
    v127 = getSSDownloadPropertyHandlerIDSymbolLoc_ptr;
    if (!getSSDownloadPropertyHandlerIDSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyHandlerIDSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v67 = StoreServicesLibrary();
      v68 = dlsym(v67, "SSDownloadPropertyHandlerID");
      *(v123[1] + 24) = v68;
      getSSDownloadPropertyHandlerIDSymbolLoc_ptr = *(v123[1] + 24);
      v66 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v66)
    {
      goto LABEL_61;
    }

    v69 = *v66;
    v128[8] = v69;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v70 = getSSDownloadPropertyCollectionNameSymbolLoc_ptr;
    v127 = getSSDownloadPropertyCollectionNameSymbolLoc_ptr;
    if (!getSSDownloadPropertyCollectionNameSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyCollectionNameSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v71 = StoreServicesLibrary();
      v72 = dlsym(v71, "SSDownloadPropertyCollectionName");
      *(v123[1] + 24) = v72;
      getSSDownloadPropertyCollectionNameSymbolLoc_ptr = *(v123[1] + 24);
      v70 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v70)
    {
      goto LABEL_61;
    }

    v73 = *v70;
    v128[9] = v73;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v74 = getSSDownloadPropertyArtistNameSymbolLoc_ptr;
    v127 = getSSDownloadPropertyArtistNameSymbolLoc_ptr;
    if (!getSSDownloadPropertyArtistNameSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyArtistNameSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v75 = StoreServicesLibrary();
      v76 = dlsym(v75, "SSDownloadPropertyArtistName");
      *(v123[1] + 24) = v76;
      getSSDownloadPropertyArtistNameSymbolLoc_ptr = *(v123[1] + 24);
      v74 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v74)
    {
      goto LABEL_61;
    }

    v77 = *v74;
    v128[10] = v77;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v78 = getSSDownloadPropertyGenreSymbolLoc_ptr;
    v127 = getSSDownloadPropertyGenreSymbolLoc_ptr;
    if (!getSSDownloadPropertyGenreSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyGenreSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v79 = StoreServicesLibrary();
      v80 = dlsym(v79, "SSDownloadPropertyGenre");
      *(v123[1] + 24) = v80;
      getSSDownloadPropertyGenreSymbolLoc_ptr = *(v123[1] + 24);
      v78 = v125[3];
    }

    v109 = v41;
    _Block_object_dispose(&v124, 8);
    if (!v78)
    {
      goto LABEL_61;
    }

    v81 = *v78;
    v128[11] = v81;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v82 = getSSDownloadPropertyDurationInMillisecondsSymbolLoc_ptr;
    v127 = getSSDownloadPropertyDurationInMillisecondsSymbolLoc_ptr;
    if (!getSSDownloadPropertyDurationInMillisecondsSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyDurationInMillisecondsSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v83 = StoreServicesLibrary();
      v84 = dlsym(v83, "SSDownloadPropertyDurationInMilliseconds");
      *(v123[1] + 24) = v84;
      getSSDownloadPropertyDurationInMillisecondsSymbolLoc_ptr = *(v123[1] + 24);
      v82 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v82)
    {
LABEL_61:
      __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
      __break(1u);
    }

    v129 = *v82;
    v85 = MEMORY[0x1E695DEC8];
    v86 = v129;
    [v85 arrayWithObjects:v128 count:13];
    v87 = v2 = p_isa;

    [v115 setPrefetchedDownloadProperties:v87];
    [v115 setShouldFilterExternalOriginatedDownloads:0];
    v124 = 0;
    v125 = &v124;
    v126 = 0x2050000000;
    v88 = getSSDownloadManagerClass_softClass;
    v127 = getSSDownloadManagerClass_softClass;
    if (!getSSDownloadManagerClass_softClass)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadManagerClass_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      __getSSDownloadManagerClass_block_invoke(&v119);
      v88 = v125[3];
    }

    v89 = v88;
    _Block_object_dispose(&v124, 8);
    v90 = [[v88 alloc] initWithManagerOptions:v115];
    v91 = p_isa[6];
    p_isa[6] = v90;

    [p_isa[6] addObserver:p_isa];
    v124 = 0;
    v125 = &v124;
    v126 = 0x2050000000;
    v92 = getSSPurchaseManagerClass_softClass;
    v127 = getSSPurchaseManagerClass_softClass;
    if (!getSSPurchaseManagerClass_softClass)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSPurchaseManagerClass_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      __getSSPurchaseManagerClass_block_invoke(&v119);
      v92 = v125[3];
    }

    v93 = v92;
    _Block_object_dispose(&v124, 8);
    v94 = [v92 alloc];
    v95 = MEMORY[0x1E696AEC0];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier2 = [mainBundle bundleIdentifier];
    v98 = objc_opt_class();
    v99 = NSStringFromClass(v98);
    v100 = [v95 stringWithFormat:@"%@.%@", bundleIdentifier2, v99];
    v101 = [v94 initWithManagerIdentifier:v100];
    v102 = p_isa[7];
    p_isa[7] = v101;

    [p_isa[7] setDelegate:p_isa];
    v116[0] = MEMORY[0x1E69E9820];
    v116[1] = 3221225472;
    v116[2] = __50__TLToneStoreDownloadStoreServicesController_init__block_invoke;
    v116[3] = &unk_1E85789A0;
    v103 = p_isa;
    v117 = v103;
    [v103 _performBlockOnAccessQueue:v116];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v105 = getSSAccountStoreChangedNotification();
    defaultStore = [getSSAccountStoreClass() defaultStore];
    [defaultCenter addObserver:v103 selector:sel__handleAccountStoreDidChangeNotification_ name:v105 object:defaultStore];

    v107 = +[TLToneManager sharedToneManager];
    [defaultCenter addObserver:v103 selector:sel__handleToneManagerContentsDidChangeNotification_ name:@"_TLToneManagerContentsChangedNotification" object:v107];
  }

  return v2;
}

uint64_t __50__TLToneStoreDownloadStoreServicesController_init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);

  return [v5 _updateStoreAccountName];
}

- (void)dealloc
{
  accessQueue = self->_accessQueue;
  self->_accessQueue = 0;
  v4 = accessQueue;

  [(SSDownloadManager *)self->_storeDownloadManager removeObserver:self];
  [(SSPurchaseManager *)self->_storePurchaseManager setDelegate:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = getSSAccountStoreChangedNotification();
  defaultStore = [getSSAccountStoreClass() defaultStore];
  [defaultCenter removeObserver:self name:v6 object:defaultStore];

  v8 = +[TLToneManager sharedToneManager];
  [defaultCenter removeObserver:self name:@"_TLToneManagerContentsChangedNotification" object:v8];

  dispatch_sync(v4, &__block_literal_global_1);
  v9.receiver = self;
  v9.super_class = TLToneStoreDownloadStoreServicesController;
  [(TLToneStoreDownloadStoreServicesController *)&v9 dealloc];
}

- (NSString)storeAccountName
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = &stru_1F54CFF40;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__TLToneStoreDownloadStoreServicesController_storeAccountName__block_invoke;
  v4[3] = &unk_1E8578950;
  v4[4] = self;
  v4[5] = &v5;
  [(TLToneStoreDownloadStoreServicesController *)self _performBlockOnAccessQueue:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __62__TLToneStoreDownloadStoreServicesController_storeAccountName__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 32) copy];

  return MEMORY[0x1EEE66BB8]();
}

- (void)_updateStoreAccountName
{
  [(TLToneStoreDownloadStoreServicesController *)self _assertRunningOnAccessQueue];
  defaultStore = [getSSAccountStoreClass() defaultStore];
  activeAccount = [defaultStore activeAccount];
  accountName = [activeAccount accountName];
  v5 = [accountName copy];

  v6 = self->_storeAccountName;
  v7 = v5;
  v8 = v7;
  if (!(v7 | v6))
  {
    goto LABEL_7;
  }

  if (!v7 || !v6)
  {

    goto LABEL_9;
  }

  if (v6 == v7)
  {
LABEL_7:

    goto LABEL_10;
  }

  v9 = [v6 isEqualToString:v7];

  if (!v9)
  {
LABEL_9:
    objc_storeStrong(&self->_storeAccountName, v5);
    [(TLToneStoreDownloadStoreServicesController *)self _notifyObserversOfUpdatedStoreAccountName:v8];
  }

LABEL_10:
}

- (void)_handleAccountStoreDidChangeNotification:(id)notification
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __87__TLToneStoreDownloadStoreServicesController__handleAccountStoreDidChangeNotification___block_invoke;
  v3[3] = &unk_1E85789A0;
  v3[4] = self;
  [(TLToneStoreDownloadStoreServicesController *)self _performBlockOnAccessQueue:v3];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__TLToneStoreDownloadStoreServicesController_addObserver___block_invoke;
  v6[3] = &unk_1E8578900;
  v7 = observerCopy;
  selfCopy = self;
  v5 = observerCopy;
  [(TLToneStoreDownloadStoreServicesController *)self _performBlockOnAccessQueue:v6];
}

void *__58__TLToneStoreDownloadStoreServicesController_addObserver___block_invoke(void *result)
{
  if (result[4])
  {
    v1 = result;
    result = [*(result[5] + 24) containsObject:?];
    if ((result & 1) == 0)
    {
      v2 = *(v1[5] + 24);
      if (!v2)
      {
        v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
        v4 = v1[5];
        v5 = *(v4 + 24);
        *(v4 + 24) = v3;

        v2 = *(v1[5] + 24);
      }

      v6 = v1[4];

      return [v2 addObject:v6];
    }
  }

  return result;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__TLToneStoreDownloadStoreServicesController_removeObserver___block_invoke;
  v6[3] = &unk_1E8578900;
  v7 = observerCopy;
  selfCopy = self;
  v5 = observerCopy;
  [(TLToneStoreDownloadStoreServicesController *)self _performBlockOnAccessQueue:v6];
}

void *__61__TLToneStoreDownloadStoreServicesController_removeObserver___block_invoke(void *result)
{
  if (result[4])
  {
    v1 = result;
    result = [*(result[5] + 24) containsObject:?];
    if (result)
    {
      v2 = v1[4];
      v3 = *(v1[5] + 24);

      return [v3 removeObject:v2];
    }
  }

  return result;
}

- (void)_notifyObserversOfUpdatedStoreAccountName:(id)name
{
  nameCopy = name;
  [(TLToneStoreDownloadStoreServicesController *)self _assertRunningOnAccessQueue];
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __88__TLToneStoreDownloadStoreServicesController__notifyObserversOfUpdatedStoreAccountName___block_invoke;
  v9[3] = &unk_1E8578900;
  v10 = allObjects;
  v11 = nameCopy;
  v7 = nameCopy;
  v8 = allObjects;
  dispatch_async(v6, v9);
}

void __88__TLToneStoreDownloadStoreServicesController__notifyObserversOfUpdatedStoreAccountName___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 storeAccountNameDidChange:{*(a1 + 40), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_notifyObserversOfCheckingForDownloadsFinishedWithoutNeedToIssueAnyDownload
{
  [(TLToneStoreDownloadStoreServicesController *)self _assertRunningOnAccessQueue];
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __121__TLToneStoreDownloadStoreServicesController__notifyObserversOfCheckingForDownloadsFinishedWithoutNeedToIssueAnyDownload__block_invoke;
  block[3] = &unk_1E85789A0;
  v7 = allObjects;
  v5 = allObjects;
  dispatch_async(v4, block);
}

void __121__TLToneStoreDownloadStoreServicesController__notifyObserversOfCheckingForDownloadsFinishedWithoutNeedToIssueAnyDownload__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 didFinishCheckingForAvailableToneStoreDownloads:{0, v7}];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (void)_notifyObserversOfStartedToneStoreDownloads:(id)downloads progressedToneStoreDownload:(id)download finishedToneStoreDownloads:(id)storeDownloads
{
  downloadsCopy = downloads;
  downloadCopy = download;
  storeDownloadsCopy = storeDownloads;
  [(TLToneStoreDownloadStoreServicesController *)self _assertRunningOnAccessQueue];
  v11 = [downloadsCopy count];
  v12 = [downloadCopy count];
  v13 = [storeDownloadsCopy count];
  if (v11 || v12 || v13)
  {
    v14 = v13 != 0;
    v15 = v11 != 0;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v17 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __145__TLToneStoreDownloadStoreServicesController__notifyObserversOfStartedToneStoreDownloads_progressedToneStoreDownload_finishedToneStoreDownloads___block_invoke;
    block[3] = &unk_1E8578F78;
    v20 = allObjects;
    v24 = v15;
    v21 = downloadsCopy;
    v25 = v12 != 0;
    v22 = downloadCopy;
    v26 = v14;
    v23 = storeDownloadsCopy;
    v18 = allObjects;
    dispatch_async(v17, block);
  }
}

void __145__TLToneStoreDownloadStoreServicesController__notifyObserversOfStartedToneStoreDownloads_progressedToneStoreDownload_finishedToneStoreDownloads___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (*(a1 + 64) == 1)
        {
          if (objc_opt_respondsToSelector())
          {
            [v7 didFinishCheckingForAvailableToneStoreDownloads:{1, v8}];
          }

          if (objc_opt_respondsToSelector())
          {
            [v7 toneStoreDownloadsDidStart:*(a1 + 40)];
          }
        }

        if (*(a1 + 65) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v7 toneStoreDownloadsDidProgress:*(a1 + 48)];
        }

        if (*(a1 + 66) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v7 toneStoreDownloadsDidFinish:*(a1 + 56)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)openAlertToneStore
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v3 = getSSItemKindToneSymbolLoc_ptr;
  v9 = getSSItemKindToneSymbolLoc_ptr;
  if (!getSSItemKindToneSymbolLoc_ptr)
  {
    v4 = StoreServicesLibrary();
    v7[3] = dlsym(v4, "SSItemKindTone");
    getSSItemKindToneSymbolLoc_ptr = v7[3];
    v3 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v3)
  {
    v5 = __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  [(TLToneStoreDownloadStoreServicesController *)self _openToneStoreWithStoreItemKind:*v3];
}

- (void)openRingtoneStore
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v3 = getSSItemKindRingtoneSymbolLoc_ptr;
  v9 = getSSItemKindRingtoneSymbolLoc_ptr;
  if (!getSSItemKindRingtoneSymbolLoc_ptr)
  {
    v4 = StoreServicesLibrary();
    v7[3] = dlsym(v4, "SSItemKindRingtone");
    getSSItemKindRingtoneSymbolLoc_ptr = v7[3];
    v3 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v3)
  {
    v5 = __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  [(TLToneStoreDownloadStoreServicesController *)self _openToneStoreWithStoreItemKind:*v3];
}

- (void)_openToneStoreWithStoreItemKind:(id)kind
{
  kindCopy = kind;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v4 = getSSItemStoreFrontURLForItemKindSymbolLoc_ptr;
  v22 = getSSItemStoreFrontURLForItemKindSymbolLoc_ptr;
  if (!getSSItemStoreFrontURLForItemKindSymbolLoc_ptr)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getSSItemStoreFrontURLForItemKindSymbolLoc_block_invoke;
    v17 = &unk_1E8578D30;
    v18 = &v19;
    v5 = StoreServicesLibrary();
    v20[3] = dlsym(v5, "SSItemStoreFrontURLForItemKind");
    getSSItemStoreFrontURLForItemKindSymbolLoc_ptr = *(v18[1] + 24);
    v4 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v4)
  {
    v9 = __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
    _Block_object_dispose(&v19, 8);
    _Unwind_Resume(v9);
  }

  v6 = v4(kindCopy);

  v10 = MEMORY[0x1E69E9820];
  v11 = __78__TLToneStoreDownloadStoreServicesController__openToneStoreWithStoreItemKind___block_invoke;
  v12 = &unk_1E85789A0;
  v13 = v6;
  v7 = MEMORY[0x1E696AF00];
  v8 = v6;
  if ([v7 isMainThread])
  {
    v11(&v10);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &v10);
  }
}

void __78__TLToneStoreDownloadStoreServicesController__openToneStoreWithStoreItemKind___block_invoke(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getUIApplicationClass_softClass;
  v9 = getUIApplicationClass_softClass;
  if (!getUIApplicationClass_softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getUIApplicationClass_block_invoke;
    v5[3] = &unk_1E8578D30;
    v5[4] = &v6;
    __getUIApplicationClass_block_invoke(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  v4 = [v2 sharedApplication];
  [v4 openURL:*(a1 + 32) options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (void)redownloadAllTones
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2050000000;
  v3 = getSSTonePurchaseClass_softClass;
  v35 = getSSTonePurchaseClass_softClass;
  if (!getSSTonePurchaseClass_softClass)
  {
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __getSSTonePurchaseClass_block_invoke;
    v30 = &unk_1E8578D30;
    v31 = &v32;
    __getSSTonePurchaseClass_block_invoke(&v27);
    v3 = v33[3];
  }

  v4 = v3;
  _Block_object_dispose(&v32, 8);
  v5 = objc_alloc_init(v3);
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v6 = getSSItemToneStyleRingtoneSymbolLoc_ptr;
  v35 = getSSItemToneStyleRingtoneSymbolLoc_ptr;
  if (!getSSItemToneStyleRingtoneSymbolLoc_ptr)
  {
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __getSSItemToneStyleRingtoneSymbolLoc_block_invoke;
    v30 = &unk_1E8578D30;
    v31 = &v32;
    v7 = StoreServicesLibrary();
    v8 = dlsym(v7, "SSItemToneStyleRingtone");
    *(v31[1] + 24) = v8;
    getSSItemToneStyleRingtoneSymbolLoc_ptr = *(v31[1] + 24);
    v6 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v6)
  {
    goto LABEL_17;
  }

  v9 = *v6;
  v37 = v9;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v10 = getSSItemToneStyleTextToneSymbolLoc_ptr;
  v35 = getSSItemToneStyleTextToneSymbolLoc_ptr;
  if (!getSSItemToneStyleTextToneSymbolLoc_ptr)
  {
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __getSSItemToneStyleTextToneSymbolLoc_block_invoke;
    v30 = &unk_1E8578D30;
    v31 = &v32;
    v11 = StoreServicesLibrary();
    v12 = dlsym(v11, "SSItemToneStyleTextTone");
    *(v31[1] + 24) = v12;
    getSSItemToneStyleTextToneSymbolLoc_ptr = *(v31[1] + 24);
    v10 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v10)
  {
    goto LABEL_17;
  }

  v38 = *v10;
  v13 = MEMORY[0x1E695DEC8];
  v14 = v38;
  v15 = [v13 arrayWithObjects:&v37 count:2];
  [v5 setAllowedToneStyles:v15];

  [v5 setCreatesDownloads:0];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v16 = getSSDownloadPropertyIsRedownloadSymbolLoc_ptr;
  v35 = getSSDownloadPropertyIsRedownloadSymbolLoc_ptr;
  if (!getSSDownloadPropertyIsRedownloadSymbolLoc_ptr)
  {
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __getSSDownloadPropertyIsRedownloadSymbolLoc_block_invoke;
    v30 = &unk_1E8578D30;
    v31 = &v32;
    v17 = StoreServicesLibrary();
    v18 = dlsym(v17, "SSDownloadPropertyIsRedownload");
    *(v31[1] + 24) = v18;
    getSSDownloadPropertyIsRedownloadSymbolLoc_ptr = *(v31[1] + 24);
    v16 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v16)
  {
LABEL_17:
    __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
    __break(1u);
  }

  [v5 setValue:MEMORY[0x1E695E118] forDownloadProperty:*v16];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2050000000;
  v19 = getSSMutableURLRequestPropertiesClass_softClass;
  v35 = getSSMutableURLRequestPropertiesClass_softClass;
  if (!getSSMutableURLRequestPropertiesClass_softClass)
  {
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __getSSMutableURLRequestPropertiesClass_block_invoke;
    v30 = &unk_1E8578D30;
    v31 = &v32;
    __getSSMutableURLRequestPropertiesClass_block_invoke(&v27);
    v19 = v33[3];
  }

  v20 = v19;
  _Block_object_dispose(&v32, 8);
  v21 = [[v19 alloc] initWithURLRequest:0];
  [v21 setURLBagKey:@"redownloadAllTones"];
  v22 = [v5 setRequestProperties:v21];
  v24 = TLLogToneManagement(v22, v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&dword_1D9356000, v24, OS_LOG_TYPE_DEFAULT, "Issuing store purchase for tones.", &v27, 2u);
  }

  storePurchaseManager = self->_storePurchaseManager;
  v36 = v5;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  [(SSPurchaseManager *)storePurchaseManager addPurchases:v26 withCompletionBlock:&__block_literal_global_39];
}

void __64__TLToneStoreDownloadStoreServicesController_redownloadAllTones__block_invoke(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v6 = TLLogToneManagement(v4, v5);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "Store purchase did complete successfully for tones.", v8, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __64__TLToneStoreDownloadStoreServicesController_redownloadAllTones__block_invoke_cold_1(v4);
  }
}

- (void)downloadManager:(id)manager downloadStatesDidChange:(id)change
{
  changeCopy = change;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__TLToneStoreDownloadStoreServicesController_downloadManager_downloadStatesDidChange___block_invoke;
  v7[3] = &unk_1E8578900;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  [(TLToneStoreDownloadStoreServicesController *)self _performBlockOnAccessQueue:v7];
}

void __86__TLToneStoreDownloadStoreServicesController_downloadManager_downloadStatesDidChange___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = a1;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v27 objects:v40 count:16];
  if (v2)
  {
    v3 = *v28;
    v23 = &v33;
    do
    {
      v4 = 0;
      do
      {
        if (*v28 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v27 + 1) + 8 * v4);
        v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v5, "persistentIdentifier", v23)}];
        v7 = [*(*(v26 + 40) + 40) objectForKey:v6];
        if (v7)
        {
          v8 = [v5 downloadPhaseIdentifier];
          v36 = 0;
          v37 = &v36;
          v38 = 0x2020000000;
          v9 = getSSDownloadPhaseFinishedSymbolLoc_ptr;
          v39 = getSSDownloadPhaseFinishedSymbolLoc_ptr;
          if (!getSSDownloadPhaseFinishedSymbolLoc_ptr)
          {
            v31 = MEMORY[0x1E69E9820];
            v32 = 3221225472;
            v33 = __getSSDownloadPhaseFinishedSymbolLoc_block_invoke;
            v34 = &unk_1E8578D30;
            v35 = &v36;
            v10 = StoreServicesLibrary();
            v11 = dlsym(v10, "SSDownloadPhaseFinished");
            *(v35[1] + 24) = v11;
            getSSDownloadPhaseFinishedSymbolLoc_ptr = *(v35[1] + 24);
            v9 = v37[3];
          }

          _Block_object_dispose(&v36, 8);
          if (!v9)
          {
LABEL_29:
            __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
            __break(1u);
          }

          v12 = *v9;
          if ([v8 isEqualToString:v12])
          {
LABEL_16:
          }

          else
          {
            v36 = 0;
            v37 = &v36;
            v38 = 0x2020000000;
            v13 = getSSDownloadPhaseFailedSymbolLoc_ptr;
            v39 = getSSDownloadPhaseFailedSymbolLoc_ptr;
            if (!getSSDownloadPhaseFailedSymbolLoc_ptr)
            {
              v31 = MEMORY[0x1E69E9820];
              v32 = 3221225472;
              v33 = __getSSDownloadPhaseFailedSymbolLoc_block_invoke;
              v34 = &unk_1E8578D30;
              v35 = &v36;
              v14 = StoreServicesLibrary();
              v15 = dlsym(v14, "SSDownloadPhaseFailed");
              *(v35[1] + 24) = v15;
              getSSDownloadPhaseFailedSymbolLoc_ptr = *(v35[1] + 24);
              v13 = v37[3];
            }

            _Block_object_dispose(&v36, 8);
            if (!v13)
            {
              goto LABEL_29;
            }

            v16 = *v13;
            if ([v8 isEqualToString:v16])
            {

              goto LABEL_16;
            }

            v36 = 0;
            v37 = &v36;
            v38 = 0x2020000000;
            v18 = getSSDownloadPhaseCanceledSymbolLoc_ptr;
            v39 = getSSDownloadPhaseCanceledSymbolLoc_ptr;
            if (!getSSDownloadPhaseCanceledSymbolLoc_ptr)
            {
              v31 = MEMORY[0x1E69E9820];
              v32 = 3221225472;
              v33 = __getSSDownloadPhaseCanceledSymbolLoc_block_invoke;
              v34 = &unk_1E8578D30;
              v35 = &v36;
              v19 = StoreServicesLibrary();
              v20 = dlsym(v19, "SSDownloadPhaseCanceled");
              *(v35[1] + 24) = v20;
              getSSDownloadPhaseCanceledSymbolLoc_ptr = *(v35[1] + 24);
              v18 = v37[3];
            }

            _Block_object_dispose(&v36, 8);
            if (!v18)
            {
              goto LABEL_29;
            }

            v21 = [v8 isEqualToString:*v18];

            if ((v21 & 1) == 0)
            {
              [v5 percentComplete];
LABEL_19:
              *&v17 = v17;
              [v7 _setDownloadProgress:v17];
              [v25 addObject:v7];

              goto LABEL_20;
            }
          }

          [v5 percentComplete];
          if (v17 < 0.99)
          {
            v17 = 0.99;
          }

          goto LABEL_19;
        }

LABEL_20:

        ++v4;
      }

      while (v2 != v4);
      v22 = [obj countByEnumeratingWithState:&v27 objects:v40 count:16];
      v2 = v22;
    }

    while (v22);
  }

  [*(v26 + 40) _notifyObserversOfStartedToneStoreDownloads:0 progressedToneStoreDownload:v25 finishedToneStoreDownloads:0];
}

- (void)purchaseManager:(id)manager didFinishPurchasesWithResponses:(id)responses
{
  v101 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  responsesCopy = responses;
  v64 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v63 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v69 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = responsesCopy;
  v6 = [obj countByEnumeratingWithState:&v87 objects:v97 count:16];
  v61 = v6;
  if (v6)
  {
    v60 = *v88;
    do
    {
      v8 = 0;
      do
      {
        if (*v88 != v60)
        {
          v9 = v8;
          objc_enumerationMutation(obj);
          v8 = v9;
        }

        v62 = v8;
        v10 = *(*(&v87 + 1) + 8 * v8);
        v11 = TLLogToneManagement(v6, v7);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          uRLResponse = [v10 URLResponse];
          storeCorrelationID = [uRLResponse storeCorrelationID];
          *buf = 138543362;
          *&buf[4] = storeCorrelationID;
          _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "Did finish store purchase with correlation key: %{public}@.", buf, 0xCu);
        }

        v72 = +[TLToneManager sharedToneManager];
        _installedTones = [v72 _installedTones];
        downloadsMetadata = [v10 downloadsMetadata];
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v66 = downloadsMetadata;
        v68 = [v66 countByEnumeratingWithState:&v83 objects:v96 count:16];
        if (v68)
        {
          v67 = *v84;
          while (2)
          {
            v15 = 0;
            do
            {
              if (*v84 != v67)
              {
                v16 = v15;
                objc_enumerationMutation(v66);
                v15 = v16;
              }

              v70 = v15;
              v17 = *(*(&v83 + 1) + 8 * v15);
              kind = [v17 kind];
              v18 = getSSDownloadKindRingtone();
              if ([kind isEqualToString:v18])
              {
              }

              else
              {
                v19 = getSSDownloadKindTone();
                v20 = [kind isEqualToString:v19];

                if ((v20 & 1) == 0)
                {
                  v21 = getSSDownloadKindRingtone();

                  v22 = [v17 copy];
                  [v22 setKind:v21];
                  kind = v21;
                  v17 = v22;
                }
              }

              v23 = objc_alloc_init(TLToneStoreDownload);
              title = [v17 title];
              [(TLToneStoreDownload *)v23 _setName:title];

              collectionName = [v17 collectionName];
              [(TLToneStoreDownload *)v23 _setAlbumTitle:collectionName];

              artistName = [v17 artistName];
              [(TLToneStoreDownload *)v23 _setArtistName:artistName];

              durationInMilliseconds = [v17 durationInMilliseconds];
              v28 = objc_opt_respondsToSelector();
              unsignedIntegerValue = 0.0;
              if (v28)
              {
                unsignedIntegerValue = [durationInMilliseconds unsignedIntegerValue];
              }

              [(TLToneStoreDownload *)v23 _setDuration:unsignedIntegerValue / 1000.0, managerCopy];

              genre = [v17 genre];
              [(TLToneStoreDownload *)v23 _setGenreName:genre];

              -[TLToneStoreDownload _setStoreItemIdentifier:](v23, "_setStoreItemIdentifier:", [v17 itemIdentifier]);
              v31 = getSSDownloadKindTone();
              -[TLToneStoreDownload _setRingtone:](v23, "_setRingtone:", [kind isEqualToString:v31] ^ 1);

              v32 = [v69 indexOfObject:v23];
              if (v32 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v33 = [[TLITunesTone alloc] initWithToneStoreDownload:v23];
                v81 = 0u;
                v82 = 0u;
                v79 = 0u;
                v80 = 0u;
                v34 = _installedTones;
                v35 = [v34 countByEnumeratingWithState:&v79 objects:v95 count:16];
                if (v35)
                {
                  v11 = *v80;
                  while (2)
                  {
                    for (i = 0; i != v35; ++i)
                    {
                      if (*v80 != v11)
                      {
                        objc_enumerationMutation(v34);
                      }

                      v37 = *(*(&v79 + 1) + 8 * i);
                      if ([(TLITunesTone *)v33 isDuplicateOfTone:v37])
                      {
                        identifier = [v37 identifier];
                        v39 = [v72 toneWithIdentifierIsValid:identifier];

                        if (v39)
                        {
                          v51 = TLLogToneManagement(v40, v41);
                          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138543618;
                            *&buf[4] = v17;
                            *&buf[12] = 2114;
                            *&buf[14] = v37;
                            _os_log_impl(&dword_1D9356000, v51, OS_LOG_TYPE_DEFAULT, "Store download metadata %{public}@ of tone was found to be a duplicate of the following existing tone: %{public}@. This tone will not be re-downloaded.", buf, 0x16u);
                          }

                          goto LABEL_42;
                        }
                      }
                    }

                    v35 = [v34 countByEnumeratingWithState:&v79 objects:v95 count:16];
                    if (v35)
                    {
                      continue;
                    }

                    break;
                  }
                }

                [v69 addObject:v23];
                v91 = 0;
                v92 = &v91;
                v93 = 0x2050000000;
                v42 = getSSDownloadClass_softClass;
                v94 = getSSDownloadClass_softClass;
                if (!getSSDownloadClass_softClass)
                {
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 3221225472;
                  *&buf[16] = __getSSDownloadClass_block_invoke;
                  v99 = &unk_1E8578D30;
                  v100 = &v91;
                  __getSSDownloadClass_block_invoke(buf);
                  v42 = v92[3];
                }

                v43 = v42;
                _Block_object_dispose(&v91, 8);
                v33 = [[v42 alloc] initWithDownloadMetadata:v17];
                v91 = 0;
                v92 = &v91;
                v93 = 0x2020000000;
                v44 = getSSDownloadPropertyIsStoreDownloadSymbolLoc_ptr;
                v94 = getSSDownloadPropertyIsStoreDownloadSymbolLoc_ptr;
                if (!getSSDownloadPropertyIsStoreDownloadSymbolLoc_ptr)
                {
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 3221225472;
                  *&buf[16] = __getSSDownloadPropertyIsStoreDownloadSymbolLoc_block_invoke;
                  v99 = &unk_1E8578D30;
                  v100 = &v91;
                  v45 = StoreServicesLibrary();
                  v46 = dlsym(v45, "SSDownloadPropertyIsStoreDownload");
                  *(v100[1] + 24) = v46;
                  getSSDownloadPropertyIsStoreDownloadSymbolLoc_ptr = *(v100[1] + 24);
                  v44 = v92[3];
                }

                _Block_object_dispose(&v91, 8);
                if (!v44)
                {
                  v55 = __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
                  __break(1u);
                  goto LABEL_51;
                }

                [(TLITunesTone *)v33 setValue:MEMORY[0x1E695E118] forProperty:*v44];
                [v64 addObject:v33];
                v34 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[TLITunesTone persistentIdentifier](v33, "persistentIdentifier")}];
                v47 = [v63 setObject:v23 forKey:v34];
                v49 = TLLogToneManagement(v47, v48);
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543874;
                  *&buf[4] = v23;
                  *&buf[12] = 2114;
                  *&buf[14] = v33;
                  *&buf[22] = 2114;
                  v99 = v17;
                  _os_log_impl(&dword_1D9356000, v49, OS_LOG_TYPE_DEFAULT, "Issuing store download for %{public}@: %{public}@ (based on %{public}@).", buf, 0x20u);
                }
              }

              else
              {
                v33 = [v69 objectAtIndex:v32];
                v34 = TLLogToneManagement(v33, v50);
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  *&buf[4] = v17;
                  *&buf[12] = 2114;
                  *&buf[14] = v33;
                  _os_log_impl(&dword_1D9356000, v34, OS_LOG_TYPE_DEFAULT, "Store download metadata %{public}@ of tone was found to be a duplicate of the following upcoming tone download: %{public}@. This tone will not be re-downloaded.", buf, 0x16u);
                }
              }

LABEL_42:

              v15 = v70 + 1;
            }

            while (v70 + 1 != v68);
            v68 = [v66 countByEnumeratingWithState:&v83 objects:v96 count:16];
            if (v68)
            {
              continue;
            }

            break;
          }
        }

        v8 = v62 + 1;
      }

      while (v62 + 1 != v61);
      v6 = [obj countByEnumeratingWithState:&v87 objects:v97 count:16];
      v61 = v6;
    }

    while (v6);
  }

  v52 = [v64 count];
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __94__TLToneStoreDownloadStoreServicesController_purchaseManager_didFinishPurchasesWithResponses___block_invoke;
  v76[3] = &unk_1E8578FC0;
  v78 = v52;
  v76[4] = self;
  v44 = v63;
  v77 = v44;
  v53 = [(TLToneStoreDownloadStoreServicesController *)self _performBlockOnAccessQueue:v76];
  v11 = TLLogToneManagement(v53, v54);
  v55 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v52)
  {
    if (v55)
    {
      *buf = 134217984;
      *&buf[4] = v52;
      _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "Adding %lu tone store downloads.", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    storeDownloadManager = self->_storeDownloadManager;
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __94__TLToneStoreDownloadStoreServicesController_purchaseManager_didFinishPurchasesWithResponses___block_invoke_44;
    v73[3] = &unk_1E8578FE8;
    objc_copyWeak(&v75, buf);
    v74 = v69;
    [(SSDownloadManager *)storeDownloadManager addDownloads:v64 completionBlock:v73];

    objc_destroyWeak(&v75);
    objc_destroyWeak(buf);
  }

  else
  {
LABEL_51:
    if (v55)
    {
      *buf = 0;
      _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "No previously purchased tone needs to be redownloaded. We're done here.", buf, 2u);
    }
  }
}

uint64_t __94__TLToneStoreDownloadStoreServicesController_purchaseManager_didFinishPurchasesWithResponses___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return [*(*(a1 + 32) + 40) addEntriesFromDictionary:*(a1 + 40)];
  }

  else
  {
    return [*(a1 + 32) _notifyObserversOfCheckingForDownloadsFinishedWithoutNeedToIssueAnyDownload];
  }
}

void __94__TLToneStoreDownloadStoreServicesController_purchaseManager_didFinishPurchasesWithResponses___block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = TLLogToneManagement(WeakRetained, v5);
    v8 = v7;
    if (v3)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __94__TLToneStoreDownloadStoreServicesController_purchaseManager_didFinishPurchasesWithResponses___block_invoke_44_cold_1(v3);
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __94__TLToneStoreDownloadStoreServicesController_purchaseManager_didFinishPurchasesWithResponses___block_invoke_45;
      v12[3] = &unk_1E85789A0;
      v12[4] = v6;
      [v6 _performBlockOnAccessQueue:v12];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "Successfully added store downloads for tones.", buf, 2u);
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __94__TLToneStoreDownloadStoreServicesController_purchaseManager_didFinishPurchasesWithResponses___block_invoke_46;
      v9[3] = &unk_1E8578900;
      v9[4] = v6;
      v10 = *(a1 + 32);
      [v6 _performBlockOnAccessQueue:v9];
    }
  }
}

- (void)_handleToneManagerContentsDidChangeNotification:(id)notification
{
  v4 = +[TLToneManager sharedToneManager];
  _installedTones = [v4 _installedTones];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__TLToneStoreDownloadStoreServicesController__handleToneManagerContentsDidChangeNotification___block_invoke;
  v8[3] = &unk_1E8579038;
  v8[4] = self;
  v9 = _installedTones;
  v10 = v4;
  v6 = v4;
  v7 = _installedTones;
  [(TLToneStoreDownloadStoreServicesController *)self _performBlockOnAccessQueue:v8];
}

void __94__TLToneStoreDownloadStoreServicesController__handleToneManagerContentsDidChangeNotification___block_invoke(id *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = *(a1[4] + 5);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __94__TLToneStoreDownloadStoreServicesController__handleToneManagerContentsDidChangeNotification___block_invoke_2;
  v10 = &unk_1E8579010;
  v11 = a1[5];
  v12 = a1[6];
  v13 = v2;
  v14 = v3;
  v5 = v3;
  v6 = v2;
  [v4 enumerateKeysAndObjectsUsingBlock:&v7];
  [*(a1[4] + 5) removeObjectsForKeys:{v5, v7, v8, v9, v10}];
  [a1[4] _notifyObserversOfStartedToneStoreDownloads:0 progressedToneStoreDownload:0 finishedToneStoreDownloads:v6];
}

void __94__TLToneStoreDownloadStoreServicesController__handleToneManagerContentsDidChangeNotification___block_invoke_2(id *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [[TLITunesTone alloc] initWithToneStoreDownload:v6];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = a1[4];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = [v13 identifier];
        if ([v13 isDuplicateOfTone:v7] && objc_msgSend(a1[5], "toneWithIdentifierIsValid:", v14))
        {
          [v6 _setToneIdentifier:v14];
          [a1[6] addObject:v6];
          [a1[7] addObject:v5];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)_performBlockOnAccessQueue:(id)queue
{
  accessQueue = self->_accessQueue;
  if (accessQueue)
  {
    dispatch_sync(accessQueue, queue);
  }
}

- (void)_assertRunningOnAccessQueue
{
  v27 = *MEMORY[0x1E69E9840];
  accessQueue = self->_accessQueue;
  if (accessQueue)
  {

    dispatch_assert_queue_V2(accessQueue);
  }

  else
  {
    label = dispatch_queue_get_label(0);
    v5 = strcmp(label, [(NSString *)self->_accessQueueLabel UTF8String]);
    if (v5)
    {
      v7 = TLLogGeneral(v5, v6);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

      if (v8)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Tones/ToneStoreDownloads/Embedded/TLToneStoreDownloadStoreServicesController.m"];
        v13 = TLLogGeneral(v11, v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          lastPathComponent = [v11 lastPathComponent];
          callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
          v19 = 136381443;
          v20 = "[TLToneStoreDownloadStoreServicesController _assertRunningOnAccessQueue]";
          v21 = 2113;
          v22 = lastPathComponent;
          v23 = 2049;
          v24 = 455;
          v25 = 2113;
          v26 = callStackSymbols;
          _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v19, 0x2Au);
        }
      }

      else
      {
        v11 = TLLogGeneral(v9, v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(TLToneStoreDownloadStoreServicesController *)v11 _assertRunningOnAccessQueue];
        }
      }

      v18 = TLLogGeneral(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(TLToneStoreDownloadStoreServicesController *)v18 _assertRunningOnAccessQueue];
      }
    }
  }
}

void __64__TLToneStoreDownloadStoreServicesController_redownloadAllTones__block_invoke_cold_1(void *a1)
{
  v1 = [a1 tl_nonRedundantDescription];
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_0(&dword_1D9356000, v2, v3, "Failed to add store purchase for tones with error: %{public}@.", v4, v5, v6, v7, v8, DWORD2(v8));
}

void __94__TLToneStoreDownloadStoreServicesController_purchaseManager_didFinishPurchasesWithResponses___block_invoke_44_cold_1(void *a1)
{
  v1 = [a1 tl_nonRedundantDescription];
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_0(&dword_1D9356000, v2, v3, "Failed to add store downloads for tones with error: %{public}@.", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end