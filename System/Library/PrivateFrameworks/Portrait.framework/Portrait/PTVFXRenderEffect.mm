@interface PTVFXRenderEffect
+ (uint64_t)transformVideoPositionToCropCoordinates:(uint64_t)coordinates effectRenderRequest:(uint64_t)request flipYAxis:(char)axis;
+ (uint64_t)transformVideoRectToCropCoordinates:(uint64_t)coordinates effectRenderRequest:(void *)request;
- (BOOL)computeSoftAlphaMask;
- (BOOL)updateWithRenderRequest:(id)request lastFrameTime:(double)time;
- (PTVFXRenderEffect)initWithMetalContext:(id)context colorSize:(id *)size colorConversion:(id)conversion prewarmOnly:(BOOL)only humanDetections:(id)detections sharedResources:(id)resources asyncInitQueue:(id)queue;
- (VFXTextureAttachmentDescriptor)finalColorDescriptor;
- (id)addNewEffectFromEvent:(id)event renderRequest:(id)request time:(double)time presenterOverlaySmall:(BOOL)small;
- (id)textureForAttachment:(id)attachment withDescriptor:(id)descriptor;
- (int)convertRGB:(id)b inRGBA:(id)a inAlphaMask:(id)mask outRGBA:(id)bA toLinear:(BOOL)linear transferFunction:(id)function;
- (int)initVFX:(BOOL)x sharedResources:(id)resources asyncInitQueue:(id)queue;
- (int)maxReactionEffectComplexity;
- (int)render:(id)render effectRGBA:(id)a effectDepth:(id)depth;
- (int)renderWithBackgroundDimming:(id)dimming effectRGBA:(id)a inCenteredDisparity:(id)disparity inSegmentation:(id)segmentation effectDepth:(id)depth disparityFiltered:(id)filtered focusDisparityModifiers:(id)modifiers renderRequest:(id)self0 debugType:(int64_t)self1;
- (unint64_t)loadActionForAttachment:(id)attachment;
- (void)dealloc;
- (void)removeAllActiveReactions;
- (void)removeEffectBindingWithKey:(id)key;
- (void)updateCameraProjection;
@end

@implementation PTVFXRenderEffect

- (PTVFXRenderEffect)initWithMetalContext:(id)context colorSize:(id *)size colorConversion:(id)conversion prewarmOnly:(BOOL)only humanDetections:(id)detections sharedResources:(id)resources asyncInitQueue:(id)queue
{
  contextCopy = context;
  conversionCopy = conversion;
  detectionsCopy = detections;
  resourcesCopy = resources;
  queueCopy = queue;
  v60.receiver = self;
  v60.super_class = PTVFXRenderEffect;
  v20 = [(PTVFXRenderEffect *)&v60 init];
  if (v20)
  {
    kdebug_trace();
    objc_storeStrong(v20 + 1, context);
    objc_storeStrong(v20 + 2, conversion);
    v21 = *&size->var0;
    *(v20 + 12) = size->var2;
    *(v20 + 5) = v21;
    v22 = *&size->var0;
    *(v20 + 15) = size->var2;
    *(v20 + 104) = v22;
    *(v20 + 43) = 81;
    *(v20 + 44) = 260;
    v20[68] = 0;
    v23 = [PTVFXSoftAlphaMask alloc];
    v24 = *(v20 + 1);
    v58 = *&size->var0;
    var2 = size->var2;
    v25 = [(PTVFXSoftAlphaMask *)v23 initWithMetalContext:v24 colorSize:&v58];
    v26 = *(v20 + 6);
    *(v20 + 6) = v25;

    *(v20 + 20) = [PTEffectUtil aspectRatio:size->var0, size->var1];
    objc_storeStrong(v20 + 4, detections);
    *(v20 + 45) = 0x461C40003DCCCCCDLL;
    v20[336] = 1;
    v20[244] = 0;
    v27 = [[PTEffectReactionBackgroundDimming alloc] initWithMetalContext:contextCopy];
    v28 = *(v20 + 3);
    *(v20 + 3) = v27;

    if (*(v20 + 3))
    {
      v30 = objc_opt_new();
      v31 = *(v20 + 32);
      *(v20 + 32) = v30;

      v32 = objc_opt_new();
      LODWORD(v58) = 0;
      v33 = v20 + 264;
      do
      {
        [v32 reset];
        [v32 setConstantValue:&v58 type:29 withName:@"kColorTransferFunction"];
        v34 = [contextCopy computePipelineStateFor:@"convertRGBAlpha" withConstants:v32];
        v35 = *&v33[8 * v58];
        *&v33[8 * v58] = v34;

        v37 = v58;
        if (!*&v33[8 * v58])
        {
          v47 = _PTLogSystem(v36);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            [(PTVFXRenderEffect *)v47 initWithMetalContext:v48 colorSize:v49 colorConversion:v50 prewarmOnly:v51 humanDetections:v52 sharedResources:v53 asyncInitQueue:v54];
          }

          goto LABEL_15;
        }

        LODWORD(v58) = v58 + 1;
      }

      while (v37 <= 7);
      if (only)
      {
        kdebug_trace();
      }

      else
      {
        v55 = [v20 initVFX:0 sharedResources:resourcesCopy asyncInitQueue:queueCopy];
        kdebug_trace();
        if (v55)
        {
          goto LABEL_15;
        }
      }

      v38 = v20;
    }

    else
    {
      v32 = _PTLogSystem(v29);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [(PTVFXRenderEffect *)v32 initWithMetalContext:v40 colorSize:v41 colorConversion:v42 prewarmOnly:v43 humanDetections:v44 sharedResources:v45 asyncInitQueue:v46];
      }

LABEL_15:
      v38 = 0;
    }

    v39 = detectionsCopy;
  }

  else
  {
    v38 = 0;
    v39 = detectionsCopy;
  }

  return v38;
}

- (void)dealloc
{
  [(PTVFXResources *)self->_vfxResources setInitializationCancelled:1];
  v3 = objc_msgSend_device(self->_metalContext);
  purgeMetalDevice(v3);
  v4 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__PTVFXRenderEffect_dealloc__block_invoke;
  block[3] = &unk_278522E90;
  v8 = v3;
  v5 = v3;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);

  v6.receiver = self;
  v6.super_class = PTVFXRenderEffect;
  [(PTVFXRenderEffect *)&v6 dealloc];
}

