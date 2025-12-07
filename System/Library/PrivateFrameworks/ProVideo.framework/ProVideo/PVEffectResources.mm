@interface PVEffectResources
+ (BOOL)isInteractiveMode;
+ (float)getCVTextureCacheMaxiumumTextureAge;
+ (int)memoryEnvironment;
+ (void)applicationWillTerminate;
+ (void)cleanupEffectsCache;
+ (void)clearAllCachesAndPools;
+ (void)flushEngine;
+ (void)setCVTextureCacheMaximumTextureAge:(float)age;
+ (void)setInteractiveMode:(BOOL)mode;
+ (void)shutdownEngine;
+ (void)updateMemoryEnvironment:(int)environment;
@end

@implementation PVEffectResources

+ (void)cleanupEffectsCache
{
  +[PVEffect handleCleanupEffectsCache];

  +[PVMotionEffect handleCleanupEffectsCache];
}

+ (void)setInteractiveMode:(BOOL)mode
{
  modeCopy = mode;
  PVRenderManager::INSTANCE(&v4);
  PVRenderManager::SetInteractiveMode(v4, modeCopy);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }
}

+ (BOOL)isInteractiveMode
{
  PVRenderManager::INSTANCE(&v4);
  InteractiveMode = PVRenderManager::GetInteractiveMode(v4);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  return InteractiveMode;
}

+ (void)updateMemoryEnvironment:(int)environment
{
  PVRenderManager::INSTANCE(&v4);
  PVRenderManager::updateMemoryEnvironment(v4, environment);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }
}

+ (int)memoryEnvironment
{
  PVRenderManager::INSTANCE(&v4);
  MemoryEnvironment = PVRenderManager::GetMemoryEnvironment(v4);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  return MemoryEnvironment;
}

+ (void)setCVTextureCacheMaximumTextureAge:(float)age
{
  PVRenderManager::INSTANCE(&v4);
  PVRenderManager::SetCVTextureCacheMaximumTextureAge(v4, age);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }
}

+ (float)getCVTextureCacheMaxiumumTextureAge
{
  PVRenderManager::INSTANCE(&v4);
  CVTextureCacheMaximumTextureAge = PVRenderManager::GetCVTextureCacheMaximumTextureAge(v4);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  return CVTextureCacheMaximumTextureAge;
}

+ (void)applicationWillTerminate
{
  +[PVEffect handleApplicationWillTerminate];

  +[PVMotionEffect handleApplicationWillTerminate];
}

+ (void)clearAllCachesAndPools
{
  +[PVEffect handleApplicationDidReceiveMemoryWarning];
  +[PVMotionEffect handleApplicationDidReceiveMemoryWarning];
  +[PVCinematicEffect handleApplicationDidReceiveMemoryWarning];
  [self cleanupEffectsCache];
  PVRenderManager::INSTANCE(&v3);
  PVRenderManager::FreeTexturePools(v3);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }
}

+ (void)flushEngine
{
  PVRenderManager::INSTANCE(&v13);
  if (HGLogger::getLevel("PVSignPost", v3) >= 1)
  {
    kdebug_trace();
  }

  PVRenderManager::Pause(v13);
  if (HGLogger::getLevel("PVSignPost", v4) >= 1)
  {
    kdebug_trace();
  }

  if (HGLogger::getLevel("PVSignPost", v5) >= 1)
  {
    kdebug_trace();
  }

  PVRenderManager::CancelAllRenderJobs(v13, 1);
  if (HGLogger::getLevel("PVSignPost", v6) >= 1)
  {
    kdebug_trace();
  }

  if (HGLogger::getLevel("PVSignPost", v7) >= 1)
  {
    kdebug_trace();
  }

  PVRenderManager::WaitForCommandBuffersToComplete(v13);
  if (HGLogger::getLevel("PVSignPost", v8) >= 1)
  {
    kdebug_trace();
  }

  if (HGLogger::getLevel("PVSignPost", v9) >= 1)
  {
    kdebug_trace();
  }

  [self clearAllCachesAndPools];
  PVRenderManager::ForceFlushRendererResources(v13);
  if (HGLogger::getLevel("PVSignPost", v10) >= 1)
  {
    kdebug_trace();
  }

  if (HGLogger::getLevel("PVSignPost", v11) >= 1)
  {
    kdebug_trace();
  }

  PVRenderManager::Resume(v13);
  if (HGLogger::getLevel("PVSignPost", v12) >= 1)
  {
    kdebug_trace();
  }

  if (v13)
  {
    (*(*v13 + 24))(v13);
  }
}

+ (void)shutdownEngine
{
  NSLog(&cfstr_ShuttingDownPv.isa, a2);
  PVRenderManager::INSTANCE(&v2);
  PVRenderManager::Pause(v2);
  PVRenderManager::CancelAllRenderJobs(v2, 1);
  PVRenderManager::WaitForCommandBuffersToComplete(v2);
  PVRenderManager::Shutdown(v2);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }
}

@end