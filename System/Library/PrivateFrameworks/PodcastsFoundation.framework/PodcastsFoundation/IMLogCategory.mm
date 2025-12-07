@interface IMLogCategory
+ (OS_os_log)accessibility;
+ (OS_os_log)defaultCategory;
+ (OS_os_log)imageCache;
+ (OS_os_log)player;
@end

@implementation IMLogCategory

+ (OS_os_log)defaultCategory
{
  if (defaultCategory_onceToken != -1)
  {
    +[IMLogCategory defaultCategory];
  }

  v3 = defaultCategory_IMLogCategoryDefault;

  return v3;
}

uint64_t __32__IMLogCategory_defaultCategory__block_invoke()
{
  v0 = os_log_create("com.apple.podcasts.imframeworks", "Podcasts");
  v1 = defaultCategory_IMLogCategoryDefault;
  defaultCategory_IMLogCategoryDefault = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (OS_os_log)accessibility
{
  if (accessibility_onceToken != -1)
  {
    +[IMLogCategory accessibility];
  }

  v3 = accessibility_IMLogCategoryAccessibility;

  return v3;
}

uint64_t __30__IMLogCategory_accessibility__block_invoke()
{
  v0 = os_log_create("com.apple.podcasts.imframeworks", "Accessibility");
  v1 = accessibility_IMLogCategoryAccessibility;
  accessibility_IMLogCategoryAccessibility = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (OS_os_log)imageCache
{
  if (imageCache_onceToken != -1)
  {
    +[IMLogCategory imageCache];
  }

  v3 = imageCache_IMLogCategoryImageCache;

  return v3;
}

uint64_t __27__IMLogCategory_imageCache__block_invoke()
{
  v0 = os_log_create("com.apple.podcasts.imframeworks", "ImageCache");
  v1 = imageCache_IMLogCategoryImageCache;
  imageCache_IMLogCategoryImageCache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (OS_os_log)player
{
  if (player_onceToken != -1)
  {
    +[IMLogCategory player];
  }

  v3 = player_IMLogCategoryPlayer;

  return v3;
}

uint64_t __23__IMLogCategory_player__block_invoke()
{
  v0 = os_log_create("com.apple.podcasts.imframeworks", "Player");
  v1 = player_IMLogCategoryPlayer;
  player_IMLogCategoryPlayer = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end