- (int)initVFX:(BOOL)x sharedResources:(id)resources asyncInitQueue:(id)queue
{
  resourcesCopy = resources;
  queueCopy = queue;
  gotLoadHelper_x8__OBJC_CLASS___VFXTextureAttachmentDescriptor(v10);
  v12 = objc_alloc_init(*(v11 + 320));
  colorAttachmentDescriptor = self->_colorAttachmentDescriptor;
  self->_colorAttachmentDescriptor = v12;

  vfxResources = [resourcesCopy vfxResources];
  vfxResources = self->_vfxResources;
  self->_vfxResources = vfxResources;

  if (!self->_vfxResources)
  {
    v16 = objc_opt_new();
    v17 = self->_vfxResources;
    self->_vfxResources = v16;

    [resourcesCopy setVfxResources:self->_vfxResources];
    if (!x)
    {
      [(PTVFXResources *)self->_vfxResources asyncVFXInit:queueCopy metalContext:self->_metalContext];
    }
  }

  v18 = objc_opt_new();
  effectBindings = self->_effectBindings;
  self->_effectBindings = v18;

  self->_cameraRotationDegrees = -1;
  v20 = *self->depthNearFar;
  v21 = vmuls_lane_f32(v20.f32[0], v20, 1);
  v22 = -(v21 + (v20.f32[1] * -0.5));
  v23 = v21 + (v20.f32[0] * -0.5);
  if (!self->reverseZ)
  {
    v23 = v22;
  }

  self->_emitZValue = v23 / ((v20.f32[0] - v20.f32[1]) * -0.5);

  return 0;
}

- (void)removeEffectBindingWithKey:(id)key
{
  effectBindings = self->_effectBindings;
  keyCopy = key;
  v10 = [(NSMutableDictionary *)effectBindings objectForKey:keyCopy];
  rootNode = [v10 rootNode];

  if (rootNode)
  {
    rootNode2 = [v10 rootNode];
    [rootNode2 removeFromParentNode];

    [v10 setRootNode:0];
  }

  rootAssetNode = [v10 rootAssetNode];

  if (rootAssetNode)
  {
    rootAssetNode2 = [v10 rootAssetNode];
    [rootAssetNode2 removeFromParent];

    [v10 setRootAssetNode:0];
  }

  [(NSMutableDictionary *)self->_effectBindings removeObjectForKey:keyCopy];
  [(NSMutableDictionary *)self->_activeReactions removeObjectForKey:keyCopy];
}

- (BOOL)computeSoftAlphaMask
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_effectBindings allValues];
  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        if (-[PTVFXRenderEffect useSoftAlphaMask:](self, "useSoftAlphaMask:", [*(*(&v10 + 1) + 8 * i) effectType]))
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (void)updateCameraProjection
{
  self->_dimmingFactor = 0.0;
  [(PTVFXRenderEffect *)self removeAllActiveReactions];
  width = self->_colorSizeROI.width;
  height = self->_colorSizeROI.height;
  if (width >= height)
  {
    goto LABEL_9;
  }

  cameraRotationDegrees = self->_cameraRotationDegrees;
  if (cameraRotationDegrees > 179)
  {
    if (cameraRotationDegrees != 180 && cameraRotationDegrees != 270)
    {
      goto LABEL_9;
    }

LABEL_8:
    v6 = width / height;
    v7 = 24.0 / v6;
    goto LABEL_12;
  }

  if (!cameraRotationDegrees || cameraRotationDegrees == 90)
  {
    goto LABEL_8;
  }

LABEL_9:
  v7 = 28.8;
  if (self->_aspectRatio != 3)
  {
    v7 = 24.0;
  }

  v6 = width / height;
LABEL_12:
  v8 = v7 * 0.5 / 50.0;
  v9 = atanf(v8);
  *&v10 = v9 + v9;
  *&v11 = v6;
  [PTUtil perspectiveProjectionFieldOfView:self->reverseZ aspectRatio:v10 depthNearFar:v11 reverseZ:*self->depthNearFar];
  v16 = self->_cameraRotationDegrees;
  switch(v16)
  {
    case 0x10Eu:
      v19 = 0;
      v25 = xmmword_2244A5340;
      v26 = xmmword_2244A5350;
      v27 = xmmword_2244A5360;
      v28 = xmmword_2244A5370;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      do
      {
        *(&v29 + v19) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*(&v25 + v19))), v13, *(&v25 + v19), 1), v14, *(&v25 + v19), 2), v15, *(&v25 + v19), 3);
        v19 += 16;
      }

      while (v19 != 64);
      break;
    case 0xB4u:
      v18 = 0;
      v25 = xmmword_2244A5380;
      v26 = xmmword_2244A5340;
      v27 = xmmword_2244A5360;
      v28 = xmmword_2244A5370;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      do
      {
        *(&v29 + v18) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*(&v25 + v18))), v13, *(&v25 + v18), 1), v14, *(&v25 + v18), 2), v15, *(&v25 + v18), 3);
        v18 += 16;
      }

      while (v18 != 64);
      break;
    case 0x5Au:
      v17 = 0;
      v25 = xmmword_2244A5390;
      v26 = xmmword_2244A5380;
      v27 = xmmword_2244A5360;
      v28 = xmmword_2244A5370;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      do
      {
        *(&v29 + v17) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*(&v25 + v17))), v13, *(&v25 + v17), 1), v14, *(&v25 + v17), 2), v15, *(&v25 + v17), 3);
        v17 += 16;
      }

      while (v17 != 64);
      break;
    default:
      [(PTVFXResources *)self->_vfxResources camera:*&v15];
      goto LABEL_25;
  }

  [(PTVFXResources *)self->_vfxResources camera:v32];
  v20 = LABEL_25:;
  [v20 setProjectionTransform:{*v24.i64, *v23.i64, *v22.i64, *v21.i64}];

  v33.columns[1] = v23;
  v33.columns[0] = v24;
  v33.columns[3] = v21;
  v33.columns[2] = v22;
  *self->_anon_b0 = __invert_f4(v33);
}

