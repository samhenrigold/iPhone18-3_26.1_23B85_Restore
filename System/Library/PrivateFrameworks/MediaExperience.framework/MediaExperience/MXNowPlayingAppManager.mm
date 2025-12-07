@interface MXNowPlayingAppManager
+ (id)getNowPlayingAppUpdateReasonString:(unsigned int)string;
+ (id)sharedInstance;
+ (void)actuallyWriteNowPlayingAppDisplayIDToDisk:(id)disk;
+ (void)processNowPlayingAppPIDChangeIfNeeded:(BOOL)needed;
- (BOOL)doesNowPlayingAppStackContain:(id)contain;
- (BOOL)resetNowPlayingAppIfNeeded:(unsigned int)needed allowedToBeNowPlaying:(BOOL)playing canBeNowPlayingApp:(BOOL)app;
- (BOOL)setIsNowPlayingApp:(int)app;
- (MXNowPlayingAppManager)init;
- (id)copyTopOfNowPlayingAppStack;
- (unint64_t)nowPlayingAppStackSize;
- (void)clearNowPlayingAppStack;
- (void)dealloc;
- (void)dumpNowPlayingAppInfo;
- (void)popNowPlayingAppStack;
- (void)popNowPlayingAppStackOldestDisplayID;
- (void)populateNowPlayingAppStack:(id)stack hostProcessAttributionBundleID:(id)d;
- (void)pushToNowPlayingAppStack:(id)stack hostProcessAttributionBundleID:(id)d;
- (void)removeFromNowPlayingAppStack:(id)stack;
- (void)resetNowPlayingApp:(id)app;
- (void)resetNowPlayingAppToDefaultMusicApp;
- (void)saveNowPlayingAppStackToDisk;
- (void)setWriteNowPlayingAppToDiskTimer:(id)timer;
- (void)updateNowPlayingApp:(int)app session:(id)session reasonForUpdate:(unsigned int)update;
- (void)updateNowPlayingAppStackFromDisk;
- (void)writeNowPlayingAppInfoToDisk;
@end

@implementation MXNowPlayingAppManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_8 != -1)
  {
    +[MXNowPlayingAppManager sharedInstance];
  }

  return sharedInstance_sSharedInstance_7;
}

- (id)copyTopOfNowPlayingAppStack
{
  [(NSLock *)self->mLock lock];
  lastObject = [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack lastObject];
  [(NSLock *)self->mLock unlock];
  return lastObject;
}

MXNowPlayingAppManager *__40__MXNowPlayingAppManager_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXNowPlayingAppManager);
  sharedInstance_sSharedInstance_7 = result;
  return result;
}

