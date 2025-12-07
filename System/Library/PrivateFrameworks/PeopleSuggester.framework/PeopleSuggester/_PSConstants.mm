@interface _PSConstants
+ (id)eligibleShareSheetTargets;
+ (id)mailBundleIds;
+ (id)messagesBundleIds;
+ (id)sharePlayBundleId;
+ (id)shareplayBundleIds;
+ (id)systemBundleIds;
@end

@implementation _PSConstants

+ (id)sharePlayBundleId
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v2 = getTUBundleIdentifierCallServicesDaemonSymbolLoc_ptr;
  v13 = getTUBundleIdentifierCallServicesDaemonSymbolLoc_ptr;
  if (!getTUBundleIdentifierCallServicesDaemonSymbolLoc_ptr)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getTUBundleIdentifierCallServicesDaemonSymbolLoc_block_invoke;
    v9[3] = &unk_1E7C23BF0;
    v9[4] = &v10;
    __getTUBundleIdentifierCallServicesDaemonSymbolLoc_block_invoke(v9);
    v2 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v2)
  {
    [_PSBlockedHandlesCache beginSyncingWithTU];
    v8 = v7;
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v8);
  }

  v3 = *v2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"com.apple.telephonyutilities.callservicesd";
  }

  return v5;
}

+ (id)eligibleShareSheetTargets
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41___PSConstants_eligibleShareSheetTargets__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (eligibleShareSheetTargets__pasOnceToken2 != -1)
  {
    dispatch_once(&eligibleShareSheetTargets__pasOnceToken2, block);
  }

  v2 = eligibleShareSheetTargets__pasExprOnceResult;

  return v2;
}

+ (id)messagesBundleIds
{
  if (messagesBundleIds__pasOnceToken3 != -1)
  {
    +[_PSConstants messagesBundleIds];
  }

  v3 = messagesBundleIds__pasExprOnceResult;

  return v3;
}

+ (id)mailBundleIds
{
  if (mailBundleIds__pasOnceToken4 != -1)
  {
    +[_PSConstants mailBundleIds];
  }

  v3 = mailBundleIds__pasExprOnceResult;

  return v3;
}

+ (id)shareplayBundleIds
{
  if (shareplayBundleIds__pasOnceToken5 != -1)
  {
    +[_PSConstants shareplayBundleIds];
  }

  v3 = shareplayBundleIds__pasExprOnceResult;

  return v3;
}

+ (id)systemBundleIds
{
  if (systemBundleIds_onceToken != -1)
  {
    +[_PSConstants systemBundleIds];
  }

  v3 = systemBundleIds_systemBundleIds;

  return v3;
}

@end