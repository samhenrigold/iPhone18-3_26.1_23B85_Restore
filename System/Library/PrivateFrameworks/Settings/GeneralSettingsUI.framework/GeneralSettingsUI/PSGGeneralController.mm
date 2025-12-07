@interface PSGGeneralController
+ (id)BOOLeanCapabilitiesToTest;
- (BOOL)_hasCarPlayContent;
- (BOOL)shouldDeferPushForSpecifierID:(id)d;
- (PSGGeneralController)init;
- (id)EDGEEnabled:(id)enabled;
- (id)_createTVProviderSpecifiersIfNeeded;
- (id)atlasSpecifierForDialog:(id)dialog;
- (id)sortDateTimeGroupIdentifiers:(id)identifiers;
- (id)sortDateTimeGroupWithSpecifiers:(id)specifiers;
- (id)specifiers;
- (void)_updateInteractivityForTVProviderIfNeeded;
- (void)dealloc;
- (void)delayedAsyncLoadSpecifiers;
- (void)enableEdge:(id)edge;
- (void)handleScrollPPTTestName;
- (void)homeButtonCustomizeControllerDidFinish:(id)finish;
- (void)insertOrderedSpecifiers:(id)specifiers atID:(id)d animated:(BOOL)animated;
- (void)launchHasCompleted:(id)completed;
- (void)loadAtlas:(id)atlas;
- (void)loadHomeButtonSettings:(id)settings;
- (void)pairedVehiclesDidChange;
- (void)pointerDevicesDidChange;
- (void)profileNotification:(id)notification;
- (void)reloadAsyncSpecifiersWithCompletion:(id)completion;
- (void)reloadSpecifiers;
- (void)setPptRelay:(id)relay;
- (void)setSpecifier:(id)specifier;
- (void)updateAtlasFromCache:(id)cache;
- (void)updateAtlasWithCompletion:(id)completion;
- (void)updateMatterWithCompletion:(id)completion;
- (void)updateSoftwareUpdateBadge;
- (void)updateTVProviderWithCompletion:(id)completion;
- (void)updateTrackpadWithCompletion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PSGGeneralController

+ (id)BOOLeanCapabilitiesToTest
{
  v4[8] = *MEMORY[0x277D85DE8];
  v4[0] = @"DeviceSupportsCarIntegration";
  v4[1] = @"nVh/gwNpy7Jv1NOk00CMrw";
  v4[2] = @"fcc-logos-via-software";
  v4[3] = @"accessibility";
  v4[4] = @"international-settings";
  v4[5] = @"cellular-data";
  v4[6] = @"ringer-switch";
  v4[7] = @"Jq+xaurJgFzSwxOfTqtBGw";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:8];

  return v2;
}

- (void)insertOrderedSpecifiers:(id)specifiers atID:(id)d animated:(BOOL)animated
{
  animatedCopy = animated;
  v27 = *MEMORY[0x277D85DE8];
  specifiersCopy = specifiers;
  dCopy = d;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__PSGGeneralController_insertOrderedSpecifiers_atID_animated___block_invoke;
  block[3] = &unk_278324EE0;
  block[4] = self;
  if (insertOrderedSpecifiers_atID_animated__onceToken != -1)
  {
    dispatch_once(&insertOrderedSpecifiers_atID_animated__onceToken, block);
  }

  v10 = [insertOrderedSpecifiers_atID_animated__ordering indexOfObject:dCopy];
  v11 = [insertOrderedSpecifiers_atID_animated__ordering subarrayWithRange:{0, v10}];
  reverseObjectEnumerator = [v11 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = allObjects;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v21 + 1) + 8 * i);
        v20 = [(PSGGeneralController *)self specifierForID:v19, v21];

        if (v20)
        {
          [(PSGGeneralController *)self insertContiguousSpecifiers:specifiersCopy afterSpecifierID:v19 animated:animatedCopy];
          goto LABEL_13;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

void __62__PSGGeneralController_insertOrderedSpecifiers_atID_animated___block_invoke(uint64_t a1)
{
  v5[42] = *MEMORY[0x277D85DE8];
  v5[0] = @"ABOUT_AND_SOFTWARE_UPDATE_GROUP";
  v5[1] = @"About";
  v5[2] = @"SOFTWARE_UPDATE_LINK";
  v5[3] = @"STORAGE_MGMT";
  v5[4] = @"ATLAS";
  v5[5] = @"COVERAGE_GROUP";
  v5[6] = @"COVERAGE";
  v5[7] = @"AIRDROP_GROUP";
  v5[8] = @"AIRDROP_LINK";
  v5[9] = @"CONTINUITY_SPEC";
  v5[10] = @"CONTACTLESS_NFC";
  v5[11] = @"PiP_SPEC";
  v5[12] = @"SCREEN_CAPTURE";
  v5[13] = @"LOCAL_CAPTURE";
  v5[14] = @"CARPLAY";
  v5[15] = @"MATTER_ACCESSORIES";
  v5[16] = @"NFC_LINK";
  v5[17] = @"HOME_BUTTON_GROUP";
  v5[18] = @"HOME_BUTTON";
  v5[19] = @"DATE_AND_TIME_GROUP";
  v5[20] = @"AUTOFILL";
  v5[21] = @"AUTO_CONTENT_DOWNLOAD";
  v5[22] = @"DATE_AND_TIME";
  v5[23] = @"DICTIONARY";
  v5[24] = @"FONT_SETTING";
  v5[25] = @"GAME_CONTROLLER";
  v5[26] = @"Keyboard";
  v5[27] = @"INTERNATIONAL";
  v5[28] = @"POINTERS";
  v5[29] = @"WINDOW_RESTORATION";
  v5[30] = @"TV_PROVIDER_GROUP";
  v5[31] = @"TV_PROVIDER";
  v5[32] = @"VPN_DEVICE_MANAGEMENT_GROUP";
  v5[33] = @"ManagedConfigurationList";
  v5[34] = @"RETAIL_KIOSK_MODE_SETTINGS_BUNDLE_GROUP";
  v5[35] = @"RETAIL_KIOSK_MODE_SETTINGS";
  v5[36] = @"LEGAL_AND_REGULATORY_GROUP";
  v5[37] = @"LEGAL_AND_REGULATORY";
  v5[38] = @"TRANSFER_ERASE_RESET_GROUP";
  v5[39] = @"Reset";
  v5[40] = @"SHUTDOWN_GROUP";
  v5[41] = @"SHUTDOWN_LABEL";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:42];
  v3 = [*(a1 + 32) sortDateTimeGroupIdentifiers:v2];
  v4 = insertOrderedSpecifiers_atID_animated__ordering;
  insertOrderedSpecifiers_atID_animated__ordering = v3;
}

- (void)delayedAsyncLoadSpecifiers
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[PSGGeneralController delayedAsyncLoadSpecifiers]";
  _os_log_error_impl(&dword_21CF20000, log, OS_LOG_TYPE_ERROR, "%s: expensive async load started during ppt launch test.", &v1, 0xCu);
}

