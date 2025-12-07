@interface AVTMemoji
+ (AVTMemoji)memojiWithContentsOfURL:(id)l usageIntent:(unint64_t)intent error:(id *)error;
+ (double)skinTextureSize;
+ (id)memoji;
+ (id)neutralMemoji;
+ (id)neutralMemojiDataRepresentation;
+ (id)neutralMemojiDescriptor;
+ (id)neutralMemojiPresetsIdentifiersPerCategory;
- (AVTMemoji)initWithCoder:(id)coder;
- (AVTMemoji)initWithDescriptor:(id)descriptor usageIntent:(unint64_t)intent error:(id *)error;
- (BOOL)_addTorsoComponentInstanceIfNeeded;
- (CGImage)createSkinCombinedAOImage;
- (id)_assetNodesForComponentType:(int64_t)type includingBuiltInAssetNodes:(BOOL)nodes includingComponentAssetNode:(BOOL)node;
- (id)_componentInstanceAssetNodesForDependencyOfType:(int64_t)type isAssetSpecific:(BOOL)specific;
- (id)_wrapDeformerDriverInfoForComponentType:(int64_t)type;
- (id)allBuiltinAssetNodes;
- (id)colorPresetForCategory:(int64_t)category;
- (id)colorPresetForCategory:(int64_t)category colorIndex:(unint64_t)index;
- (id)componentWithType:(int64_t)type;
- (id)copyWithUsageIntent:(unint64_t)intent;
- (id)effectiveMorphedNodeForTargetName:(id)name;
- (id)eyebrowsColor;
- (id)facialhairColor;
- (id)hairColor;
- (id)lipsColor;
- (id)newDescriptor;
- (id)secondaryColorPresetForCategory:(int64_t)category;
- (id)skinColor;
- (id)upperNodesIgnoredByDynamics;
- (id)wrapDeformedDriverNamed:(id)named forComponentType:(int64_t)type;
- (void)_applyAllColorPresetsForCategory:(int64_t)category;
- (void)_applyColorPresetForCategory:(int64_t)category colorIndex:(unint64_t)index;
- (void)_applyMorphVariantsForLazyComponentInstanceOfType:(int64_t)type assetNode:(id)node;
- (void)_invalidateSkinAO;
- (void)_locked_invalidate;
- (void)_removeComponent:(id)component;
- (void)_setAssetSpecificVariantDependenciesEnabled:(BOOL)enabled forPreset:(id)preset dirtyComponents:(unint64_t)components;
- (void)_setMorphWeight:(float)weight forDependencyVariant:(id)variant ofType:(int64_t)type isAssetSpecific:(BOOL)specific;
- (void)_setVariantDependenciesEnabled:(BOOL)enabled forPreset:(id)preset dirtyComponents:(unint64_t)components;
- (void)_updateSkinAO;
- (void)_updateWithOptions:(unint64_t)options;
- (void)addComponent:(id)component animated:(BOOL)animated;
- (void)addComponentAssetNode:(id)node toNode:(id)toNode forBodyParts:(unint64_t)parts;
- (void)addDerivedNodesMatchingStickerPattern:(id)pattern toArray:(id)array options:(unint64_t)options;
- (void)applyVariantDependenciesForPreset:(id)preset dirtyComponents:(unint64_t)components;
- (void)componentDidChangeForType:(int64_t)type animated:(BOOL)animated;
- (void)componentMaterialDidUpdate:(id)update;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateActiveWrapDeformerDriversForComponentType:(int64_t)type usingBlock:(id)block;
- (void)randomize;
- (void)rebuildSpecializationSettings;
- (void)removeAllComponents;
- (void)removeComponentAssetNodeFromParentNode:(id)node forBodyParts:(unint64_t)parts;
- (void)removeComponentWithType:(int64_t)type;
- (void)resetToDefault;
- (void)setBodyPose:(id)pose;
- (void)setColorPreset:(id)preset forCategory:(int64_t)category colorIndex:(unint64_t)index;
- (void)setComponentAssetNodeObservationForStickerBlock:(id)block;
- (void)setInstance:(id)instance forComponentType:(int64_t)type;
- (void)setPreset:(id)preset forCategory:(int64_t)category animated:(BOOL)animated;
- (void)setVisibleBodyParts:(unint64_t)parts;
- (void)unapplyVariantDependenciesForPreset:(id)preset dirtyComponents:(unint64_t)components;
- (void)updateBodyPoseForSkinnerVariantsWithDirtyComponents:(unint64_t)components;
- (void)updateEyeLashes;
- (void)updateHighlightsForComponentType:(int64_t)type;
- (void)updateMorphVariantsInNodeHierarchy:(id)hierarchy componentType:(int64_t)type variant:(id)variant weight:(float)weight;
- (void)updateMorphVariantsInStickerPropNodeHierarchy:(id)hierarchy;
- (void)updateSkinMaterial:(id)material;
- (void)updateWithOptions:(unint64_t)options;
- (void)updateWrapDeformerIsActiveForComponentType:(int64_t)type;
@end

@implementation AVTMemoji

+ (id)neutralMemojiDataRepresentation
{
  if (neutralMemojiDataRepresentation_onceToken != -1)
  {
    +[AVTMemoji neutralMemojiDataRepresentation];
  }

  v3 = neutralMemojiDataRepresentation_neutralMemojiData;

  return v3;
}

void __44__AVTMemoji_neutralMemojiDataRepresentation__block_invoke()
{
  v0 = +[AVTResourceLocator sharedResourceLocator];
  v3 = [AVTResourceLocator pathForMemojiResource:v0 ofType:? isDirectory:?];

  v1 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:? options:? error:?];
  v2 = neutralMemojiDataRepresentation_neutralMemojiData;
  neutralMemojiDataRepresentation_neutralMemojiData = v1;
}

+ (id)neutralMemojiDescriptor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__AVTMemoji_neutralMemojiDescriptor__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (neutralMemojiDescriptor_onceToken != -1)
  {
    dispatch_once(&neutralMemojiDescriptor_onceToken, block);
  }

  v2 = neutralMemojiDescriptor_neutralMemojiDescriptor;

  return v2;
}

void __36__AVTMemoji_neutralMemojiDescriptor__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) neutralMemojiDataRepresentation];
  v1 = [MEMORY[0x1E696ACB0] JSONObjectWithData:? options:? error:?];
  v2 = [AVTMemojiDescriptor initWithDictionaryRepresentation:"initWithDictionaryRepresentation:error:isResettingToDefault:" error:? isResettingToDefault:?];
  v3 = neutralMemojiDescriptor_neutralMemojiDescriptor;
  neutralMemojiDescriptor_neutralMemojiDescriptor = v2;
}

+ (id)neutralMemoji
{
  neutralMemojiDescriptor = [self neutralMemojiDescriptor];
  v3 = [AVTMemoji initWithDescriptor:"initWithDescriptor:usageIntent:error:" usageIntent:? error:?];

  return v3;
}