- (id)addNewEffectFromEvent:(id)event renderRequest:(id)request time:(double)time presenterOverlaySmall:(BOOL)small
{
  v175 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  requestCopy = request;
  smallCopy = small;
  v11 = objc_opt_new();
  [v11 setStartTime:time];
  effectType = [eventCopy effectType];
  reactionTemplates = [(PTVFXResources *)self->_vfxResources reactionTemplates];
  v14 = effectType % [reactionTemplates count];

  [v11 setEffectType:v14];
  [v11 setUiTriggeredReaction:{objc_msgSend(eventCopy, "uiTriggeredReaction")}];
  activeReactions = self->_activeReactions;
  v143 = eventCopy;
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(eventCopy, "triggerID")}];
  v134 = v11;
  [(NSMutableDictionary *)activeReactions setObject:v11 forKeyedSubscript:v16];

  v17 = [[PTVFXRenderEffectBinding alloc] initWithHumanDetections:self->_humanDetections];
  gotLoadHelper_x8__OBJC_CLASS___VFXNode(v18);
  v20 = objc_alloc_init(*(v19 + 296));
  [(PTVFXRenderEffectBinding *)v17 setRootNode:v20];

  gotLoadHelper_x8__OBJC_CLASS___VFXAssetNode(v21);
  v23 = objc_alloc_init(*(v22 + 280));
  [(PTVFXRenderEffectBinding *)v17 setRootAssetNode:v23];

  world = [(PTVFXResources *)self->_vfxResources world];
  rootNode = [world rootNode];
  rootNode2 = [(PTVFXRenderEffectBinding *)v17 rootNode];
  [rootNode addChildNode:rootNode2];

  world2 = [(PTVFXResources *)self->_vfxResources world];
  assetRegistry = [world2 assetRegistry];
  rootNode3 = [assetRegistry rootNode];
  rootAssetNode = [(PTVFXRenderEffectBinding *)v17 rootAssetNode];
  [rootNode3 addChildNode:rootAssetNode];

  reactionTemplates2 = [(PTVFXResources *)self->_vfxResources reactionTemplates];
  v147 = v14;
  v32 = [reactionTemplates2 objectAtIndexedSubscript:v14];
  v33 = [v32 copy];

  world3 = [(PTVFXResources *)self->_vfxResources world];
  rootNode4 = [(PTVFXRenderEffectBinding *)v17 rootNode];
  rootAssetNode2 = [(PTVFXRenderEffectBinding *)v17 rootAssetNode];
  v133 = v33;
  [world3 mergeWorld:v33 parentNode:rootNode4 parentAssetNode:rootAssetNode2];

  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v148 = v17;
  rootAssetNode3 = [(PTVFXRenderEffectBinding *)v17 rootAssetNode];
  childNodes = [rootAssetNode3 childNodes];

  v39 = [childNodes countByEnumeratingWithState:&v162 objects:v174 count:16];
  if (v39)
  {
    v41 = v39;
    v42 = *v163;
    gotLoadHelper_x27__OBJC_CLASS___VFXClientTextureAsset(v40);
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v163 != v42)
        {
          objc_enumerationMutation(childNodes);
        }

        v44 = *(*(&v162 + 1) + 8 * i);
        asset = [v44 asset];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          asset2 = [v44 asset];
          clientIdentifier = [asset2 clientIdentifier];
          v49 = [clientIdentifier isEqualToString:@"texAlpha"];

          if (v49)
          {
            v50 = [(PTVFXSoftAlphaMask *)self->_softAlphaMask lazyInstantiateAlphaMaskForRenderRequest:requestCopy];
            [asset2 setTexture:v50];
          }
        }
      }

      v41 = [childNodes countByEnumeratingWithState:&v162 objects:v174 count:16];
    }

    while (v41);
  }

  v51 = v148;
  v52 = [(PTVFXRenderEffectBinding *)v148 setEffectType:v147];
  cameraRotationDegrees = self->_cameraRotationDegrees;
  if (cameraRotationDegrees <= 179)
  {
    if (cameraRotationDegrees)
    {
      if (cameraRotationDegrees != 90)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

LABEL_19:
    width = self->_colorSize.width;
    height = self->_colorSize.height;
    if (width <= height)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (cameraRotationDegrees == 180)
  {
    goto LABEL_19;
  }

  if (cameraRotationDegrees == 270)
  {
LABEL_21:
    width = self->_colorSize.width;
    height = self->_colorSize.height;
    if (width >= height)
    {
      goto LABEL_23;
    }

LABEL_22:
    v57 = 1;
    goto LABEL_24;
  }

LABEL_18:
  width = self->_colorSize.width;
  height = self->_colorSize.height;
LABEL_23:
  v57 = width == height;
LABEL_24:
  aspectRatio = self->_aspectRatio;
  if (v147 > 3)
  {
    if (v147 > 5)
    {
      if (v147 != 7)
      {
        if (v147 != 6)
        {
          goto LABEL_41;
        }

        if (v57)
        {
          LODWORD(v53) = 1084647014;
LABEL_49:
          [(PTVFXRenderEffectBinding *)v148 setDuration:v53];
          goto LABEL_50;
        }

        _ZF = aspectRatio == 1;
        LODWORD(v53) = 1087163597;
        v69 = 6.0;
LABEL_47:
        if (!_ZF)
        {
          *&v53 = v69;
        }

        goto LABEL_49;
      }
    }

    else if (v147 != 4)
    {
      v59 = v148;
      v60 = 0;
LABEL_38:
      [(PTVFXRenderEffectBinding *)v59 setUseBackgroundDimming:v60];
      goto LABEL_50;
    }

    v59 = v148;
    v60 = 1;
    goto LABEL_38;
  }

  if ((v147 - 1) >= 2)
  {
    if (v147)
    {
      if (v147 == 3)
      {
        if (v57)
        {
          LODWORD(v53) = 1082340147;
        }

        else
        {
          LODWORD(v53) = dword_2244A52F8[aspectRatio == 1];
        }

        goto LABEL_49;
      }

LABEL_41:
      v61 = _PTLogSystem(v52);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        [(PTVFXRenderEffect *)v147 addNewEffectFromEvent:v61 renderRequest:v62 time:v63 presenterOverlaySmall:v64, v65, v66, v67];
      }

      goto LABEL_50;
    }

    if (v57)
    {
      LODWORD(v53) = 1083388723;
      goto LABEL_49;
    }

    _ZF = aspectRatio == 1;
    LODWORD(v53) = 1084437299;
    v69 = 5.0;
    goto LABEL_47;
  }

LABEL_50:
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  rootNode5 = [(PTVFXRenderEffectBinding *)v148 rootNode];
  childNodes2 = [rootNode5 childNodes];

  obj = childNodes2;
  v140 = [childNodes2 countByEnumeratingWithState:&v158 objects:v173 count:16];
  if (!v140)
  {
    goto LABEL_153;
  }

  v135 = v147 - 1;
  v139 = *v159;
  __asm { FMOV            V0.2S, #1.0 }

  v137 = _D0;
  v76 = vneg_f32(0x80000000800000);
  do
  {
    for (j = 0; j != v140; ++j)
    {
      if (*v159 != v139)
      {
        objc_enumerationMutation(obj);
      }

      v78 = *(*(&v158 + 1) + 8 * j);
      behaviorGraph = [v78 behaviorGraph];
      if (behaviorGraph)
      {
        v142 = j;
        name = [v78 name];
        v154 = 0u;
        v155 = 0u;
        v156 = 0u;
        v157 = 0u;
        v141 = behaviorGraph;
        bindings = [behaviorGraph bindings];
        v82 = [bindings countByEnumeratingWithState:&v154 objects:v172 count:16];
        if (!v82)
        {
          goto LABEL_150;
        }

        v83 = v82;
        v84 = *v155;
        while (1)
        {
          v85 = 0;
          do
          {
            if (*v155 != v84)
            {
              objc_enumerationMutation(bindings);
            }

            v86 = *(*(&v154 + 1) + 8 * v85);
            name2 = [v86 name];
            if ([name2 isEqualToString:@"position"] && objc_msgSend(name, "isEqualToString:", @"Emitter"))
            {
              if (v147 == 6)
              {
                [(PTVFXRenderEffectBinding *)v51 setPositionBinding:v86];
              }
            }

            else
            {
              if ([name2 isEqualToString:@"headPosition"])
              {
                [(PTVFXRenderEffectBinding *)v51 setHeadPositionBinding:v86];
                goto LABEL_104;
              }

              if ([name2 isEqualToString:@"seed"])
              {
                *buf = 0;
                v88 = kVFXRandomizationSeed;
                if (kVFXRandomizationSeed == -1)
                {
                  v88 = mach_absolute_time();
                }

                *buf = v88;
                v89 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:4];
                [PTVFXRenderEffectBinding setRawValue:v89 onBinding:v86];

                goto LABEL_103;
              }

              if ([name2 isEqualToString:@"orientation"])
              {
                v90 = self->_cameraRotationDegrees;
                *buf = v90;
                if (self->_aspectRatio == 3)
                {
                  goto LABEL_73;
                }

                if (self->_colorSizeROI.width < self->_colorSizeROI.height)
                {
                  if (v90 > 179)
                  {
                    if (v90 == 270)
                    {
                      goto LABEL_73;
                    }

                    if (v90 != 180)
                    {
                      goto LABEL_100;
                    }
                  }

                  else if (v90)
                  {
                    if (v90 != 90)
                    {
                      goto LABEL_100;
                    }

LABEL_73:
                    *buf = 0;
                    goto LABEL_100;
                  }

                  *buf = 90;
                }

LABEL_100:
                v105 = MEMORY[0x277CBEA90];
                v106 = buf;
                v107 = 4;
LABEL_101:
                opacityValue2 = [v105 dataWithBytes:v106 length:v107];
                goto LABEL_102;
              }

              if ([name2 isEqualToString:@"aspectRatio"])
              {
                if ((self->_aspectRatio & 0xFFFFFFFFFFFFFFFELL) == 2)
                {
                  v91 = 4;
                }

                else
                {
                  v91 = 9;
                }

                *buf = v91;
                v92 = MEMORY[0x277CBEA90];
                v93 = buf;
                v94 = 4;
                goto LABEL_79;
              }

              if ([name2 isEqualToString:@"opacity"])
              {
                opacityValue = [(PTVFXRenderEffectBinding *)v51 opacityValue];

                if (!opacityValue)
                {
                  *buf = 1065353216;
                  v97 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:4];
                  [(PTVFXRenderEffectBinding *)v51 setOpacityValue:v97];

                  v98 = objc_opt_new();
                  [(PTVFXRenderEffectBinding *)v51 setOpacityBindings:v98];
                }

                opacityBindings = [(PTVFXRenderEffectBinding *)v51 opacityBindings];
                [opacityBindings addObject:v86];

                opacityValue2 = [(PTVFXRenderEffectBinding *)v51 opacityValue];
LABEL_102:
                v108 = opacityValue2;
                [PTVFXRenderEffectBinding setRawValue:opacityValue2 onBinding:v86];

LABEL_103:
                v51 = v148;
                goto LABEL_104;
              }

              if ([name2 isEqualToString:@"duration"])
              {
                durationBinding = [(PTVFXRenderEffectBinding *)v51 durationBinding];

                if (durationBinding)
                {
                  v103 = _PTLogSystem(v102);
                  if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
                  {
                    [PTVFXRenderEffect addNewEffectFromEvent:v153 renderRequest:v103 time:? presenterOverlaySmall:?];
                  }
                }

                rawValue = [v86 rawValue];
                v104 = [rawValue length];
                if (v104 == 4)
                {
                  [(PTVFXRenderEffectBinding *)v148 setDurationBinding:v86];
                }

                else
                {
                  v110 = _PTLogSystem(v104);
                  if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                  {
                    [PTVFXRenderEffect addNewEffectFromEvent:v171 renderRequest:rawValue time:? presenterOverlaySmall:?];
                  }
                }

                goto LABEL_80;
              }

              if ([name2 isEqualToString:@"gestureTrigger"])
              {
                v109 = [v143 uiTriggeredReaction] ^ 1;
                goto LABEL_108;
              }

              if ([name2 isEqualToString:@"backgroundDimming"])
              {
                rawValue2 = [v86 rawValue];
                backgroundDimmingBinding = [(PTVFXRenderEffectBinding *)v51 backgroundDimmingBinding];

                if (backgroundDimmingBinding)
                {
                  v113 = _PTLogSystem(v112);
                  if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
                  {
                    [PTVFXRenderEffect addNewEffectFromEvent:v151 renderRequest:v113 time:? presenterOverlaySmall:?];
                  }

                  v51 = v148;
                }

                v114 = [rawValue2 length];
                if (v114 == 4)
                {
                  [(PTVFXRenderEffectBinding *)v51 setBackgroundDimmingBinding:v86];
                }

                else
                {
                  v115 = _PTLogSystem(v114);
                  if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
                  {
                    [PTVFXRenderEffect addNewEffectFromEvent:v170 renderRequest:rawValue2 time:? presenterOverlaySmall:?];
                  }
                }
              }

              else
              {
                if ([name2 isEqualToString:@"bilbyFloating"])
                {
                  v92 = MEMORY[0x277CBEA90];
                  v93 = &smallCopy;
                  goto LABEL_109;
                }

                if ([name2 isEqualToString:@"viewportScale"])
                {
                  v116 = self->_colorSizeROI.width;
                  v117 = self->_colorSizeROI.height;
                  HIDWORD(v118) = HIDWORD(v137);
                  LODWORD(v119) = v137;
                  if (v116 > v117)
                  {
                    *&v118 = v116 / v117;
                    v120 = v118;
                  }

                  else
                  {
                    *(&v119 + 1) = v117 / v116;
                    v120 = v119;
                  }

                  *buf = v120;
                  v92 = MEMORY[0x277CBEA90];
                  v93 = buf;
                  v94 = 8;
                  goto LABEL_79;
                }

                v51 = v148;
                if ([name2 isEqualToString:@"left"] && objc_msgSend(name, "isEqualToString:", @"Emitter"))
                {
                  if (v135 <= 1)
                  {
                    v109 = [v143 orientation] == 0;
                    goto LABEL_108;
                  }
                }

                else if ([name2 isEqualToString:@"up"] && objc_msgSend(name, "isEqualToString:", @"Emitter"))
                {
                  if (v135 <= 1)
                  {
                    v109 = v147 == 1;
LABEL_108:
                    buf[0] = v109;
                    v92 = MEMORY[0x277CBEA90];
                    v93 = buf;
LABEL_109:
                    v94 = 1;
LABEL_79:
                    rawValue = [v92 dataWithBytes:v93 length:v94];
                    [PTVFXRenderEffectBinding setRawValue:rawValue onBinding:v86];
LABEL_80:

                    v51 = v148;
                  }
                }

                else if ((![name2 isEqualToString:@"rate"] || (objc_msgSend(name, "isEqualToString:", @"Emitter") & 1) == 0) && objc_msgSend(name2, "isEqualToString:", @"boundsMin"))
                {
                  v149 = v76;
                  v121 = 0.0;
                  v122 = 1;
                  do
                  {
                    v144 = v122;
                    v123 = 1;
                    v124 = 0.0;
                    v146 = v121;
                    do
                    {
                      v125 = v123;
                      v126 = COERCE_DOUBLE(__PAIR64__(LODWORD(v124), LODWORD(v146)));
                      LODWORD(v124) = -1.0;
                      v127 = [PTEffectUtil screenSpaceToCameraSpace:v126 zValue:v124 inverseProjection:*self->_anon_b0, *&self->_anon_b0[16], *&self->_anon_b0[32], *&self->_anon_b0[48]];
                      v123 = 0;
                      HIDWORD(v124) = v149.i32[1];
                      v149 = vminnm_f32(v128, v149);
                      LODWORD(v124) = 1.0;
                    }

                    while ((v125 & 1) != 0);
                    v122 = 0;
                    v121 = 1.0;
                  }

                  while ((v144 & 1) != 0);
                  v129 = _PTLogSystem(v127);
                  if (os_log_type_enabled(v129, OS_LOG_TYPE_INFO))
                  {
                    *buf = 134218240;
                    *&buf[4] = v149.f32[0];
                    v168 = 2048;
                    v169 = v149.f32[1];
                    _os_log_impl(&dword_2243FB000, v129, OS_LOG_TYPE_INFO, "boundsMin %f %f ", buf, 0x16u);
                  }

                  v105 = MEMORY[0x277CBEA90];
                  v106 = &v149;
                  v107 = 8;
                  goto LABEL_101;
                }
              }
            }

LABEL_104:

            ++v85;
          }

          while (v85 != v83);
          v130 = [bindings countByEnumeratingWithState:&v154 objects:v172 count:16];
          v83 = v130;
          if (!v130)
          {
LABEL_150:

            behaviorGraph = v141;
            j = v142;
            break;
          }
        }
      }
    }

    v140 = [obj countByEnumeratingWithState:&v158 objects:v173 count:16];
  }

  while (v140);
