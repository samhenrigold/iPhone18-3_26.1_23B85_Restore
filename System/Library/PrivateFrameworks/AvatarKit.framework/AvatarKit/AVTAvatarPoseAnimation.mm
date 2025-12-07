@interface AVTAvatarPoseAnimation
+ (id)animationFromDataRepresentation:(id)representation keyPath:(id)path;
+ (id)animationFromDictionaryRepresentation:(id)representation keyPath:(id)path;
+ (id)optimizeSceneKitAnimation:(id)animation target:(id)target;
+ (void)dataRepresentationForAnimation:(id)animation completionHandler:(id)handler;
+ (void)dictionaryRepresentationForAnimation:(id)animation completionHandler:(id)handler;
+ (void)removeAllAnimationsFromAvatar:(id)avatar;
- (AVTAvatarPoseAnimation)initWithAnimatedPoseRepresentationAtURL:(id)l;
- (AVTAvatarPoseAnimation)initWithSceneKitSceneAtURL:(id)l usdaMetadata:(id *)metadata;
- (AVTAvatarPoseAnimation)initWithStaticPose:(id)pose staticPhysicsStates:(id)states;
- (double)duration;
- (id)_addAnimationToAvatar:(id)avatar options:(unint64_t)options transitionInDuration:(double)duration transitionOutDuration:(double)outDuration isTransient:(BOOL)transient completionQueue:(id)queue completionHandler:(id)handler;
- (id)_initWithSceneKitScene:(id)scene usdaMetadata:(id *)metadata identifier:(id)identifier;
- (id)_initWithStaticPoseRepresentation:(id)representation animatedPoseRepresentation:(id)poseRepresentation staticPhysicsStatesRepresentation:(id)statesRepresentation identifier:(id)identifier;
- (id)animatedPoseRepresentationWithAnimationRepresentationBuilder:(id)builder;
- (id)animationsForAvatar:(id)avatar;
- (id)physicalizedPose;
- (void)commonInitWithIdentifier:(id)identifier;
@end

@implementation AVTAvatarPoseAnimation

- (void)commonInitWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v4 = identifierCopy;
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    v4 = uUIDString;
  }

  v10 = v4;
  v7 = [@"kAVTPoseAnimation-" stringByAppendingString:?];
  animationBaseKey = self->_animationBaseKey;
  self->_animationBaseKey = v7;
}

- (AVTAvatarPoseAnimation)initWithSceneKitSceneAtURL:(id)l usdaMetadata:(id *)metadata
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [lCopy path];
  v9 = [defaultManager fileExistsAtPath:? isDirectory:?];

  if (v9)
  {
    v22 = *MEMORY[0x1E697A9B0];
    v23 = *MEMORY[0x1E697A9B8];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v21 = 0;
    v11 = [MEMORY[0x1E697A8C8] avt_newSceneWithURL:? options:? error:?];
    v12 = v21;
    v13 = [v11 avt_fixQuirksOfNewUSDSchemaWithOptions:? handler:?];
    if (v12)
    {
      v14 = avt_default_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(AVTAvatarPoseAnimation *)lCopy initWithSceneKitSceneAtURL:v12 usdaMetadata:v14];
      }
    }

    lastPathComponent = [lCopy lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    v17 = *&metadata->var2;
    v20 = *&metadata->var0;
    self = [(AVTAvatarPoseAnimation *)self _initWithSceneKitScene:v20 usdaMetadata:v17 identifier:?];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_initWithSceneKitScene:(id)scene usdaMetadata:(id *)metadata identifier:(id)identifier
{
  sceneCopy = scene;
  identifierCopy = identifier;
  v34.receiver = self;
  v34.super_class = AVTAvatarPoseAnimation;
  v10 = [(AVTAvatarPoseAnimation *)&v34 init];
  v11 = v10;
  if (v10)
  {
    [(AVTAvatarPoseAnimation *)v10 commonInitWithIdentifier:?];
    v12 = [[AVTAvatarPose alloc] initWithScene:?];
    staticPose = v11->_staticPose;
    v11->_staticPose = v12;

    staticPhysicsStates = v11->_staticPhysicsStates;
    v11->_staticPhysicsStates = 0;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    rootNode = [sceneCopy rootNode];
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __73__AVTAvatarPoseAnimation__initWithSceneKitScene_usdaMetadata_identifier___block_invoke;
    v28 = &unk_1E7F487B8;
    v18 = v11;
    v29 = v18;
    v30 = v15;
    v31 = v16;
    v19 = *&metadata->var2;
    v32 = *&metadata->var0;
    v33 = v19;
    v20 = v16;
    v21 = v15;
    [rootNode enumerateHierarchyUsingBlock:?];

    if ([v21 count])
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    objc_storeStrong(v18 + 3, v22);
    if ([v20 count])
    {
      v23 = v20;
    }

    else
    {
      v23 = 0;
    }

    objc_storeStrong(v18 + 4, v23);
  }

  return v11;
}

void __73__AVTAvatarPoseAnimation__initWithSceneKitScene_usdaMetadata_identifier___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v15[2] = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 animationKeys];
  v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v3 animationPlayerForKey:?];
        v10 = [v9 animation];
        v11 = [objc_opt_class() optimizeSceneKitAnimation:? target:?];
        v12 = *(a1 + 40);
        v13 = *(a1 + 48);
        v14 = *(a1 + 72);
        v15[0] = *(a1 + 56);
        v15[1] = v14;
        _AVTAvatarPoseImportSceneKitAnimation(v3, v10, v12, v13, v15);

        v8 = (v8 + 1);
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v6);
  }
}