- (BOOL)shouldDeferPushForSpecifierID:(id)d
{
  v19[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v19[0] = @"POINTERS";
  v19[1] = @"MATTER_ACCESSORIES";
  v19[2] = @"TV_PROVIDER";
  [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([dCopy isEqualToString:{v10, v14}])
        {
          v11 = [(PSGGeneralController *)self specifierForID:v10];

          if (!v11)
          {
            v12 = 1;
            goto LABEL_12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (void)reloadAsyncSpecifiersWithCompletion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = _PSGSignpostLoggingFacility([(PSGGeneralController *)self setSpecifiersHaveLoaded:1]);
  v6 = os_signpost_id_make_with_pointer(v5, "PSGGeneralController.reloadAsyncSpecifiersWithCompletion");

  v8 = _PSGSignpostLoggingFacility(v7);
  v9 = v8;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 138543618;
    selfCopy = self;
    v41 = 2082;
    v42 = "[PSGGeneralController reloadAsyncSpecifiersWithCompletion:]";
    _os_signpost_emit_with_name_impl(&dword_21CF20000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PSGGeneralController.reloadAsyncSpecifiersWithCompletion", "%{public}@: %{public}s", buf, 0x16u);
  }

  v11 = _PSGLoggingFacility(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    selfCopy = "[PSGGeneralController reloadAsyncSpecifiersWithCompletion:]";
    _os_log_impl(&dword_21CF20000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: async reload started.", buf, 0xCu);
  }

  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __60__PSGGeneralController_reloadAsyncSpecifiersWithCompletion___block_invoke;
  v36[3] = &unk_278325218;
  v38 = v6;
  v13 = v12;
  v37 = v13;
  [(PSGGeneralController *)self updateTrackpadWithCompletion:v36];
  if (_os_feature_enabled_impl())
  {
    dispatch_group_enter(v13);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __60__PSGGeneralController_reloadAsyncSpecifiersWithCompletion___block_invoke_258;
    v33[3] = &unk_278325218;
    v35 = v6;
    v34 = v13;
    [(PSGGeneralController *)self updateAtlasWithCompletion:v33];
  }

  if ((PSIsInEDUMode() & 1) == 0)
  {
    dispatch_group_enter(v13);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __60__PSGGeneralController_reloadAsyncSpecifiersWithCompletion___block_invoke_259;
    v30[3] = &unk_278325218;
    v32 = v6;
    v31 = v13;
    [(PSGGeneralController *)self updateMatterWithCompletion:v30];
  }

  if ((PSIsInEDUMode() & 1) == 0)
  {
    dispatch_group_enter(v13);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __60__PSGGeneralController_reloadAsyncSpecifiersWithCompletion___block_invoke_260;
    v27[3] = &unk_278325218;
    v29 = v6;
    v28 = v13;
    [(PSGGeneralController *)self updateTVProviderWithCompletion:v27];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__PSGGeneralController_reloadAsyncSpecifiersWithCompletion___block_invoke_261;
  block[3] = &unk_278325708;
  v26 = v6;
  v14 = completionCopy;
  v25 = v14;
  dispatch_group_notify(v13, MEMORY[0x277D85CD0], block);
  followUpModel = [(PSGGeneralController *)self followUpModel];
  v16 = followUpModel == 0;

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x277CFE538]);
    bundle = [(PSGGeneralController *)self bundle];
    bundleIdentifier = [bundle bundleIdentifier];
    v20 = [v17 initWithBundleIdentifier:bundleIdentifier clientIdentifier:0];
    [(PSGGeneralController *)self setFollowUpModel:v20];

    objc_initWeak(buf, self);
    followUpModel2 = [(PSGGeneralController *)self followUpModel];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __60__PSGGeneralController_reloadAsyncSpecifiersWithCompletion___block_invoke_263;
    v22[3] = &unk_278325730;
    objc_copyWeak(&v23, buf);
    [followUpModel2 setItemChangeHandler:v22];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }
}

void __60__PSGGeneralController_reloadAsyncSpecifiersWithCompletion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _PSGLoggingFacility(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[PSGGeneralController reloadAsyncSpecifiersWithCompletion:]_block_invoke";
    _os_log_impl(&dword_21CF20000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: updateTrackpadWithCompletion finished", &v7, 0xCu);
  }

  v4 = _PSGSignpostLoggingFacility(v3);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 136446210;
    v8 = "[PSGGeneralController reloadAsyncSpecifiersWithCompletion:]_block_invoke";
    _os_signpost_emit_with_name_impl(&dword_21CF20000, v5, OS_SIGNPOST_EVENT, v6, "PSGGeneralController.reloadAsyncSpecifiersWithCompletion", "%{public}s: updateTrackpadWithCompletion finished", &v7, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __60__PSGGeneralController_reloadAsyncSpecifiersWithCompletion___block_invoke_258(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _PSGLoggingFacility(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[PSGGeneralController reloadAsyncSpecifiersWithCompletion:]_block_invoke";
    _os_log_impl(&dword_21CF20000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: updateAtlasWithCompletion finished", &v7, 0xCu);
  }

  v4 = _PSGSignpostLoggingFacility(v3);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 136446210;
    v8 = "[PSGGeneralController reloadAsyncSpecifiersWithCompletion:]_block_invoke";
    _os_signpost_emit_with_name_impl(&dword_21CF20000, v5, OS_SIGNPOST_EVENT, v6, "PSGGeneralController.reloadAsyncSpecifiersWithCompletion", "%{public}s: updateAtlasWithCompletion finished", &v7, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __60__PSGGeneralController_reloadAsyncSpecifiersWithCompletion___block_invoke_259(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _PSGLoggingFacility(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[PSGGeneralController reloadAsyncSpecifiersWithCompletion:]_block_invoke";
    _os_log_impl(&dword_21CF20000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: updateMattersWithCompletion finished", &v7, 0xCu);
  }

  v4 = _PSGSignpostLoggingFacility(v3);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 136446210;
    v8 = "[PSGGeneralController reloadAsyncSpecifiersWithCompletion:]_block_invoke";
    _os_signpost_emit_with_name_impl(&dword_21CF20000, v5, OS_SIGNPOST_EVENT, v6, "PSGGeneralController.reloadAsyncSpecifiersWithCompletion", "%{public}s: updateMattersWithCompletion finished", &v7, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __60__PSGGeneralController_reloadAsyncSpecifiersWithCompletion___block_invoke_260(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _PSGLoggingFacility(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "[PSGGeneralController reloadAsyncSpecifiersWithCompletion:]_block_invoke";
    _os_log_impl(&dword_21CF20000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: updateTVProviderWithCompletion finished", &v7, 0xCu);
  }

  v4 = _PSGSignpostLoggingFacility(v3);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 136446210;
    v8 = "[PSGGeneralController reloadAsyncSpecifiersWithCompletion:]_block_invoke";
    _os_signpost_emit_with_name_impl(&dword_21CF20000, v5, OS_SIGNPOST_EVENT, v6, "PSGGeneralController.reloadAsyncSpecifiersWithCompletion", "%{public}s: updateTVProviderWithCompletion finished", &v7, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __60__PSGGeneralController_reloadAsyncSpecifiersWithCompletion___block_invoke_261(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _PSGSignpostLoggingFacility(a1);
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_21CF20000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PSGGeneralController.reloadAsyncSpecifiersWithCompletion", &unk_21CF5E2CA, &v8, 2u);
  }

  v6 = _PSGLoggingFacility(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446210;
    v9 = "[PSGGeneralController reloadAsyncSpecifiersWithCompletion:]_block_invoke";
    _os_log_impl(&dword_21CF20000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: async reload completed.", &v8, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __60__PSGGeneralController_reloadAsyncSpecifiersWithCompletion___block_invoke_263(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateSoftwareUpdateBadge];
}

- (void)updateTVProviderWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  loadingQueue = [(PSGGeneralController *)self loadingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__PSGGeneralController_updateTVProviderWithCompletion___block_invoke;
  block[3] = &unk_2783257D0;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(loadingQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __55__PSGGeneralController_updateTVProviderWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CE21F0] sharedAccountStore];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__PSGGeneralController_updateTVProviderWithCompletion___block_invoke_2;
  v3[3] = &unk_2783257A8;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  [v2 fetchAccountsWithCompletionHandler:v3];

  objc_destroyWeak(&v5);
}

void __55__PSGGeneralController_updateTVProviderWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CE2268] defaultCenter];
  v3 = [v2 status];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__PSGGeneralController_updateTVProviderWithCompletion___block_invoke_3;
  block[3] = &unk_278325780;
  objc_copyWeak(v6, (a1 + 40));
  v6[1] = v3;
  v5 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v6);
}

void __55__PSGGeneralController_updateTVProviderWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _createTVProviderSpecifiersIfNeeded];
  v4 = v3;
  if (*(a1 + 48) == 1)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__PSGGeneralController_updateTVProviderWithCompletion___block_invoke_4;
    v11[3] = &unk_278325758;
    v11[4] = WeakRetained;
    [v3 na_each:v11];
  }

  else
  {
    v5 = [v3 reverseObjectEnumerator];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__PSGGeneralController_updateTVProviderWithCompletion___block_invoke_5;
    v10[3] = &unk_278325758;
    v10[4] = WeakRetained;
    [v5 na_each:v10];
  }

  v6 = [WeakRetained specifierIDPendingPush];
  if ([@"TV_PROVIDER" isEqualToString:v6])
  {
    v7 = [WeakRetained specifierIDPendingPush];
    v8 = [WeakRetained specifierForID:v7];

    if (v8)
    {
      [WeakRetained handlePendingURL];
    }
  }

  else
  {
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

void __55__PSGGeneralController_updateTVProviderWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  v6 = [v4 specifierForID:v5];

  if (!v6)
  {
    v7 = *(a1 + 32);
    v10[0] = v3;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v9 = [v3 identifier];
    [v7 insertOrderedSpecifiers:v8 atID:v9 animated:1];
  }
}

void __55__PSGGeneralController_updateTVProviderWithCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  [v2 removeSpecifierID:v3];
}

- (void)_updateInteractivityForTVProviderIfNeeded
{
  v3 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) specifierForID:@"TV_PROVIDER"];

  if (v3)
  {
    v17 = [(PSGGeneralController *)self specifierForID:@"TV_PROVIDER"];
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v5 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25CD0]];

    mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
    v7 = [mEMORY[0x277D262A0]2 effectiveBoolValueForSetting:*MEMORY[0x277D26078]];

    v9 = v5 == 1 && v7 == 1;
    objc_opt_class();
    v10 = *MEMORY[0x277D3FF38];
    v11 = [v17 objectForKeyedSubscript:*MEMORY[0x277D3FF38]];
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = v13;
    if (!v13)
    {
      v13 = MEMORY[0x277CBEC38];
    }

    bOOLValue = [v13 BOOLValue];

    if (v9 != bOOLValue)
    {
      v16 = [MEMORY[0x277CCABB0] numberWithBool:v9];
      [v17 setObject:v16 forKeyedSubscript:v10];

      [(PSGGeneralController *)self reloadSpecifierID:@"TV_PROVIDER"];
    }
  }
}

- (void)updateAtlasWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  loadingQueue = [(PSGGeneralController *)self loadingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PSGGeneralController_updateAtlasWithCompletion___block_invoke;
  block[3] = &unk_278325848;
  v8 = completionCopy;
  v6 = completionCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(loadingQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __50__PSGGeneralController_updateAtlasWithCompletion___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CEE3F8] bagForProfile:@"Settings" profileVersion:@"1"];
  v3 = [objc_alloc(MEMORY[0x277CEE498]) initWithBag:v2];
  v4 = [objc_alloc(MEMORY[0x277CEE4C0]) initWithPlacement:@"GeneralSettings" context:0];
  v5 = objc_alloc(MEMORY[0x277CEE4A8]);
  v12[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v7 = [v5 initWithServiceType:@"Atlas" placementInfo:v6];

  v8 = [v3 enqueueMessageEvent:v7];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__PSGGeneralController_updateAtlasWithCompletion___block_invoke_2;
  v9[3] = &unk_278325820;
  v10 = *(a1 + 32);
  objc_copyWeak(&v11, (a1 + 40));
  [v8 addFinishBlock:v9];

  objc_destroyWeak(&v11);
}

void __50__PSGGeneralController_updateAtlasWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__PSGGeneralController_updateAtlasWithCompletion___block_invoke_3;
    block[3] = &unk_2783257F8;
    objc_copyWeak(&v11, (a1 + 40));
    v9 = v5;
    v10 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v11);
  }
}