LABEL_153:

  [(PTVFXRenderEffectBinding *)v51 setUseBackgroundDimming:[(PTVFXRenderEffectBinding *)v51 useBackgroundDimming]];
  [(PTVFXRenderEffectBinding *)v51 setCreationTimeSeconds:time];
  [(PTVFXRenderEffectBinding *)v51 setInverseCameraProjection:*self->_anon_b0, *&self->_anon_b0[16], *&self->_anon_b0[32], *&self->_anon_b0[48]];
  *&v131 = self->_emitZValue;
  [(PTVFXRenderEffectBinding *)v51 setEmitZValue:v131];

  return v51;
}

- (int)maxReactionEffectComplexity
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  keyEnumerator = [(NSMutableDictionary *)self->_activeReactions keyEnumerator];
  v4 = [keyEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_19;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v14;
  do
  {
    v8 = 0;
    do
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(keyEnumerator);
      }

      v9 = [(NSMutableDictionary *)self->_activeReactions objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v8)];
      effectType = [v9 effectType];
      if (effectType > 7)
      {
        goto LABEL_14;
      }

      if (((1 << effectType) & 0xB1) != 0)
      {
        v6 = 100;
        goto LABEL_9;
      }

      if (effectType == 3)
      {
        if (v6 <= 50)
        {
          v6 = 50;
        }
      }

      else
      {
LABEL_14:
        if (v6 <= 25)
        {
          v6 = 25;
        }
      }