- (AVTAvatarPoseAnimation)initWithAnimatedPoseRepresentationAtURL:(id)l
{
  lCopy = l;
  lastPathComponent = [lCopy lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:? error:?];
  v8 = [AVTAvatarPoseAnimation _initWithStaticPoseRepresentation:"_initWithStaticPoseRepresentation:animatedPoseRepresentation:staticPhysicsStatesRepresentation:identifier:" animatedPoseRepresentation:? staticPhysicsStatesRepresentation:? identifier:?];

  return v8;
}

- (AVTAvatarPoseAnimation)initWithStaticPose:(id)pose staticPhysicsStates:(id)states
{
  poseCopy = pose;
  statesCopy = states;
  v12.receiver = self;
  v12.super_class = AVTAvatarPoseAnimation;
  v9 = [(AVTAvatarPoseAnimation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(AVTAvatarPoseAnimation *)v9 commonInitWithIdentifier:?];
    objc_storeStrong(&v10->_staticPose, pose);
    objc_storeStrong(&v10->_staticPhysicsStates, states);
  }

  return v10;
}

- (id)_initWithStaticPoseRepresentation:(id)representation animatedPoseRepresentation:(id)poseRepresentation staticPhysicsStatesRepresentation:(id)statesRepresentation identifier:(id)identifier
{
  representationCopy = representation;
  poseRepresentationCopy = poseRepresentation;
  statesRepresentationCopy = statesRepresentation;
  identifierCopy = identifier;
  v31.receiver = self;
  v31.super_class = AVTAvatarPoseAnimation;
  v14 = [(AVTAvatarPoseAnimation *)&v31 init];
  v15 = v14;
  if (v14)
  {
    [(AVTAvatarPoseAnimation *)v14 commonInitWithIdentifier:?];
    if (representationCopy)
    {
      v16 = [[AVTAvatarPose alloc] initWithDictionaryRepresentation:?];
      staticPose = v15->_staticPose;
      v15->_staticPose = v16;
    }

    if (statesRepresentationCopy)
    {
      v18 = objc_alloc(MEMORY[0x1E695DF90]);
      [statesRepresentationCopy count];
      v30 = [v18 initWithCapacity:?];
      [statesRepresentationCopy enumerateKeysAndObjectsUsingBlock:?];
      staticPhysicsStates = v15->_staticPhysicsStates;
      v15->_staticPhysicsStates = v30;
      v20 = v30;
    }

    if (poseRepresentationCopy)
    {
      v21 = [poseRepresentationCopy objectForKeyedSubscript:?];
      if ([v21 count])
      {
        v29 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:?];
        [v21 enumerateKeysAndObjectsUsingBlock:?];
        blendshapeAnimations = v15->_blendshapeAnimations;
        v15->_blendshapeAnimations = v29;
        v23 = v29;
      }

      v24 = [poseRepresentationCopy objectForKeyedSubscript:?];
      if ([v24 count])
      {
        v28 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:?];
        [v24 enumerateKeysAndObjectsUsingBlock:?];
        perNodeAnimations = v15->_perNodeAnimations;
        v15->_perNodeAnimations = v28;
        v26 = v28;
      }
    }
  }

  return v15;
}

void __132__AVTAvatarPoseAnimation__initWithStaticPoseRepresentation_animatedPoseRepresentation_staticPhysicsStatesRepresentation_identifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[AVTAvatarPhysicsState alloc] initWithDictionaryRepresentation:?];

  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

void __132__AVTAvatarPoseAnimation__initWithStaticPoseRepresentation_animatedPoseRepresentation_staticPhysicsStatesRepresentation_identifier___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [AVTAvatarPoseAnimation animationFromDataRepresentation:"animationFromDataRepresentation:keyPath:" keyPath:?];
  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

void __132__AVTAvatarPoseAnimation__initWithStaticPoseRepresentation_animatedPoseRepresentation_staticPhysicsStatesRepresentation_identifier___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  [v6 count];
  v9 = [v8 initWithCapacity:?];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __132__AVTAvatarPoseAnimation__initWithStaticPoseRepresentation_animatedPoseRepresentation_staticPhysicsStatesRepresentation_identifier___block_invoke_4;
  v14 = &unk_1E7F48808;
  v15 = v9;
  v10 = v9;
  [v6 enumerateKeysAndObjectsUsingBlock:?];

  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

