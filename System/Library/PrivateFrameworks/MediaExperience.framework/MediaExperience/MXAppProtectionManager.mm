@interface MXAppProtectionManager
+ (id)sharedInstance;
- (MXAppProtectionManager)init;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)cancelLockedAppRemovalFromNowPlayingAppStack:(id)stack;
- (void)dealloc;
- (void)dumpDebugInfo;
- (void)handlePlayingStateChangedForNowPlayingApp:(id)app isCurrentlyPlaying:(BOOL)playing;
- (void)scheduleLockedAppRemovalFromNowPlayingAppStack:(id)stack;
@end

@implementation MXAppProtectionManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_13 != -1)
  {
    +[MXAppProtectionManager sharedInstance];
  }

  return sharedInstance_sSharedInstance_11;
}

MXAppProtectionManager *__40__MXAppProtectionManager_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXAppProtectionManager);
  sharedInstance_sSharedInstance_11 = result;
  return result;
}

- (MXAppProtectionManager)init
{
  v9.receiver = self;
  v9.super_class = MXAppProtectionManager;
  v2 = [(MXAppProtectionManager *)&v9 init];
  v4 = v2;
  if (v2)
  {
    if (MX_FeatureFlags_IsProtectedAppsEnabled(v2, v3))
    {
      v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v4->mSerialQueue = dispatch_queue_create("com.apple.mediaexperience.AppProtectionManager", v5);
      v4->mLockedApps = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v4->mLockedAppsToBeRemovedFromNowPlayingAppStack = objc_alloc_init(MEMORY[0x1E695DF70]);
      mSerialQueue = v4->mSerialQueue;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __30__MXAppProtectionManager_init__block_invoke;
      v8[3] = &unk_1E7AE7CE0;
      v8[4] = v4;
      MXDispatchAsync("[MXAppProtectionManager init]", "MX_AppProtectionManager.m", 85, 0, 0, mSerialQueue, v8);
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

void *__30__MXAppProtectionManager_init__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__10;
  v2 = getAPSubjectClass_softClass;
  v19 = __Block_byref_object_dispose__10;
  v20 = getAPSubjectClass_softClass;
  if (!getAPSubjectClass_softClass)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __getAPSubjectClass_block_invoke;
    v23 = &unk_1E7AE73A0;
    v24 = &v15;
    __getAPSubjectClass_block_invoke(v22);
    v2 = v16[5];
  }

  _Block_object_dispose(&v15, 8);
  *(*(a1 + 32) + 32) = [objc_msgSend(v2 "subjectMonitorRegistry")];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__10;
  v3 = getAPApplicationClass_softClass;
  v19 = __Block_byref_object_dispose__10;
  v20 = getAPApplicationClass_softClass;
  if (!getAPApplicationClass_softClass)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __getAPApplicationClass_block_invoke;
    v23 = &unk_1E7AE73A0;
    v24 = &v15;
    __getAPApplicationClass_block_invoke(v22);
    v3 = v16[5];
  }

  _Block_object_dispose(&v15, 8);
  v4 = [v3 lockedApplications];
  result = [v4 countByEnumeratingWithState:&v11 objects:v21 count:16];
  v6 = result;
  if (result)
  {
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) bundleIdentifier];
        if (v9)
        {
          [*(*(a1 + 32) + 16) addObject:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v11 objects:v21 count:16];
      v6 = result;
    }

    while (result);
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

- (void)dealloc
{
  mSerialQueue = self->mSerialQueue;
  if (mSerialQueue)
  {
    dispatch_release(mSerialQueue);
    self->mSerialQueue = 0;
  }

  self->mLockedApps = 0;
  self->mLockedAppsToBeRemovedFromNowPlayingAppStack = 0;
  [(APSubjectMonitorSubscription *)self->mSubjectMonitor invalidate];
  self->mSubjectMonitor = 0;
  v4.receiver = self;
  v4.super_class = MXAppProtectionManager;
  [(MXAppProtectionManager *)&v4 dealloc];
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  mSerialQueue = self->mSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__MXAppProtectionManager_appProtectionSubjectsChanged_forSubscription___block_invoke;
  v5[3] = &unk_1E7AEA340;
  v5[4] = changed;
  v5[5] = self;
  MXDispatchSync("[MXAppProtectionManager appProtectionSubjectsChanged:forSubscription:]", "MX_AppProtectionManager.m", 132, 0, 0, mSerialQueue, v5);
}

