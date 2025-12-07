@interface AVTAvatar
+ (AVTAvatar)avatarWithDataRepresentation:(id)representation usageIntent:(unint64_t)intent error:(id *)error;
+ (AVTAvatar)avatarWithDescriptor:(id)descriptor usageIntent:(unint64_t)intent error:(id *)error;
+ (double)applyGazeCorrectionWithInputAngle:(int32x4_t)angle translation:(__n128)translation;
+ (void)preloadAvatar:(id)avatar;
- ($9556BFE61B967AE735F1A0D700315F88)morphInfoForARKitBlendShapeIndex:(SEL)index;
- (AVTAvatar)init;
- (BOOL)arMode;
- (BOOL)usesSkinningForEyeOrientation;
- (VFXNode)avatarNode;
- (VFXNode)headNode;
- (__n128)arOffset;
- (double)physicsDownforceForNodeNamed:(id)named;
- (float)arScale;
- (float)opacity;
- (id)_cachePresentationConfigurationShaderModifiersForMaterial:(id)material cacheKey:(id)key shaderModifiersBuilder:(id)builder;
- (id)_objectsInDescriptors:(id)descriptors andHierarchy:(id)hierarchy passingTest:(id)test;
- (id)bakedAnimationCopy;
- (id)bakedAnimationPlayer;
- (id)blendShapeNameForARKitBlendShapeIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataRepresentation;
- (id)debugPoseJSONRepresentation;
- (id)effectiveMorphedNodeForTargetName:(id)name;
- (id)newDescriptor;
- (id)nodesMatchingStickerPattern:(id)pattern inHierarchy:(id)hierarchy options:(unint64_t)options includingDerivedNodes:(BOOL)nodes;
- (id)pose;
- (id)snapshotWithSize:(CGSize)size scale:(double)scale options:(id)options;
- (id)stickerPhysicsStateIdentifier;
- (int64_t)blendShapeIndexForARKitBlendShapeName:(id)name;
- (void)_addNodesMatchingStickerPattern:(id)pattern inHierarchy:(id)hierarchy toArray:(id)array options:(unint64_t)options;
- (void)_applyBlendShapes:(const float *)shapes parameters:(const float *)parameters;
- (void)_applyBlendShapesWithTrackingData:(id *)data;
- (void)_applyHeadPoseWithTrackingData:(id *)data gazeCorrection:(BOOL)correction pointOfView:(id)view;
- (void)_avatarNodeAndHeadNodeAreNowAvailable;
- (void)_preparePrePass:(BOOL)pass;
- (void)_resetFaceToRandomPosition;
- (void)_restoreOriginalShaderModifiersOfMaterial:(id)material;
- (void)_transitionFromPose:(id)pose toPose:(id)toPose bakedAnimationBlendFactor:(double)factor duration:(double)duration delay:(double)delay timingFunction:(id)function timingAnimation:(id)animation completionHandler:(id)self0;
- (void)_updateARModeShaderModifiersForMaterial:(id)material withOnTopMask:(BOOL)mask;
- (void)addCustomBehavioursInHierarchy:(id)hierarchy forBodyParts:(unint64_t)parts;
- (void)addDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:(id)key block:(id)block;
- (void)addDynamicsInHierarchy:(id)hierarchy ignoringUpperNodes:(id)nodes;
- (void)addMorpherDrivenMaterialsInHierarchy:(id)hierarchy;
- (void)addMorphingSkinningControllersInHierarchy:(id)hierarchy;
- (void)animatePhysicsScaleFactor:(double)factor duration:(double)duration;
- (void)applyBlendShapesWithTrackingInfo:(id)info;
- (void)applyHeadPoseWithTrackingInfo:(id)info gazeCorrection:(BOOL)correction pointOfView:(id)view;
- (void)avatarCommonInit;
- (void)avatarNode;
- (void)dealloc;
- (void)didAddToScene:(id)scene;
- (void)disabledBlendshapesSpecializationSettingsDidChange;
- (void)enumerateMorphInfoForCustomBlendShapeName:(id)name usingBlock:(id)block;
- (void)evaluateDynamicsAtTime:(double)time;
- (void)headNode;
- (void)newDescriptor;
- (void)opacity;
- (void)pauseBakedAnimation;
- (void)physicsSpecializationSettingsDidChange;
- (void)pose;
- (void)removeCustomBehavioursInHierarchy:(id)hierarchy forBodyParts:(unint64_t)parts;
- (void)removeDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:(id)key;
- (void)removeDynamicsInHierarchy:(id)hierarchy;
- (void)removeMorpherDrivenMaterialsInHierarchy:(id)hierarchy;
- (void)removeMorphingSkinningControllersInHierarchy:(id)hierarchy;
- (void)resetCustomBehaviours;
- (void)resetDynamics;
- (void)resetMorpherDrivenMaterials;
- (void)resetMorphingSkinningControllers;
- (void)resetPresentationConfigurationBehavioursInHierarchy:(id)hierarchy forBodyParts:(unint64_t)parts;
- (void)resumeBakedAnimation;
- (void)setArMode:(BOOL)mode;
- (void)setBakedAnimationReferenceTime:(double)time;
- (void)setOpacity:(float)opacity;
- (void)setPose:(id)pose;
- (void)setPresentationConfiguration:(id)configuration;
- (void)setupEyeOrientationAndReflections;
- (void)setupMorphInfo;
- (void)setupMorphInfoForChangeInSubHierarchy;
- (void)stickerPhysicsStateIdentifier;
- (void)stopTransitionAnimation;
- (void)stopTransitionAnimationWithBlendOutDuration:(double)duration;
- (void)transitionFromPose:(id)pose toPose:(id)toPose duration:(double)duration delay:(double)delay completionHandler:(id)handler;
- (void)transitionFromPose:(id)pose toPose:(id)toPose duration:(double)duration delay:(double)delay timingAnimation:(id)animation completionHandler:(id)handler;
- (void)transitionFromPose:(id)pose toPose:(id)toPose duration:(double)duration delay:(double)delay timingFunction:(id)function completionHandler:(id)handler;
- (void)transitionToPose:(id)pose duration:(double)duration delay:(double)delay completionHandler:(id)handler;
- (void)update;
- (void)updateAfterAnimationsEvaluatedAtTime:(double)time renderer:(id)renderer;
- (void)updateBindings;
- (void)updateBindingsOfNode:(id)node;
- (void)updateEyeOrientationAndReflections;
- (void)updateMorpherDrivenMaterialsWithDeltaTime:(double)time;
- (void)updatePoseWithCVAFaceTrackingAnimationDictionary:(void *)dictionary neckPosition:(uint64_t)position neckOrientation:(void *)orientation applySmoothing:(int)smoothing;
- (void)updatePoseWithFaceTrackingData:(id)data applySmoothing:(BOOL)smoothing;
- (void)updatePoseWithPoseProvider:(id)provider applySmoothing:(BOOL)smoothing;
- (void)willRemoveFromWorld:(id)world;
@end

@implementation AVTAvatar

- (void)avatarCommonInit
{
  if (AVTInitializeShaderCache_onceToken != -1)
  {
    AVTInitializeShaderCache_cold_1();
  }

  v3 = objc_alloc_init(AVTPhysicsController);
  physicsController = self->_physicsController;
  self->_physicsController = v3;

  [(AVTPhysicsController *)self->_physicsController setDelegate:?];
  self->_didUpdateAtTimeLock._os_unfair_lock_opaque = 0;
}

- (AVTAvatar)init
{
  v5.receiver = self;
  v5.super_class = AVTAvatar;
  v2 = [(AVTAvatar *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AVTAvatar *)v2 avatarCommonInit];
    v3->_physicsScaleFactor = 1.0;
  }

  return v3;
}

- (void)dealloc
{
  free(self->_morphInfoFromARKitBlendShapeIndex);
  free(self->_friendlyPoseMorphInfos);
  v3.receiver = self;
  v3.super_class = AVTAvatar;
  [(AVTAvatar *)&v3 dealloc];
}

- (__n128)arOffset
{
  specializationSettings = [self specializationSettings];
  v2 = [specializationSettings objectForKeyedSubscript:?];

  v3 = [v2 objectForKeyedSubscript:?];
  v4 = [v3 objectForKeyedSubscript:?];
  [v4 floatValue];
  v13 = v5;

  v6 = [v3 objectForKeyedSubscript:?];
  [v6 floatValue];
  v12 = v7;

  v8 = [v3 objectForKeyedSubscript:?];
  [v8 floatValue];
  v11 = v9;

  result.n128_u32[0] = v13;
  result.n128_u32[1] = v12;
  result.n128_u32[2] = v11;
  return result;
}

- (float)arScale
{
  specializationSettings = [(AVTAvatar *)self specializationSettings];
  v3 = [specializationSettings objectForKeyedSubscript:?];

  v4 = [v3 objectForKeyedSubscript:?];
  [v4 floatValue];
  v6 = v5;

  return v6;
}

- (double)physicsDownforceForNodeNamed:(id)named
{
  namedCopy = named;
  specializationSettings = [(AVTAvatar *)self specializationSettings];
  v6 = [specializationSettings objectForKeyedSubscript:?];

  v7 = [v6 objectForKeyedSubscript:?];
  v8 = [v6 objectForKey:?];
  v9 = v8;
  if (v8)
  {
    [v8 floatValue];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0xBFF0000000000000;
  v12 = namedCopy;
  [v7 enumerateObjectsUsingBlock:?];
  v10 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v10;
}

double __42__AVTAvatar_physicsDownforceForNodeNamed___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ([*(a1 + 32) isEqualToString:?])
  {
    result = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = result;
    *a4 = 1;
  }

  return result;
}

- (void)physicsSpecializationSettingsDidChange
{
  [(AVTAvatar *)self resetDynamics];
  physicsController = self->_physicsController;

  [(AVTPhysicsController *)physicsController downforcesDidChange];
}

- (void)_avatarNodeAndHeadNodeAreNowAvailable
{
  headNode = [(AVTAvatar *)self headNode];
  headNode = self->_headNode;
  self->_headNode = headNode;

  avatarNode = [(AVTAvatar *)self avatarNode];
  avatarNode = self->_avatarNode;
  self->_avatarNode = avatarNode;

  if (!self->_headNode || (v7 = self->_avatarNode) == 0)
  {
    [AVTAvatar _avatarNodeAndHeadNodeAreNowAvailable];
  }

  v8 = [VFXNode childNodeWithName:v7 recursively:"childNodeWithName:recursively:"];
  leftEye = self->_leftEye;
  self->_leftEye = v8;

  v10 = [VFXNode childNodeWithName:"childNodeWithName:recursively:" recursively:?];
  rightEye = self->_rightEye;
  self->_rightEye = v10;

  v12 = [VFXNode childNodeWithName:"childNodeWithName:recursively:" recursively:?];
  neckNode = self->_neckNode;
  self->_neckNode = v12;

  v14 = [VFXNode childNodeWithName:"childNodeWithName:recursively:" recursively:?];
  rootJointNode = self->_rootJointNode;
  self->_rootJointNode = v14;

  [(VFXNode *)self->_rootJointNode setPosition:?];
  [(VFXNode *)self->_rootJointNode setOrientation:?];
  [(AVTAvatar *)self arScale];
  self->_arScale = v16;
  [(AVTAvatar *)self arOffset];
  *self->_arOffset = v17;
  v18 = [(VFXNode *)self->_avatarNode animationPlayerForKey:?];
  animation = [v18 animation];
  caAnimation = [animation caAnimation];
  bakedAnimation = self->_bakedAnimation;
  self->_bakedAnimation = caAnimation;

  [(AVTAvatar *)self setupMorphInfo];

  [(AVTAvatar *)self setupEyeOrientationAndReflections];
}

- (VFXNode)headNode
{
  v2 = avt_default_log(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [AVTAvatar headNode];
  }

  return 0;
}

- (VFXNode)avatarNode
{
  v2 = avt_default_log(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [AVTAvatar avatarNode];
  }

  return 0;
}

- (void)setBakedAnimationReferenceTime:(double)time
{
  if (self->_bakedAnimation)
  {
    bakedAnimationPlayer_lazy = self->_bakedAnimationPlayer_lazy;
    self->_bakedAnimationPlayer_lazy = 0;

    [(CAAnimation *)self->_bakedAnimation setBeginTime:?];
    [(CAAnimation *)self->_bakedAnimation setTimeOffset:?];
    v6 = [MEMORY[0x1E69DF2B0] animationWithCAAnimation:?];
    v5 = [MEMORY[0x1E69DF2C0] animationPlayerWithAnimation:?];
    [v5 setTimeSource:?];
    [v5 setTimeOrigin:?];
    [VFXNode addAnimationPlayer:"addAnimationPlayer:forKey:" forKey:?];
  }
}

- (void)pauseBakedAnimation
{
  if (self->_bakedAnimation)
  {
    bakedAnimationPlayer_lazy = self->_bakedAnimationPlayer_lazy;
    self->_bakedAnimationPlayer_lazy = 0;

    avatarNode = self->_avatarNode;

    [(VFXNode *)avatarNode removeAnimationForKey:?];
  }
}

- (void)resumeBakedAnimation
{
  if (self->_bakedAnimation)
  {
    bakedAnimationPlayer_lazy = self->_bakedAnimationPlayer_lazy;
    self->_bakedAnimationPlayer_lazy = 0;

    v5 = [MEMORY[0x1E69DF2B0] animationWithCAAnimation:?];
    v4 = [MEMORY[0x1E69DF2C0] animationPlayerWithAnimation:?];
    [v4 setTimeSource:?];
    [v4 setTimeOrigin:?];
    [VFXNode addAnimationPlayer:"addAnimationPlayer:forKey:" forKey:?];
  }
}