void __132__AVTAvatarPoseAnimation__initWithStaticPoseRepresentation_animatedPoseRepresentation_staticPhysicsStatesRepresentation_identifier___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [AVTAvatarPoseAnimation animationFromDataRepresentation:"animationFromDataRepresentation:keyPath:" keyPath:?];
  [*(a1 + 32) addObject:?];
}

- (id)animatedPoseRepresentationWithAnimationRepresentationBuilder:(id)builder
{
  builderCopy = builder;
  if ([(NSDictionary *)self->_blendshapeAnimations count]|| [(NSDictionary *)self->_perNodeAnimations count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([(NSDictionary *)self->_blendshapeAnimations count])
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      blendshapeAnimations = self->_blendshapeAnimations;
      v16 = v6;
      v17 = builderCopy;
      v8 = v6;
      [(NSDictionary *)blendshapeAnimations enumerateKeysAndObjectsUsingBlock:?];
      [v5 setObject:? forKeyedSubscript:?];
    }

    if ([(NSDictionary *)self->_perNodeAnimations count])
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      perNodeAnimations = self->_perNodeAnimations;
      v13 = MEMORY[0x1E69E9820];
      v14 = v9;
      v15 = builderCopy;
      v11 = v9;
      [(NSDictionary *)perNodeAnimations enumerateKeysAndObjectsUsingBlock:v13, 3221225472, __87__AVTAvatarPoseAnimation_animatedPoseRepresentationWithAnimationRepresentationBuilder___block_invoke_3, &unk_1E7F488A8];
      [v5 setObject:? forKeyedSubscript:?];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __87__AVTAvatarPoseAnimation_animatedPoseRepresentationWithAnimationRepresentationBuilder___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__AVTAvatarPoseAnimation_animatedPoseRepresentationWithAnimationRepresentationBuilder___block_invoke_2;
  v9[3] = &unk_1E7F48830;
  v6 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v5;
  v7 = *(v6 + 16);
  v8 = v5;
  v7(v6, a3, v9);
}

void __87__AVTAvatarPoseAnimation_animatedPoseRepresentationWithAnimationRepresentationBuilder___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = *(a1 + 40);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __87__AVTAvatarPoseAnimation_animatedPoseRepresentationWithAnimationRepresentationBuilder___block_invoke_4;
        v15[3] = &unk_1E7F48880;
        v16 = v6;
        (*(v12 + 16))(v12, v11, v15);

        v10 = (v10 + 1);
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v8);
  }

  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

- (id)animationsForAvatar:(id)avatar
{
  avatarCopy = avatar;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v18 = __46__AVTAvatarPoseAnimation_animationsForAvatar___block_invoke;
  v19 = &unk_1E7F48910;
  selfCopy = self;
  v6 = v5;
  v7 = 0;
  v21 = v6;
  do
  {
    v8 = AVTBlendShapeLocationFromARIndex(v7);
    if ([avatarCopy blendShapeIndexForARKitBlendShapeName:?] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = 0u;
      v16 = 0u;
      if (avatarCopy)
      {
        [&v15 morphInfoForARKitBlendShapeIndex:?];
      }

      v14[0] = v15;
      v14[1] = v16;
      v18(v17, v8, v14);
    }

    ++v7;
  }

  while (v7 != 52);
  [avatarCopy enumerateMorphInfoForCustomBlendShapeName:? usingBlock:?];
  perNodeAnimations = self->_perNodeAnimations;
  v12 = MEMORY[0x1E69E9820];
  v13 = v6;
  [(NSDictionary *)perNodeAnimations enumerateKeysAndObjectsUsingBlock:v12, 3221225472, __46__AVTAvatarPoseAnimation_animationsForAvatar___block_invoke_2, &unk_1E7F48958];
  v10 = v13;

  return v13;
}

void __46__AVTAvatarPoseAnimation_animationsForAvatar___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 24) == 1)
  {
    v6 = *(a3 + 8);
    v7 = a2;
    v13 = [v6 name];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:v13, *(a3 + 16)];
    v9 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:?];

    if (v9)
    {
      v10 = [v9 copy];
      [v10 setKeyPath:?];
      [*(a1 + 40) addObject:?];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E6979318]);
      [v10 setFromValue:?];
      [v10 setToValue:?];
      [v10 setKeyPath:?];
      v11 = *(a1 + 40);
      v12 = [MEMORY[0x1E69DF2B0] animationWithCAAnimation:?];
      [v11 addObject:?];
    }
  }
}

uint64_t __46__AVTAvatarPoseAnimation_animationsForAvatar___block_invoke_111(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  return v5(v4, @"Emoji", v8, a4);
}

