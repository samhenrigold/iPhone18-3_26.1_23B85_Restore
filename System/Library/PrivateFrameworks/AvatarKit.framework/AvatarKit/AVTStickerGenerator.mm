@interface AVTStickerGenerator
+ (id)addCamera:(id)camera inScene:(id)scene reversionContext:(id)context;
+ (id)poseByApplyingAdjustmentsForConfiguration:(id)configuration avatar:(id)avatar;
+ (void)addProps:(id)props toScene:(id)scene forAvatar:(id)avatar withCamera:(id)camera options:(id)options reversionContext:(id)context;
+ (void)applyViewTransitionConfiguration:(id)configuration forLateAdditionOfComponentAssetNode:(id)node ofAvatar:(id)avatar;
+ (void)applyViewTransitionConfiguration:(id)configuration toView:(id)view scope:(unint64_t)scope options:(unint64_t)options duration:(double)duration avatar:(id)avatar context:(id)context completionHandler:(id)self0;
- (AVTStickerGenerator)initWithAvatar:(id)avatar;
- (void)_snapshotAtTime:(double)time configuration:(id)configuration options:(id)options completionBlock:(id)block;
- (void)_stickerImageWithConfiguration:(id)configuration options:(id)options startTime:(double)time completionHandler:(id)handler;
- (void)applyConfiguration:(id)configuration options:(id)options snapshotBlock:(id)block;
- (void)dealloc;
- (void)posterWithConfiguration:(id)configuration options:(id)options completionHandler:(id)handler;
- (void)setAvatar:(id)avatar;
- (void)stickerImageWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)stickerImageWithConfiguration:(id)configuration correctClipping:(BOOL)clipping completionHandler:(id)handler;
- (void)stickerImageWithConfiguration:(id)configuration options:(id)options completionHandler:(id)handler;
- (void)updateConfiguration:(id)configuration atTime:(double)time;
@end

@implementation AVTStickerGenerator

+ (id)poseByApplyingAdjustmentsForConfiguration:(id)configuration avatar:(id)avatar
{
  configurationCopy = configuration;
  avatarCopy = avatar;
  physicalizedPose = [configurationCopy physicalizedPose];
  pose = [physicalizedPose pose];

  poseAdjustments = [configurationCopy poseAdjustments];
  v10 = [poseAdjustments countByEnumeratingWithState:? objects:? count:?];
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0];
    do
    {
      v13 = 0;
      v14 = pose;
      do
      {
        if (MEMORY[0] != v12)
        {
          objc_enumerationMutation(poseAdjustments);
        }

        pose = [*(8 * v13) poseByApplyingToPose:? forAvatar:?];

        v13 = (v13 + 1);
        v14 = pose;
      }

      while (v11 != v13);
      v11 = [poseAdjustments countByEnumeratingWithState:? objects:? count:?];
    }

    while (v11);
  }

  return pose;
}

