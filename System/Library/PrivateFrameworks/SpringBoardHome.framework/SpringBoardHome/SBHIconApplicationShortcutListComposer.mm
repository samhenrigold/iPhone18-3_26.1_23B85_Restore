@interface SBHIconApplicationShortcutListComposer
+ (BOOL)sbh_isDestructiveShortcutItem:(id)item;
+ (BOOL)sbh_isShortcutItemDeleteOrRemove:(id)remove;
+ (BOOL)sbh_isShortcutItemSpringBoardOnly:(id)only;
+ (BOOL)supportsMultiwindowShortcut;
+ (BOOL)supportsNewWindowShortcut;
+ (BOOL)supportsProtectedAppsShortcuts;
+ (id)composedShortcutsForApplicationWithBundleIdentifier:(id)identifier iconDisplayName:(id)name staticItems:(id)items dynamicItems:(id)dynamicItems applicationItemID:(unint64_t)d numberOfDisplayItemsInSwitcher:(int64_t)switcher supportsMultipleWindows:(BOOL)windows isSystemApplication:(BOOL)self0 isInternalApplication:(BOOL)self1 isApplicationInBeta:(BOOL)self2 isApplicationHidden:(BOOL)self3 iconManagerAllowsEditing:(BOOL)self4 removeStyle:(int64_t)self5;
+ (id)composedShortcutsForBookmarkIcon:(id)icon withDisplayName:(id)name iconManagerAllowsEditing:(BOOL)editing removeStyle:(int64_t)style;
+ (id)composedShortcutsForDownloadingApplicationWithBundleIdentifier:(id)identifier iconDisplayName:(id)name applicationItemID:(unint64_t)d canModifyDownloadState:(BOOL)state prioritizationIsAvailable:(BOOL)available downloadingInformationAgent:(id)agent iconManagerAllowsEditing:(BOOL)editing removeStyle:(int64_t)self0 canShare:(BOOL)self1;
+ (id)composedShortcutsForFolderIcon:(id)icon iconImageCache:(id)cache iconManagerAllowsEditing:(BOOL)editing removeStyle:(int64_t)style badgeViewGenerator:(id)generator;
+ (id)composedShortcutsForWidgetIcon:(id)icon additionalApplicationShortcutItems:(id)items widgetIconSupportsConfiguration:(BOOL)configuration iconManagerAllowsEditing:(BOOL)editing widgetSettings:(id)settings;
+ (id)filteredApplicationShortcutItemsWithStaticApplicationShortcutItems:(id)items dynamicApplicationShortcutItems:(id)shortcutItems;
+ (id)homeScreenDefaults;
+ (unint64_t)sbh_shortcutSectionForItem:(id)item;
@end

@implementation SBHIconApplicationShortcutListComposer

+ (BOOL)supportsProtectedAppsShortcuts
{
  v2 = _os_feature_enabled_impl();
  tokenForCurrentProcess = [MEMORY[0x1E698E620] tokenForCurrentProcess];
  if ([tokenForCurrentProcess hasEntitlement:@"com.apple.appprotectiond.read.access"] && objc_msgSend(tokenForCurrentProcess, "hasEntitlement:", @"com.apple.appprotectiond.write.access"))
  {
    v4 = [tokenForCurrentProcess hasEntitlement:@"com.apple.appprotectiond.guard.access"];
  }

  else
  {
    v4 = 0;
  }

  return v2 & v4;
}

+ (BOOL)supportsNewWindowShortcut
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

+ (BOOL)supportsMultiwindowShortcut
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

+ (id)homeScreenDefaults
{
  if (homeScreenDefaults_onceToken != -1)
  {
    +[SBHIconApplicationShortcutListComposer homeScreenDefaults];
  }

  v3 = homeScreenDefaults_homeScreenDefaults;

  return v3;
}