+ (id)neutralMemojiPresetsIdentifiersPerCategory
{
  neutralMemojiDescriptor = [self neutralMemojiDescriptor];
  if (neutralMemojiDescriptor)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:?];
    for (i = 0; i != 40; ++i)
    {
      v5 = [neutralMemojiDescriptor presetIdentifierForCategory:?];
      if (v5)
      {
        v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
        [v3 setObject:? forKeyedSubscript:?];
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dealloc
{
  [(AVTMemoji *)self removeAllComponents];
  CGImageRelease(self->_combinedAOImage);
  self->_combinedAOImage = 0;
  v3.receiver = self;
  v3.super_class = AVTMemoji;
  [(AVTAvatar *)&v3 dealloc];
}

- (void)removeAllComponents
{
  for (i = 0; i != 42; ++i)
  {
    [(AVTMemoji *)self removeComponentWithType:?];
  }
}

- (void)resetToDefault
{
  v2 = +[AVTMemoji neutralMemojiDescriptor];
  [v2 applyToMemoji:?];
}

- (id)newDescriptor
{
  v2 = [AVTMemojiDescriptor alloc];

  return [(AVTMemojiDescriptor *)v2 initWithMemoji:?];
}

- (AVTMemoji)initWithDescriptor:(id)descriptor usageIntent:(unint64_t)intent error:(id *)error
{
  v106 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v103.receiver = self;
  v103.super_class = AVTMemoji;
  v8 = [(AVTAvatar *)&v103 init];
  v9 = v8;
  if (v8)
  {
    v99 = descriptorCopy;
    v8->_usageIntent = intent;
    v8->_updateLock._os_unfair_lock_opaque = 0;
    v8->_visibleBodyParts = 1;
    v10 = objc_alloc_init(AVTAssetResourceCache);
    resourceCache = v9->_resourceCache;
    v9->_resourceCache = v10;

    v12 = objc_alloc_init(AVTPresetStore);
    presetStore = v9->_presetStore;
    v9->_presetStore = v12;

    if (v9->_usageIntent == 2)
    {
      [(AVTAssetResourceCache *)v9->_resourceCache setPolicy:?];
    }

    v9->_componentDirtyMask = -1;
    v9->_componentAnimatedMask = 0;
    node = [MEMORY[0x1E69DF330] node];
    avatarNode = v9->_avatarNode;
    v9->_avatarNode = node;

    [(VFXNode *)v9->_avatarNode setName:?];
    v16 = objc_alloc_init(MEMORY[0x1E69DF330]);
    headComponentContainer = v9->_headComponentContainer;
    v9->_headComponentContainer = v16;

    [(VFXNode *)v9->_headComponentContainer setName:?];
    v18 = objc_alloc_init(MEMORY[0x1E69DF330]);
    bodyComponentContainer = v9->_bodyComponentContainer;
    v9->_bodyComponentContainer = v18;

    [(VFXNode *)v9->_bodyComponentContainer setName:?];
    [(VFXNode *)v9->_bodyComponentContainer setHidden:?];
    v20 = objc_alloc_init(MEMORY[0x1E69DF330]);
    handsComponentContainer = v9->_handsComponentContainer;
    v9->_handsComponentContainer = v20;

    [(VFXNode *)v9->_handsComponentContainer setName:?];
    [(VFXNode *)v9->_handsComponentContainer setHidden:?];
    [(VFXNode *)v9->_avatarNode addChildNode:?];
    [(VFXNode *)v9->_avatarNode addChildNode:?];
    v100 = v9;
    [(VFXNode *)v9->_avatarNode addChildNode:?];
    v22 = [@"main" stringByAppendingPathExtension:?];
    v23 = +[AVTResourceLocator sharedResourceLocator];
    v24 = [(AVTResourceLocator *)v23 urlForMemojiAssetAtPath:1 isDirectory:?];

    v25 = [v24 URLByAppendingPathComponent:? isDirectory:?];
    v26 = [MEMORY[0x1E69DF388] avt_rootNodeForWorldAtURL:? options:? error:?];
    v27 = 0;
    v28 = v27;
    if (v27)
    {
      v29 = avt_default_log(v27);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [AVTMemoji initWithDescriptor:v25 usageIntent:v28 error:?];
      }
    }

    childNodes = [v26 childNodes];
    v31 = [childNodes objectAtIndexedSubscript:?];

    [v31 removeFromParentNode];
    [v31 enumerateHierarchyUsingBlock:?];
    v32 = AVTPrecompiledMemojiAssetWithIdentifier(@"eyes_mouth");
    v33 = [v32 objectForKeyedSubscript:?];
    eyesAndTongueSpecializationSettings = v100->_eyesAndTongueSpecializationSettings;
    v100->_eyesAndTongueSpecializationSettings = v33;

    if (!v100->_eyesAndTongueSpecializationSettings)
    {
      [AVTMemoji initWithDescriptor:usageIntent:error:];
    }

    v35 = v31;
    v36 = [v35 childNodeWithName:? recursively:?];
    eyelashes = v100->_eyelashes;
    v100->_eyelashes = v36;

    v38 = [v35 childNodeWithName:? recursively:?];
    v39 = [v35 childNodeWithName:? recursively:?];
    v97 = v38;
    v40 = [v38 childNodeWithName:? recursively:?];
    model = [v40 model];
    firstMaterial = [model firstMaterial];
    eyeMaterialLeft = v100->_eyeMaterialLeft;
    v100->_eyeMaterialLeft = firstMaterial;

    v96 = v39;
    v44 = [v39 childNodeWithName:? recursively:?];
    model2 = [v44 model];
    firstMaterial2 = [model2 firstMaterial];
    eyeMaterialRight = v100->_eyeMaterialRight;
    v100->_eyeMaterialRight = firstMaterial2;

    [v35 avt_enableSubdivisionOnHierarchyWithQuality:? animoji:?];
    objc_storeStrong(&v100->_eyesAndTongue, v31);
    v98 = v35;
    [(VFXNode *)v100->_headComponentContainer addChildNode:?];
    v48 = +[AVTAssetLibrary sharedAssetLibrary];
    v49 = [v48 assetWithType:? identifier:?];

    v50 = [AVTComponent alloc];
    v95 = v49;
    v105 = v49;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
    v52 = [AVTComponent initWithType:v50 assets:"initWithType:assets:morphVariant:imageVariant:materialVariant:morphVariantIntensity:bodyPoseVariantIntensity:textureAssetPresence:" morphVariant:? imageVariant:? materialVariant:? morphVariantIntensity:? bodyPoseVariantIntensity:? textureAssetPresence:?];

    [AVTMemoji addComponent:v100 animated:"addComponent:animated:"];
    v94 = v52;
    v53 = [AVTComponentInstance initWithComponent:"initWithComponent:assetResourceCache:" assetResourceCache:?];
    [AVTMemoji setInstance:v100 forComponentType:"setInstance:forComponentType:"];
    assetNode = [(AVTComponentInstance *)v53 assetNode];
    headNode = v100->_headNode;
    v100->_headNode = assetNode;

    [(VFXNode *)v100->_headNode setCastsShadow:?];
    [(VFXNode *)v100->_headNode setRenderingOrder:?];
    [(VFXNode *)v100->_headComponentContainer addChildNode:?];
    v56 = +[AVTAssetLibrary sharedAssetLibrary];
    v57 = [v56 assetWithType:? identifier:?];

    v58 = [AVTComponent alloc];
    v93 = v57;
    v104 = v57;
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
    v60 = [AVTComponent initWithType:v58 assets:"initWithType:assets:morphVariant:imageVariant:materialVariant:morphVariantIntensity:bodyPoseVariantIntensity:textureAssetPresence:" morphVariant:? imageVariant:? materialVariant:? morphVariantIntensity:? bodyPoseVariantIntensity:? textureAssetPresence:?];

    v92 = v60;
    [AVTMemoji addComponent:v100 animated:"addComponent:animated:"];
    v61 = [@"main" stringByAppendingPathExtension:?];
    v62 = +[AVTResourceLocator sharedResourceLocator];
    v63 = [(AVTResourceLocator *)v62 urlForMemojiAssetAtPath:1 isDirectory:?];

    v90 = v63;
    v91 = v61;
    v64 = [v63 URLByAppendingPathComponent:? isDirectory:?];
    v65 = [MEMORY[0x1E69DF388] avt_rootNodeForWorldAtURL:? options:? error:?];
    v66 = 0;
    v67 = v66;
    if (v66)
    {
      v68 = avt_default_log(v66);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        [AVTMemoji initWithDescriptor:v64 usageIntent:v67 error:?];
      }
    }

    v88 = v67;
    v89 = v64;
    v87 = v65;
    v69 = [v65 childNodeWithName:? recursively:?];
    skeletonRootNode = v100->_skeletonRootNode;
    v100->_skeletonRootNode = v69;

    [(VFXNode *)v100->_skeletonRootNode removeFromParentNode];
    [(VFXNode *)v100->_avatarNode addChildNode:?];
    v71 = v100->_headComponentContainer;
    v72 = v100;
    [(VFXNode *)v71 enumerateChildNodesUsingBlock:?];
    v73 = objc_alloc_init(AVTCompositor);
    compositor = v72->_compositor;
    v72->_compositor = v73;

    v72->_compositorComponentDirtyMask = -1;
    v102 = +[AVTCompositor propertyNames];
    model3 = [(VFXNode *)v100->_headNode model];
    materials = [model3 materials];

    obj = materials;
    v77 = [materials countByEnumeratingWithState:? objects:? count:?];
    if (v77)
    {
      v78 = v77;
      v79 = MEMORY[0];
      do
      {
        for (i = 0; i != v78; i = (i + 1))
        {
          if (MEMORY[0] != v79)
          {
            objc_enumerationMutation(obj);
          }

          v81 = v102;
          v82 = [v81 countByEnumeratingWithState:? objects:? count:?];
          if (v82)
          {
            v83 = v82;
            v84 = MEMORY[0];
            do
            {
              for (j = 0; j != v83; j = (j + 1))
              {
                if (MEMORY[0] != v84)
                {
                  objc_enumerationMutation(v81);
                }

                [AVTCompositor configureMaterial:"configureMaterial:propertyNamed:memoji:" propertyNamed:? memoji:?];
              }

              v83 = [v81 countByEnumeratingWithState:? objects:? count:?];
            }

            while (v83);
          }
        }

        v78 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v78);
    }

    [(AVTMemoji *)v72 resetToDefault];
    descriptorCopy = v99;
    if (v99)
    {
      [v99 applyToMemoji:?];
      [AVTAvatarMemoryOptimizer optimizeMemoji:v72];
      [(AVTMemoji *)v72 rebuildSpecializationSettings];
      [(AVTAvatar *)v72 _avatarNodeAndHeadNodeAreNowAvailable];
      v9 = v100;
      [AVTAvatar addCustomBehavioursInHierarchy:v72 forBodyParts:"addCustomBehavioursInHierarchy:forBodyParts:"];
      [AVTAvatar addCustomBehavioursInHierarchy:v72 forBodyParts:"addCustomBehavioursInHierarchy:forBodyParts:"];
      [(AVTAvatar *)v72 updateBindings];
      [(AVTMemoji *)v72 updateWithOptions:?];
    }

    else
    {
      [(AVTMemoji *)v72 rebuildSpecializationSettings];
      [(AVTAvatar *)v72 _avatarNodeAndHeadNodeAreNowAvailable];
      v9 = v100;
      [AVTAvatar addCustomBehavioursInHierarchy:v72 forBodyParts:"addCustomBehavioursInHierarchy:forBodyParts:"];
      [AVTAvatar addCustomBehavioursInHierarchy:v72 forBodyParts:"addCustomBehavioursInHierarchy:forBodyParts:"];
      [(AVTAvatar *)v72 updateBindings];
    }
  }

  return v9;
}

void __50__AVTMemoji_initWithDescriptor_usageIntent_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = [v3 name];
  [v2 hasSuffix:?];

  [v3 setCastsShadow:?];
}

void __50__AVTMemoji_initWithDescriptor_usageIntent_error___block_invoke_242(uint64_t a1, void *a2)
{
  v2 = [a2 skinner];
  [v2 setSkeleton:?];
}

+ (id)memoji
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (AVTMemoji)memojiWithContentsOfURL:(id)l usageIntent:(unint64_t)intent error:(id *)error
{
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:? options:? error:?];
  v7 = [self avatarWithDataRepresentation:? usageIntent:? error:?];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  newDescriptor = [(AVTMemoji *)self newDescriptor];
  [coderCopy encodeObject:? forKey:?];
}

- (AVTMemoji)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];

  v6 = [AVTMemoji initWithDescriptor:"initWithDescriptor:usageIntent:error:" usageIntent:? error:?];
  return v6;
}

- (id)copyWithUsageIntent:(unint64_t)intent
{
  v16 = *MEMORY[0x1E69E9840];
  usageIntent = self->_usageIntent;
  if (usageIntent != intent && usageIntent != 0)
  {
    v7 = avt_default_log(self);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_usageIntent;
      v12 = 134218240;
      intentCopy = intent;
      v14 = 2048;
      v15 = v8;
      _os_log_impl(&dword_1BB472000, v7, OS_LOG_TYPE_DEFAULT, "Can't make a copy with usage intent %lu of a Memoji whose usage intent is %lu", &v12, 0x16u);
    }
  }

  v9 = [[AVTMemojiDescriptor alloc] initWithMemoji:?];
  v10 = [objc_alloc(objc_opt_class()) initWithDescriptor:? usageIntent:? error:?];

  return v10;
}

- (id)skinColor
{
  v2 = [(AVTMemoji *)self colorPresetForCategory:?];
  baseColor = [v2 baseColor];

  return baseColor;
}

- (id)hairColor
{
  v2 = [(AVTMemoji *)self colorPresetForCategory:?];
  baseColor = [v2 baseColor];

  return baseColor;
}

- (id)eyebrowsColor
{
  v2 = [(AVTMemoji *)self colorPresetForCategory:?];
  baseColor = [v2 baseColor];

  return baseColor;
}

- (id)facialhairColor
{
  v2 = [(AVTMemoji *)self colorPresetForCategory:?];
  baseColor = [v2 baseColor];

  return baseColor;
}

- (id)lipsColor
{
  v2 = [(AVTMemoji *)self colorPresetForCategory:?];
  baseColor = [v2 baseColor];

  return baseColor;
}

- (void)_invalidateSkinAO
{
  self->_skinAOIsValid = 0;
  combinedAOImage = self->_combinedAOImage;
  if (combinedAOImage)
  {
    CGImageRelease(combinedAOImage);
    self->_combinedAOImage = 0;
  }
}

- (void)_applyAllColorPresetsForCategory:(int64_t)category
{
  for (i = 0; i != 3; ++i)
  {
    [AVTMemoji _applyColorPresetForCategory:"_applyColorPresetForCategory:colorIndex:" colorIndex:?];
  }
}