- (id)bakedAnimationCopy
{
  bakedAnimation = self->_bakedAnimation;
  if (bakedAnimation)
  {
    bakedAnimation = [(CAAnimation *)bakedAnimation copy];
    v2 = vars8;
  }

  return bakedAnimation;
}

- (id)bakedAnimationPlayer
{
  if (self->_bakedAnimation)
  {
    bakedAnimationPlayer_lazy = self->_bakedAnimationPlayer_lazy;
    if (!bakedAnimationPlayer_lazy)
    {
      v5 = [(VFXNode *)self->_avatarNode animationPlayerForKey:?];
      v6 = self->_bakedAnimationPlayer_lazy;
      self->_bakedAnimationPlayer_lazy = v5;

      bakedAnimationPlayer_lazy = self->_bakedAnimationPlayer_lazy;
    }

    v7 = bakedAnimationPlayer_lazy;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_restoreOriginalShaderModifiersOfMaterial:(id)material
{
  materialCopy = material;
  v4 = objc_getAssociatedObject(materialCopy, @"kAVTOriginalShaderModifiers");
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = materialCopy;
LABEL_6:
      [v5 setShaderModifiers:?];
      goto LABEL_10;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v5 = materialCopy;
      goto LABEL_6;
    }

    v7 = avt_default_log(isKindOfClass);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AVTAvatar _restoreOriginalShaderModifiersOfMaterial:];
    }
  }

LABEL_10:
}

- (id)_cachePresentationConfigurationShaderModifiersForMaterial:(id)material cacheKey:(id)key shaderModifiersBuilder:(id)builder
{
  materialCopy = material;
  keyCopy = key;
  builderCopy = builder;
  v10 = objc_getAssociatedObject(materialCopy, keyCopy);
  if (!v10)
  {
    v11 = objc_getAssociatedObject(materialCopy, @"kAVTOriginalShaderModifiers");
    if (!v11)
    {
      shaderModifiers = [materialCopy shaderModifiers];
      if ([shaderModifiers count])
      {
        null = shaderModifiers;
      }

      else
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v12 = null;
      objc_setAssociatedObject(materialCopy, @"kAVTOriginalShaderModifiers", null, 0x303);
      goto LABEL_14;
    }

    v12 = v11;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v12 = v12;
        shaderModifiers = v12;
LABEL_14:
        v10 = builderCopy[2](builderCopy, shaderModifiers);
        objc_setAssociatedObject(materialCopy, keyCopy, v10, 0x303);

        goto LABEL_15;
      }

      v16 = avt_default_log(isKindOfClass);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [AVTAvatar _restoreOriginalShaderModifiersOfMaterial:];
      }
    }

    shaderModifiers = 0;
    goto LABEL_14;
  }

LABEL_15:

  return v10;
}

- (void)_updateARModeShaderModifiersForMaterial:(id)material withOnTopMask:(BOOL)mask
{
  materialCopy = material;
  if ([(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR])
  {
    v6 = [AVTAvatar _cachePresentationConfigurationShaderModifiersForMaterial:"_cachePresentationConfigurationShaderModifiersForMaterial:cacheKey:shaderModifiersBuilder:" cacheKey:? shaderModifiersBuilder:?];
    [materialCopy setShaderModifiers:?];
  }

  else
  {
    [(AVTAvatar *)self _restoreOriginalShaderModifiersOfMaterial:?];
  }
}

void *__67__AVTAvatar__updateARModeShaderModifiersForMaterial_withOnTopMask___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = @"#pragma body\n#ifdef USE_COLOR1_OUTPUT\n_output.color1.rg = half2(1.h, 1.h);\n#endif\n";
  if (*(a1 + 32))
  {
    v4 = @"#pragma body\n#ifdef USE_COLOR1_OUTPUT\n_output.color1.rg = 1.h - half2(onTopMask.sample(sampler(), _surface.diffuseTexcoord).rg);\n#endif\n";
  }

  v5 = v4;
  v6 = [v3 objectForKeyedSubscript:?];
  v7 = AVTMergeShaderModifiersForEntryPointWithPartsAndCode(0, @"#pragma arguments\ntexture2d onTopMask\n", v5, v6);;

  if ([v3 count])
  {
    v8 = [v3 mutableCopy];
    [v8 setObject:? forKeyedSubscript:?];
  }

  else
  {
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
  }

  return v8;
}

- (BOOL)arMode
{
  if ((arMode_done & 1) == 0)
  {
    arMode_done = 1;
    v3 = avt_default_log(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [AVTAvatar arMode];
    }
  }

  return [(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR];
}

- (void)setArMode:(BOOL)mode
{
  modeCopy = mode;
  if ((setArMode__done & 1) == 0)
  {
    setArMode__done = 1;
    v5 = avt_default_log(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [AVTAvatar setArMode:];
    }
  }

  if (modeCopy)
  {
    v6 = objc_alloc_init(AVTAugmentedRealityPresentationConfiguration);
  }

  else
  {
    v6 = +[AVTClassicPresentationConfiguration sharedConfiguration];
  }

  v7 = v6;
  [(AVTAvatar *)self setPresentationConfiguration:?];
}

- (void)setPresentationConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self->_presentationConfiguration != configurationCopy)
  {
    v13 = configurationCopy;
    usesAR = [(AVTPresentationConfiguration *)configurationCopy usesAR];
    usesAR2 = [(AVTPresentationConfiguration *)self->_presentationConfiguration usesAR];
    [AVTAvatar removePresentationConfigurationBehavioursInHierarchy:"removePresentationConfigurationBehavioursInHierarchy:forBodyParts:" forBodyParts:?];
    objc_storeStrong(&self->_presentationConfiguration, configuration);
    [AVTAvatar resetPresentationConfigurationBehavioursInHierarchy:"resetPresentationConfigurationBehavioursInHierarchy:forBodyParts:" forBodyParts:?];
    configurationCopy = v13;
    if (usesAR != usesAR2)
    {
      v8.i32[0] = 1.0;
      if (usesAR)
      {
        v8.i32[0] = LODWORD(self->_arScale);
      }

      v12 = vdupq_lane_s32(v8, 0);
      [(VFXNode *)self->_neckNode scale:*&v8];
      v11 = vmvnq_s8(vceqq_f32(v10, v12));
      v11.i32[3] = v11.i32[2];
      configurationCopy = v13;
      if ((vmaxvq_u32(v11) & 0x80000000) != 0)
      {
        [MEMORY[0x1E69DF378] begin];
        [(VFXNode *)self->_neckNode setScale:?];
        [MEMORY[0x1E69DF378] commit];
        configurationCopy = v13;
      }
    }
  }
}

- (void)resetPresentationConfigurationBehavioursInHierarchy:(id)hierarchy forBodyParts:(unint64_t)parts
{
  presentationConfiguration = self->_presentationConfiguration;
  hierarchyCopy = hierarchy;
  [(AVTPresentationConfiguration *)presentationConfiguration usesAR];
  [hierarchyCopy enumerateHierarchyUsingBlock:?];

  specializationSettings = [(AVTAvatar *)self specializationSettings];
  v8 = [specializationSettings objectForKeyedSubscript:?];

  v9 = [v8 objectForKeyedSubscript:?];
  if ([v9 count])
  {
    avatarNode = self->_avatarNode;
    v20 = v9;
    [(VFXNode *)avatarNode enumerateChildNodesUsingBlock:?];
  }

  v11 = [v8 objectForKeyedSubscript:?];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 objectForKeyedSubscript:?];
    v14 = [VFXNode childNodeWithName:"childNodeWithName:recursively:" recursively:?];
    [v14 setHidden:?];
    v15 = [v12 objectForKeyedSubscript:?];
    v16 = [VFXNode childNodeWithName:"childNodeWithName:recursively:" recursively:?];
    morpher = [v16 morpher];

    if (!morpher)
    {
      morpher2 = [v14 morpher];
      v19 = [morpher2 copy];
      [v16 setMorpher:?];
    }

    [v16 setHidden:?];
  }
}

void __78__AVTAvatar_resetPresentationConfigurationBehavioursInHierarchy_forBodyParts___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 model];
  v4 = [v3 materials];

  v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0];
    do
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(8 * i) customMaterialPropertyNames];
        [v9 containsObject:?];

        [*(a1 + 32) _updateARModeShaderModifiersForMaterial:? withOnTopMask:?];
      }

      v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v6);
  }
}

void __78__AVTAvatar_resetPresentationConfigurationBehavioursInHierarchy_forBodyParts___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 name];
  if (v3)
  {
    v4 = v3;
    v5 = *(a1 + 32);
    v6 = [v7 name];
    LODWORD(v5) = [v5 containsObject:?];

    if (v5)
    {
      [v7 setHidden:?];
    }
  }
}

- (void)updateBindings
{
  headNode = [(AVTAvatar *)self headNode];
  parentNode = [headNode parentNode];
  [(AVTAvatar *)self updateBindingsOfNode:?];
}

- (void)updateBindingsOfNode:(id)node
{
  v15 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  if (!self->_headNode || !self->_morphInfoFromARKitBlendShapeIndex)
  {
    [AVTAvatar updateBindingsOfNode:];
  }

  v5 = nodeCopy;
  strcpy(v14, "morpher.weights[000]");
  strcpy(v13, "morpher.weights[000]");
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __34__AVTAvatar_updateBindingsOfNode___block_invoke;
  v9 = &unk_1E7F491E8;
  selfCopy = self;
  v11 = v14;
  v12 = v13;
  [nodeCopy enumerateHierarchyUsingBlock:?];
}

void __34__AVTAvatar_updateBindingsOfNode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1 + 32) + 24) != v3)
  {
    v5 = [v3 morpher];
    if (v5)
    {
      [v4 removeAllBindings];
      v6 = [v5 targets];
      v7 = MEMORY[0x1E69E9820];
      v8 = 3221225472;
      v9 = __34__AVTAvatar_updateBindingsOfNode___block_invoke_2;
      v10 = &unk_1E7F491C0;
      v11 = *(a1 + 32);
      v12 = v4;
      v13 = *(a1 + 40);
      [v6 enumerateObjectsUsingBlock:{v7, 3221225472, __34__AVTAvatar_updateBindingsOfNode___block_invoke_2, &unk_1E7F491C0, v11}];
    }
  }
}

uint64_t __34__AVTAvatar_updateBindingsOfNode___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v14 = [a2 name];
  if (AVTMorphTargetNameIsUsedForBindings(v14))
  {
    v5 = [*(a1 + 32) effectiveMorphedNodeForTargetName:?];
    v6 = v5;
    if (v5)
    {
      if (v5 != *(a1 + 40))
      {
        v7 = [v5 morpher];
        v8 = [v7 _weightIndexForTargetNamed:?];

        if (v8 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 = ((v8 * 0xA3D70A3D70A3D70BLL) >> 64) + v8;
          *(*(a1 + 48) + 16) = (v9 < 0) + (v9 >> 6) + 48;
          *(*(a1 + 48) + 17) = v8 / 10 + 48;
          *(*(a1 + 48) + 18) = v8 % 10 + 48;
          *(*(a1 + 56) + 16) = a3 / 0x64 + 48;
          *(*(a1 + 56) + 17) = a3 / 0xA + 48;
          *(*(a1 + 56) + 18) = (a3 % 0xA) | 0x30;
          v10 = *(a1 + 40);
          v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:?];
          v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:?];
          [v10 bindAnimatablePath:? toObject:? withKeyPath:? options:?];
        }
      }
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

- (void)resetCustomBehaviours
{
  [(AVTAvatar *)self resetMorphingSkinningControllers];
  [AVTAvatar resetPresentationConfigurationBehavioursInHierarchy:"resetPresentationConfigurationBehavioursInHierarchy:forBodyParts:" forBodyParts:?];

  [(AVTAvatar *)self setupMorphInfoForChangeInSubHierarchy];
}

- (void)addCustomBehavioursInHierarchy:(id)hierarchy forBodyParts:(unint64_t)parts
{
  hierarchyCopy = hierarchy;
  [(AVTAvatar *)self addMorphingSkinningControllersInHierarchy:?];
  [AVTAvatar resetPresentationConfigurationBehavioursInHierarchy:"resetPresentationConfigurationBehavioursInHierarchy:forBodyParts:" forBodyParts:?];

  [(AVTAvatar *)self setupMorphInfoForChangeInSubHierarchy];
}

- (void)removeCustomBehavioursInHierarchy:(id)hierarchy forBodyParts:(unint64_t)parts
{
  [(AVTAvatar *)self removeMorphingSkinningControllersInHierarchy:?];

  [(AVTAvatar *)self setupMorphInfoForChangeInSubHierarchy];
}

- (void)disabledBlendshapesSpecializationSettingsDidChange
{
  if (self->_morphInfoFromARKitBlendShapeIndex)
  {
    specializationSettings = [(AVTAvatar *)self specializationSettings];
    v9 = [specializationSettings objectForKeyedSubscript:?];

    v4 = 0;
    for (i = 0; i != 52; ++i)
    {
      v6 = AVTBlendShapeLocationFromARIndex(i);
      v7 = [v9 containsObject:?];
      v8 = &self->_morphInfoFromARKitBlendShapeIndex[v4];
      v8->var3 = v7 ^ 1;
      if (((v7 ^ 1) & 1) == 0)
      {
        [v8->var0 setWeight:? forTargetAtIndex:?];
      }

      ++v4;
    }
  }
}

- (void)resetMorphingSkinningControllers
{
  [(AVTAvatar *)self resetDynamics];

  [(AVTAvatar *)self resetMorpherDrivenMaterials];
}

- (void)addMorphingSkinningControllersInHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  [AVTAvatar addDynamicsInHierarchy:"addDynamicsInHierarchy:ignoringUpperNodes:" ignoringUpperNodes:?];
  [(AVTAvatar *)self addMorpherDrivenMaterialsInHierarchy:?];
}

- (void)removeMorphingSkinningControllersInHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  [(AVTAvatar *)self removeDynamicsInHierarchy:?];
  [(AVTAvatar *)self removeMorpherDrivenMaterialsInHierarchy:?];
}

- (id)_objectsInDescriptors:(id)descriptors andHierarchy:(id)hierarchy passingTest:(id)test
{
  descriptorsCopy = descriptors;
  hierarchyCopy = hierarchy;
  testCopy = test;
  if ([descriptorsCopy count])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__5;
    v18 = __Block_byref_object_dispose__5;
    v19 = 0;
    v12 = descriptorsCopy;
    v13 = testCopy;
    [hierarchyCopy enumerateHierarchyUsingBlock:?];
    v10 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __60__AVTAvatar__objectsInDescriptors_andHierarchy_passingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:0 objects:? count:?];
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0];
    do
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ((*(*(a1 + 40) + 16))())
        {
          v9 = *(*(*(a1 + 48) + 8) + 40);
          if (!v9)
          {
            v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v11 = *(*(a1 + 48) + 8);
            v12 = *(v11 + 40);
            *(v11 + 40) = v10;

            v9 = *(*(*(a1 + 48) + 8) + 40);
          }

          [v9 addObject:?];
        }
      }

      v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v6);
  }
}

- (void)resetDynamics
{
  if (self->_avatarNode)
  {
    v3 = self->_dynamics;
    v4 = [NSMutableArray countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:0];
    if (v4)
    {
      v5 = v4;
      v6 = MEMORY[0];
      do
      {
        for (i = 0; i != v5; i = (i + 1))
        {
          if (MEMORY[0] != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(8 * i) resetTarget];
        }

        v5 = [NSMutableArray countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v5);
    }

    dynamics = self->_dynamics;
    self->_dynamics = 0;

    upperNodesIgnoredByDynamics = [(AVTAvatar *)self upperNodesIgnoredByDynamics];
    [AVTAvatar addDynamicsInHierarchy:"addDynamicsInHierarchy:ignoringUpperNodes:" ignoringUpperNodes:?];
  }
}

- (void)addDynamicsInHierarchy:(id)hierarchy ignoringUpperNodes:(id)nodes
{
  hierarchyCopy = hierarchy;
  nodesCopy = nodes;
  if (!-[AVTAvatar optimizeForSnapshot](self, "optimizeForSnapshot") || [nodesCopy count])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__AVTAvatar_addDynamicsInHierarchy_ignoringUpperNodes___block_invoke;
    v8[3] = &unk_1E7F49238;
    v8[4] = self;
    [AVTPhysicalizedMorpherDynamic enumerateDynamicsInHierarchy:hierarchyCopy forAvatar:self ignoredUpperNodes:nodesCopy usingBlock:v8];
    [AVTPhysicalizedSkeletonDynamic enumerateDynamicsInHierarchy:hierarchyCopy forAvatar:self usingBlock:v8];
    [AVTSpringDynamic enumerateDynamicsInHierarchy:hierarchyCopy forAvatar:self usingBlock:v8];
  }
}

void __55__AVTAvatar_addDynamicsInHierarchy_ignoringUpperNodes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 128);
  v8 = v3;
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = *(a1 + 32);
    v7 = *(v6 + 128);
    *(v6 + 128) = v5;

    v4 = *(*(a1 + 32) + 128);
  }

  [v4 addObject:?];
}

- (void)removeDynamicsInHierarchy:(id)hierarchy
{
  v4 = [AVTAvatar _objectsInDescriptors:"_objectsInDescriptors:andHierarchy:passingTest:" andHierarchy:? passingTest:?];
  if ([v4 count])
  {
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:0 objects:? count:?];
    if (v6)
    {
      v7 = v6;
      v8 = MEMORY[0];
      do
      {
        for (i = 0; i != v7; i = (i + 1))
        {
          if (MEMORY[0] != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(8 * i) resetTarget];
        }

        v7 = [v5 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v7);
    }

    [(NSMutableArray *)self->_dynamics removeObjectsInArray:?];
    if (![(NSMutableArray *)self->_dynamics count])
    {
      dynamics = self->_dynamics;
      self->_dynamics = 0;
    }
  }
}

- (void)evaluateDynamicsAtTime:(double)time
{
  v3 = self->_dynamics;
  v4 = [NSMutableArray countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0];
    do
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        if (MEMORY[0] != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(8 * i) evaluateAtTime:? physicsController:?];
      }

      v5 = [NSMutableArray countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v5);
  }
}

- (void)resetMorpherDrivenMaterials
{
  morpherDrivenMaterialDescriptors = self->_morpherDrivenMaterialDescriptors;
  self->_morpherDrivenMaterialDescriptors = 0;

  avatarNode = [(AVTAvatar *)self avatarNode];
  [(AVTAvatar *)self addMorpherDrivenMaterialsInHierarchy:?];
}

- (void)addMorpherDrivenMaterialsInHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  specializationSettings = [(AVTAvatar *)self specializationSettings];
  v6 = [specializationSettings objectForKeyedSubscript:?];

  if ([v6 count])
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __50__AVTAvatar_addMorpherDrivenMaterialsInHierarchy___block_invoke;
    v16 = &unk_1E7F492A8;
    selfCopy = self;
    v18 = hierarchyCopy;
    [v6 enumerateKeysAndObjectsUsingBlock:?];
    allKeys = [v6 allKeys];
    v8 = [allKeys count];
    v9 = [(NSMutableArray *)self->_morpherDrivenMaterialDescriptors count];

    if (v8 != v9)
    {
      v11 = avt_default_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_1BB472000, v11, OS_LOG_TYPE_DEFAULT, "Failed to create morpher-driven material", v12, 2u);
      }
    }
  }
}

void __50__AVTAvatar_addMorpherDrivenMaterialsInHierarchy___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v40 = a1;
  v7 = [*(a1 + 32) effectiveMorphedNodeForTargetName:?];
  v36 = v7;
  if (v7)
  {
    v8 = [v7 morpher];
    v35 = [v8 _weightIndexForTargetNamed:?];
  }

  else
  {
    v35 = 0x7FFFFFFFFFFFFFFFLL;
  }

  objc_opt_class();
  v33 = v6;
  v34 = v5;
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
  }

  else
  {
    v9 = [MEMORY[0x1E695DEC8] arrayWithObject:?];
  }

  obj = v9;
  v39 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v39)
  {
    v38 = MEMORY[0];
    do
    {
      v10 = 0;
      do
      {
        if (MEMORY[0] != v38)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(8 * v10);
        v12 = [v11 objectForKeyedSubscript:?];
        v13 = [v11 objectForKeyedSubscript:?];
        newValue = [v11 objectForKeyedSubscript:?];
        v14 = *(v40 + 40);
        v42 = v12;
        v41 = [v14 childNodesPassingTest:? recursively:?];
        v15 = [v41 lastObject];
        v16 = [v15 model];
        v17 = [v16 materials];

        v18 = [v17 countByEnumeratingWithState:? objects:? count:?];
        if (v18)
        {
          v19 = v18;
          v20 = MEMORY[0];
          while (2)
          {
            for (i = 0; i != v19; i = (i + 1))
            {
              if (MEMORY[0] != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(8 * i);
              v23 = [v22 name];
              v24 = [v23 isEqualToString:?];

              if (v24)
              {
                v25 = objc_alloc_init(AVTMorpherDrivenMaterialDescriptor);
                v26 = [v36 morpher];
                [(AVTPupilReflectionCorrectionDescriptor *)v25 setReadMorpher:v26];

                [(AVTPupilReflectionCorrectionDescriptor *)v25 setLeftEyeMaterial:v36];
                if (v25)
                {
                  v25->_morphTargetIndex = v35;
                  [(AVTPhysicsRig *)v25 setPhysicsBody:v22];
                  objc_setProperty_nonatomic_copy(v25, v27, newValue, 40);
                }

                else
                {
                  [(AVTPhysicsRig *)0 setPhysicsBody:v22];
                }

                v28 = *(*(v40 + 32) + 136);
                if (!v28)
                {
                  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  v30 = *(v40 + 32);
                  v31 = *(v30 + 136);
                  *(v30 + 136) = v29;

                  v28 = *(*(v40 + 32) + 136);
                }

                [v28 addObject:?];

                goto LABEL_26;
              }
            }

            v19 = [v17 countByEnumeratingWithState:? objects:? count:?];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

LABEL_26:

        v10 = (v10 + 1);
      }

      while (v10 != v39);
      v32 = [obj countByEnumeratingWithState:? objects:? count:?];
      v39 = v32;
    }

    while (v32);
  }
}

uint64_t __50__AVTAvatar_addMorpherDrivenMaterialsInHierarchy___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = a2;
  v5 = [v4 model];
  if (v5)
  {
    v6 = [v4 name];
    v7 = [v6 isEqualToString:?];

    if (v7)
    {
      v5 = 1;
      *a3 = 1;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)removeMorpherDrivenMaterialsInHierarchy:(id)hierarchy
{
  v4 = [AVTAvatar _objectsInDescriptors:"_objectsInDescriptors:andHierarchy:passingTest:" andHierarchy:? passingTest:?];
  if ([v4 count])
  {
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:0 objects:? count:?];
    if (v6)
    {
      v7 = v6;
      v8 = MEMORY[0];
      do
      {
        v9 = 0;
        do
        {
          if (MEMORY[0] != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(8 * v9);
          if (v10)
          {
            v11 = *(v10 + 32);
          }

          else
          {
            v11 = 0;
          }

          [v11 setValue:? forKey:?];

          v9 = (v9 + 1);
        }

        while (v7 != v9);
        v12 = [v5 countByEnumeratingWithState:? objects:? count:?];
        v7 = v12;
      }

      while (v12);
    }

    [(NSMutableArray *)self->_morpherDrivenMaterialDescriptors removeObjectsInArray:?];
    if (![(NSMutableArray *)self->_morpherDrivenMaterialDescriptors count])
    {
      morpherDrivenMaterialDescriptors = self->_morpherDrivenMaterialDescriptors;
      self->_morpherDrivenMaterialDescriptors = 0;
    }
  }
}

- (void)updateMorpherDrivenMaterialsWithDeltaTime:(double)time
{
  if ([(NSMutableArray *)self->_morpherDrivenMaterialDescriptors count])
  {
    v4 = MEMORY[0x1E69DF378];
    world = [(VFXNode *)self->_avatarNode world];
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __55__AVTAvatar_updateMorpherDrivenMaterialsWithDeltaTime___block_invoke;
    v9 = &unk_1E7F492F0;
    selfCopy = self;
    [v4 performPresentationObjectQueriesInWorld:? usingBlock:?];
  }
}

void __55__AVTAvatar_updateMorpherDrivenMaterialsWithDeltaTime___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 136);
  v3 = [v2 countByEnumeratingWithState:0 objects:? count:?];
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0];
    do
    {
      v6 = 0;
      do
      {
        if (MEMORY[0] != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(8 * v6);
        if (v7)
        {
          [*(v7 + 8) _presentationWeightForTargetAtIndex:? token:?];
          v8 = *(v7 + 32);
        }

        else
        {
          [0 _presentationWeightForTargetAtIndex:? token:?];
          v8 = 0;
        }

        v9 = v8;
        v10 = [MEMORY[0x1E696AD98] numberWithFloat:?];
        [v9 setValue:? forKey:?];

        v6 = (v6 + 1);
      }

      while (v4 != v6);
      v11 = [v2 countByEnumeratingWithState:? objects:? count:?];
      v4 = v11;
    }

    while (v11);
  }
}

- (BOOL)usesSkinningForEyeOrientation
{
  specializationSettings = [(AVTAvatar *)self specializationSettings];
  v3 = [specializationSettings objectForKeyedSubscript:?];

  v4 = [v3 objectForKeyedSubscript:?];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)setupEyeOrientationAndReflections
{
  v4 = objc_alloc_init(AVTEyeSkinningDescriptor);
  v5 = *(self + 152);
  *(self + 152) = v4;

  [(AVTPupilReflectionCorrectionDescriptor *)*(self + 152) setReadMorpher:a2];
  v6 = [*(self + 8) childNodeWithName:? recursively:?];
  [(AVTPupilReflectionCorrectionDescriptor *)*(self + 152) setLeftEyeMaterial:v6];

  v7 = [*(self + 8) childNodeWithName:? recursively:?];
  [(AVTPupilReflectionCorrectionDescriptor *)*(self + 152) setRightEyeMaterial:v7];

  v8 = [a2 _weightIndexForTargetNamed:?];
  v9 = *(self + 152);
  if (v9)
  {
    *(v9 + 32) = v8;
  }

  v10 = [a2 _weightIndexForTargetNamed:?];
  v11 = *(self + 152);
  if (v11)
  {
    *(v11 + 40) = v10;
  }

  v12 = [a2 _weightIndexForTargetNamed:?];
  v13 = *(self + 152);
  if (v13)
  {
    *(v13 + 48) = v12;
  }

  v14 = [a2 _weightIndexForTargetNamed:?];
  v15 = *(self + 152);
  if (v15)
  {
    *(v15 + 56) = v14;
  }

  v16 = [a2 _weightIndexForTargetNamed:?];
  v17 = *(self + 152);
  if (v17)
  {
    *(v17 + 64) = v16;
  }

  v18 = [a2 _weightIndexForTargetNamed:?];
  v19 = *(self + 152);
  if (v19)
  {
    *(v19 + 72) = v18;
  }

  v20 = [a2 _weightIndexForTargetNamed:?];
  v21 = *(self + 152);
  if (v21)
  {
    *(v21 + 80) = v20;
  }

  result = [a2 _weightIndexForTargetNamed:?];
  v23 = *(self + 152);
  if (v23)
  {
    *(v23 + 88) = result;
  }

  return result;
}