+ (void)applyViewTransitionConfiguration:(id)configuration toView:(id)view scope:(unint64_t)scope options:(unint64_t)options duration:(double)duration avatar:(id)avatar context:(id)context completionHandler:(id)self0
{
  optionsCopy = options;
  configurationCopy = configuration;
  viewCopy = view;
  avatarCopy = avatar;
  contextCopy = context;
  handlerCopy = handler;
  v21 = handlerCopy;
  if (!contextCopy)
  {
    v22 = avt_default_log(handlerCopy);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [AVTStickerGenerator applyViewTransitionConfiguration:v22 toView:? scope:? options:? duration:? avatar:? context:? completionHandler:?];
    }
  }

  world = [viewCopy world];
  pointOfView = [viewCopy pointOfView];
  environment = [viewCopy environment];
  v26 = environment;
  if (scope <= 1)
  {
    v72 = pointOfView;
    scopeCopy = scope;
    v75 = world;
    v76 = environment;
    [configurationCopy loadIfNeeded];
    [contextCopy resetForAvatar:?];
    presetOverrides = [configurationCopy presetOverrides];
    v28 = [presetOverrides countByEnumeratingWithState:? objects:? count:?];
    if (v28)
    {
      v29 = v28;
      v30 = MEMORY[0];
      do
      {
        for (i = 0; i != v29; i = (i + 1))
        {
          if (MEMORY[0] != v30)
          {
            objc_enumerationMutation(presetOverrides);
          }

          [*(8 * i) applyToAvatar:? reversionContext:?];
        }

        v29 = [presetOverrides countByEnumeratingWithState:? objects:? count:?];
      }

      while (v29);
    }

    selfCopy = self;
    v78 = v21;

    [avatarCopy updateWithOptions:?];
    shaderModifiers = [configurationCopy shaderModifiers];
    v33 = [shaderModifiers countByEnumeratingWithState:? objects:? count:?];
    if (v33)
    {
      v34 = v33;
      v35 = MEMORY[0];
      do
      {
        for (j = 0; j != v34; j = (j + 1))
        {
          if (MEMORY[0] != v35)
          {
            objc_enumerationMutation(shaderModifiers);
          }

          v37 = *(8 * j);
          avatarNode = [avatarCopy avatarNode];
          [v37 applyToMatchedMaterialsOfAvatar:? inHierarchy:? options:? reversionContext:?];
        }

        v34 = [shaderModifiers countByEnumeratingWithState:? objects:? count:?];
      }

      while (v34);
    }

    if ((optionsCopy & 1) == 0)
    {
      v39 = v78;
      if (duration <= 0.0)
      {
        v40 = 0;
      }

      else
      {
        v40 = MEMORY[0x1BFB0EC20](v78);

        v39 = 0;
      }

      poseAdjustments = [configurationCopy poseAdjustments];

      physicalizedPose = [configurationCopy physicalizedPose];
      v43 = physicalizedPose;
      v78 = v39;
      if (poseAdjustments)
      {
        v71 = v40;
        pose = [physicalizedPose pose];

        poseAdjustments2 = [configurationCopy poseAdjustments];
        v46 = [poseAdjustments2 countByEnumeratingWithState:? objects:? count:?];
        if (v46)
        {
          v47 = v46;
          v48 = MEMORY[0];
          do
          {
            v49 = 0;
            v50 = pose;
            do
            {
              if (MEMORY[0] != v48)
              {
                objc_enumerationMutation(poseAdjustments2);
              }

              pose = [*(8 * v49) poseByApplyingToPose:? forAvatar:?];

              v49 = (v49 + 1);
              v50 = pose;
            }

            while (v47 != v49);
            v47 = [poseAdjustments2 countByEnumeratingWithState:? objects:? count:?];
          }

          while (v47);
        }

        v51 = [AVTAvatarPhysicalizedPose alloc];
        physicalizedPose2 = [configurationCopy physicalizedPose];
        physicsStates = [physicalizedPose2 physicsStates];
        v54 = [AVTAvatarPhysicalizedPose initWithPose:v51 physicsStates:"initWithPose:physicsStates:"];

        v40 = v71;
        [AVTAvatarPhysicalizedPose applyWithTransitionToAvatar:v54 duration:"applyWithTransitionToAvatar:duration:completionHandler:" completionHandler:?];

        v43 = pose;
      }

      else
      {
        [physicalizedPose applyWithTransitionToAvatar:? duration:? completionHandler:?];
      }
    }

    morpherOverrides = [configurationCopy morpherOverrides];
    v56 = [morpherOverrides countByEnumeratingWithState:? objects:? count:?];
    if (v56)
    {
      v57 = v56;
      v58 = MEMORY[0];
      do
      {
        for (k = 0; k != v57; k = (k + 1))
        {
          if (MEMORY[0] != v58)
          {
            objc_enumerationMutation(morpherOverrides);
          }

          v60 = *(8 * k);
          avatarNode2 = [avatarCopy avatarNode];
          [v60 applyToAvatar:? inHierarchy:? reversionContext:?];
        }

        v57 = [morpherOverrides countByEnumeratingWithState:? objects:? count:?];
      }

      while (v57);
    }

    if ((optionsCopy & 2) != 0)
    {
      pointOfView = v72;
      scope = scopeCopy;
      v26 = v76;
      v21 = v78;
      self = selfCopy;
      world = v75;
    }

    else
    {
      camera = [configurationCopy camera];

      v26 = v76;
      v21 = v78;
      self = selfCopy;
      world = v75;
      if (camera)
      {
        camera2 = [configurationCopy camera];
        pointOfView = [selfCopy addCamera:? inScene:? reversionContext:?];

        camera3 = [pointOfView camera];
        [camera3 setProjectionDirection:?];

        [contextCopy saveUpdatePointOfViewFromFramingModeInEnvironment:?];
        if (duration <= 0.0)
        {
          [viewCopy setPointOfView:?];
        }

        else
        {
          [MEMORY[0x1E69DF378] begin];
          [MEMORY[0x1E69DF378] setAnimationDuration:?];
          v65 = MEMORY[0x1E69DF378];
          v66 = [MEMORY[0x1E69793D0] functionWithName:?];
          [v65 setAnimationTimingFunction:?];

          v26 = v76;
          [viewCopy setPointOfView:?];
          world = v75;
          [MEMORY[0x1E69DF378] commit];
        }

        scope = scopeCopy;
      }

      else
      {
        pointOfView = v72;
        scope = scopeCopy;
      }
    }
  }

  if ((scope & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v77 = v26;
      v67 = avatarCopy;
      bodyPose = [configurationCopy bodyPose];
      [v67 setShowsBody:?];
      [v67 setBodyPose:?];
      if (bodyPose)
      {
        [contextCopy saveShowMemojiBody:?];
      }

      [v67 updateWithOptions:?];

      v26 = v77;
    }

    props = [configurationCopy props];

    if (props)
    {
      props2 = [configurationCopy props];
      [self addProps:? toScene:? forAvatar:? withCamera:? options:? reversionContext:?];
    }
  }

  if (v21)
  {
    v21[2](v21);
  }
}