- (void)_applyColorPresetForCategory:(int64_t)category colorIndex:(unint64_t)index
{
  if (index >= 3)
  {
    [AVTMemoji _applyColorPresetForCategory:colorIndex:];
  }

  v7 = self->_colorPresets[category];
  v18 = v7[index];
  v9 = AVTPresetCategoryToComponentType(category, v8);
  v10 = [(AVTMemoji *)self componentWithType:?];
  v11 = v10;
  if (index == 1)
  {
    if (category == 7)
    {
      if (v18)
      {
        makeMaterial = [(AVTColorPreset *)v18 makeMaterial];
        makeMaterial2 = makeMaterial;
        goto LABEL_11;
      }

      v15 = *v7;
      makeMaterial2 = [(AVTColorPreset *)v15 makeMaterial];
      [makeMaterial2 applyToVFXMaterial:?];
LABEL_23:

      goto LABEL_26;
    }

    if (!v10)
    {
      goto LABEL_27;
    }

LABEL_25:
    makeMaterial2 = [(AVTColorPreset *)v18 makeMaterial];
    [v11 setMaterial:? atIndex:?];
    [(AVTMemoji *)self componentMaterialDidUpdate:?];
    goto LABEL_26;
  }

  if (index)
  {
    if (!v10)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (!v18)
  {
    goto LABEL_27;
  }

  if (category != 7)
  {
    if (v9 == 28)
    {
      makeMaterial2 = [(AVTColorPreset *)v18 makeMaterial];
      [v11 setMaterial:? atIndex:?];
      [(AVTMemoji *)self componentMaterialDidUpdate:?];
      v14 = [(AVTMemoji *)self componentWithType:?];
      v15 = v14;
      if (v14)
      {
        [AVTColorPreset setMaterial:v14 atIndex:"setMaterial:atIndex:"];
        [(AVTMemoji *)self componentMaterialDidUpdate:?];
      }

      v16 = [(AVTMemoji *)self componentWithType:?];
      v17 = v16;
      if (v16)
      {
        [v16 setMaterial:? atIndex:?];
        [(AVTMemoji *)self componentMaterialDidUpdate:?];
      }

      [(AVTCompositor *)self->_compositor skinColorDidChange];

      goto LABEL_23;
    }

    if (!v10)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  makeMaterial2 = [(AVTColorPreset *)v18 makeMaterial];
  [makeMaterial2 applyToVFXMaterial:?];
  if (!v7[1])
  {
    makeMaterial = makeMaterial2;
LABEL_11:
    [makeMaterial applyToVFXMaterial:?];
  }

LABEL_26:

LABEL_27:
}

- (id)colorPresetForCategory:(int64_t)category
{
  if (category < 40)
  {
    v4 = self->_colorPresets[category][0];
  }

  else
  {
    v3 = avt_default_log(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [AVTMemojiDescriptor presetIdentifierForCategory:];
    }

    v4 = 0;
  }

  return v4;
}

- (id)secondaryColorPresetForCategory:(int64_t)category
{
  if (category < 40)
  {
    v4 = self->_colorPresets[category][1];
  }

  else
  {
    v3 = avt_default_log(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [AVTMemojiDescriptor presetIdentifierForCategory:];
    }

    v4 = 0;
  }

  return v4;
}

- (id)colorPresetForCategory:(int64_t)category colorIndex:(unint64_t)index
{
  if (category < 40)
  {
    if (index >= 3)
    {
      [AVTMemoji colorPresetForCategory:colorIndex:];
    }

    v5 = self->_colorPresets[category][index];
  }

  else
  {
    v4 = avt_default_log(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [AVTMemojiDescriptor presetIdentifierForCategory:];
    }

    v5 = 0;
  }

  return v5;
}

- (void)setColorPreset:(id)preset forCategory:(int64_t)category colorIndex:(unint64_t)index
{
  presetCopy = preset;
  v9 = presetCopy;
  if (category >= 40)
  {
    v10 = avt_default_log(presetCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [AVTMemojiDescriptor presetIdentifierForCategory:];
    }

LABEL_17:
    return;
  }

  if (presetCopy)
  {
    category = [presetCopy category];
    if (category != category)
    {
      v12 = avt_default_log(category);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [AVTMemojiDescriptor setColorPreset:forCategory:colorIndex:];
      }
    }

    if (index <= 2)
    {
LABEL_11:
      os_unfair_lock_lock(&self->_updateLock);
      v13 = &self->_colorPresets[category][index];
      if (*v13 != v9)
      {
        objc_storeStrong(v13, v9);
        [AVTMemoji _applyColorPresetForCategory:"_applyColorPresetForCategory:colorIndex:" colorIndex:?];
        if (index == 1)
        {
          v15 = AVTPresetCategoryToComponentType(category, v14);
          if (v15 != 42)
          {
            self->_compositorComponentDirtyMask |= 1 << v15;
          }
        }

        [(AVTMemoji *)self _locked_invalidate];
      }

      os_unfair_lock_unlock(&self->_updateLock);
      goto LABEL_17;
    }

LABEL_25:
    [AVTMemoji setColorPreset:forCategory:colorIndex:];
  }

  if (index >= 3)
  {
    goto LABEL_25;
  }

  if (index)
  {
    v16 = [AVTColorPreset fallbackColorPresetForNilPresetAndCategory:"fallbackColorPresetForNilPresetAndCategory:colorIndex:" colorIndex:?];
    v9 = v16;
    if (v16)
    {
      v17 = avt_default_log(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [AVTMemoji setColorPreset:category forCategory:? colorIndex:?];
      }
    }

    goto LABEL_11;
  }
}

- (id)componentWithType:(int64_t)type
{
  if (type == 42)
  {
    v4 = 0;
  }

  else
  {
    v4 = self->_components[type];
  }

  return v4;
}

- (void)addComponent:(id)component animated:(BOOL)animated
{
  componentCopy = component;
  v7 = componentCopy;
  if (componentCopy)
  {
    v8 = self->_components[[componentCopy type]];
    [(AVTMemoji *)self _removeComponent:?];
    assets = [v7 assets];
    v10 = [assets countByEnumeratingWithState:? objects:? count:?];
    if (v10)
    {
      v11 = v10;
      v12 = MEMORY[0];
      do
      {
        for (i = 0; i != v11; i = (i + 1))
        {
          if (MEMORY[0] != v12)
          {
            objc_enumerationMutation(assets);
          }

          [(AVTAssetResourceCache *)self->_resourceCache retainAsset:?];
        }

        v11 = [assets countByEnumeratingWithState:? objects:? count:?];
      }

      while (v11);
    }

    objc_storeStrong(&self->_components[[v7 type]], component);
    [v7 type];
    [AVTMemoji componentDidChangeForType:"componentDidChangeForType:animated:" animated:?];
  }
}

- (void)removeComponentWithType:(int64_t)type
{
  v4 = [(AVTMemoji *)self componentWithType:?];
  [(AVTMemoji *)self _removeComponent:?];
  [AVTMemoji componentDidChangeForType:"componentDidChangeForType:animated:" animated:?];
}

- (void)_removeComponent:(id)component
{
  componentCopy = component;
  v5 = componentCopy;
  if (componentCopy)
  {
    assets = [componentCopy assets];
    v7 = [assets countByEnumeratingWithState:? objects:? count:?];
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
            objc_enumerationMutation(assets);
          }

          [(AVTAssetResourceCache *)self->_resourceCache releaseAsset:?];
        }

        v8 = [assets countByEnumeratingWithState:? objects:? count:?];
      }

      while (v8);
    }

    components = self->_components;
    type = [v5 type];
    v13 = components[type];
    components[type] = 0;
  }
}

- (void)_locked_invalidate
{
  if (!self->_needsUpdate)
  {
    self->_needsUpdate = 1;
    avatarNode = [(AVTMemoji *)self avatarNode];
    [avatarNode renderingOrder];
    [avatarNode setRenderingOrder:?];
    [avatarNode setRenderingOrder:?];
  }
}

- (void)componentDidChangeForType:(int64_t)type animated:(BOOL)animated
{
  if (type != 42)
  {
    self->_componentDirtyMask |= 1 << type;
    if (animated)
    {
      self->_componentAnimatedMask |= 1 << type;
    }

    [(AVTMemoji *)self _locked_invalidate];
  }
}

- (void)componentMaterialDidUpdate:(id)update
{
  updateCopy = update;
  self->_compositorComponentDirtyMask |= 1 << [updateCopy type];
  if ([updateCopy type] != 28)
  {
    -[AVTComponentInstance updateMaterialsWithComponent:](self->_componentInstances[[updateCopy type]], "updateMaterialsWithComponent:");
  }

  if ([updateCopy type] == 2)
  {
    v4 = 4;
  }

  else if ([updateCopy type] == 11)
  {
    v4 = 2048;
  }

  else
  {
    if ([updateCopy type] != 12)
    {
      goto LABEL_10;
    }

    v4 = 4096;
  }

  self->_componentDirtyMask |= v4;
  [(AVTMemoji *)self _locked_invalidate];
LABEL_10:
}

- (void)randomize
{
  [MEMORY[0x1E69DF378] lock];
  [(AVTMemoji *)self resetToDefault];
  [MEMORY[0x1E69DF378] begin];
  [MEMORY[0x1E69DF378] setAnimationDuration:?];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __22__AVTMemoji_randomize__block_invoke;
  v4[3] = &unk_1E7F49AB0;
  v4[4] = self;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __22__AVTMemoji_randomize__block_invoke_2;
  v3[3] = &unk_1E7F49AD8;
  v3[4] = self;
  _AVTMemojiRandomize(v4, v3);
  [MEMORY[0x1E69DF378] commit];
  [MEMORY[0x1E69DF378] unlock];
}

- (void)setPreset:(id)preset forCategory:(int64_t)category animated:(BOOL)animated
{
  presetCopy = preset;
  v8 = presetCopy;
  if (presetCopy)
  {
    category = [presetCopy category];
    if (category != category)
    {
      v10 = avt_default_log(category);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [AVTMemoji setPreset:forCategory:animated:];
      }
    }

    os_unfair_lock_lock(&self->_updateLock);
    v11 = [(AVTPresetStore *)&self->_presetStore->super.isa presetForCategory:category];
    v12 = v11;
    if (v11 == v8 || ([v11 identifier], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "identifier"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToString:"), v14, v13, (v15 & 1) != 0))
    {
      os_unfair_lock_unlock(&self->_updateLock);
    }

    else
    {
      v16 = [(AVTPresetStore *)self->_presetStore setPreset:v8 forCategory:category];
      for (i = 0; i != 40; ++i)
      {
        if ((v16 >> i))
        {
          v18 = [(AVTPresetStore *)&self->_presetStore->super.isa resolvedPresetForCategory:?];
          v20 = v18;
          if (v18)
          {
            newComponent = [v18 newComponent];
            if (newComponent)
            {
              [AVTMemoji addComponent:"addComponent:animated:" animated:?];
            }

            else
            {
              v23 = AVTPresetCategoryToComponentType(i, v21);
              if (v23 > 0x2A || ((1 << v23) & 0x40400000001) == 0)
              {
                [(AVTMemoji *)self removeComponentWithType:?];
              }
            }

            [(AVTMemoji *)self _applyAllColorPresetsForCategory:?];
          }

          else if (AVTPresetCategoryToComponentType(i, v19) != 42)
          {
            [(AVTMemoji *)self removeComponentWithType:?];
          }
        }
      }

      os_unfair_lock_unlock(&self->_updateLock);
    }
  }
}

- (void)addComponentAssetNode:(id)node toNode:(id)toNode forBodyParts:(unint64_t)parts
{
  nodeCopy = node;
  [toNode addChildNode:?];
  [AVTAvatar addCustomBehavioursInHierarchy:"addCustomBehavioursInHierarchy:forBodyParts:" forBodyParts:?];
  componentAssetNodeObservationForStickerBlock = self->_componentAssetNodeObservationForStickerBlock;
  if (componentAssetNodeObservationForStickerBlock)
  {
    componentAssetNodeObservationForStickerBlock[2](componentAssetNodeObservationForStickerBlock, self, nodeCopy, 0);
  }
}

- (void)removeComponentAssetNodeFromParentNode:(id)node forBodyParts:(unint64_t)parts
{
  nodeCopy = node;
  componentAssetNodeObservationForStickerBlock = self->_componentAssetNodeObservationForStickerBlock;
  v7 = nodeCopy;
  if (componentAssetNodeObservationForStickerBlock)
  {
    componentAssetNodeObservationForStickerBlock[2](componentAssetNodeObservationForStickerBlock, self, nodeCopy, 1);
    nodeCopy = v7;
  }

  [nodeCopy removeFromParentNode];
  [AVTAvatar removeCustomBehavioursInHierarchy:"removeCustomBehavioursInHierarchy:forBodyParts:" forBodyParts:?];
}

+ (double)skinTextureSize
{
  if (skinTextureSize_onceToken != -1)
  {
    +[AVTMemoji skinTextureSize];
  }

  return 1024.0;
}

void __28__AVTMemoji_skinTextureSize__block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  [v0 userInterfaceIdiom];
}

- (CGImage)createSkinCombinedAOImage
{
  +[AVTMemoji skinTextureSize];
  v4 = v3;
  v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v6 = CGBitmapContextCreate(0, v4, v4, 8uLL, 4 * v4, v5, 5u);
  CGColorSpaceRelease(v5);
  CGContextSetRGBFillColor(v6, 1.0, 1.0, 1.0, 1.0);
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = v4;
  v24.size.height = v4;
  CGContextFillRect(v6, v24);
  v21 = [(AVTMemoji *)self componentWithType:?];

  for (i = 0; i != 42; ++i)
  {
    if (i != 5 || !v21)
    {
      v23 = i;
      v22 = [(AVTMemoji *)self componentWithType:?];
      assets = [v22 assets];
      v9 = [assets countByEnumeratingWithState:? objects:? count:?];
      if (v9)
      {
        v10 = v9;
        v11 = MEMORY[0];
        do
        {
          for (j = 0; j != v10; j = (j + 1))
          {
            if (MEMORY[0] != v11)
            {
              objc_enumerationMutation(assets);
            }

            ambientOcclusion = [*(8 * j) ambientOcclusion];
            if (ambientOcclusion)
            {
              v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:? isDirectory:?];
              v15 = CGImageSourceCreateWithURL(v14, 0);
              if (v15)
              {
                v16 = v15;
                ImageAtIndex = CGImageSourceCreateImageAtIndex(v15, 0, 0);
                if (ImageAtIndex)
                {
                  v18 = ImageAtIndex;
                  CGContextSetBlendMode(v6, kCGBlendModeDarken);
                  v25.origin.x = 0.0;
                  v25.origin.y = 0.0;
                  v25.size.width = v4;
                  v25.size.height = v4;
                  CGContextDrawImage(v6, v25, v18);
                  CGImageRelease(v18);
                }

                CFRelease(v16);
              }
            }
          }

          v10 = [assets countByEnumeratingWithState:? objects:? count:?];
        }

        while (v10);
      }

      i = v23;
    }
  }

  Image = CGBitmapContextCreateImage(v6);
  CGContextRelease(v6);
  return Image;
}

