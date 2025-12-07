uint64_t AXFrontBoardPurpleBuddyPID()
{
  v0 = [MEMORY[0x277CE69A8] setupProcessName];
  v1 = AXFrontBoardPIDForApplicationWithBundleID(v0);

  return v1;
}

uint64_t AXFrontBoardPIDForApplicationWithBundleID(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = AXFrontBoardRunningAppProcesses();
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 safeValueForKey:{@"bundleIdentifier", v12}];
        v9 = [v8 isEqualToString:v1];

        if (v9)
        {
          v10 = [v7 safeIntForKey:@"pid"];
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0xFFFFFFFFLL;
LABEL_11:

  return v10;
}

id AXFrontBoardRunningAppProcesses()
{
  v0 = [MEMORY[0x277CBEB58] set];
  v1 = AXFrontBoardSystemAppProcess();
  if (v1)
  {
    [v0 addObject:v1];
  }

  v2 = [NSClassFromString(&cfstr_Fbscenemanager.isa) safeValueForKey:@"sharedInstance"];
  v7 = MEMORY[0x277D85DD0];
  v8 = v2;
  v3 = v0;
  v9 = v3;
  v4 = v2;
  AXPerformSafeBlock();
  if (![v3 count])
  {

    v3 = 0;
  }

  v5 = [v3 allObjects];

  return v5;
}

id AXFrontBoardSystemAppProcess()
{
  v0 = [NSClassFromString(&cfstr_Fbprocessmanag.isa) safeValueForKey:@"sharedInstance"];
  v1 = [v0 safeValueForKey:@"systemApplicationProcess"];

  return v1;
}

void __AXFrontBoardRunningAppProcesses_block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __AXFrontBoardRunningAppProcesses_block_invoke_2;
  v2[3] = &unk_278BDA680;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateScenesWithBlock:v2];
}

void __AXFrontBoardRunningAppProcesses_block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 accessibilitySceneOwnerIsAUIApplication] && ((objc_msgSend(v4, "accessibilityIsSceneOnMainScreen") & 1) != 0 || objc_msgSend(v4, "accessibilityIsSceneOnExternalScreen")))
  {
    v3 = [v4 accessibilitySceneProcess];
    if (v3)
    {
      [*(a1 + 32) addObject:v3];
    }
  }
}

id AXLocalizedApplicationName(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_284FA6678 table:@"FrontBoardUtilsStrings"];

  return v4;
}

