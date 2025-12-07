@interface CKAppMenuDataSource
+ (BOOL)_shouldDisplayPluginInMenu:(id)menu;
+ (id)_sortedMenuItemsFromItems:(id)items;
+ (id)appMenuWithTarget:(id)target traitCollection:(id)collection conversation:(id)conversation;
+ (id)orderedItemsForTraitCollection:(id)collection conversation:(id)conversation;
@end

@implementation CKAppMenuDataSource

+ (id)orderedItemsForTraitCollection:(id)collection conversation:(id)conversation
{
  v65 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  conversationCopy = conversation;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  sendingService = [conversationCopy sendingService];
  iMessageLiteService = [MEMORY[0x1E69A5CA0] iMessageLiteService];
  v11 = iMessageLiteService;
  v56 = conversationCopy;
  if (sendingService == iMessageLiteService)
  {
  }

  else
  {
    chat = [conversationCopy chat];
    shouldDisplayOffGridModeStatus = [chat shouldDisplayOffGridModeStatus];

    if (!shouldDisplayOffGridModeStatus)
    {
      goto LABEL_7;
    }
  }

  chat2 = [conversationCopy chat];
  v15 = [chat2 supportsCapabilities:0x20000];

  if (v15)
  {
    v17 = CKFrameworkBundle(v16);
    v18 = [v17 localizedStringForKey:@"EFFECT_MENU_ITEM_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v19 = [CKAppMenuItem imageForIdentifier:@"kAppMenuEffectsItemIdentifier" traitCollection:collectionCopy];
    v20 = [CKAppMenuItem itemWithDisplayName:v18 identifier:@"kAppMenuEffectsItemIdentifier" accessibilityIdentifier:@"Effects" image:v19];
    [v8 addObject:v20];

    v21 = v8;
    goto LABEL_21;
  }

LABEL_7:
  supportsPolls = [conversationCopy supportsPolls];
  v57 = v8;
  if (supportsPolls)
  {
    v23 = CKFrameworkBundle(supportsPolls);
    v24 = [v23 localizedStringForKey:@"POLLS_MENU_ITEM_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v25 = IMBalloonExtensionIDWithSuffix();
    selfCopy = self;
    v27 = IMBalloonExtensionIDWithSuffix();
    v28 = [CKAppMenuItem imageForIdentifier:v27 traitCollection:collectionCopy];
    v29 = [CKAppMenuItem itemWithDisplayName:v24 identifier:v25 accessibilityIdentifier:@"Polls" image:v28];
    [v57 addObject:v29];

    self = selfCopy;
    v8 = v57;
  }

  v58 = collectionCopy;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v30 = +[CKBalloonPluginManager sharedInstance];
  visibleSwitcherPlugins = [v30 visibleSwitcherPlugins];

  obj = visibleSwitcherPlugins;
  v32 = [visibleSwitcherPlugins countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v61;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v61 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(*(&v60 + 1) + 8 * i);
        if ([self _shouldDisplayPluginInMenu:v36])
        {
          browserDisplayName = [v36 browserDisplayName];
          [v36 identifier];
          v39 = v38 = self;
          identifier = [v36 identifier];
          identifier2 = [v36 identifier];
          v42 = [CKAppMenuItem imageForIdentifier:identifier2 traitCollection:v58];
          v43 = [CKAppMenuItem itemWithDisplayName:browserDisplayName identifier:v39 accessibilityIdentifier:identifier image:v42];

          self = v38;
          v8 = v57;
          [v57 addObject:v43];
        }
      }

      v33 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v33);
  }

  supportsSendLater = [v56 supportsSendLater];
  collectionCopy = v58;
  if (supportsSendLater)
  {
    v45 = CKFrameworkBundle(supportsSendLater);
    v46 = [v45 localizedStringForKey:@"SEND_MENU_ITEM_TITLE_SEND_LATER" value:&stru_1F04268F8 table:@"ChatKit"];
    v47 = *MEMORY[0x1E69A6A28];
    v48 = [CKAppMenuItem imageForIdentifier:*MEMORY[0x1E69A6A28] traitCollection:v58];
    v49 = [CKAppMenuItem itemWithDisplayName:v46 identifier:v47 accessibilityIdentifier:@"SendLater" image:v48];
    [v8 addObject:v49];
  }

  v50 = CKFrameworkBundle(supportsSendLater);
  v51 = [v50 localizedStringForKey:@"EFFECT_MENU_ITEM_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  v52 = [CKAppMenuItem imageForIdentifier:@"kAppMenuEffectsItemIdentifier" traitCollection:v58];
  v53 = [CKAppMenuItem itemWithDisplayName:v51 identifier:@"kAppMenuEffectsItemIdentifier" accessibilityIdentifier:@"Effects" image:v52];
  [v8 addObject:v53];

  v21 = [self _sortedMenuItemsFromItems:v8];
LABEL_21:
  v54 = v21;

  return v54;
}

+ (id)_sortedMenuItemsFromItems:(id)items
{
  itemsCopy = items;
  v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  _defaultAppOrder = [self _defaultAppOrder];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __49__CKAppMenuDataSource__sortedMenuItemsFromItems___block_invoke;
  v23[3] = &unk_1E72EC738;
  v8 = itemsCopy;
  v24 = v8;
  v9 = v6;
  v25 = v9;
  v10 = v5;
  v26 = v10;
  [_defaultAppOrder enumerateObjectsUsingBlock:v23];

  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __49__CKAppMenuDataSource__sortedMenuItemsFromItems___block_invoke_3;
  v19 = &unk_1E72F1368;
  v20 = v10;
  v21 = v9;
  v22 = v8;
  v11 = v8;
  v12 = v9;
  v13 = v10;
  [v11 enumerateObjectsUsingBlock:&v16];
  array = [v12 array];

  return array;
}

void __49__CKAppMenuDataSource__sortedMenuItemsFromItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__CKAppMenuDataSource__sortedMenuItemsFromItems___block_invoke_2;
  v10[3] = &unk_1E72F1340;
  v5 = v3;
  v11 = v5;
  v6 = [v4 indexOfObjectPassingTest:v10];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) objectAtIndex:v6];
    [v8 addObject:v9];

    [*(a1 + 48) addIndex:v7];
  }
}