void __46__AVTAvatarPoseAnimation_animationsForAvatar___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = a3;
  v6 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 copy];
        v12 = MEMORY[0x1E696AEC0];
        v13 = [v10 keyPath];
        v14 = [v12 stringWithFormat:v5, v13];
        [v11 setKeyPath:?];

        [*(a1 + 32) addObject:?];
      }

      v7 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v7);
  }
}

- (double)duration
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  [(NSDictionary *)self->_blendshapeAnimations enumerateKeysAndObjectsUsingBlock:?];
  [(NSDictionary *)self->_perNodeAnimations enumerateKeysAndObjectsUsingBlock:MEMORY[0x1E69E9820], 3221225472, __34__AVTAvatarPoseAnimation_duration__block_invoke_2, &unk_1E7F489A8, &v5];
  v3 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v3;
}

void *__34__AVTAvatarPoseAnimation_duration__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = v4[3];
  result = [v4 duration];
  if (v5 >= v7)
  {
    v7 = v5;
  }

  *(*(*(a1 + 32) + 8) + 24) = v7;
  return result;
}

void __34__AVTAvatarPoseAnimation_duration__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
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

        v9 = *(*(a1 + 32) + 8);
        v10 = v9[3];
        [v9 duration];
        if (v10 >= v11)
        {
          v11 = v10;
        }

        *(*(*(a1 + 32) + 8) + 24) = v11;
      }

      v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v6);
  }
}