id AXApplicationNameLabelForBundleIdentifier(uint64_t a1)
{
  if (a1)
  {
    v9 = 0;
    v1 = [MEMORY[0x277CC1E90] bundleRecordWithApplicationIdentifier:a1 error:&v9];
    v2 = v9;
    if (v2)
    {
      v3 = AXLogCommon();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        AXApplicationNameLabelForBundleIdentifier_cold_1(v2, v3);
      }
    }

    v4 = [v1 URL];
    v5 = AXSpokenNameLabelForBundleURL(v4);

    if ([v5 length])
    {
      v6 = v5;
    }

    else
    {
      v6 = [v1 localizedName];
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id AXSpokenNameLabelForBundleURL(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CF0BB8];
    v2 = a1;
    v3 = [[v1 alloc] initWithURL:v2];

    v4 = [v3 localizedInfoDictionary];
    v5 = [v4 objectForKey:@"CFBundleSpokenName"];

    if (![v5 length])
    {
      v6 = [v3 infoDictionary];
      v7 = [v6 objectForKey:@"CFBundleSpokenName"];

      v5 = v7;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id AXFrontBoardSystemAppPID()
{
  v0 = AXFrontBoardSystemAppProcess();
  v1 = [v0 safeValueForKey:@"pid"];

  return v1;
}

uint64_t AXFrontBoardFBSceneManager()
{
  v0 = NSClassFromString(&cfstr_Fbscenemanager.isa);

  return [(objc_class *)v0 safeValueForKey:@"sharedInstance"];
}

id AXFrontBoardSystemAppAlertWindow()
{
  v34 = *MEMORY[0x277D85DE8];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v27 = 0, v28 = &v27, v29 = 0x3032000000, v30 = __Block_byref_object_copy_, v31 = __Block_byref_object_dispose_, v32 = 0, v22 = MEMORY[0x277D85DD0], v23 = 3221225472, v24 = __AXFrontBoardSystemAppAlertWindow_block_invoke, v25 = &unk_278BDA608, v26 = &v27, AXPerformSafeBlock(), v0 = *(v28 + 5), _Block_object_dispose(&v27, 8), v32, !v0))
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy_;
    v31 = __Block_byref_object_dispose_;
    v32 = 0;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __AXFrontBoardSystemAppAlertWindow_block_invoke_2;
    v20 = &unk_278BDA608;
    v21 = &v27;
    AXPerformSafeBlock();
    v0 = *(v28 + 5);
    _Block_object_dispose(&v27, 8);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = v0;
  v1 = [obj countByEnumeratingWithState:&v13 objects:v33 count:16];
  if (v1)
  {
    v2 = *v14;
    while (2)
    {
      for (i = 0; i != v1; i = i + 1)
      {
        if (*v14 != v2)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v13 + 1) + 8 * i);
        v5 = [v4 safeValueForKey:@"rootViewController"];
        v6 = [v5 safeValueForKey:@"presentedViewController"];

        NSClassFromString(&cfstr_Uialertcontrol.isa);
        isKindOfClass = objc_opt_isKindOfClass();
        IsSpringBoard = AXProcessIsSpringBoard();
        if (IsSpringBoard)
        {
          NSClassFromString(&cfstr_Sbalertitemwin.isa);
          IsSpringBoard = objc_opt_isKindOfClass();
        }

        if ((isKindOfClass | IsSpringBoard))
        {
          v27 = 0;
          v28 = &v27;
          v29 = 0x2020000000;
          v30 = 0;
          AXPerformSafeBlock();
          v9 = v28[3];
          _Block_object_dispose(&v27, 8);
          v27 = 0;
          v28 = &v27;
          v29 = 0x2020000000;
          LOBYTE(v30) = 0;
          AXPerformSafeBlock();
          v10 = *(v28 + 24);
          _Block_object_dispose(&v27, 8);
          if (v9 > 0.0 && (v10 & 1) == 0)
          {
            v1 = v4;

            goto LABEL_18;
          }
        }
      }

      v1 = [obj countByEnumeratingWithState:&v13 objects:v33 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  return v1;
}

void sub_23D5EFEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __AXFrontBoardSystemAppAlertWindow_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 40) = [*MEMORY[0x277D76620] _accessibilityAllWindowsOnlyVisibleWindows:1];

  return MEMORY[0x2821F96F8]();
}

uint64_t __AXFrontBoardSystemAppAlertWindow_block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 40) = [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1];

  return MEMORY[0x2821F96F8]();
}

void *__AXFrontBoardSystemAppAlertWindow_block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) alpha];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

void *__AXFrontBoardSystemAppAlertWindow_block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) isHidden];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

BOOL _AXFrontBoardIsSystemAppShowingAlertIgnoringServiceBundleIdentifiers(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = AXFrontBoardSystemAppAlertWindow();
  v3 = v2 != 0;
  if (v2)
  {
    v4 = AXLogUIA();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v2;
      _os_log_impl(&dword_23D5EE000, v4, OS_LOG_TYPE_INFO, "System alert window: %@", &v12, 0xCu);
    }
  }

  if (AXProcessIsSpringBoard())
  {
    v5 = [NSClassFromString(&cfstr_Sbmainworkspac.isa) safeValueForKey:@"_instanceIfExists"];
    v6 = [v5 safeValueForKey:@"transientOverlayPresentationManager"];
    v7 = [v6 safeValueForKey:@"topmostPresentedViewController"];

    NSClassFromString(&cfstr_Sbincalltransi.isa);
    if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(&cfstr_Sbspotlighttra.isa), (objc_opt_isKindOfClass()))
    {
      v3 = 0;
LABEL_24:

      goto LABEL_25;
    }

    NSClassFromString(&cfstr_Sbremotetransi.isa);
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 safeValueForKeyPath:@"_hostContentAdapter.serviceBundleIdentifier"];
      if (!v7)
      {
LABEL_13:
        if (![v8 isEqualToString:*MEMORY[0x277CE68F0]])
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v8 = 0;
      if (!v7)
      {
        goto LABEL_13;
      }
    }

    if (![v1 count] || (NSClassFromString(&cfstr_Sbremotetransi.isa), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v9 = AXLogUIA();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v7;
        v10 = "top most alert controller: %@";
        goto LABEL_21;
      }

LABEL_22:

      v3 = 1;
      goto LABEL_23;
    }

    if (([v1 containsObject:v8] & 1) == 0)
    {
      v9 = AXLogUIA();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v8;
        v10 = "top most alert service identifier: %@";
LABEL_21:
        _os_log_impl(&dword_23D5EE000, v9, OS_LOG_TYPE_INFO, v10, &v12, 0xCu);
        goto LABEL_22;
      }

      goto LABEL_22;
    }