- (void)updateSkinMaterial:(id)material
{
  materialCopy = material;
  if (!self->_skinAOIsValid)
  {
    [(AVTMemoji *)self _updateSkinAO];
    self->_skinAOIsValid = 1;
  }

  model = [(VFXNode *)self->_headNode model];
  materials = [model materials];

  obj = materials;
  v6 = [materials countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v7 = v6;
    v33 = MEMORY[0];
    do
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (MEMORY[0] != v33)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(8 * i);
        v10 = +[AVTResourceLocator sharedResourceLocator];
        v11 = [AVTResourceLocator pathForMemojiResource:v10 ofType:? inDirectory:? isDirectory:?];
        multiply = [v9 multiply];
        [multiply setContents:?];

        facialhairColor = [(AVTMemoji *)self facialhairColor];
        [v9 setValue:? forKey:?];

        hairColor = [(AVTMemoji *)self hairColor];
        [v9 setValue:? forKey:?];

        lipsColor = [(AVTMemoji *)self lipsColor];
        [v9 setValue:? forKey:?];

        eyebrowsColor = [(AVTMemoji *)self eyebrowsColor];
        [v9 setValue:? forKey:?];

        v17 = [(AVTMemoji *)self componentWithType:?];
        [v17 textureAssetPresence];

        v18 = [(AVTMemoji *)self componentWithType:?];
        [v18 textureAssetPresence];

        v19 = [(AVTMemoji *)self componentWithType:?];
        [v19 textureAssetPresence];

        v20 = [(AVTMemoji *)self componentWithType:?];
        v21 = [v20 materialAtIndex:?];
        additionalPropertyColors = [v21 additionalPropertyColors];
        v23 = [additionalPropertyColors objectForKeyedSubscript:?];

        if (v23)
        {
          v24 = [MEMORY[0x1E696B098] avt_valueWithFloat4_usableWithKVCForSCNVector4:?];
          [v9 setValue:? forKey:?];

          AVTGetColorComponents(v23);
        }

        else
        {
          v25 = [(AVTMemoji *)self colorPresetForCategory:?];
          [v25 variation];
        }

        v26 = [MEMORY[0x1E696B098] avt_valueWithFloat4_usableWithKVCForSCNVector4:?];
        [v9 setValue:? forKey:?];

        v27 = [(AVTMemoji *)self componentWithType:?];
        v28 = [v27 materialAtIndex:?];
        additionalPropertyColors2 = [v28 additionalPropertyColors];
        [additionalPropertyColors2 enumerateKeysAndObjectsUsingBlock:?];
      }

      v7 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v7);
  }
}

void __32__AVTMemoji_updateSkinMaterial___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) valueForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    AVTGetColorComponents(v5);
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696B098] avt_valueWithFloat4:?];
    [v7 setValue:? forKeyPath:?];
  }
}

- (void)updateEyeLashes
{
  v14 = self->_eyelashes;
  assetImage = [(AVTComponentInstance *)self->_componentInstances[2] assetImage];
  if (assetImage)
  {
    [(VFXNode *)v14 setHidden:?];
    model = [(VFXNode *)v14 model];
    firstMaterial = [model firstMaterial];
    transparent = [firstMaterial transparent];
    [transparent setContents:?];

    v7 = [(AVTMemoji *)self componentWithType:?];
    v8 = [v7 materialAtIndex:?];
    v9 = v8;
    if (v8)
    {
      baseColor = [v8 baseColor];
      model2 = [(VFXNode *)v14 model];
      firstMaterial2 = [model2 firstMaterial];
      diffuse = [firstMaterial2 diffuse];
      [diffuse setContents:?];
    }
  }

  else
  {
    [(VFXNode *)v14 setHidden:?];
  }
}

- (void)updateHighlightsForComponentType:(int64_t)type
{
  if (type == 11)
  {
    v5 = 5;
    v6 = 15;
  }

  else
  {
    if (type != 12)
    {
      [AVTMemoji updateHighlightsForComponentType:];
    }

    v5 = 3;
    v6 = 16;
  }

  assetNode = [(AVTComponentInstance *)self->_componentInstances[v5] assetNode];
  if (assetNode)
  {
    v23 = self->_colorPresets[v6][0];
    makeMaterial = [(AVTColorPreset *)v23 makeMaterial];
    baseColor = [makeMaterial baseColor];
    v10 = baseColor;
    if (baseColor)
    {
      v11 = baseColor;
    }

    else
    {
      v11 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
    }

    v12 = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    additionalPropertyColors = [makeMaterial additionalPropertyColors];
    v26 = v13;
    [additionalPropertyColors enumerateKeysAndObjectsUsingBlock:?];

    v15 = self->_components[v5];
    v16 = self->_componentInstances[type];
    v17 = [(AVTPresetStore *)&self->_presetStore->super.isa presetForCategory:v6];
    identifier = [v17 identifier];
    [identifier isEqualToString:?];
    v24 = v15;
    v25 = v12;
    v19 = v26;
    v20 = v12;
    v21 = v16;
    v22 = v15;
    [assetNode enumerateHierarchyUsingBlock:?];
  }
}

void __46__AVTMemoji_updateHighlightsForComponentType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  AVTGetColorComponents(a3);
  v6 = [MEMORY[0x1E696B098] avt_valueWithFloat4:?];
  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

void __46__AVTMemoji_updateHighlightsForComponentType___block_invoke_2(uint64_t a1, void *a2)
{
  v32 = a2;
  v3 = [v32 model];
  v4 = [v3 materials];

  if (*(a1 + 64) == 1)
  {
    v5 = [*(a1 + 32) assets];
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = v6;
      obj = v4;
      v8 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v7; i = (i + 1))
        {
          if (MEMORY[0] != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(8 * i);
          v11 = [v32 name];
          v12 = [v10 identifier];
          v13 = [v11 isEqualToString:?];

          if (v13)
          {
            v19 = obj;
            v20 = [v19 countByEnumeratingWithState:? objects:? count:?];
            if (v20)
            {
              v21 = v20;
              v22 = MEMORY[0];
              do
              {
                for (j = 0; j != v21; j = (j + 1))
                {
                  if (MEMORY[0] != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(8 * j);
                  v25 = [*(a1 + 40) assetImageForAsset:?];
                  v26 = [v24 emission];
                  [v26 setContents:?];
                }

                v21 = [v19 countByEnumeratingWithState:? objects:? count:?];
              }

              while (v21);
            }

            goto LABEL_27;
          }
        }

        v7 = [v5 countByEnumeratingWithState:? objects:? count:?];
        if (v7)
        {
          continue;
        }

        break;
      }

LABEL_27:
      v4 = obj;
    }
  }

  else
  {
    v5 = v4;
    v14 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v14)
    {
      v15 = v14;
      v16 = MEMORY[0];
      do
      {
        for (k = 0; k != v15; k = (k + 1))
        {
          if (MEMORY[0] != v16)
          {
            objc_enumerationMutation(v5);
          }

          v18 = [*(8 * k) emission];
          [v18 setContents:?];
        }

        v15 = [v5 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v15);
    }
  }

  obja = v4;
  v27 = [obja countByEnumeratingWithState:? objects:? count:?];
  if (v27)
  {
    v28 = v27;
    v29 = MEMORY[0];
    do
    {
      for (m = 0; m != v28; m = (m + 1))
      {
        if (MEMORY[0] != v29)
        {
          objc_enumerationMutation(obja);
        }

        v31 = [*(8 * m) selfIllumination];
        [v31 setContents:?];

        [*(a1 + 56) enumerateKeysAndObjectsUsingBlock:?];
      }

      v28 = [obja countByEnumeratingWithState:? objects:? count:?];
    }

    while (v28);
  }
}

- (void)_updateSkinAO
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__7;
  v23 = __Block_byref_object_dispose__7;
  v24 = 0;
  [(VFXNode *)self->_headNode enumerateHierarchyUsingBlock:?];
  [v20[5] setContents:?];
  [v20[5] setIntensity:?];
  v17 = [(AVTMemoji *)self componentWithType:?];

  v2 = 0;
  v3 = 0;
  for (i = 0; i != 42; ++i)
  {
    if (i != 5 || !v17)
    {
      v18 = [(AVTMemoji *)self componentWithType:?];
      assets = [v18 assets];
      v6 = [assets countByEnumeratingWithState:? objects:? count:?];
      if (v6)
      {
        v7 = MEMORY[0];
        while (2)
        {
          for (j = 0; j != v6; j = (j + 1))
          {
            if (MEMORY[0] != v7)
            {
              objc_enumerationMutation(assets);
            }

            ambientOcclusion = [*(8 * j) ambientOcclusion];
            v10 = ambientOcclusion;
            if (ambientOcclusion)
            {
              v11 = ambientOcclusion;

              if (v2 > 0)
              {

                v3 = v11;
                ++v2;
                goto LABEL_16;
              }

              v3 = v11;
              ++v2;
            }
          }

          v6 = [assets countByEnumeratingWithState:? objects:? count:?];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }
  }

  if (v2 > 1)
  {
    createSkinCombinedAOImage = [(AVTMemoji *)self createSkinCombinedAOImage];
    self->_combinedAOImage = createSkinCombinedAOImage;
    v13 = createSkinCombinedAOImage;

    v3 = v13;
  }

  if (v3)
  {
    [v20[5] setContents:?];
  }

  else
  {
    v14 = +[AVTResourceLocator sharedResourceLocator];
    v15 = [AVTResourceLocator pathForMemojiResource:v14 ofType:? inDirectory:? isDirectory:?];

    [v20[5] setContents:?];
  }

  _Block_object_dispose(&v19, 8);
}

void __26__AVTMemoji__updateSkinAO__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 model];
  if (v5)
  {
    v10 = v5;
    v6 = [v5 firstMaterial];
    v7 = [v6 ambientOcclusion];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v5 = v10;
    *a3 = 1;
  }
}

- (void)updateWithOptions:(unint64_t)options
{
  if (self->_needsUpdate)
  {
    os_unfair_lock_lock(&self->_updateLock);
    if (self->_needsUpdate)
    {
      [(AVTMemoji *)self _updateWithOptions:?];
      [(AVTMemoji *)self rebuildSpecializationSettings];
    }

    os_unfair_lock_unlock(&self->_updateLock);
  }
}

- (void)setInstance:(id)instance forComponentType:(int64_t)type
{
  instanceCopy = instance;
  v7 = self->_componentInstances[type];
  AVTAvatarBodyPartForComponentType(type);
  assetNode = [(AVTComponentInstance *)v7 assetNode];
  [AVTMemoji removeComponentAssetNodeFromParentNode:"removeComponentAssetNodeFromParentNode:forBodyParts:" forBodyParts:?];

  objc_storeStrong(&self->_componentInstances[type], instance);
  if (-[AVTComponentInstance has2DAsset](v7, "has2DAsset") || [instanceCopy has2DAsset])
  {
    self->_compositorComponentDirtyMask |= 1 << type;
  }

  if (type <= 8)
  {
    if (((1 << type) & 0x3A) != 0)
    {
      if (!-[AVTComponentInstance has3DAsset](v7, "has3DAsset") && ![instanceCopy has3DAsset])
      {
        goto LABEL_11;
      }
    }

    else if (((1 << type) & 0x1C0) == 0)
    {
      goto LABEL_11;
    }

    [(AVTMemoji *)self _invalidateSkinAO];
  }

LABEL_11:
}

- (BOOL)_addTorsoComponentInstanceIfNeeded
{
  torsoNode = self->_torsoNode;
  if (!torsoNode)
  {
    components = self->_components;
    v5 = self->_components[34];
    if (!v5)
    {
      v6 = avt_default_log(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [AVTMemoji _addTorsoComponentInstanceIfNeeded];
      }
    }

    v7 = [AVTComponentInstance initWithComponent:"initWithComponent:assetResourceCache:" assetResourceCache:?];
    [AVTMemoji setInstance:"setInstance:forComponentType:" forComponentType:?];
    assetNode = [(AVTComponentInstance *)v7 assetNode];
    v9 = self->_torsoNode;
    self->_torsoNode = assetNode;

    [AVTMemoji addComponentAssetNode:"addComponentAssetNode:toNode:forBodyParts:" toNode:? forBodyParts:?];
    [AVTAvatar resetPresentationConfigurationBehavioursInHierarchy:"resetPresentationConfigurationBehavioursInHierarchy:forBodyParts:" forBodyParts:?];
    v10 = [(AVTComponent *)components[28] materialAtIndex:?];
    [AVTComponent setMaterial:v5 atIndex:"setMaterial:atIndex:"];
    [(AVTMemoji *)self componentMaterialDidUpdate:?];
    bodyComponentContainer = self->_bodyComponentContainer;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __47__AVTMemoji__addTorsoComponentInstanceIfNeeded__block_invoke;
    v16 = &unk_1E7F47B10;
    selfCopy = self;
    [(VFXNode *)bodyComponentContainer enumerateChildNodesUsingBlock:?];
    [AVTMemoji _didInstantiateLazyComponentInstanceOfType:"_didInstantiateLazyComponentInstanceOfType:assetNode:" assetNode:?];
  }

  return torsoNode == 0;
}