+ (void)applyViewTransitionConfiguration:(id)configuration forLateAdditionOfComponentAssetNode:(id)node ofAvatar:(id)avatar
{
  configurationCopy = configuration;
  nodeCopy = node;
  avatarCopy = avatar;
  [configurationCopy loadIfNeeded];
  shaderModifiers = [configurationCopy shaderModifiers];
  v11 = [shaderModifiers countByEnumeratingWithState:? objects:? count:?];
  if (v11)
  {
    v12 = v11;
    v13 = MEMORY[0];
    do
    {
      for (i = 0; i != v12; i = (i + 1))
      {
        if (MEMORY[0] != v13)
        {
          objc_enumerationMutation(shaderModifiers);
        }

        [*(8 * i) applyToMatchedMaterialsOfAvatar:? inHierarchy:? options:? reversionContext:?];
      }

      v12 = [shaderModifiers countByEnumeratingWithState:? objects:? count:?];
    }

    while (v12);
  }

  morpherOverrides = [configurationCopy morpherOverrides];
  v16 = [morpherOverrides countByEnumeratingWithState:? objects:? count:?];
  if (v16)
  {
    v17 = v16;
    v18 = MEMORY[0];
    do
    {
      for (j = 0; j != v17; j = (j + 1))
      {
        if (MEMORY[0] != v18)
        {
          objc_enumerationMutation(morpherOverrides);
        }

        [*(8 * j) applyToAvatar:? inHierarchy:? reversionContext:?];
      }

      v17 = [morpherOverrides countByEnumeratingWithState:? objects:? count:?];
    }

    while (v17);
  }
}