LABEL_23:

    goto LABEL_24;
  }

LABEL_25:

  return v3;
}

id _AXFrontBoardFilterFrontmostAppProcessesAndScenesForSiri(char a1, void *a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 mutableCopy];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0x7FFFFFFFFFFFFFFFLL;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___AXFrontBoardFilterFrontmostAppProcessesAndScenesForSiri_block_invoke;
  v9[3] = &unk_278BDA658;
  v9[4] = &v18;
  v9[5] = &v10;
  v9[6] = &v14;
  [v3 enumerateObjectsUsingBlock:v9];
  if (v19[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((a1 & 1) == 0 && v15[3] == v11[3])
    {
      v6 = [v4 objectAtIndex:?];
      v22[0] = v6;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
      v8 = [v7 mutableCopy];

      v4 = v8;
    }

    else
    {
      [v4 removeObjectAtIndex:?];
    }
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v4;
}

void sub_23D5F048C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

id AXFrontBoardFocusedAppPID()
{
  v0 = _AXFrontBoardFrontmostAppProcesses(0, 0, 0);
  v1 = [v0 firstObject];
  v2 = [v1 safeValueForKey:@"pid"];

  return v2;
}

id AXFrontBoardFocusedAppPIDs()
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    _AXAssert();
  }

  v0 = _AXFrontBoardFrontmostAppProcesses(0, 0, 0);
  v1 = [v0 safeValueForKey:@"state"];
  v2 = [v1 safeValueForKey:@"pid"];

  return v2;
}

id _AXFrontBoardFrontmostAppProcesses(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = 0;
  _AXFrontBoardGetFrontmostAppProcessesAndScenes(a1, &v6, 0, a2, a3);
  v3 = v6;
  v4 = [v3 ax_arrayByRemovingDuplicates];

  return v4;
}

id AXFrontBoardFocusedAppPIDsIgnoringSiri()
{
  v0 = _AXFrontBoardFrontmostAppProcesses(1, 0, 0);
  v1 = [v0 safeValueForKey:@"state"];
  v2 = [v1 safeValueForKey:@"pid"];

  return v2;
}

id AXFrontBoardFocusedApps()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB18] array];
  v1 = _AXFrontBoardFrontmostAppProcesses(0, 1, 0);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [v6 safeIntForKey:@"pid"];
        v8 = [v6 safeStringForKey:@"bundleIdentifier"];
        v9 = [MEMORY[0x277CE7D00] appWithPID:v7 bundleID:v8];
        [v0 addObject:v9];
      }

      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  return v0;
}

id AXFrontBoardFocusedAppProcessesForGuidedAccess(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = @"com.apple.shortcuts.runtime";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v3 = _AXFrontBoardFrontmostAppProcesses(a1, 0, v2);
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (bundleIdentifier == %@)", @"com.apple.DocumentManager.DockFolderViewService"];
  [v4 filterUsingPredicate:v5];

  return v4;
}

id AXFrontBoardFocusedAppProcess()
{
  v0 = _AXFrontBoardFrontmostAppProcesses(0, 0, 0);
  v1 = [v0 firstObject];

  return v1;
}

id AXFrontBoardSpeakThisAppPIDs()
{
  v0 = _AXFrontBoardFrontmostAppProcesses(1, 0, 0);
  v1 = [v0 safeValueForKey:@"pid"];

  return v1;
}

