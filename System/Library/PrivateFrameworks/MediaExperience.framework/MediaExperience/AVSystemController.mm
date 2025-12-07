@interface AVSystemController
+ (id)sharedInstance;
- (AVSystemController)init;
- (BOOL)addRemoteDeviceID:(id)d;
- (BOOL)changeActiveCategoryVolume:(BOOL)volume fallbackCategory:(id)category resultVolume:(float *)resultVolume affectedCategory:(id *)affectedCategory;
- (BOOL)changeActiveCategoryVolume:(BOOL)volume forRoute:(id)route andDeviceIdentifier:(id)identifier;
- (BOOL)changeActiveCategoryVolumeBy:(float)by fallbackCategory:(id)category resultVolume:(float *)volume affectedCategory:(id *)affectedCategory;
- (BOOL)changeActiveCategoryVolumeBy:(float)by forRoute:(id)route andDeviceIdentifier:(id)identifier;
- (BOOL)changeVolume:(BOOL)volume forCategory:(id)category mode:(id)mode;
- (BOOL)changeVolumeBy:(float)by forCategory:(id)category;
- (BOOL)changeVolumeForRoute:(BOOL)route forCategory:(id)category mode:(id)mode route:(id)a6 deviceIdentifier:(id)identifier andRouteSubtype:(id)subtype;
- (BOOL)changeVolumeForRouteBy:(float)by forCategory:(id)category mode:(id)mode route:(id)route deviceIdentifier:(id)identifier andRouteSubtype:(id)subtype;
- (BOOL)currentRouteHasVolumeControl;
- (BOOL)getActiveCategoryMuted:(BOOL *)muted;
- (BOOL)getActiveCategoryMuted:(BOOL *)muted forRoute:(id)route andDeviceIdentifier:(id)identifier;
- (BOOL)getActiveCategoryVolume:(float *)volume andName:(id *)name fallbackCategory:(id)category;
- (BOOL)getActiveCategoryVolume:(float *)volume andName:(id *)name forRoute:(id)route andDeviceIdentifier:(id)identifier;
- (BOOL)getSilentMode;
- (BOOL)getSilentMode:(BOOL *)mode error:(id *)error;
- (BOOL)getVibeIntensity:(float *)intensity;
- (BOOL)getVolume:(float *)volume forCategory:(id)category mode:(id)mode;
- (BOOL)getVolumeForRoute:(float *)route forCategory:(id)category mode:(id)mode route:(id)a6 deviceIdentifier:(id)identifier andRouteSubtype:(id)subtype;
- (BOOL)hasRouteSharingPolicyLongFormVideo:(id)video;
- (BOOL)overrideToPartnerRoute;
- (BOOL)remoteDeviceControlIsAllowed:(unsigned int *)allowed;
- (BOOL)removeRemoteDeviceID:(id)d;
- (BOOL)setActiveCategoryVolumeTo:(float)to fallbackCategory:(id)category resultVolume:(float *)volume affectedCategory:(id *)affectedCategory;
- (BOOL)setActiveCategoryVolumeTo:(float)to forRoute:(id)route andDeviceIdentifier:(id)identifier;
- (BOOL)setBTHFPRoute:(id)route availableForVoicePrompts:(BOOL)prompts;
- (BOOL)setPickedRouteWithPassword:(id)password withPassword:(id)withPassword;
- (BOOL)setSilentMode:(BOOL)mode untilTime:(id)time reason:(id)reason clientType:(unsigned int)type;
- (BOOL)setVibeIntensityTo:(float)to;
- (BOOL)setVolumeForRouteTo:(float)to forCategory:(id)category mode:(id)mode route:(id)route deviceIdentifier:(id)identifier andRouteSubtype:(id)subtype;
- (BOOL)setVolumeTo:(float)to forCategory:(id)category mode:(id)mode;
- (BOOL)setVolumeTo:(float)to forCategory:(id)category retainFullMute:(BOOL)mute;
- (BOOL)shouldClientWithAudioScore:(int)score hijackRoute:(id)route hijackDeniedReason:(id *)reason;
- (BOOL)toggleActiveCategoryMuted;
- (BOOL)toggleActiveCategoryMutedForRoute:(id)route andDeviceIdentifier:(id)identifier;
- (id)errorWithCode:(int)code description:(id)description;
- (id)pickableRoutesForCategory:(id)category;
- (id)pickableRoutesForCategory:(id)category andMode:(id)mode;
- (id)routeForCategory:(id)category;
- (id)topOfNowPlayingAppStack;
- (id)volumeCategoryForAudioCategory:(id)category;
- (int)allowAppToInitiateRecordingTemporarily:(id)temporarily;
- (int)allowAppsToInitiatePlayback:(id)playback clientType:(id)type isTemporary:(BOOL)temporary;
- (int)clearUplinkMutedCache;
- (int)getAudioSessionID:(unsigned int *)d forAttributedPID:(int)iD;
- (int)getDuckScalarForVoiceOver:(float *)over;
- (int)getInputMute:(id *)mute outMuteValue:(BOOL *)value;
- (int)getVolume:(float *)volume category:(id)category mode:(id)mode route:(id)route deviceIdentifier:(id)identifier routeSubtype:(id)subtype;
- (int)getVolumeButtonDelta:(id)delta outVolumeDelta:(float *)volumeDelta;
- (int)grantMediaEndowmentWithEnvironmentID:(id)d endowmentPayload:(id)payload;
- (int)popNowPlayingAppStack;
- (int)revokeMediaEndowmentWithEnvironmentID:(id)d;
- (int)setDuckScalarForVoiceOver:(float)over;
- (int)setInputMute:(id *)mute muteValue:(BOOL)value;
- (int)setVolume:(float)volume category:(id)category mode:(id)mode route:(id)route deviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpDuration:(float)duration rampDownDuration:(float)self0;
- (int)setVolume:(float)volume category:(id)category mode:(id)mode route:(id)route deviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpDuration:(float)duration rampDownDuration:(float)self0 retainFullMute:(BOOL)self1;
- (int)setVolume:(float)volume category:(id)category mode:(id)mode route:(id)route deviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpwardDuration:(id)duration rampDownwardDuration:(id)self0;
- (int)toggleInputMute;
- (int)volumeCategoryAndMode:(id)mode mode:(id)a4 outCategory:(id *)category outMode:(id *)outMode;
- (void)dealloc;
- (void)handleServerDied;
- (void)postEffectiveVolumeNotification:(id)notification;
- (void)postFullMuteDidChangeNotification:(id)notification;
- (void)releaseSharedInstance;
@end