void __47__AVTMemoji__addTorsoComponentInstanceIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 skinner];
  [v2 setSkeleton:?];
}

- (id)_wrapDeformerDriverInfoForComponentType:(int64_t)type
{
  if (type == 7)
  {
    v3 = 352;
  }

  else
  {
    if (type != 35)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v3 = 344;
  }

  v4 = (&self->super.super.isa + v3);
  v5 = *(&self->super.super.isa + v3);
  if (!v5)
  {
    v6 = objc_alloc_init(AVTMemojiWrapDeformerDriverInfo);
    v7 = *v4;
    *v4 = v6;

    v5 = *v4;
  }

  v8 = v5;
LABEL_9:

  return v8;
}

- (id)wrapDeformedDriverNamed:(id)named forComponentType:(int64_t)type
{
  namedCopy = named;
  v7 = [(AVTMemoji *)self _wrapDeformerDriverInfoForComponentType:?];
  v8 = v7;
  if (v7)
  {
    v9 = [*(v7 + 8) objectForKeyedSubscript:?];
    if (!v9)
    {
      v10 = [@"main" stringByAppendingPathExtension:?];
      namedCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"drivers", namedCopy];
      v22 = v10;
      v12 = [namedCopy stringByAppendingPathComponent:?];
      v13 = +[AVTResourceLocator sharedResourceLocator];
      v14 = [(AVTResourceLocator *)v13 urlForMemojiAssetAtPath:v12 isDirectory:0];

      v9 = [MEMORY[0x1E69DF388] avt_nodeNamed:? forWorldAtURL:? options:? error:?];
      v15 = 0;
      v16 = v15;
      if (v15)
      {
        v17 = avt_default_log(v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [AVTMemoji initWithDescriptor:v14 usageIntent:v16 error:?];
        }
      }

      if (!v9)
      {
        v18 = avt_default_log(v15);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [AVTMemoji wrapDeformedDriverNamed:forComponentType:];
        }
      }

      [v9 setHidden:?];
      [v9 removeFromParentNode];
      [(VFXNode *)self->_bodyComponentContainer addChildNode:?];
      [v9 enumerateChildNodesUsingBlock:?];
      [v8[1] setObject:? forKeyedSubscript:?];
      v19 = [v8[1] count];
      if (v19 >= 9)
      {
        v20 = avt_default_log(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [AVTMemoji wrapDeformedDriverNamed:forComponentType:];
        }
      }

      [AVTMemoji _didInstantiateLazyComponentInstanceOfType:"_didInstantiateLazyComponentInstanceOfType:assetNode:" assetNode:?];
      if (type == 7)
      {
        [(AVTAvatar *)self updateBindingsOfNode:?];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __54__AVTMemoji_wrapDeformedDriverNamed_forComponentType___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 skinner];
  [v2 setSkeleton:?];
}

- (void)enumerateActiveWrapDeformerDriversForComponentType:(int64_t)type usingBlock:(id)block
{
  blockCopy = block;
  v6 = [(AVTMemoji *)self _wrapDeformerDriverInfoForComponentType:?];
  v7 = v6;
  if (v6)
  {
    v8 = v6[2];
    v9 = MEMORY[0x1E69E9820];
    v10 = v6;
    v11 = blockCopy;
    [v8 enumerateKeysAndObjectsUsingBlock:{v9, 3221225472, __75__AVTMemoji_enumerateActiveWrapDeformerDriversForComponentType_usingBlock___block_invoke, &unk_1E7F49B78}];
  }
}

void __75__AVTMemoji_enumerateActiveWrapDeformerDriversForComponentType_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if ([a3 unsignedIntegerValue] == 1)
  {
    v5 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:?];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)updateWrapDeformerIsActiveForComponentType:(int64_t)type
{
  v5 = [(AVTMemoji *)self _wrapDeformerDriverInfoForComponentType:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5[1];
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __56__AVTMemoji_updateWrapDeformerIsActiveForComponentType___block_invoke;
    v29 = &unk_1E7F49BA0;
    v8 = v5;
    v30 = v8;
    [v7 enumerateKeysAndObjectsUsingBlock:?];
    v9 = self->_componentInstances[type];
    assetNode = [(AVTComponentInstance *)v9 assetNode];
    v11 = assetNode;
    if (type == 35)
    {
      [VFXNode convertTransform:"convertTransform:fromNode:" fromNode:?];
      [v11 setTransform:?];
      if ((self->_visibleBodyParts & 2) == 0)
      {
        goto LABEL_10;
      }
    }

    else if ((self->_visibleBodyParts & 2) == 0)
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v18 = 0;
      [assetNode enumerateHierarchyUsingBlock:?];
      if (*(v16 + 24) == 1)
      {
        [AVTMemoji _applyMorphVariantsForLazyComponentInstanceOfType:"_applyMorphVariantsForLazyComponentInstanceOfType:assetNode:" assetNode:?];
      }

      _Block_object_dispose(&v15, 8);
      goto LABEL_10;
    }

    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __56__AVTMemoji_updateWrapDeformerIsActiveForComponentType___block_invoke_308;
    v22 = &unk_1E7F49BC8;
    selfCopy = self;
    typeCopy = type;
    v24 = v8;
    [v11 enumerateHierarchyUsingBlock:?];

LABEL_10:
    v12 = v6[1];
    v13 = MEMORY[0x1E69E9820];
    v14 = v8;
    [v12 enumerateKeysAndObjectsUsingBlock:{v13, 3221225472, __56__AVTMemoji_updateWrapDeformerIsActiveForComponentType___block_invoke_2, &unk_1E7F49BF0}];
  }
}

void __56__AVTMemoji_updateWrapDeformerIsActiveForComponentType___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:?];
  v4 = v3;
  if (v3)
  {
    [v3 unsignedIntegerValue];
  }

  [*(*(a1 + 32) + 16) setObject:? forKeyedSubscript:?];
}

void __56__AVTMemoji_updateWrapDeformerIsActiveForComponentType___block_invoke_308(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 model];

  if (v4)
  {
    v5 = [v3 valueForUndefinedKey:?];
    if (v5)
    {
      v6 = [*(a1 + 32) wrapDeformedDriverNamed:? forComponentType:?];
      if (!v6)
      {
        v7 = avt_default_log(0);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __56__AVTMemoji_updateWrapDeformerIsActiveForComponentType___block_invoke_308_cold_1();
        }
      }

      v8 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:?];
      v9 = v8;
      if (!v8 || (v10 = [v8 unsignedIntegerValue], v10 == 1003) || v10 == 1000)
      {
        [*(*(a1 + 40) + 16) setObject:? forKeyedSubscript:?];
      }

      v11 = [v3 deformers];
      v12 = [v11 count];

      if (!v12)
      {
        v13 = [v6 childNodeWithName:? recursively:?];
        v14 = [v6 childNodeWithName:? recursively:?];
        v15 = [v3 valueForUndefinedKey:?];
        v16 = [objc_alloc(MEMORY[0x1E69DF320]) initWithInnerLayerNode:? outerLayerNode:? parameters:?];
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:v20];
        [v3 setDeformers:?];

        v18 = [v3 morpher];
        if (v18 && (![v15 bindingMode] || *(a1 + 48) == 7))
        {
          [v3 setValue:? forUndefinedKey:?];
          [v3 setMorpher:?];
        }

        v19 = [v3 skinner];
        if (v19)
        {
          [v3 setValue:? forUndefinedKey:?];
          [v3 setSkinner:?];
        }
      }
    }
  }
}

void __56__AVTMemoji_updateWrapDeformerIsActiveForComponentType___block_invoke_333(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 deformers];
  v4 = [v3 count];

  if (v4)
  {
    [v7 setDeformers:?];
    v5 = [v7 valueForUndefinedKey:?];
    if (v5)
    {
      [v7 setMorpher:?];
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }

    v6 = [v7 valueForUndefinedKey:?];
    if (v6)
    {
      [v7 setSkinner:?];
    }
  }
}

void __56__AVTMemoji_updateWrapDeformerIsActiveForComponentType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:?];
  if (!v7)
  {
    v8 = avt_default_log(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __56__AVTMemoji_updateWrapDeformerIsActiveForComponentType___block_invoke_2_cold_1();
    }
  }

  v9 = [v7 unsignedIntegerValue];
  if (v9 > 1001)
  {
    if (v9 == 1002)
    {
      v11 = *(*(a1 + 32) + 16);
      goto LABEL_19;
    }

    if (v9 != 1003)
    {
      goto LABEL_15;
    }

    [*(*(a1 + 32) + 16) setObject:? forKeyedSubscript:?];
    [*(a1 + 40) _willDeactivateLazyComponentInstanceOfType:? assetNode:?];
    if (*(*(a1 + 40) + 2416))
    {
      [*(*(a1 + 32) + 16) setObject:? forKeyedSubscript:?];
    }

LABEL_14:
    v11 = *(*(a1 + 32) + 16);
LABEL_19:
    [v11 setObject:? forKeyedSubscript:?];
    goto LABEL_20;
  }

  if (v9 == 1000)
  {
    goto LABEL_14;
  }

  if (v9 == 1001)
  {
    [*(*(a1 + 32) + 16) setObject:? forKeyedSubscript:?];
    [*(a1 + 40) _didActivateLazyComponentInstanceOfType:? assetNode:?];
    v10 = *(*(a1 + 40) + 2416);
    if (v10)
    {
      (*(v10 + 16))();
    }

    goto LABEL_20;
  }

LABEL_15:
  v12 = avt_default_log(v9);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    __56__AVTMemoji_updateWrapDeformerIsActiveForComponentType___block_invoke_2_cold_2();
  }

LABEL_20:
}