id AXFrontBoardFocusedAppPidsForContinuity()
{
  v0 = [MEMORY[0x277CBEB18] array];
  v14 = 0;
  v15 = 0;
  _AXFrontBoardGetFrontmostAppProcessesAndScenes(0, &v15, &v14, 0, 0);
  v1 = v15;
  v2 = v14;
  if ([v2 count])
  {
    v3 = 0;
    while (v3 < [v1 count])
    {
      objc_opt_class();
      v4 = [v2 objectAtIndexedSubscript:v3];
      v5 = __UIAccessibilityCastAsClass();

      v6 = [v1 objectAtIndexedSubscript:v3];
      if ([v1 count] == 1)
      {
        v7 = AXFrontBoardSystemAppProcess();
        v8 = [v6 isEqual:v7];

        if (v8)
        {
          [v0 addObject:v6];

          break;
        }
      }

      if (_AXFrontBoardSceneBelongsToContinuityDisplay(v5))
      {
        [v0 addObject:v6];
      }

      if (++v3 >= [v2 count])
      {
        break;
      }
    }
  }

  v9 = [v0 ax_arrayByRemovingDuplicates];
  v10 = [v0 safeValueForKey:@"state"];
  v11 = [v10 safeValueForKey:@"pid"];
  v12 = __UIAccessibilitySafeClass();

  return v12;
}

void _AXFrontBoardGetFrontmostAppProcessesAndScenes(unsigned int a1, void *a2, void *a3, unsigned int a4, void *a5)
{
  v80 = __PAIR64__(a1, a4);
  v129 = *MEMORY[0x277D85DE8];
  v83 = a5;
  v102 = 0;
  v103 = &v102;
  v104 = 0x3032000000;
  v105 = __Block_byref_object_copy_;
  v106 = __Block_byref_object_dispose_;
  v107 = 0;
  v96 = 0;
  v97 = &v96;
  v98 = 0x3032000000;
  v99 = __Block_byref_object_copy_;
  v100 = __Block_byref_object_dispose_;
  v101 = 0;
  v6 = [MEMORY[0x277D0AAA0] sharedInstance];
  v7 = [v6 currentLayout];
  v8 = [v7 elements];

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v108 objects:v128 count:16];
  if (v10)
  {
    v5 = *v109;
    v11 = *MEMORY[0x277D66F50];
    v12 = *MEMORY[0x277D66F58];
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v109 != v5)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v108 + 1) + 8 * i) identifier];
        if ([v14 isEqualToString:v11])
        {

          v17 = 0;
          v16 = 1;
          goto LABEL_14;
        }

        v15 = [v14 isEqualToString:v12];

        if (v15)
        {
          v16 = 0;
          v17 = 1;
          goto LABEL_14;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v108 objects:v128 count:16];
      v16 = 0;
      v17 = 0;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