@implementation AVSystemController

+ (id)sharedInstance
{
  v8 = *MEMORY[0x1E69E9840];
  if (sharedInstance_onceToken_7 != -1)
  {
    +[AVSystemController sharedInstance];
  }

  [gSharedInstanceLock lock];
  v2 = gSharedInstance;
  if (!gSharedInstance)
  {
    v5 = 1;
    do
    {
      v2 = objc_alloc_init(AVSystemController);
      gSharedInstance = v2;
      if (v2)
      {
        break;
      }

      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v2 = gSharedInstance;
      if (gSharedInstance)
      {
        break;
      }
    }

    while (v5++ < 3);
  }

  v3 = v2;
  [gSharedInstanceLock unlock];
  return gSharedInstance;
}

id __36__AVSystemController_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MEMORY[0x1E696AE68]);
  gSharedInstanceLock = result;
  return result;
}

- (AVSystemController)init
{
  [(AVSystemControllerCommon *)self setSelfWeak:self];
  v6.receiver = self;
  v6.super_class = AVSystemController;
  v3 = [(AVSystemControllerCommon *)&v6 init];
  v4 = v3;
  if (v3)
  {
    v3->mCategory = 0;
    v3->mFullMute = 0;
    v3->mVolume = 0.0;
    v3->mRemoteDeviceIDs = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4->mRemoteDeviceIDsLock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v4->mFigController = [(AVSystemControllerCommon *)v4 copyFigController];
  }

  return v4;
}

- (BOOL)currentRouteHasVolumeControl
{
  cf = 0;
  mFigController = self->mFigController;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 1;
  }

  v4 = v3(mFigController, @"CurrentRouteHasVolumeControl", *MEMORY[0x1E695E480], &cf);
  v5 = cf;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = cf == 0;
  }

  if (!v6)
  {
    v7 = CFGetTypeID(cf);
    TypeID = CFBooleanGetTypeID();
    v5 = cf;
    if (v7 == TypeID)
    {
      v9 = CFBooleanGetValue(cf) != 0;
      v5 = cf;
      if (!cf)
      {
        return v9;
      }

      goto LABEL_11;
    }
  }

  v9 = 1;
  if (v5)
  {
LABEL_11:
    CFRelease(v5);
  }

  return v9;
}

- (id)errorWithCode:(int)code description:(id)description
{
  descriptionCopy = description;
  if (description)
  {
    v6 = objc_alloc(MEMORY[0x1E695DF20]);
    descriptionCopy = [v6 initWithObjectsAndKeys:{descriptionCopy, *MEMORY[0x1E696A578], 0}];
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:code userInfo:descriptionCopy];

  return v7;
}