void __50__PSGGeneralController_updateAtlasWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) messageActions];
  v3 = [v2 firstObject];
  v4 = [v3 placementsMap];
  v5 = [v4 objectForKeyedSubscript:@"GeneralSettings"];
  v6 = [v5 firstObject];

  v7 = [v6 makeDialogRequest];
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
  v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v9 setObject:v8 forKey:@"AMSPreloadedAtlasDialog"];

  v10 = [WeakRetained atlasSpecifierForDialog:v7];
  v11 = [WeakRetained specifierForID:@"ATLAS"];
  if (v10)
  {
    v12 = [WeakRetained specifierForID:@"STORAGE_MGMT"];
    if (v11)
    {
      [WeakRetained removeSpecifier:v11];
    }

    [WeakRetained insertSpecifier:v10 afterSpecifier:v12 animated:v11 == 0];
  }

  else
  {
    [WeakRetained removeSpecifier:v11 animated:1];
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))();
  }
}

- (void)updateMatterWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  loadingQueue = [(PSGGeneralController *)self loadingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PSGGeneralController_updateMatterWithCompletion___block_invoke;
  block[3] = &unk_2783257D0;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(loadingQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __51__PSGGeneralController_updateMatterWithCompletion___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __51__PSGGeneralController_updateMatterWithCompletion___block_invoke_2;
  v2[3] = &unk_278325898;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  [PSGMatterController shouldShowMatterControllerWithCompletion:v2];

  objc_destroyWeak(&v4);
}

void __51__PSGGeneralController_updateMatterWithCompletion___block_invoke_2(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PSGGeneralController_updateMatterWithCompletion___block_invoke_3;
  block[3] = &unk_278325870;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  v7 = a2;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v6);
}

void __51__PSGGeneralController_updateMatterWithCompletion___block_invoke_3(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v8 = _PSGLoggingFacility(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v21 = "[PSGGeneralController updateMatterWithCompletion:]_block_invoke_3";
      _os_log_impl(&dword_21CF20000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Self deallocated during load", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v4 = [WeakRetained matterSpecifier];

  if (!v4)
  {
    v8 = _PSGLoggingFacility(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v3 matterSpecifier];
      *buf = 136446466;
      v21 = "[PSGGeneralController updateMatterWithCompletion:]_block_invoke";
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_21CF20000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Not updating Matter because self.matterSpecifier=%@", buf, 0x16u);
    }

LABEL_9:

    goto LABEL_19;
  }

  v6 = [v3 specifierForID:@"MATTER_ACCESSORIES"];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v10 = [v3 specifierForID:@"CARPLAY_MATTER_GROUP"];
    v7 = v10 != 0;
  }

  if ((*(a1 + 48) & 1) != 0 || !v7)
  {
    if (v7 || (*(a1 + 48) & 1) == 0)
    {
      goto LABEL_17;
    }

    v11 = [v3 matterSpecifier];
    v19 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v13 = [v3 matterSpecifier];
    v14 = [v13 identifier];
    [v3 insertOrderedSpecifiers:v12 atID:v14 animated:1];
  }

  else
  {
    v11 = [v3 matterSpecifier];
    [v3 removeSpecifier:v11 animated:1];
  }

LABEL_17:
  v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v15 setBool:*(a1 + 48) forKey:@"PSGShouldShowMatter"];

  v16 = [v3 specifierIDPendingPush];
  v17 = [v3 specifierForID:v16];

  if (v17)
  {
    [v3 handlePendingURL];
  }

LABEL_19:
  v18 = *(a1 + 32);
  if (v18)
  {
    (*(v18 + 16))();
  }
}

- (void)updateTrackpadWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  loadingQueue = [(PSGGeneralController *)self loadingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__PSGGeneralController_updateTrackpadWithCompletion___block_invoke;
  block[3] = &unk_2783257D0;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(loadingQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __53__PSGGeneralController_updateTrackpadWithCompletion___block_invoke(uint64_t a1)
{
  v2 = +[PSGMousePointerController sharedInstance];
  v3 = [v2 pointerDevices];
  v4 = [v3 count] != 0;

  v5 = +[PSGMousePointerController sharedInstance];
  v6 = [v5 hasMouse];

  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v7 setBool:v4 forKey:@"HasPointerDevice"];

  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v8 setBool:v6 forKey:@"HasMouse"];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__PSGGeneralController_updateTrackpadWithCompletion___block_invoke_2;
  block[3] = &unk_2783258C0;
  objc_copyWeak(&v11, (a1 + 40));
  v12 = v4;
  v13 = v6;
  v10 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v11);
}