- (void)_updateWithOptions:(unint64_t)options
{
  self->_needsUpdate = 0;
  componentDirtyMask = self->_componentDirtyMask;
  optionsCopy = options;
  if (!componentDirtyMask)
  {
    v31 = 0;
    v72 = 0;
    goto LABEL_68;
  }

  if ((componentDirtyMask & 0x400000000) != 0)
  {
    visibleBodyParts = self->_visibleBodyParts;
    [(VFXNode *)self->_bodyComponentContainer setHidden:?];
    if ((visibleBodyParts & 2) != 0 && [(AVTMemoji *)self _addTorsoComponentInstanceIfNeeded])
    {
      self->_componentDirtyMask |= 0x800000080uLL;
    }

    [(AVTMemoji *)self updateWrapDeformerIsActiveForComponentType:?];
    [(AVTMemoji *)self updateWrapDeformerIsActiveForComponentType:?];
    componentDirtyMask = self->_componentDirtyMask;
  }

  if ((componentDirtyMask & 0x2000000000) != 0)
  {
    v6 = self->_visibleBodyParts;
    [(VFXNode *)self->_handsComponentContainer setHidden:?];
    if ((v6 & 4) != 0)
    {
      [(AVTMemoji *)self _addHandsComponentInstanceIfNeeded];
    }
  }

  v71 = 0;
  v7 = 0;
  v68 = 0;
  do
  {
    if (v7 > 0x25 || ((1 << v7) & 0x2400000001) == 0) && ((self->_componentDirtyMask >> v7))
    {
      v8 = AVTBodyRegionForComponentType(v7);
      if (v8 != 1 || self->_torsoNode)
      {
        v9 = [(AVTMemoji *)self componentWithType:?];
        if (v9)
        {
          v10 = [AVTComponentInstance initWithComponent:"initWithComponent:assetResourceCache:" assetResourceCache:?];
        }

        else
        {
          v10 = 0;
        }

        [AVTMemoji setInstance:"setInstance:forComponentType:" forComponentType:?];
        if (v7 == 35)
        {
          v11 = self->_components[8];
          morphVariant = [(AVTComponent *)v11 morphVariant];
          v13 = [morphVariant isEqualToString:?];

          if (v13)
          {
            [(AVTComponent *)v11 morphVariantIntensity];
          }

          [AVTComponentInstance setSkinnerVariantIntensity:v10 skeleton:"setSkinnerVariantIntensity:skeleton:"];
        }

        assetNode = [(AVTComponentInstance *)v10 assetNode];
        if (!assetNode)
        {
          goto LABEL_36;
        }

        if (v7 != 28)
        {
          [(AVTComponentInstance *)v10 updateMaterialsWithComponent:?];
        }

        if (v8 == 1)
        {
          [AVTMemoji addComponentAssetNode:"addComponentAssetNode:toNode:forBodyParts:" toNode:? forBodyParts:?];
          [AVTAvatar resetPresentationConfigurationBehavioursInHierarchy:"resetPresentationConfigurationBehavioursInHierarchy:forBodyParts:" forBodyParts:?];
          v15 = v71;
          if (!v71)
          {
            v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v71 = v15;
          }
        }

        else
        {
          if (v8)
          {
LABEL_35:
            [(AVTMemoji *)self updateWrapDeformerIsActiveForComponentType:?];
LABEL_36:

            goto LABEL_13;
          }

          [AVTMemoji addComponentAssetNode:"addComponentAssetNode:toNode:forBodyParts:" toNode:? forBodyParts:?];
          v15 = v68;
          if (!v68)
          {
            v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v68 = v15;
          }
        }

        [v15 addObject:?];
        goto LABEL_35;
      }
    }

LABEL_13:
    ++v7;
  }

  while (v7 != 42);
  [(AVTMemoji *)self updateEyeLashes];
  v16 = v68;
  v17 = [v16 countByEnumeratingWithState:? objects:? count:?];
  if (v17)
  {
    v18 = v17;
    v19 = MEMORY[0];
    do
    {
      for (i = 0; i != v18; i = (i + 1))
      {
        if (MEMORY[0] != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(AVTAvatar *)self updateBindingsOfNode:?];
      }

      v18 = [v16 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v18);
  }

  v21 = v71;
  v22 = [v21 countByEnumeratingWithState:? objects:? count:?];
  if (v22)
  {
    v23 = v22;
    v24 = MEMORY[0];
    do
    {
      for (j = 0; j != v23; j = (j + 1))
      {
        if (MEMORY[0] != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(AVTAvatar *)self updateBindingsOfNode:?];
      }

      v23 = [v21 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v23);
  }

  v26 = v16;
  v27 = [v26 countByEnumeratingWithState:? objects:? count:?];
  if (v27)
  {
    v28 = v27;
    v29 = MEMORY[0];
    do
    {
      for (k = 0; k != v28; k = (k + 1))
      {
        if (MEMORY[0] != v29)
        {
          objc_enumerationMutation(v26);
        }

        [*(8 * k) enumerateHierarchyUsingBlock:?];
      }

      v28 = [v26 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v28);
  }

  v31 = v21;
  v32 = [v31 countByEnumeratingWithState:? objects:? count:?];
  if (v32)
  {
    v33 = v32;
    v34 = MEMORY[0];
    do
    {
      for (m = 0; m != v33; m = (m + 1))
      {
        if (MEMORY[0] != v34)
        {
          objc_enumerationMutation(v31);
        }

        [*(8 * m) enumerateHierarchyUsingBlock:?];
      }

      v33 = [v31 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v33);
  }

  v72 = v26;
  if ([(AVTAvatar *)self optimizeForSnapshot])
  {
    assetNode2 = [(AVTComponentInstance *)self->_componentInstances[5] assetNode];
    [assetNode2 avt_enableSubdivisionOnHierarchyWithQuality:? animoji:?];

    assetNode3 = [(AVTComponentInstance *)self->_componentInstances[3] assetNode];
    [assetNode3 avt_enableSubdivisionOnHierarchyWithQuality:? animoji:?];
  }

LABEL_68:
  v38 = 0;
  currentPresetsForVariants = self->_currentPresetsForVariants;
  do
  {
    [AVTMemoji unapplyVariantDependenciesForPreset:"unapplyVariantDependenciesForPreset:dirtyComponents:" dirtyComponents:?];
    v38 += 8;
  }

  while (v38 != 320);
  for (n = 0; n != 40; ++n)
  {
    v41 = [(AVTPresetStore *)&self->_presetStore->super.isa resolvedPresetForCategory:?];
    [AVTMemoji applyVariantDependenciesForPreset:"applyVariantDependenciesForPreset:dirtyComponents:" dirtyComponents:?];
    v42 = currentPresetsForVariants[n];
    currentPresetsForVariants[n] = v41;
  }

  v43 = self->_componentDirtyMask;
  if ((v43 & 0x820) != 0)
  {
    [(AVTMemoji *)self updateHighlightsForComponentType:?];
  }

  v67 = v43;
  v44 = v72;
  if ((v43 & 0x1008) != 0)
  {
    [(AVTMemoji *)self updateHighlightsForComponentType:?];
  }

  [(AVTMemoji *)self updateSkinMaterial:?];
  [(AVTCompositor *)self->_compositor componentDidChangeForTypes:?];
  if (optionsCopy)
  {
    componentAnimatedMask = 0;
    self->_componentAnimatedMask = 0;
  }

  else
  {
    componentAnimatedMask = self->_componentAnimatedMask;
  }

  if ((self->_componentDirtyMask & ~componentAnimatedMask) != 0)
  {
    v46 = 0;
    v69 = componentAnimatedMask;
    do
    {
      if (((1 << v46) & componentAnimatedMask) == 0 && (self->_componentDirtyMask & (1 << v46)) != 0)
      {
        v48 = self->_components[v46];
        morphVariant2 = [(AVTComponent *)v48 morphVariant];
        if (morphVariant2)
        {
          v50 = [(AVTMemoji *)self allAssetNodesForComponentType:?];
          v51 = [v50 countByEnumeratingWithState:? objects:? count:?];
          if (v51)
          {
            v52 = v51;
            v53 = MEMORY[0];
            do
            {
              for (ii = 0; ii != v52; ii = (ii + 1))
              {
                if (MEMORY[0] != v53)
                {
                  objc_enumerationMutation(v50);
                }

                [(AVTComponent *)v48 morphVariantIntensity];
                [AVTMemoji updateMorphVariantsInNodeHierarchy:"updateMorphVariantsInNodeHierarchy:componentType:variant:weight:" componentType:? variant:? weight:?];
              }

              v52 = [v50 countByEnumeratingWithState:? objects:? count:?];
            }

            while (v52);
          }

          v44 = v72;
          componentAnimatedMask = v69;
        }
      }

      ++v46;
    }

    while (v46 != 42);
    [(AVTMemoji *)self updateBodyPoseForSkinnerVariantsWithDirtyComponents:?];
    componentAnimatedMask = self->_componentAnimatedMask;
  }

  if (componentAnimatedMask)
  {
    [MEMORY[0x1E69DF378] begin];
    [MEMORY[0x1E69DF378] setAnimationDuration:?];
    for (jj = 0; jj != 42; ++jj)
    {
      if ((self->_componentDirtyMask & (1 << jj)) != 0 && (self->_componentAnimatedMask & (1 << jj)) != 0)
      {
        v57 = self->_components[jj];
        morphVariant3 = [(AVTComponent *)v57 morphVariant];
        if (morphVariant3)
        {
          v59 = [(AVTMemoji *)self allAssetNodesForComponentType:?];
          v60 = [v59 countByEnumeratingWithState:? objects:? count:?];
          if (v60)
          {
            v61 = v60;
            v62 = MEMORY[0];
            do
            {
              for (kk = 0; kk != v61; kk = (kk + 1))
              {
                if (MEMORY[0] != v62)
                {
                  objc_enumerationMutation(v59);
                }

                [(AVTComponent *)v57 morphVariantIntensity];
                [AVTMemoji updateMorphVariantsInNodeHierarchy:"updateMorphVariantsInNodeHierarchy:componentType:variant:weight:" componentType:? variant:? weight:?];
              }

              v61 = [v59 countByEnumeratingWithState:? objects:? count:?];
            }

            while (v61);
          }

          v44 = v72;
        }
      }

      [(AVTMemoji *)self updateBodyPoseForSkinnerVariantsWithDirtyComponents:?];
    }

    [MEMORY[0x1E69DF378] commit];
  }

  if (![(AVTAvatar *)self optimizeForSnapshot])
  {
    v64 = self->_componentInstances[7] && self->_componentInstances[5] != 0;
    if (((self->_componentInstances[5] != 0) & (v67 >> 5)) != 0 || self->_hairPhysicsShouldIgnoreUpperNodes != v64)
    {
      self->_hairPhysicsShouldIgnoreUpperNodes = v64;
      assetNode4 = [(AVTComponentInstance *)self->_componentInstances[5] assetNode];
      if (assetNode4)
      {
        upperNodesIgnoredByDynamics = [(AVTMemoji *)self upperNodesIgnoredByDynamics];
        [(AVTAvatar *)self removeDynamicsInHierarchy:?];
        [AVTAvatar addDynamicsInHierarchy:"addDynamicsInHierarchy:ignoringUpperNodes:" ignoringUpperNodes:?];
      }
    }
  }

  self->_componentDirtyMask = 0;
  self->_componentAnimatedMask = 0;
  self->_compositorComponentDirtyMask = 0;
}

void __32__AVTMemoji__updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 skinner];
  [v2 setSkeleton:?];
}

void __32__AVTMemoji__updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 skinner];
  [v2 setSkeleton:?];
}

- (id)upperNodesIgnoredByDynamics
{
  if (self->_hairPhysicsShouldIgnoreUpperNodes && ([(AVTComponentInstance *)self->_componentInstances[5] assetNode], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v3 enumerateHierarchyUsingBlock:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __40__AVTMemoji_upperNodesIgnoredByDynamics__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 morpher];

  if (v3)
  {
    [*(a1 + 32) addObject:?];
  }
}

- (id)allBuiltinAssetNodes
{
  v7 = *MEMORY[0x1E69E9840];
  headNode = self->_headNode;
  eyesAndTongue = self->_eyesAndTongue;
  v6 = headNode;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];

  return v3;
}