- (void)updateEyeOrientationAndReflections
{
  if (self->_pupilReflectionCorrectionDescriptor)
  {
    v3 = MEMORY[0x1E69DF378];
    world = [(VFXNode *)self->_avatarNode world];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __47__AVTAvatar_updateEyeOrientationAndReflections__block_invoke;
    v13 = &unk_1E7F492F0;
    selfCopy = self;
    [v3 performPresentationObjectQueriesInWorld:? usingBlock:?];
  }

  if (self->_eyeSkinningDescriptor)
  {
    v5 = MEMORY[0x1E69DF378];
    world2 = [(VFXNode *)self->_avatarNode world];
    v7 = __47__AVTAvatar_updateEyeOrientationAndReflections__block_invoke_2;
    v8 = &unk_1E7F492F0;
    selfCopy2 = self;
    [v5 performPresentationObjectQueriesInWorld:MEMORY[0x1E69E9820] usingBlock:3221225472];
  }
}

- (void)willRemoveFromWorld:(id)world
{
  physicsController = self->_physicsController;
  physicsWorld = [world physicsWorld];
  [(AVTPhysicsController *)physicsController removeFromPhysicsWorld:?];
}

- (void)didAddToScene:(id)scene
{
  physicsController = self->_physicsController;
  physicsWorld = [scene physicsWorld];
  [(AVTPhysicsController *)physicsController addToPhysicsWorld:?];
}

- (void)updateAfterAnimationsEvaluatedAtTime:(double)time renderer:(id)renderer
{
  rendererCopy = renderer;
  self->_lastRenderTime = time;
  [AVTPhysicsController updateAtTime:"updateAtTime:forceMultiplier:" forceMultiplier:?];
  [(AVTAvatar *)self evaluateDynamicsAtTime:?];
  [(AVTAvatar *)self updateEyeOrientationAndReflections];
  [(AVTAvatar *)self updateMorpherDrivenMaterialsWithDeltaTime:?];
  if (self->_didUpdateAtTimeCallbackItems)
  {
    os_unfair_lock_lock(&self->_didUpdateAtTimeLock);
    v7 = [(NSMutableArray *)self->_didUpdateAtTimeCallbackItems count];
    if (v7 - 1 >= 0)
    {
      v8 = v7;
      do
      {
        --v8;
        v15 = 0;
        v9 = [(NSMutableArray *)self->_didUpdateAtTimeCallbackItems objectAtIndexedSubscript:?];
        v11 = v9;
        if (v9)
        {
          if ((*(v9 + 8) & 1) == 0)
          {
            *(v9 + 8) = 1;
            *(v9 + 16) = time;
          }

          v12 = *(v9 + 32);
          v13 = v12 + 16;
          v10.n128_u64[0] = v11[2];
        }

        else
        {
          v12 = 0;
          v10.n128_u64[0] = 0;
          v13 = 16;
        }

        (*v13)(v12, self, rendererCopy, &v15, time, v10);

        if (v15 == 1)
        {
          [(NSMutableArray *)self->_didUpdateAtTimeCallbackItems removeObjectAtIndex:?];
          if (![(NSMutableArray *)self->_didUpdateAtTimeCallbackItems count])
          {
            didUpdateAtTimeCallbackItems = self->_didUpdateAtTimeCallbackItems;
            self->_didUpdateAtTimeCallbackItems = 0;
          }
        }
      }

      while (v8 > 0);
    }

    os_unfair_lock_unlock(&self->_didUpdateAtTimeLock);
  }
}

- (void)addDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:(id)key block:(id)block
{
  keyCopy = key;
  blockCopy = block;
  os_unfair_lock_lock(&self->_didUpdateAtTimeLock);
  v8 = objc_alloc_init(AVTAvatarDidUpdateAtTimeCallbackItem);
  v9 = [keyCopy copy];
  v11 = v9;
  if (v8)
  {
    objc_setProperty_nonatomic_copy(v8, v10, v9, 24);

    v12 = [blockCopy copy];
    objc_setProperty_nonatomic_copy(v8, v13, v12, 32);
  }

  else
  {

    v12 = [blockCopy copy];
  }

  didUpdateAtTimeCallbackItems = self->_didUpdateAtTimeCallbackItems;
  if (didUpdateAtTimeCallbackItems)
  {
    v19 = keyCopy;
    v15 = [(NSMutableArray *)didUpdateAtTimeCallbackItems indexOfObjectPassingTest:?];
    v16 = self->_didUpdateAtTimeCallbackItems;
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [NSMutableArray insertObject:v16 atIndex:"insertObject:atIndex:"];
    }

    else
    {
      [NSMutableArray setObject:v16 atIndexedSubscript:"setObject:atIndexedSubscript:"];
    }

    v18 = v19;
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:0];
    v18 = self->_didUpdateAtTimeCallbackItems;
    self->_didUpdateAtTimeCallbackItems = v17;
  }

  os_unfair_lock_unlock(&self->_didUpdateAtTimeLock);
}

- (void)removeDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_didUpdateAtTimeLock);
  didUpdateAtTimeCallbackItems = self->_didUpdateAtTimeCallbackItems;
  v6 = keyCopy;
  if ([(NSMutableArray *)didUpdateAtTimeCallbackItems indexOfObjectPassingTest:?]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_didUpdateAtTimeCallbackItems removeObjectAtIndex:?];
    if (![(NSMutableArray *)self->_didUpdateAtTimeCallbackItems count])
    {
      v7 = self->_didUpdateAtTimeCallbackItems;
      self->_didUpdateAtTimeCallbackItems = 0;
    }
  }

  os_unfair_lock_unlock(&self->_didUpdateAtTimeLock);
}

- (id)effectiveMorphedNodeForTargetName:(id)name
{
  nameCopy = name;
  specializationSettings = [(AVTAvatar *)self specializationSettings];
  v6 = [specializationSettings objectForKeyedSubscript:?];

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__5;
  v19 = 0;
  v13 = MEMORY[0x1E69E9820];
  v7 = nameCopy;
  [v6 enumerateKeysAndObjectsUsingBlock:{v13, 3221225472, __47__AVTAvatar_effectiveMorphedNodeForTargetName___block_invoke, &unk_1E7F47D68}];
  v8 = self->_headNode;
  v9 = v15[5];
  if (v9)
  {
    v10 = [v9 objectForKeyedSubscript:?];
    v11 = [VFXNode childNodeWithName:"childNodeWithName:recursively:" recursively:?];

    v8 = v11;
  }

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __47__AVTAvatar_effectiveMorphedNodeForTargetName___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ([*(a1 + 32) isEqualToString:?])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (void)setupMorphInfo
{
  headNode = self->_headNode;
  morphInfoFromARKitBlendShapeIndex = self->_morphInfoFromARKitBlendShapeIndex;
  if (headNode)
  {
    self->_morphInfoFromARKitBlendShapeIndex = malloc_type_realloc(morphInfoFromARKitBlendShapeIndex, 0x680uLL, 0x108004077A7B0B0uLL);
    specializationSettings = [(AVTAvatar *)self specializationSettings];
    v17 = [specializationSettings objectForKeyedSubscript:?];

    v6 = 0;
    for (i = 0; i != 52; ++i)
    {
      v8 = AVTBlendShapeLocationFromARIndex(i);
      v9 = [(AVTAvatar *)self effectiveMorphedNodeForTargetName:?];
      morpher = [v9 morpher];
      v11 = [morpher _weightIndexForTargetNamed:?];

      v12 = 0;
      morpher2 = 0;
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      v15 = 0;
      if (v9 && v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        morpher2 = [v9 morpher];
        v12 = [v17 containsObject:?] ^ 1;
        v15 = v9;
        v14 = v11;
      }

      v16 = &self->_morphInfoFromARKitBlendShapeIndex[v6];
      v16->var0 = morpher2;
      v16->var1 = v15;
      v16->var2 = v14;
      v16->var3 = v12;
      *(&v16->var3 + 1) = 0;
      *(&v16->var3 + 1) = 0;

      ++v6;
    }

    [(AVTAvatar *)self setupMorphInfoForChangeInSubHierarchy];
  }

  else
  {
    free(morphInfoFromARKitBlendShapeIndex);
    self->_morphInfoFromARKitBlendShapeIndex = 0;
    free(self->_friendlyPoseMorphInfos);
    self->_friendlyPoseMorphInfos = 0;
    self->_friendlyPoseMorphInfoCount = 0;
  }
}

- (void)setupMorphInfoForChangeInSubHierarchy
{
  self->_friendlyPoseMorphInfoCount = 0;
  specializationSettings = [(AVTAvatar *)self specializationSettings];
  v4 = [specializationSettings objectForKeyedSubscript:?];

  v5 = [v4 containsObject:?] ^ 1;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __50__AVTAvatar_setupMorphInfoForChangeInSubHierarchy__block_invoke;
  v13 = &unk_1E7F49340;
  v15 = v5;
  selfCopy = self;
  v6 = self->_headNode;
  if (v6)
  {
    v7 = v6;
    while (1)
    {
      avatarNode = self->_avatarNode;
      if (v7 == avatarNode)
      {
        break;
      }

      v9 = [(VFXNode *)v7 parentNode:v10];

      v7 = v9;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12(&v10, self->_avatarNode);
    v7 = 0;
    avatarNode = self->_headNode;
  }

  v12(&v10, avatarNode);
  if (!self->_friendlyPoseMorphInfoCount)
  {
    self->_friendlyPoseMorphInfoProxy.isEnabled = v5;
  }
}

void *__50__AVTAvatar_setupMorphInfoForChangeInSubHierarchy__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69E9820];
  v4 = 3221225472;
  v5 = __50__AVTAvatar_setupMorphInfoForChangeInSubHierarchy__block_invoke_2;
  v6 = &unk_1E7F49198;
  LOBYTE(v7) = *(a1 + 40);
  return [a2 enumerateHierarchyUsingBlock:{MEMORY[0x1E69E9820], 3221225472, __50__AVTAvatar_setupMorphInfoForChangeInSubHierarchy__block_invoke_2, &unk_1E7F49198, *(a1 + 32), v7}];
}

void __50__AVTAvatar_setupMorphInfoForChangeInSubHierarchy__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 morpher];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _weightIndexForTargetNamed:?];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v5;
      v7 = *(a1 + 40);
      ++*(*(a1 + 32) + 80);
      *(*(a1 + 32) + 72) = malloc_type_realloc(*(*(a1 + 32) + 72), 32 * *(*(a1 + 32) + 80), 0x108004077A7B0B0uLL);
      v8 = *(*(a1 + 32) + 72) + 32 * *(*(a1 + 32) + 80);
      *(v8 - 32) = v4;
      *(v8 - 24) = v9;
      *(v8 - 16) = v6;
      *(v8 - 8) = v7;
      *(v8 - 4) = 0;
      *(v8 - 7) = 0;
    }
  }
}

- (void)updatePoseWithPoseProvider:(id)provider applySmoothing:(BOOL)smoothing
{
  smoothingCopy = smoothing;
  providerCopy = provider;
  if (!self->_headNode)
  {
    goto LABEL_21;
  }

  v23 = providerCopy;
  if (smoothingCopy)
  {
    [MEMORY[0x1E69DF378] begin];
    [MEMORY[0x1E69DF378] setAnimationDuration:?];
    v7 = MEMORY[0x1E69DF378];
    v8 = [MEMORY[0x1E69793D0] functionWithName:?];
    [v7 setAnimationTimingFunction:?];
  }

  v9 = 0;
  for (i = 0; i != 52; ++i)
  {
    morphInfoFromARKitBlendShapeIndex = self->_morphInfoFromARKitBlendShapeIndex;
    if (morphInfoFromARKitBlendShapeIndex[v9].var3 && morphInfoFromARKitBlendShapeIndex[v9].var2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      var0 = morphInfoFromARKitBlendShapeIndex[v9].var0;
      v13 = [(AVTAvatar *)self blendShapeNameForARKitBlendShapeIndex:?];
      [v23 weightForBlendShapeNamed:? index:?];
      [var0 setWeight:? forTargetAtIndex:?];
    }

    ++v9;
  }

  if (self->_friendlyPoseMorphInfoCount)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = self->_friendlyPoseMorphInfos[v14].var0;
      [v23 weightForBlendShapeNamed:? index:?];
      [v16 setWeight:? forTargetAtIndex:?];
      ++v15;
      ++v14;
    }

    while (v15 < self->_friendlyPoseMorphInfoCount);
  }

  else
  {
    [v23 weightForBlendShapeNamed:? index:?];
    self->_friendlyPoseMorphInfoProxy.morphWeight = v17;
  }

  [(AVTPhysicsController *)self->_physicsController setupPhysicsIfNeeded];
  unitSystem = [v23 unitSystem];
  if (unitSystem == 1)
  {
    neckPosition = [v23 neckPosition];
    v22 = v20;
    AVTGetNeutralZ(neckPosition, v21);
  }

  else
  {
    if (unitSystem)
    {
      goto LABEL_19;
    }

    [v23 neckPosition];
  }

  [(VFXNode *)self->_rootJointNode setPosition:v22];
LABEL_19:
  [v23 neckOrientation];
  [(VFXNode *)self->_neckNode setOrientation:?];
  providerCopy = v23;
  if (smoothingCopy)
  {
    [MEMORY[0x1E69DF378] commit];
    providerCopy = v23;
  }

LABEL_21:
}

- (void)updatePoseWithFaceTrackingData:(id)data applySmoothing:(BOOL)smoothing
{
  smoothingCopy = smoothing;
  dataCopy = data;
  if (self->_headNode)
  {
    if (smoothingCopy)
    {
      [MEMORY[0x1E69DF378] begin];
      [MEMORY[0x1E69DF378] setAnimationDuration:?];
      v7 = MEMORY[0x1E69DF378];
      v8 = [MEMORY[0x1E69793D0] functionWithName:?];
      [v7 setAnimationTimingFunction:?];
    }

    v9 = [dataCopy length];
    if (v9 != 480)
    {
      v10 = avt_default_log(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [AVTAvatar updatePoseWithFaceTrackingData:dataCopy applySmoothing:?];
      }
    }

    [dataCopy bytes];
    [(AVTAvatar *)self _applyBlendShapesWithTrackingData:?];
    [AVTAvatar _applyHeadPoseWithTrackingData:"_applyHeadPoseWithTrackingData:gazeCorrection:pointOfView:" gazeCorrection:? pointOfView:?];
    if (smoothingCopy)
    {
      [MEMORY[0x1E69DF378] commit];
    }
  }
}