- (void)handleServerDied
{
  [(AVSystemController(InternalUse) *)self releaseSharedInstance];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = AVSystemController_ServerConnectionDiedNotification;

  [defaultCenter postNotificationName:v4 object:self];
}

- (void)postEffectiveVolumeNotification:(id)notification
{
  v23 = 1065353216;
  v5 = [notification objectForKey:@"Volume"];
  v6 = [notification objectForKey:@"AudioCategory"];
  v24 = v6;
  v7 = [notification objectForKey:@"Reason"];
  v8 = [notification objectForKey:@"SilenceVolumeHUD"];
  v9 = [notification objectForKey:@"ActiveAudioCategory"];
  if (!v8)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:0];
  }

  mCategory = self->mCategory;
  if (!mCategory)
  {
    if (v6)
    {
      if (v5)
      {
        [v5 floatValue];
LABEL_16:
        self->mVolume = v13;
        v14 = v24;
        self->mCategory = v24;
        goto LABEL_17;
      }

      [(AVSystemController *)self getVolume:&v23 forCategory:v6 mode:0];
    }

    else
    {
      [(AVSystemController *)self getActiveCategoryVolume:&v23 andName:&v24];
    }

    v13 = *&v23;
    goto LABEL_16;
  }

  if (v6)
  {

    v11 = v6;
    self->mCategory = v6;
  }

  if (v5)
  {
    [v5 floatValue];
  }

  else
  {
    [(AVSystemController *)self getActiveCategoryVolume:&v23 andName:&v24];
    v12 = *&v23;
  }

  self->mVolume = v12;
LABEL_17:
  v15 = self->mCategory;
  mVolume = 0.0;
  if (!self->mFullMute)
  {
    mVolume = self->mVolume;
  }

  v23 = LODWORD(mVolume);
  if (v7)
  {
    v17 = v7;
  }

  else
  {
    v17 = @"FullMuteChange";
  }

  v18 = objc_alloc(MEMORY[0x1E696AD98]);
  LODWORD(v19) = v23;
  v20 = [v18 initWithFloat:v19];
  v21 = objc_alloc(MEMORY[0x1E695DF20]);
  v22 = [v21 initWithObjectsAndKeys:{v15, AVSystemController_EffectiveVolumeNotificationParameter_Category, v20, AVSystemController_EffectiveVolumeNotificationParameter_Volume, v17, AVSystemController_EffectiveVolumeNotificationParameter_VolumeChangeReason, v8, AVSystemController_EffectiveVolumeNotificationParameter_SilenceVolumeHUD, v9, AVSystemController_EffectiveVolumeNotificationParameter_ActiveAudioCategory, 0}];
  [(AVSystemControllerCommon *)AVSystemController postNotificationOnMainQueue:v22 notification:AVSystemController_EffectiveVolumeDidChangeNotification object:self];
}

- (void)postFullMuteDidChangeNotification:(id)notification
{
  v4 = [notification objectForKey:@"FullMuted"];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = *MEMORY[0x1E695E4C0];
  }

  v6 = objc_alloc(MEMORY[0x1E695DF20]);
  v7 = [v6 initWithObjectsAndKeys:{v5, AVSystemController_AudioFullMutedNotificationParameter, 0}];
  self->mFullMute = CFBooleanGetValue(v5) != 0;
  [(AVSystemControllerCommon *)AVSystemController postNotificationOnMainQueue:v7 notification:AVSystemController_FullMuteDidChangeNotification object:self];
}

- (void)dealloc
{
  mCategory = self->mCategory;
  if (mCategory)
  {
    CFRelease(mCategory);
  }

  self->mRemoteDeviceIDs = 0;
  self->mRemoteDeviceIDsLock = 0;
  mFigController = self->mFigController;
  if (mFigController)
  {
    CFRelease(mFigController);
  }

  v5.receiver = self;
  v5.super_class = AVSystemController;
  [(AVSystemControllerCommon *)&v5 dealloc];
}

- (void)releaseSharedInstance
{
  [gSharedInstanceLock lock];
  if (gSharedInstance == self)
  {
    v3 = gSharedInstance;
    gSharedInstance = 0;
  }

  v4 = gSharedInstanceLock;

  [v4 unlock];
}

- (BOOL)changeActiveCategoryVolumeBy:(float)by fallbackCategory:(id)category resultVolume:(float *)volume affectedCategory:(id *)affectedCategory
{
  if (affectedCategory)
  {
    *affectedCategory = 0;
  }

  mFigController = self->mFigController;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v10)
  {
    v11 = v10(mFigController, 1, 0, 0, 0, 0, 0, volume, by, 0.0, 0.0, 0, affectedCategory, 0, 0) == 0;
    if (!affectedCategory)
    {
      return v11;
    }

    goto LABEL_7;
  }

  v11 = 0;
  if (affectedCategory)
  {
LABEL_7:
    v12 = *affectedCategory;
  }

  return v11;
}