LABEL_14:

  v18 = AXLogUIA();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 67109634;
    v123 = v17;
    v124 = 1024;
    v125 = v16;
    v126 = 2112;
    v127 = v9;
    _os_log_impl(&dword_23D5EE000, v18, OS_LOG_TYPE_INFO, "Spotlight status: %d, %d %@", buf, 0x18u);
  }

  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v19 = [MEMORY[0x277D0AAA0] sharedInstance];
  v20 = [v19 currentLayout];
  v21 = [v20 elements];

  v22 = [v21 countByEnumeratingWithState:&v108 objects:v128 count:16];
  if (v22)
  {
    v23 = *v109;
    v24 = *MEMORY[0x277CE68F0];
    while (2)
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v109 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v108 + 1) + 8 * j) identifier];
        v27 = [v26 isEqualToString:v24];

        if (v27)
        {
          v28 = 1;
          goto LABEL_26;
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v108 objects:v128 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  v28 = 0;
LABEL_26:

  v29 = [MEMORY[0x277CE7E50] server];
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = ___AXFrontBoardGetFrontmostAppProcessesAndScenes_block_invoke;
  v92[3] = &unk_278BDA6D0;
  v94 = &v96;
  v95 = &v102;
  v30 = v29;
  v93 = v30;
  v31 = MEMORY[0x23EEE4820](v92);
  if (_AXFrontBoardIsSystemAppShowingAlertIgnoringServiceBundleIdentifiers(v83))
  {
    if ([v97[5] count])
    {
      goto LABEL_59;
    }

    goto LABEL_28;
  }

  v32 = [MEMORY[0x277CE7E40] server];
  v33 = [v32 isAppleWatchRemoteScreenActive];
  if (v33)
  {
    v5 = [MEMORY[0x277CE7E40] server];
    if (([v5 isScreenLockedWithPasscode:0] & 1) == 0)
    {

      goto LABEL_53;
    }
  }

  v34 = AXGuestPassManager();
  v35 = [v34 isTransferUIShowing];

  if (v33)
  {

    if (v35)
    {
LABEL_53:
      v47 = *MEMORY[0x277CE68B8];
      v90 = 0;
      v91 = 0;
      _AXFrontBoardGetTransientProcessAndSceneForBundleIdentifier(v47, &v91, &v90);
      v40 = v91;
      v48 = v90;
      v42 = v48;
      if (!v40 || !v48)
      {
        goto LABEL_58;
      }

      v121 = v40;
      v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v121 count:1];
      v50 = v97[5];
      v97[5] = v49;

      v120 = v42;
      v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v120 count:1];
      goto LABEL_56;
    }
  }

  else
  {

    if (v35)
    {
      goto LABEL_53;
    }
  }

  if ((AXProcessIsCarPlay() & 1) == 0 && ([v30 isAppSwitcherVisible] & 1) != 0 || (AXProcessIsCarPlay() & 1) == 0 && (objc_msgSend(v30, "isControlCenterVisible") & 1) != 0 || (AXProcessIsCarPlay() & 1) == 0 && (objc_msgSend(v30, "isNotificationCenterVisible") & 1) != 0 || (objc_msgSend(v30, "isSoftwareUpdateUIVisible", v80) & 1) != 0 || (AXProcessIsCarPlay() & 1) == 0 && (objc_msgSend(v30, "isPasscodeLockVisible") & 1) != 0 || (AXProcessIsCarPlay() & 1) == 0 && (objc_msgSend(MEMORY[0x277CE7E40], "server"), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "isMenuBarModal"), v36, v37))
  {
LABEL_28:
    v31[2](v31);
    goto LABEL_59;
  }

  if ((v16 | v28) == 1)
  {
    v38 = MEMORY[0x277CE6920];
    if (!v16)
    {
      v38 = MEMORY[0x277CE68F0];
    }

    v39 = *v38;
    v88 = 0;
    v89 = 0;
    _AXFrontBoardGetTransientProcessAndSceneForBundleIdentifier(v39, &v89, &v88);
    v40 = v89;
    v41 = v88;
    v42 = v41;
    if (v40 && v41)
    {
      v119 = v40;
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v119 count:1];
      v44 = v97[5];
      v97[5] = v43;

      v118 = v42;
      v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v118 count:1];
      v46 = v103[5];
      v103[5] = v45;
    }

    goto LABEL_57;
  }

  v54 = [NSClassFromString(&cfstr_Gaxspringboard.isa) safeValueForKey:@"sharedInstanceIfExists"];
  v55 = [v54 safeValueForKey:@"isInWorkspace"];
  v56 = [v55 BOOLValue];

  if (v56)
  {
    v40 = objc_alloc_init(AXFBFakeProcess);
    v42 = objc_alloc_init(AXFBFakeProcessState);
    v57 = [MEMORY[0x277CE7D30] server];
    -[AXFBFakeProcessState setPid:](v42, "setPid:", [v57 accessibilityUIServicePID]);

    [(AXFBFakeProcess *)v40 setState:v42];
    [(AXFBFakeProcess *)v40 setBundleIdentifier:*MEMORY[0x277CE68C0]];
    v117 = v40;
    v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v117 count:1];
    v59 = v97[5];
    v97[5] = v58;

    v39 = [MEMORY[0x277CBEB68] null];
    v116 = v39;
    v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v116 count:1];
    v61 = v103[5];
    v103[5] = v60;

    goto LABEL_57;
  }

  v62 = _AXFrontBoardSortedNonSystemAppProcessesAndScenes(v80);
  v40 = _AXFrontBoardFilterFrontmostAppProcessesAndScenesForSiri(SBYTE4(v80), v62);

  if (v17)
  {
    v63 = *MEMORY[0x277CE6920];
    v86 = 0;
    v87 = 0;
    _AXFrontBoardGetTransientProcessAndSceneForBundleIdentifier(v63, &v87, &v86);
    v64 = v87;
    v65 = v86;
    v66 = v65;
    if (v64 && v65)
    {
      v114[0] = @"scene";
      v114[1] = @"process";
      v115[0] = v65;
      v115[1] = v64;
      v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:2];
      [(AXFBFakeProcess *)v40 addObject:v67];
    }
  }

  if (AXProcessIsCarPlay())
  {
    IsCarPlay = AXProcessIsCarPlay();
  }

  else
  {
    IsCarPlay = [v30 isNonExclusiveSystemUIFocusableIncludingPIPWindow:0];
  }

  v69 = IsCarPlay;
  if ([(AXFBFakeProcess *)v40 ax_containsObjectUsingBlock:&__block_literal_global])
  {
    v70 = [MEMORY[0x277CE7E40] server];
    v71 = [v70 isSpotlightVisible];

    if (v71)
    {
      v72 = AXLogUIA();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        *v128 = 0;
        _os_log_impl(&dword_23D5EE000, v72, OS_LOG_TYPE_INFO, "Spotlight frontmost, but spotlight is not visible", v128, 2u);
      }
    }

    else
    {
      v69 = 1;
    }
  }

  if (AXProcessIsCarPlay())
  {
    goto LABEL_85;
  }

  v78 = [v30 isSiriVisible];
  v42 = 0;
  if (v80 & 0x100000000) != 0 || ((v78 ^ 1))
  {
    goto LABEL_86;
  }

  if (AXDeviceIsPad())
  {
LABEL_85:
    v42 = 0;
  }

  else
  {
    v79 = AXFrontBoardSystemAppProcess();
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = ___AXFrontBoardGetFrontmostAppProcessesAndScenes_block_invoke_467;
    v84[3] = &unk_278BDA718;
    v42 = v79;
    v85 = v42;
    [(AXFBFakeProcess *)v40 ax_removeObjectsFromArrayUsingBlock:v84];
  }