uint64_t __53__PSGGeneralController_updateTrackpadWithCompletion___block_invoke_2(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained specifierForID:@"POINTERS"];

  if (v3)
  {
    v4 = *(a1 + 48) ^ 1;
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 removeSpecifierID:@"POINTERS" animated:v4 & 1];
  }

  else
  {
    v4 = 1;
  }

  if (*(a1 + 48) == 1)
  {
    v6 = MEMORY[0x277D3FAD8];
    if (*(a1 + 49))
    {
      v7 = @"TRACKPAD_MOUSE";
    }

    else
    {
      v7 = @"TRACKPAD";
    }

    v8 = PSG_LocalizedStringForPointers(v7);
    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v6 preferenceSpecifierNamed:v8 target:v9 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

    [v10 setIdentifier:@"POINTERS"];
    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
    [v10 setObject:@"com.apple.graphic-icon.trackpad-and-mouse" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
    v11 = objc_loadWeakRetained((a1 + 40));
    v14[0] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [v11 insertOrderedSpecifiers:v12 atID:@"POINTERS" animated:v4 & 1];
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)sortDateTimeGroupIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = [identifiersCopy mutableCopy];
  v5 = [identifiersCopy indexOfObject:@"DATE_AND_TIME_GROUP"];
  v6 = [identifiersCopy indexOfObject:@"TV_PROVIDER_GROUP"];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = identifiersCopy;
  }

  else
  {
    v8 = v5 + 1;
    v9 = [identifiersCopy subarrayWithRange:{v5 + 1, v6 - (v5 + 1)}];
    v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_8];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__PSGGeneralController_sortDateTimeGroupIdentifiers___block_invoke_2;
    v14[3] = &unk_278325908;
    v11 = v4;
    v15 = v11;
    v16 = v8;
    [v10 enumerateObjectsUsingBlock:v14];
    v12 = v11;
  }

  return v12;
}

uint64_t __53__PSGGeneralController_sortDateTimeGroupIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = PSG_LocalizedStringForGeneral(a2);
  v6 = PSG_LocalizedStringForGeneral(v4);

  v7 = [v5 localizedCompare:v6];
  return v7;
}

- (id)sortDateTimeGroupWithSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v4 = [specifiersCopy mutableCopy];
  v5 = [specifiersCopy indexOfSpecifierWithID:@"DATE_AND_TIME_GROUP"];
  v6 = [specifiersCopy indexOfNextGroupStartingAtIndex:v5];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL && v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v5 + 1;
    v9 = [specifiersCopy subarrayWithRange:{v8, v6 - v8}];
    v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_299];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __56__PSGGeneralController_sortDateTimeGroupWithSpecifiers___block_invoke_2;
    v16 = &unk_278325950;
    v17 = v4;
    v18 = v8;
    [v10 enumerateObjectsUsingBlock:&v13];
  }

  v11 = [v4 copy];

  return v11;
}

uint64_t __56__PSGGeneralController_sortDateTimeGroupWithSpecifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = PSG_LocalizedStringForGeneral(v5);
  v7 = [v4 identifier];

  v8 = PSG_LocalizedStringForGeneral(v7);
  v9 = [v6 localizedCompare:v8];

  return v9;
}

- (void)reloadSpecifiers
{
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  v7 = 136446466;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_21CF20000, v1, v2, "%{public}s: called before -specifiers has completed. Don't call -reloadSpecifiers while controller is loading: %{public}@", v3, v4, v5, v6, v7);
}

- (void)pairedVehiclesDidChange
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = _PSGLoggingFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[PSGGeneralController pairedVehiclesDidChange]";
    _os_log_impl(&dword_21CF20000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: reloading specifiers because paired cars changed.", &v4, 0xCu);
  }

  [(PSGGeneralController *)self reloadSpecifiers];
}

