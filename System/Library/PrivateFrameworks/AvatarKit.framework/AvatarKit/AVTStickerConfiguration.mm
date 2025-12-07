@interface AVTStickerConfiguration
+ (id)_availableStickerNamesForPuppetNamed:(id)named inStickerPack:(id)pack;
+ (id)_stickerConfigurationForPuppetNamed:(id)named inStickerPack:(id)pack stickerName:(id)name;
+ (id)_stickerConfigurationsForPuppetNamed:(id)named inStickerPack:(id)pack;
+ (id)allStickerPackNames;
+ (id)unavailableAnimojiNamesForStickerPack:(id)pack;
- (AVTAvatarPoseAnimation)poseAnimation;
- (AVTStickerConfiguration)initWithConfigDictionary:(id)dictionary assetsPath:(id)path forStickerPack:(id)pack;
- (AVTStickerConfiguration)initWithConfigurationAtPath:(id)path forStickerPack:(id)pack;
- (AVTStickerConfiguration)initWithName:(id)name pose:(id)pose bodyPose:(id)bodyPose props:(id)props shaders:(id)shaders camera:(id)camera options:(id)options;
- (AVTStickerConfiguration)initWithName:(id)name poseAnimation:(id)animation bodyPose:(id)pose props:(id)props shaders:(id)shaders camera:(id)camera options:(id)options;
- (BOOL)definesPoseOnly;
- (BOOL)hasProps;
- (BOOL)preRendered;
- (BOOL)showsBody;
- (CGSize)size;
- (id)description;
- (id)dictionaryWithTargetPath:(id)path;
- (id)framingMode;
- (void)_updateDictionary:(id)dictionary withTargetPath:(id)path;
- (void)loadIfNeeded;
- (void)setupOptions:(id)options;
- (void)unload;
@end

@implementation AVTStickerConfiguration

+ (id)allStickerPackNames
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:@"stickers" count:{@"stickersPrerelease", @"posesPack", @"posesPackPrerelease", @"memojiEditorThumbnails", v4}];

  return v2;
}

+ (id)_stickerConfigurationsForPuppetNamed:(id)named inStickerPack:(id)pack
{
  packCopy = pack;
  v20 = AVTPrecompiledStickerPackPlistForPuppetNamed(packCopy, named);
  v7 = [v20 objectAtIndexedSubscript:?];
  v8 = objc_alloc(MEMORY[0x1E695DF70]);
  [v7 count];
  v22 = [v8 initWithCapacity:?];
  obj = v7;
  v9 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v9)
  {
    v10 = v9;
    v11 = MEMORY[0];
    do
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (MEMORY[0] != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [*(8 * i) stringByAppendingPathComponent:?];
        v14 = +[AVTResourceLocator sharedResourceLocator];
        v15 = [(AVTResourceLocator *)v14 urlForStickerResourceAtPath:v13 isDirectory:0];

        v16 = [self alloc];
        path = [v15 path];
        v18 = [v16 initWithConfigurationAtPath:? forStickerPack:?];

        if (v18)
        {
          [v22 addObject:?];
        }
      }

      v10 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v10);
  }

  return v22;
}

+ (id)_stickerConfigurationForPuppetNamed:(id)named inStickerPack:(id)pack stickerName:(id)name
{
  v30 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  packCopy = pack;
  nameCopy = name;
  v11 = AVTPrecompiledStickerPackPlistForPuppetNamed(packCopy, namedCopy);
  v12 = [v11 objectAtIndexedSubscript:?];
  if ([v12 indexOfObject:?] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = avt_default_log(0x7FFFFFFFFFFFFFFFLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v25 = nameCopy;
      v26 = 2112;
      v27 = packCopy;
      v28 = 2112;
      v29 = namedCopy;
      _os_log_error_impl(&dword_1BB472000, v13, OS_LOG_TYPE_ERROR, "Error: Failed to find sticker %@ in pack %@ for puppet named %@", buf, 0x20u);
    }

    v14 = 0;
  }

  else
  {
    v23 = [v11 objectAtIndexedSubscript:?];
    v15 = [v23 objectAtIndexedSubscript:?];
    v16 = [v15 stringByAppendingPathComponent:?];
    v17 = +[AVTResourceLocator sharedResourceLocator];
    [(AVTResourceLocator *)v17 urlForStickerResourceAtPath:v16 isDirectory:0];
    v19 = v18 = namedCopy;

    v20 = [self alloc];
    path = [v19 path];
    v14 = [v20 initWithConfigurationAtPath:? forStickerPack:?];

    namedCopy = v18;
  }

  return v14;
}

