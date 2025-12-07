@interface SSScreenCaptureAbilityCheck
+ (id)abilityCheck;
@end

@implementation SSScreenCaptureAbilityCheck

+ (id)abilityCheck
{
  v2 = objc_alloc_init(self);
  [v2 setIsAbleToTakeScreenshots:1];
  [v2 setReasonForNotBeingAbleToTakeScreenshots:0];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v3 = getMCProfileConnectionClass_softClass;
  v26 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getMCProfileConnectionClass_block_invoke;
    v21 = &unk_1E8590188;
    v22 = &v23;
    __getMCProfileConnectionClass_block_invoke(&v18);
    v3 = v24[3];
  }

  v4 = v3;
  _Block_object_dispose(&v23, 8);
  sharedConnection = [v3 sharedConnection];
  isScreenShotAllowed = [sharedConnection isScreenShotAllowed];

  if ((isScreenShotAllowed & 1) == 0)
  {
    [v2 setIsAbleToTakeScreenshots:0];
    [v2 setReasonForNotBeingAbleToTakeScreenshots:@"Disallowed from ManagedConfiguration"];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v7 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  v26 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  if (!getMKBDeviceUnlockedSinceBootSymbolLoc_ptr)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke;
    v21 = &unk_1E8590188;
    v22 = &v23;
    __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(&v18);
    v7 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (!v7)
  {
    [SSScreenshotAssetManagerPhotoLibraryBackend saveImageDataToTemporaryLocation:withName:imageDescription:completionHandler:];
    goto LABEL_25;
  }

  if (v7() <= 0)
  {
    [v2 setIsAbleToTakeScreenshots:0];
    [v2 setReasonForNotBeingAbleToTakeScreenshots:@"Device has not done first unlock"];
  }

  sharedManager = [getUMUserManagerClass() sharedManager];
  if ([sharedManager isSharedIPad])
  {
    sharedManager2 = [getUMUserManagerClass() sharedManager];
    currentUser = [sharedManager2 currentUser];
    isLoginUser = [currentUser isLoginUser];

    if (isLoginUser)
    {
      [v2 setIsAbleToTakeScreenshots:0];
      [v2 setReasonForNotBeingAbleToTakeScreenshots:@"Device is at the login window"];
    }
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v12 = getBYSetupAssistantNeedsToRunSymbolLoc_ptr;
  v26 = getBYSetupAssistantNeedsToRunSymbolLoc_ptr;
  if (!getBYSetupAssistantNeedsToRunSymbolLoc_ptr)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getBYSetupAssistantNeedsToRunSymbolLoc_block_invoke;
    v21 = &unk_1E8590188;
    v22 = &v23;
    __getBYSetupAssistantNeedsToRunSymbolLoc_block_invoke(&v18);
    v12 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (!v12)
  {
LABEL_25:
    [SSScreenshotAssetManagerPhotoLibraryBackend saveImageDataToTemporaryLocation:withName:imageDescription:completionHandler:];
    v17 = v16;
    _Block_object_dispose(&v23, 8);
    _Unwind_Resume(v17);
  }

  if (v12())
  {
    [v2 setIsAbleToTakeScreenshots:0];
    [v2 setReasonForNotBeingAbleToTakeScreenshots:@"Device has not gone through Buddy"];
  }

  v13 = MGGetBoolAnswer();
  if (v13 && _SSShouldIgnoreAbilityCheck(v13, v14))
  {
    [v2 setIsAbleToTakeScreenshots:1];
    [v2 setReasonForNotBeingAbleToTakeScreenshots:0];
  }

  return v2;
}

@end