- (void)applyConfiguration:(id)configuration options:(id)options snapshotBlock:(id)block
{
  v101 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  optionsCopy = options;
  blockCopy = block;
  [MEMORY[0x1E69DF378] begin];
  [MEMORY[0x1E69DF378] setAnimationDuration:?];
  renderer = self->_renderer;
  if (!renderer)
  {
    v99 = @"AVTRendererOptionInitiallyConfigureForARMode";
    v100 = MEMORY[0x1E695E110];
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v13 = [VFXRenderer rendererWithDevice:"rendererWithDevice:options:" options:?];
    v14 = self->_renderer;
    self->_renderer = v13;

    [(AVTRenderer *)self->_renderer setFramingMode:?];
    [(AVTRenderer *)self->_renderer setEnableReticle:?];
    renderer = self->_renderer;
  }

  [(AVTRenderer *)renderer setAvatar:?];
  [configurationCopy loadIfNeeded];
  [(AVTStickerConfigurationReversionContext *)self->_context resetForAvatar:?];
  camera = [configurationCopy camera];

  if (camera)
  {
    v16 = objc_opt_class();
    camera2 = [configurationCopy camera];
    world = [(AVTRenderer *)self->_renderer world];
    pointOfView = [v16 addCamera:? inScene:? reversionContext:?];

    [(AVTRenderer *)self->_renderer setPointOfView:?];
  }

  else
  {
    framingMode = [configurationCopy framingMode];
    v21 = framingMode;
    v22 = @"camera";
    if (framingMode)
    {
      v22 = framingMode;
    }

    v23 = v22;

    [(AVTRenderer *)self->_renderer setFramingModeForcingPointOfViewUpdate:?];
    pointOfView = [(AVTRenderer *)self->_renderer pointOfView];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v92 = blockCopy;
  if (self->_avatar)
  {
    presetOverrides = [configurationCopy presetOverrides];
    v25 = [presetOverrides countByEnumeratingWithState:? objects:? count:?];
    if (v25)
    {
      v26 = v25;
      v27 = MEMORY[0];
      do
      {
        for (i = 0; i != v26; i = (i + 1))
        {
          if (MEMORY[0] != v27)
          {
            objc_enumerationMutation(presetOverrides);
          }

          [*(8 * i) applyToAvatar:? reversionContext:?];
        }

        v26 = [presetOverrides countByEnumeratingWithState:? objects:? count:?];
      }

      while (v26);
    }

    v89 = pointOfView;

    poseAdjustments = [configurationCopy poseAdjustments];

    physicalizedPose = [configurationCopy physicalizedPose];
    v31 = physicalizedPose;
    if (poseAdjustments)
    {
      pose = [physicalizedPose pose];

      poseAdjustments2 = [configurationCopy poseAdjustments];
      v34 = [poseAdjustments2 countByEnumeratingWithState:? objects:? count:?];
      if (v34)
      {
        v35 = v34;
        v36 = MEMORY[0];
        do
        {
          v37 = 0;
          v38 = pose;
          do
          {
            if (MEMORY[0] != v36)
            {
              objc_enumerationMutation(poseAdjustments2);
            }

            pose = [*(8 * v37) poseByApplyingToPose:? forAvatar:?];

            v37 = (v37 + 1);
            v38 = pose;
          }

          while (v35 != v37);
          v35 = [poseAdjustments2 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v35);
      }

      v39 = [AVTAvatarPhysicalizedPose alloc];
      physicalizedPose2 = [configurationCopy physicalizedPose];
      physicsStates = [physicalizedPose2 physicsStates];
      v42 = [AVTAvatarPhysicalizedPose initWithPose:v39 physicsStates:"initWithPose:physicsStates:"];

      [(AVTAvatarPhysicalizedPose *)v42 applyToAvatar:?];
      v31 = pose;
    }

    else
    {
      [physicalizedPose applyToAvatar:?];
    }

    if (isKindOfClass)
    {
      v43 = self->_avatar;
      bodyPose = [configurationCopy bodyPose];
      [(AVTAvatar *)v43 setShowsBody:?];
      [(AVTAvatar *)v43 setBodyPose:?];
    }

    [(AVTAvatar *)self->_avatar updateWithOptions:?];
    shaderModifiers = [configurationCopy shaderModifiers];
    v46 = [shaderModifiers countByEnumeratingWithState:? objects:? count:?];
    if (v46)
    {
      v47 = v46;
      v48 = MEMORY[0];
      do
      {
        for (j = 0; j != v47; j = (j + 1))
        {
          if (MEMORY[0] != v48)
          {
            objc_enumerationMutation(shaderModifiers);
          }

          v50 = *(8 * j);
          avatarNode = [(AVTAvatar *)self->_avatar avatarNode];
          [v50 applyToMatchedMaterialsOfAvatar:? inHierarchy:? options:? reversionContext:?];
        }

        v47 = [shaderModifiers countByEnumeratingWithState:? objects:? count:?];
      }

      while (v47);
    }

    morpherOverrides = [configurationCopy morpherOverrides];
    v53 = [morpherOverrides countByEnumeratingWithState:? objects:? count:?];
    if (v53)
    {
      v54 = v53;
      v55 = MEMORY[0];
      do
      {
        for (k = 0; k != v54; k = (k + 1))
        {
          if (MEMORY[0] != v55)
          {
            objc_enumerationMutation(morpherOverrides);
          }

          v57 = *(8 * k);
          avatarNode2 = [(AVTAvatar *)self->_avatar avatarNode];
          [v57 applyToAvatar:? inHierarchy:? reversionContext:?];
        }

        v54 = [morpherOverrides countByEnumeratingWithState:? objects:? count:?];
      }

      while (v54);
    }

    blockCopy = v92;
    pointOfView = v89;
  }

  props = [configurationCopy props];

  if (props)
  {
    v60 = objc_opt_class();
    props2 = [configurationCopy props];
    world2 = [(AVTRenderer *)self->_renderer world];
    [v60 addProps:? toScene:? forAvatar:? withCamera:? options:? reversionContext:?];
  }

  props3 = [configurationCopy props];
  v64 = [props3 countByEnumeratingWithState:? objects:? count:?];
  if (v64)
  {
    v65 = v64;
    v66 = MEMORY[0];
    do
    {
      for (m = 0; m != v65; m = (m + 1))
      {
        if (MEMORY[0] != v66)
        {
          objc_enumerationMutation(props3);
        }

        [*(8 * m) stickerGenerationWillBegin];
      }

      v65 = [props3 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v65);
  }

  camera3 = [pointOfView camera];
  [camera3 fieldOfView];
  [camera3 avt_simdPostProjectionTransform];
  HIDWORD(v69) = 0;
  HIDWORD(v70) = 0;
  v88 = v70;
  v90 = v69;
  HIDWORD(v71) = 0;
  v87 = v71;
  useLegacyCorrectClippingImplementation = [optionsCopy useLegacyCorrectClippingImplementation];
  contentMode = [optionsCopy contentMode];
  v74 = blockCopy;
  if (useLegacyCorrectClippingImplementation)
  {
    if (contentMode != 1)
    {
      goto LABEL_66;
    }

    camera4 = [pointOfView camera];
    [camera4 setFieldOfView:?];
    goto LABEL_65;
  }

  if (contentMode == 1)
  {
    v76 = 0;
    v93 = v90;
    v94 = v88;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = v87;
    do
    {
      *(&v96 + v76) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1BB4F06A0, COERCE_FLOAT(*(&v93 + v76))), xmmword_1BB4F06B0, *(&v93 + v76), 1), xmmword_1BB4F06C0, *(&v93 + v76), 2);
      v76 += 16;
    }

    while (v76 != 48);
LABEL_64:
    camera4 = [pointOfView camera];
    [camera4 avt_setSimdPostProjectionTransform:?];
LABEL_65:

    goto LABEL_66;
  }

  if ([optionsCopy contentMode] == 2 || objc_msgSend(optionsCopy, "contentMode") == 3 || objc_msgSend(optionsCopy, "contentMode") == 4)
  {
    v77 = 0;
    v93 = v90;
    v94 = v88;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = v87;
    do
    {
      *(&v96 + v77) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1BB4F06A0, COERCE_FLOAT(*(&v93 + v77))), xmmword_1BB4F06B0, *(&v93 + v77), 1), xmmword_1BB4F0610, *(&v93 + v77), 2);
      v77 += 16;
    }

    while (v77 != 48);
    goto LABEL_64;
  }

