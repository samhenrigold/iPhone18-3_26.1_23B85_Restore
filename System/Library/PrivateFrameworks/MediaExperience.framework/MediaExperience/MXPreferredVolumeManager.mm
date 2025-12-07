@interface MXPreferredVolumeManager
+ (id)sharedInstance;
- (MXPreferredVolumeManager)init;
- (void)dealloc;
- (void)postNotification:(id)notification category:(id)category mode:(id)mode volume:(float)volume rampUpwardDuration:(float)duration rampDownwardDuration:(float)downwardDuration silenceVolumeHUD:(BOOL)d reason:(id)self0 refCon:(id)self1 sequenceNumber:(int64_t)self2;
@end

@implementation MXPreferredVolumeManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_14 != -1)
  {
    +[MXPreferredVolumeManager sharedInstance];
  }

  return sharedInstance_sSharedInstance_12;
}

MXPreferredVolumeManager *__42__MXPreferredVolumeManager_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXPreferredVolumeManager);
  sharedInstance_sSharedInstance_12 = result;
  return result;
}

- (MXPreferredVolumeManager)init
{
  v3.receiver = self;
  v3.super_class = MXPreferredVolumeManager;
  return [(MXPreferredVolumeManager *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MXPreferredVolumeManager;
  [(MXPreferredVolumeManager *)&v2 dealloc];
}

- (void)postNotification:(id)notification category:(id)category mode:(id)mode volume:(float)volume rampUpwardDuration:(float)duration rampDownwardDuration:(float)downwardDuration silenceVolumeHUD:(BOOL)d reason:(id)self0 refCon:(id)self1 sequenceNumber:(int64_t)self2
{
  dCopy = d;
  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v23 = v22;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  if (category)
  {
    [v22 setObject:category forKey:@"AudioCategory"];
  }

  PVMCopyCurrentCategoryAndMode(&v33, &v32);
  MappedCategoryWithModeAppended = pvmGetMappedCategoryWithModeAppended(v33, v32);
  pvmCreateSeparateCategoryAndModeStrings(MappedCategoryWithModeAppended, &v34, 0);
  PVMCopyCurrentDeviceRoute(&v31, 0, 0);
  if (v34)
  {
    [v23 setObject:v34 forKey:@"ActiveAudioCategory"];
  }

  if (mode)
  {
    [v23 setObject:mode forKey:@"AudioMode"];
  }

  *&v25 = volume;
  v26 = [v23 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v25, v31), @"Volume"}];
  if (MX_FeatureFlags_IsAdaptiveVolumeControlEnabled(v26, v27))
  {
    *&v28 = duration;
    [v23 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v28), @"RampUpwardDuration"}];
    *&v29 = downwardDuration;
    [v23 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v29), @"RampDownwardDuration"}];
    [v23 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", dCopy), @"SilenceVolumeHUD"}];
  }

  if (reason)
  {
    [v23 setObject:reason forKey:@"Reason"];
  }

  if (con)
  {
    [v23 setObject:con forKey:@"RefCon"];
  }

  if (number)
  {
    [v23 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithLongLong:", number), @"SequenceNumber"}];
  }

  v30 = v31;
  if (v31)
  {
    [v23 setObject:v31 forKey:@"RouteName"];
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

@end