void *__71__MXAppProtectionManager_appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  result = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = [v7 bundleIdentifier];
        v9 = [*(*(a1 + 40) + 16) containsObject:v8];
        if ([v7 isLocked])
        {
          if ((v9 & 1) == 0)
          {
            if (dword_1EB75DE40)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            [*(*(a1 + 40) + 16) addObject:v8];
            v12 = CMSMNP_CopyNowPlayingAppSession();
            v13 = CMSUtility_CopyBundleID(v12);
            if (([v13 isEqualToString:v8] & 1) == 0)
            {
              [*(a1 + 40) scheduleLockedAppRemovalFromNowPlayingAppStack:v8];
            }
          }
        }

        else if (v9)
        {
          if (dword_1EB75DE40)
          {
            v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [*(*(a1 + 40) + 16) removeObject:v8];
          [*(a1 + 40) cancelLockedAppRemovalFromNowPlayingAppStack:v8];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)handlePlayingStateChangedForNowPlayingApp:(id)app isCurrentlyPlaying:(BOOL)playing
{
  appCopy = app;
  mSerialQueue = self->mSerialQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__MXAppProtectionManager_handlePlayingStateChangedForNowPlayingApp_isCurrentlyPlaying___block_invoke;
  v9[3] = &unk_1E7AEB958;
  v9[4] = self;
  v9[5] = app;
  playingCopy = playing;
  MXDispatchAsync("[MXAppProtectionManager handlePlayingStateChangedForNowPlayingApp:isCurrentlyPlaying:]", "MX_AppProtectionManager.m", 176, 0, 0, mSerialQueue, v9);
}

void __87__MXAppProtectionManager_handlePlayingStateChangedForNowPlayingApp_isCurrentlyPlaying___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) containsObject:*(a1 + 40)])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    if (*(a1 + 48) == 1)
    {
      [v2 cancelLockedAppRemovalFromNowPlayingAppStack:v3];
    }

    else
    {
      [v2 scheduleLockedAppRemovalFromNowPlayingAppStack:v3];
    }
  }

  v4 = *(a1 + 40);
}