uint64_t __60__SBHIconApplicationShortcutListComposer_homeScreenDefaults__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69D4030]);
  v1 = homeScreenDefaults_homeScreenDefaults;
  homeScreenDefaults_homeScreenDefaults = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)filteredApplicationShortcutItemsWithStaticApplicationShortcutItems:(id)items dynamicApplicationShortcutItems:(id)shortcutItems
{
  if (items | shortcutItems)
  {
    v5 = MEMORY[0x1E695DF70];
    shortcutItemsCopy = shortcutItems;
    itemsCopy = items;
    v8 = objc_alloc_init(v5);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __141__SBHIconApplicationShortcutListComposer_filteredApplicationShortcutItemsWithStaticApplicationShortcutItems_dynamicApplicationShortcutItems___block_invoke;
    aBlock[3] = &unk_1E808A320;
    v9 = v8;
    v14 = v9;
    v10 = _Block_copy(aBlock);
    v10[2](v10, itemsCopy);

    v10[2](v10, shortcutItemsCopy);
    if ([v9 count])
    {
      v11 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __141__SBHIconApplicationShortcutListComposer_filteredApplicationShortcutItemsWithStaticApplicationShortcutItems_dynamicApplicationShortcutItems___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) count] <= 3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [v9 localizedTitle];
        v11 = [v10 length];

        if (v11)
        {
          [*(a1 + 32) addObject:v9];
        }

        if ([*(a1 + 32) count] == 4)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

+ (id)composedShortcutsForApplicationWithBundleIdentifier:(id)identifier iconDisplayName:(id)name staticItems:(id)items dynamicItems:(id)dynamicItems applicationItemID:(unint64_t)d numberOfDisplayItemsInSwitcher:(int64_t)switcher supportsMultipleWindows:(BOOL)windows isSystemApplication:(BOOL)self0 isInternalApplication:(BOOL)self1 isApplicationInBeta:(BOOL)self2 isApplicationHidden:(BOOL)self3 iconManagerAllowsEditing:(BOOL)self4 removeStyle:(int64_t)self5
{
  hiddenCopy2 = hidden;
  LODWORD(v73) = internalApplication;
  HIDWORD(v73) = application;
  v75[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  nameCopy = name;
  itemsCopy = items;
  dynamicItemsCopy = dynamicItems;
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v70 = dynamicItemsCopy;
  v71 = itemsCopy;
  v24 = [objc_opt_class() filteredApplicationShortcutItemsWithStaticApplicationShortcutItems:itemsCopy dynamicApplicationShortcutItems:dynamicItemsCopy];
  [v23 addObjectsFromArray:v24];

  if (editing)
  {
    v25 = objc_alloc_init(MEMORY[0x1E69D41B8]);
    [v25 setType:@"com.apple.springboardhome.application-shortcut-item.change-widget-size"];
    [v23 addObject:v25];
  }

  has_internal_content = os_variant_has_internal_content();
  if (!has_internal_content)
  {
    goto LABEL_12;
  }

  if (composedShortcutsForApplicationWithBundleIdentifier_iconDisplayName_staticItems_dynamicItems_applicationItemID_numberOfDisplayItemsInSwitcher_supportsMultipleWindows_isSystemApplication_isInternalApplication_isApplicationInBeta_isApplicationHidden_iconManagerAllowsEditing_removeStyle__onceToken != -1)
  {
    +[SBHIconApplicationShortcutListComposer composedShortcutsForApplicationWithBundleIdentifier:iconDisplayName:staticItems:dynamicItems:applicationItemID:numberOfDisplayItemsInSwitcher:supportsMultipleWindows:isSystemApplication:isInternalApplication:isApplicationInBeta:isApplicationHidden:iconManagerAllowsEditing:removeStyle:];
  }

  has_internal_content = [composedShortcutsForApplicationWithBundleIdentifier_iconDisplayName_staticItems_dynamicItems_applicationItemID_numberOfDisplayItemsInSwitcher_supportsMultipleWindows_isSystemApplication_isInternalApplication_isApplicationInBeta_isApplicationHidden_iconManagerAllowsEditing_removeStyle__homeScreenDefaults shouldFudgeShortcutsToCauseMaximumPain];
  if (has_internal_content)
  {
    if (!d)
    {
      d = 10000;
    }

    if ([v23 count] > 3)
    {
      v73 = 0;
      beta = 0;
    }

    else
    {
      do
      {
        v27 = objc_alloc_init(MEMORY[0x1E69D41B8]);
        v28 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithType:18];
        [v27 setIcon:v28];

        [v27 setLocalizedTitle:@"QA TEST"];
        [v27 setType:@"com.apple.springboardhome.application-shortcut-item.cancel-download"];
        [v23 addObject:v27];
      }

      while ([v23 count] < 4);
      v73 = 0;
      beta = 0;
    }
  }

  else
  {
LABEL_12:
    if (!windows)
    {
      goto LABEL_20;
    }
  }

  supportsNewWindowShortcut = [objc_opt_class() supportsNewWindowShortcut];
  if (supportsNewWindowShortcut)
  {
    v30 = SBHBundle(supportsNewWindowShortcut);
    [v30 localizedStringForKey:@"ADD_NEW_WINDOW_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v32 = v31 = identifierCopy;
    v33 = objc_alloc_init(MEMORY[0x1E69D41B8]);
    v34 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"plus.rectangle"];
    [v33 setIcon:v34];

    [v33 setLocalizedTitle:v32];
    [v33 setType:@"com.apple.springboardhome.application-shortcut-item.new-window"];
    [v23 addObject:v33];

    identifierCopy = v31;
  }

  has_internal_content = [objc_opt_class() supportsMultiwindowShortcut];
  if (switcher >= 1 && has_internal_content)
  {
    v35 = SBHBundle(has_internal_content);
    v36 = [v35 localizedStringForKey:@"SHOW_ALL_WINDOWS_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v37 = objc_alloc_init(MEMORY[0x1E69D41B8]);
    v38 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"rectangle.grid.2x2"];
    [v37 setIcon:v38];

    [v37 setLocalizedTitle:v36];
    [v37 setType:@"com.apple.springboardhome.application-shortcut-item.show-all-windows"];
    [v23 addObject:v37];

    hiddenCopy2 = hidden;
  }

LABEL_20:
  if (editing)
  {
    v39 = SBHBundle(has_internal_content);
    v40 = [v39 localizedStringForKey:@"REARRANGE_ICONS_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    _SBCreateRearrangeAppsApplicationShortcutItemWithLocalizedTitle(v40);
    v42 = v41 = hiddenCopy2;
    [v23 addObject:v42];

    hiddenCopy2 = v41;
  }

  if (hiddenCopy2)
  {
    v43 = objc_alloc_init(MEMORY[0x1E69D41B8]);
    v44 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"plus.app"];
    [v43 setIcon:v44];

    v46 = SBHBundle(v45);
    v47 = [v46 localizedStringForKey:@"ADD_TO_HOMESCREEN_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    [v43 setLocalizedTitle:v47];

    [v43 setType:@"com.apple.springboardhome.application-shortcut-item.add-to-home-screen"];
    [v23 addObject:v43];
  }

  v48 = v73;
  if (!d)
  {
    v48 = 1;
  }

  if (((HIDWORD(v73) | v48) & 1) == 0)
  {
    if (beta)
    {
      v49 = objc_alloc_init(MEMORY[0x1E69D41B8]);
      [v49 setActivationMode:0];
      [v49 setBundleIdentifierToLaunch:@"com.apple.TestFlight"];
      v50 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"square.and.pencil"];
      [v49 setIcon:v50];

      v52 = SBHBundle(v51);
      v53 = [v52 localizedStringForKey:@"SEND_BETA_FEEDBACK_APPLICATION_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      [v49 setLocalizedTitle:v53];

      [v49 setType:*MEMORY[0x1E69D4558]];
      v74 = *MEMORY[0x1E69D4560];
      v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:d];
      v75[0] = v54;
      v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v74 count:1];
      [v49 setUserInfo:v55];

      [v23 addObject:v49];
    }

    else
    {
      v56 = MEMORY[0x1E696AEC0];
      v49 = SBHBundle(has_internal_content);
      v57 = [v49 localizedStringForKey:@"SHARE_APPLICATION_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      nameCopy = [v56 localizedStringWithFormat:v57, nameCopy];
      v59 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:d];
      v60 = _SBCreateShareApplicationShortcutItemWithLocalizedTitle(nameCopy, v59);
      [v23 addObject:v60];
    }
  }

  supportsProtectedAppsShortcuts = [objc_opt_class() supportsProtectedAppsShortcuts];
  if (supportsProtectedAppsShortcuts)
  {
    v62 = _SBCreateAppProtectionApplicationShortcutItemForBundleIdentifier(identifierCopy);
    if (v62)
    {
      [v23 addObject:v62];
    }
  }

  switch(style)
  {
    case 1:
      v63 = SBHBundle(supportsProtectedAppsShortcuts);
      v64 = [v63 localizedStringForKey:@"HIDE_APP_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      v65 = _SBCreateHideAppSuggestionApplicationShortcutItemWithLocalizedTitle(v64);
      break;
    case 2:
      v63 = SBHBundle(supportsProtectedAppsShortcuts);
      v64 = [v63 localizedStringForKey:@"REMOVE_APP_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      v65 = _SBCreateRemoveAppApplicationShortcutItemWithLocalizedTitle(v64);
      break;
    case 3:
      v63 = SBHBundle(supportsProtectedAppsShortcuts);
      v64 = [v63 localizedStringForKey:@"DELETE_APP_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      v65 = _SBCreateDeleteAppApplicationShortcutItemWithLocalizedTitle(v64);
      break;
    default:
      goto LABEL_42;
  }

  v66 = v65;
  [v23 addObject:v65];

LABEL_42:

  return v23;
}

uint64_t __327__SBHIconApplicationShortcutListComposer_composedShortcutsForApplicationWithBundleIdentifier_iconDisplayName_staticItems_dynamicItems_applicationItemID_numberOfDisplayItemsInSwitcher_supportsMultipleWindows_isSystemApplication_isInternalApplication_isApplicationInBeta_isApplicationHidden_iconManagerAllowsEditing_removeStyle___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69D4030]);
  v1 = composedShortcutsForApplicationWithBundleIdentifier_iconDisplayName_staticItems_dynamicItems_applicationItemID_numberOfDisplayItemsInSwitcher_supportsMultipleWindows_isSystemApplication_isInternalApplication_isApplicationInBeta_isApplicationHidden_iconManagerAllowsEditing_removeStyle__homeScreenDefaults;
  composedShortcutsForApplicationWithBundleIdentifier_iconDisplayName_staticItems_dynamicItems_applicationItemID_numberOfDisplayItemsInSwitcher_supportsMultipleWindows_isSystemApplication_isInternalApplication_isApplicationInBeta_isApplicationHidden_iconManagerAllowsEditing_removeStyle__homeScreenDefaults = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)composedShortcutsForBookmarkIcon:(id)icon withDisplayName:(id)name iconManagerAllowsEditing:(BOOL)editing removeStyle:(int64_t)style
{
  editingCopy = editing;
  v59[1] = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = v9;
  if (editingCopy)
  {
    v11 = SBHBundle(v9);
    v12 = [v11 localizedStringForKey:@"REARRANGE_ICONS_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v13 = _SBCreateRearrangeAppsApplicationShortcutItemWithLocalizedTitle(v12);
    [v10 addObject:v13];
  }

  if ([iconCopy displaysShareBookmarkShortcutItem])
  {
    isAppClipIcon = [iconCopy isAppClipIcon];
    v15 = isAppClipIcon;
    v16 = SBHBundle(isAppClipIcon);
    v17 = v16;
    if (v15)
    {
      v18 = @"SHARE_APPCLIP_APPLICATION_SHORTCUT_ITEM_TITLE";
      v19 = @"SpringBoardHome-AppClips";
    }

    else
    {
      v18 = @"SHARE_BOOKMARK_APPLICATION_SHORTCUT_ITEM_TITLE";
      v19 = @"SpringBoardHome";
    }

    v20 = [v16 localizedStringForKey:v18 value:&stru_1F3D472A8 table:v19];

    v21 = _SBCreateShareApplicationShortcutItemWithLocalizedTitle(v20, 0);
    [v10 addObject:v21];
  }

  if ([iconCopy displaysAppStoreURLShortcutItem])
  {
    appClip = [iconCopy appClip];
    fullAppStoreURL = [appClip fullAppStoreURL];

    if (fullAppStoreURL)
    {
      v25 = SBHBundle(v24);
      v26 = [v25 localizedStringForKey:@"APPSTORE_URL_APPCLIP" value:&stru_1F3D472A8 table:@"SpringBoardHome-AppClips"];

      v27 = MEMORY[0x1E69D41B8];
      v28 = v26;
      v29 = fullAppStoreURL;
      v30 = objc_alloc_init(v27);
      v31 = [objc_alloc(MEMORY[0x1E69D41D0]) initWithSystemImageName:@"appstore"];
      [v30 setIcon:v31];

      [v30 setType:@"com.apple.springboardhome.application-shortcut-item.appStoreLink"];
      [v30 setLocalizedTitle:v28];

      v58 = kSBHIconAppStoreURLUserInfoKey;
      absoluteString = [v29 absoluteString];

      v59[0] = absoluteString;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
      [v30 setUserInfo:v33];

      [v10 addObject:v30];
    }
  }

  if (style == 1)
  {
    webClip = [iconCopy webClip];
    isAppClip = [webClip isAppClip];

    v50 = SBHBundle(v49);
    v51 = v50;
    if (isAppClip)
    {
      v52 = @"HIDE_APPCLIP_SHORTCUT_ITEM_TITLE";
      v53 = @"SpringBoardHome-AppClips";
    }

    else
    {
      v52 = @"HIDE_BOOKMARK_SHORTCUT_ITEM_TITLE";
      v53 = @"SpringBoardHome";
    }

    v37 = [v50 localizedStringForKey:v52 value:&stru_1F3D472A8 table:v53];

    v54 = _SBCreateHideAppSuggestionApplicationShortcutItemWithLocalizedTitle(v37);
    goto LABEL_24;
  }

  if (style == 2)
  {
    webClip2 = [iconCopy webClip];
    isAppClip2 = [webClip2 isAppClip];

    v43 = SBHBundle(v42);
    v44 = v43;
    if (isAppClip2)
    {
      v45 = @"HIDE_APPCLIP_SHORTCUT_ITEM_TITLE";
      v46 = @"SpringBoardHome-AppClips";
    }

    else
    {
      v45 = @"REMOVE_BOOKMARK_SHORTCUT_ITEM_TITLE";
      v46 = @"SpringBoardHome";
    }

    v37 = [v43 localizedStringForKey:v45 value:&stru_1F3D472A8 table:v46];

    v54 = _SBCreateRemoveAppApplicationShortcutItemWithLocalizedTitle(v37);
LABEL_24:
    v55 = v54;
    [v10 addObject:v54];
    goto LABEL_27;
  }

  if (style != 3)
  {
    goto LABEL_28;
  }

  isAppClipIcon2 = [iconCopy isAppClipIcon];
  v35 = isAppClipIcon2;
  v36 = SBHBundle(isAppClipIcon2);
  v37 = v36;
  if (v35)
  {
    v38 = @"DELETE_APPCLIP_SHORTCUT_ITEM_TITLE";
    v39 = @"SpringBoardHome-AppClips";
  }

  else
  {
    v38 = @"DELETE_BOOKMARK_SHORTCUT_ITEM_TITLE";
    v39 = @"SpringBoardHome";
  }

  v55 = [v36 localizedStringForKey:v38 value:&stru_1F3D472A8 table:v39];
  v56 = _SBCreateDeleteAppApplicationShortcutItemWithLocalizedTitle(v55);
  [v10 addObject:v56];

LABEL_27:
LABEL_28:

  return v10;
}

+ (id)composedShortcutsForDownloadingApplicationWithBundleIdentifier:(id)identifier iconDisplayName:(id)name applicationItemID:(unint64_t)d canModifyDownloadState:(BOOL)state prioritizationIsAvailable:(BOOL)available downloadingInformationAgent:(id)agent iconManagerAllowsEditing:(BOOL)editing removeStyle:(int64_t)self0 canShare:(BOOL)self1
{
  availableCopy = available;
  stateCopy = state;
  styleCopy5 = style;
  editingCopy4 = editing;
  identifierCopy = identifier;
  nameCopy = name;
  agentCopy = agent;
  isCancelable = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = isCancelable;
  if (stateCopy)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || (isCancelable = [agentCopy isCloudDemoted], (isCancelable & 1) == 0))
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && [agentCopy isPrioritizable] && availableCopy)
      {
        v22 = objc_alloc_init(MEMORY[0x1E69D41B8]);
        v23 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithType:33];
        [v22 setIcon:v23];

        v25 = SBHBundle(v24);
        v26 = [v25 localizedStringForKey:@"PRIORITIZE_DOWNLOAD_APPLICATION_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
        [v22 setLocalizedTitle:v26];

        styleCopy5 = style;
        [v22 setType:@"com.apple.springboardhome.application-shortcut-item.prioritize-download"];
        [v21 addObject:v22];
      }

      if (objc_opt_respondsToSelector())
      {
        v27 = [agentCopy isPausable] ^ 1;
      }

      else
      {
        v27 = 1;
      }

      if (objc_opt_respondsToSelector())
      {
        isPaused = [agentCopy isPaused];
      }

      else
      {
        isPaused = 0;
      }

      if (((v27 | isPaused) & 1) == 0)
      {
        v29 = objc_alloc_init(MEMORY[0x1E69D41B8]);
        v30 = objc_alloc(MEMORY[0x1E69D41B0]);
        [MEMORY[0x1E69DCAB8] imageNamed:@"PauseDownloadApplicationShortcutItemIcon"];
        v31 = nameCopy;
        v33 = v32 = identifierCopy;
        v34 = UIImagePNGRepresentation(v33);
        v35 = [v30 initWithImageData:v34 dataType:0 isTemplate:1];
        [v29 setIcon:v35];

        identifierCopy = v32;
        nameCopy = v31;
        v37 = SBHBundle(v36);
        v38 = [v37 localizedStringForKey:@"PAUSE_DOWNLOAD_APPLICATION_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
        [v29 setLocalizedTitle:v38];

        styleCopy5 = style;
        editingCopy4 = editing;
        [v29 setType:@"com.apple.springboardhome.application-shortcut-item.pause-download"];
        [v21 addObject:v29];
      }

      if (!(v27 & 1 | ((isPaused & 1) == 0)))
      {
        v39 = objc_alloc_init(MEMORY[0x1E69D41B8]);
        v40 = objc_alloc(MEMORY[0x1E69D41B0]);
        v41 = [MEMORY[0x1E69DCAB8] imageNamed:@"ResumeDownloadApplicationShortcutItemIcon"];
        v42 = UIImagePNGRepresentation(v41);
        v43 = [v40 initWithImageData:v42 dataType:0 isTemplate:1];
        [v39 setIcon:v43];

        styleCopy5 = style;
        v45 = SBHBundle(v44);
        v46 = [v45 localizedStringForKey:@"RESUME_DOWNLOAD_APPLICATION_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
        [v39 setLocalizedTitle:v46];

        editingCopy4 = editing;
        [v39 setType:@"com.apple.springboardhome.application-shortcut-item.resume-download"];
        [v21 addObject:v39];
      }

      isCancelable = objc_opt_respondsToSelector();
      if (isCancelable)
      {
        isCancelable = [agentCopy isCancelable];
        if (isCancelable)
        {
          v47 = objc_alloc_init(MEMORY[0x1E69D41B8]);
          v48 = objc_alloc(MEMORY[0x1E69D41B0]);
          v49 = [MEMORY[0x1E69DCAB8] imageNamed:@"CancelDownloadApplicationShortcutItemIcon"];
          v50 = UIImagePNGRepresentation(v49);
          v51 = [v48 initWithImageData:v50 dataType:0 isTemplate:1];
          [v47 setIcon:v51];

          styleCopy5 = style;
          v53 = SBHBundle(v52);
          v54 = [v53 localizedStringForKey:@"CANCEL_DOWNLOAD_APPLICATION_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
          [v47 setLocalizedTitle:v54];

          editingCopy4 = editing;
          [v47 setType:@"com.apple.springboardhome.application-shortcut-item.cancel-download"];
          [v21 addObject:v47];
        }
      }
    }
  }

  if (editingCopy4)
  {
    v55 = SBHBundle(isCancelable);
    v56 = [v55 localizedStringForKey:@"REARRANGE_ICONS_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v57 = _SBCreateRearrangeAppsApplicationShortcutItemWithLocalizedTitle(v56);
    [v21 addObject:v57];
  }

  if (d && share)
  {
    v58 = MEMORY[0x1E696AEC0];
    v59 = SBHBundle(isCancelable);
    v60 = [v59 localizedStringForKey:@"SHARE_APPLICATION_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    nameCopy = [v58 localizedStringWithFormat:v60, nameCopy];

    v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:d];
    v63 = _SBCreateShareApplicationShortcutItemWithLocalizedTitle(nameCopy, v62);
    [v21 addObject:v63];
  }

  if ([objc_opt_class() supportsProtectedAppsShortcuts])
  {
    v64 = _SBCreateAppProtectionApplicationShortcutItemForBundleIdentifier(identifierCopy);
    if (v64)
    {
      [v21 addObject:v64];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    isCloudDemoted = [agentCopy isCloudDemoted];
    if (isCloudDemoted)
    {
      if (styleCopy5 == 2)
      {
        v66 = SBHBundle(isCloudDemoted);
        v67 = [v66 localizedStringForKey:@"REMOVE_APP_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
        v68 = _SBCreateRemoveAppApplicationShortcutItemWithLocalizedTitle(v67);
      }

      else
      {
        if (styleCopy5 != 3)
        {
          goto LABEL_37;
        }

        v66 = SBHBundle(isCloudDemoted);
        v67 = [v66 localizedStringForKey:@"DELETE_APP_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
        v68 = _SBCreateDeleteAppApplicationShortcutItemWithLocalizedTitle(v67);
      }

      v69 = v68;
      [v21 addObject:v68];
    }
  }

LABEL_37:

  return v21;
}

+ (id)composedShortcutsForFolderIcon:(id)icon iconImageCache:(id)cache iconManagerAllowsEditing:(BOOL)editing removeStyle:(int64_t)style badgeViewGenerator:(id)generator
{
  editingCopy = editing;
  v66 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  cacheCopy = cache;
  generatorCopy = generator;
  v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_msgSend_iconImageInfo(cacheCopy);
  v12 = v11;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v48 = iconCopy;
  leafIconsWithBadgesSortedByImportance = [iconCopy leafIconsWithBadgesSortedByImportance];
  objectEnumerator = [leafIconsWithBadgesSortedByImportance objectEnumerator];

  obj = objectEnumerator;
  v52 = [objectEnumerator countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v52)
  {
    v50 = *v62;
    v51 = cacheCopy;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v62 != v50)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v61 + 1) + 8 * v15);
      if (cacheCopy)
      {
        [cacheCopy imageForIcon:*(*(&v61 + 1) + 8 * v15)];
      }

      else
      {
        [*(*(&v61 + 1) + 8 * v15) iconImageWithInfo:0 traitCollection:1 options:{v12 * 29.0 / v12, v12 * 29.0 / v12, v12, 0.0}];
      }
      v17 = ;
      v18 = generatorCopy[2](generatorCopy, v16);
      badgeBackgroundColor = [v18 badgeBackgroundColor];
      v20 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v12 * 29.0, v12 * 29.0}];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __144__SBHIconApplicationShortcutListComposer_composedShortcutsForFolderIcon_iconImageCache_iconManagerAllowsEditing_removeStyle_badgeViewGenerator___block_invoke;
      v55[3] = &unk_1E808A348;
      v58 = v12 * 29.0;
      v59 = v12 * 6.0;
      v56 = v17;
      v57 = badgeBackgroundColor;
      v60 = v12 * 10.0;
      v21 = badgeBackgroundColor;
      v22 = v17;
      v23 = [v20 imageWithActions:v55];
      v24 = objc_alloc(MEMORY[0x1E69D41B0]);
      v25 = UIImagePNGRepresentation(v23);
      v26 = [v24 initWithImageData:v25 dataType:0 isTemplate:0];

      v27 = objc_alloc_init(MEMORY[0x1E69D41B8]);
      [v27 setBadgeView:v18];
      applicationBundleID = [v16 applicationBundleID];
      [v27 setBundleIdentifierToLaunch:applicationBundleID];

      [v27 setIcon:v26];
      displayName = [v16 displayName];
      [v27 setLocalizedTitle:displayName];

      [v27 setType:@"com.apple.springboardhome.application-shortcut-item.unread-notifications"];
      [v54 addObject:v27];
      v30 = [v54 count];

      cacheCopy = v51;
      if (v30 == 4)
      {
        break;
      }

      if (v52 == ++v15)
      {
        v52 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
        if (v52)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (editingCopy)
  {
    v31 = objc_alloc_init(MEMORY[0x1E69D41B8]);
    v32 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"pencil"];
    [v31 setIcon:v32];

    v34 = SBHBundle(v33);
    v35 = [v34 localizedStringForKey:@"RENAME_FOLDER_APPLICATION_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    [v31 setLocalizedTitle:v35];

    [v31 setType:@"com.apple.springboardhome.application-shortcut-item.rename-folder"];
    [v54 addObject:v31];

    v37 = SBHBundle(v36);
    v38 = [v37 localizedStringForKey:@"REARRANGE_ICONS_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v39 = _SBCreateRearrangeAppsApplicationShortcutItemWithLocalizedTitle(v38);
    [v54 addObject:v39];

    if (style == 2)
    {
      v40 = objc_alloc_init(MEMORY[0x1E69D41B8]);
      v41 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"minus.circle"];
      [v40 setIcon:v41];

      v43 = SBHBundle(v42);
      v44 = [v43 localizedStringForKey:@"REMOVE_FOLDER_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      [v40 setLocalizedTitle:v44];

      [v40 setType:@"com.apple.springboardhome.application-shortcut-item.hide-folder"];
      [v54 addObject:v40];
    }
  }

  return v54;
}

void __144__SBHIconApplicationShortcutListComposer_composedShortcutsForFolderIcon_iconImageCache_iconManagerAllowsEditing_removeStyle_badgeViewGenerator___block_invoke(uint64_t a1)
{
  v8.origin.x = *MEMORY[0x1E695EFF8];
  v8.origin.y = *(MEMORY[0x1E695EFF8] + 8);
  v2 = *(a1 + 48);
  v8.size.width = v2;
  v8.size.height = v2;
  v9 = CGRectInset(v8, *(a1 + 56) * 0.5, *(a1 + 56) * 0.5);
  v10 = CGRectIntegral(v9);
  [*(a1 + 32) drawInRect:{v10.origin.x, v10.origin.y, v10.size.width, v10.size.height}];
  [*(a1 + 40) set];
  v3 = *(a1 + 64);
  v4 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v5 = v2 - v3;
  if (v4 == 1)
  {
    v5 = 0.0;
  }

  v6 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{v5, 0.0, v3, v3}];
  [v6 fill];
}

+ (id)composedShortcutsForWidgetIcon:(id)icon additionalApplicationShortcutItems:(id)items widgetIconSupportsConfiguration:(BOOL)configuration iconManagerAllowsEditing:(BOOL)editing widgetSettings:(id)settings
{
  editingCopy = editing;
  configurationCopy = configuration;
  iconCopy = icon;
  itemsCopy = items;
  settingsCopy = settings;
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!editingCopy)
  {
    goto LABEL_28;
  }

  v16 = objc_alloc_init(MEMORY[0x1E69D41B8]);
  [v16 setType:@"com.apple.springboardhome.application-shortcut-item.change-widget-size"];
  [v15 addObject:v16];

  isWidgetStackIcon = [iconCopy isWidgetStackIcon];
  if (isWidgetStackIcon)
  {
    selfCopy = self;
    activeDataSource = [iconCopy activeDataSource];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = [activeDataSource suggestionSource];
      if (isKindOfClass == 1)
      {
LABEL_5:
        v20 = MEMORY[0x1E696AEC0];
        v53 = SBHBundle(isKindOfClass);
        v21 = [v53 localizedStringForKey:@"HIDE_STACK_SUGGESTION_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
        displayName = [iconCopy displayName];
        v23 = [v20 stringWithFormat:v21, displayName];
        v24 = objc_alloc_init(MEMORY[0x1E69D41B8]);
        v25 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"hand.thumbsdown"];
        [v24 setIcon:v25];

        [v24 setLocalizedTitle:v23];
        [v24 setType:@"com.apple.springboardhome.application-shortcut-item.hide-stack-suggestion"];
        [v15 addObject:v24];

LABEL_6:
        iconDataSourceCount = [iconCopy iconDataSourceCount];
        isKindOfClass = [settingsCopy maximumWidgetsInAStack];
        if (iconDataSourceCount >= isKindOfClass)
        {
          goto LABEL_17;
        }

        v27 = MEMORY[0x1E696AEC0];
        v54 = SBHBundle(isKindOfClass);
        v28 = [v54 localizedStringForKey:@"ADD_TO_STACK_WITH_NAME_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
        displayName2 = [iconCopy displayName];
        v30 = [v27 stringWithFormat:v28, displayName2];
        v31 = objc_alloc_init(MEMORY[0x1E69D41B8]);
        v32 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"rectangle.stack.badge.plus"];
        [v31 setIcon:v32];

        [v31 setLocalizedTitle:v30];
        [v31 setType:@"com.apple.springboardhome.application-shortcut-item.add-to-stack"];
        goto LABEL_16;
      }
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        suggestionSource = [activeDataSource suggestionSource];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (suggestionSource == 1)
        {
          if (isKindOfClass)
          {
            goto LABEL_6;
          }

          goto LABEL_5;
        }
      }
    }

    if (!configurationCopy)
    {
      goto LABEL_17;
    }

    v36 = MEMORY[0x1E696AEC0];
    v54 = SBHBundle(isKindOfClass);
    v28 = [v54 localizedStringForKey:@"CONFIGURE_WIDGET_WITH_NAME_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    displayName2 = [iconCopy displayName];
    v30 = [v36 stringWithFormat:v28, displayName2];
    v31 = _SBCreateConfigureWidgetApplicationShortcutItemWithLocalizedTitle(v30);
LABEL_16:
    [v15 addObject:v31];

LABEL_17:
    v37 = SBHBundle(isKindOfClass);
    v38 = [v37 localizedStringForKey:@"EDIT_STACK_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v39 = _SBCreateConfigureStackApplicationShortcutItemWithLocalizedTitle(v38);
    [v15 addObject:v39];

    if (!os_variant_has_internal_content())
    {
      goto LABEL_21;
    }

    homeScreenDefaults = [selfCopy homeScreenDefaults];
    shouldHideReportWidgetStackRotationQuickAction = [homeScreenDefaults shouldHideReportWidgetStackRotationQuickAction];

    if (shouldHideReportWidgetStackRotationQuickAction)
    {
      goto LABEL_21;
    }

    v33 = objc_alloc_init(MEMORY[0x1E69D41B8]);
    v42 = [objc_alloc(MEMORY[0x1E69D41C8]) initWithSystemImageName:@"ant.fill"];
    [v33 setIcon:v42];

    [v33 setLocalizedTitle:@"Report Rotation Issue"];
    [v33 setLocalizedSubtitle:@"[Internal]"];
    [v33 setType:@"com.apple.springboardhome.application-shortcut-item.debug-feedback-stack"];
    [v15 addObject:v33];
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  if (configurationCopy)
  {
    activeDataSource = SBHBundle(isWidgetStackIcon);
    v33 = [activeDataSource localizedStringForKey:@"CONFIGURE_WIDGET_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v34 = _SBCreateConfigureWidgetApplicationShortcutItemWithLocalizedTitle(v33);
    [v15 addObject:v34];

    goto LABEL_20;
  }

LABEL_22:
  if (itemsCopy)
  {
    isWidgetStackIcon = [v15 addObjectsFromArray:itemsCopy];
  }

  v43 = SBHBundle(isWidgetStackIcon);
  v44 = [v43 localizedStringForKey:@"REARRANGE_ICONS_SHORTCUT_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v45 = _SBCreateRearrangeAppsApplicationShortcutItemWithLocalizedTitle(v44);
  [v15 addObject:v45];

  isWidgetStackIcon2 = [iconCopy isWidgetStackIcon];
  LODWORD(v43) = isWidgetStackIcon2;
  v47 = SBHBundle(isWidgetStackIcon2);
  v48 = v47;
  if (v43)
  {
    v49 = @"REMOVE_STACK_SHORTCUT_ITEM_TITLE";
  }

  else
  {
    v49 = @"REMOVE_WIDGET_SHORTCUT_ITEM_TITLE";
  }

  v50 = [v47 localizedStringForKey:v49 value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v51 = _SBCreateRemoveWidgetApplicationShortcutItemWithLocalizedTitle(v50);
  [v15 addObject:v51];

LABEL_28:

  return v15;
}

+ (unint64_t)sbh_shortcutSectionForItem:(id)item
{
  itemCopy = item;
  if (sbh_shortcutSectionForItem__systemActionTypesOnceToken != -1)
  {
    +[SBHIconApplicationShortcutListComposer sbh_shortcutSectionForItem:];
  }

  if (sbh_shortcutSectionForItem__widgetActionTypesOnceToken != -1)
  {
    +[SBHIconApplicationShortcutListComposer sbh_shortcutSectionForItem:];
  }

  if (sbh_shortcutSectionForItem__widgetResizeActionTypesOnceToken != -1)
  {
    +[SBHIconApplicationShortcutListComposer sbh_shortcutSectionForItem:];
  }

  if (sbh_shortcutSectionForItem__appExposeActionTypesOnceToken != -1)
  {
    +[SBHIconApplicationShortcutListComposer sbh_shortcutSectionForItem:];
  }

  type = [itemCopy type];
  if ([sbh_shortcutSectionForItem__systemActionTypes containsObject:type])
  {
    v5 = 2;
  }

  else if ([sbh_shortcutSectionForItem__widgetActionTypes containsObject:type])
  {
    v5 = 1;
  }

  else if ([sbh_shortcutSectionForItem__widgetResizeActionTypes containsObject:type])
  {
    v5 = 3;
  }

  else if ([sbh_shortcutSectionForItem__appExposeActionTypes containsObject:type])
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __69__SBHIconApplicationShortcutListComposer_sbh_shortcutSectionForItem___block_invoke()
{
  v4[11] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"com.apple.springboardhome.application-shortcut-item.share";
  v4[1] = @"com.apple.springboardhome.application-shortcut-item.rearrange-icons";
  v4[2] = @"com.apple.springboardhome.application-shortcut-item.rename-folder";
  v4[3] = @"com.apple.springboardhome.application-shortcut-item.hide-folder";
  v4[4] = @"com.apple.springboardhome.application-shortcut-item.delete-app";
  v4[5] = @"com.apple.springboardhome.application-shortcut-item.remove-app";
  v4[6] = @"com.apple.springboardhome.application-shortcut-item.remove-widget";
  v4[7] = @"com.apple.springboardhome.application-shortcut-item.hide-app-suggestion";
  v4[8] = @"com.apple.springboardhome.application-shortcut-item.add-to-home-screen";
  v4[9] = @"com.apple.springboardhome.application-shortcut-item.appStoreLink";
  v4[10] = @"com.apple.springboardhome.application-shortcut-item.app-protection";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:11];
  v2 = [v0 setWithArray:v1];
  v3 = sbh_shortcutSectionForItem__systemActionTypes;
  sbh_shortcutSectionForItem__systemActionTypes = v2;
}

void __69__SBHIconApplicationShortcutListComposer_sbh_shortcutSectionForItem___block_invoke_2()
{
  v4[5] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"com.apple.springboardhome.application-shortcut-item.configure-widget";
  v4[1] = @"com.apple.springboardhome.application-shortcut-item.hide-stack-suggestion";
  v4[2] = @"com.apple.springboardhome.application-shortcut-item.hide-siri-suggestions-item";
  v4[3] = @"com.apple.springboardhome.application-shortcut-item.configure-stack";
  v4[4] = @"com.apple.springboardhome.application-shortcut-item.add-to-stack";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:5];
  v2 = [v0 setWithArray:v1];
  v3 = sbh_shortcutSectionForItem__widgetActionTypes;
  sbh_shortcutSectionForItem__widgetActionTypes = v2;
}

void __69__SBHIconApplicationShortcutListComposer_sbh_shortcutSectionForItem___block_invoke_3()
{
  v4[7] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"com.apple.springboardhome.application-shortcut-item.change-widget-size";
  v4[1] = @"com.apple.springboardhome.application-shortcut-item.change-widget-size-small";
  v4[2] = @"com.apple.springboardhome.application-shortcut-item.change-widget-size-medium";
  v4[3] = @"com.apple.springboardhome.application-shortcut-item.change-widget-size-large";
  v4[4] = @"com.apple.springboardhome.application-shortcut-item.change-widget-size-extralarge";
  v4[5] = @"com.apple.springboardhome.application-shortcut-item.change-widget-size-newsLargeTall";
  v4[6] = @"com.apple.springboardhome.application-shortcut-item.change-widget-to-app-icon";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:7];
  v2 = [v0 setWithArray:v1];
  v3 = sbh_shortcutSectionForItem__widgetResizeActionTypes;
  sbh_shortcutSectionForItem__widgetResizeActionTypes = v2;
}

void __69__SBHIconApplicationShortcutListComposer_sbh_shortcutSectionForItem___block_invoke_4()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"com.apple.springboardhome.application-shortcut-item.show-all-windows";
  v4[1] = @"com.apple.springboardhome.application-shortcut-item.new-window";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = sbh_shortcutSectionForItem__appExposeActionTypes;
  sbh_shortcutSectionForItem__appExposeActionTypes = v2;
}

+ (BOOL)sbh_isShortcutItemSpringBoardOnly:(id)only
{
  v3 = sbh_isShortcutItemSpringBoardOnly__onceToken;
  onlyCopy = only;
  if (v3 != -1)
  {
    +[SBHIconApplicationShortcutListComposer sbh_isShortcutItemSpringBoardOnly:];
  }

  type = [onlyCopy type];

  v6 = [sbh_isShortcutItemSpringBoardOnly__springBoardOnlyShortcutTypes containsObject:type];
  return v6;
}

void __76__SBHIconApplicationShortcutListComposer_sbh_isShortcutItemSpringBoardOnly___block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.rearrange-icons"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.hide-app-suggestion"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.delete-app"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.remove-app"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.remove-widget"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.configure-widget"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.configure-stack"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.hide-stack-suggestion"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.hide-siri-suggestions-item"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.add-to-stack"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.change-widget-size"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.change-widget-size-small"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.change-widget-size-medium"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.change-widget-size-large"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.change-widget-size-newsLargeTall"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.change-widget-size-extralarge"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.change-widget-to-app-icon"];
  v0 = [v2 copy];
  v1 = sbh_isShortcutItemSpringBoardOnly__springBoardOnlyShortcutTypes;
  sbh_isShortcutItemSpringBoardOnly__springBoardOnlyShortcutTypes = v0;
}