- (id)specifiers
{
  v146 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (v4)
  {
    goto LABEL_77;
  }

  bundle = [(PSGGeneralController *)self bundle];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  [currentDevice sf_isInternalInstall];

  v6 = objc_alloc(MEMORY[0x277CBEB38]);
  v7 = [bundle pathForResource:@"General" ofType:@"plist"];
  v8 = [v6 initWithContentsOfFile:v7];

  v126 = 0;
  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  v10 = *MEMORY[0x277D3FC20];
  v11 = [v9 initWithArray:*(&self->super.super.super.super.super.isa + v10)];
  v125 = v11;
  v115 = v8;
  v12 = SpecifiersFromPlist();
  v13 = v125;
  v116 = v125;

  objc_storeStrong((&self->super.super.super.super.super.isa + v10), v13);
  [(PSGGeneralController *)self setSpecifierID:v126, &v125];
  if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
  {
    v14 = [v12 specifierForID:@"Reset"];
    [v12 removeObject:v14];
    v15 = [v12 specifierForID:@"SHUTDOWN_LABEL"];

    [v12 removeObject:v15];
  }

  traitCollection = [(PSGGeneralController *)self traitCollection];
  pe_isSettingsFeatureDescriptionCellSupported = [traitCollection pe_isSettingsFeatureDescriptionCellSupported];

  if ((pe_isSettingsFeatureDescriptionCellSupported & 1) == 0)
  {
    v18 = [v12 specifierForID:@"PLACARD_GROUP"];
    [v12 removeObject:v18];
    v19 = [v12 specifierForID:@"PLACARD"];
    [v12 removeObject:v19];
  }

  gameControllersSpecifier = [(PSGGeneralController *)self gameControllersSpecifier];
  v21 = gameControllersSpecifier == 0;

  if (v21)
  {
    v22 = [v12 specifierForID:@"GAME_CONTROLLER"];
    [(PSGGeneralController *)self setGameControllersSpecifier:v22];

    v23 = PSBundlePathForPreferenceBundle();
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v26 = v25 = v23;
    LOBYTE(v22) = [defaultManager fileExistsAtPath:v26];

    if ((v22 & 1) == 0)
    {
      v27 = PSBundlePathForPreferenceBundle();

      v23 = v27;
    }

    v29 = v28 = v23;
    gameControllersSpecifier2 = [(PSGGeneralController *)self gameControllersSpecifier];
    [gameControllersSpecifier2 setObject:v29 forKeyedSubscript:*MEMORY[0x277D40000]];
  }

  _gameControllerDefaults = [(PSGGeneralController *)self _gameControllerDefaults];
  v32 = [_gameControllerDefaults BOOLForKey:@"showGCPrefsPane"];

  if ((v32 & 1) == 0)
  {
    gameControllersSpecifier3 = [(PSGGeneralController *)self gameControllersSpecifier];
    v34 = gameControllersSpecifier3 == 0;

    if (!v34)
    {
      gameControllersSpecifier4 = [(PSGGeneralController *)self gameControllersSpecifier];
      [v12 removeObject:gameControllersSpecifier4];
    }
  }

  if ((PSGetCapabilityBoolAnswer() & 1) == 0 && !CFPreferencesGetAppBooleanValue(@"force-international", @"com.apple.preferences", 0))
  {
    v36 = [v12 specifierForID:@"INTERNATIONAL"];
    [v12 removeObject:v36];
  }

  v37 = [v12 specifierForID:@"AIRDROP_LINK"];
  airDropSpecifier = self->_airDropSpecifier;
  self->_airDropSpecifier = v37;

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isAirDropAllowed = [mEMORY[0x277D262A0] isAirDropAllowed];

  if ((isAirDropAllowed & 1) == 0)
  {
    [v12 removeObject:self->_airDropSpecifier];
  }

  carPreferences = [(PSGGeneralController *)self carPreferences];
  v42 = carPreferences == 0;

  if (v42)
  {
    v127 = 0;
    v128 = &v127;
    v129 = 0x2050000000;
    v43 = getCRCarPlayPreferencesClass_softClass;
    v130 = getCRCarPlayPreferencesClass_softClass;
    if (!getCRCarPlayPreferencesClass_softClass)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v143 = __getCRCarPlayPreferencesClass_block_invoke;
      v144 = &unk_278325308;
      v145 = &v127;
      __getCRCarPlayPreferencesClass_block_invoke(&buf);
      v43 = v128[3];
    }

    v44 = v43;
    _Block_object_dispose(&v127, 8);
    v45 = objc_alloc_init(v43);
    [v45 setPreferencesDelegate:self];
    [(PSGGeneralController *)self setCarPreferences:v45];
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:self selector:sel_pairedVehiclesDidChange name:@"CRPairedVehiclesDidChangeNotification" object:0];
  }

  if (![(PSGGeneralController *)self _hasCarPlayContent])
  {
    v47 = [v12 specifierForID:@"CARPLAY"];
    [v12 removeObject:v47];
  }

  v48 = [v12 specifierForID:@"SOFTWARE_UPDATE_LINK"];
  loadingQueue = [(PSGGeneralController *)self loadingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__PSGGeneralController_specifiers__block_invoke;
  block[3] = &unk_278324FE8;
  v114 = v48;
  v123 = v114;
  selfCopy = self;
  dispatch_async(loadingQueue, block);

  [(PSGGeneralController *)self updateSoftwareUpdateBadge];
  if (_os_feature_enabled_impl() && (PSIsInEDUMode() & 1) == 0)
  {
    [(PSGGeneralController *)self updateAtlasFromCache:v12];
  }

  if (([MEMORY[0x277D38BE8] isPictureInPictureSupported] & 1) == 0)
  {
    v50 = [v12 specifierForID:@"PiP_SPEC"];
    [v12 removeObject:v50];
  }

  if ((PSGetCapabilityBoolAnswer() & 1) == 0)
  {
    v51 = CFPreferencesCopyAppValue(@"AllowTelephonyLoggingUI", @"com.apple.commcenter");
    v52 = v51;
    if (v51)
    {
      v53 = CFGetTypeID(v51);
      if (v53 == CFBooleanGetTypeID())
      {
        v54 = CFBooleanGetValue(v52) == 0;
        CFRelease(v52);
        if (!v54)
        {
          v55 = *MEMORY[0x277D3FE08];
          v140[0] = *MEMORY[0x277D40138];
          v140[1] = v55;
          v141[0] = @"PSLinkCell";
          v141[1] = @"EDGESettings";
          v56 = *MEMORY[0x277CBED10];
          v57 = *MEMORY[0x277D3FFB8];
          v140[2] = *MEMORY[0x277D3FDF8];
          v140[3] = v57;
          v141[2] = v56;
          v141[3] = @"TELEPHONY_LOGS";
          v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v141 forKeys:v140 count:4];
          v137 = v58;
          v138 = @"items";
          v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v137 count:1];
          v139 = v59;
          v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
          v61 = SpecifiersFromPlist();

          v62 = [v12 specifierForID:{@"Reset", 0}];
          [v12 ps_insertObjectsFromArray:v61 afterObject:v62];
        }
      }

      else
      {
        CFRelease(v52);
      }
    }
  }

  if (+[PSGExtendedResearchUtilities getCanShowExtendedResearch])
  {
    v135[0] = *MEMORY[0x277D40170];
    v63 = PSG_LocalizedString(@"EXTENDED_RESEARCH_PROGRAM");
    v64 = *MEMORY[0x277D40020];
    v65 = MEMORY[0x277CBEC38];
    v136[0] = v63;
    v136[1] = MEMORY[0x277CBEC38];
    v66 = *MEMORY[0x277D3FFD8];
    v135[1] = v64;
    v135[2] = v66;
    v136[2] = @"com.apple.graphic-icon.extended-research-program";
    v135[3] = *MEMORY[0x277D3FE08];
    v67 = +[PSGExtendedResearchUtilities getExtendedResearchSettingsBundleName];
    v136[3] = v67;
    v68 = *MEMORY[0x277D3FFB8];
    v135[4] = *MEMORY[0x277D3FDF8];
    v135[5] = v68;
    v136[4] = v65;
    v136[5] = @"EXTENDED_RESEARCH_PROGRAM";
    v135[6] = *MEMORY[0x277D40138];
    v136[6] = @"PSLinkListCell";
    v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v136 forKeys:v135 count:7];

    v132 = v69;
    v133 = @"items";
    v70 = [MEMORY[0x277CBEA60] arrayWithObjects:&v132 count:1];
    v134 = v70;
    v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
    v72 = SpecifiersFromPlist();

    v73 = [v12 specifierForID:{@"ManagedConfigurationList", 0}];
    [v12 ps_insertObjectsFromArray:v72 afterObject:v73];
  }

  else
  {
    v66 = *MEMORY[0x277D3FFD8];
  }

  v74 = [v12 specifierForID:@"Reset"];
  v75 = PSG_LocalizedStringForGeneral(@"TRANSFER_OR_RESET_TITLE");
  [v74 setName:v75];

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice2 userInterfaceIdiom])
  {
    v77 = @"com.apple.graphic-icon.transfer-or-reset-ipad";
  }

  else
  {
    v77 = @"com.apple.graphic-icon.transfer-or-reset-iphone";
  }

  [v74 setObject:v77 forKeyedSubscript:v66];

  v78 = [v12 specifierForID:@"MATTER_ACCESSORIES"];
  [(PSGGeneralController *)self setMatterSpecifier:v78];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v80 = [standardUserDefaults BOOLForKey:@"PSGShouldShowMatter"];

  if ((v80 & 1) == 0)
  {
    matterSpecifier = [(PSGGeneralController *)self matterSpecifier];
    [v12 removeObject:matterSpecifier];
  }

  if (objc_opt_class())
  {
    isDefaultContactlessAppConfigurationEligible = [MEMORY[0x277D493B0] isDefaultContactlessAppConfigurationEligible];
    if ((isDefaultContactlessAppConfigurationEligible & 1) == 0)
    {
      v83 = _PSGLoggingFacility(isDefaultContactlessAppConfigurationEligible);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[PSGGeneralController specifiers]";
        _os_log_impl(&dword_21CF20000, v83, OS_LOG_TYPE_DEFAULT, "%s: removing CONTACTLESS_NFC", &buf, 0xCu);
      }

      v84 = [v12 specifierForID:@"CONTACTLESS_NFC"];
      [v12 removeObject:v84];
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v85 = [v12 specifierForID:@"SAD_GROUP"];
    [v12 removeObject:v85];

    v86 = [v12 specifierForID:@"HEALTH_DATA"];
    [v12 removeObject:v86];

    v87 = [v12 specifierForID:@"WEB_BROWSING"];
    [v12 removeObject:v87];

    v88 = [v12 specifierForID:@"PHOTO_LIBRARY"];
    [v12 removeObject:v88];
  }

  v89 = _os_feature_enabled_impl();
  if ((v89 & 1) == 0)
  {
    v90 = _PSGLoggingFacility(v89);
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[PSGGeneralController specifiers]";
      _os_log_impl(&dword_21CF20000, v90, OS_LOG_TYPE_DEFAULT, "%s: AIDEBUG LocalCaptureSettings is not enabled", &buf, 0xCu);
    }

    v91 = [v12 specifierForID:@"LOCAL_CAPTURE"];
    [v12 removeObject:v91];
  }

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  if ([defaultWorkspace applicationIsInstalled:@"com.apple.Health"])
  {
    mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
    restrictedAppBundleIDs = [mEMORY[0x277D262A0]2 restrictedAppBundleIDs];
    v95 = [restrictedAppBundleIDs containsObject:@"com.apple.Health"];

    if (v95)
    {
      goto LABEL_58;
    }

    defaultWorkspace = [v12 specifierForID:@"HEALTH_DATA"];
    [v12 removeObject:defaultWorkspace];
  }