LABEL_9:

      ++v8;
    }

    while (v5 != v8);
    v11 = [keyEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    v5 = v11;
  }

  while (v11);
LABEL_19:

  return v6;
}

- (void)removeAllActiveReactions
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allKeys = [(NSMutableDictionary *)self->_effectBindings allKeys];
  v4 = [allKeys copy];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(PTVFXRenderEffect *)self removeEffectBindingWithKey:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)updateWithRenderRequest:(id)request lastFrameTime:(double)time
{
  v131 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  [requestCopy frameTimeSeconds];
  v8 = v7;
  v9 = [requestCopy presenterOverlayMode] == 3 || objc_msgSend(requestCopy, "presenterOverlayMode") == 4;
  v97 = v9;
  reactionTemplates = [(PTVFXResources *)self->_vfxResources reactionTemplates];
  v11 = [reactionTemplates count];

  v104 = requestCopy;
  if ([(NSMutableDictionary *)self->_activeReactions count])
  {
    v12 = 0;
  }

  else
  {
    reactions = [requestCopy reactions];
    v12 = [reactions count] == 0;
  }

  v14 = 0;
  if (!v11 || v12)
  {
    goto LABEL_101;
  }

  v15 = v104;
  [v104 inReactionColorSize];
  if (v16 != self->_colorSize.width || ([v104 inReactionColorSize], v17 != self->_colorSize.height))
  {
    [v104 inReactionColorSize];
    if (v18 != 0.0)
    {
      [v104 inReactionColorSize];
      if (v19 != 0.0)
      {
        [v104 inReactionColorSize];
        v21 = v20;
        [v104 inReactionColorSize];
        self->_colorSize.width = v21;
        self->_colorSize.height = v22;
        v15 = v104;
        self->_colorSize.depth = 0;
      }
    }
  }

  width = self->_colorSize.width;
  [v15 outColorROI];
  v25 = v15;
  v26 = (v24 * width);
  height = self->_colorSize.height;
  [v25 outColorROI];
  v29 = (v28 * height);
  if (self->_colorSizeROI.width == v26 && self->_colorSizeROI.height == v29)
  {
    v30 = 0;
  }

  else
  {
    self->_colorSizeROI.width = v26;
    self->_colorSizeROI.height = v29;
    v30 = 1;
    self->_colorSizeROI.depth = 1;
    self->_aspectRatio = [PTEffectUtil aspectRatio:v26, v29];
  }

  v31 = v104;
  if (v104)
  {
    objc_msgSend_transform(v104);
  }

  else
  {
    memset(v125, 0, sizeof(v125));
  }

  v32 = [PTUtil getRotationDegreesFromAffineTransform:v125];
  if (v32 == self->_cameraRotationDegrees)
  {
    if (!v30)
    {
      goto LABEL_26;
    }
  }

  else
  {
    self->_cameraRotationDegrees = v32;
  }

  [(PTVFXRenderEffect *)self updateCameraProjection];
LABEL_26:
  v33 = v8 - time;
  v34 = v33 > 0.25 && !self->_simulationWasSkippedForPreviousFrame;
  if (v33 <= 0.0166666667)
  {
    v33 = 0.016667;
  }

  if (v33 > 0.25)
  {
    v33 = 0.25;
  }

  v35 = v33;
  v96 = v34;
  kdebug_trace();
  v36 = objc_alloc(MEMORY[0x277CBEB18]);
  allKeys = [(NSMutableDictionary *)self->_effectBindings allKeys];
  v100 = [v36 initWithArray:allKeys];

  self->_emitNewReaction = 0;
  self->_dimmingFactor = 0.0;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  obj = [v104 reactions];
  v103 = [obj countByEnumeratingWithState:&v121 objects:v130 count:16];
  if (v103)
  {
    v99 = 0;
    v101 = 0;
    v102 = *v122;
    do
    {
      for (i = 0; i != v103; ++i)
      {
        if (*v122 != v102)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v121 + 1) + 8 * i);
        v40 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v39, "triggerID")}];
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        v120 = 0u;
        allValues = [(NSMutableDictionary *)self->_effectBindings allValues];
        v42 = [allValues countByEnumeratingWithState:&v117 objects:v129 count:16];
        if (v42)
        {
          v43 = *v118;
          while (2)
          {
            for (j = 0; j != v42; j = j + 1)
            {
              if (*v118 != v43)
              {
                objc_enumerationMutation(allValues);
              }

              v45 = *(*(&v117 + 1) + 8 * j);
              effectType = [v45 effectType];
              if (effectType == [v39 effectType])
              {
                v42 = v45;
                goto LABEL_48;
              }
            }

            v42 = [allValues countByEnumeratingWithState:&v117 objects:v129 count:16];
            if (v42)
            {
              continue;
            }

            break;
          }

LABEL_48:
          v31 = v104;
        }

        [v39 startTimeSeconds];
        v48 = v47;
        [v31 frameTimeSeconds];
        if (!v42 && v48 != v49)
        {
          if (([v39 uiTriggeredReaction] & 1) == 0)
          {
            goto LABEL_75;
          }

LABEL_54:
          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          allValues2 = [(NSMutableDictionary *)self->_effectBindings allValues];
          v51 = [allValues2 countByEnumeratingWithState:&v113 objects:v128 count:16];
          if (v51)
          {
            v52 = v51;
            v53 = *v114;
            do
            {
              for (k = 0; k != v52; ++k)
              {
                if (*v114 != v53)
                {
                  objc_enumerationMutation(allValues2);
                }

                [*(*(&v113 + 1) + 8 * k) forceFadeOut:v8];
              }

              v52 = [allValues2 countByEnumeratingWithState:&v113 objects:v128 count:16];
            }

            while (v52);
          }

          ++v101;
          effectType2 = [v39 effectType];
          v31 = v104;
          v56 = [(PTVFXRenderEffect *)self addNewEffectFromEvent:v39 renderRequest:v104 time:v97 presenterOverlaySmall:v8];
          v42 = v56;
          v58 = effectType2 << 32 != 0x100000000 && effectType2 << 32 != 0x200000000 && v97;
          [v56 setUseCircularGradient:v58];
          [(NSMutableDictionary *)self->_effectBindings setObject:v42 forKeyedSubscript:v40];
          self->_emitNewReaction |= v42 != 0;
          goto LABEL_68;
        }

        if (!v42)
        {
          goto LABEL_54;
        }