- (id)_addAnimationToAvatar:(id)avatar options:(unint64_t)options transitionInDuration:(double)duration transitionOutDuration:(double)outDuration isTransient:(BOOL)transient completionQueue:(id)queue completionHandler:(id)handler
{
  transientCopy = transient;
  optionsCopy = options;
  v127 = *MEMORY[0x1E69E9840];
  avatarCopy = avatar;
  queueCopy = queue;
  handlerCopy = handler;
  if (self->_staticPose)
  {
    [avatarCopy setPose:?];
  }

  if (optionsCopy)
  {
    staticPhysicsStates = self->_staticPhysicsStates;
    stickerPhysicsStateIdentifier = [avatarCopy stickerPhysicsStateIdentifier];
    v18 = [(NSDictionary *)staticPhysicsStates objectForKeyedSubscript:?];

    [avatarCopy resetToPhysicsState:? assumeRestStateIfNil:?];
  }

  v20 = [(AVTAvatarPoseAnimation *)self animationsForAvatar:?];
  v21 = 0.0;
  if ((optionsCopy & 2) != 0)
  {
    v22 = CFAbsoluteTimeGetCurrent() + 0.05;
    v23 = CACurrentMediaTime();
    v19 = 0x3FEFFFFFFFFFFFFFLL;
    v21 = fmin(v23 - floor(v23), 1.0) + fmin(v22 - v23 - floor(v22 - v23), 1.0) + -1.0;
  }

  if ((optionsCopy & 4) != 0)
  {
    v24 = v21 + 2.5;
  }

  else
  {
    v24 = v21;
  }

  if ((optionsCopy & 8) != 0)
  {
    v25 = arc4random() / 4294967300.0;
    [&off_1BB4F0000 duration];
    v24 = v24 + v26 * v25;
  }

  [v19 duration];
  v28 = v27;
  v29 = duration + outDuration <= v27;
  v30 = v27 / (duration + outDuration);
  v31 = v30 * duration;
  v32 = v30 * outDuration;
  if (duration + outDuration > v28)
  {
    outDurationCopy = v32;
  }

  else
  {
    outDurationCopy = outDuration;
  }

  if (!v29)
  {
    duration = v31;
  }

  avatarNode = [avatarCopy avatarNode];
  animationKeys = [avatarNode animationKeys];
  selfCopy = self;
  v81 = animationKeys;
  v82 = avatarCopy;
  if ([animationKeys count])
  {
    v83 = v20;
    v90 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:?];
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v35 = animationKeys;
    v36 = [v35 countByEnumeratingWithState:? objects:? count:?];
    if (v36)
    {
      v37 = v36;
      v38 = *v112;
      do
      {
        for (i = 0; i != v37; i = (i + 1))
        {
          if (*v112 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v111 + 1) + 8 * i);
          if ([v40 hasPrefix:?])
          {
            v41 = [avatarNode animationPlayerForKey:?];
            v42 = v41;
            if (v41)
            {
              animation = [v41 animation];
              v44 = animation;
              if (animation)
              {
                keyPath = [animation keyPath];
                if ([keyPath length])
                {
                  v46 = [v90 objectForKeyedSubscript:?];
                  if (!v46)
                  {
                    v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    [v90 setObject:? forKeyedSubscript:?];
                  }

                  [v46 addObject:?];
                }

                else
                {
                  v49 = avt_default_log(0);
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 138412546;
                    *&buf[4] = v40;
                    *&buf[12] = 2112;
                    *&buf[14] = v44;
                  }

                  if (AVTLogAllowsInternalCrash())
                  {
                    goto LABEL_82;
                  }
                }
              }

              else
              {
                v48 = avt_default_log(0);
                if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = v40;
                  *&buf[12] = 2112;
                  *&buf[14] = v42;
                }

                if (AVTLogAllowsInternalCrash())
                {
                  v110 = 0;
                  v125 = 0u;
                  v126 = 0u;
                  v124 = 0u;
                  memset(buf, 0, sizeof(buf));
                  v75 = MEMORY[0x1E69E9C10];
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    v77 = 3;
                  }

                  else
                  {
                    v77 = 2;
                  }

                  v119 = 138412546;
                  v120 = v40;
                  v121 = 2112;
                  v122 = v42;
                  _os_crash_msg();
                  __break(1u);
LABEL_82:
                  v110 = 0;
                  v125 = 0u;
                  v126 = 0u;
                  v124 = 0u;
                  memset(buf, 0, sizeof(buf));
                  v78 = MEMORY[0x1E69E9C10];
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    v79 = 3;
                  }

                  else
                  {
                    v79 = 2;
                  }

                  v119 = 138412546;
                  v120 = v40;
                  v121 = 2112;
                  v122 = v44;
                  LODWORD(v80) = 22;
                  _os_crash_msg();
                  __break(1u);
                }
              }

              self = selfCopy;
            }

            else
            {
              v47 = avt_default_log(0);
              if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                *&buf[4] = v40;
                _os_log_fault_impl(&dword_1BB472000, v47, OS_LOG_TYPE_FAULT, "Fault: Unreachable code: Animation for key %@ has no player", buf, 0xCu);
              }

              if (AVTLogAllowsInternalCrash())
              {
                [AVTAvatarPoseAnimation _addAnimationToAvatar:buf options:v40 transitionInDuration:? transitionOutDuration:? isTransient:? completionQueue:? completionHandler:?];
              }
            }
          }
        }

        v37 = [v35 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v37);
    }

    v20 = v83;
  }

  else
  {
    v90 = 0;
  }

  v50 = objc_alloc(MEMORY[0x1E695DF70]);
  [v20 count];
  v51 = [v50 initWithCapacity:?];
  v85 = [AVTAvatarPoseAnimationController initWithAvatar:"initWithAvatar:animationKeys:" animationKeys:?];
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = v20;
  v52 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v52)
  {
    v53 = v52;
    v54 = 0;
    v55 = *v107;
    do
    {
      for (j = 0; j != v53; j = (j + 1))
      {
        if (*v107 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v57 = *(*(&v106 + 1) + 8 * j);
        v58 = [(NSString *)self->_animationBaseKey stringByAppendingFormat:v54];
        [v57 setDuration:?];
        [v57 setRepeatCount:?];
        [v57 setFillsForward:?];
        [v57 setFillsBackward:?];
        [v57 setTimeOffset:?];
        [v57 setRemovedOnCompletion:?];
        if (![v51 count] && transientCopy)
        {
          if (v24 != 0.0)
          {
            v59 = avt_default_log(0);
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              [AVTAvatarPoseAnimation _addAnimationToAvatar:buf options:&buf[4] transitionInDuration:v59 transitionOutDuration:? isTransient:? completionQueue:? completionHandler:?];
            }
          }

          v60 = MEMORY[0x1E69DF2B8];
          if (outDurationCopy <= 0.0)
          {
            v92 = v85;
            v94 = handlerCopy;
            v93 = queueCopy;
            v69 = [v60 animationEventWithKeyTime:? block:?];
            v115 = v69;
            v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
            [v57 setAnimationEvents:?];

            v62 = v94;
            v71 = &v92;
          }

          else
          {
            v101 = MEMORY[0x1E69E9820];
            v102 = 3221225472;
            v103 = __145__AVTAvatarPoseAnimation__addAnimationToAvatar_options_transitionInDuration_transitionOutDuration_isTransient_completionQueue_completionHandler___block_invoke;
            v104 = &unk_1E7F489D0;
            v105[0] = v85;
            *&v105[1] = outDurationCopy;
            v61 = [v60 animationEventWithKeyTime:? block:?];
            v62 = v61;
            if (handlerCopy)
            {
              v63 = queueCopy;
              if (!queueCopy)
              {
                v64 = avt_default_log(v61);
                if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                {
                  [AVTAvatarPoseAnimation _addAnimationToAvatar:&v120 options:v64 transitionInDuration:? transitionOutDuration:? isTransient:? completionQueue:? completionHandler:?];
                }

                v63 = 0;
              }

              v65 = MEMORY[0x1E69DF2B8];
              v95 = MEMORY[0x1E69E9820];
              v96 = 3221225472;
              v97 = __145__AVTAvatarPoseAnimation__addAnimationToAvatar_options_transitionInDuration_transitionOutDuration_isTransient_completionQueue_completionHandler___block_invoke_125;
              v98 = &unk_1E7F489F8;
              v99 = v63;
              v100 = handlerCopy;
              v66 = [v65 animationEventWithKeyTime:? block:?];
              v117 = v62;
              v118 = v66;
              v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
              [v57 setAnimationEvents:?];

              v68 = v99;
            }

            else
            {
              v116 = v61;
              v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
              [v57 setAnimationEvents:?];
            }

            v71 = v105;
          }

          self = selfCopy;
        }

        [v51 addObject:?];
        if (duration <= 0.0)
        {
          [avatarNode addAnimation:? forKey:?];
        }

        else
        {
          [MEMORY[0x1E69DF378] begin];
          [MEMORY[0x1E69DF378] setAnimationDuration:?];
          [avatarNode addAnimation:? forKey:?];
          [MEMORY[0x1E69DF378] commit];
        }

        keyPath2 = [v57 keyPath];
        [v90 removeObjectForKey:?];

        ++v54;
      }

      v53 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v53);
  }

  v73 = avatarNode;
  [v90 enumerateKeysAndObjectsUsingBlock:?];

  return v85;
}