+ (id)unavailableAnimojiNamesForStickerPack:(id)pack
{
  v3 = AVTPrecompiledStickerPackPlist(pack);
  v4 = [v3 objectForKeyedSubscript:?];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

+ (id)_availableStickerNamesForPuppetNamed:(id)named inStickerPack:(id)pack
{
  v4 = AVTPrecompiledStickerPackPlistForPuppetNamed(pack, named);
  v5 = [v4 objectAtIndexedSubscript:?];

  return v5;
}

- (AVTStickerConfiguration)initWithConfigurationAtPath:(id)path forStickerPack:(id)pack
{
  pathCopy = path;
  packCopy = pack;
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  v18 = 0;
  v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:? options:? error:?];
  v10 = v18;
  if (!v9 || (v11 = v10, v17 = v10, [MEMORY[0x1E696ACB0] JSONObjectWithData:? options:? error:?], v12 = objc_claimAutoreleasedReturnValue(), v13 = v17, v11, v13))
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:? reason:? userInfo:?];
    objc_exception_throw(v16);
  }

  v14 = [AVTStickerConfiguration initWithConfigDictionary:"initWithConfigDictionary:assetsPath:forStickerPack:" assetsPath:? forStickerPack:?];

  return v14;
}

- (AVTStickerConfiguration)initWithConfigDictionary:(id)dictionary assetsPath:(id)path forStickerPack:(id)pack
{
  dictionaryCopy = dictionary;
  pathCopy = path;
  packCopy = pack;
  v12 = [dictionaryCopy objectForKey:?];
  lastPathComponent = [dictionaryCopy objectForKeyedSubscript:?];
  if (!lastPathComponent)
  {
    lastPathComponent = [pathCopy lastPathComponent];
  }

  v14 = [AVTStickerConfiguration initWithName:"initWithName:pose:bodyPose:props:shaders:camera:options:" pose:v12 bodyPose:? props:? shaders:? camera:? options:?];
  v15 = v14;
  if (v14)
  {
    v14->_hasLoadedFromConfiguration = 0;
    objc_storeStrong(&v14->_configurationDictionary, dictionary);
    objc_storeStrong(&v15->_assetsPath, path);
    objc_storeStrong(&v15->_stickerPack, pack);
  }

  return v15;
}

- (AVTStickerConfiguration)initWithName:(id)name poseAnimation:(id)animation bodyPose:(id)pose props:(id)props shaders:(id)shaders camera:(id)camera options:(id)options
{
  optionsCopy = options;
  cameraCopy = camera;
  shadersCopy = shaders;
  propsCopy = props;
  poseCopy = pose;
  nameCopy = name;
  physicalizedPose = [animation physicalizedPose];
  v23 = [AVTStickerConfiguration initWithName:"initWithName:pose:bodyPose:props:shaders:camera:options:" pose:optionsCopy bodyPose:? props:? shaders:? camera:? options:?];

  return v23;
}

- (AVTStickerConfiguration)initWithName:(id)name pose:(id)pose bodyPose:(id)bodyPose props:(id)props shaders:(id)shaders camera:(id)camera options:(id)options
{
  nameCopy = name;
  poseCopy = pose;
  bodyPoseCopy = bodyPose;
  propsCopy = props;
  shadersCopy = shaders;
  cameraCopy = camera;
  optionsCopy = options;
  v36.receiver = self;
  v36.super_class = AVTStickerConfiguration;
  v18 = [(AVTStickerConfiguration *)&v36 init];
  v19 = v18;
  if (v18)
  {
    if (!nameCopy)
    {
      v20 = avt_default_log(v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(AVTAnimoji *)v20 initWithName:v21 error:v22, v23, v24, v25, v26, v27];
      }
    }

    v19->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v19->_name, name);
    v28 = AVTLocalizedStickerName(nameCopy);
    localizedName = v19->_localizedName;
    v19->_localizedName = v28;

    objc_storeStrong(&v19->_physicalizedPose, pose);
    objc_storeStrong(&v19->_bodyPose, bodyPose);
    objc_storeStrong(&v19->_props, props);
    objc_storeStrong(&v19->_shaderModifiers, shaders);
    objc_storeStrong(&v19->_camera, camera);
    v19->_stickerVersion = 1;
    [(AVTStickerConfiguration *)v19 setupOptions:?];
  }

  return v19;
}