- (id)_assetNodesForComponentType:(int64_t)type includingBuiltInAssetNodes:(BOOL)nodes includingComponentAssetNode:(BOOL)node
{
  nodeCopy = node;
  v22 = *MEMORY[0x1E69E9840];
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (!nodes)
  {
    goto LABEL_19;
  }

  if (type > 33)
  {
    if ((type - 38) < 4)
    {
      torsoNode = self->_torsoNode;
      if (torsoNode)
      {
        v19 = 1;
        *&v20[0] = torsoNode;
      }

      [(AVTMemoji *)self enumerateActiveWrapDeformerDriversForComponentType:MEMORY[0x1E69E9820] usingBlock:3221225472, __96__AVTMemoji__assetNodesForComponentType_includingBuiltInAssetNodes_includingComponentAssetNode___block_invoke_2, &unk_1E7F49C18, &v16, v20];
      goto LABEL_19;
    }

    if (type == 34)
    {
      v9 = self->_torsoNode;
      if (v9)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (type != 35)
    {
      goto LABEL_19;
    }

LABEL_18:
    [AVTMemoji enumerateActiveWrapDeformerDriversForComponentType:"enumerateActiveWrapDeformerDriversForComponentType:usingBlock:" usingBlock:?];
    goto LABEL_19;
  }

  if (type > 27)
  {
    if ((type - 28) >= 5)
    {
      goto LABEL_19;
    }

    goto LABEL_5;
  }

  switch(type)
  {
    case 2:
      v8 = 320;
      goto LABEL_6;
    case 7:
      goto LABEL_18;
    case 8:
LABEL_5:
      v8 = 296;
LABEL_6:
      v9 = *(&self->super.super.isa + v8);
LABEL_7:
      v19 = 1;
      *&v20[0] = v9;
      break;
  }

LABEL_19:
  if (nodeCopy)
  {
    v11 = self->_componentInstances[type];
    assetNode = [(AVTComponentInstance *)v11 assetNode];
    if (assetNode)
    {
      v13 = v17[3];
      v17[3] = v13 + 1;
      *(v20 + v13) = assetNode;
    }
  }

  if (v17[3])
  {
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v14;
}

uint64_t __96__AVTMemoji__assetNodesForComponentType_includingBuiltInAssetNodes_includingComponentAssetNode___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  v3 = *(*(result + 32) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  *(v2 + 8 * v4) = a2;
  return result;
}

uint64_t __96__AVTMemoji__assetNodesForComponentType_includingBuiltInAssetNodes_includingComponentAssetNode___block_invoke_2(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  v3 = *(*(result + 32) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  *(v2 + 8 * v4) = a2;
  return result;
}

- (id)_componentInstanceAssetNodesForDependencyOfType:(int64_t)type isAssetSpecific:(BOOL)specific
{
  if (type == 42)
  {
    [AVTMemoji _componentInstanceAssetNodesForDependencyOfType:isAssetSpecific:];
  }

  if (self->_componentInstances[type])
  {
    v4 = [(AVTMemoji *)self allAssetNodesForComponentType:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setMorphWeight:(float)weight forDependencyVariant:(id)variant ofType:(int64_t)type isAssetSpecific:(BOOL)specific
{
  variantCopy = variant;
  v8 = [AVTMemoji _componentInstanceAssetNodesForDependencyOfType:"_componentInstanceAssetNodesForDependencyOfType:isAssetSpecific:" isAssetSpecific:?];
  v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(8 * i);
        v14 = variantCopy;
        [v13 enumerateHierarchyUsingBlock:?];
      }

      v10 = [v8 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v10);
  }
}

void __73__AVTMemoji__setMorphWeight_forDependencyVariant_ofType_isAssetSpecific___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 morpher];
  if (v2)
  {
    v3 = v2;
    [v2 setWeight:? forTargetNamed:?];
    v2 = v3;
  }
}

- (void)_setVariantDependenciesEnabled:(BOOL)enabled forPreset:(id)preset dirtyComponents:(unint64_t)components
{
  presetCopy = preset;
  category = [presetCopy category];
  AVTPresetCategoryToComponentType(category, v7);
  [presetCopy enumerateVariantDependenciesOfKind:? block:?];
  [presetCopy enumerateVariantDependenciesOfKind:? block:?];
  [presetCopy enumerateVariantDependenciesOfKind:? block:?];
  v8 = presetCopy;
  [v8 enumerateVisibilityDependencies:?];
}

void __70__AVTMemoji__setVariantDependenciesEnabled_forPreset_dirtyComponents___block_invoke(uint64_t a1, unint64_t a2, void *a3, float a4)
{
  v9 = a3;
  v7 = AVTPresetCategoryToComponentType(a2, v6);
  v8 = *(a1 + 40);
  if ((v8 >> *(a1 + 48)) & 1) != 0 || ((v8 >> v7))
  {
    [*(a1 + 32) _setMorphWeight:? forDependencyVariant:? ofType:? isAssetSpecific:?];
  }
}

void __70__AVTMemoji__setVariantDependenciesEnabled_forPreset_dirtyComponents___block_invoke_2(uint64_t a1, unint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v7 = AVTPresetCategoryToComponentType(a2, v6);
  v8 = *(*(a1 + 32) + 384 + 8 * v7);
  v9 = v8;
  v10 = *(a1 + 40);
  if ((v10 >> *(a1 + 48)) & 1) != 0 || ((v10 >> v7))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = [v8 assets];
    if ([v11 countByEnumeratingWithState:? objects:? count:?] && objc_msgSend(**(&v16 + 1), "is2DAsset"))
    {
      if (*(a1 + 56))
      {
        v12 = v5;
      }

      else
      {
        v12 = 0;
      }

      v13 = *(a1 + 32);
      v14 = v12;
      v15 = [v13 componentInstanceForType:?];
      [v15 setImageVariant:?];

      *(*(a1 + 32) + 2384) |= 1 << v7;
    }
  }
}

void __70__AVTMemoji__setVariantDependenciesEnabled_forPreset_dirtyComponents___block_invoke_3(uint64_t a1, unint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v7 = AVTPresetCategoryToComponentType(a2, v6);
  v8 = *(*(a1 + 32) + 384 + 8 * v7);
  v9 = v8;
  v10 = *(a1 + 40);
  if ((v10 >> *(a1 + 48)) & 1) != 0 || ((v10 >> v7))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = [v8 assets];
    if ([v11 countByEnumeratingWithState:? objects:? count:?] && objc_msgSend(**(&v16 + 1), "is3DAsset"))
    {
      if (*(a1 + 56))
      {
        v12 = v5;
      }

      else
      {
        v12 = 0;
      }

      v13 = *(a1 + 32);
      v14 = v12;
      v15 = [v13 componentInstanceForType:?];
      [v15 setMaterialVariant:?];
    }
  }
}

void __70__AVTMemoji__setVariantDependenciesEnabled_forPreset_dirtyComponents___block_invoke_4(uint64_t a1, unint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v7 = AVTPresetCategoryToComponentType(a2, v6);
  v8 = *(*(a1 + 32) + 384 + 8 * v7);
  v9 = v8;
  v10 = *(a1 + 48);
  if ((v10 >> *(a1 + 56)) & 1) != 0 || ((v10 >> v7))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = [v8 assets];
    if ([v11 countByEnumeratingWithState:? objects:? count:?] && objc_msgSend(**(&v16 + 1), "is3DAsset"))
    {
      if (*(a1 + 64))
      {
        v12 = v5;
      }

      else
      {
        v12 = 0;
      }

      v13 = *(a1 + 32);
      v14 = v12;
      v15 = [v13 componentInstanceForType:?];
      [*(a1 + 40) category];
      [v15 setVisibilityRules:? dictatedByCategory:?];
    }
  }
}

- (void)_setAssetSpecificVariantDependenciesEnabled:(BOOL)enabled forPreset:(id)preset dirtyComponents:(unint64_t)components
{
  presetCopy = preset;
  category = [presetCopy category];
  AVTPresetCategoryToComponentType(category, v7);
  [presetCopy enumerateAssetSpecificVariantDependenciesOfKind:? block:?];
  [presetCopy enumerateAssetSpecificVariantDependenciesOfKind:? block:?];
  [presetCopy enumerateAssetSpecificVariantDependenciesOfKind:MEMORY[0x1E69E9820] block:3221225472];
}

void __83__AVTMemoji__setAssetSpecificVariantDependenciesEnabled_forPreset_dirtyComponents___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 32) + 384 + 8 * a2);
  v10 = *(a1 + 40);
  if ((v10 >> *(a1 + 48)) & 1) != 0 || ((v10 >> a2))
  {
    v20 = v9;
    v11 = [v9 assets];
    v12 = [v11 countByEnumeratingWithState:? objects:? count:?];
    if (v12)
    {
      v13 = v12;
      v14 = MEMORY[0];
      while (2)
      {
        v15 = v8;
        for (i = 0; i != v13; i = (i + 1))
        {
          if (MEMORY[0] != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(8 * i);
          v18 = [v17 identifier];
          v19 = [v18 isEqualToString:?];

          if (v19)
          {
            v8 = v15;
            if ([v17 is3DAsset])
            {
              [*(a1 + 32) _setMorphWeight:? forDependencyVariant:? ofType:? isAssetSpecific:?];
            }

            goto LABEL_14;
          }
        }

        v13 = [v11 countByEnumeratingWithState:? objects:? count:?];
        v8 = v15;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    v9 = v20;
  }
}

void __83__AVTMemoji__setAssetSpecificVariantDependenciesEnabled_forPreset_dirtyComponents___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 32) + 384 + 8 * a2);
  v10 = *(a1 + 40);
  if ((v10 >> *(a1 + 48)) & 1) != 0 || ((v10 >> a2))
  {
    v25 = v9;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = [v9 assets];
    v12 = [v11 countByEnumeratingWithState:? objects:? count:?];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      while (2)
      {
        v15 = v8;
        for (i = 0; i != v13; i = (i + 1))
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          v18 = [v17 identifier];
          v19 = [v18 isEqualToString:?];

          if (v19)
          {
            v8 = v15;
            if ([v17 is2DAsset])
            {
              if (*(a1 + 56))
              {
                v20 = v15;
              }

              else
              {
                v20 = 0;
              }

              v21 = *(a1 + 32);
              v22 = v20;
              v23 = [v21 componentInstanceForType:?];
              [v23 setImageVariant:?];

              *(*(a1 + 32) + 2384) |= 1 << v24;
            }

            goto LABEL_17;
          }
        }

        v13 = [v11 countByEnumeratingWithState:? objects:? count:?];
        v8 = v15;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v9 = v25;
  }
}

void __83__AVTMemoji__setAssetSpecificVariantDependenciesEnabled_forPreset_dirtyComponents___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 32) + 384 + 8 * a2);
  v10 = *(a1 + 40);
  if ((v10 >> *(a1 + 48)) & 1) != 0 || ((v10 >> a2))
  {
    v25 = v9;
    v11 = [v9 assets];
    v12 = [v11 countByEnumeratingWithState:? objects:? count:?];
    if (v12)
    {
      v13 = v12;
      v14 = MEMORY[0];
      while (2)
      {
        v15 = v8;
        for (i = 0; i != v13; i = (i + 1))
        {
          if (MEMORY[0] != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(8 * i);
          v18 = [v17 identifier];
          v19 = [v18 isEqualToString:?];

          if (v19)
          {
            v20 = [v17 is3DAsset];
            v8 = v15;
            if (v20)
            {
              if (*(a1 + 56))
              {
                v21 = v15;
              }

              else
              {
                v21 = 0;
              }

              v22 = *(a1 + 32);
              v23 = v21;
              v24 = [v22 componentInstanceForType:?];
              [v24 setMaterialVariant:?];
            }

            goto LABEL_17;
          }
        }

        v13 = [v11 countByEnumeratingWithState:? objects:? count:?];
        v8 = v15;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v9 = v25;
  }
}

- (void)applyVariantDependenciesForPreset:(id)preset dirtyComponents:(unint64_t)components
{
  presetCopy = preset;
  [AVTMemoji _setVariantDependenciesEnabled:"_setVariantDependenciesEnabled:forPreset:dirtyComponents:" forPreset:? dirtyComponents:?];
  [AVTMemoji _setAssetSpecificVariantDependenciesEnabled:"_setAssetSpecificVariantDependenciesEnabled:forPreset:dirtyComponents:" forPreset:? dirtyComponents:?];
}

- (void)unapplyVariantDependenciesForPreset:(id)preset dirtyComponents:(unint64_t)components
{
  presetCopy = preset;
  [AVTMemoji _setVariantDependenciesEnabled:"_setVariantDependenciesEnabled:forPreset:dirtyComponents:" forPreset:? dirtyComponents:?];
  [AVTMemoji _setAssetSpecificVariantDependenciesEnabled:"_setAssetSpecificVariantDependenciesEnabled:forPreset:dirtyComponents:" forPreset:? dirtyComponents:?];
}

- (void)updateMorphVariantsInNodeHierarchy:(id)hierarchy componentType:(int64_t)type variant:(id)variant weight:(float)weight
{
  hierarchyCopy = hierarchy;
  variantCopy = variant;
  v11 = AVTComponentTypeToString(type);
  if (v11)
  {
    v12 = [@"variant_" stringByAppendingString:?];
    v13 = variantCopy;
    v14 = v12;
    [hierarchyCopy enumerateHierarchyUsingBlock:?];
    if (type == 8)
    {
      v15 = self->_componentInstances[35];
      [v13 isEqualToString:?];
      [AVTComponentInstance setSkinnerVariantIntensity:v15 skeleton:"setSkinnerVariantIntensity:skeleton:"];
    }
  }
}

void __77__AVTMemoji_updateMorphVariantsInNodeHierarchy_componentType_variant_weight___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 morpher];
  v4 = [v3 targets];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __77__AVTMemoji_updateMorphVariantsInNodeHierarchy_componentType_variant_weight___block_invoke_2;
  v9 = &unk_1E7F49CE0;
  v10 = *(a1 + 32);
  v11 = v3;
  v13 = *(a1 + 48);
  v12 = *(a1 + 40);
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:{v6, 3221225472, __77__AVTMemoji_updateMorphVariantsInNodeHierarchy_componentType_variant_weight___block_invoke_2, &unk_1E7F49CE0}];
}

void __77__AVTMemoji_updateMorphVariantsInNodeHierarchy_componentType_variant_weight___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 name];
  if ([v5 isEqualToString:?])
  {
    v4 = *(a1 + 40);
  }

  else
  {
    if (![v5 hasPrefix:?])
    {
      goto LABEL_6;
    }

    v4 = *(a1 + 40);
  }

  [v4 setWeight:? forTargetAtIndex:?];
LABEL_6:
}