- (void)updatePoseWithCVAFaceTrackingAnimationDictionary:(void *)dictionary neckPosition:(uint64_t)position neckOrientation:(void *)orientation applySmoothing:(int)smoothing
{
  orientationCopy = orientation;
  v8 = orientationCopy;
  if (dictionary[3])
  {
    if (smoothing)
    {
      [MEMORY[0x1E69DF378] begin];
      [MEMORY[0x1E69DF378] setAnimationDuration:?];
      v9 = MEMORY[0x1E69DF378];
      v10 = [MEMORY[0x1E69793D0] functionWithName:?];
      [v9 setAnimationTimingFunction:?];
    }

    v11 = AVTGetNeutralZ(orientationCopy, v7);
    v12.i64[0] = 0;
    v12.i64[1] = LODWORD(v11);
    v18 = vmulq_f32(vsubq_f32(v17, v12), xmmword_1BB4F0620);
    CACurrentMediaTime();
    v13 = [v8 objectForKeyedSubscript:?];
    v14 = [v8 objectForKeyedSubscript:?];
    v15 = [v13 length];
    if (v15 != 204)
    {
      v16 = avt_default_log(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [AVTAvatar updatePoseWithCVAFaceTrackingAnimationDictionary:neckPosition:neckOrientation:applySmoothing:];
      }
    }

    if ([v13 length] == 204)
    {
      [v13 bytes];
    }

    [v14 floatValue];
    [dictionary _applyBlendShapesWithTrackingData:?];
    [dictionary _applyHeadPoseWithTrackingData:? gazeCorrection:? pointOfView:?];
    if (smoothing)
    {
      [MEMORY[0x1E69DF378] commit];
    }
  }
}

- (void)_applyBlendShapes:(const float *)shapes parameters:(const float *)parameters
{
  if (self->_headNode)
  {
    morphInfoFromARKitBlendShapeIndex = self->_morphInfoFromARKitBlendShapeIndex;
    v7 = -1.0;
    if (morphInfoFromARKitBlendShapeIndex[51].var2 != 0x7FFFFFFFFFFFFFFFLL && *parameters != -1.0)
    {
      var0 = morphInfoFromARKitBlendShapeIndex[51].var0;
      if (morphInfoFromARKitBlendShapeIndex[51].var3)
      {
        v9 = *MEMORY[0x1E6986408];
        v10 = fmaxf(fminf(*parameters, 1.0), 0.0);
        v11 = AVTBlendShapeLocationFromARIndex(51);

        if (v11 == v9)
        {
          [var0 weightForTargetAtIndex:?];
          v7 = v12 + ((v10 - v12) * 0.3);
        }
      }

      [var0 setWeight:? forTargetAtIndex:?];
    }

    v13 = 0;
    for (i = 0; i != 51; ++i)
    {
      v15 = &self->_morphInfoFromARKitBlendShapeIndex[v13];
      if (v15->var2 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = shapes[i];
        if (v16 != -1.0)
        {
          v17 = v15->var0;
          if (v15->var3)
          {
            v18 = fmaxf(fminf(v16, 1.0), 0.0);
            v19 = AVTBlendShapeLocationFromARIndex(i);
            v20 = AVTMorphWeightApplyCorrectionForTongue(v19, v18, v7);
            AVTMorphWeightApplyBlinkCorrection(v19, v20);
          }

          [v17 setWeight:? forTargetAtIndex:?];
        }
      }

      ++v13;
    }

    if (self->_friendlyPoseMorphInfoCount)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        [self->_friendlyPoseMorphInfos[v21].var0 setWeight:? forTargetAtIndex:?];
        ++v22;
        ++v21;
      }

      while (v22 < self->_friendlyPoseMorphInfoCount);
    }

    else
    {
      self->_friendlyPoseMorphInfoProxy.morphWeight = 0.0;
    }
  }
}

- (void)_applyBlendShapesWithTrackingData:(id *)data
{
  if (data)
  {
    [AVTAvatar _applyBlendShapes:"_applyBlendShapes:parameters:" parameters:?];
  }
}

- (void)_applyHeadPoseWithTrackingData:(id *)data gazeCorrection:(BOOL)correction pointOfView:(id)view
{
  correctionCopy = correction;
  viewCopy = view;
  v9 = viewCopy;
  if (data)
  {
    v10 = *&data->var2[5];
    if (LOBYTE(data->var2[9]) == 1)
    {
      if (viewCopy)
      {
        v11 = *MEMORY[0x1E69E9B18];
        v12 = *(MEMORY[0x1E69E9B18] + 16);
        v13 = *(MEMORY[0x1E69E9B18] + 32);
        v14 = vmulq_f32(v10, v10);
        v15 = vaddq_f32(v14, v14);
        v16 = vmulq_laneq_f32(v10, v10, 3);
        v17 = vmuls_lane_f32(v10.f32[0], *v10.f32, 1);
        v18 = vmuls_lane_f32(v10.f32[1], v10, 2);
        v19 = vmuls_lane_f32(v10.f32[0], v10, 2);
        *&v11 = (1.0 - v15.f32[1]) - v15.f32[2];
        *(&v11 + 1) = (v17 + v16.f32[2]) + (v17 + v16.f32[2]);
        *(&v11 + 2) = (v19 - v16.f32[1]) + (v19 - v16.f32[1]);
        *&v12 = (v17 - v16.f32[2]) + (v17 - v16.f32[2]);
        v15.f32[0] = 1.0 - v15.f32[0];
        *(&v12 + 1) = v15.f32[0] - v15.f32[2];
        *(&v12 + 2) = (v18 + v16.f32[0]) + (v18 + v16.f32[0]);
        v29 = v12;
        v30 = v11;
        *&v13 = (v19 + v16.f32[1]) + (v19 + v16.f32[1]);
        *(&v13 + 1) = (v18 - v16.f32[0]) + (v18 - v16.f32[0]);
        *(&v13 + 2) = v15.f32[0] - v15.f32[1];
        v20 = vaddq_f32(*&data->var2[1], *(MEMORY[0x1E69E9B18] + 48));
        v20.i32[3] = HIDWORD(*(MEMORY[0x1E69E9B18] + 48));
        v27 = v20;
        v28 = v13;
        [viewCopy worldTransform];
        v25 = 0;
        v31[0] = v30;
        v31[1] = v29;
        v31[2] = v28;
        v31[3] = v27;
        memset(v32, 0, sizeof(v32));
        do
        {
          v32[v25] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(v31[v25])), v22, *&v31[v25], 1), v23, v31[v25], 2), v24, v31[v25], 3);
          ++v25;
        }

        while (v25 != 4);
      }

      else if ((_applyHeadPoseWithTrackingData_gazeCorrection_pointOfView__done & 1) == 0)
      {
        _applyHeadPoseWithTrackingData_gazeCorrection_pointOfView__done = 1;
        v26 = avt_default_log(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [AVTAvatar _applyHeadPoseWithTrackingData:gazeCorrection:pointOfView:];
        }
      }

      [(AVTPhysicsController *)self->_physicsController setupPhysicsIfNeeded];
    }

    else
    {
      [(AVTPhysicsController *)self->_physicsController setupPhysicsIfNeeded];
      if (correctionCopy)
      {
        [AVTAvatar applyGazeCorrectionWithInputAngle:"applyGazeCorrectionWithInputAngle:translation:" translation:?];
      }
    }

    [(VFXNode *)self->_neckNode setOrientation:?];
    if (LOBYTE(data->var2[9]) == 1)
    {
      [VFXNode convertPosition:"convertPosition:toNode:" toNode:?];
    }

    [(VFXNode *)self->_rootJointNode setPosition:?];
  }
}

- (void)applyBlendShapesWithTrackingInfo:(id)info
{
  if (info)
  {
    [info trackingData];

    [(AVTAvatar *)self _applyBlendShapesWithTrackingData:?];
  }
}

- (void)applyHeadPoseWithTrackingInfo:(id)info gazeCorrection:(BOOL)correction pointOfView:(id)view
{
  infoCopy = info;
  viewCopy = view;
  if (infoCopy)
  {
    world = [(VFXNode *)self->_avatarNode world];

    if (world)
    {
      [infoCopy trackingData];
      [AVTAvatar _applyHeadPoseWithTrackingData:"_applyHeadPoseWithTrackingData:gazeCorrection:pointOfView:" gazeCorrection:? pointOfView:?];
    }

    else
    {
      v11 = avt_default_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_1BB472000, v11, OS_LOG_TYPE_DEFAULT, "applyHeadPoseWithTrackingInfo - avatar has not been assigned to a scene yet, ignoring", v12, 2u);
      }
    }
  }
}

- ($9556BFE61B967AE735F1A0D700315F88)morphInfoForARKitBlendShapeIndex:(SEL)index
{
  v4 = self[2].var0 + 32 * a4;
  v5 = v4[1];
  *&retstr->var0 = *v4;
  *&retstr->var2 = v5;
  return self;
}

- (id)blendShapeNameForARKitBlendShapeIndex:(unint64_t)index
{
  v6 = 0u;
  v7 = 0u;
  [&v6 morphInfoForARKitBlendShapeIndex:?];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = AVTBlendShapeLocationFromARIndex(index);
  }

  return v4;
}

- (int64_t)blendShapeIndexForARKitBlendShapeName:(id)name
{
  nameCopy = name;
  v5 = 0;
  while (1)
  {
    v6 = [(AVTAvatar *)self blendShapeNameForARKitBlendShapeIndex:?];
    v7 = [v6 isEqualToString:?];

    if (v7)
    {
      break;
    }

    if (++v5 == 52)
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
      break;
    }
  }

  return v5;
}

- (void)enumerateMorphInfoForCustomBlendShapeName:(id)name usingBlock:(id)block
{
  blockCopy = block;
  if ([name isEqualToString:?] && self->_friendlyPoseMorphInfoCount)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = &self->_friendlyPoseMorphInfos[v7];
      v10 = *&v9->var2;
      v13 = *&v9->var0;
      v14 = v10;
      v11 = blockCopy[2];
      v12[0] = v13;
      v12[1] = v10;
      v11(blockCopy, v12);
      ++v8;
      ++v7;
    }

    while (v8 < self->_friendlyPoseMorphInfoCount);
  }
}

+ (double)applyGazeCorrectionWithInputAngle:(int32x4_t)angle translation:(__n128)translation
{
  v29 = translation.n128_u64[0];
  v4 = translation.n128_f32[2] + AVTGetNeutralZ(self, a2) * 100.0;
  v5 = *(&v29 + 1) / 0.2;
  v6 = atanf(v5 / v4) + 0.104719755;
  v7 = __sincosf_stret(v6 * 0.5);
  v8 = vrsqrte_f32(1065353216);
  v9 = vmul_f32(v8, vrsqrts_f32(1065353216, vmul_f32(v8, v8)));
  LODWORD(v26) = vmul_f32(v9, vrsqrts_f32(1065353216, vmul_f32(v9, v9))).u32[0];
  v10 = vmulq_n_f32(vmulq_n_f32(xmmword_1BB4F05D0, v26), v7.__sinval);
  v11 = v10;
  v11.i32[3] = v10.i32[0];
  angleCopy = angle;
  v13 = vzip1q_s32(angleCopy, angleCopy);
  v13.i32[0] = angle.i32[2];
  v14 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(angle, 3), angle, 4uLL), v11), xmmword_1BB4F09A0), angle, v7.__cosval), xmmword_1BB4F09A0, vmulq_f32(v13, vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL)));
  v15 = vuzp1q_s32(angleCopy, angleCopy);
  v15.i32[0] = angle.i32[1];
  v28 = vmlsq_f32(v14, v15, vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL));
  v16 = atanf((*&v29 + *&v29) / v4);
  v17 = __sincosf_stret(v16 * -0.5);
  v18 = v28;
  v19 = vmulq_n_f32(vmulq_n_f32(xmmword_1BB4F05E0, v26), v17.__sinval);
  v20 = vextq_s8(vextq_s8(v19, v19, 0xCuLL), v19, 8uLL);
  v21 = vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL);
  v19.i32[3] = v19.i32[0];
  v22 = vzip1q_s32(v18, v18);
  v22.i32[0] = v28.i32[2];
  v23 = vmlaq_f32(vmlaq_n_f32(vmulq_f32(vmulq_f32(v19, vextq_s8(vdupq_laneq_s32(v28, 3), v28, 4uLL)), xmmword_1BB4F09A0), v28, v17.__cosval), xmmword_1BB4F09A0, vmulq_f32(v20, v22));
  v24 = vuzp1q_s32(v18, v18);
  v24.i32[0] = v28.i32[1];
  *&result = vmlsq_f32(v23, v24, v21).u64[0];
  return result;
}

- (void)_resetFaceToRandomPosition
{
  morpher = [(VFXNode *)self->_headNode morpher];
  targets = [morpher targets];
  [targets enumerateObjectsUsingBlock:?];

  rand();
  rand();
  __asm { FMOV            V1.2D, #-0.5 }

  rand();
  [(VFXNode *)self->_rootJointNode setPosition:?];
  rand();
  rand();
  rand();
  [(VFXNode *)self->_rootJointNode setEulerAngles:?];
}

void __39__AVTAvatar__resetFaceToRandomPosition__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 name];
  v5 = AVTMorphTargetNameDefinesPose(v4);

  if (v5)
  {
    v6 = [*(*(a1 + 32) + 24) morpher];
    rand();
    [v6 setWeight:? forTargetAtIndex:?];
  }
}