void __145__AVTAvatarPoseAnimation__addAnimationToAvatar_options_transitionInDuration_transitionOutDuration_isTransient_completionQueue_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeAnimationWithBlendOutDuration:?];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 40);
    if (!v3)
    {
      v4 = avt_default_log(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __145__AVTAvatarPoseAnimation__addAnimationToAvatar_options_transitionInDuration_transitionOutDuration_isTransient_completionQueue_completionHandler___block_invoke_2_cold_1(v4);
      }

      v3 = *(a1 + 40);
      v2 = *(a1 + 48);
    }

    dispatch_async(v3, v2);
  }
}

void __145__AVTAvatarPoseAnimation__addAnimationToAvatar_options_transitionInDuration_transitionOutDuration_isTransient_completionQueue_completionHandler___block_invoke_128(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
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

        [*(a1 + 32) removeAnimationForKey:? blendOutDuration:?];
      }

      v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v6);
  }
}

+ (id)animationFromDataRepresentation:(id)representation keyPath:(id)path
{
  v4 = MEMORY[0x1E696ACD0];
  representationCopy = representation;
  objc_opt_class();
  v6 = [v4 unarchivedObjectOfClass:? fromData:? error:?];

  return v6;
}

+ (void)dataRepresentationForAnimation:(id)animation completionHandler:(id)handler
{
  v5 = MEMORY[0x1E696ACC8];
  v10 = 0;
  handlerCopy = handler;
  animationCopy = animation;
  v8 = [v5 archivedDataWithRootObject:? requiringSecureCoding:? error:?];
  keyPath = [animationCopy keyPath];

  handlerCopy[2](handlerCopy, keyPath, v8);
}

+ (id)animationFromDictionaryRepresentation:(id)representation keyPath:(id)path
{
  pathCopy = path;
  representationCopy = representation;
  v7 = [representationCopy objectForKeyedSubscript:?];
  v8 = MEMORY[0x1E695DF70];
  allKeys = [v7 allKeys];
  [allKeys count];
  v10 = [v8 arrayWithCapacity:?];

  v11 = MEMORY[0x1E695DF70];
  [v10 count];
  v12 = [v11 arrayWithCapacity:?];
  allKeys2 = [v7 allKeys];
  v25 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:? ascending:?];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v15 = [allKeys2 sortedArrayUsingDescriptors:?];

  v22 = v10;
  v23 = v7;
  v24 = v12;
  v16 = v12;
  v17 = v7;
  v18 = v10;
  [v15 enumerateObjectsUsingBlock:?];
  v19 = [MEMORY[0x1E6979390] animationWithKeyPath:?];

  v20 = [representationCopy objectForKeyedSubscript:?];

  [v20 floatValue];
  [v19 setDuration:?];

  [v19 setValues:?];
  [v19 setKeyTimes:?];

  return v19;
}

void __72__AVTAvatarPoseAnimation_animationFromDictionaryRepresentation_keyPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E696AD98];
  v5 = a2;
  [v5 floatValue];
  v6 = [v4 numberWithFloat:?];
  [v3 addObject:?];

  v11 = [*(a1 + 40) objectForKeyedSubscript:?];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 48) addObject:?];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v11;
    if ([v7 count] == 3)
    {
      [v7 avt_float3];
      v8 = *(a1 + 48);
      v9 = [MEMORY[0x1E696B098] avt_valueWithFloat3_usableWithKVCForSCNVector3:?];
    }

    else
    {
      if ([v7 count] != 4)
      {
LABEL_9:

        goto LABEL_10;
      }

      [v7 avt_float4];
      v8 = *(a1 + 48);
      v9 = [MEMORY[0x1E696B098] avt_valueWithFloat4_usableWithKVCForSCNVector4:?];
    }

    v10 = v9;
    [v8 addObject:?];

    goto LABEL_9;
  }

