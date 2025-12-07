@interface AVTSnapshotBuilder
+ (CGImage)copyRescaledCGImage:(CGImage *)image by:(float)by;
+ (id)sharedInstance;
- (AVTSnapshotBuilder)init;
- (double)deprecated_avtui_fieldOfViewForFramingMode:(id)mode;
- (id)_imageWithSize:(CGSize)size scale:(double)scale options:(id)options;
- (id)_imageWithSize:(CGSize)size scale:(double)scale options:(id)options useACopy:(BOOL)copy;
- (id)animatedImageWithSize:(CGSize)size scale:(double)scale options:(id)options;
- (id)imageWithSize:(CGSize)size scale:(double)scale options:(id)options;
- (void)_applyOptions:(id)options;
- (void)dealloc;
- (void)deprecated_avtui_applyModificationsForFramingMode:(id)mode projectionDirectionModification:(int64_t)modification fieldOfViewModification:(double)viewModification lensShiftModification:;
- (void)setAvatar:(id)avatar;
- (void)setupAvatarWithOptions:(id)options useACopy:(BOOL)copy;
@end

@implementation AVTSnapshotBuilder

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AVTSnapshotBuilder sharedInstance];
  }

  v3 = sharedInstance_snapshotter;

  return v3;
}

uint64_t __36__AVTSnapshotBuilder_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AVTSnapshotBuilder);
  v1 = sharedInstance_snapshotter;
  sharedInstance_snapshotter = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)setAvatar:(id)avatar
{
  avatarCopy = avatar;
  p_avatar = &self->_avatar;
  if (self->_avatar != avatarCopy)
  {
    v8 = avatarCopy;
    objc_storeStrong(p_avatar, avatar);
    snapshotedAvatar = self->_snapshotedAvatar;
    self->_snapshotedAvatar = 0;

    avatarCopy = v8;
  }

  MEMORY[0x1EEE66BB8](p_avatar, avatarCopy);
}