- (id)pose
{
  v3 = objc_alloc_init(AVTAvatarPose);
  if (!self->_morphInfoFromARKitBlendShapeIndex)
  {
    [AVTAvatar pose];
  }

  v4 = v3;
  v5 = [(VFXNode *)self->_rootJointNode animationPlayerForKey:?];
  animation = [v5 animation];
  caAnimation = [animation caAnimation];

  if (caAnimation)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      goto LABEL_6;
    }

    objc_opt_class();
    v9 = objc_opt_isKindOfClass();
    if (v9)
    {
      toValue = [caAnimation toValue];

      if (toValue)
      {
LABEL_6:
        v11 = 0;
        for (i = 0; i != 52; ++i)
        {
          morphInfoFromARKitBlendShapeIndex = self->_morphInfoFromARKitBlendShapeIndex;
          if (morphInfoFromARKitBlendShapeIndex[v11].var3 && morphInfoFromARKitBlendShapeIndex[v11].var2 != 0x7FFFFFFFFFFFFFFFLL)
          {
            var1 = morphInfoFromARKitBlendShapeIndex[v11].var1;
            v15 = [(AVTAvatar *)self blendShapeNameForARKitBlendShapeIndex:?];
            v16 = [@"kAVTTransitionAnimation-" stringByAppendingString:?];
            v17 = __17__AVTAvatar_pose__block_invoke(v16, var1);
            [v17 floatValue];
            [AVTAvatarPose setWeight:v4 forBlendShapeNamed:"setWeight:forBlendShapeNamed:"];
          }

          ++v11;
        }

        friendlyPoseMorphInfoCount = self->_friendlyPoseMorphInfoCount;
        if (friendlyPoseMorphInfoCount)
        {
          v19 = 0;
          for (j = 0; j < friendlyPoseMorphInfoCount; ++j)
          {
            v21 = &self->_friendlyPoseMorphInfos[v19];
            if (v21->var3)
            {
              v22 = v21->var1;
              v23 = [@"kAVTTransitionAnimation-" stringByAppendingString:?];
              v24 = __17__AVTAvatar_pose__block_invoke(v23, v22);
              [v24 floatValue];
              [AVTAvatarPose setWeight:v4 forBlendShapeNamed:"setWeight:forBlendShapeNamed:"];

              friendlyPoseMorphInfoCount = self->_friendlyPoseMorphInfoCount;
            }

            ++v19;
          }
        }

        else if (self->_friendlyPoseMorphInfoProxy.isEnabled)
        {
          isKindOfClass = [AVTAvatarPose setWeight:v4 forBlendShapeNamed:"setWeight:forBlendShapeNamed:"];
        }

        v32 = __17__AVTAvatar_pose__block_invoke(isKindOfClass, self->_rootJointNode);
        [v32 avt_float3Value];
        [(AVTAvatarPose *)v4 setNeckPosition:?];

        presentationNode2 = __17__AVTAvatar_pose__block_invoke(v33, self->_neckNode);
        [presentationNode2 avt_float4Value];
        goto LABEL_30;
      }
    }

    else
    {
      v25 = avt_default_log(v9);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(AVTAvatar *)caAnimation pose];
      }
    }
  }

  v26 = 0;
  for (k = 0; k != 52; ++k)
  {
    v28 = self->_morphInfoFromARKitBlendShapeIndex;
    if (v28[v26].var2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v28[v26].var0 weightForTargetAtIndex:?];
      v29 = [(AVTAvatar *)self blendShapeNameForARKitBlendShapeIndex:?];
      [AVTAvatarPose setWeight:v4 forBlendShapeNamed:"setWeight:forBlendShapeNamed:"];
    }

    ++v26;
  }

  if (self->_friendlyPoseMorphInfoCount)
  {
    [self->_friendlyPoseMorphInfos->var0 weightForTargetAtIndex:?];
  }

  [AVTAvatarPose setWeight:v4 forBlendShapeNamed:"setWeight:forBlendShapeNamed:"];
  presentationNode = [(VFXNode *)self->_rootJointNode presentationNode];
  [presentationNode position];
  [(AVTAvatarPose *)v4 setNeckPosition:?];

  presentationNode2 = [(VFXNode *)self->_neckNode presentationNode];
  [presentationNode2 orientation];
LABEL_30:
  [(AVTAvatarPose *)v4 setNeckOrientation:?];

  [(AVTAvatarPose *)v4 setBakedAnimationBlendFactor:?];

  return v4;
}

id __17__AVTAvatar_pose__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 animationPlayerForKey:?];
  v3 = [v2 animation];
  v4 = [v3 caAnimation];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 values];
    v6 = [v5 lastObject];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v6 = [v4 toValue];
    }

    else
    {
      v8 = avt_default_log(isKindOfClass);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(AVTAvatar *)v4 pose];
      }

      v6 = 0;
    }
  }

  return v6;
}

- (void)setPose:(id)pose
{
  poseCopy = pose;
  if (self->_morphInfoFromARKitBlendShapeIndex)
  {
    v4 = 0;
    for (i = 0; i != 52; ++i)
    {
      v6 = &self->_morphInfoFromARKitBlendShapeIndex[v4];
      if (v6->var2 != 0x7FFFFFFFFFFFFFFFLL)
      {
        var0 = v6->var0;
        var3 = v6->var3;
        v9 = [(AVTAvatar *)self blendShapeNameForARKitBlendShapeIndex:?];
        if (var3)
        {
          [poseCopy weightForBlendShapeNamed:?];
        }

        [var0 setWeight:? forTargetAtIndex:?];
      }

      ++v4;
    }

    if (self->_friendlyPoseMorphInfoCount)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = &self->_friendlyPoseMorphInfos[v10];
        v13 = v12->var0;
        if (v12->var3)
        {
          [poseCopy weightForBlendShapeNamed:?];
        }

        [v13 setWeight:? forTargetAtIndex:?];
        ++v11;
        ++v10;
      }

      while (v11 < self->_friendlyPoseMorphInfoCount);
    }

    else
    {
      v14 = 0.0;
      if (self->_friendlyPoseMorphInfoProxy.isEnabled)
      {
        [poseCopy weightForBlendShapeNamed:?];
        v14 = v15;
      }

      self->_friendlyPoseMorphInfoProxy.morphWeight = v14;
    }

    [(AVTPhysicsController *)self->_physicsController setupPhysicsIfNeeded];
    if (poseCopy)
    {
      [poseCopy neckPosition];
      [(VFXNode *)self->_rootJointNode setPosition:?];
      [poseCopy neckOrientation];
      [(VFXNode *)self->_neckNode setOrientation:?];
      [poseCopy bakedAnimationBlendFactor];
    }

    else
    {
      [(VFXNode *)self->_rootJointNode setPosition:?];
      [(VFXNode *)self->_neckNode setOrientation:?];
    }

    bakedAnimationPlayer = [(AVTAvatar *)self bakedAnimationPlayer];
    [bakedAnimationPlayer setBlendFactor:?];
  }
}

- (id)debugPoseJSONRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  avatarNode = self->_avatarNode;
  v14 = v3;
  [(VFXNode *)avatarNode enumerateHierarchyUsingBlock:?];
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v5 appendString:?];
  allKeys = [v14 allKeys];
  v7 = [allKeys sortedArrayUsingSelector:?];

  v12 = MEMORY[0x1E69E9820];
  v13 = v5;
  v8 = v7;
  v9 = v14;
  [v8 enumerateObjectsUsingBlock:{v12, 3221225472, __40__AVTAvatar_debugPoseJSONRepresentation__block_invoke_3, &unk_1E7F48A70}];
  [v13 appendString:?];
  v10 = v13;

  return v13;
}

void __40__AVTAvatar_debugPoseJSONRepresentation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 presentationNode];
  v5 = [v4 morpher];

  v6 = [v5 targets];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __40__AVTAvatar_debugPoseJSONRepresentation__block_invoke_2;
  v12 = &unk_1E7F47B60;
  v13 = v3;
  v14 = *(a1 + 32);
  v15 = v5;
  v7 = v5;
  v8 = v3;
  [v6 enumerateObjectsUsingBlock:?];
}

void __40__AVTAvatar_debugPoseJSONRepresentation__block_invoke_2(id *a1, void *a2, uint64_t a3)
{
  v8 = [a2 name];
  if (AVTMorphTargetNameIsOfInterestForAnimator(v8))
  {
    v4 = [a1[4] model];
    v5 = [v4 name];

    v6 = [a1[5] objectForKeyedSubscript:?];
    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [a1[5] setObject:? forKeyedSubscript:?];
    }

    [a1[6] weightForTargetAtIndex:?];
    v7 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    [v6 setObject:? forKeyedSubscript:?];
  }
}

void __40__AVTAvatar_debugPoseJSONRepresentation__block_invoke_3(id *a1, void *a2, _BYTE *a3)
{
  v5 = a1[4];
  v6 = a2;
  [v5 appendFormat:v6];
  v7 = [a1[5] objectForKeyedSubscript:?];

  v8 = [v7 allKeys];
  v9 = [v8 sortedArrayUsingSelector:?];

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __40__AVTAvatar_debugPoseJSONRepresentation__block_invoke_4;
  v17 = &unk_1E7F48A70;
  v18 = v7;
  v19 = a1[4];
  v20 = v9;
  v10 = v9;
  v11 = v7;
  [v10 enumerateObjectsUsingBlock:?];
  v12 = a1[4];
  if ([a1[6] count] - 1 == a3)
  {
    v13 = "";
  }

  else
  {
    v13 = ",";
  }

  [v12 appendFormat:v13, v14, v15, v16, v17];
}

void __40__AVTAvatar_debugPoseJSONRepresentation__block_invoke_4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v12 = a2;
  v6 = [v5 objectForKeyedSubscript:?];
  [v6 floatValue];
  v8 = v7;

  v9 = v8;
  v10 = *(a1 + 40);
  if ([*(a1 + 48) count] - 1 == a3)
  {
    v11 = "";
  }

  else
  {
    v11 = ",";
  }

  [v10 appendFormat:v12, *&v9, v11];
}

- (void)animatePhysicsScaleFactor:(double)factor duration:(double)duration
{
  if (duration <= 0.0)
  {

    [(AVTAvatar *)self setPhysicsScaleFactor:?];
  }

  else
  {
    [AVTAvatar addDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:"addDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:block:" block:?];
  }
}

double *__48__AVTAvatar_animatePhysicsScaleFactor_duration___block_invoke(double *result, uint64_t a2, double a3, double a4, uint64_t a5, _BYTE *a6)
{
  v6 = (a3 - a4) / result[4];
  v7 = fmaxf(fminf(v6, 1.0), 0.0);
  *(a2 + 184) = result[5] + v7 * (result[6] - result[5]);
  if (v7 >= 1.0)
  {
    *a6 = 1;
  }

  return result;
}

- (void)transitionToPose:(id)pose duration:(double)duration delay:(double)delay completionHandler:(id)handler
{
  poseCopy = pose;
  handlerCopy = handler;
  if (poseCopy)
  {
    [poseCopy bakedAnimationBlendFactor];
  }

  [AVTAvatar _transitionFromPose:"_transitionFromPose:toPose:bakedAnimationBlendFactor:duration:delay:timingFunction:timingAnimation:completionHandler:" toPose:? bakedAnimationBlendFactor:? duration:? delay:? timingFunction:? timingAnimation:? completionHandler:?];
}

- (void)transitionFromPose:(id)pose toPose:(id)toPose duration:(double)duration delay:(double)delay completionHandler:(id)handler
{
  poseCopy = pose;
  toPoseCopy = toPose;
  handlerCopy = handler;
  if (toPoseCopy)
  {
    [toPoseCopy bakedAnimationBlendFactor];
  }

  [AVTAvatar _transitionFromPose:"_transitionFromPose:toPose:bakedAnimationBlendFactor:duration:delay:timingFunction:timingAnimation:completionHandler:" toPose:? bakedAnimationBlendFactor:? duration:? delay:? timingFunction:? timingAnimation:? completionHandler:?];
}

- (void)transitionFromPose:(id)pose toPose:(id)toPose duration:(double)duration delay:(double)delay timingFunction:(id)function completionHandler:(id)handler
{
  poseCopy = pose;
  toPoseCopy = toPose;
  functionCopy = function;
  handlerCopy = handler;
  if (toPoseCopy)
  {
    [toPoseCopy bakedAnimationBlendFactor];
  }

  [AVTAvatar _transitionFromPose:"_transitionFromPose:toPose:bakedAnimationBlendFactor:duration:delay:timingFunction:timingAnimation:completionHandler:" toPose:? bakedAnimationBlendFactor:? duration:? delay:? timingFunction:? timingAnimation:? completionHandler:?];
}

- (void)transitionFromPose:(id)pose toPose:(id)toPose duration:(double)duration delay:(double)delay timingAnimation:(id)animation completionHandler:(id)handler
{
  poseCopy = pose;
  toPoseCopy = toPose;
  animationCopy = animation;
  handlerCopy = handler;
  if (toPoseCopy)
  {
    [toPoseCopy bakedAnimationBlendFactor];
  }

  [AVTAvatar _transitionFromPose:"_transitionFromPose:toPose:bakedAnimationBlendFactor:duration:delay:timingFunction:timingAnimation:completionHandler:" toPose:? bakedAnimationBlendFactor:? duration:? delay:? timingFunction:? timingAnimation:? completionHandler:?];
}