LABEL_10:
}

+ (void)dictionaryRepresentationForAnimation:(id)animation completionHandler:(id)handler
{
  animationCopy = animation;
  handlerCopy = handler;
  caAnimation = [animationCopy caAnimation];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    +[AVTAvatarPoseAnimation dictionaryRepresentationForAnimation:completionHandler:];
  }

  v8 = caAnimation;
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v65 = __81__AVTAvatarPoseAnimation_dictionaryRepresentationForAnimation_completionHandler___block_invoke_2;
  v66 = &unk_1E7F48A98;
  v67 = v8;
  keyPath = [v8 keyPath];
  v10 = [keyPath isEqualToString:?];

  if (!v10)
  {
    keyPath2 = [v8 keyPath];
    v58 = handlerCopy;
    v60 = animationCopy;
    if ([keyPath2 isEqualToString:?])
    {
    }

    else
    {
      keyPath3 = [v8 keyPath];
      v41 = [keyPath3 isEqualToString:?];

      if (!v41)
      {
        v42 = &__block_literal_global_161;
        goto LABEL_22;
      }
    }

    v42 = &__block_literal_global_166;
LABEL_22:
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    keyTimes = [v8 keyTimes];
    v45 = [keyTimes count];

    if (v45)
    {
      v47 = 0;
      do
      {
        keyTimes2 = [v8 keyTimes];
        v49 = [keyTimes2 objectAtIndexedSubscript:?];
        v50 = v65(v64, v49);
        stringValue = [v50 stringValue];

        values = [v8 values];
        v53 = [values objectAtIndexedSubscript:?];
        v54 = v42[2](v42, v53);

        [v11 setObject:? forKeyedSubscript:?];
        ++v47;
        keyTimes3 = [v8 keyTimes];
        v56 = [keyTimes3 count];
      }

      while (v47 < v56);
    }

    v12 = __81__AVTAvatarPoseAnimation_dictionaryRepresentationForAnimation_completionHandler___block_invoke(v46, v8, v11);
    keyPath4 = [v8 keyPath];
    handlerCopy = v58;
    v58[2](v58, keyPath4, v12);
    animationCopy = v60;
    goto LABEL_26;
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  keyPath4 = [MEMORY[0x1E69DF330] node];
  [(__CFString *)keyPath4 position];
  v62 = v14;
  [(__CFString *)keyPath4 orientation];
  v61 = v15;
  keyTimes4 = [v8 keyTimes];
  v17 = [keyTimes4 count];

  if (v17)
  {
    v57 = handlerCopy;
    v59 = animationCopy;
    LOBYTE(handlerCopy) = 0;
    LOBYTE(v63) = 0;
    v18 = 0;
    do
    {
      v19 = v11;
      v20 = v12;
      keyTimes5 = [v8 keyTimes];
      v22 = [keyTimes5 objectAtIndexedSubscript:?];
      v23 = v65(v64, v22);
      stringValue2 = [v23 stringValue];

      values2 = [v8 values];
      v26 = [values2 objectAtIndexedSubscript:?];

      [v26 avt_float4x4Value];
      [MEMORY[0x1E69DF378] begin];
      [(__CFString *)keyPath4 setTransform:?];
      [MEMORY[0x1E69DF378] commit];
      if (handlerCopy)
      {
        LOBYTE(handlerCopy) = 1;
      }

      else
      {
        [(__CFString *)keyPath4 position];
        v28 = vmvnq_s8(vceqq_f32(v62, v27));
        v28.i32[3] = v28.i32[2];
        LODWORD(handlerCopy) = vmaxvq_u32(v28) >> 31;
      }

      v12 = v20;
      if (v63)
      {
        v29 = 1;
      }

      else
      {
        [(__CFString *)keyPath4 orientation];
        v29 = vmaxvq_u32(vmvnq_s8(vceqq_f32(v61, v30))) >> 31;
      }

      v63 = v29;
      v11 = v19;
      v31 = MEMORY[0x1E695DEC8];
      [(__CFString *)keyPath4 position];
      v32 = [v31 avt_arrayWithFloat3:?];
      [v19 setObject:? forKeyedSubscript:?];

      v33 = MEMORY[0x1E695DEC8];
      [(__CFString *)keyPath4 orientation];
      v34 = [v33 avt_arrayWithFloat4:?];
      [v12 setObject:? forKeyedSubscript:?];

      ++v18;
      keyTimes6 = [v8 keyTimes];
      v36 = [keyTimes6 count];
    }

    while (v18 < v36);
    if (handlerCopy)
    {
      v38 = __81__AVTAvatarPoseAnimation_dictionaryRepresentationForAnimation_completionHandler___block_invoke(v37, v8, v19);
      handlerCopy = v57;
      v57[2](v57, @"position", v38);

      animationCopy = v59;
      if ((v63 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }

    handlerCopy = v57;
    animationCopy = v59;
    if (v63)
    {
LABEL_20:
      v43 = __81__AVTAvatarPoseAnimation_dictionaryRepresentationForAnimation_completionHandler___block_invoke(v37, v8, v12);
      handlerCopy[2](handlerCopy, @"orientation", v43);
    }
  }

LABEL_26:
}

id __81__AVTAvatarPoseAnimation_dictionaryRepresentationForAnimation_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = a2;
  v7 = [v4 dictionary];
  v8 = MEMORY[0x1E696AD98];
  [0x1E696A000 duration];

  v9 = [v8 numberWithFloat:?];
  [v7 setObject:? forKeyedSubscript:?];

  [v7 setObject:? forKeyedSubscript:?];

  return v7;
}

void *__81__AVTAvatarPoseAnimation_dictionaryRepresentationForAnimation_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 beginTime];
  [v5 floatValue];

  [*(a1 + 32) timeOffset];
  [*(a1 + 32) speed];

  return [v3 numberWithDouble:?];
}