+ (BOOL)sbh_isDestructiveShortcutItem:(id)item
{
  v3 = sbh_isDestructiveShortcutItem__onceToken;
  itemCopy = item;
  if (v3 != -1)
  {
    +[SBHIconApplicationShortcutListComposer sbh_isDestructiveShortcutItem:];
  }

  type = [itemCopy type];

  v6 = [sbh_isDestructiveShortcutItem__isDestructive containsObject:type];
  return v6;
}

void __72__SBHIconApplicationShortcutListComposer_sbh_isDestructiveShortcutItem___block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.delete-app"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.remove-app"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.remove-widget"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.hide-folder"];
  v0 = [v2 copy];
  v1 = sbh_isDestructiveShortcutItem__isDestructive;
  sbh_isDestructiveShortcutItem__isDestructive = v0;
}

+ (BOOL)sbh_isShortcutItemDeleteOrRemove:(id)remove
{
  v3 = sbh_isShortcutItemDeleteOrRemove__onceToken;
  removeCopy = remove;
  if (v3 != -1)
  {
    +[SBHIconApplicationShortcutListComposer sbh_isShortcutItemDeleteOrRemove:];
  }

  type = [removeCopy type];

  v6 = [sbh_isShortcutItemDeleteOrRemove__springBoardOnlyShortcutTypes containsObject:type];
  return v6;
}

void __75__SBHIconApplicationShortcutListComposer_sbh_isShortcutItemDeleteOrRemove___block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.delete-app"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.remove-app"];
  [v2 addObject:@"com.apple.springboardhome.application-shortcut-item.remove-widget"];
  v0 = [v2 copy];
  v1 = sbh_isShortcutItemDeleteOrRemove__springBoardOnlyShortcutTypes;
  sbh_isShortcutItemDeleteOrRemove__springBoardOnlyShortcutTypes = v0;
}

@end