- (void)_transitionFromPose:(id)pose toPose:(id)toPose bakedAnimationBlendFactor:(double)factor duration:(double)duration delay:(double)delay timingFunction:(id)function timingAnimation:(id)animation completionHandler:(id)self0
{
  poseCopy = pose;
  toPoseCopy = toPose;
  functionCopy = function;
  animationCopy = animation;
  handlerCopy = handler;
  v21 = CACurrentMediaTime();
  ++self->_transitionCount;
  objc_initWeak(location, self);
  [MEMORY[0x1E69DF378] begin];
  [MEMORY[0x1E69DF378] setAnimationDuration:?];
  v22 = MEMORY[0x1E69DF378];
  v87 = MEMORY[0x1E69E9820];
  v88 = 3221225472;
  v89 = __130__AVTAvatar__transitionFromPose_toPose_bakedAnimationBlendFactor_duration_delay_timingFunction_timingAnimation_completionHandler___block_invoke;
  v90 = &unk_1E7F493B0;
  objc_copyWeak(&v92, location);
  v93 = toPoseCopy != 0;
  v72 = handlerCopy;
  v91 = v72;
  v23 = [v22 setCompletionBlock:?];
  if (!toPoseCopy && animationCopy)
  {
    v24 = avt_default_log(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB472000, v24, OS_LOG_TYPE_DEFAULT, "Can't use a timing animation without a destination pose", buf, 2u);
    }

    animationCopy = 0;
  }

  v25 = v21 + delay;
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v80 = __130__AVTAvatar__transitionFromPose_toPose_bakedAnimationBlendFactor_duration_delay_timingFunction_timingAnimation_completionHandler___block_invoke_266;
  v81 = &unk_1E7F493D8;
  durationCopy = duration;
  v71 = animationCopy;
  v82 = v71;
  v85 = v25;
  v26 = 0;
  v27 = 0;
  v70 = functionCopy;
  v83 = v70;
  v74 = toPoseCopy;
  do
  {
    v28 = &self->_morphInfoFromARKitBlendShapeIndex[v26];
    if (v28->var3)
    {
      var2 = v28->var2;
      if (var2 != 0x7FFFFFFFFFFFFFFFLL)
      {
        var1 = v28->var1;
        v31 = [(AVTAvatar *)self blendShapeNameForARKitBlendShapeIndex:?];
        v32 = [@"kAVTTransitionAnimation-" stringByAppendingString:?];
        v33 = [MEMORY[0x1E696AEC0] stringWithFormat:var2, v70, v71];
        if (poseCopy)
        {
          v34 = MEMORY[0x1E696AD98];
          [poseCopy weightForBlendShapeNamed:?];
          v35 = [v34 numberWithFloat:?];
          if (!toPoseCopy)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v35 = 0;
          if (!toPoseCopy)
          {
LABEL_14:
            v80(v79, var1, v33, v32, v35, toPoseCopy);

            toPoseCopy = v74;
            goto LABEL_15;
          }
        }

        v36 = toPoseCopy;
        v37 = MEMORY[0x1E696AD98];
        [v36 weightForBlendShapeNamed:?];
        toPoseCopy = [v37 numberWithFloat:?];
        goto LABEL_14;
      }
    }

LABEL_15:
    ++v27;
    ++v26;
  }

  while (v27 != 52);
  if (self->_friendlyPoseMorphInfoCount)
  {
    v38 = 0;
    v39 = 0;
    v40 = poseCopy;
    while (1)
    {
      v41 = &self->_friendlyPoseMorphInfos[v38];
      v42 = v41->var1;
      v43 = v41->var2;
      var3 = v41->var3;
      v45 = [@"kAVTTransitionAnimation-" stringByAppendingString:?];
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:v43];
      if (v40)
      {
        v47 = MEMORY[0x1E696AD98];
        [v40 weightForBlendShapeNamed:?];
        v48 = [v47 numberWithFloat:?];
      }

      else
      {
        v48 = 0;
      }

      if (!v74)
      {
        break;
      }

      v49 = MEMORY[0x1E696AD98];
      [v74 weightForBlendShapeNamed:?];
      v50 = [v49 numberWithFloat:?];
      if (!var3)
      {
        goto LABEL_23;
      }

LABEL_24:
      v80(v79, v42, v46, v45, v48, v50);

      ++v39;
      ++v38;
      v40 = poseCopy;
      if (v39 >= self->_friendlyPoseMorphInfoCount)
      {
        goto LABEL_33;
      }
    }

    v50 = 0;
    if (var3)
    {
      goto LABEL_24;
    }

LABEL_23:

    v50 = &unk_1F39D95B8;
    goto LABEL_24;
  }

  v40 = poseCopy;
  if (self->_friendlyPoseMorphInfoProxy.isEnabled)
  {
    if (v74)
    {
      [v74 weightForBlendShapeNamed:?];
      v52 = v51;
      goto LABEL_32;
    }
  }

  else
  {
    v52 = 0.0;
LABEL_32:
    self->_friendlyPoseMorphInfoProxy.morphWeight = v52;
  }

LABEL_33:
  if (v40)
  {
    v53 = MEMORY[0x1E696B098];
    [v40 neckPosition];
    v54 = [v53 avt_valueWithFloat3_usableWithKVCForSCNVector3:?];
  }

  else
  {
    v54 = 0;
  }

  if (v74)
  {
    v55 = MEMORY[0x1E696B098];
    [v74 neckPosition];
    v56 = [v55 avt_valueWithFloat3_usableWithKVCForSCNVector3:?];
  }

  else
  {
    v56 = 0;
  }

  v80(v79, self->_rootJointNode, @"position", @"kAVTTransitionAnimation-posePosition", v54, v56);

  if (v40)
  {
    v57 = MEMORY[0x1E696B098];
    [v40 neckOrientation];
    v58 = [v57 avt_valueWithFloat4_usableWithKVCForSCNVector4:?];
    if (v74)
    {
      goto LABEL_41;
    }

LABEL_43:
    v60 = 0;
  }

  else
  {
    v58 = 0;
    if (!v74)
    {
      goto LABEL_43;
    }

LABEL_41:
    v59 = MEMORY[0x1E696B098];
    [v74 neckOrientation];
    v60 = [v59 avt_valueWithFloat4_usableWithKVCForSCNVector4:?];
  }

  v80(v79, self->_neckNode, @"orientation", @"kAVTTransitionAnimation-poseOrientation", v58, v60);

  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v76 = __130__AVTAvatar__transitionFromPose_toPose_bakedAnimationBlendFactor_duration_delay_timingFunction_timingAnimation_completionHandler___block_invoke_2;
  v77 = &__block_descriptor_40_e63_v40__0__CABasicAnimation_8__NSString_16___VFXAnimatable__24__32l;
  v78 = v25;
  bakedAnimationPlayer = [(AVTAvatar *)self bakedAnimationPlayer];
  v62 = bakedAnimationPlayer;
  if (bakedAnimationPlayer)
  {
    if (duration <= 0.0)
    {
      [bakedAnimationPlayer removeAnimationForKey:?];
      [v62 setBlendFactor:?];
    }

    else
    {
      v63 = [MEMORY[0x1E6979318] animationWithKeyPath:?];
      v76(v75, v63, @"transition-blendFactor", v62, AVTInterpolateBasicAnimationFloat);
      v64 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      [v63 setToValue:?];

      [v63 setDuration:?];
      [v63 setBeginTime:?];
      [v63 setFillMode:?];
      [v63 setRemovedOnCompletion:?];
      v65 = [MEMORY[0x1E69793D0] functionWithName:?];
      [v63 setTimingFunction:?];

      fromValue = [v63 fromValue];

      if (fromValue)
      {
        fromValue2 = [v63 fromValue];
        [fromValue2 floatValue];
        [v62 setBlendFactor:?];
      }

      v68 = [MEMORY[0x1E69DF2B0] animationWithCAAnimation:?];
      v69 = [MEMORY[0x1E69DF2C0] animationPlayerWithAnimation:?];
      [v69 setTimeSource:?];
      [v69 setTimeOrigin:?];
      [v62 addAnimationPlayer:? forKey:?];

      v40 = poseCopy;
    }
  }

  [MEMORY[0x1E69DF378] commit];

  objc_destroyWeak(&v92);
  objc_destroyWeak(location);
}

uint64_t __130__AVTAvatar__transitionFromPose_toPose_bakedAnimationBlendFactor_duration_delay_timingFunction_timingAnimation_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      --WeakRetained[28];
    }

    WeakRetained = *(a1 + 32);
    if (WeakRetained)
    {
      v5 = v3;
      WeakRetained = (*(WeakRetained + 2))();
      v3 = v5;
    }
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v3);
}

void __130__AVTAvatar__transitionFromPose_toPose_bakedAnimationBlendFactor_duration_delay_timingFunction_timingAnimation_completionHandler___block_invoke_266(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (*(a1 + 48) <= 0.0)
  {
    [v11 removeAnimationForKey:?];
    if (v15)
    {
      [v11 setValue:? forKeyPath:?];
    }
  }

  else
  {
    if (!v14)
    {
      v16 = [v11 presentationNode];
      v14 = [v16 valueForKeyPath:?];
    }

    v17 = *(a1 + 32);
    if (v17)
    {
      v76 = v14;
      v77 = v12;
      v74 = v13;
      v75 = v11;
      v18 = [v17 keyTimes];
      v19 = objc_alloc(MEMORY[0x1E695DF70]);
      [v18 count];
      v20 = [v19 initWithCapacity:?];
      v21 = v18;
      v22 = [v21 countByEnumeratingWithState:? objects:? count:?];
      if (v22)
      {
        v23 = v22;
        v24 = MEMORY[0];
        do
        {
          for (i = 0; i != v23; i = (i + 1))
          {
            if (MEMORY[0] != v24)
            {
              objc_enumerationMutation(v21);
            }

            [*(8 * i) floatValue];
            v26 = [MEMORY[0x1E696AD98] numberWithFloat:?];
            [v20 addObject:?];
          }

          v23 = [v21 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v23);
      }

      v73 = v21;

      v27 = [*(a1 + 32) values];
      v28 = objc_alloc(MEMORY[0x1E695DF70]);
      [v27 count];
      v29 = [v28 initWithCapacity:?];
      v72 = v27;
      if ([v77 isEqualToString:?])
      {
        [v76 avt_float3Value];
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

              v35 = *(8 * j);
              [v15 avt_float3Value];
              [v35 floatValue];
              v36 = [MEMORY[0x1E696B098] avt_valueWithFloat3_usableWithKVCForSCNVector3:?];
              [v29 addObject:?];
            }

            v32 = [v30 countByEnumeratingWithState:? objects:? count:?];
          }

          while (v32);
        }
      }

      else if ([v77 isEqualToString:?])
      {
        [v76 avt_float4Value];
        v79 = v38;
        v39 = v27;
        v40 = [v39 countByEnumeratingWithState:? objects:? count:?];
        if (v40)
        {
          v41 = v40;
          v42 = MEMORY[0];
          do
          {
            for (k = 0; k != v41; k = (k + 1))
            {
              if (MEMORY[0] != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = *(8 * k);
              [v15 avt_float4Value];
              v78 = v45;
              [v44 floatValue];
              v47 = v46;
              v48 = vmulq_f32(v79, v78);
              v49 = vextq_s8(v48, v48, 8uLL);
              *v48.f32 = vadd_f32(*v48.f32, *v49.f32);
              v48.f32[0] = vaddv_f32(*v48.f32);
              v49.i64[0] = 0;
              v50 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v48, v49)), 0), vnegq_f32(v78), v78);
              v51 = vsubq_f32(v79, v50);
              v52 = vmulq_f32(v51, v51);
              v53 = vaddq_f32(v79, v50);
              v54 = vmulq_f32(v53, v53);
              v55 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v52.i8, *&vextq_s8(v52, v52, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v54.i8, *&vextq_s8(v54, v54, 8uLL)))));
              v56 = v55 + v55;
              if ((v55 + v55) != 0.0)
              {
                sinf(v55 + v55);
              }

              if (((1.0 - v47) * v56) != 0.0)
              {
                sinf((1.0 - v47) * v56);
              }

              v57 = v47 * v56;
              if (v57 != 0.0)
              {
                sinf(v57);
              }

              v58 = [MEMORY[0x1E696B098] avt_valueWithFloat4_usableWithKVCForSCNVector4:?];
              [v29 addObject:?];
            }

            v41 = [v39 countByEnumeratingWithState:? objects:? count:?];
          }

          while (v41);
        }
      }

      else
      {
        [v76 floatValue];
        v59 = v27;
        v60 = [v59 countByEnumeratingWithState:? objects:? count:?];
        if (v60)
        {
          v61 = v60;
          v62 = MEMORY[0];
          do
          {
            for (m = 0; m != v61; m = (m + 1))
            {
              if (MEMORY[0] != v62)
              {
                objc_enumerationMutation(v59);
              }

              v64 = *(8 * m);
              [v15 floatValue];
              [v64 floatValue];
              v65 = [MEMORY[0x1E696AD98] numberWithFloat:?];
              [v29 addObject:?];
            }

            v61 = [v59 countByEnumeratingWithState:? objects:? count:?];
          }

          while (v61);
        }
      }

      v12 = v77;
      v66 = [MEMORY[0x1E6979390] animationWithKeyPath:?];
      [v66 setKeyTimes:?];
      [v66 setValues:?];
      [v66 setFillMode:?];
      [v66 setRemovedOnCompletion:?];
      [v66 setDuration:?];
      [v66 setBeginTime:?];
      [v66 setTimingFunction:?];
      v67 = [MEMORY[0x1E69DF2B0] animationWithCAAnimation:?];
      v68 = [MEMORY[0x1E69DF2C0] animationPlayerWithAnimation:?];
      [v68 setTimeSource:?];
      [v68 setTimeOrigin:?];
      v13 = v74;
      v11 = v75;
      [v75 addAnimationPlayer:? forKey:?];

      v14 = v76;
    }

    else
    {
      v37 = [MEMORY[0x1E6979318] animationWithKeyPath:?];
      [v37 setFromValue:?];
      if (v15)
      {
        [v37 setToValue:?];
        [v37 setFillMode:?];
      }

      [v37 setRemovedOnCompletion:?];
      [v37 setDuration:?];
      [v37 setBeginTime:?];
      if (*(a1 + 40))
      {
        [v37 setTimingFunction:?];
      }

      else
      {
        v69 = [MEMORY[0x1E69793D0] functionWithName:?];
        [v37 setTimingFunction:?];
      }

      v70 = [MEMORY[0x1E69DF2B0] animationWithCAAnimation:?];
      v71 = [MEMORY[0x1E69DF2C0] animationPlayerWithAnimation:?];
      [v71 setTimeSource:?];
      [v71 setTimeOrigin:?];
      [v11 addAnimationPlayer:? forKey:?];
    }
  }
}