LABEL_68:
        [v31 inReactionVideoRect];
        [v42 updateWithEvent:v39 renderRequest:v31 videoRect:? time:?];
        if ([v42 active])
        {
          ++v99;
        }

        else
        {
          rootNode = [v42 rootNode];

          if (rootNode)
          {
            rootNode2 = [v42 rootNode];
            [rootNode2 removeFromParentNode];

            [v42 setRootNode:0];
            rootAssetNode = [v42 rootAssetNode];
            [rootAssetNode removeFromParent];

            [v42 setRootAssetNode:0];
            [(NSMutableDictionary *)self->_activeReactions removeObjectForKey:v40];
          }
        }

        [v100 removeObject:v40];
        dimmingFactor = self->_dimmingFactor;
        [v42 dimmingFactor];
        if (dimmingFactor >= v63)
        {
          v63 = dimmingFactor;
        }

        self->_dimmingFactor = v63;

LABEL_75:
      }

      v103 = [obj countByEnumeratingWithState:&v121 objects:v130 count:16];
    }

    while (v103);
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  allValues3 = [(NSMutableDictionary *)self->_effectBindings allValues];
  v65 = [allValues3 countByEnumeratingWithState:&v109 objects:v127 count:16];
  if (v65)
  {
    v67 = v65;
    v68 = *v110;
    do
    {
      for (m = 0; m != v67; ++m)
      {
        if (*v110 != v68)
        {
          objc_enumerationMutation(allValues3);
        }

        *&v66 = self->_dimmingFactor;
        [*(*(&v109 + 1) + 8 * m) updateBackgroundDimming:v66];
      }

      v67 = [allValues3 countByEnumeratingWithState:&v109 objects:v127 count:16];
    }

    while (v67);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v70 = [v100 copy];
  v71 = [v70 countByEnumeratingWithState:&v105 objects:v126 count:16];
  if (v71)
  {
    v72 = 0;
    v73 = *v106;
    do
    {
      for (n = 0; n != v71; ++n)
      {
        if (*v106 != v73)
        {
          objc_enumerationMutation(v70);
        }

        v75 = *(*(&v105 + 1) + 8 * n);
        v76 = [(NSMutableDictionary *)self->_effectBindings objectForKey:v75];
        [v104 inReactionVideoRect];
        [v76 updateWithEvent:0 renderRequest:v104 videoRect:? time:?];
        v77 = self->_dimmingFactor;
        [v76 dimmingFactor];
        if (v77 >= v78)
        {
          v78 = v77;
        }

        self->_dimmingFactor = v78;
        if (([v76 active] & 1) == 0)
        {
          [(PTVFXRenderEffect *)self removeEffectBindingWithKey:v75];
          ++v72;
        }
      }

      v71 = [v70 countByEnumeratingWithState:&v105 objects:v126 count:16];
    }

    while (v71);
  }

  if (v96)
  {
    vfxRenderer = _PTLogSystem(v79);
    if (os_log_type_enabled(vfxRenderer, OS_LOG_TYPE_ERROR))
    {
      [(PTVFXRenderEffect *)vfxRenderer updateWithRenderRequest:v82 lastFrameTime:v83, v84, v85, v86, v87, v88, v35];
    }

    v89 = 1;
  }

  else
  {
    Helper_x8__OBJC_CLASS___VFXTransaction = gotLoadHelper_x8__OBJC_CLASS___VFXTransaction(v80);
    [*(v91 + 344) flush];
    vfxRenderer = [(PTVFXResources *)self->_vfxResources vfxRenderer];
    [vfxRenderer updateAtTime:v8];
    v89 = 0;
  }

  self->_simulationWasSkippedForPreviousFrame = v89;
  v92 = self->_dimmingFactor * -0.95 + 1.0;
  *v125 = v92;
  v93 = [MEMORY[0x277CBEA90] dataWithBytes:v125 length:4];
  lightBinding = [(PTVFXResources *)self->_vfxResources lightBinding];
  [PTVFXRenderEffectBinding setRawValue:v93 onBinding:lightBinding];

  kdebug_trace();
  v14 = [(NSMutableDictionary *)self->_activeReactions count]!= 0;

LABEL_101:
  return v14;
}