- (id)framingMode
{
  if (self->_camera)
  {
    return 0;
  }

  else
  {
    return @"camera";
  }
}

- (BOOL)hasProps
{
  if (self->_hasLoadedFromConfiguration || !self->_configurationDictionary)
  {
    v3 = [(NSArray *)self->_props count];
  }

  else
  {
    v2 = [(NSDictionary *)self->_configurationDictionary objectForKeyedSubscript:?];
    v3 = [v2 count];
  }

  return v3 != 0;
}

- (BOOL)showsBody
{
  if (self->_hasLoadedFromConfiguration || !self->_configurationDictionary)
  {
    bodyPose = self->_bodyPose;
  }

  else
  {
    bodyPose = [(NSDictionary *)self->_configurationDictionary objectForKeyedSubscript:?];
  }

  return bodyPose != 0;
}

- (BOOL)definesPoseOnly
{
  if (self->_hasLoadedFromConfiguration)
  {
    return ![(NSArray *)self->_props count]&& self->_bodyPose == 0;
  }

  configurationDictionary = self->_configurationDictionary;
  if (!configurationDictionary)
  {
    return ![(NSArray *)self->_props count]&& self->_bodyPose == 0;
  }

  else
  {
    v4 = [(NSDictionary *)configurationDictionary objectForKeyedSubscript:?];
    v5 = [(NSDictionary *)self->_configurationDictionary objectForKeyedSubscript:?];
    v6 = ([v4 count] | v5) == 0;
  }

  return v6;
}

- (AVTAvatarPoseAnimation)poseAnimation
{
  v3 = [AVTAvatarPoseAnimation alloc];
  pose = [(AVTAvatarPhysicalizedPose *)self->_physicalizedPose pose];
  physicsStates = [(AVTAvatarPhysicalizedPose *)self->_physicalizedPose physicsStates];
  v6 = [AVTAvatarPoseAnimation initWithStaticPose:v3 staticPhysicsStates:"initWithStaticPose:staticPhysicsStates:"];

  return v6;
}

- (void)setupOptions:(id)options
{
  optionsCopy = options;
  v5 = [optionsCopy objectForKeyedSubscript:?];
  legacySizeOption = self->_legacySizeOption;
  self->_legacySizeOption = v5;

  if (self->_legacySizeOption && (setupOptions__done & 1) == 0)
  {
    setupOptions__done = 1;
    v8 = avt_default_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(AVTStickerConfiguration *)v8 setupOptions:v9, v10, v11, v12, v13, v14, v15];
    }
  }

  v16 = [optionsCopy valueForKey:?];
  v38 = v16;
  if ([v16 count])
  {
    v37 = optionsCopy;
    v17 = objc_alloc(MEMORY[0x1E695DF70]);
    [v16 count];
    v18 = [v17 initWithCapacity:?];
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:? objects:? count:?];
    if (v20)
    {
      v21 = v20;
      v22 = MEMORY[0];
      do
      {
        for (i = 0; i != v21; i = (i + 1))
        {
          if (MEMORY[0] != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [v19 objectForKeyedSubscript:v37];
          v25 = [AVTStickerPresetOverride presetOverrideFromDictionary:"presetOverrideFromDictionary:forCategoryName:" forCategoryName:?];

          [(NSArray *)v18 addObject:?];
        }

        v21 = [v19 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v21);
    }

    presetOverrides = self->_presetOverrides;
    self->_presetOverrides = v18;

    optionsCopy = v37;
  }

  v27 = [optionsCopy valueForKey:v37];
  if ([v27 count])
  {
    v28 = objc_alloc(MEMORY[0x1E695DF70]);
    [v27 count];
    v29 = [v28 initWithCapacity:?];
    v30 = v27;
    v31 = [v30 countByEnumeratingWithState:? objects:? count:?];
    if (v31)
    {
      v32 = v31;
      v33 = MEMORY[0];
      do
      {
        for (j = 0; j != v32; j = (j + 1))
        {
          if (MEMORY[0] != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = [AVTStickerMorpherOverride morpherOverrideFromDictionary:?];
          [(NSArray *)v29 addObject:?];
        }

        v32 = [v30 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v32);
    }

    morpherOverrides = self->_morpherOverrides;
    self->_morpherOverrides = v29;

    v16 = v38;
  }
}

- (void)loadIfNeeded
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_0(&dword_1BB472000, a2, a3, "Error: Unreachable code: Unsupported file type for scene %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __39__AVTStickerConfiguration_loadIfNeeded__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = [v4 objectForKeyedSubscript:?];
  v5 = objc_alloc_init(AVTStickerPoseAdjustment);
  [(AVTStickerPoseAdjustment *)v5 setPresetCategory:?];
  v6 = [v4 objectForKeyedSubscript:?];

  [(AVTStickerPoseAdjustment *)v5 setPresetIdentifier:?];
  v7 = [[AVTAvatarPose alloc] initWithDictionaryRepresentation:?];
  [(AVTStickerPoseAdjustment *)v5 setPose:?];

  [*(a1 + 32) addObject:?];
}

void __39__AVTStickerConfiguration_loadIfNeeded__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  AVTPresetCategoryFromString(a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:0 objects:? count:?];
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0];
      do
      {
        for (i = 0; i != v8; i = (i + 1))
        {
          if (MEMORY[0] != v9)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(a1 + 32) + 16))();
        }

        v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v8);
    }
  }
}