LABEL_58:
  defaultWorkspace2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v97 = [defaultWorkspace2 applicationIsInstalled:@"com.apple.mobileslideshow"];

  if (v97)
  {
    v98 = [v12 specifierForID:@"PHOTO_LIBRARY"];
    [v12 removeObject:v98];
  }

  defaultWorkspace3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v100 = [defaultWorkspace3 applicationIsInstalled:@"com.apple.mobilesafari"];

  if (v100)
  {
    v101 = [v12 specifierForID:@"WEB_BROWSING"];
    [v12 removeObject:v101];
  }

  v102 = [v12 specifierForID:@"HEALTH_DATA"];
  if (!v102)
  {
    v102 = [v12 specifierForID:@"PHOTO_LIBRARY"];
    if (!v102)
    {
      v112 = [v12 specifierForID:@"WEB_BROWSING"];
      v113 = v112 == 0;

      if (!v113)
      {
        goto LABEL_65;
      }

      v102 = [v12 specifierForID:@"SAD_GROUP"];
      [v12 removeObject:v102];
    }
  }

LABEL_65:
  v103 = PSIsInEDUMode();
  if (v103)
  {
    v104 = __34__PSGGeneralController_specifiers__block_invoke_399(v103);
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v105 = [v104 countByEnumeratingWithState:&v118 objects:v131 count:16];
    if (v105)
    {
      v106 = *v119;
      do
      {
        for (i = 0; i != v105; ++i)
        {
          if (*v119 != v106)
          {
            objc_enumerationMutation(v104);
          }

          v108 = [v12 specifierForID:*(*(&v118 + 1) + 8 * i)];
          if (v108)
          {
            [v12 removeObject:v108];
          }
        }

        v105 = [v104 countByEnumeratingWithState:&v118 objects:v131 count:16];
      }

      while (v105);
    }
  }

  v109 = [(PSGGeneralController *)self sortDateTimeGroupWithSpecifiers:v12];
  v110 = *(&self->super.super.super.super.super.isa + v3);
  *(&self->super.super.super.super.super.isa + v3) = v109;

  v4 = *(&self->super.super.super.super.super.isa + v3);
LABEL_77:

  return v4;
}

void __34__PSGGeneralController_specifiers__block_invoke(uint64_t a1)
{
  IsBadgedForSoftwareUpdate = SUSUISettingsIsBadgedForSoftwareUpdate();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__PSGGeneralController_specifiers__block_invoke_2;
  block[3] = &unk_278325978;
  v8 = IsBadgedForSoftwareUpdate;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

char *__34__PSGGeneralController_specifiers__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 setProperty:&unk_282E90040 forKey:*MEMORY[0x277D3FDB0]];
  }

  else
  {
    [v3 removePropertyForKey:*MEMORY[0x277D3FDB0]];
  }

  result = *(a1 + 40);
  if (*&result[*MEMORY[0x277D3FC48]])
  {
    v5 = *(a1 + 32);

    return [result reloadSpecifier:v5];
  }

  return result;
}

id __34__PSGGeneralController_specifiers__block_invoke_399(uint64_t a1)
{
  if (PSGUserDefaultsAtlasDialogKey_block_invoke_na_once_token_27 != -1)
  {
    __34__PSGGeneralController_specifiers__block_invoke_399_cold_1();
  }

  v2 = PSGUserDefaultsAtlasDialogKey_block_invoke_na_once_object_27;

  return v2;
}

uint64_t __34__PSGGeneralController_specifiers__block_invoke_2_403()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"SOFTWARE_UPDATE_LINK", @"STORAGE_MGMT", @"COVERAGE_GROUP", @"COVERAGE", @"CONTINUITY_SPEC", @"CONTACTLESS_NFC", @"PiP_SPEC", @"CARPLAY", @"MATTER_ACCESSORIES", @"NFC_LINK", @"HOME_BUTTON_GROUP", @"HOME_BUTTON", @"WINDOW_RESTORATION", @"TV_PROVIDER_GROUP", @"TV_PROVIDER", @"RETAIL_KIOSK_MODE_SETTINGS_BUNDLE_GROUP", @"RETAIL_KIOSK_MODE_SETTINGS", @"TRANSFER_ERASE_RESET_GROUP", @"Reset", @"SHUTDOWN_GROUP", @"SHUTDOWN_LABEL", 0}];
  v1 = PSGUserDefaultsAtlasDialogKey_block_invoke_na_once_object_27;
  PSGUserDefaultsAtlasDialogKey_block_invoke_na_once_object_27 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)updateAtlasFromCache:(id)cache
{
  cacheCopy = cache;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [standardUserDefaults dataForKey:@"AMSPreloadedAtlasDialog"];

  if (v6)
  {
    v9 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v9];
    if (v7)
    {
      v8 = [(PSGGeneralController *)self atlasSpecifierForDialog:v7];
      [cacheCopy insertObject:v8 atIndex:{objc_msgSend(cacheCopy, "indexOfSpecifierWithID:", @"STORAGE_MGMT"}];
    }
  }
}