- (int)render:(id)render effectRGBA:(id)a effectDepth:(id)depth
{
  renderCopy = render;
  aCopy = a;
  depthCopy = depth;
  v12 = depthCopy;
  if (aCopy && depthCopy)
  {
    gotLoadHelper_x8__OBJC_CLASS___VFXRenderOptions(v11);
    v14 = objc_alloc_init(*(v13 + 304));
    [v14 setCommandBuffer:renderCopy];
    [v14 setDepthPixelFormat:self->depthOutputPixelFormat];
    objc_storeStrong(&self->_colorTexture, a);
    objc_storeStrong(&self->_depthTexture, depth);
    vfxRenderer = [(PTVFXResources *)self->_vfxResources vfxRenderer];
    [vfxRenderer renderWithTextureAttachmentProvider:self options:v14];

    colorTexture = self->_colorTexture;
    self->_colorTexture = 0;

    depthTexture = self->_depthTexture;
    self->_depthTexture = 0;

    v18 = 0;
  }

  else
  {
    v19 = _PTLogSystem(depthCopy);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [PTVFXRenderEffect render:v19 effectRGBA:v20 effectDepth:v21];
    }

    v18 = -10;
  }

  return v18;
}

- (VFXTextureAttachmentDescriptor)finalColorDescriptor
{
  [(VFXTextureAttachmentDescriptor *)self->_colorAttachmentDescriptor setWidth:[(MTLTexture *)self->_colorTexture width]];
  [(VFXTextureAttachmentDescriptor *)self->_colorAttachmentDescriptor setHeight:[(MTLTexture *)self->_colorTexture height]];
  [(VFXTextureAttachmentDescriptor *)self->_colorAttachmentDescriptor setPixelFormat:[(MTLTexture *)self->_colorTexture pixelFormat]];
  [(VFXTextureAttachmentDescriptor *)self->_colorAttachmentDescriptor setArrayLength:[(MTLTexture *)self->_colorTexture arrayLength]];
  colorAttachmentDescriptor = self->_colorAttachmentDescriptor;

  return colorAttachmentDescriptor;
}

- (unint64_t)loadActionForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  Helper_x8__VFXRenderGraphFinalColorAttachment = gotLoadHelper_x8__VFXRenderGraphFinalColorAttachment(v4);
  if ([v7 isEqualToString:{**(v6 + 376), Helper_x8__VFXRenderGraphFinalColorAttachment}])
  {
    v9 = 1;
  }

  else
  {
    Helper_x8__VFXRenderGraphMainDepthAttachment = gotLoadHelper_x8__VFXRenderGraphMainDepthAttachment(v8);
    v9 = [attachmentCopy isEqualToString:{**(v11 + 384), Helper_x8__VFXRenderGraphMainDepthAttachment}];
  }

  return v9;
}

- (id)textureForAttachment:(id)attachment withDescriptor:(id)descriptor
{
  attachmentCopy = attachment;
  Helper_x8__VFXRenderGraphFinalColorAttachment = gotLoadHelper_x8__VFXRenderGraphFinalColorAttachment(v6);
  if ([v9 isEqualToString:{**(v8 + 376), Helper_x8__VFXRenderGraphFinalColorAttachment}])
  {
    v11 = 136;
LABEL_5:
    v14 = *(&self->super.isa + v11);
    goto LABEL_7;
  }

  Helper_x8__VFXRenderGraphMainDepthAttachment = gotLoadHelper_x8__VFXRenderGraphMainDepthAttachment(v10);
  if ([attachmentCopy isEqualToString:{**(v13 + 384), Helper_x8__VFXRenderGraphMainDepthAttachment}])
  {
    v11 = 144;
    goto LABEL_5;
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (int)renderWithBackgroundDimming:(id)dimming effectRGBA:(id)a inCenteredDisparity:(id)disparity inSegmentation:(id)segmentation effectDepth:(id)depth disparityFiltered:(id)filtered focusDisparityModifiers:(id)modifiers renderRequest:(id)self0 debugType:(int64_t)self1
{
  v94 = *MEMORY[0x277D85DE8];
  dimmingCopy = dimming;
  aCopy = a;
  disparityCopy = disparity;
  segmentationCopy = segmentation;
  depthCopy = depth;
  filteredCopy = filtered;
  modifiersCopy = modifiers;
  requestCopy = request;
  outColorBuffer = [requestCopy outColorBuffer];
  inBilbyAlphaMaskTexture = [requestCopy inBilbyAlphaMaskTexture];
  [requestCopy inReactionVideoRect];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [requestCopy outColorROI];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  if ([(PTVFXRenderEffect *)self computeSoftAlphaMask])
  {
    softAlphaMask = self->_softAlphaMask;
    if (segmentationCopy)
    {
      [(PTVFXSoftAlphaMask *)softAlphaMask updateSoftAlphaMask:dimmingCopy inSegmentation:segmentationCopy effectRenderRequest:requestCopy];
    }

    else
    {
      [(PTVFXSoftAlphaMask *)softAlphaMask updateSoftAlphaMask:dimmingCopy inDisparity:filteredCopy focusDisparityModifiers:modifiersCopy effectRenderRequest:requestCopy];
    }
  }

  v84 = modifiersCopy;
  v85 = filteredCopy;
  v42 = objc_msgSend_device(self->_metalContext);
  v43 = [PTTexture createFromPixelbuffer:outColorBuffer device:v42 read:1 write:1];

  if (inBilbyAlphaMaskTexture)
  {
    self->_dimmingFactor = 0.0;
    v44 = 0.0;
  }

  else
  {
    *&v44 = self->_dimmingFactor;
  }

  v45 = [(PTEffectReactionBackgroundDimming *)self->_reactionBackground backgroundDimAndConvertRGBLinearFromPTTexture:dimmingCopy inPTTexture:v43 inCenteredDisparity:disparityCopy inSegmentation:segmentationCopy outRGBA:aCopy dimmingFactor:v44 disparityRemapping:v26 outColorROI:v28, v30, v32, *&v34, *&v36, *&v38, *&v40];
  v46 = [(PTVFXRenderEffect *)self render:dimmingCopy effectRGBA:aCopy effectDepth:depthCopy];
  isRGB = [v43 isRGB];
  v82 = v46;
  v83 = v45;
  if (inBilbyAlphaMaskTexture && isRGB)
  {
    v79 = segmentationCopy;
    v80 = disparityCopy;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    allValues = [(NSMutableDictionary *)self->_effectBindings allValues];
    v49 = [allValues countByEnumeratingWithState:&v89 objects:v93 count:16];
    if (v49)
    {
      v50 = 0;
      v51 = *v90;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v90 != v51)
          {
            objc_enumerationMutation(allValues);
          }

          v50 |= [*(*(&v89 + 1) + 8 * i) useCircularGradient];
        }

        v49 = [allValues countByEnumeratingWithState:&v89 objects:v93 count:16];
      }

      while (v49);

      if (v50)
      {
        v49 = inBilbyAlphaMaskTexture;
      }

      else
      {
        v49 = 0;
      }
    }

    else
    {
    }

    v75 = v43;
    texRGBA = [v75 texRGBA];
    transferFunction = [v75 transferFunction];

    v74 = [(PTVFXRenderEffect *)self convertRGB:dimmingCopy inRGBA:aCopy inAlphaMask:v49 outRGBA:texRGBA toLinear:0 transferFunction:transferFunction];
    v53 = v79;
    disparityCopy = v80;
  }

  else
  {
    v53 = segmentationCopy;
    LOWORD(v88) = [v43 width];
    HIWORD(v88) = [v43 height];
    [PTEffectUtil computeRectInPixelCoordinates:v88 pixelBufferSize:131074 alignment:v34, v36, v38, v40];
    v81 = v54;
    v55 = WORD2(v54);
    width = [aCopy width];
    if (width != v55)
    {
      v57 = _PTLogSystem(width);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        [PTVFXRenderEffect renderWithBackgroundDimming:v57 effectRGBA:v58 inCenteredDisparity:v59 inSegmentation:v60 effectDepth:v61 disparityFiltered:v62 focusDisparityModifiers:v63 renderRequest:v64 debugType:?];
      }
    }

    height = [aCopy height];
    if (height != HIWORD(v81))
    {
      v66 = _PTLogSystem(height);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        [PTVFXRenderEffect renderWithBackgroundDimming:v66 effectRGBA:v67 inCenteredDisparity:v68 inSegmentation:v69 effectDepth:v70 disparityFiltered:v71 focusDisparityModifiers:v72 renderRequest:v73 debugType:?];
      }
    }

    v74 = [(PTColorConversion *)self->_colorConversion convertRGBLinearToPTTexture:dimmingCopy inRGBA:aCopy outPTTexture:v43 outRect:v81];
  }

  return v82 | v83 | v74;
}