LABEL_66:
  v78 = pointOfView;
  [MEMORY[0x1E69DF378] commit];
  v74[2](v74);
  [MEMORY[0x1E69DF378] begin];
  [MEMORY[0x1E69DF378] setAnimationDuration:?];
  props4 = [configurationCopy props];
  v80 = [props4 countByEnumeratingWithState:? objects:? count:?];
  if (v80)
  {
    v81 = v80;
    v82 = MEMORY[0];
    do
    {
      for (n = 0; n != v81; n = (n + 1))
      {
        if (MEMORY[0] != v82)
        {
          objc_enumerationMutation(props4);
        }

        [*(8 * n) stickerGenerationDidEnd];
      }

      v81 = [props4 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v81);
  }

  if (isKindOfClass)
  {
    v84 = self->_avatar;
    [(AVTAvatar *)v84 setShowsBody:?];
    [(AVTAvatar *)v84 setBodyPose:?];
  }

  [AVTStickerConfigurationReversionContext revertChangesWithScope:"revertChangesWithScope:animationDuration:" animationDuration:?];
  useLegacyCorrectClippingImplementation2 = [optionsCopy useLegacyCorrectClippingImplementation];
  contentMode2 = [optionsCopy contentMode];
  if (useLegacyCorrectClippingImplementation2)
  {
    if (contentMode2 == 1)
    {
      [camera3 setFieldOfView:?];
    }
  }

  else if (contentMode2 == 1 || [optionsCopy contentMode] == 2 || objc_msgSend(optionsCopy, "contentMode") == 3 || objc_msgSend(optionsCopy, "contentMode") == 4)
  {
    [camera3 avt_setSimdPostProjectionTransform:?];
  }

  [configurationCopy unload];
  [MEMORY[0x1E69DF378] commit];
}

- (void)updateConfiguration:(id)configuration atTime:(double)time
{
  v29 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  props = [configurationCopy props];
  v8 = [props countByEnumeratingWithState:? objects:? count:?];
  if (v8)
  {
    v9 = v8;
    LOBYTE(wantsTimedUpdates) = 0;
    v11 = *v26;
    do
    {
      for (i = 0; i != v9; i = (i + 1))
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(props);
        }

        if (wantsTimedUpdates)
        {
          wantsTimedUpdates = 1;
        }

        else
        {
          wantsTimedUpdates = [*(*(&v25 + 1) + 8 * i) wantsTimedUpdates];
        }
      }

      v9 = [props countByEnumeratingWithState:? objects:? count:?];
    }

    while (v9);

    if (wantsTimedUpdates)
    {
      [MEMORY[0x1E69DF378] begin];
      [MEMORY[0x1E69DF378] setAnimationDuration:?];
      memset(&v24, 0, sizeof(v24));
      CMTimeMakeWithSeconds(&v24, time, 1000000000);
      world = [(AVTRenderer *)self->_renderer world];
      rootNode = [world rootNode];
      v15 = [rootNode childNodeWithName:? recursively:?];

      props2 = [configurationCopy props];
      v17 = [props2 countByEnumeratingWithState:? objects:? count:?];
      if (v17)
      {
        v18 = v17;
        v19 = MEMORY[0];
        do
        {
          for (j = 0; j != v18; j = (j + 1))
          {
            if (MEMORY[0] != v19)
            {
              objc_enumerationMutation(props2);
            }

            v21 = *(8 * j);
            nodeName = [v21 nodeName];
            v23 = [v15 childNodeWithName:? recursively:?];

            [v21 updateNode:v24.value withContentAtTime:{*&v24.timescale, v24.epoch}];
          }

          v18 = [props2 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v18);
      }

      [MEMORY[0x1E69DF378] commit];
    }
  }

  else
  {
  }
}

+ (void)addProps:(id)props toScene:(id)scene forAvatar:(id)avatar withCamera:(id)camera options:(id)options reversionContext:(id)context
{
  propsCopy = props;
  sceneCopy = scene;
  avatarCopy = avatar;
  cameraCopy = camera;
  optionsCopy = options;
  contextCopy = context;
  v19 = objc_alloc_init(MEMORY[0x1E69DF330]);
  [v19 setName:?];
  v26 = sceneCopy;
  rootNode = [sceneCopy rootNode];
  [rootNode addChildNode:?];

  [contextCopy saveExtraPropsNode:?];
  obj = propsCopy;
  v21 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v21)
  {
    v22 = v21;
    v23 = MEMORY[0];
    do
    {
      for (i = 0; i != v22; i = (i + 1))
      {
        if (MEMORY[0] != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(8 * i);
        CACurrentMediaTime();
        v28 = v19;
        [v25 buildNodeForAvatar:? withCamera:? options:? completionHandler:?];
      }

      v22 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v22);
  }
}