- (id)atlasSpecifierForDialog:(id)dialog
{
  dialogCopy = dialog;
  v5 = dialogCopy;
  if (dialogCopy && ([dialogCopy title], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7))
  {
    v8 = MEMORY[0x277D3FAD8];
    title = [v5 title];
    v10 = [v8 preferenceSpecifierNamed:title target:self set:0 get:0 detail:0 cell:1 edit:0];

    [v10 setButtonAction:sel_loadAtlas_];
    [v10 setUserInfo:v5];
    [v10 setProperty:@"ATLAS" forKey:*MEMORY[0x277D3FFB8]];
    v11 = *MEMORY[0x277CBED28];
    [v10 setProperty:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277D3FF38]];
    [v10 setProperty:v11 forKey:*MEMORY[0x277D40020]];
    [v10 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
    appearanceInfo = [v5 appearanceInfo];
    v13 = [appearanceInfo objectForKeyedSubscript:@"IconUTTypeIdentifier"];

    if (v13 && [v13 length])
    {
      [v10 setProperty:v13 forKey:*MEMORY[0x277D3FFD8]];
    }

    iconURL = [v5 iconURL];
    absoluteString = [iconURL absoluteString];

    if (absoluteString && [absoluteString length])
    {
      iconURL2 = [v5 iconURL];
      absoluteString2 = [iconURL2 absoluteString];
      [v10 setProperty:absoluteString2 forKey:*MEMORY[0x277D40030]];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)loadAtlas:(id)atlas
{
  v20[6] = *MEMORY[0x277D85DE8];
  userInfo = [atlas userInfo];
  v5 = [MEMORY[0x277CEE3F8] bagForProfile:@"Settings" profileVersion:@"1"];
  defaultAction = [userInfo defaultAction];
  deepLink = [defaultAction deepLink];

  if (deepLink)
  {
    v8 = [objc_alloc(MEMORY[0x277CEE940]) initWithBag:v5 account:0 clientInfo:0];
    v9 = [v8 loadURL:deepLink];
    [(PSGGeneralController *)self showController:v8 animate:1];
    v10 = [objc_alloc(MEMORY[0x277CEE498]) initWithBag:v5];
    v19[0] = @"app";
    bundle = [(PSGGeneralController *)self bundle];
    bundleIdentifier = [bundle bundleIdentifier];
    v20[0] = bundleIdentifier;
    v20[1] = @"MessageResult";
    v19[1] = @"eventType";
    v19[2] = @"serviceType";
    v20[2] = @"Atlas";
    v20[3] = @"GeneralSettings";
    v19[3] = @"placement";
    v19[4] = @"success";
    v20[4] = MEMORY[0x277CBEC38];
    v19[5] = @"result";
    v17 = @"url";
    absoluteString = [deepLink absoluteString];
    v18 = absoluteString;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v20[5] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
    v16 = [v10 enqueueData:v15];
  }
}

- (void)loadHomeButtonSettings:(id)settings
{
  settingsCopy = settings;
  v5 = objc_opt_new();
  [v5 setDelegate:self];
  v6 = [objc_alloc(MEMORY[0x277D3FAB8]) initWithRootViewController:v5];
  [v6 setSupportedInterfaceOrientations:2];
  [v6 setModalPresentationStyle:0];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v7 = getBFFStyleClass_softClass_0;
  v14 = getBFFStyleClass_softClass_0;
  if (!getBFFStyleClass_softClass_0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getBFFStyleClass_block_invoke_0;
    v10[3] = &unk_278325308;
    v10[4] = &v11;
    __getBFFStyleClass_block_invoke_0(v10);
    v7 = v12[3];
  }

  v8 = v7;
  _Block_object_dispose(&v11, 8);
  sharedStyle = [v7 sharedStyle];
  [sharedStyle applyThemeToNavigationController:v6];

  [v5 setUsesDoneButton:1];
  [(PSGGeneralController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)homeButtonCustomizeControllerDidFinish:(id)finish
{
  finishCopy = finish;
  presentedViewController = [(PSGGeneralController *)self presentedViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (-[PSGGeneralController presentedViewController](self, "presentedViewController"), v5 = objc_claimAutoreleasedReturnValue(), [v5 topViewController], v6 = objc_claimAutoreleasedReturnValue(), v6 != finishCopy))
  {
    [PSGGeneralController homeButtonCustomizeControllerDidFinish:];
  }

  presentedViewController2 = [(PSGGeneralController *)self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    presentedViewController3 = [(PSGGeneralController *)self presentedViewController];
    topViewController = [presentedViewController3 topViewController];

    v10 = finishCopy;
    if (topViewController != finishCopy)
    {
      goto LABEL_8;
    }

    [(PSGGeneralController *)self dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
  }

  v10 = finishCopy;
LABEL_8:
}

- (BOOL)_hasCarPlayContent
{
  carPreferences = [(PSGGeneralController *)self carPreferences];
  isCarPlayAllowed = [carPreferences isCarPlayAllowed];

  if (!isCarPlayAllowed)
  {
    return 0;
  }

  carPreferences2 = [(PSGGeneralController *)self carPreferences];
  isWirelessCarPlayEnabled = [carPreferences2 isWirelessCarPlayEnabled];

  if (isWirelessCarPlayEnabled)
  {
    return 1;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v8 = getCRPairedVehicleManagerClass_softClass;
  v17 = getCRPairedVehicleManagerClass_softClass;
  if (!getCRPairedVehicleManagerClass_softClass)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __getCRPairedVehicleManagerClass_block_invoke;
    v13[3] = &unk_278325308;
    v13[4] = &v14;
    __getCRPairedVehicleManagerClass_block_invoke(v13);
    v8 = v15[3];
  }

  v9 = v8;
  _Block_object_dispose(&v14, 8);
  v10 = objc_alloc_init(v8);
  allVehicles = [v10 allVehicles];
  v7 = [allVehicles count] != 0;

  return v7;
}

- (void)dealloc
{
  _gameControllerDefaultsObservationToken = [(PSGGeneralController *)self _gameControllerDefaultsObservationToken];
  [(PSGGeneralController *)self na_removeNotificationBlockObserver:_gameControllerDefaultsObservationToken];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.iapd.videoout.SettingsChanged", 0);
  defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter2 removeObserver:self];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 removeObserver:self name:*MEMORY[0x277D25CA0] object:0];

  carPreferences = [(PSGGeneralController *)self carPreferences];
  [carPreferences setPreferencesDelegate:0];

  [(PSGGeneralController *)self setCarPreferences:0];
  v9.receiver = self;
  v9.super_class = PSGGeneralController;
  [(PSGGeneralController *)&v9 dealloc];
}

- (void)profileNotification:(id)notification
{
  notificationCopy = notification;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__PSGGeneralController_profileNotification___block_invoke;
  v6[3] = &unk_278324FE8;
  v7 = notificationCopy;
  selfCopy = self;
  v5 = notificationCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __44__PSGGeneralController_profileNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:*MEMORY[0x277D26180]];

  LODWORD(v2) = [v3 intValue];
  if (v2 != getpid())
  {
    [*(a1 + 40) _updateInteractivityForTVProviderIfNeeded];
    [*(a1 + 40) reload];
  }
}

- (PSGGeneralController)init
{
  v12.receiver = self;
  v12.super_class = PSGGeneralController;
  v2 = [(PSGGeneralController *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.GeneralSettingsUI.PSGGeneralController.loading", v3);
    [(PSGGeneralController *)v2 setLoadingQueue:v4];

    v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.GameController"];
    gameControllerDefaults = v2->__gameControllerDefaults;
    v2->__gameControllerDefaults = v5;

    _gameControllerDefaults = [(PSGGeneralController *)v2 _gameControllerDefaults];
    v8 = [(PSGGeneralController *)v2 na_addNotificationBlockObserverForObject:_gameControllerDefaults keyPath:@"showGCPrefsPane" options:1 usingBlock:&__block_literal_global_458];
    gameControllerDefaultsObservationToken = v2->__gameControllerDefaultsObservationToken;
    v2->__gameControllerDefaultsObservationToken = v8;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_profileNotification_ name:@"PSProfileConnectionRestrictionChangedNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel_profileNotification_ name:@"PSProfileConnectionEffectiveSettingsChangedNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel_handleTVProviderStateDidChangeNotifications_ name:*MEMORY[0x277CE2478] object:0];
    [defaultCenter addObserver:v2 selector:sel_handleTVProviderStateDidChangeNotifications_ name:*MEMORY[0x277CE2440] object:0];
    [defaultCenter addObserver:v2 selector:sel_launchHasCompleted_ name:*MEMORY[0x277D3FFF8] object:0];
    [defaultCenter addObserver:v2 selector:sel_pointerDevicesDidChange name:PSGPointerDevicesDidChangeNotification object:0];
  }

  return v2;
}

void __28__PSGGeneralController_init__block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 _gameControllerDefaults];
  v4 = [v3 BOOLForKey:@"showGCPrefsPane"];

  v5 = [v2 gameControllersSpecifier];

  if (v5)
  {
    v6 = [v2 specifierForID:@"GAME_CONTROLLER"];

    if (v4)
    {
      if (!v6)
      {
        v7 = [v2 gameControllersSpecifier];
        v9[0] = v7;
        v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
        [v2 insertOrderedSpecifiers:v8 atID:@"GAME_CONTROLLER" animated:1];
      }
    }

    else if (v6)
    {
      [v2 removeSpecifierID:@"GAME_CONTROLLER" animated:1];
    }
  }
}

- (void)handleScrollPPTTestName
{
  viewIfLoaded = [(PSGGeneralController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__PSGGeneralController_handleScrollPPTTestName__block_invoke;
    v6[3] = &unk_278324EE0;
    v6[4] = self;
    v5 = MEMORY[0x223D38F60](v6);
    [(PSGGeneralController *)self handleScrollPPTTestName:@"ScrollGeneralPaneRecapShort"];
    if (v5)
    {
      v5[2](v5);
    }
  }
}

void __47__PSGGeneralController_handleScrollPPTTestName__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) pptRelay];
  [v1 setPerformScrollGeneralSettingsTest:0];
}

- (void)pointerDevicesDidChange
{
  mEMORY[0x277D3FA40] = [MEMORY[0x277D3FA40] sharedInstance];
  launchHasCompleted = [mEMORY[0x277D3FA40] launchHasCompleted];

  if (launchHasCompleted)
  {

    [(PSGGeneralController *)self updateTrackpadWithCompletion:0];
  }
}

- (void)setSpecifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = PSGGeneralController;
  specifierCopy = specifier;
  [(PSGGeneralController *)&v8 setSpecifier:specifierCopy];
  objc_opt_class();
  v5 = [specifierCopy objectForKeyedSubscript:{@"PSGPPTRelayKey", v8.receiver, v8.super_class}];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [(PSGGeneralController *)self setPptRelay:v7];
}