- (int)convertRGB:(id)b inRGBA:(id)a inAlphaMask:(id)mask outRGBA:(id)bA toLinear:(BOOL)linear transferFunction:(id)function
{
  linearCopy = linear;
  bACopy = bA;
  maskCopy = mask;
  aCopy = a;
  bCopy = b;
  v18 = [PTColorConversion getTransferFunction:function toLinear:linearCopy];
  v19 = [[PTImageblockConfig alloc] initWithTexture:bACopy];
  computeCommandEncoder = [bCopy computeCommandEncoder];

  if (!computeCommandEncoder)
  {
    v22 = _PTLogSystem(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v22 disparityApplyPostModifier:v23 inDisparity:v24 outDisparity:v25 postModifier:v26, v27, v28, v29];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_convertRGBAlpha[v18]];
  [computeCommandEncoder setImageblockWidth:-[PTImageblockConfig imageblockSize](v19 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v19, "imageblockSize")}];
  [computeCommandEncoder setTexture:aCopy atIndex:0];

  [computeCommandEncoder setTexture:maskCopy atIndex:1];
  [computeCommandEncoder setTexture:bACopy atIndex:2];
  if (v19)
  {
    objc_msgSend_threads(v19);
    objc_msgSend_threadsPerGroup(v19);
  }

  else
  {
    memset(v32, 0, sizeof(v32));
    memset(v31, 0, sizeof(v31));
  }

  [computeCommandEncoder dispatchThreads:v32 threadsPerThreadgroup:v31];
  [computeCommandEncoder endEncoding];

  return 0;
}

+ (uint64_t)transformVideoPositionToCropCoordinates:(uint64_t)coordinates effectRenderRequest:(uint64_t)request flipYAxis:(char)axis
{
  if (axis)
  {
    *(&a2 + 1) = 1.0 - *(&a2 + 1);
  }

  return [self transformVideoRectToCropCoordinates:request effectRenderRequest:a2];
}

+ (uint64_t)transformVideoRectToCropCoordinates:(uint64_t)coordinates effectRenderRequest:(void *)request
{
  [request reactionsCombinedCropRect];

  return [PTEffectUtil transformRect:self intoCropCoordinates:v4];
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 colorConversion:(uint64_t)a5 prewarmOnly:(uint64_t)a6 humanDetections:(uint64_t)a7 sharedResources:(uint64_t)a8 asyncInitQueue:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_convertRGBAlpha[i]";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 colorConversion:(uint64_t)a5 prewarmOnly:(uint64_t)a6 humanDetections:(uint64_t)a7 sharedResources:(uint64_t)a8 asyncInitQueue:.cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_reactionBackground";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)addNewEffectFromEvent:(uint64_t)a3 renderRequest:(uint64_t)a4 time:(uint64_t)a5 presenterOverlaySmall:(uint64_t)a6 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_2243FB000, a2, a3, "PTEffectReactionType found %lu", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)addNewEffectFromEvent:(NSObject *)a3 renderRequest:time:presenterOverlaySmall:.cold.2(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_3_0(&dword_2243FB000, a3, a3, "Already bound", a1);
}

- (void)addNewEffectFromEvent:(uint64_t)a1 renderRequest:(void *)a2 time:presenterOverlaySmall:.cold.3(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_2_0(a1, a2);
  *v3 = 134217984;
  *v2 = v4;
  OUTLINED_FUNCTION_1_0(&dword_2243FB000, v5, v6, "Unexpected length of backgroundDimming: %lu");
}

- (void)addNewEffectFromEvent:(NSObject *)a3 renderRequest:time:presenterOverlaySmall:.cold.4(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_3_0(&dword_2243FB000, a3, a3, "Multiple duration bindings found", a1);
}

- (void)addNewEffectFromEvent:(uint64_t)a1 renderRequest:(void *)a2 time:presenterOverlaySmall:.cold.5(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_2_0(a1, a2);
  *v3 = 134217984;
  *v2 = v4;
  OUTLINED_FUNCTION_1_0(&dword_2243FB000, v5, v6, "Unexpected length of duration: %lu");
}

- (void)updateWithRenderRequest:(uint64_t)a3 lastFrameTime:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  LODWORD(v9) = 134217984;
  *(&v9 + 4) = a9;
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "VFX: Skip simulation step due to large delta time %f", a5, a6, a7, a8, v9, DWORD2(v9));
}

- (void)renderWithBackgroundDimming:(uint64_t)a3 effectRGBA:(uint64_t)a4 inCenteredDisparity:(uint64_t)a5 inSegmentation:(uint64_t)a6 effectDepth:(uint64_t)a7 disparityFiltered:(uint64_t)a8 focusDisparityModifiers:renderRequest:debugType:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "rect[2] == effectRGBA.width";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)renderWithBackgroundDimming:(uint64_t)a3 effectRGBA:(uint64_t)a4 inCenteredDisparity:(uint64_t)a5 inSegmentation:(uint64_t)a6 effectDepth:(uint64_t)a7 disparityFiltered:(uint64_t)a8 focusDisparityModifiers:renderRequest:debugType:.cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "rect[3] == effectRGBA.height";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end