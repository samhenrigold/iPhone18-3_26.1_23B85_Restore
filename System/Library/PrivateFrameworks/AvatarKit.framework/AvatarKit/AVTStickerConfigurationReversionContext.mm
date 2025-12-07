@interface AVTStickerConfigurationReversionContext
- (AVTStickerConfigurationReversionContext)init;
- (void)resetForAvatar:(id)avatar;
- (void)revertChangesWithScope:(unint64_t)scope animationDuration:(double)duration;
- (void)saveCustomMaterialPropertyNamed:(id)named forMaterial:(id)material;
- (void)saveExtraCameraNode:(id)node;
- (void)saveExtraPropsNode:(id)node;
- (void)saveShaderModifiers:(id)modifiers forMaterial:(id)material;
- (void)saveShowMemojiBody:(BOOL)body;
@end

@implementation AVTStickerConfigurationReversionContext

- (AVTStickerConfigurationReversionContext)init
{
  v14.receiver = self;
  v14.super_class = AVTStickerConfigurationReversionContext;
  v2 = [(AVTStickerConfigurationReversionContext *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    presetOverrides = v2->_presetOverrides;
    v2->_presetOverrides = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    morpherOverrides = v2->_morpherOverrides;
    v2->_morpherOverrides = v5;

    v7 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:? valueOptions:? capacity:?];
    shaderModifiers = v2->_shaderModifiers;
    v2->_shaderModifiers = v7;

    v9 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:? valueOptions:? capacity:?];
    customMaterialProperties = v2->_customMaterialProperties;
    v2->_customMaterialProperties = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    singleSidedMaterials = v2->_singleSidedMaterials;
    v2->_singleSidedMaterials = v11;
  }

  return v2;
}

- (void)resetForAvatar:(id)avatar
{
  avatarCopy = avatar;
  objc_storeStrong(&self->_avatar, avatar);
  v6 = [(NSMutableArray *)self->_presetOverrides count];
  if (v6)
  {
    v7 = avt_default_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(AVTStickerConfigurationReversionContext *)v7 resetForAvatar:v8, v9, v10, v11, v12, v13, v14];
    }
  }

  v15 = [(NSMutableArray *)self->_morpherOverrides count];
  if (v15)
  {
    v16 = avt_default_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(AVTStickerConfigurationReversionContext *)v16 resetForAvatar:v17, v18, v19, v20, v21, v22, v23];
    }
  }

  v24 = [(NSMapTable *)self->_shaderModifiers count];
  if (v24)
  {
    v25 = avt_default_log(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(AVTStickerConfigurationReversionContext *)v25 resetForAvatar:v26, v27, v28, v29, v30, v31, v32];
    }
  }

  v33 = [(NSMapTable *)self->_customMaterialProperties count];
  if (v33)
  {
    v34 = avt_default_log(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [(AVTStickerConfigurationReversionContext *)v34 resetForAvatar:v35, v36, v37, v38, v39, v40, v41];
    }
  }

  v42 = [(NSMutableArray *)self->_singleSidedMaterials count];
  if (v42)
  {
    v43 = avt_default_log(v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      [(AVTStickerConfigurationReversionContext *)v43 resetForAvatar:v44, v45, v46, v47, v48, v49, v50];
    }
  }

  [(NSMutableArray *)self->_presetOverrides removeAllObjects];
  [(NSMutableArray *)self->_morpherOverrides removeAllObjects];
  [(NSMapTable *)self->_shaderModifiers removeAllObjects];
  [(NSMapTable *)self->_customMaterialProperties removeAllObjects];
  removeAllObjects = [(NSMutableArray *)self->_singleSidedMaterials removeAllObjects];
  if (self->_extraCameraNode)
  {
    v52 = avt_default_log(removeAllObjects);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      [(AVTStickerConfigurationReversionContext *)v52 resetForAvatar:v53, v54, v55, v56, v57, v58, v59];
    }
  }

  if (self->_extraPropsNode)
  {
    v60 = avt_default_log(removeAllObjects);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      [(AVTStickerConfigurationReversionContext *)v60 resetForAvatar:v61, v62, v63, v64, v65, v66, v67];
    }
  }

  extraCameraNode = self->_extraCameraNode;
  self->_extraCameraNode = 0;

  extraPropsNode = self->_extraPropsNode;
  self->_extraPropsNode = 0;

  showMemojiBody = self->_showMemojiBody;
  self->_showMemojiBody = 0;

  objc_storeWeak(&self->_environmentForPointOfViewUpdateFromFramingMode, 0);
}