- (BOOL)changeActiveCategoryVolume:(BOOL)volume fallbackCategory:(id)category resultVolume:(float *)resultVolume affectedCategory:(id *)affectedCategory
{
  if (affectedCategory)
  {
    *affectedCategory = 0;
  }

  if (volume)
  {
    v8 = 0.0625;
  }

  else
  {
    v8 = -0.0625;
  }

  mFigController = self->mFigController;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v10)
  {
    v11 = v10(mFigController, 1, 0, 0, 0, 0, 0, resultVolume, v8, 0.0, 0.0, 0, affectedCategory, 0, 0) == 0;
    if (!affectedCategory)
    {
      return v11;
    }

    goto LABEL_10;
  }

  v11 = 0;
  if (affectedCategory)
  {
LABEL_10:
    v12 = *affectedCategory;
  }

  return v11;
}

- (BOOL)setVibeIntensityTo:(float)to
{
  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v6 = to;
  v7 = [v5 initWithFloat:v6];
  mFigController = self->mFigController;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v9)
  {
    v10 = v9(mFigController, @"VibeIntensity", v7) == 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)getVibeIntensity:(float *)intensity
{
  v10 = 0;
  mFigController = self->mFigController;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = v5(mFigController, @"VibeIntensity", *MEMORY[0x1E695E480], &v10) == 0;
    v7 = v10;
    if (!intensity)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 0;
  v6 = 0;
  if (intensity)
  {
LABEL_5:
    [v7 floatValue];
    *intensity = v8;
    v7 = v10;
  }

LABEL_6:

  return v6;
}

- (BOOL)setActiveCategoryVolumeTo:(float)to fallbackCategory:(id)category resultVolume:(float *)volume affectedCategory:(id *)affectedCategory
{
  if (affectedCategory)
  {
    *affectedCategory = 0;
  }

  mFigController = self->mFigController;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v11)
  {
    v12 = v11(mFigController, 2, category, 0, 0, 0, 0, volume, to, 0.0, 0.0, 0, affectedCategory, 0, 0) == 0;
    if (!affectedCategory)
    {
      return v12;
    }

    goto LABEL_7;
  }

  v12 = 0;
  if (affectedCategory)
  {
LABEL_7:
    v13 = *affectedCategory;
  }

  return v12;
}

- (BOOL)getActiveCategoryVolume:(float *)volume andName:(id *)name fallbackCategory:(id)category
{
  if (name)
  {
    *name = 0;
  }

  mFigController = self->mFigController;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v9)
  {
    v10 = v9(mFigController, 3, category, 0, 0, 0, 0, volume, 0.0, 0.0, 0.0, 0, name, 0, 0) == 0;
    if (!name)
    {
      return v10;
    }

    goto LABEL_7;
  }

  v10 = 0;
  if (name)
  {
LABEL_7:
    v11 = *name;
  }

  return v10;
}