+ (id)addCamera:(id)camera inScene:(id)scene reversionContext:(id)context
{
  contextCopy = context;
  sceneCopy = scene;
  buildNode = [camera buildNode];
  [buildNode setName:?];
  rootNode = [sceneCopy rootNode];

  [rootNode addChildNode:?];
  [contextCopy saveExtraCameraNode:?];

  return buildNode;
}

- (AVTStickerGenerator)initWithAvatar:(id)avatar
{
  avatarCopy = avatar;
  v12.receiver = self;
  v12.super_class = AVTStickerGenerator;
  v5 = [(AVTStickerGenerator *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(AVTStickerGenerator *)v5 setAvatar:?];
    v7 = objc_alloc_init(AVTStickerConfigurationReversionContext);
    context = v6->_context;
    v6->_context = v7;

    v6->_async = 1;
    v9 = objc_alloc_init(AVTSnapshotHelper);
    snapshotHelper = v6->_snapshotHelper;
    v6->_snapshotHelper = v9;

    if (initWithAvatar__onceToken != -1)
    {
      [AVTStickerGenerator initWithAvatar:];
    }

    objc_storeStrong(&v6->_workQueue, initWithAvatar__sharedWorkQueue);
  }

  return v6;
}

void __38__AVTStickerGenerator_initWithAvatar___block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("com.apple.avatarkit.AVTStickerGenerator", v0);
  v2 = initWithAvatar__sharedWorkQueue;
  initWithAvatar__sharedWorkQueue = v1;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AVTStickerGenerator;
  [(AVTStickerGenerator *)&v2 dealloc];
}

- (void)setAvatar:(id)avatar
{
  avatarCopy = avatar;
  avatar = self->_avatar;
  p_avatar = &self->_avatar;
  if (avatar != avatarCopy)
  {
    v8 = avatarCopy;
    objc_storeStrong(p_avatar, avatar);
    [(AVTAvatar *)*p_avatar pauseBakedAnimation];
    avatarCopy = v8;
  }
}

- (void)_snapshotAtTime:(double)time configuration:(id)configuration options:(id)options completionBlock:(id)block
{
  configurationCopy = configuration;
  optionsCopy = options;
  blockCopy = block;
  [optionsCopy size];
  v13 = v12;
  [optionsCopy size];
  v15 = v14;
  [optionsCopy sizeMultiplier];
  v17 = v16;
  [optionsCopy scaleFactor];
  v19 = v18;
  legacySizeOption = [configurationCopy legacySizeOption];

  if (legacySizeOption)
  {
    legacySizeOption2 = [configurationCopy legacySizeOption];
    [legacySizeOption2 floatValue];
    v23 = v22;

    v13 = v23;
    v15 = v13;
  }

  v24 = (v19 * (v17 * v13));
  v25 = (v19 * (v17 * v15));
  if ([optionsCopy contentMode] == 1)
  {
    v26 = v24;
    v27 = v25;
    if ([optionsCopy useLegacyCorrectClippingImplementation])
    {
      v28 = (v26 * 1.375);
      v29 = (v27 * 1.375);
      v39 = v28;
      v30 = vcvtd_n_f64_u64(v28 - v24, 1uLL);
      v31 = v29;
      v32 = vcvtd_n_f64_u64(v29 - v25, 1uLL);
    }

    else
    {
      v28 = (v26 * 1.9);
      v29 = (v27 * 1.9);
      v39 = v28;
      v30 = vcvtd_n_f64_u64(v28 - v24, 1uLL);
      v31 = v29;
      v32 = (v29 - v25);
    }

    goto LABEL_11;
  }

  if ([optionsCopy contentMode] == 2 || objc_msgSend(optionsCopy, "contentMode") == 3 || objc_msgSend(optionsCopy, "contentMode") == 4)
  {
    v26 = v24;
    v28 = (v24 * 1.9);
    v27 = v25;
    v29 = (v25 * 1.9);
    v32 = vcvtd_n_f64_u64(v29 - v25, 1uLL);
    v31 = (v29 - v32);
    v39 = v28;
    v30 = vcvtd_n_f64_u64(v28 - v24, 1uLL);
LABEL_11:
    v33 = 0.0;
    v34 = 0.0;
    goto LABEL_12;
  }

  v26 = *(MEMORY[0x1E695F058] + 16);
  v31 = *(MEMORY[0x1E695F058] + 24);
  v27 = v31;
  v39 = v26;
  v34 = *MEMORY[0x1E695F058];
  v33 = *(MEMORY[0x1E695F058] + 8);
  v32 = v33;
  v30 = *MEMORY[0x1E695F058];
  v29 = v25;
  v28 = v24;
LABEL_12:
  [AVTStickerGenerator updateConfiguration:"updateConfiguration:atTime:" atTime:?];
  [MEMORY[0x1E69DF378] flush];
  [(AVTRenderer *)self->_renderer updateAtTime:?];
  renderer = self->_renderer;
  snapshotHelper = self->_snapshotHelper;
  v40 = 0;
  v37 = [(AVTSnapshotHelper *)snapshotHelper newCGImageWithRenderer:2 antialiasingMode:v28 pixelWidth:v29 pixelHeight:&v40 error:?];
  v38 = v40;
  blockCopy[2](blockCopy, v37, v38, v30, v32, v26, v27, v34, v33, v39, v31);

  if (v37)
  {
    CFRelease(v37);
  }
}