id __81__AVTAvatarPoseAnimation_dictionaryRepresentationForAnimation_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 avt_float3Value];
    v3 = [MEMORY[0x1E695DEC8] avt_arrayWithFloat3:?];
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v4;
}

+ (id)optimizeSceneKitAnimation:(id)animation target:(id)target
{
  animationCopy = animation;
  targetCopy = target;
  [animationCopy setUsesSceneTimeBase:?];
  [animationCopy _optimizeKeyframesWithTarget:?];

  [animationCopy setUsesSceneTimeBase:?];

  return animationCopy;
}

+ (void)removeAllAnimationsFromAvatar:(id)avatar
{
  avatarNode = [avatar avatarNode];
  animationKeys = [avatarNode animationKeys];
  v5 = [animationKeys countByEnumeratingWithState:? objects:? count:?];
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(animationKeys);
        }

        if (![*(8 * i) hasPrefix:?])
        {

          v9 = animationKeys;
          v10 = [v9 countByEnumeratingWithState:0 objects:? count:?];
          if (v10)
          {
            v11 = v10;
            v12 = MEMORY[0];
            do
            {
              for (j = 0; j != v11; j = (j + 1))
              {
                if (MEMORY[0] != v12)
                {
                  objc_enumerationMutation(v9);
                }

                if ([*(8 * j) hasPrefix:?])
                {
                  [avatarNode removeAnimationForKey:?];
                }
              }

              v11 = [v9 countByEnumeratingWithState:? objects:? count:?];
            }

            while (v11);
          }

          goto LABEL_20;
        }
      }

      v6 = [animationKeys countByEnumeratingWithState:? objects:? count:?];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  [avatarNode removeAllAnimations];
LABEL_20:
}

- (id)physicalizedPose
{
  v2 = [AVTAvatarPhysicalizedPose initWithPose:"initWithPose:physicsStates:" physicsStates:?];

  return v2;
}

- (void)initWithSceneKitSceneAtURL:(NSObject *)a3 usdaMetadata:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 path];
  v6 = [a2 description];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_1BB472000, a3, OS_LOG_TYPE_ERROR, "Error: could not load scene at %@ with error: %@", &v7, 0x16u);
}

- (void)_addAnimationToAvatar:(uint64_t)a3 options:transitionInDuration:transitionOutDuration:isTransient:completionQueue:completionHandler:.cold.1(void *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v6 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v9 = 138412290;
  v10 = a3;
  v8 = 12;
  _os_log_send_and_compose_impl(v7, a1, a2, 80, &dword_1BB472000, v6, 16, "AvatarKit crash: Unreachable code: Animation for key %@ has no player", &v9, v8);
  _os_crash_msg();
  __break(1u);
}

- (void)_addAnimationToAvatar:(NSObject *)a3 options:transitionInDuration:transitionOutDuration:isTransient:completionQueue:completionHandler:.cold.2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "timeOffset == 0.0";
  OUTLINED_FUNCTION_0_4(&dword_1BB472000, a2, a3, "Error: Condition '%s' failed. Needs more work to support timeOffset + VFXAnimationEvent", a1);
}

- (void)_addAnimationToAvatar:(NSObject *)a3 options:transitionInDuration:transitionOutDuration:isTransient:completionQueue:completionHandler:.cold.3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "completionQueue";
}

void __145__AVTAvatarPoseAnimation__addAnimationToAvatar_options_transitionInDuration_transitionOutDuration_isTransient_completionQueue_completionHandler___block_invoke_2_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "completionQueue";
}

@end