LABEL_86:
  if (v69)
  {
    if (v42 || (AXFrontBoardSystemAppProcess(), (v42 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v112[0] = @"scene";
      v73 = [MEMORY[0x277CBEB68] null];
      v112[1] = @"process";
      v113[0] = v73;
      v113[1] = v42;
      v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:2];
      [(AXFBFakeProcess *)v40 addObject:v74];
    }
  }

  v75 = AXLogCommon();
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
  {
    _AXFrontBoardGetFrontmostAppProcessesAndScenes_cold_1(v40, v75);
  }

  v76 = [(AXFBFakeProcess *)v40 valueForKey:@"process"];
  v77 = v97[5];
  v97[5] = v76;

  v51 = [(AXFBFakeProcess *)v40 valueForKey:@"scene"];
LABEL_56:
  v39 = v103[5];
  v103[5] = v51;
LABEL_57:

LABEL_58:
LABEL_59:
  v52 = [MEMORY[0x277CE7E40] server];
  v53 = [v52 isRemoteAlertVisible];

  if (v53)
  {
    v31[2](v31);
  }

  if (![v97[5] count])
  {
    v31[2](v31);
  }

  if (a2)
  {
    *a2 = v97[5];
  }

  if (a3)
  {
    *a3 = v103[5];
  }

  _Block_object_dispose(&v96, 8);
  _Block_object_dispose(&v102, 8);
}

void sub_23D5F18B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _AXFrontBoardSceneBelongsToContinuityDisplay(void *a1)
{
  v1 = [a1 safeValueForKey:@"parentScene"];
  v2 = 0;
  if (v1)
  {
    NSClassFromString(&cfstr_Fbsscene.isa);
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v1 accessibilityIsSceneOnContinuityDisplay])
    {
      v2 = 1;
    }
  }

  return v2;
}

