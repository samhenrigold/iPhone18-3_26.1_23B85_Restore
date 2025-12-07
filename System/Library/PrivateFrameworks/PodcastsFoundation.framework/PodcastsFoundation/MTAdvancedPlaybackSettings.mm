@interface MTAdvancedPlaybackSettings
+ (id)insertNewAdvancedPlaybackSettingsOnPodcast:(id)podcast hasCustomSettings:(BOOL)settings playbackRate:(double)rate enhanceDialogueEnabled:(BOOL)enabled;
+ (id)insertNewAdvancedPlaybackSettingsOnPodcast:(id)podcast settingsAdjustedCount:(int)count;
+ (id)insertNewAdvancedPlaybackSettingsOnPodcast:(id)podcast settingsAdjustedCount:(int)count tipLastShownDate:(id)date;
+ (id)insertNewAdvancedPlaybackSettingsOnPodcast:(id)podcast settingsAdjustedCount:(int)count tipLastShownDate:(id)date hasCustomSettings:(BOOL)settings playbackRate:(double)rate enhanceDialogueEnabled:(BOOL)enabled;
- (BOOL)enhanceDialogueEnabled;
- (void)setEnhanceDialogueEnabled:(BOOL)enabled;
@end

@implementation MTAdvancedPlaybackSettings

- (BOOL)enhanceDialogueEnabled
{
  v2 = [(MTAdvancedPlaybackSettings *)self primitiveValueForKey:@"setting1"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setEnhanceDialogueEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  [(MTAdvancedPlaybackSettings *)self setPrimitiveValue:v4 forKey:@"setting1"];
}

+ (id)insertNewAdvancedPlaybackSettingsOnPodcast:(id)podcast settingsAdjustedCount:(int)count
{
  v4 = *&count;
  v5 = MEMORY[0x1E695D5B8];
  podcastCopy = podcast;
  managedObjectContext = [podcastCopy managedObjectContext];
  v8 = [v5 insertNewObjectForEntityForName:@"MTAdvancedPlaybackSettings" inManagedObjectContext:managedObjectContext];

  [v8 setSettingsAdjustedCount:v4];
  [podcastCopy setAdvancedPlaybackSettings:v8];

  return v8;
}

+ (id)insertNewAdvancedPlaybackSettingsOnPodcast:(id)podcast settingsAdjustedCount:(int)count tipLastShownDate:(id)date
{
  v5 = *&count;
  v7 = MEMORY[0x1E695D5B8];
  dateCopy = date;
  podcastCopy = podcast;
  managedObjectContext = [podcastCopy managedObjectContext];
  v11 = [v7 insertNewObjectForEntityForName:@"MTAdvancedPlaybackSettings" inManagedObjectContext:managedObjectContext];

  [v11 setSettingsAdjustedCount:v5];
  [v11 setTipLastShownDate:dateCopy];

  [v11 setPlaybackRate:NAN];
  [podcastCopy setAdvancedPlaybackSettings:v11];

  return v11;
}

+ (id)insertNewAdvancedPlaybackSettingsOnPodcast:(id)podcast hasCustomSettings:(BOOL)settings playbackRate:(double)rate enhanceDialogueEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  settingsCopy = settings;
  v9 = MEMORY[0x1E695D5B8];
  podcastCopy = podcast;
  managedObjectContext = [podcastCopy managedObjectContext];
  v12 = [v9 insertNewObjectForEntityForName:@"MTAdvancedPlaybackSettings" inManagedObjectContext:managedObjectContext];

  [v12 setSettingsAdjustedCount:0];
  [v12 setHasCustomSettings:settingsCopy];
  [v12 setPlaybackRate:rate];
  [v12 setEnhanceDialogueEnabled:enabledCopy];
  [podcastCopy setAdvancedPlaybackSettings:v12];

  return v12;
}

+ (id)insertNewAdvancedPlaybackSettingsOnPodcast:(id)podcast settingsAdjustedCount:(int)count tipLastShownDate:(id)date hasCustomSettings:(BOOL)settings playbackRate:(double)rate enhanceDialogueEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  settingsCopy = settings;
  v11 = *&count;
  v13 = MEMORY[0x1E695D5B8];
  dateCopy = date;
  podcastCopy = podcast;
  managedObjectContext = [podcastCopy managedObjectContext];
  v17 = [v13 insertNewObjectForEntityForName:@"MTAdvancedPlaybackSettings" inManagedObjectContext:managedObjectContext];

  [v17 setSettingsAdjustedCount:v11];
  [v17 setTipLastShownDate:dateCopy];

  [v17 setHasCustomSettings:settingsCopy];
  [v17 setPlaybackRate:rate];
  [v17 setEnhanceDialogueEnabled:enabledCopy];
  [podcastCopy setAdvancedPlaybackSettings:v17];

  return v17;
}

@end