void __130__AVTAvatar__transitionFromPose_toPose_bakedAnimationBlendFactor_duration_delay_timingFunction_timingAnimation_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t (*a5)(void *, float))
{
  v25 = a2;
  v8 = [a4 animationPlayerForKey:?];
  v9 = [v8 animation];
  v10 = [v9 caAnimation];

  if (v10)
  {
    [v10 beginTime];
    v12 = v11;
    [v13 duration];
    if (v12 + v14 <= *(a1 + 32))
    {
      v23 = [v10 toValue];
      goto LABEL_7;
    }

    v15 = [v10 fromValue];
    if (v15)
    {
      v16 = v15;
      v17 = [v10 toValue];

      if (v17)
      {
        v18 = *(a1 + 32);
        [v10 beginTime];
        v20 = v18 - v19;
        [v21 duration];
        *&v22 = v20 / v22;
        v23 = a5(v10, *&v22);
LABEL_7:
        v24 = v23;
        [v25 setFromValue:?];
      }
    }
  }
}

- (void)stopTransitionAnimation
{
  if (self->_morphInfoFromARKitBlendShapeIndex)
  {
    for (i = 8; i != 1672; i += 32)
    {
      [*(&self->_morphInfoFromARKitBlendShapeIndex->var0 + i) removeAllAnimations];
    }

    if (self->_friendlyPoseMorphInfoCount)
    {
      v4 = 0;
      v5 = 8;
      do
      {
        [*(&self->_friendlyPoseMorphInfos->var0 + v5) removeAllAnimations];
        ++v4;
        v5 += 32;
      }

      while (v4 < self->_friendlyPoseMorphInfoCount);
    }

    [(VFXNode *)self->_rootJointNode removeAllAnimations];
    [(VFXNode *)self->_neckNode removeAllAnimations];
    [(VFXAnimationPlayer *)self->_bakedAnimationPlayer_lazy removeAllAnimations];
    self->_transitionCount = 0;
  }
}

- (void)stopTransitionAnimationWithBlendOutDuration:(double)duration
{
  for (i = 8; i != 1672; i += 32)
  {
    [*(&self->_morphInfoFromARKitBlendShapeIndex->var0 + i) removeAllAnimationsWithBlendOutDuration:?];
  }

  if (self->_friendlyPoseMorphInfoCount)
  {
    v5 = 0;
    v6 = 8;
    do
    {
      [*(&self->_friendlyPoseMorphInfos->var0 + v6) removeAllAnimationsWithBlendOutDuration:?];
      ++v5;
      v6 += 32;
    }

    while (v5 < self->_friendlyPoseMorphInfoCount);
  }

  [(VFXNode *)self->_rootJointNode removeAllAnimationsWithBlendOutDuration:?];
  [(VFXNode *)self->_neckNode removeAllAnimationsWithBlendOutDuration:?];
  [(VFXAnimationPlayer *)self->_bakedAnimationPlayer_lazy removeAllAnimationsWithBlendOutDuration:?];
  self->_transitionCount = 0;
}

- (id)snapshotWithSize:(CGSize)size scale:(double)scale options:(id)options
{
  optionsCopy = options;
  v6 = +[AVTSnapshotBuilder sharedInstance];
  objc_sync_enter(v6);
  [v6 setAvatar:?];
  v7 = [optionsCopy objectForKeyedSubscript:?];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    [v6 animatedImageWithSize:? scale:? options:?];
  }

  else
  {
    [v6 imageWithSize:? scale:? options:?];
  }
  v9 = ;
  objc_sync_exit(v6);

  return v9;
}

+ (void)preloadAvatar:(id)avatar
{
  v10 = *MEMORY[0x1E69E9840];
  avatarCopy = avatar;
  v4 = objc_autoreleasePoolPush();
  v8 = @"AVTRendererOptionInitiallyConfigureForARMode";
  v9 = MEMORY[0x1E695E110];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
  v6 = [VFXRenderer rendererWithDevice:"rendererWithDevice:options:" options:?];

  [v6 setAvatar:?];
  world = [v6 world];
  [v6 prepareObject:? shouldAbortBlock:?];

  objc_autoreleasePoolPop(v4);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = avt_default_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [AVTAvatar copyWithZone:];
  }

  return 0;
}

- (id)dataRepresentation
{
  newDescriptor = [(AVTAvatar *)self newDescriptor];
  dataRepresentation = [newDescriptor dataRepresentation];

  return dataRepresentation;
}

+ (AVTAvatar)avatarWithDataRepresentation:(id)representation usageIntent:(unint64_t)intent error:(id *)error
{
  v6 = [AVTAvatarDescriptor descriptorWithDataRepresentation:"descriptorWithDataRepresentation:error:" error:?];
  v7 = [self avatarWithDescriptor:? usageIntent:? error:?];

  return v7;
}

- (id)newDescriptor
{
  v2 = avt_default_log(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [AVTAvatar newDescriptor];
  }

  return 0;
}

+ (AVTAvatar)avatarWithDescriptor:(id)descriptor usageIntent:(unint64_t)intent error:(id *)error
{
  descriptorCopy = descriptor;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = off_1E7F47150;
LABEL_5:
    v7 = [objc_alloc(*v6) initWithDescriptor:? usageIntent:? error:?];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = off_1E7F470D8;
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (void)update
{
  v3 = avt_default_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [AVTAvatar update];
  }

  [(AVTAvatar *)self updateWithOptions:?];
}

- (id)stickerPhysicsStateIdentifier
{
  v2 = avt_default_log(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [AVTAvatar stickerPhysicsStateIdentifier];
  }

  return 0;
}

- (id)nodesMatchingStickerPattern:(id)pattern inHierarchy:(id)hierarchy options:(unint64_t)options includingDerivedNodes:(BOOL)nodes
{
  nodesCopy = nodes;
  patternCopy = pattern;
  hierarchyCopy = hierarchy;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [AVTAvatar _addNodesMatchingStickerPattern:"_addNodesMatchingStickerPattern:inHierarchy:toArray:options:" inHierarchy:? toArray:? options:?];
    if (!nodesCopy)
    {
      goto LABEL_17;
    }

LABEL_16:
    [AVTAvatar addDerivedNodesMatchingStickerPattern:"addDerivedNodesMatchingStickerPattern:toArray:options:" toArray:? options:?];
    goto LABEL_17;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v13 = patternCopy;
    v14 = [NSObject countByEnumeratingWithState:v13 objects:"countByEnumeratingWithState:objects:count:" count:0];
    if (v14)
    {
      v15 = v14;
      v16 = MEMORY[0];
      do
      {
        for (i = 0; i != v15; i = (i + 1))
        {
          if (MEMORY[0] != v16)
          {
            objc_enumerationMutation(v13);
          }

          [AVTAvatar _addNodesMatchingStickerPattern:"_addNodesMatchingStickerPattern:inHierarchy:toArray:options:" inHierarchy:? toArray:? options:?];
        }

        v15 = [NSObject countByEnumeratingWithState:v13 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v15);
    }
  }

  else
  {
    v13 = avt_default_log(isKindOfClass);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AVTAvatar nodesMatchingStickerPattern:inHierarchy:options:includingDerivedNodes:];
    }
  }

  if (nodesCopy)
  {
    goto LABEL_16;
  }

LABEL_17:

  return v11;
}

- (void)_addNodesMatchingStickerPattern:(id)pattern inHierarchy:(id)hierarchy toArray:(id)array options:(unint64_t)options
{
  patternCopy = pattern;
  arrayCopy = array;
  hierarchyCopy = hierarchy;
  LOBYTE(hierarchy) = [patternCopy hasSuffix:?];
  [patternCopy length];
  v12 = [patternCopy substringToIndex:?];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __73__AVTAvatar__addNodesMatchingStickerPattern_inHierarchy_toArray_options___block_invoke;
  v19 = &unk_1E7F49420;
  hierarchyCopy2 = hierarchy;
  v20 = v12;
  v21 = arrayCopy;
  v22 = patternCopy;
  optionsCopy = options;
  v13 = patternCopy;
  v14 = arrayCopy;
  v15 = v12;
  [hierarchyCopy enumerateHierarchyUsingBlock:?];
}

void __73__AVTAvatar__addNodesMatchingStickerPattern_inHierarchy_toArray_options___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (*(a1 + 64) == 1)
  {
    v3 = [v7 name];
    v4 = [v3 hasPrefix:?];

    if (v4)
    {
      if (!AVTNodeMatchesHierarchyEnumerationOptions(v7, *(a1 + 56)))
      {
        goto LABEL_8;
      }

LABEL_7:
      [*(a1 + 40) addObject:?];
      goto LABEL_8;
    }
  }

  v5 = [v7 name];
  v6 = [v5 isEqualToString:?];

  if (v6 && AVTNodeMatchesHierarchyEnumerationOptions(v7, *(a1 + 56)))
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (float)opacity
{
  avatarNode = [(AVTAvatar *)self avatarNode];
  v3 = avatarNode;
  if (avatarNode)
  {
    [avatarNode opacity];
    v5 = v4;
  }

  else
  {
    v6 = avt_default_log(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AVTAvatar opacity];
    }

    v5 = 1.0;
  }

  return v5;
}

- (void)setOpacity:(float)opacity
{
  avatarNode = [(AVTAvatar *)self avatarNode];
  [avatarNode opacity];
  if (v5 != opacity)
  {
    if (opacity == 1.0 || ([avatarNode opacity], v6 == 1.0))
    {
      [(AVTAvatar *)self _preparePrePass:?];
    }

    [avatarNode setOpacity:?];
  }
}

- (void)_preparePrePass:(BOOL)pass
{
  avatarNode = [(AVTAvatar *)self avatarNode];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __29__AVTAvatar__preparePrePass___block_invoke;
  v8 = &__block_descriptor_33_e21_v24__0__VFXNode_8_B16l;
  passCopy = pass;
  [avatarNode enumerateHierarchyUsingBlock:?];
}

void __29__AVTAvatar__preparePrePass___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 renderingOrder] <= 0)
  {
    [v2 setUsesDepthPrePass:?];
  }
}

BOOL __53__AVTAvatar_removeMorpherDrivenMaterialsInHierarchy___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = 0;
  }

  return v3 == a3;
}

void __47__AVTAvatar_updateEyeOrientationAndReflections__block_invoke(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9();
  [v2 _presentationWeightForTargetAtIndex:? token:?];
  OUTLINED_FUNCTION_9();
  if (v3)
  {
    v3 = v3[2];
  }

  v4 = MEMORY[0x1E696AD98];
  v5 = v3;
  v6 = [v4 numberWithFloat:?];
  [v5 setValue:? forKey:?];

  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_9();
  [v7 _presentationWeightForTargetAtIndex:? token:?];
  OUTLINED_FUNCTION_9();
  if (v8)
  {
    v8 = v8[3];
  }

  v9 = MEMORY[0x1E696AD98];
  v10 = v8;
  v11 = [v9 numberWithFloat:?];
  [v10 setValue:? forKey:?];
}

void *__47__AVTAvatar_updateEyeOrientationAndReflections__block_invoke_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_3();
  [v2 _presentationWeightForTargetAtIndex:? token:?];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_3();
  [v3 _presentationWeightForTargetAtIndex:? token:?];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_3();
  [v4 _presentationWeightForTargetAtIndex:? token:?];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_3();
  [v5 _presentationWeightForTargetAtIndex:? token:?];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_3();
  [v6 _presentationWeightForTargetAtIndex:? token:?];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_3();
  [v7 _presentationWeightForTargetAtIndex:? token:?];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_3();
  [v8 _presentationWeightForTargetAtIndex:? token:?];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_3();
  [v9 _presentationWeightForTargetAtIndex:? token:?];
  v16 = v10;
  OUTLINED_FUNCTION_2_3();
  if (v11)
  {
    v12 = *(v11 + 16);
  }

  else
  {
    v12 = 0;
  }

  [v12 setEulerAngles:v16];
  OUTLINED_FUNCTION_2_3();
  if (v13)
  {
    v14 = *(v13 + 24);
  }

  else
  {
    v14 = 0;
  }

  return [v14 setEulerAngles:?];
}

void *__76__AVTAvatar_addDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey_block___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return OUTLINED_FUNCTION_5_1(*(a2 + 24));
  }

  else
  {
    return OUTLINED_FUNCTION_5_1(0);
  }
}

void *__73__AVTAvatar_removeDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return OUTLINED_FUNCTION_5_1(*(a2 + 24));
  }

  else
  {
    return OUTLINED_FUNCTION_5_1(0);
  }
}

- (void)headNode
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)avatarNode
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_restoreOriginalShaderModifiersOfMaterial:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)updatePoseWithFaceTrackingData:(void *)a1 applySmoothing:.cold.1(void *a1)
{
  [a1 length];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)_applyHeadPoseWithTrackingData:gazeCorrection:pointOfView:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)pose
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)copyWithZone:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)newDescriptor
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)stickerPhysicsStateIdentifier
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)nodesMatchingStickerPattern:inHierarchy:options:includingDerivedNodes:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)opacity
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end