- (void)stickerImageWithConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  v8 = +[AVTStickerGeneratorOptions defaultOptions];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __71__AVTStickerGenerator_stickerImageWithConfiguration_completionHandler___block_invoke;
  v13 = &unk_1E7F48380;
  v14 = handlerCopy;
  v9 = handlerCopy;
  [AVTStickerGenerator stickerImageWithConfiguration:"stickerImageWithConfiguration:options:completionHandler:" options:? completionHandler:?];
}

- (void)stickerImageWithConfiguration:(id)configuration correctClipping:(BOOL)clipping completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  v9 = [AVTStickerGeneratorOptions optionsWithCorrectClipping:?];
  [AVTStickerGenerator stickerImageWithConfiguration:"stickerImageWithConfiguration:options:completionHandler:" options:? completionHandler:?];
}

- (void)_stickerImageWithConfiguration:(id)configuration options:(id)options startTime:(double)time completionHandler:(id)handler
{
  configurationCopy = configuration;
  optionsCopy = options;
  handlerCopy = handler;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x4010000000;
  v20 = &unk_1BB5146C7;
  v12 = *(MEMORY[0x1E695F058] + 16);
  v21 = *MEMORY[0x1E695F058];
  v22 = v12;
  [optionsCopy contentMode];
  AVTPosterExpectsExtraTallContent(self->_avatar, configurationCopy);
  v16 = MEMORY[0x1E69E9820];
  v13 = configurationCopy;
  v14 = optionsCopy;
  [(AVTStickerGenerator *)self applyConfiguration:v16 options:3221225472 snapshotBlock:__90__AVTStickerGenerator__stickerImageWithConfiguration_options_startTime_completionHandler___block_invoke, &unk_1E7F483F8, self];
  if (v24[3])
  {
    [v14 scaleFactor];
    v15 = [MEMORY[0x1E69DCAB8] imageWithCGImage:? scale:? orientation:?];
    CGImageRelease(v24[3]);
    handlerCopy[2](handlerCopy, v15, self->_avatar, v18[4], v18[5], v18[6], v18[7]);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, self->_avatar, v18[4], v18[5], v18[6], v18[7]);
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
}

void __90__AVTStickerGenerator__stickerImageWithConfiguration_options_startTime_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E69E9820];
  v3 = *(a1 + 48);
  [v1 _snapshotAtTime:v2 configuration:3221225472 options:__90__AVTStickerGenerator__stickerImageWithConfiguration_options_startTime_completionHandler___block_invoke_2 completionBlock:&unk_1E7F483D0];
}

void __90__AVTStickerGenerator__stickerImageWithConfiguration_options_startTime_completionHandler___block_invoke_2(uint64_t a1, CGImage *a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v17 = a3;
  if (a2)
  {
    if ([*(a1 + 32) contentMode] == 1 || objc_msgSend(*(a1 + 32), "contentMode") == 2)
    {
      [AVTImageUtilities cropImageWhitespace:"cropImageWhitespace:outsideRect:insideRect:resultBlock:" outsideRect:? insideRect:? resultBlock:?];
    }

    else if ([*(a1 + 32) contentMode] == 3 || objc_msgSend(*(a1 + 32), "contentMode") == 4)
    {
      [AVTImageUtilities posterWithStickerImage:MEMORY[0x1E69E9820] posterSize:3221225472 minimumHorizontalMargin:__90__AVTStickerGenerator__stickerImageWithConfiguration_options_startTime_completionHandler___block_invoke_4 thumbnailRect:&unk_1E7F483A8 allowsExtraTallContent:*(a1 + 40) expectsExtraTallContent:*&a4 resultBlock:*&a5, *&a6, *&a7];
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = CGImageRetain(a2);
    }
  }
}

float64x2_t __90__AVTStickerGenerator__stickerImageWithConfiguration_options_startTime_completionHandler___block_invoke_3(uint64_t a1, CGImageRef image, float64_t a3, float64_t a4)
{
  *(*(*(a1 + 32) + 8) + 24) = CGImageRetain(image);
  v5.f64[0] = a3;
  v5.f64[1] = a4;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(a1 + 64);
  result = vsubq_f64(*(a1 + 48), v5);
  *(v6 + 32) = result;
  *(v6 + 48) = v7;
  return result;
}