- (void)saveShaderModifiers:(id)modifiers forMaterial:(id)material
{
  shaderModifiers = self->_shaderModifiers;
  if (modifiers)
  {
    materialCopy = material;
    NSMapInsertIfAbsent(shaderModifiers, materialCopy, modifiers);
  }

  else
  {
    v6 = MEMORY[0x1E695DFB0];
    materialCopy2 = material;
    materialCopy = [v6 null];
    NSMapInsertIfAbsent(shaderModifiers, materialCopy2, materialCopy);
  }
}

- (void)saveCustomMaterialPropertyNamed:(id)named forMaterial:(id)material
{
  namedCopy = named;
  materialCopy = material;
  v7 = [(NSMapTable *)self->_customMaterialProperties objectForKey:?];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:?];
    [NSMapTable setObject:"setObject:forKey:" forKey:?];
  }

  v8 = [v7 objectForKeyedSubscript:?];

  if (!v8)
  {
    v9 = [materialCopy valueForKey:?];
    if (v9)
    {
      [v7 setObject:? forKeyedSubscript:?];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [v7 setObject:? forKeyedSubscript:?];
    }
  }
}

- (void)saveShowMemojiBody:(BOOL)body
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:?];
  showMemojiBody = self->_showMemojiBody;
  self->_showMemojiBody = v4;

  MEMORY[0x1EEE66BB8](v4, showMemojiBody);
}