- (void)unload
{
  if (self->_hasLoadedFromConfiguration && self->_configurationDictionary)
  {
    os_unfair_lock_lock(&self->_lock);
    if (self->_hasLoadedFromConfiguration && self->_configurationDictionary)
    {
      [(AVTStickerConfiguration *)self setPhysicalizedPose:?];
      [(AVTStickerConfiguration *)self setBodyPose:?];
      [(AVTStickerConfiguration *)self setPoseAdjustments:?];
      [(AVTStickerConfiguration *)self setProps:?];
      [(AVTStickerConfiguration *)self setShaderModifiers:?];
      [(AVTStickerConfiguration *)self setCamera:?];
      self->_hasLoadedFromConfiguration = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_updateDictionary:(id)dictionary withTargetPath:(id)path
{
  v19 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  pathCopy = path;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  props = [(AVTStickerConfiguration *)self props];
  v10 = [props countByEnumeratingWithState:? objects:? count:?];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(props);
        }

        v14 = [*(*(&v15 + 1) + 8 * v13) dictionaryWithTargetPath:?];
        [array addObject:?];

        v13 = (v13 + 1);
      }

      while (v11 != v13);
      v11 = [props countByEnumeratingWithState:? objects:? count:?];
    }

    while (v11);
  }

  [dictionaryCopy setObject:? forKeyedSubscript:?];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = [(AVTStickerConfiguration *)self name];
  v6 = name;
  if (self->_hasLoadedFromConfiguration)
  {
    v7 = [(AVTStickerConfiguration *)self dictionaryWithTargetPath:?];
    v8 = [v7 description];
    v9 = [v3 stringWithFormat:v4, self, v6, v8];
  }

  else
  {
    v9 = [v3 stringWithFormat:v4, self, name, @"Unloaded"];
  }

  return v9;
}

- (id)dictionaryWithTargetPath:(id)path
{
  pathCopy = path;
  [(AVTStickerConfiguration *)self loadIfNeeded];
  configurationDictionary = self->_configurationDictionary;
  if (configurationDictionary)
  {
    dictionary = [(NSDictionary *)configurationDictionary mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v7 = dictionary;
  [AVTStickerConfiguration _updateDictionary:"_updateDictionary:withTargetPath:" withTargetPath:?];

  return v7;
}

- (CGSize)size
{
  if ((size_done & 1) == 0)
  {
    size_done = 1;
    v3 = avt_default_log(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(AVTStickerConfiguration *)v3 setupOptions:v4, v5, v6, v7, v8, v9, v10];
    }
  }

  legacySizeOption = self->_legacySizeOption;
  if (legacySizeOption)
  {
    [(NSNumber *)legacySizeOption floatValue];
    v13 = v12;
  }

  else
  {
    v13 = 140.0;
  }

  v14 = v13;
  result.height = v14;
  result.width = v13;
  return result;
}

- (BOOL)preRendered
{
  if ((preRendered_done & 1) == 0)
  {
    preRendered_done = 1;
    v2 = avt_default_log(self);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [(AVTStickerConfiguration(Deprecated) *)v2 preRendered:v3];
    }
  }

  return 0;
}

@end