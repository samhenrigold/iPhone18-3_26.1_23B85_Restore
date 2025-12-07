@interface AVTVariantBatchSnapshotter
- (AVTVariantBatchSnapshotter)initWithAvatar:(id)avatar size:(CGSize)size scale:(double)scale antialiasingMode:(unint64_t)mode device:(id)device;
- (id)imageWithOptions:(id)options modifications:(id)modifications;
- (void)dealloc;
@end

@implementation AVTVariantBatchSnapshotter

- (AVTVariantBatchSnapshotter)initWithAvatar:(id)avatar size:(CGSize)size scale:(double)scale antialiasingMode:(unint64_t)mode device:(id)device
{
  height = size.height;
  width = size.width;
  v27 = *MEMORY[0x1E69E9840];
  avatarCopy = avatar;
  deviceCopy = device;
  v24.receiver = self;
  v24.super_class = AVTVariantBatchSnapshotter;
  v16 = [(AVTVariantBatchSnapshotter *)&v24 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_avatar, avatar);
    v17->_size.width = width;
    v17->_size.height = height;
    v17->_scale = scale;
    v17->_antialiasingMode = mode;
    [(AVTAvatar *)v17->_avatar setOptimizeForSnapshot:?];
    v25 = @"AVTRendererOptionInitiallyConfigureForARMode";
    v26 = MEMORY[0x1E695E110];
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v19 = [VFXRenderer rendererWithDevice:"rendererWithDevice:options:" options:?];
    renderer = v17->_renderer;
    v17->_renderer = v19;

    [(AVTRenderer *)v17->_renderer setFramingMode:?];
    [(AVTRenderer *)v17->_renderer setAvatar:?];
    v21 = objc_alloc_init(AVTSnapshotHelper);
    snapshotHelper = v17->_snapshotHelper;
    v17->_snapshotHelper = v21;
  }

  return v17;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AVTVariantBatchSnapshotter;
  [(AVTVariantBatchSnapshotter *)&v2 dealloc];
}

- (id)imageWithOptions:(id)options modifications:(id)modifications
{
  v71 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  modificationsCopy = modifications;
  v8 = modificationsCopy;
  if (modificationsCopy)
  {
    (*(modificationsCopy + 2))(modificationsCopy, self->_avatar);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = self->_avatar;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v10 = [optionsCopy objectForKeyedSubscript:?];
    v11 = [v10 countByEnumeratingWithState:? objects:? count:?];
    if (v11)
    {
      v12 = v11;
      v13 = *v68;
      do
      {
        for (i = 0; i != v12; i = (i + 1))
        {
          if (*v68 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v67 + 1) + 8 * i) category];
          [AVTAvatar setPreset:v9 forCategory:"setPreset:forCategory:animated:" animated:?];
        }

        v12 = [v10 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v12);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v15 = [optionsCopy objectForKeyedSubscript:?];
    v16 = [v15 countByEnumeratingWithState:? objects:? count:?];
    if (v16)
    {
      v17 = v16;
      v18 = *v64;
      do
      {
        for (j = 0; j != v17; j = (j + 1))
        {
          if (*v64 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v63 + 1) + 8 * j) category];
          [AVTAvatar setColorPreset:v9 forCategory:"setColorPreset:forCategory:colorIndex:" colorIndex:?];
        }

        v17 = [v15 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v17);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v20 = [optionsCopy objectForKeyedSubscript:?];
    v21 = [v20 countByEnumeratingWithState:? objects:? count:?];
    if (v21)
    {
      v22 = v21;
      v23 = *v60;
      do
      {
        for (k = 0; k != v22; k = (k + 1))
        {
          if (*v60 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v59 + 1) + 8 * k) category];
          [AVTAvatar setColorPreset:v9 forCategory:"setColorPreset:forCategory:colorIndex:" colorIndex:?];
        }

        v22 = [v20 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v22);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v25 = [optionsCopy objectForKeyedSubscript:?];
    v26 = [v25 countByEnumeratingWithState:? objects:? count:?];
    if (v26)
    {
      v27 = v26;
      v28 = *v56;
      do
      {
        for (m = 0; m != v27; m = (m + 1))
        {
          if (*v56 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [*(*(&v55 + 1) + 8 * m) category];
          [AVTAvatar setColorPreset:v9 forCategory:"setColorPreset:forCategory:colorIndex:" colorIndex:?];
        }

        v27 = [v25 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v27);
    }
  }

  [(AVTAvatar *)self->_avatar updateWithOptions:?];
  v30 = [optionsCopy objectForKeyedSubscript:?];
  if (v30)
  {
    [(AVTAvatar *)self->_avatar setPose:?];
  }

  v31 = [optionsCopy objectForKeyedSubscript:?];
  v32 = v31;
  v33 = @"cameraHead";
  if (v31)
  {
    v33 = v31;
  }

  v34 = v33;

  [(AVTRenderer *)self->_renderer setFramingMode:?];
  v35 = [optionsCopy objectForKeyedSubscript:?];
  v36 = v35;
  if (v35)
  {
    v37 = [v35 addToAvatar:? useStaticPhysicsState:?];
  }

  v38 = [optionsCopy objectForKeyedSubscript:?];
  backgroundColor = [(AVTRenderer *)self->_renderer backgroundColor];

  if (backgroundColor != v38)
  {
    [(AVTRenderer *)self->_renderer setBackgroundColor:?];
  }

  [MEMORY[0x1E69DF378] flush];
  scale = self->_scale;
  v41 = (scale * self->_size.width);
  v42 = (scale * self->_size.height);
  v43 = [optionsCopy objectForKeyedSubscript:?];
  [v43 floatValue];

  [(AVTRenderer *)self->_renderer updateAtTime:?];
  renderer = self->_renderer;
  antialiasingMode = self->_antialiasingMode;
  snapshotHelper = self->_snapshotHelper;
  height = self->_size.height;
  v48 = self->_scale;
  v54 = 0;
  v49 = [(AVTSnapshotHelper *)snapshotHelper newImageWithRenderer:antialiasingMode antialiasingMode:v41 pixelWidth:v42 pixelHeight:&v54 imagePointSize:self->_size.width contentScaleFactor:height error:v48];
  v50 = v54;
  v51 = v50;
  if (!v49)
  {
    v52 = avt_default_log(v50);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      [AVTVariantBatchSnapshotter imageWithOptions:v51 modifications:?];
    }
  }

  return v49;
}

- (void)imageWithOptions:(void *)a1 modifications:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_7(&dword_1BB472000, v2, v3, "Error: Failed to create image with error: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end