uint64_t __49__CKAppMenuDataSource__sortedMenuItemsFromItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hasSuffix:*(a1 + 32)];

  return v4;
}

void __49__CKAppMenuDataSource__sortedMenuItemsFromItems___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (([*(a1 + 32) containsIndex:?] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) objectAtIndex:a3];
    [v5 addObject:v6];
  }
}

+ (BOOL)_shouldDisplayPluginInMenu:(id)menu
{
  menuCopy = menu;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([mEMORY[0x1E69A8070] isClingEnabled])
  {
    v5 = CKIsStickersStripEnabled();
  }

  else
  {
    v5 = 0;
  }

  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  showAllInstalledMessageApps = [mEMORY[0x1E69A8070]2 showAllInstalledMessageApps];

  if (showAllInstalledMessageApps)
  {
    goto LABEL_5;
  }

  identifier = [menuCopy identifier];
  v9 = IMBalloonExtensionIDWithSuffix();
  v10 = [identifier isEqualToString:v9];

  if (v10)
  {
    v5 ^= 1u;
    goto LABEL_16;
  }

  identifier2 = [menuCopy identifier];
  v12 = IMBalloonExtensionIDWithSuffix();
  v13 = [identifier2 isEqualToString:v12];

  if (v13)
  {
    goto LABEL_16;
  }

  identifier3 = [menuCopy identifier];
  v15 = IMBalloonExtensionIDWithSuffix();
  v16 = [identifier3 isEqualToString:v15];

  if (v16)
  {
LABEL_5:
    v5 = 1;
  }

  else
  {
    identifier4 = [menuCopy identifier];
    v18 = IMBalloonExtensionIDWithSuffix();
    v19 = [identifier4 isEqualToString:v18];

    if (v19)
    {
      mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      showTapToRadarMessagesApp = [mEMORY[0x1E69A8070]3 showTapToRadarMessagesApp];
    }

    else
    {
      identifier5 = [menuCopy identifier];
      v23 = IMBalloonExtensionIDWithSuffix();
      v24 = [identifier5 isEqualToString:v23];

      if (!v24)
      {
        v5 = 0;
        goto LABEL_16;
      }

      mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      showTapToRadarMessagesApp = [mEMORY[0x1E69A8070]3 isGenPlaygroundEnabled];
    }

    v5 = showTapToRadarMessagesApp;
  }

LABEL_16:

  return v5;
}

+ (id)appMenuWithTarget:(id)target traitCollection:(id)collection conversation:(id)conversation
{
  v34 = *MEMORY[0x1E69E9840];
  val = target;
  collectionCopy = collection;
  conversationCopy = conversation;
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = conversationCopy;
  obj = [self orderedItemsForTraitCollection:collectionCopy conversation:conversationCopy];
  v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v10)
  {
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        objc_initWeak(&location, val);
        v14 = MEMORY[0x1E69DC628];
        displayName = [v13 displayName];
        image = [v13 image];
        identifier = [v13 identifier];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __70__CKAppMenuDataSource_appMenuWithTarget_traitCollection_conversation___block_invoke;
        v26[3] = &unk_1E72EBF48;
        objc_copyWeak(&v27, &location);
        v26[4] = v13;
        v18 = [v14 actionWithTitle:displayName image:image identifier:identifier handler:v26];

        accessibilityIdentifier = [v13 accessibilityIdentifier];
        [v18 setAccessibilityIdentifier:accessibilityIdentifier];

        [v25 addObject:v18];
        objc_destroyWeak(&v27);
        objc_destroyWeak(&location);
      }

      v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v10);
  }

  v20 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:16 children:v25];
  [v20 setAccessibilityIdentifier:@"AppsMenu"];

  return v20;
}

void __70__CKAppMenuDataSource_appMenuWithTarget_traitCollection_conversation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained appSelectionInterfaceSelectedItem:*(a1 + 32)];
}

@end