- (void)setPptRelay:(id)relay
{
  relayCopy = relay;
  performScrollGeneralSettingsTestObservationToken = [(PSGGeneralController *)self performScrollGeneralSettingsTestObservationToken];

  if (performScrollGeneralSettingsTestObservationToken)
  {
    performScrollGeneralSettingsTestObservationToken2 = [(PSGGeneralController *)self performScrollGeneralSettingsTestObservationToken];
    [(PSGGeneralController *)self na_removeNotificationBlockObserver:performScrollGeneralSettingsTestObservationToken2];

    [(PSGGeneralController *)self setPerformScrollGeneralSettingsTestObservationToken:0];
  }

  objc_storeStrong(&self->_pptRelay, relay);
  v7 = relayCopy;
  if (relayCopy)
  {
    v8 = [(PSGGeneralController *)self na_addNotificationBlockObserverForObject:relayCopy keyPath:@"performScrollGeneralSettingsTest" options:7 usingBlock:&__block_literal_global_485];
    [(PSGGeneralController *)self setPerformScrollGeneralSettingsTestObservationToken:v8];

    v7 = relayCopy;
  }
}

void __36__PSGGeneralController_setPptRelay___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if ([v7 BOOLValue])
  {
    [v8 handleScrollPPTTestName];
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PSGGeneralController;
  [(PSGGeneralController *)&v4 viewDidLoad];
  v3 = PSG_LocalizedStringForGeneral(@"General");
  [(PSGGeneralController *)self setTitle:v3];
}

- (void)viewDidAppear:(BOOL)appear
{
  v18 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = PSGGeneralController;
  [(PSGGeneralController *)&v15 viewDidAppear:appear];
  mEMORY[0x277D3FA40] = [MEMORY[0x277D3FA40] sharedInstance];
  launchHasCompleted = [mEMORY[0x277D3FA40] launchHasCompleted];

  if (launchHasCompleted)
  {
    v7 = _PSGLoggingFacility(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PSGGeneralController viewDidAppear:]";
      _os_log_impl(&dword_21CF20000, v7, OS_LOG_TYPE_DEFAULT, "%s: calling delayedAsyncLoadSpecifiers", buf, 0xCu);
    }

    [(PSGGeneralController *)self delayedAsyncLoadSpecifiers];
  }

  v8 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.General"];
  v9 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v11 = PSG_BundleForGeneralSettingsUIFramework(currentLocale);
  bundleURL = [v11 bundleURL];
  v13 = [v9 initWithKey:@"General" table:@"General" locale:currentLocale bundleURL:bundleURL];

  [(PSGGeneralController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.gear" title:v13 localizedNavigationComponents:MEMORY[0x277CBEBF8] deepLink:v8];
  pptRelay = [(PSGGeneralController *)self pptRelay];
  LODWORD(v11) = [pptRelay performScrollGeneralSettingsTest];

  if (v11)
  {
    [(PSGGeneralController *)self handleScrollPPTTestName];
  }
}

- (void)launchHasCompleted:(id)completed
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = _PSGLoggingFacility(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[PSGGeneralController launchHasCompleted:]";
    _os_log_impl(&dword_21CF20000, v4, OS_LOG_TYPE_DEFAULT, "%s: calling delayedAsyncLoadSpecifiers", &v5, 0xCu);
  }

  [(PSGGeneralController *)self delayedAsyncLoadSpecifiers];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PSGGeneralController;
  [(PSGGeneralController *)&v3 viewDidLayoutSubviews];
  if ([(PSGGeneralController *)self specifiersHaveLoaded])
  {
    if (*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
    {
      [(PSGGeneralController *)self updateSoftwareUpdateBadge];
    }
  }
}

- (id)EDGEEnabled:(id)enabled
{
  mEMORY[0x277D3FB18] = [MEMORY[0x277D3FB18] sharedInstance];
  dataServiceID = [mEMORY[0x277D3FB18] dataServiceID];

  mEMORY[0x277D3FB18]2 = [MEMORY[0x277D3FB18] sharedInstance];
  v6 = [mEMORY[0x277D3FB18]2 interfaceConfigurationValueForKey:@"Available" serviceID:dataServiceID];

  return v6;
}

- (void)enableEdge:(id)edge
{
  mEMORY[0x277D3FB18] = [MEMORY[0x277D3FB18] sharedInstance];
  dataServiceID = [mEMORY[0x277D3FB18] dataServiceID];

  mEMORY[0x277D3FB18]2 = [MEMORY[0x277D3FB18] sharedInstance];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:1];
  [mEMORY[0x277D3FB18]2 setInterfaceConfigurationValue:v5 forKey:@"Available" serviceID:dataServiceID];
}

- (void)updateSoftwareUpdateBadge
{
  loadingQueue = [(PSGGeneralController *)self loadingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PSGGeneralController_updateSoftwareUpdateBadge__block_invoke;
  block[3] = &unk_278324EE0;
  block[4] = self;
  dispatch_async(loadingQueue, block);
}

void __49__PSGGeneralController_updateSoftwareUpdateBadge__block_invoke(uint64_t a1)
{
  IsBadgedForSoftwareUpdate = SUSUISettingsIsBadgedForSoftwareUpdate();
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__PSGGeneralController_updateSoftwareUpdateBadge__block_invoke_2;
  v3[3] = &unk_2783259E0;
  v3[4] = *(a1 + 32);
  v4 = IsBadgedForSoftwareUpdate;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t __49__PSGGeneralController_updateSoftwareUpdateBadge__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) specifierForID:@"SOFTWARE_UPDATE_LINK"];
  v3 = *MEMORY[0x277D3FDB0];
  v7 = v2;
  if (*(a1 + 40) == 1)
  {
    [v2 setProperty:&unk_282E90040 forKey:v3];
  }

  else
  {
    [v2 removePropertyForKey:v3];
  }

  v4 = *(a1 + 32);
  v5 = v7;
  if (*&v4[*MEMORY[0x277D3FC48]])
  {
    v4 = [v4 reloadSpecifier:v7];
    v5 = v7;
  }

  return MEMORY[0x2821F96F8](v4, v5);
}

- (id)_createTVProviderSpecifiersIfNeeded
{
  if (PSIsInEDUMode())
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = *MEMORY[0x277D3FC48];
    v6 = [*(&self->super.super.super.super.super.isa + v5) specifierForID:@"TV_PROVIDER_GROUP"];
    if (!v6)
    {
      v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"TV_PROVIDER_GROUP"];
    }

    [array addObject:v6];
    v7 = [*(&self->super.super.super.super.super.isa + v5) specifierForID:@"TV_PROVIDER"];
    if (!v7)
    {
      v8 = MEMORY[0x277D3FAD8];
      v9 = PSG_LocalizedStringForGeneral(@"TV_PROVIDER_LABEL");
      v7 = [v8 preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:1 edit:0];

      [v7 setIdentifier:@"TV_PROVIDER"];
      [v7 setControllerLoadAction:sel_lazyLoadBundle_];
      v10 = MEMORY[0x277CBEC38];
      [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
      [v7 setObject:@"com.apple.graphic-icon.tv-provider" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
      [v7 setObject:v10 forKeyedSubscript:*MEMORY[0x277D3FDF8]];
      v11 = PSBundlePathForPreferenceBundle();
      v13 = v12 = v11;
      [v7 setObject:v13 forKeyedSubscript:*MEMORY[0x277D40000]];

      mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
      LODWORD(v13) = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25CD0]];

      mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
      v16 = [mEMORY[0x277D262A0]2 effectiveBoolValueForSetting:*MEMORY[0x277D26078]];

      v18 = v13 == 1 && v16 == 1;
      v19 = [MEMORY[0x277CCABB0] numberWithBool:v18];
      [v7 setObject:v19 forKeyedSubscript:*MEMORY[0x277D3FF38]];
    }

    [array addObject:v7];
    v3 = [array copy];
  }

  return v3;
}

@end