- (id)effectiveMorphedNodeForTargetName:(id)name
{
  nameCopy = name;
  if ([nameCopy hasPrefix:?])
  {
    v5 = [nameCopy componentsSeparatedByString:?];
    v6 = [v5 objectAtIndexedSubscript:?];
    v7 = AVTPresetCategoryFromString(v6);
    if (v7 <= 0x27)
    {
      if (((1 << v7) & 0x1E81) != 0)
      {
        v8 = &OBJC_IVAR___AVTMemoji__headNode;
LABEL_7:
        v9 = *(&self->super.super.isa + *v8);

        goto LABEL_10;
      }

      if (((1 << v7) & 0xF000000000) != 0)
      {
        v8 = &OBJC_IVAR___AVTMemoji__torsoNode;
        goto LABEL_7;
      }
    }
  }

  v11.receiver = self;
  v11.super_class = AVTMemoji;
  v9 = [(AVTAvatar *)&v11 effectiveMorphedNodeForTargetName:nameCopy];
LABEL_10:

  return v9;
}

- (void)_applyMorphVariantsForLazyComponentInstanceOfType:(int64_t)type assetNode:(id)node
{
  nodeCopy = node;
  v7 = 0;
  if (type > 34)
  {
    if (type != 35)
    {
      v8 = 0;
      if (type != 37)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (type == 7)
    {
      v8 = 0x3C000000180;
      v7 = 0x400000004;
      goto LABEL_9;
    }

    v8 = 0;
    if (type != 34)
    {
      goto LABEL_9;
    }
  }

  v7 = 0;
  v8 = 0x3C000000100;
LABEL_9:
  for (i = 0; i != 42; ++i)
  {
    if ((v8 >> i))
    {
      v10 = self->_components[i];
      morphVariant = [(AVTComponent *)v10 morphVariant];
      if (morphVariant)
      {
        [(AVTComponent *)v10 morphVariantIntensity];
        [AVTMemoji updateMorphVariantsInNodeHierarchy:"updateMorphVariantsInNodeHierarchy:componentType:variant:weight:" componentType:? variant:? weight:?];
      }
    }
  }

  for (j = 0; j != 40; ++j)
  {
    if ((v7 >> j))
    {
      v13 = [(AVTPresetStore *)&self->_presetStore->super.isa resolvedPresetForCategory:?];
      v14 = nodeCopy;
      [v13 enumerateVariantDependenciesOfKind:? block:?];
    }
  }
}

void __73__AVTMemoji__applyMorphVariantsForLazyComponentInstanceOfType_assetNode___block_invoke(uint64_t a1, unint64_t a2, void *a3, float a4)
{
  v6 = a3;
  if ((*(a1 + 40) >> AVTPresetCategoryToComponentType(a2, v7)))
  {
    v8 = *(a1 + 32);
    v9 = MEMORY[0x1E69E9820];
    v10 = v6;
    [v8 enumerateHierarchyUsingBlock:{v9, 3221225472, __73__AVTMemoji__applyMorphVariantsForLazyComponentInstanceOfType_assetNode___block_invoke_2, &unk_1E7F49C40}];
  }
}

void __73__AVTMemoji__applyMorphVariantsForLazyComponentInstanceOfType_assetNode___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 morpher];
  if (v2)
  {
    v3 = v2;
    [v2 setWeight:? forTargetNamed:?];
    v2 = v3;
  }
}

void __66__AVTMemoji__willDeactivateLazyComponentInstanceOfType_assetNode___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 morpher];
  if (v2)
  {
    v6 = v2;
    v3 = [v2 targets];
    v4 = [v3 count];

    v2 = v6;
    if (v4)
    {
      for (i = 0; i != v4; i = (i + 1))
      {
        [v6 setWeight:? forTargetAtIndex:?];
        v2 = v6;
      }
    }
  }
}

- (void)updateMorphVariantsInStickerPropNodeHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  v4 = [(AVTMemoji *)self componentWithType:?];
  morphVariant = [v4 morphVariant];
  if (morphVariant)
  {
    [v4 morphVariantIntensity];
    [AVTMemoji updateMorphVariantsInNodeHierarchy:"updateMorphVariantsInNodeHierarchy:componentType:variant:weight:" componentType:? variant:? weight:?];
  }
}

- (void)setVisibleBodyParts:(unint64_t)parts
{
  visibleBodyParts = self->_visibleBodyParts;
  if (visibleBodyParts != (parts | 1))
  {
    self->_visibleBodyParts = parts | 1;
    v5 = visibleBodyParts ^ parts;
    if (((visibleBodyParts ^ parts) & 2) != 0)
    {
      self->_componentDirtyMask |= 0x400000000uLL;
      [(AVTMemoji *)self _locked_invalidate];
    }

    if ((v5 & 4) != 0)
    {
      self->_componentDirtyMask |= 0x2000000000uLL;

      [(AVTMemoji *)self _locked_invalidate];
    }
  }
}

- (void)setBodyPose:(id)pose
{
  poseCopy = pose;
  if (self->_bodyPose != poseCopy)
  {
    v7 = poseCopy;
    objc_storeStrong(&self->_bodyPose, pose);
    if (v7)
    {
      [(AVTMemoji *)self updateBodyPoseForSkinnerVariantsWithDirtyComponents:?];
    }

    else
    {
      v6 = +[AVTAvatarBodyPose neutralPose];
      [v6 applyToBodySkeletonWithRootJoint:? ageBodyPoseVariantIntensity:? shoulderWidthBodyPoseVariantIntensity:?];
    }

    poseCopy = v7;
  }
}

- (void)updateBodyPoseForSkinnerVariantsWithDirtyComponents:(unint64_t)components
{
  if ((components & 0x4000000100) != 0)
  {
    v6 = [(AVTMemoji *)self componentWithType:?];
    [v6 bodyPoseVariantIntensity];
    v5 = [(AVTMemoji *)self componentWithType:?];
    [v5 bodyPoseVariantIntensity];
    [AVTAvatarBodyPose applyToBodySkeletonWithRootJoint:"applyToBodySkeletonWithRootJoint:ageBodyPoseVariantIntensity:shoulderWidthBodyPoseVariantIntensity:" ageBodyPoseVariantIntensity:? shoulderWidthBodyPoseVariantIntensity:?];
  }
}

- (void)rebuildSpecializationSettings
{
  v16 = self->_specializationSettings;
  specializationSettings = self->_specializationSettings;
  self->_specializationSettings = 0;

  v4 = AVTMergeSpecializationSettings(self->_specializationSettings, self->_eyesAndTongueSpecializationSettings);
  v5 = self->_specializationSettings;
  self->_specializationSettings = v4;

  for (i = 0; i != 40; ++i)
  {
    v7 = [(AVTPresetStore *)&self->_presetStore->super.isa resolvedPresetForCategory:?];
    v8 = self->_specializationSettings;
    specializationSettings = [v7 specializationSettings];
    v10 = AVTMergeSpecializationSettings(v8, specializationSettings);
    v11 = self->_specializationSettings;
    self->_specializationSettings = v10;
  }

  v12 = [(NSDictionary *)v16 objectForKeyedSubscript:?];
  v13 = [(NSDictionary *)self->_specializationSettings objectForKeyedSubscript:?];
  if (([v12 isEqualToDictionary:?] & 1) == 0)
  {
    [(AVTAvatar *)self physicsSpecializationSettingsDidChange];
  }

  v14 = [(NSDictionary *)v16 objectForKeyedSubscript:?];
  v15 = [(NSDictionary *)self->_specializationSettings objectForKeyedSubscript:?];
  if (([v14 isEqualToArray:?] & 1) == 0)
  {
    [(AVTAvatar *)self disabledBlendshapesSpecializationSettingsDidChange];
  }
}

- (void)setComponentAssetNodeObservationForStickerBlock:(id)block
{
  if (self->_componentAssetNodeObservationForStickerBlock != block)
  {
    v4 = MEMORY[0x1BFB0EC20](block, a2);
    componentAssetNodeObservationForStickerBlock = self->_componentAssetNodeObservationForStickerBlock;
    self->_componentAssetNodeObservationForStickerBlock = v4;

    MEMORY[0x1EEE66BB8](v4, componentAssetNodeObservationForStickerBlock);
  }
}

- (void)addDerivedNodesMatchingStickerPattern:(id)pattern toArray:(id)array options:(unint64_t)options
{
  v30 = *MEMORY[0x1E69E9840];
  patternCopy = pattern;
  arrayCopy = array;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v18 = __67__AVTMemoji_addDerivedNodesMatchingStickerPattern_toArray_options___block_invoke;
  v19 = &unk_1E7F49D30;
  v20 = &v26;
  v21 = &v22;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = patternCopy;
    v18(v17, v9);
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v9 = patternCopy;
      v11 = [NSObject countByEnumeratingWithState:v9 objects:"countByEnumeratingWithState:objects:count:" count:?];
      if (v11)
      {
        v12 = MEMORY[0];
        do
        {
          for (i = 0; i != v11; i = (i + 1))
          {
            if (MEMORY[0] != v12)
            {
              objc_enumerationMutation(v9);
            }

            v18(v17, *(8 * i));
          }

          v11 = [NSObject countByEnumeratingWithState:v9 objects:"countByEnumeratingWithState:objects:count:" count:?];
        }

        while (v11);
      }
    }

    else
    {
      v9 = avt_default_log(isKindOfClass);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [AVTMemoji addDerivedNodesMatchingStickerPattern:toArray:options:];
      }
    }
  }

  if (*(v27 + 24) == 1)
  {
    v16 = arrayCopy;
    [AVTMemoji enumerateActiveWrapDeformerDriversForComponentType:"enumerateActiveWrapDeformerDriversForComponentType:usingBlock:" usingBlock:?];
  }

  if (*(v23 + 24) == 1)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = arrayCopy;
    [(AVTMemoji *)self enumerateActiveWrapDeformerDriversForComponentType:v14 usingBlock:3221225472, __67__AVTMemoji_addDerivedNodesMatchingStickerPattern_toArray_options___block_invoke_3, &unk_1E7F49D80];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
}

void __67__AVTMemoji_addDerivedNodesMatchingStickerPattern_toArray_options___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = AVTComponentTypeToString(0x23uLL);
  v4 = [v9 hasPrefix:?];

  if (v4)
  {
    v5 = 32;
    v6 = v9;
  }

  else
  {
    v7 = AVTComponentTypeToString(7uLL);
    v8 = [v9 hasPrefix:?];

    v6 = v9;
    if (!v8)
    {
      goto LABEL_6;
    }

    v5 = 40;
  }

  *(*(*(a1 + v5) + 8) + 24) = 1;
LABEL_6:
}

void __67__AVTMemoji_addDerivedNodesMatchingStickerPattern_toArray_options___block_invoke_364(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __67__AVTMemoji_addDerivedNodesMatchingStickerPattern_toArray_options___block_invoke_2;
  v7 = &unk_1E7F49D58;
  v3 = *(a1 + 32);
  v9 = *(a1 + 40);
  v8 = v3;
  [a2 enumerateHierarchyUsingBlock:{v4, 3221225472, __67__AVTMemoji_addDerivedNodesMatchingStickerPattern_toArray_options___block_invoke_2, &unk_1E7F49D58}];
}

void __67__AVTMemoji_addDerivedNodesMatchingStickerPattern_toArray_options___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (AVTNodeMatchesHierarchyEnumerationOptions(v3, *(a1 + 40)))
  {
    [*(a1 + 32) addObject:?];
  }
}

void __67__AVTMemoji_addDerivedNodesMatchingStickerPattern_toArray_options___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __67__AVTMemoji_addDerivedNodesMatchingStickerPattern_toArray_options___block_invoke_4;
  v7 = &unk_1E7F49D58;
  v3 = *(a1 + 32);
  v9 = *(a1 + 40);
  v8 = v3;
  [a2 enumerateHierarchyUsingBlock:{v4, 3221225472, __67__AVTMemoji_addDerivedNodesMatchingStickerPattern_toArray_options___block_invoke_4, &unk_1E7F49D58}];
}

void __67__AVTMemoji_addDerivedNodesMatchingStickerPattern_toArray_options___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (AVTNodeMatchesHierarchyEnumerationOptions(v3, *(a1 + 40)))
  {
    [*(a1 + 32) addObject:?];
  }
}

- (void)initWithDescriptor:(void *)a1 usageIntent:(void *)a2 error:.cold.1(void *a1, void *a2)
{
  v3 = [a1 path];
  v4 = [a2 description];
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)setColorPreset:(unint64_t)a1 forCategory:colorIndex:.cold.2(unint64_t a1)
{
  v6 = AVTPresetCategoryToString(a1);
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end