- (MXNowPlayingAppManager)init
{
  v4.receiver = self;
  v4.super_class = MXNowPlayingAppManager;
  v2 = [(MXNowPlayingAppManager *)&v4 init];
  if (v2)
  {
    v2->mLock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v2->_nowPlayingAppDisplayID = 0;
    v2->_nowPlayingAppStopTime = 0;
    v2->_writeNowPlayingAppToDiskTimer = 0;
    v2->mNowPlayingAppDisplayIDStack = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->mNowPlayingAppHostProcessAttributionBundleID = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (void)dealloc
{
  self->_nowPlayingAppDisplayID = 0;

  self->_nowPlayingAppStopTime = 0;
  self->_writeNowPlayingAppToDiskTimer = 0;

  self->mNowPlayingAppDisplayIDStack = 0;
  self->mNowPlayingAppHostProcessAttributionBundleID = 0;

  self->mLock = 0;
  v3.receiver = self;
  v3.super_class = MXNowPlayingAppManager;
  [(MXNowPlayingAppManager *)&v3 dealloc];
}

- (void)setWriteNowPlayingAppToDiskTimer:(id)timer
{
  [(NSLock *)self->mLock lock];
  writeNowPlayingAppToDiskTimer = self->_writeNowPlayingAppToDiskTimer;
  if (writeNowPlayingAppToDiskTimer)
  {
    dispatch_source_cancel(writeNowPlayingAppToDiskTimer);
    v6 = self->_writeNowPlayingAppToDiskTimer;
    if (v6)
    {
      dispatch_release(v6);
      self->_writeNowPlayingAppToDiskTimer = 0;
    }
  }

  self->_writeNowPlayingAppToDiskTimer = timer;
  mLock = self->mLock;

  [(NSLock *)mLock unlock];
}

+ (void)actuallyWriteNowPlayingAppDisplayIDToDisk:(id)disk
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  MXCFPreferencesSetAndSynchronizeUserPreference(@"nowPlayingAppDisplayID", disk);
}

+ (void)processNowPlayingAppPIDChangeIfNeeded:(BOOL)needed
{
  if (needed)
  {
    CMSMUtility_UpdateSharePlayVolumeBehaviours(self, a2);
    CMSMNotificationUtility_PostNowPlayingAppPIDDidChange();
    CMSMNotificationUtility_PostNowPlayingAppDidChange();
    CMSMNotificationUtility_PostSomeSessionIsPlayingDidChange();
    [+[MXSessionManager sharedInstance](MXSessionManager updateSupportedOutputChannelLayouts];
  }

  v3 = CMSMNotificationUtility_PostNowPlayingAppIsPlayingDidChange();

  CMSMNotificationUtility_PostNowPlayingAppStackDidChange(v3, v4);
}

+ (id)getNowPlayingAppUpdateReasonString:(unsigned int)string
{
  if (string >= 8)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN reason = %d", *&string];
  }

  else
  {
    return *(&off_1E7AEB520 + string);
  }
}

- (void)writeNowPlayingAppInfoToDisk
{
  v3 = MXGetSerialQueue(self, a2);
  v4 = MXDispatchUtilityCreateOneShotTimer("[MXNowPlayingAppManager writeNowPlayingAppInfoToDisk]", "MXNowPlayingAppManager.m", 192, 0, 0, v3, &__block_literal_global_38, 0, 5.0, 0);

  [(MXNowPlayingAppManager *)self setWriteNowPlayingAppToDiskTimer:v4];
}

uint64_t __54__MXNowPlayingAppManager_writeNowPlayingAppInfoToDisk__block_invoke()
{
  v0 = +[MXNowPlayingAppManager actuallyWriteNowPlayingAppDisplayIDToDisk:](MXNowPlayingAppManager, "actuallyWriteNowPlayingAppDisplayIDToDisk:", [+[MXNowPlayingAppManager nowPlayingAppDisplayID] sharedInstance];
  if (MX_FeatureFlags_IsNowPlayingAppStackEnabled(v0, v1))
  {
    [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager saveNowPlayingAppStackToDisk];
  }

  v2 = +[MXNowPlayingAppManager sharedInstance];

  return [(MXNowPlayingAppManager *)v2 setWriteNowPlayingAppToDiskTimer:0];
}

- (void)resetNowPlayingAppToDefaultMusicApp
{
  -[MXNowPlayingAppManager setNowPlayingAppDisplayID:](self, "setNowPlayingAppDisplayID:", [+[MXSessionManager sharedInstance](MXSessionManager defaultMusicApp]);
  [(MXNowPlayingAppManager *)self setNowPlayingAppPID:0];

  [(MXNowPlayingAppManager *)self setNowPlayingAppStopTime:0];
}

- (void)resetNowPlayingApp:(id)app
{
  v7 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsNowPlayingAppStackEnabled(self, a2))
  {
    copyTopOfNowPlayingAppStack = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager copyTopOfNowPlayingAppStack];
    [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager popNowPlayingAppStack];
    copyTopOfNowPlayingAppStack2 = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager copyTopOfNowPlayingAppStack];
  }

  else
  {
    copyTopOfNowPlayingAppStack = [(MXNowPlayingAppManager *)self nowPlayingAppDisplayID];
    copyTopOfNowPlayingAppStack2 = [+[MXSessionManager sharedInstance](MXSessionManager defaultMusicApp];
    [(MXNowPlayingAppManager *)self resetNowPlayingAppToDefaultMusicApp];
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (BOOL)resetNowPlayingAppIfNeeded:(unsigned int)needed allowedToBeNowPlaying:(BOOL)playing canBeNowPlayingApp:(BOOL)app
{
  appCopy = app;
  playingCopy = playing;
  v21 = *MEMORY[0x1E69E9840];
  nowPlayingAppDisplayID = [(MXNowPlayingAppManager *)self nowPlayingAppDisplayID];
  defaultMusicApp = [+[MXSessionManager sharedInstance](MXSessionManager defaultMusicApp];
  v11 = [(NSString *)nowPlayingAppDisplayID isEqualToString:defaultMusicApp];
  v12 = v11;
  IsNowPlayingAppStackEnabled = MX_FeatureFlags_IsNowPlayingAppStackEnabled(v11, v13);
  if (IsNowPlayingAppStackEnabled)
  {
    IsNowPlayingAppStackEnabled = [-[MXNowPlayingAppManager copyTopOfNowPlayingAppStack](self "copyTopOfNowPlayingAppStack")];
    if (IsNowPlayingAppStackEnabled)
    {
      IsNowPlayingAppStackEnabled = [+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager nowPlayingAppStackSize];
      v16 = IsNowPlayingAppStackEnabled == 1;
    }

    else
    {
      v16 = 0;
    }

    v12 &= v16;
  }

  if (!needed || v12)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  else
  {
    if (needed == 3 && !playingCopy)
    {
      v17 = @"of new interruption style";
LABEL_22:
      [(MXNowPlayingAppManager *)self resetNowPlayingApp:v17];
      [(MXNowPlayingAppManager *)self writeNowPlayingAppInfoToDisk];
      return 1;
    }

    if (needed == 4 && !appCopy)
    {
      v17 = @"of canBeNowPlayingApp changed to false";
      goto LABEL_22;
    }

    if (needed == 2)
    {
      v17 = @"app went into background";
      goto LABEL_22;
    }

    v20 = MX_FeatureFlags_IsNowPlayingAppStackEnabled(IsNowPlayingAppStackEnabled, v15);
    result = 0;
    if (needed == 7 && v20)
    {
      v17 = @"Now Playing app stack is being popped";
      goto LABEL_22;
    }
  }

  return result;
}

- (BOOL)setIsNowPlayingApp:(int)app
{
  v3 = *&app;
  v14 = *MEMORY[0x1E69E9840];
  nowPlayingAppPID = [(MXNowPlayingAppManager *)self nowPlayingAppPID];
  if (nowPlayingAppPID != v3)
  {
    [(MXNowPlayingAppManager *)self setNowPlayingAppPID:0];
    v6 = [+[MXSessionManager sharedInstance](MXSessionManager copySessionEligibleForNowPlayingAppConsideration:"copySessionEligibleForNowPlayingAppConsideration:", v3];
    if (v6)
    {
      [(MXNowPlayingAppManager *)self setNowPlayingAppPID:v3];
      if (!-[NSString isEqualToString:](-[MXNowPlayingAppManager nowPlayingAppDisplayID](self, "nowPlayingAppDisplayID"), "isEqualToString:", [v6 displayID]))
      {
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v8 = -[MXNowPlayingAppManager setNowPlayingAppDisplayID:](self, "setNowPlayingAppDisplayID:", [v6 displayID]);
        if (MX_FeatureFlags_IsNowPlayingAppStackEnabled(v8, v9))
        {
          v10 = CMSUtility_CopyBundleID(v6);
          -[MXNowPlayingAppManager pushToNowPlayingAppStack:hostProcessAttributionBundleID:](+[MXNowPlayingAppManager sharedInstance](MXNowPlayingAppManager, "sharedInstance"), "pushToNowPlayingAppStack:hostProcessAttributionBundleID:", [v6 displayID], v10);
        }

        writeNowPlayingAppInfoToDisk = [(MXNowPlayingAppManager *)self writeNowPlayingAppInfoToDisk];
        if (CMSMDeviceState_SupportsMediaMultitasking(writeNowPlayingAppInfoToDisk, v12) && objc_msgSend_isActive(v6))
        {
          cmsBeginInterruptionGuts(v6, 0, 2);
        }
      }
    }
  }

  return nowPlayingAppPID != v3;
}

- (void)updateNowPlayingApp:(int)app session:(id)session reasonForUpdate:(unsigned int)update
{
  v20 = *MEMORY[0x1E69E9840];
  if (app)
  {
    v5 = *&update;
    v6 = *&app;
    if (![(MXNowPlayingAppManager *)self ignoreNowPlayingAppUpdates:*&app])
    {
      nowPlayingAppPID = [(MXNowPlayingAppManager *)self nowPlayingAppPID];
      v9 = objc_autoreleasePoolPush();
      v10 = [MXSystemController getCanBeNowPlayingAppForPID:v6];
      objc_autoreleasePoolPop(v9);
      if (!v10)
      {
        [+[MXSessionManager sharedInstance](MXSessionManager updateBadgeType:"updateBadgeType:matchingPID:" matchingPID:@"NotApplicable", v6];
        v11 = +[MXSessionManager sharedInstance];
        -[MXSessionManager updateSupportedOutputChannelLayouts:matchingPID:](v11, "updateSupportedOutputChannelLayouts:matchingPID:", [MEMORY[0x1E695DEC8] array], v6);
      }

      v12 = [+[MXSessionManager sharedInstance](MXSessionManager isPIDAllowedToBeNowPlayingApp:"isPIDAllowedToBeNowPlayingApp:", v6];
      if (!CMSNP_IsCurrentNowPlayingSessionAirPlayingLongFormMedia() || CMSUtility_IsSessionWithPIDAllowedToInterruptCurrentlyAirPlayingNowPlayingSession(v6) || nowPlayingAppPID == v6)
      {
        v13 = 0x1EE835000;
        if (dword_1EB75DE40)
        {
          v19 = nowPlayingAppPID;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          nowPlayingAppPID = v19;
          v13 = 0x1EE835000uLL;
        }

        if (v10 && v12 || nowPlayingAppPID != v6)
        {
          v16 = !v10 || !v12;
          if (nowPlayingAppPID == v6)
          {
            v16 = 1;
          }

          if ((v16 & 1) != 0 || !CMSUtility_SessionWithPIDIsPlaying(v6))
          {
            v17 = 0;
            goto LABEL_20;
          }

          v15 = [(MXNowPlayingAppManager *)self setIsNowPlayingApp:v6];
        }

        else
        {
          [(MXNowPlayingAppManager *)self setNowPlayingAppPID:0];
          v15 = [(MXNowPlayingAppManager *)self resetNowPlayingAppIfNeeded:v5 allowedToBeNowPlaying:v12 canBeNowPlayingApp:v10];
        }

        v17 = v15;
LABEL_20:
        [v13 + 2592 processNowPlayingAppPIDChangeIfNeeded:v17];
        if ([(MXNowPlayingAppManager *)self nowPlayingAppPID]== v6 && CMSUtility_SessionWithPIDIsPlaying(v6))
        {
          if (dword_1EB75DE40)
          {
            v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          cmsmUpdateInEarBasedPlaybackState(0, 0, 1);
        }
      }
    }
  }
}

- (unint64_t)nowPlayingAppStackSize
{
  [(NSLock *)self->mLock lock];
  v3 = [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack count];
  [(NSLock *)self->mLock unlock];
  return v3;
}

- (BOOL)doesNowPlayingAppStackContain:(id)contain
{
  v10 = *MEMORY[0x1E69E9840];
  if (contain)
  {
    [(NSLock *)self->mLock lock];
    v5 = [(NSMutableDictionary *)self->mNowPlayingAppHostProcessAttributionBundleID objectForKey:contain];
    if (v5)
    {
      containCopy = v5;
    }

    else
    {
      containCopy = contain;
    }

    v7 = [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack containsObject:containCopy];
    [(NSLock *)self->mLock unlock];
    return v7;
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }
}

- (void)pushToNowPlayingAppStack:(id)stack hostProcessAttributionBundleID:(id)d
{
  v38 = *MEMORY[0x1E69E9840];
  if (stack)
  {
    nowPlayingAppStackSize = [(MXNowPlayingAppManager *)self nowPlayingAppStackSize];
    [(NSLock *)self->mLock lock];
    [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack removeObject:stack];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    mNowPlayingAppHostProcessAttributionBundleID = self->mNowPlayingAppHostProcessAttributionBundleID;
    v9 = [(NSMutableDictionary *)mNowPlayingAppHostProcessAttributionBundleID countByEnumeratingWithState:&v20 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(mNowPlayingAppHostProcessAttributionBundleID);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          if ([stack isEqualToString:{-[NSMutableDictionary objectForKey:](self->mNowPlayingAppHostProcessAttributionBundleID, "objectForKey:", v13)}])
          {
            [(NSMutableDictionary *)self->mNowPlayingAppHostProcessAttributionBundleID removeObjectForKey:v13];
            goto LABEL_12;
          }
        }

        v10 = [(NSMutableDictionary *)mNowPlayingAppHostProcessAttributionBundleID countByEnumeratingWithState:&v20 objects:v36 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
    [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack addObject:stack];
    if (d)
    {
      [(NSMutableDictionary *)self->mNowPlayingAppHostProcessAttributionBundleID setObject:stack forKey:d];
    }

    [(NSLock *)self->mLock unlock];
    if (dword_1EB75DE40)
    {
      v25 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v15 = v25;
      v16 = type;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v17 = v15;
      }

      else
      {
        v17 = v15 & 0xFFFFFFFE;
      }

      if (v17)
      {
        nowPlayingAppStackSize2 = [(MXNowPlayingAppManager *)self nowPlayingAppStackSize];
        v26 = 136316162;
        v27 = "[MXNowPlayingAppManager pushToNowPlayingAppStack:hostProcessAttributionBundleID:]";
        v28 = 2114;
        stackCopy = stack;
        v30 = 2114;
        dCopy = d;
        v32 = 2048;
        v33 = nowPlayingAppStackSize;
        v34 = 2048;
        v35 = nowPlayingAppStackSize2;
        _os_log_send_and_compose_impl(v17, 0, v37, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v16, "-MXNowPlayingAppManager- %s: Pushing displayID='%{public}@' hostProcessAttributionBundleID='%{public}@' to NowPlayingAppStack, existing size = %lu, new size = %lu", &v26, 52);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ([(MXNowPlayingAppManager *)self nowPlayingAppStackSize]>= 6)
    {
      [(MXNowPlayingAppManager *)self popNowPlayingAppStackOldestDisplayID];
    }

    [(MXNowPlayingAppManager *)self writeNowPlayingAppInfoToDisk];
  }

  else
  {
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)popNowPlayingAppStack
{
  v18 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->mLock lock];
  if (dword_1EB75DE40)
  {
    v16 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(NSMutableArray *)self->mNowPlayingAppDisplayIDStack count])
  {
    lastObject = [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack lastObject];
    [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack removeObject:lastObject];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    mNowPlayingAppHostProcessAttributionBundleID = self->mNowPlayingAppHostProcessAttributionBundleID;
    v6 = [(NSMutableDictionary *)mNowPlayingAppHostProcessAttributionBundleID countByEnumeratingWithState:&v11 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(mNowPlayingAppHostProcessAttributionBundleID);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          if ([lastObject isEqualToString:{-[NSMutableDictionary objectForKey:](self->mNowPlayingAppHostProcessAttributionBundleID, "objectForKey:", v10)}])
          {
            [(NSMutableDictionary *)self->mNowPlayingAppHostProcessAttributionBundleID removeObjectForKey:v10];
            goto LABEL_14;
          }
        }

        v7 = [(NSMutableDictionary *)mNowPlayingAppHostProcessAttributionBundleID countByEnumeratingWithState:&v11 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_14:
  if (![(NSMutableArray *)self->mNowPlayingAppDisplayIDStack count])
  {
    -[NSMutableArray addObject:](self->mNowPlayingAppDisplayIDStack, "addObject:", [+[MXSessionManager sharedInstance](MXSessionManager defaultMusicApp]);
  }

  [(MXNowPlayingAppManager *)self setNowPlayingAppDisplayID:[(NSMutableArray *)self->mNowPlayingAppDisplayIDStack lastObject]];
  [(MXNowPlayingAppManager *)self setNowPlayingAppPID:0];
  [(MXNowPlayingAppManager *)self setNowPlayingAppStopTime:0];
  [(NSLock *)self->mLock unlock];
  [(MXNowPlayingAppManager *)self writeNowPlayingAppInfoToDisk];
}

- (void)removeFromNowPlayingAppStack:(id)stack
{
  v12 = *MEMORY[0x1E69E9840];
  if (stack)
  {
    [(NSLock *)self->mLock lock];
    lastObject = [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack lastObject];
    v6 = [(NSMutableDictionary *)self->mNowPlayingAppHostProcessAttributionBundleID objectForKey:stack];
    if (v6)
    {
      stackCopy = v6;
    }

    else
    {
      stackCopy = stack;
    }

    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack removeObject:stackCopy];
    [(NSMutableDictionary *)self->mNowPlayingAppHostProcessAttributionBundleID removeObjectForKey:stack];
    if (![(NSMutableArray *)self->mNowPlayingAppDisplayIDStack count])
    {
      -[NSMutableArray addObject:](self->mNowPlayingAppDisplayIDStack, "addObject:", [+[MXSessionManager sharedInstance](MXSessionManager defaultMusicApp]);
    }

    lastObject2 = [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack lastObject];
    v11 = [lastObject2 isEqualToString:lastObject];
    if ((v11 & 1) == 0)
    {
      [(MXNowPlayingAppManager *)self setNowPlayingAppDisplayID:lastObject2];
      [(MXNowPlayingAppManager *)self setNowPlayingAppPID:0];
      [(MXNowPlayingAppManager *)self setNowPlayingAppStopTime:0];
    }

    [(NSLock *)self->mLock unlock];
    [MXNowPlayingAppManager processNowPlayingAppPIDChangeIfNeeded:v11 ^ 1u];
    [(MXNowPlayingAppManager *)self writeNowPlayingAppInfoToDisk];
  }

  else
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)populateNowPlayingAppStack:(id)stack hostProcessAttributionBundleID:(id)d
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [stack countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(stack);
        }

        -[MXNowPlayingAppManager pushToNowPlayingAppStack:hostProcessAttributionBundleID:](self, "pushToNowPlayingAppStack:hostProcessAttributionBundleID:", *(*(&v11 + 1) + 8 * v10), [d objectForKey:*(*(&v11 + 1) + 8 * v10)]);
        ++v10;
      }

      while (v8 != v10);
      v8 = [stack countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if (![(MXNowPlayingAppManager *)self nowPlayingAppStackSize])
  {
    -[MXNowPlayingAppManager pushToNowPlayingAppStack:hostProcessAttributionBundleID:](self, "pushToNowPlayingAppStack:hostProcessAttributionBundleID:", [+[MXSessionManager sharedInstance](MXSessionManager defaultMusicApp], 0);
  }

  [(MXNowPlayingAppManager *)self writeNowPlayingAppInfoToDisk];
}

- (void)popNowPlayingAppStackOldestDisplayID
{
  [(NSLock *)self->mLock lock];
  v3 = [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack objectAtIndex:0];
  [(NSMutableDictionary *)self->mNowPlayingAppHostProcessAttributionBundleID removeObjectForKey:v3];
  [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack removeObject:v3];
  mLock = self->mLock;

  [(NSLock *)mLock unlock];
}

- (void)saveNowPlayingAppStackToDisk
{
  v4 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->mLock lock];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  MXCFPreferencesSetAndSynchronizeUserPreference(@"nowPlayingAppDisplayIDStack", self->mNowPlayingAppDisplayIDStack);
  MXCFPreferencesSetAndSynchronizeUserPreference(@"nowPlayingAppHostProcessAttributionBundleID", self->mNowPlayingAppHostProcessAttributionBundleID);
  [(NSLock *)self->mLock unlock];
}

- (void)clearNowPlayingAppStack
{
  [(NSLock *)self->mLock lock];
  [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack removeAllObjects];
  [(NSMutableDictionary *)self->mNowPlayingAppHostProcessAttributionBundleID removeAllObjects];
  mLock = self->mLock;

  [(NSLock *)mLock unlock];
}

- (void)updateNowPlayingAppStackFromDisk
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = MXCFPreferencesCopyPreference(@"nowPlayingAppDisplayIDStack");
  v5 = MXCFPreferencesCopyPreference(@"nowPlayingAppHostProcessAttributionBundleID");
  [(MXNowPlayingAppManager *)self clearNowPlayingAppStack];
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (!v5)
    {
LABEL_7:
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  [(MXNowPlayingAppManager *)self populateNowPlayingAppStack:v4 hostProcessAttributionBundleID:v5];
}

- (void)dumpNowPlayingAppInfo
{
  [(NSLock *)self->mLock lock];
  v3 = [(NSMutableArray *)self->mNowPlayingAppDisplayIDStack copy];
  v4 = [(NSMutableDictionary *)self->mNowPlayingAppHostProcessAttributionBundleID copy];
  [(NSLock *)self->mLock unlock];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (dword_1EB75DE40)
      {
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  CMSMDebugUtility_PrintCollection(v3);
  if (dword_1EB75DE40)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMSMDebugUtility_PrintDictionary(v4);
  if (dword_1EB75DE40)
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

@end