float64x2_t __90__AVTStickerGenerator__stickerImageWithConfiguration_options_startTime_completionHandler___block_invoke_4(uint64_t a1, CGImageRef image, float64_t a3, float64_t a4)
{
  *(*(*(a1 + 32) + 8) + 24) = CGImageRetain(image);
  v5.f64[0] = a3;
  v5.f64[1] = a4;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(a1 + 64);
  result = vsubq_f64(*(a1 + 48), v5);
  *(v6 + 32) = result;
  *(v6 + 48) = v7;
  return result;
}

- (void)stickerImageWithConfiguration:(id)configuration options:(id)options completionHandler:(id)handler
{
  configurationCopy = configuration;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = CACurrentMediaTime();
  if (self->_async)
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__AVTStickerGenerator_stickerImageWithConfiguration_options_completionHandler___block_invoke;
    block[3] = &unk_1E7F48448;
    block[4] = self;
    v42 = configurationCopy;
    v43 = optionsCopy;
    v45 = v11;
    v44 = handlerCopy;
    dispatch_async(workQueue, block);

    v13 = v42;
  }

  else
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__2;
    v39 = __Block_byref_object_dispose__2;
    v40 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__2;
    v33 = __Block_byref_object_dispose__2;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x4010000000;
    v26 = &unk_1BB5146C7;
    v14 = *(MEMORY[0x1E695F058] + 16);
    v27 = *MEMORY[0x1E695F058];
    v28 = v14;
    v15 = self->_workQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __79__AVTStickerGenerator_stickerImageWithConfiguration_options_completionHandler___block_invoke_115;
    v16[3] = &unk_1E7F48498;
    v16[4] = self;
    v17 = configurationCopy;
    v22 = v11;
    v18 = optionsCopy;
    v19 = &v35;
    v20 = &v29;
    v21 = &v23;
    dispatch_sync(v15, v16);
    (*(handlerCopy + 2))(handlerCopy, v36[5], v30[5], v24[4], v24[5], v24[6], v24[7]);

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v29, 8);

    _Block_object_dispose(&v35, 8);
    v13 = v40;
  }
}

void __79__AVTStickerGenerator_stickerImageWithConfiguration_options_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  [v1 _stickerImageWithConfiguration:? options:? startTime:? completionHandler:?];
}

void __79__AVTStickerGenerator_stickerImageWithConfiguration_options_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = a2;
  v14 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__AVTStickerGenerator_stickerImageWithConfiguration_options_completionHandler___block_invoke_3;
  block[3] = &unk_1E7F48420;
  v15 = *(a1 + 32);
  v20 = v14;
  v21 = v15;
  v19 = v13;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v16 = v14;
  v17 = v13;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void *__79__AVTStickerGenerator_stickerImageWithConfiguration_options_completionHandler___block_invoke_115(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = MEMORY[0x1E69E9820];
  v4 = 3221225472;
  v5 = __79__AVTStickerGenerator_stickerImageWithConfiguration_options_completionHandler___block_invoke_2_116;
  v6 = &unk_1E7F48470;
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  return [v1 _stickerImageWithConfiguration:? options:? startTime:? completionHandler:?];
}

void __79__AVTStickerGenerator_stickerImageWithConfiguration_options_completionHandler___block_invoke_2_116(void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = a2;
  v14 = a3;
  v15 = *(a1[4] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v13;
  v21 = v13;

  v17 = *(a1[5] + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v14;
  v19 = v14;

  v20 = *(a1[6] + 8);
  v20[4] = a4;
  v20[5] = a5;
  v20[6] = a6;
  v20[7] = a7;
}

- (void)posterWithConfiguration:(id)configuration options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  configurationCopy = configuration;
  v11 = objc_alloc_init(AVTStickerGeneratorOptions);
  [optionsCopy size];
  [optionsCopy size];
  [(AVTStickerGeneratorOptions *)v11 setSize:?];
  [optionsCopy scaleFactor];
  [(AVTStickerGeneratorOptions *)v11 setScaleFactor:?];
  [optionsCopy growsForExtraTallContent];
  [(AVTStickerGeneratorOptions *)v11 setContentMode:?];
  [(AVTStickerGeneratorOptions *)v11 sizeMultiplier];
  v23 = v12;
  [(AVTStickerGeneratorOptions *)v11 scaleFactor];
  v22 = v13;
  [optionsCopy size];
  v21 = v14;
  [optionsCopy size];
  v15.f64[0] = v21;
  v15.f64[1] = v16;
  v11->_posterSizeInPixels = vcvtq_f64_u64(vcvtq_u64_f64(vmulq_n_f64(vmulq_n_f64(v15, v23), v22)));
  [optionsCopy minimumHorizontalMargin];
  v18 = v17;

  v19 = v22 * (v23 * v18);
  v11->_posterMinimumHorizontalMargin = v19;
  v24 = handlerCopy;
  v20 = handlerCopy;
  [AVTStickerGenerator stickerImageWithConfiguration:"stickerImageWithConfiguration:options:completionHandler:" options:? completionHandler:?];
}

+ (void)applyViewTransitionConfiguration:(os_log_t)log toView:scope:options:duration:avatar:context:completionHandler:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "context";
}

@end