- (AVTSnapshotBuilder)init
{
  v12 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = AVTSnapshotBuilder;
  v2 = [(AVTSnapshotBuilder *)&v9 init];
  if (v2)
  {
    v10 = @"AVTRendererOptionInitiallyConfigureForARMode";
    v11 = MEMORY[0x1E695E110];
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v4 = [VFXRenderer rendererWithDevice:"rendererWithDevice:options:" options:?];
    renderer = v2->_renderer;
    v2->_renderer = v4;

    [(AVTRenderer *)v2->_renderer setFramingMode:?];
    v6 = objc_alloc_init(AVTSnapshotHelper);
    snapshotHelper = v2->_snapshotHelper;
    v2->_snapshotHelper = v6;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AVTSnapshotBuilder;
  [(AVTSnapshotBuilder *)&v2 dealloc];
}

- (void)_applyOptions:(id)options
{
  v4 = [options objectForKeyedSubscript:?];
  v5 = v4;
  v6 = @"cameraHead";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  [(AVTRenderer *)self->_renderer setFramingMode:?];
}

- (void)setupAvatarWithOptions:(id)options useACopy:(BOOL)copy
{
  optionsCopy = options;
  if (!self->_snapshotedAvatar)
  {
    avatar = self->_avatar;
    if (copy)
    {
      v8 = [(AVTAvatar *)avatar copy];
    }

    else
    {
      v8 = avatar;
    }

    snapshotedAvatar = self->_snapshotedAvatar;
    self->_snapshotedAvatar = v8;

    [(AVTAvatar *)self->_snapshotedAvatar setOptimizeForSnapshot:?];
    [(AVTRenderer *)self->_renderer setAvatar:?];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = self->_avatar;
    v11 = self->_snapshotedAvatar;
    if (v11 != v10)
    {
      for (i = 0; i != 40; ++i)
      {
        v13 = [(AVTAvatar *)v10 presetForCategory:?];
        [AVTAvatar setPreset:v11 forCategory:"setPreset:forCategory:animated:" animated:?];
        for (j = 0; j != 3; ++j)
        {
          v15 = [AVTAvatar colorPresetForCategory:v10 colorIndex:"colorPresetForCategory:colorIndex:"];
          [AVTAvatar setColorPreset:v11 forCategory:"setColorPreset:forCategory:colorIndex:" colorIndex:?];
        }
      }

      if (copy)
      {
        [(AVTAvatar *)v10 showsBody];
        [(AVTAvatar *)v11 setShowsBody:?];
        bodyPose = [(AVTAvatar *)v10 bodyPose];
        [(AVTAvatar *)v11 setBodyPose:?];
      }
    }

    v17 = [optionsCopy objectForKeyedSubscript:?];
    v18 = [v17 countByEnumeratingWithState:? objects:? count:?];
    if (v18)
    {
      v19 = v18;
      v20 = MEMORY[0];
      do
      {
        for (k = 0; k != v19; k = (k + 1))
        {
          if (MEMORY[0] != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(8 * k) category];
          [AVTAvatar setPreset:v11 forCategory:"setPreset:forCategory:animated:" animated:?];
        }

        v19 = [v17 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v19);
    }

    v22 = [optionsCopy objectForKeyedSubscript:?];
    v23 = [v22 countByEnumeratingWithState:? objects:? count:?];
    if (v23)
    {
      v24 = v23;
      v25 = MEMORY[0];
      do
      {
        for (m = 0; m != v24; m = (m + 1))
        {
          if (MEMORY[0] != v25)
          {
            objc_enumerationMutation(v22);
          }

          [*(8 * m) category];
          [AVTAvatar setColorPreset:v11 forCategory:"setColorPreset:forCategory:colorIndex:" colorIndex:?];
        }

        v24 = [v22 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v24);
    }

    v27 = [optionsCopy objectForKeyedSubscript:?];
    v28 = [v27 countByEnumeratingWithState:? objects:? count:?];
    if (v28)
    {
      v29 = v28;
      v30 = MEMORY[0];
      do
      {
        for (n = 0; n != v29; n = (n + 1))
        {
          if (MEMORY[0] != v30)
          {
            objc_enumerationMutation(v27);
          }

          [*(8 * n) category];
          [AVTAvatar setColorPreset:v11 forCategory:"setColorPreset:forCategory:colorIndex:" colorIndex:?];
        }

        v29 = [v27 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v29);
    }

    v32 = [optionsCopy objectForKeyedSubscript:0];
    v33 = [v32 countByEnumeratingWithState:? objects:? count:?];
    if (v33)
    {
      v34 = v33;
      v35 = MEMORY[0];
      do
      {
        for (ii = 0; ii != v34; ii = (ii + 1))
        {
          if (MEMORY[0] != v35)
          {
            objc_enumerationMutation(v32);
          }

          [*(8 * ii) category];
          [AVTAvatar setColorPreset:v11 forCategory:"setColorPreset:forCategory:colorIndex:" colorIndex:?];
        }

        v34 = [v32 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v34);
    }
  }

  [(AVTAvatar *)self->_snapshotedAvatar updateWithOptions:?];
  v37 = [optionsCopy objectForKeyedSubscript:?];
  if (v37)
  {
    [(AVTAvatar *)self->_snapshotedAvatar setPose:?];
  }
}

+ (CGImage)copyRescaledCGImage:(CGImage *)image by:(float)by
{
  v6 = (CGImageGetWidth(image) * by);
  v7 = (CGImageGetHeight(image) * by);
  BitsPerComponent = CGImageGetBitsPerComponent(image);
  v9 = (CGImageGetBitsPerPixel(image) >> 3) * v6;
  ColorSpace = CGImageGetColorSpace(image);
  BitmapInfo = CGImageGetBitmapInfo(image);
  result = CGBitmapContextCreate(0, v6, v7, BitsPerComponent, v9, ColorSpace, BitmapInfo);
  if (result)
  {
    v13 = result;
    v15.size.width = v6;
    v15.size.height = v7;
    v15.origin.x = 0.0;
    v15.origin.y = 0.0;
    CGContextDrawImage(result, v15, image);
    Image = CGBitmapContextCreateImage(v13);
    CGContextRelease(v13);
    return Image;
  }

  return result;
}

- (id)imageWithSize:(CGSize)size scale:(double)scale options:(id)options
{
  optionsCopy = options;
  v7 = [optionsCopy valueForKey:?];
  [v7 BOOLValue];

  v8 = [AVTSnapshotBuilder _imageWithSize:"_imageWithSize:scale:options:useACopy:" scale:? options:? useACopy:?];

  return v8;
}

- (id)_imageWithSize:(CGSize)size scale:(double)scale options:(id)options
{
  optionsCopy = options;
  v7 = [optionsCopy valueForKey:?];
  [v7 BOOLValue];

  v8 = [AVTSnapshotBuilder _imageWithSize:"_imageWithSize:scale:options:useACopy:" scale:? options:? useACopy:?];

  return v8;
}

- (id)_imageWithSize:(CGSize)size scale:(double)scale options:(id)options useACopy:(BOOL)copy
{
  height = size.height;
  width = size.width;
  optionsCopy = options;
  v11 = objc_autoreleasePoolPush();
  v12 = [optionsCopy objectForKeyedSubscript:?];
  v13 = v12;
  if (v12)
  {
    [v12 BOOLValue];
  }

  [AVTSnapshotBuilder setupAvatarWithOptions:"setupAvatarWithOptions:useACopy:" useACopy:?];
  v14 = [optionsCopy objectForKeyedSubscript:?];
  if (v14)
  {
    v15 = [optionsCopy objectForKeyedSubscript:?];
    if ([v15 BOOLValue])
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 2;
  }

  CFAbsoluteTimeGetCurrent();
  v17 = [optionsCopy objectForKeyedSubscript:?];
  [v17 floatValue];
  v19 = v18;

  if (v19 == 0.0)
  {
    v19 = 1.0;
  }

  v20 = [optionsCopy objectForKeyedSubscript:?];
  [v20 floatValue];

  v21 = [optionsCopy objectForKeyedSubscript:?];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 addToAvatar:? useStaticPhysicsState:?];
  }

  [(AVTSnapshotBuilder *)self _applyOptions:?];
  world = [(AVTRenderer *)self->_renderer world];
  clock = [world clock];
  [clock setTime:?];

  [(AVTRenderer *)self->_renderer set_superSamplingFactor:?];
  v26 = [optionsCopy objectForKeyedSubscript:?];
  backgroundColor = [(AVTRenderer *)self->_renderer backgroundColor];

  if (backgroundColor != v26)
  {
    [(AVTRenderer *)self->_renderer setBackgroundColor:?];
  }

  [MEMORY[0x1E69DF378] flush];
  v28 = v19 * scale;
  v29 = (width * v28);
  v30 = (height * v28);
  [(AVTRenderer *)self->_renderer updateAtTime:?];
  renderer = self->_renderer;
  snapshotHelper = self->_snapshotHelper;
  scaleCopy = scale;
  v39 = 0;
  v34 = [(AVTSnapshotHelper *)snapshotHelper newImageWithRenderer:v16 antialiasingMode:v29 pixelWidth:v30 pixelHeight:&v39 imagePointSize:width contentScaleFactor:height error:scaleCopy];
  v35 = v39;
  v36 = v35;
  if (!v34)
  {
    v37 = avt_default_log(v35);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [AVTVariantBatchSnapshotter imageWithOptions:v36 modifications:?];
    }
  }

  objc_autoreleasePoolPop(v11);

  return v34;
}

- (id)animatedImageWithSize:(CGSize)size scale:(double)scale options:(id)options
{
  height = size.height;
  width = size.width;
  optionsCopy = options;
  context = objc_autoreleasePoolPush();
  [AVTSnapshotBuilder setupAvatarWithOptions:"setupAvatarWithOptions:useACopy:" useACopy:?];
  v9 = [optionsCopy objectForKeyedSubscript:?];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 addToAvatar:? useStaticPhysicsState:?];
    [v12 duration];
    v14 = v13;
  }

  else
  {
    v14 = 2.0;
  }

  v15 = [optionsCopy objectForKeyedSubscript:?];
  v47 = v10;
  if (v15)
  {
    v16 = [optionsCopy objectForKeyedSubscript:?];
    if ([v16 BOOLValue])
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 2;
  }

  [(AVTRenderer *)self->_renderer setJitteringEnabled:?];
  v18 = [optionsCopy objectForKeyedSubscript:?];
  [v18 floatValue];
  v20 = v19;

  if (v20 == 0.0)
  {
    v21 = 1.5;
  }

  else
  {
    v21 = v20;
  }

  v22 = [optionsCopy objectForKeyedSubscript:?];
  [v22 floatValue];
  v24 = v23;

  if (v24 == 0.0)
  {
    v25 = 60.0;
  }

  else
  {
    v25 = v24;
  }

  v26 = v14 * v25;
  v27 = vcvtps_s32_f32(v26);
  v49 = optionsCopy;
  [(AVTSnapshotBuilder *)self _applyOptions:*&v14];
  [MEMORY[0x1E69DF378] flush];
  array = [MEMORY[0x1E695DF70] array];
  CFAbsoluteTimeGetCurrent();
  if (v27 >= 1)
  {
    v28 = 0;
    v29 = v21 * scale;
    v30 = (width * v29);
    v31 = (height * v29);
    do
    {
      v33 = objc_autoreleasePoolPush();
      world = [(AVTRenderer *)self->_renderer world];
      clock = [world clock];
      [clock setTime:?];

      renderer = self->_renderer;
      world2 = [(AVTRenderer *)renderer world];
      clock2 = [world2 clock];
      [clock2 time];
      [(AVTRenderer *)renderer updateAtTime:?];

      scaleCopy = scale;
      v39 = [(AVTSnapshotHelper *)self->_snapshotHelper newImageWithRenderer:v17 antialiasingMode:v30 pixelWidth:v31 pixelHeight:0 imagePointSize:width contentScaleFactor:height error:scaleCopy];
      v40 = v39;
      if (v21 != 1.0)
      {
        [v39 CGImage];
        v41 = [objc_opt_class() copyRescaledCGImage:? by:?];
        v42 = [MEMORY[0x1E69DCAB8] imageWithCGImage:?];

        CGImageRelease(v41);
        v40 = v42;
      }

      if (scale != 1.0)
      {
        v43 = MEMORY[0x1E69DCAB8];
        [v40 CGImage];
        v44 = [v43 imageWithCGImage:? scale:? orientation:?];

        v40 = v44;
      }

      if (v40)
      {
        [array addObject:?];
      }

      objc_autoreleasePoolPop(v33);
      ++v28;
    }

    while (v27 != v28);
  }

  v45 = [MEMORY[0x1E69DCAB8] animatedImageWithImages:? duration:?];

  objc_autoreleasePoolPop(context);

  return v45;
}

- (double)deprecated_avtui_fieldOfViewForFramingMode:(id)mode
{
  modeCopy = mode;
  renderer = [(AVTSnapshotBuilder *)self renderer];
  world = [renderer world];
  rootNode = [world rootNode];
  v8 = [rootNode childNodeWithName:? recursively:?];

  camera = [v8 camera];
  [camera fieldOfView];
  v11 = v10;

  return v11;
}

- (void)deprecated_avtui_applyModificationsForFramingMode:(id)mode projectionDirectionModification:(int64_t)modification fieldOfViewModification:(double)viewModification lensShiftModification:
{
  modeCopy = mode;
  renderer = [(AVTSnapshotBuilder *)self renderer];
  world = [renderer world];
  rootNode = [world rootNode];
  v9 = [rootNode childNodeWithName:? recursively:?];

  camera = [v9 camera];
  [camera setFieldOfView:?];

  camera2 = [v9 camera];
  [camera2 setProjectionDirection:?];

  camera3 = [v9 camera];
  [camera3 setFilmOffset:?];
}

@end