- (void)scheduleLockedAppRemovalFromNowPlayingAppStack:(id)stack
{
  v13[1] = *MEMORY[0x1E69E9840];
  if ([+[MXNowPlayingAppManager doesNowPlayingAppStackContain:"doesNowPlayingAppStackContain:"]
  {
    mLockedAppsToBeRemovedFromNowPlayingAppStack = self->mLockedAppsToBeRemovedFromNowPlayingAppStack;
    stackCopy = stack;
    v13[0] = [MEMORY[0x1E695DF00] now];
    -[NSMutableArray addObject:](mLockedAppsToBeRemovedFromNowPlayingAppStack, "addObject:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&stackCopy count:1]);
    if (dword_1EB75DE40)
    {
      v11 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = dispatch_time(0, 30000000000);
    mSerialQueue = self->mSerialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__MXAppProtectionManager_scheduleLockedAppRemovalFromNowPlayingAppStack___block_invoke;
    block[3] = &unk_1E7AEBCA0;
    block[4] = self;
    block[5] = 30;
    dispatch_after(v7, mSerialQueue, block);
  }
}

void __73__MXAppProtectionManager_scheduleLockedAppRemovalFromNowPlayingAppStack___block_invoke(uint64_t a1)
{
  v1 = a1;
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 24) copy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v2;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    v12 = v1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [objc_msgSend(v7 "allKeys")];
        v9 = [objc_msgSend(v7 "allValues")];
        [objc_msgSend(MEMORY[0x1E695DF00] "now")];
        if (v10 >= *(v1 + 40))
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v1 = v12;
          }

          [*(*(v1 + 32) + 24) removeObject:v7];
          [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager removeFromNowPlayingAppStack:"removeFromNowPlayingAppStack:", v8];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

- (void)cancelLockedAppRemovalFromNowPlayingAppStack:(id)stack
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [(NSMutableArray *)self->mLockedAppsToBeRemovedFromNowPlayingAppStack copy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = &qword_1EB75D000;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([objc_msgSend(objc_msgSend(v10 "allKeys")])
        {
          if (dword_1EB75DE40)
          {
            v11 = v8;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            v8 = v11;
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [(NSMutableArray *)self->mLockedAppsToBeRemovedFromNowPlayingAppStack removeObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)dumpDebugInfo
{
  mSerialQueue = self->mSerialQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__MXAppProtectionManager_dumpDebugInfo__block_invoke;
  v3[3] = &unk_1E7AE7CE0;
  v3[4] = self;
  MXDispatchSync("[MXAppProtectionManager dumpDebugInfo]", "MX_AppProtectionManager.m", 250, 0, 0, mSerialQueue, v3);
}

void __39__MXAppProtectionManager_dumpDebugInfo__block_invoke(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    v56 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v46 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v46 setDateFormat:@"YYYY-MM-dd HH:mm:ss:ms"];
  if (dword_1EB75DE40)
  {
    v56 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v45 = a1;
  v4 = *(*(a1 + 32) + 16);
  v5 = [v4 countByEnumeratingWithState:&v51 objects:v64 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v52;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v52 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (dword_1EB75DE40)
        {
          v9 = *(*(&v51 + 1) + 8 * i);
          v56 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v11 = v56;
          v12 = type;
          if (os_log_type_enabled(v10, type))
          {
            v13 = v11;
          }

          else
          {
            v13 = v11 & 0xFFFFFFFE;
          }

          if (v13)
          {
            v57 = 136315394;
            v58 = "[MXAppProtectionManager dumpDebugInfo]_block_invoke";
            v59 = 2114;
            v60 = v9;
            LODWORD(v44) = 22;
            _os_log_send_and_compose_impl(v13, 0, v65, 128, &dword_1B17A2000, v10, v12, "-MXAppProtectionManager- %s: \t\t %{public}@,", &v57, v44);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v51 objects:v64 count:16];
    }

    while (v6);
  }

  if (dword_1EB75DE40)
  {
    v56 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v15 = v56;
    v16 = type;
    if (os_log_type_enabled(v14, type))
    {
      v17 = v15;
    }

    else
    {
      v17 = v15 & 0xFFFFFFFE;
    }

    if (v17)
    {
      v57 = 136315138;
      v58 = "[MXAppProtectionManager dumpDebugInfo]_block_invoke";
      _os_log_send_and_compose_impl(v17, 0, v65, 128, &dword_1B17A2000, v14, v16, "-MXAppProtectionManager- %s: \t }", &v57);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v56 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v19 = v56;
      v20 = type;
      if (os_log_type_enabled(v18, type))
      {
        v21 = v19;
      }

      else
      {
        v21 = v19 & 0xFFFFFFFE;
      }

      if (v21)
      {
        v57 = 136315138;
        v58 = "[MXAppProtectionManager dumpDebugInfo]_block_invoke";
        _os_log_send_and_compose_impl(v21, 0, v65, 128, &dword_1B17A2000, v18, v20, "-MXAppProtectionManager- %s: \t mLockedAppsToBeRemovedFromNowPlayingAppStack = {", &v57);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v22 = *(*(v45 + 32) + 24);
  v23 = [v22 countByEnumeratingWithState:&v47 objects:v63 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v48;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v48 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v47 + 1) + 8 * j);
        v28 = [objc_msgSend(v27 "allKeys")];
        v29 = [objc_msgSend(v27 "allValues")];
        if (dword_1EB75DE40)
        {
          v30 = v29;
          v56 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v32 = v56;
          v33 = type;
          if (os_log_type_enabled(v31, type))
          {
            v34 = v32;
          }

          else
          {
            v34 = v32 & 0xFFFFFFFE;
          }

          if (v34)
          {
            v35 = [v46 stringFromDate:v30];
            v57 = 136315650;
            v58 = "[MXAppProtectionManager dumpDebugInfo]_block_invoke";
            v59 = 2114;
            v60 = v28;
            v61 = 2114;
            v62 = v35;
            LODWORD(v44) = 32;
            _os_log_send_and_compose_impl(v34, 0, v65, 128, &dword_1B17A2000, v31, v33, "-MXAppProtectionManager- %s: \t\t %{public}@: %{public}@,", &v57, v44);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v47 objects:v63 count:16];
    }

    while (v24);
  }

  if (dword_1EB75DE40)
  {
    v56 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v37 = v56;
    v38 = type;
    if (os_log_type_enabled(v36, type))
    {
      v39 = v37;
    }

    else
    {
      v39 = v37 & 0xFFFFFFFE;
    }

    if (v39)
    {
      v57 = 136315138;
      v58 = "[MXAppProtectionManager dumpDebugInfo]_block_invoke";
      _os_log_send_and_compose_impl(v39, 0, v65, 128, &dword_1B17A2000, v36, v38, "-MXAppProtectionManager- %s: \t }", &v57);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (dword_1EB75DE40)
  {
    v56 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v41 = v56;
    v42 = type;
    if (os_log_type_enabled(v40, type))
    {
      v43 = v41;
    }

    else
    {
      v43 = v41 & 0xFFFFFFFE;
    }

    if (v43)
    {
      v57 = 136315138;
      v58 = "[MXAppProtectionManager dumpDebugInfo]_block_invoke";
      _os_log_send_and_compose_impl(v43, 0, v65, 128, &dword_1B17A2000, v40, v42, "-MXAppProtectionManager- %s: \t =======================================================================================================================================", &v57);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

@end