- (BOOL)changeActiveCategoryVolumeBy:(float)by forRoute:(id)route andDeviceIdentifier:(id)identifier
{
  mFigController = self->mFigController;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  return v9 && v9(mFigController, 4, 0, 0, route, identifier, 0, 0, by, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)changeActiveCategoryVolume:(BOOL)volume forRoute:(id)route andDeviceIdentifier:(id)identifier
{
  if (volume)
  {
    v7 = 0.0625;
  }

  else
  {
    v7 = -0.0625;
  }

  mFigController = self->mFigController;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  return v9 && v9(mFigController, 4, 0, 0, route, identifier, 0, 0, v7, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)setActiveCategoryVolumeTo:(float)to forRoute:(id)route andDeviceIdentifier:(id)identifier
{
  mFigController = self->mFigController;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  return v9 && v9(mFigController, 5, 0, 0, route, identifier, 0, 0, to, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)getActiveCategoryVolume:(float *)volume andName:(id *)name forRoute:(id)route andDeviceIdentifier:(id)identifier
{
  mFigController = self->mFigController;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  return v10 && v10(mFigController, 6, 0, 0, route, identifier, 0, volume, 0.0, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)changeVolumeForRouteBy:(float)by forCategory:(id)category mode:(id)mode route:(id)route deviceIdentifier:(id)identifier andRouteSubtype:(id)subtype
{
  mFigController = self->mFigController;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  return v14 && v14(mFigController, 11, category, 0, route, identifier, subtype, 0, by, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)changeVolumeForRoute:(BOOL)route forCategory:(id)category mode:(id)mode route:(id)a6 deviceIdentifier:(id)identifier andRouteSubtype:(id)subtype
{
  if (route)
  {
    v12 = 0.0625;
  }

  else
  {
    v12 = -0.0625;
  }

  mFigController = self->mFigController;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  return v14 && v14(mFigController, 11, category, 0, a6, identifier, subtype, 0, v12, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)setVolumeForRouteTo:(float)to forCategory:(id)category mode:(id)mode route:(id)route deviceIdentifier:(id)identifier andRouteSubtype:(id)subtype
{
  mFigController = self->mFigController;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  return v14 && v14(mFigController, 12, category, 0, route, identifier, subtype, 0, to, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (int)setVolume:(float)volume category:(id)category mode:(id)mode route:(id)route deviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpwardDuration:(id)duration rampDownwardDuration:(id)self0
{
  mFigController = self->mFigController;
  [duration floatValue];
  v17 = v16;
  [downwardDuration floatValue];
  v19 = v18;
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v20)
  {
    return v20(mFigController, 12, category, 0, route, identifier, subtype, 0, volume, v17, v19, 0, 0, 0, 0);
  }

  else
  {
    return -12782;
  }
}

- (int)setVolume:(float)volume category:(id)category mode:(id)mode route:(id)route deviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpDuration:(float)duration rampDownDuration:(float)self0
{
  result = -12981;
  if (duration >= 0.0 && downDuration >= 0.0)
  {
    mFigController = self->mFigController;
    v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v20)
    {
      return v20(mFigController, 12, category, 0, route, identifier, subtype, 0, volume, duration, downDuration, 0, 0, 0, 0);
    }

    else
    {
      return -12782;
    }
  }

  return result;
}

- (int)setVolume:(float)volume category:(id)category mode:(id)mode route:(id)route deviceIdentifier:(id)identifier routeSubtype:(id)subtype rampUpDuration:(float)duration rampDownDuration:(float)self0 retainFullMute:(BOOL)self1
{
  result = -12981;
  if (duration >= 0.0 && downDuration >= 0.0)
  {
    mFigController = self->mFigController;
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v22)
    {
      return v22(mFigController, 12, category, 0, route, identifier, subtype, 0, volume, duration, downDuration, 0, 0, 0, mute);
    }

    else
    {
      return -12782;
    }
  }

  return result;
}

- (BOOL)getVolumeForRoute:(float *)route forCategory:(id)category mode:(id)mode route:(id)a6 deviceIdentifier:(id)identifier andRouteSubtype:(id)subtype
{
  mFigController = self->mFigController;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  return v14 && v14(mFigController, 13, category, 0, a6, identifier, subtype, route, 0.0, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (int)getVolume:(float *)volume category:(id)category mode:(id)mode route:(id)route deviceIdentifier:(id)identifier routeSubtype:(id)subtype
{
  mFigController = self->mFigController;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v14)
  {
    return v14(mFigController, 13, category, 0, route, identifier, subtype, volume, 0.0, 0.0, 0.0, 0, 0, 0, 0);
  }

  else
  {
    return -12782;
  }
}

- (int)volumeCategoryAndMode:(id)mode mode:(id)a4 outCategory:(id *)category outMode:(id *)outMode
{
  v20[22] = *MEMORY[0x1E69E9840];
  v6 = -12980;
  if (category && outMode)
  {
    v19 = 0;
    v20[0] = 0;
    mFigController = self->mFigController;
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v12)
    {
      v6 = v12(mFigController, mode, a4, v20, &v19);
      if (!v6)
      {
        v14 = v19;
        v13 = v20[0];
        *category = v20[0];
        *outMode = v14;
        v15 = v13;
        v16 = v19;
        return v6;
      }
    }

    else
    {
      v6 = -12782;
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v6;
}

- (int)setDuckScalarForVoiceOver:(float)over
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v6 = over;
  v7 = [v5 initWithFloat:v6];
  mFigController = self->mFigController;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v9)
  {
    v10 = v9(mFigController, @"DuckScalarForVoiceOver", v7);
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = -12782;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_6:

  return v10;
}

- (int)getDuckScalarForVoiceOver:(float *)over
{
  v10[22] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  mFigController = self->mFigController;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    v6 = -12782;
    goto LABEL_6;
  }

  v6 = v5(mFigController, @"DuckScalarForVoiceOver", *MEMORY[0x1E695E480], v10);
  if (v6)
  {
LABEL_6:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_7;
  }

  if (over)
  {
    [v10[0] floatValue];
    v6 = 0;
    *over = v7;
  }

  else
  {
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (int)popNowPlayingAppStack
{
  v7 = *MEMORY[0x1E69E9840];
  mFigController = self->mFigController;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v3)
  {
    v4 = v3(mFigController, @"PopNowPlayingAppStack", 0);
    if (!v4)
    {
      return v4;
    }
  }

  else
  {
    v4 = -12782;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return v4;
}

- (id)topOfNowPlayingAppStack
{
  v7[22] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  mFigController = self->mFigController;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3 || v3(mFigController, @"TopOfNowPlayingAppStackDisplayID", *MEMORY[0x1E695E480], v7))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = v7[0];
  return v7[0];
}

- (BOOL)toggleActiveCategoryMuted
{
  mFigController = self->mFigController;
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  return v3 && v3(mFigController, 7, 0, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)toggleActiveCategoryMutedForRoute:(id)route andDeviceIdentifier:(id)identifier
{
  mFigController = self->mFigController;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  return v7 && v7(mFigController, 9, 0, 0, route, identifier, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)getActiveCategoryMuted:(BOOL *)muted
{
  HIBYTE(v7) = 0;
  mFigController = self->mFigController;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v5)
  {
    return 0;
  }

  LOBYTE(v7) = 0;
  if (v5(mFigController, 8, 0, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0, &v7 + 7, 0, 0, v7))
  {
    return 0;
  }

  *muted = HIBYTE(v7) != 0;
  return 1;
}

- (BOOL)getActiveCategoryMuted:(BOOL *)muted forRoute:(id)route andDeviceIdentifier:(id)identifier
{
  HIBYTE(v11) = 0;
  mFigController = self->mFigController;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v9)
  {
    return 0;
  }

  LOBYTE(v11) = 0;
  if (v9(mFigController, 10, 0, 0, route, identifier, 0, 0, 0.0, 0.0, 0.0, &v11 + 7, 0, 0, v11))
  {
    return 0;
  }

  *muted = HIBYTE(v11) != 0;
  return 1;
}

- (BOOL)changeVolumeBy:(float)by forCategory:(id)category
{
  mFigController = self->mFigController;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  return v7 && v7(mFigController, 11, category, 0, 0, 0, 0, 0, by, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)changeVolume:(BOOL)volume forCategory:(id)category mode:(id)mode
{
  if (volume)
  {
    v7 = 0.0625;
  }

  else
  {
    v7 = -0.0625;
  }

  mFigController = self->mFigController;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  return v9 && v9(mFigController, 11, category, mode, 0, 0, 0, 0, v7, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)setVolumeTo:(float)to forCategory:(id)category retainFullMute:(BOOL)mute
{
  mFigController = self->mFigController;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  return v9 && v9(mFigController, 12, category, 0, 0, 0, 0, 0, to, 0.0, 0.0, 0, 0, 0, mute) == 0;
}

- (BOOL)setVolumeTo:(float)to forCategory:(id)category mode:(id)mode
{
  mFigController = self->mFigController;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  return v9 && v9(mFigController, 12, category, mode, 0, 0, 0, 0, to, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)setBTHFPRoute:(id)route availableForVoicePrompts:(BOOL)prompts
{
  promptsCopy = prompts;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = v7;
  if (route)
  {
    [v7 addEntriesFromDictionary:route];
    [v8 removeObjectForKey:@"BTDetails_IsAvailableForVoicePrompts"];
    [v8 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", promptsCopy), @"BTDetails_IsAvailableForVoicePrompts"}];
    mFigController = self->mFigController;
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v10)
    {
      v11 = v10(mFigController, @"AvailableForVoicePrompts", v8) == 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)setPickedRouteWithPassword:(id)password withPassword:(id)withPassword
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = v7;
  if (password)
  {
    [v7 addEntriesFromDictionary:password];
    [v8 setObject:withPassword forKey:@"PortPassword"];
    mFigController = self->mFigController;
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v10)
    {
      v11 = v10(mFigController, @"PickedRouteWithPassword", v8) == 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)getVolume:(float *)volume forCategory:(id)category mode:(id)mode
{
  mFigController = self->mFigController;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  return v9 && v9(mFigController, 13, category, mode, 0, 0, 0, volume, 0.0, 0.0, 0.0, 0, 0, 0, 0) == 0;
}

- (BOOL)setSilentMode:(BOOL)mode untilTime:(id)time reason:(id)reason clientType:(unsigned int)type
{
  v6 = *&type;
  modeCopy = mode;
  v14 = *MEMORY[0x1E69E9840];
  mFigController = self->mFigController;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v11 && !v11(mFigController, modeCopy, time, reason, v6))
  {
    return 1;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return 0;
}

- (BOOL)getSilentMode
{
  v2 = [(AVSystemControllerCommon *)self attributeForKey:AVSystemController_SilentModeEnabledAttribute];

  return [v2 BOOLValue];
}

- (BOOL)getSilentMode:(BOOL *)mode error:(id *)error
{
  v12 = 0;
  mFigController = self->mFigController;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    v10 = 0;
    v9 = 4294954514;
    if (!mode)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = v8(mFigController, @"SilentModeEnabled", *MEMORY[0x1E695E480], &v12);
  v10 = v12;
  if (mode)
  {
LABEL_5:
    *mode = [v10 BOOLValue];
    v10 = v12;
  }

LABEL_6:

  if (error)
  {
    *error = -[AVSystemController errorWithCode:description:](self, "errorWithCode:description:", v9, [MEMORY[0x1E696AEC0] stringWithFormat:@"Error querying SilentModeEnabled with err = %d", v9]);
  }

  return v9 == 0;
}

- (id)routeForCategory:(id)category
{
  v9 = 0;
  mFigController = self->mFigController;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v5)
  {
    v5(mFigController, category, &v9, 0);
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  return v9;
}

- (id)volumeCategoryForAudioCategory:(id)category
{
  if (volumeCategoryForAudioCategory__onceToken != -1)
  {
    [AVSystemController volumeCategoryForAudioCategory:];
  }

  if (!category)
  {
    category = @"Audio/Video";
  }

  [volumeCategoryForAudioCategory__volumeCategoryForAudioCategoryCacheLock lock];
  v8 = [volumeCategoryForAudioCategory__volumeCategoryForAudioCategoryCache valueForKey:category];
  [volumeCategoryForAudioCategory__volumeCategoryForAudioCategoryCacheLock unlock];
  if (!v8)
  {
    mFigController = self->mFigController;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v7)
    {
      if (!v7(mFigController, category, 0, &v8, 0))
      {
        [volumeCategoryForAudioCategory__volumeCategoryForAudioCategoryCacheLock lock];
        [volumeCategoryForAudioCategory__volumeCategoryForAudioCategoryCache setValue:v8 forKey:category];
        [volumeCategoryForAudioCategory__volumeCategoryForAudioCategoryCacheLock unlock];
      }
    }
  }

  return v8;
}

id __53__AVSystemController_volumeCategoryForAudioCategory___block_invoke()
{
  volumeCategoryForAudioCategory__volumeCategoryForAudioCategoryCache = objc_alloc_init(MEMORY[0x1E695DF90]);
  result = objc_alloc_init(MEMORY[0x1E696AD10]);
  volumeCategoryForAudioCategory__volumeCategoryForAudioCategoryCacheLock = result;
  return result;
}

- (int)toggleInputMute
{
  mFigController = self->mFigController;
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v3)
  {
    return -12782;
  }

  return v3(mFigController);
}

- (int)setInputMute:(id *)mute muteValue:(BOOL)value
{
  valueCopy = value;
  v12 = *MEMORY[0x1E69E9840];
  mFigController = self->mFigController;
  v6 = *&mute->var0[4];
  v10 = *mute->var0;
  v11 = v6;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v7)
  {
    return -12782;
  }

  v9[0] = v10;
  v9[1] = v11;
  return v7(mFigController, v9, valueCopy);
}

- (int)getInputMute:(id *)mute outMuteValue:(BOOL *)value
{
  v12 = *MEMORY[0x1E69E9840];
  mFigController = self->mFigController;
  v6 = *&mute->var0[4];
  v10 = *mute->var0;
  v11 = v6;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v7)
  {
    return -12782;
  }

  v9[0] = v10;
  v9[1] = v11;
  return v7(mFigController, v9, value);
}

- (int)clearUplinkMutedCache
{
  mFigController = self->mFigController;
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v3)
  {
    return -12782;
  }

  return v3(mFigController);
}

- (int)allowAppToInitiateRecordingTemporarily:(id)temporarily
{
  v9 = *MEMORY[0x1E69E9840];
  mFigController = self->mFigController;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v5)
  {
    v6 = v5(mFigController, temporarily);
    if (!v6)
    {
      return v6;
    }
  }

  else
  {
    v6 = -12782;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return v6;
}

- (int)grantMediaEndowmentWithEnvironmentID:(id)d endowmentPayload:(id)payload
{
  v11 = *MEMORY[0x1E69E9840];
  mFigController = self->mFigController;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (v7)
  {
    v8 = v7(mFigController, d, payload);
    if (!v8)
    {
      return v8;
    }
  }

  else
  {
    v8 = -12782;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return v8;
}

- (int)revokeMediaEndowmentWithEnvironmentID:(id)d
{
  v9 = *MEMORY[0x1E69E9840];
  mFigController = self->mFigController;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (v5)
  {
    v6 = v5(mFigController, d);
    if (!v6)
    {
      return v6;
    }
  }

  else
  {
    v6 = -12782;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return v6;
}

- (id)pickableRoutesForCategory:(id)category andMode:(id)mode
{
  v11 = 0;
  if (category)
  {
    categoryCopy = category;
  }

  else
  {
    categoryCopy = @"Audio/Video";
  }

  if (mode)
  {
    modeCopy = mode;
  }

  else
  {
    modeCopy = @"Default";
  }

  mFigController = self->mFigController;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v7)
  {
    v7(mFigController, categoryCopy, modeCopy, &v11);
    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v11)
  {
    return v11;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)pickableRoutesForCategory:(id)category
{
  v9 = 0;
  if (category)
  {
    categoryCopy = category;
  }

  else
  {
    categoryCopy = @"Audio/Video";
  }

  mFigController = self->mFigController;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v5)
  {
    v5(mFigController, categoryCopy, @"Default", &v9);
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (v9)
  {
    return v9;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (BOOL)overrideToPartnerRoute
{
  mFigController = self->mFigController;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  return v3 && v3(mFigController, @"OverrideToPartnerRoute", 0) == 0;
}

- (BOOL)hasRouteSharingPolicyLongFormVideo:(id)video
{
  v9 = 0;
  mFigController = self->mFigController;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v5)
  {
    return 0;
  }

  v6 = v5(mFigController, video, &v9);
  return v9 && v6 == 0;
}

- (BOOL)shouldClientWithAudioScore:(int)score hijackRoute:(id)route hijackDeniedReason:(id *)reason
{
  v7 = *&score;
  v11 = 0;
  mFigController = self->mFigController;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v9)
  {
    return 0;
  }

  v9(mFigController, v7, route, &v11, reason);
  return v11 != 0;
}

- (BOOL)remoteDeviceControlIsAllowed:(unsigned int *)allowed
{
  v4 = 1;
  v9 = 1;
  mFigController = self->mFigController;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (v6)
  {
    v7 = v6(mFigController, &v9);
    v4 = v9;
    if (allowed)
    {
      if (!v7)
      {
        *allowed = v9;
      }
    }
  }

  return v4 == 0;
}

- (BOOL)addRemoteDeviceID:(id)d
{
  v11 = *MEMORY[0x1E69E9840];
  if (!d)
  {
    return 0;
  }

  [(NSLock *)self->mRemoteDeviceIDsLock lock];
  [(NSMutableSet *)self->mRemoteDeviceIDs addObject:d];
  allObjects = [(NSMutableSet *)self->mRemoteDeviceIDs allObjects];
  [(NSLock *)self->mRemoteDeviceIDsLock unlock];
  mFigController = self->mFigController;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v7 && !v7(mFigController, @"RemoteDeviceIDs", allObjects))
  {
    v9 = 1;
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v9 = 0;
  }

  return v9;
}

- (BOOL)removeRemoteDeviceID:(id)d
{
  v11 = *MEMORY[0x1E69E9840];
  if (!d)
  {
    return 0;
  }

  [(NSLock *)self->mRemoteDeviceIDsLock lock];
  [(NSMutableSet *)self->mRemoteDeviceIDs removeObject:d];
  allObjects = [(NSMutableSet *)self->mRemoteDeviceIDs allObjects];
  [(NSLock *)self->mRemoteDeviceIDsLock unlock];
  mFigController = self->mFigController;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v7 && !v7(mFigController, @"RemoteDeviceIDs", allObjects))
  {
    v9 = 1;
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v9 = 0;
  }

  return v9;
}

- (int)getVolumeButtonDelta:(id)delta outVolumeDelta:(float *)volumeDelta
{
  if (!volumeDelta)
  {
    return -12980;
  }

  mFigController = self->mFigController;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (!v7)
  {
    return -12782;
  }

  return v7(mFigController, delta, volumeDelta);
}

- (int)allowAppsToInitiatePlayback:(id)playback clientType:(id)type isTemporary:(BOOL)temporary
{
  temporaryCopy = temporary;
  mFigController = self->mFigController;
  allObjects = [playback allObjects];
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 136);
  if (!v9)
  {
    return -12782;
  }

  return v9(mFigController, allObjects, type, temporaryCopy);
}

- (int)getAudioSessionID:(unsigned int *)d forAttributedPID:(int)iD
{
  v10 = *MEMORY[0x1E69E9840];
  if (d && (v4 = *&iD, iD))
  {
    mFigController = self->mFigController;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (v7)
    {

      return v7(mFigController, d, v4);
    }

    else
    {
      return -12782;
    }
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return -12980;
  }
}

@end