- (void)saveExtraCameraNode:(id)node
{
  nodeCopy = node;
  v5 = nodeCopy;
  if (self->_extraCameraNode)
  {
    v6 = avt_default_log(nodeCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(AVTStickerConfigurationReversionContext *)v6 saveExtraCameraNode:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  extraCameraNode = self->_extraCameraNode;
  self->_extraCameraNode = v5;
}

- (void)saveExtraPropsNode:(id)node
{
  nodeCopy = node;
  v5 = nodeCopy;
  if (self->_extraPropsNode)
  {
    v6 = avt_default_log(nodeCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(AVTStickerConfigurationReversionContext *)v6 saveExtraPropsNode:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  extraPropsNode = self->_extraPropsNode;
  self->_extraPropsNode = v5;
}

- (void)revertChangesWithScope:(unint64_t)scope animationDuration:(double)duration
{
  if (duration > 0.0)
  {
    [MEMORY[0x1E69DF378] begin];
    [MEMORY[0x1E69DF378] setAnimationDuration:?];
    v7 = MEMORY[0x1E69DF378];
    v8 = [MEMORY[0x1E69793D0] functionWithName:?];
    [v7 setAnimationTimingFunction:?];
  }

  if (scope != 1)
  {
    if (scope)
    {
      goto LABEL_53;
    }

    WeakRetained = objc_loadWeakRetained(&self->_environmentForPointOfViewUpdateFromFramingMode);

    if (WeakRetained)
    {
      v10 = objc_loadWeakRetained(&self->_environmentForPointOfViewUpdateFromFramingMode);
      currentPointOfView = [v10 currentPointOfView];
      extraCameraNode = self->_extraCameraNode;

      if (currentPointOfView == extraCameraNode)
      {
        v13 = objc_loadWeakRetained(&self->_environmentForPointOfViewUpdateFromFramingMode);
        [v13 updatePointOfViewFromFramingMode];
      }

      objc_storeWeak(&self->_environmentForPointOfViewUpdateFromFramingMode, 0);
    }

    [(VFXNode *)self->_extraCameraNode removeFromParentNode];
    v14 = self->_extraCameraNode;
    self->_extraCameraNode = 0;
  }

  v15 = self->_morpherOverrides;
  v16 = [NSMutableArray countByEnumeratingWithState:v15 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v16)
  {
    v17 = v16;
    v18 = MEMORY[0];
    do
    {
      for (i = 0; i != v17; i = (i + 1))
      {
        if (MEMORY[0] != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(8 * i);
        avatarNode = [(AVTAvatar *)self->_avatar avatarNode];
        [v20 applyToAvatar:? inHierarchy:? reversionContext:?];
      }

      v17 = [NSMutableArray countByEnumeratingWithState:v15 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v17);
  }

  [(NSMutableArray *)self->_morpherOverrides removeAllObjects];
  v22 = self->_presetOverrides;
  v23 = [NSMutableArray countByEnumeratingWithState:v22 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v23)
  {
    v24 = v23;
    v25 = MEMORY[0];
    do
    {
      for (j = 0; j != v24; j = (j + 1))
      {
        if (MEMORY[0] != v25)
        {
          objc_enumerationMutation(v22);
        }

        [*(8 * j) applyToAvatar:? reversionContext:?];
      }

      v24 = [NSMutableArray countByEnumeratingWithState:v22 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v24);
  }

  [(NSMutableArray *)self->_presetOverrides removeAllObjects];
  keyEnumerator = [(NSMapTable *)self->_shaderModifiers keyEnumerator];
  v28 = [keyEnumerator countByEnumeratingWithState:? objects:? count:?];
  if (v28)
  {
    v29 = v28;
    v30 = MEMORY[0];
    do
    {
      for (k = 0; k != v29; k = (k + 1))
      {
        if (MEMORY[0] != v30)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v32 = *(8 * k);
        v33 = [(NSMapTable *)self->_shaderModifiers objectForKey:?];
        null = [MEMORY[0x1E695DFB0] null];
        v35 = [v33 isEqual:?];

        if (v35)
        {

          v33 = 0;
        }

        [v32 setShaderModifiers:?];
      }

      v29 = [keyEnumerator countByEnumeratingWithState:? objects:? count:?];
    }

    while (v29);
  }

  [(NSMapTable *)self->_shaderModifiers removeAllObjects];
  keyEnumerator2 = [(NSMapTable *)self->_customMaterialProperties keyEnumerator];
  v37 = [keyEnumerator2 countByEnumeratingWithState:? objects:? count:?];
  if (v37)
  {
    v38 = v37;
    v39 = MEMORY[0];
    do
    {
      for (m = 0; m != v38; m = (m + 1))
      {
        if (MEMORY[0] != v39)
        {
          objc_enumerationMutation(keyEnumerator2);
        }

        v41 = [(NSMapTable *)self->_customMaterialProperties objectForKey:?];
        [v41 enumerateKeysAndObjectsUsingBlock:?];
      }

      v38 = [keyEnumerator2 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v38);
  }

  [(NSMapTable *)self->_customMaterialProperties removeAllObjects];
  v42 = self->_singleSidedMaterials;
  v43 = [NSMutableArray countByEnumeratingWithState:v42 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v43)
  {
    v44 = v43;
    v45 = MEMORY[0];
    do
    {
      for (n = 0; n != v44; n = (n + 1))
      {
        if (MEMORY[0] != v45)
        {
          objc_enumerationMutation(v42);
        }

        [*(8 * n) setDoubleSided:?];
      }

      v44 = [NSMutableArray countByEnumeratingWithState:v42 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v44);
  }

  [(NSMutableArray *)self->_singleSidedMaterials removeAllObjects];
  if (self->_showMemojiBody)
  {
    v47 = self->_avatar;
    if ([(NSNumber *)self->_showMemojiBody BOOLValue])
    {
      [(AVTAvatar *)v47 setShowsBody:?];
    }

    else
    {
      [(AVTAvatar *)v47 setShowsBody:?];
      [(AVTAvatar *)v47 setBodyPose:?];
    }

    showMemojiBody = self->_showMemojiBody;
    self->_showMemojiBody = 0;

    [(AVTAvatar *)v47 updateWithOptions:?];
  }

  [(VFXNode *)self->_extraPropsNode removeFromParentNode];
  extraPropsNode = self->_extraPropsNode;
  self->_extraPropsNode = 0;

LABEL_53:
  if (duration > 0.0)
  {
    [MEMORY[0x1E69DF378] commit];
  }
}

void __84__AVTStickerConfigurationReversionContext_revertChangesWithScope_animationDuration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [MEMORY[0x1E695DFB0] null];
  v7 = [v5 isEqual:?];

  if (v7)
  {

    v5 = 0;
  }

  [*(a1 + 32) setValue:? forKey:?];
}

- (void)resetForAvatar:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_presetOverrides.count == 0";
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Reversion context is being reused but hasn't been reverted beforehand", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)resetForAvatar:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_morpherOverrides.count == 0";
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Reversion context is being reused but hasn't been reverted beforehand", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)resetForAvatar:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_shaderModifiers.count == 0";
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Reversion context is being reused but hasn't been reverted beforehand", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)resetForAvatar:(uint64_t)a3 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_customMaterialProperties.count == 0";
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Reversion context is being reused but hasn't been reverted beforehand", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)resetForAvatar:(uint64_t)a3 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_singleSidedMaterials.count == 0";
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Reversion context is being reused but hasn't been reverted beforehand", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)resetForAvatar:(uint64_t)a3 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_extraCameraNode == nil";
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Reversion context is being reused but hasn't been reverted beforehand", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)resetForAvatar:(uint64_t)a3 .cold.7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_extraPropsNode == nil";
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Reversion context is being reused but hasn't been reverted beforehand", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)saveExtraCameraNode:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_extraCameraNode == nil";
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Can't save more than one camera", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)saveExtraPropsNode:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_extraPropsNode == nil";
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Can't save more than one prop container", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end