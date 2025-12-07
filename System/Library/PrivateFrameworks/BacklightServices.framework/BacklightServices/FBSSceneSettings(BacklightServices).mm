@interface FBSSceneSettings(BacklightServices)
- (id)bls_presentationDate;
- (id)bls_visualState;
- (uint64_t)bls_hasUnrestrictedFramerateUpdates;
- (uint64_t)bls_isAlwaysOnEnabledForEnvironment;
- (uint64_t)bls_isDelegateActive;
- (uint64_t)bls_isLiveUpdating;
- (uint64_t)bls_renderSeed;
- (void)bls_presentationDate;
- (void)bls_renderSeed;
- (void)bls_visualState;
@end

@implementation FBSSceneSettings(BacklightServices)

- (id)bls_visualState
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:200001];

  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v8 = v6;
  }

  else if (v4)
  {
    v9 = bls_scenes_log(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(FBSSceneSettings(BacklightServices) *)v4 bls_visualState:v9];
    }
  }

  return v6;
}

- (uint64_t)bls_hasUnrestrictedFramerateUpdates
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:200006];

  return v2;
}

- (uint64_t)bls_isAlwaysOnEnabledForEnvironment
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:200003];

  return v2;
}

- (id)bls_presentationDate
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:200002];

  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v8 = v6;
  }

  else if (v4)
  {
    v9 = bls_scenes_log(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(FBSSceneSettings(BacklightServices) *)v4 bls_presentationDate:v9];
    }
  }

  return v6;
}

- (uint64_t)bls_isLiveUpdating
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:200005];

  return v2;
}

- (uint64_t)bls_isDelegateActive
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:200000];

  return v2;
}

- (uint64_t)bls_renderSeed
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:200004];

  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    unsignedLongLongValue = [v6 unsignedLongLongValue];
  }

  else
  {
    if (v4)
    {
      v9 = bls_scenes_log(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(FBSSceneSettings(BacklightServices) *)v4 bls_renderSeed:v9];
      }
    }

    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (void)bls_visualState
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_0_8(&dword_21FE25000, a2, a3, "%@ is not of class BLSBacklightSceneVisualState", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)bls_presentationDate
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_0_8(&dword_21FE25000, a2, a3, "%@ is not of class NSDate", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)bls_renderSeed
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_0_8(&dword_21FE25000, a2, a3, "%@ is not of class NSNumber", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end