id AXFrontBoardSpeakThisAppPIDForPoint(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v32 = @"Finding the Speak Screen app for portrait-up coordinate: %@";
    v33 = v1;
    LOBYTE(v30) = 1;
    _AXLogWithFacility();
  }

  v36 = v2;
  v37 = 0;
  v38 = 0;
  _AXFrontBoardGetFrontmostAppProcessesAndScenes(1u, &v38, &v37, 0, 0);
  v3 = v38;
  v4 = v37;
  v5 = [v3 count];
  if (v5 != [v4 count])
  {
    v30 = [v3 count];
    v32 = [v4 count];
    _AXAssert();
  }

  v6 = [v4 count];
  if (!v6)
  {
LABEL_17:
    LOBYTE(v31) = 1;
    _AXLogWithFacility();
    v28 = [MEMORY[0x277CCABB0] numberWithInt:{getpid(), v31, @"Using system app as Speak Screen app"}];
    v11 = 0;
    v27 = 0;
    goto LABEL_18;
  }

  v7 = v6;
  v8 = 0;
  v35 = 0;
  v9 = 0.0;
  while (1)
  {
    v10 = [v4 objectAtIndexedSubscript:v8];
    v11 = [v3 objectAtIndexedSubscript:v8];
    v12 = [MEMORY[0x277CBEB68] null];
    if (v10 == v12)
    {
      goto LABEL_13;
    }

    v13 = [v10 accessibilitySceneIdentifier];
    v14 = [v13 isEqualToString:@"searchBar-todayView"];

    if (v14)
    {
      goto LABEL_14;
    }

    [v10 accessibilitySceneFrame];
    v18 = v17;
    v20 = v19;
    v21 = v36;
    if (v36)
    {
      v22 = v15;
      v23 = v16;
      [v36 CGPointValue];
      v40.x = v24;
      v40.y = v25;
      v41.origin.x = v22;
      v41.origin.y = v23;
      v41.size.width = v18;
      v41.size.height = v20;
      if (CGRectContainsPoint(v41, v40))
      {
        break;
      }
    }

    v26 = v18 * v20;
    if (v26 > v9)
    {
      v12 = v35;
      v35 = v11;
      v9 = v26;
LABEL_13:
    }

LABEL_14:

    if (v7 == ++v8)
    {
      goto LABEL_15;
    }
  }

  v42.origin.x = v22;
  v42.origin.y = v23;
  v42.size.width = v18;
  v42.size.height = v20;
  v34 = NSStringFromCGRect(v42);
  LOBYTE(v31) = 1;
  _AXLogWithFacility();

  if (v11)
  {
    v28 = [v11 safeValueForKey:{@"pid", v31, @"Found app %@ which contained that point in its frame %@", v11, v34}];
    v27 = v35;
    goto LABEL_19;
  }

LABEL_15:
  v27 = v35;
  if (!v35)
  {
    goto LABEL_17;
  }

  LOBYTE(v31) = 1;
  _AXLogWithFacility();
  v28 = [v35 safeValueForKey:{@"pid", v31, @"Using app with largest area as Speak Screen app: %@", v35}];
  v11 = 0;
LABEL_18:
  v21 = v36;
LABEL_19:

  return v28;
}

uint64_t AXFrontBoardIsSystemAppUINonExclusive()
{
  v0 = [MEMORY[0x277CE7E50] server];
  v1 = [v0 isNonExclusiveSystemUIFocusableIncludingPIPWindow:1];

  return v1;
}

id AXFrontBoardRunningAppPIDs()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB18] array];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = AXFrontBoardRunningAppProcesses();
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v8 + 1) + 8 * i) safeValueForKey:{@"pid", v8}];
        if (v6)
        {
          [v0 addObject:v6];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  return v0;
}

uint64_t AXIsPurpleBuddyFrontmost()
{
  v0 = AXFrontBoardFocusedAppProcess();
  v1 = [v0 safeValueForKey:@"bundleIdentifier"];
  v2 = [MEMORY[0x277CE69A8] setupProcessName];
  v3 = [v1 isEqualToString:v2];

  return v3;
}

void AXFrontBoardRebootDevice()
{
  v1 = [objc_alloc(MEMORY[0x277D0AE10]) initWithReason:@"Accessibility reboot"];
  [v1 setRebootType:1];
  [v1 setSource:1];
  v0 = [MEMORY[0x277D0AB08] sharedInstance];
  [v0 shutdownUsingOptions:v1];
}

id AXFrontBoardSystemApplicationControllerInstance()
{
  if (AXProcessIsSpringBoard())
  {
    v0 = AXFrontBoardSystemApplicationControllerInstance_AX_SBApplicationController;
    if (!AXFrontBoardSystemApplicationControllerInstance_AX_SBApplicationController)
    {
      v1 = [NSClassFromString(&cfstr_Sbapplicationc.isa) safeValueForKey:@"sharedInstance"];
      v2 = AXFrontBoardSystemApplicationControllerInstance_AX_SBApplicationController;
      AXFrontBoardSystemApplicationControllerInstance_AX_SBApplicationController = v1;

      v0 = AXFrontBoardSystemApplicationControllerInstance_AX_SBApplicationController;
    }

    v3 = v0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void _AXFrontBoardGetTransientProcessAndSceneForBundleIdentifier(void *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D0AAC0];
  v6 = a1;
  v7 = [v5 sharedInstance];
  v8 = [v7 processesForBundleIdentifier:v6];

  v9 = [v8 firstObject];

  if (v9)
  {
    v10 = v9;
    v11 = [MEMORY[0x277CBEB68] null];
  }

  else
  {
    v12 = AXLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      _AXFrontBoardGetTransientProcessAndSceneForBundleIdentifier_cold_1(v12);
    }

    v11 = 0;
  }

  v13 = v9;
  *a2 = v9;
  v14 = v11;
  *a3 = v11;
}

id _AXFrontBoardSortedNonSystemAppProcessesAndScenes(char a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = *MEMORY[0x277D76620];
  v4 = AXFrontBoardSystemAppProcess();
  v5 = [v4 bundleIdentifier];

  v6 = [v5 isEqualToString:*MEMORY[0x277CE68E8]];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = ___AXFrontBoardSortedNonSystemAppProcessesAndScenes_block_invoke;
  v50[3] = &unk_278BDA740;
  v53 = v6;
  v54 = a1;
  v55 = 0;
  v7 = v3;
  v51 = v7;
  v8 = v2;
  v52 = v8;
  v9 = MEMORY[0x23EEE4820](v50);
  IsCarPlay = AXProcessIsCarPlay();
  v11 = [MEMORY[0x277D0AAE8] safeDictionaryForKey:@"_accessibilityCachedWorkspaces"];
  v12 = v11;
  if (!IsCarPlay)
  {
    v32 = v7;
    v33 = v8;
    v34 = v5;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v40 = 0u;
    v21 = [v11 allKeys];
    v22 = [v21 countByEnumeratingWithState:&v40 objects:v56 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v41;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v41 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v40 + 1) + 8 * i);
          if ([v26 hasPrefix:@"UISceneHosting-com.apple.springboard"])
          {
            v27 = [v12 objectForKeyedSubscript:v26];
            v28 = [v27 allScenes];
            v38[0] = MEMORY[0x277D85DD0];
            v38[1] = 3221225472;
            v38[2] = ___AXFrontBoardSortedNonSystemAppProcessesAndScenes_block_invoke_4;
            v38[3] = &unk_278BDA768;
            v39 = v9;
            [v28 enumerateObjectsUsingBlock:v38];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v40 objects:v56 count:16];
      }

      while (v23);
    }

    v13 = [NSClassFromString(&cfstr_Fbscenemanager.isa) safeValueForKey:@"sharedInstance"];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = ___AXFrontBoardSortedNonSystemAppProcessesAndScenes_block_invoke_5;
    v36[3] = &unk_278BDA790;
    v37 = v9;
    [v13 enumerateScenesWithBlock:v36];

    goto LABEL_22;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v13 = [v11 allKeys];
  v14 = [v13 countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (v14)
  {
    v15 = v14;
    v32 = v7;
    v33 = v8;
    v34 = v5;
    v16 = *v47;
    do
    {
      v17 = 0;
      do
      {
        if (*v47 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v46 + 1) + 8 * v17);
        v14 = ___AXFrontBoardSortedNonSystemAppProcessesAndScenes_block_invoke_2(v14, v18);
        if (v14)
        {
          v19 = [v12 objectForKeyedSubscript:v18];
          v20 = [v19 allScenes];
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = ___AXFrontBoardSortedNonSystemAppProcessesAndScenes_block_invoke_3;
          v44[3] = &unk_278BDA768;
          v45 = v9;
          [v20 enumerateObjectsUsingBlock:v44];
        }

        ++v17;
      }

      while (v15 != v17);
      v14 = [v13 countByEnumeratingWithState:&v46 objects:v57 count:16];
      v15 = v14;
    }

    while (v14);
LABEL_22:
    v8 = v33;
    v5 = v34;
    v7 = v32;
  }

  v29 = [*MEMORY[0x277D76620] activeInterfaceOrientation];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = ___AXFrontBoardSortedNonSystemAppProcessesAndScenes_block_invoke_6;
  v35[3] = &__block_descriptor_40_e39_q24__0__NSDictionary_8__NSDictionary_16l;
  v35[4] = v29;
  [v8 sortUsingComparator:v35];
  v30 = v8;

  return v8;
}

void sub_23D5F3030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23D5F3CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23D5F3E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void AXApplicationNameLabelForBundleIdentifier_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23D5EE000, a2, OS_LOG_TYPE_ERROR, "Error fetching record: %@", &v2, 0xCu);
}

void _AXFrontBoardGetFrontmostAppProcessesAndScenes_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_23D5EE000, a2, OS_LOG_TYPE_DEBUG, "Foreground Processes And Scenes: %@", &v2, 0xCu);
}