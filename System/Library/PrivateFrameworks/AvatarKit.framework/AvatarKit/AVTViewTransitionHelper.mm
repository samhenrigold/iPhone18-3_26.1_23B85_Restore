@interface AVTViewTransitionHelper
- (__n128)viewBackgroundColor;
- (id)initWithView:(id *)view;
- (id)snapshotViewUsingBackgroundColor:(AVTViewTransitionHelper *)self;
- (id)transitionTechnique;
- (void)coordinator_performCrossFadeThenAnimateTransitionOutOfStickerConfigurationWithDuration:(double)duration avatar:(id)avatar avatarNode:(id)node oldReversionContext:(id)context;
- (void)coordinator_performCrossFadeThenAnimateTransitionToStickerConfiguration:(id)configuration duration:(double)duration options:(unint64_t)options avatar:(id)avatar avatarNode:(id)node oldReversionContext:(id)context;
- (void)coordinator_performCrossFadeTransitionOutOfStickerConfigurationWithDuration:(double)duration avatar:(id)avatar avatarNode:(id)node oldReversionContext:(id)context;
- (void)coordinator_performCrossFadeTransitionToStickerConfiguration:(id)configuration duration:(double)duration options:(unint64_t)options avatar:(id)avatar avatarNode:(id)node oldReversionContext:(id)context;
- (void)transitionCoordinatorOutOfStickerConfigurationWithDuration:(double)duration style:(uint64_t)style options:(void *)options avatar:;
- (void)transitionCoordinatorToStickerConfiguration:(unint64_t)configuration duration:(double)duration style:(uint64_t)style options:(void *)options avatar:;
- (void)transitionViewToStickerConfiguration:(void *)configuration fallbackPose:(unint64_t)pose duration:(void *)duration style:(void *)style avatar:(void *)avatar completionHandler:(double)handler simultaneousAnimationsBlock:;
- (void)view_performAnimateThenCrossFadeTransitionFromStickerConfiguration:(id)configuration toStickerConfiguration:(id)stickerConfiguration duration:(double)duration avatar:(id)avatar avatarNode:(id)node oldReversionContext:(id)context completionHandler:(id)handler simultaneousAnimationsBlock:(id)self0;
- (void)view_performCrossFadeThenAnimateTransitionToStickerConfiguration:(id)configuration fallbackPose:(id)pose duration:(double)duration avatar:(id)avatar avatarNode:(id)node oldReversionContext:(id)context completionHandler:(id)handler simultaneousAnimationsBlock:(id)self0;
- (void)view_performCrossFadeTransitionToStickerConfiguration:(id)configuration fallbackPose:(id)pose duration:(double)duration avatar:(id)avatar avatarNode:(id)node oldReversionContext:(id)context completionHandler:(id)handler simultaneousAnimationsBlock:(id)self0;
@end

@implementation AVTViewTransitionHelper

void *__145__AVTViewTransitionHelper_transitionViewToStickerConfiguration_fallbackPose_duration_style_avatar_completionHandler_simultaneousAnimationsBlock___block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return [AVTStickerGenerator applyViewTransitionConfiguration:"applyViewTransitionConfiguration:forLateAdditionOfComponentAssetNode:ofAvatar:" forLateAdditionOfComponentAssetNode:? ofAvatar:?];
  }

  return v4;
}

uint64_t __145__AVTViewTransitionHelper_transitionViewToStickerConfiguration_fallbackPose_duration_style_avatar_completionHandler_simultaneousAnimationsBlock___block_invoke_2(uint64_t a1)
{
  v2 = [AVTStickerGenerator poseByApplyingAdjustmentsForConfiguration:"poseByApplyingAdjustmentsForConfiguration:avatar:" avatar:?];
  [*(a1 + 32) setPose:?];

  [*(a1 + 32) stopTransitionAnimation];
  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __145__AVTViewTransitionHelper_transitionViewToStickerConfiguration_fallbackPose_duration_style_avatar_completionHandler_simultaneousAnimationsBlock___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setPose:?];
  [*(a1 + 32) stopTransitionAnimation];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)view_performCrossFadeTransitionToStickerConfiguration:(id)configuration fallbackPose:(id)pose duration:(double)duration avatar:(id)avatar avatarNode:(id)node oldReversionContext:(id)context completionHandler:(id)handler simultaneousAnimationsBlock:(id)self0
{
  configurationCopy = configuration;
  poseCopy = pose;
  avatarCopy = avatar;
  nodeCopy = node;
  contextCopy = context;
  handlerCopy = handler;
  blockCopy = block;
  objc_initWeak(location, self);
  objc_copyWeak(&to, &self->_view);
  transitionTechnique = [(AVTViewTransitionHelper *)self transitionTechnique];
  if (!transitionTechnique)
  {
    v23 = avt_default_log(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [AVTViewTransitionHelper view_performCrossFadeTransitionToStickerConfiguration:v23 fallbackPose:v24 duration:v25 avatar:v26 avatarNode:v27 oldReversionContext:v28 completionHandler:v29 simultaneousAnimationsBlock:v30];
    }
  }

  v41 = nodeCopy;
  [transitionTechnique setFramebufferTextureOpacity:?];
  [(AVTViewTransitionHelper *)self viewBackgroundColor];
  v40 = v31;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  renderer = [WeakRetained renderer];
  _renderingQueue = [renderer _renderingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __187__AVTViewTransitionHelper_view_performCrossFadeTransitionToStickerConfiguration_fallbackPose_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke;
  block[3] = &unk_1E7F480A0;
  objc_copyWeak(&v54, location);
  objc_copyWeak(v55, &to);
  v46 = v40;
  v47 = transitionTechnique;
  v48 = contextCopy;
  v49 = avatarCopy;
  v50 = configurationCopy;
  v51 = poseCopy;
  v52 = blockCopy;
  v53 = handlerCopy;
  v55[1] = *&duration;
  v56 = 0;
  v43 = handlerCopy;
  *&v40 = blockCopy;
  v35 = poseCopy;
  v36 = configurationCopy;
  v37 = avatarCopy;
  v38 = contextCopy;
  v39 = transitionTechnique;
  dispatch_async(_renderingQueue, block);

  objc_destroyWeak(v55);
  objc_destroyWeak(&v54);
  objc_destroyWeak(&to);
  objc_destroyWeak(location);
}

void __187__AVTViewTransitionHelper_view_performCrossFadeTransitionToStickerConfiguration_fallbackPose_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  v3 = objc_loadWeakRetained((a1 + 112));
  v4 = v3;
  if (WeakRetained && v3)
  {
    [v3 setAvtRendererTechnique:?];
    v5 = [WeakRetained snapshotViewUsingBackgroundColor:?];
    if (v5)
    {
      [*(a1 + 48) setSnapshotTexture:?];
      [v4 setAvtRendererTechnique:?];
    }

    [*(a1 + 56) revertChangesWithScope:? animationDuration:?];
    [*(a1 + 64) stopTransitionAnimation];
    if (*(a1 + 72))
    {
      v6 = objc_alloc_init(AVTStickerConfigurationReversionContext);
      v7 = WeakRetained[3];
      WeakRetained[3] = v6;
      v8 = v6;

      [AVTStickerGenerator applyViewTransitionConfiguration:"applyViewTransitionConfiguration:toView:scope:options:duration:avatar:context:completionHandler:" toView:0 scope:? options:? duration:? avatar:? context:? completionHandler:?];
    }

    else
    {
      [*(a1 + 64) setPose:?];
    }

    [MEMORY[0x1E69DF378] flush];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __187__AVTViewTransitionHelper_view_performCrossFadeTransitionToStickerConfiguration_fallbackPose_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke_2;
    block[3] = &unk_1E7F48078;
    v14 = *(a1 + 88);
    v10 = *(a1 + 64);
    v16[1] = *(a1 + 120);
    v17 = *(a1 + 128);
    v11 = *(a1 + 48);
    objc_copyWeak(v16, (a1 + 112));
    v12 = *(a1 + 72);
    v13 = *(a1 + 80);
    v15 = *(a1 + 96);
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(v16);
  }
}

void __187__AVTViewTransitionHelper_view_performCrossFadeTransitionToStickerConfiguration_fallbackPose_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [MEMORY[0x1E69793D0] functionWithName:?];
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E69E9820];
  v11[1] = *(a1 + 88);
  v6 = v3;
  v12 = *(a1 + 96);
  v7 = *(a1 + 40);
  objc_copyWeak(v11, (a1 + 80));
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 72);
  [v4 addDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:v5 block:{3221225472, __187__AVTViewTransitionHelper_view_performCrossFadeTransitionToStickerConfiguration_fallbackPose_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke_3, &unk_1E7F48050}];

  objc_destroyWeak(v11);
}

void __187__AVTViewTransitionHelper_view_performCrossFadeTransitionToStickerConfiguration_fallbackPose_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke_3(uint64_t a1, void *a2, double a3, double a4, uint64_t a5, _BYTE *a6)
{
  v16 = a2;
  v10 = (a3 - a4) / *(a1 + 80);
  *&a4 = fmaxf(fminf(v10, 1.0), 0.0);
  [*(a1 + 32) _solveForInput:?];
  [*(a1 + 40) setFramebufferTextureOpacity:?];
  if (*&a4 >= 1.0)
  {
    *a6 = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v12 = WeakRetained;
    if (WeakRetained)
    {
      v13 = [WeakRetained avtRendererTechnique];
      v14 = *(a1 + 40);

      if (v13 == v14)
      {
        [v12 setAvtRendererTechnique:?];
      }
    }

    v15 = [AVTStickerGenerator poseByApplyingAdjustmentsForConfiguration:"poseByApplyingAdjustmentsForConfiguration:avatar:" avatar:?];
    [v16 setPose:?];

    [v16 stopTransitionAnimation];
    if (*(a1 + 64))
    {
      dispatch_async(MEMORY[0x1E69E96A0], *(a1 + 64));
    }
  }
}

- (void)coordinator_performCrossFadeTransitionToStickerConfiguration:(id)configuration duration:(double)duration options:(unint64_t)options avatar:(id)avatar avatarNode:(id)node oldReversionContext:(id)context
{
  configurationCopy = configuration;
  avatarCopy = avatar;
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if (WeakRetained)
  {
    transitionTechnique = [(AVTViewTransitionHelper *)self transitionTechnique];
    if (!transitionTechnique)
    {
      v16 = avt_default_log(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [AVTViewTransitionHelper view_performCrossFadeTransitionToStickerConfiguration:v16 fallbackPose:v17 duration:v18 avatar:v19 avatarNode:v20 oldReversionContext:v21 completionHandler:v22 simultaneousAnimationsBlock:v23];
      }
    }

    [transitionTechnique setFramebufferTextureOpacity:?];
    [(AVTViewTransitionHelper *)self viewBackgroundColor];
    v34 = v24;
    renderer = [WeakRetained renderer];
    _renderingQueue = [renderer _renderingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __143__AVTViewTransitionHelper_coordinator_performCrossFadeTransitionToStickerConfiguration_duration_options_avatar_avatarNode_oldReversionContext___block_invoke;
    block[3] = &unk_1E7F480C8;
    v38 = WeakRetained;
    selfCopy = self;
    v37 = v34;
    v27 = transitionTechnique;
    v40 = v27;
    dispatch_sync(_renderingQueue, block);

    [contextCopy revertChangesWithScope:? animationDuration:?];
    v28 = objc_alloc_init(AVTStickerConfigurationReversionContext);
    stickerTransitionReversionContext = self->_stickerTransitionReversionContext;
    self->_stickerTransitionReversionContext = v28;

    [AVTStickerGenerator applyViewTransitionConfiguration:"applyViewTransitionConfiguration:toView:scope:options:duration:avatar:context:completionHandler:" toView:0 scope:? options:? duration:? avatar:? context:? completionHandler:?];
    v35 = [MEMORY[0x1E69793D0] functionWithName:?];
    contextCopy = v27;
    v30 = v35;
    [avatarCopy addDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:? block:?];
  }

  else
  {
    v31 = avt_default_log(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [AVTViewTransitionHelper coordinator_performCrossFadeTransitionToStickerConfiguration:v31 duration:v32 options:v33 avatar:? avatarNode:? oldReversionContext:?];
    }

    [contextCopy revertChangesWithScope:? animationDuration:?];
  }
}

uint64_t __143__AVTViewTransitionHelper_coordinator_performCrossFadeTransitionToStickerConfiguration_duration_options_avatar_avatarNode_oldReversionContext___block_invoke(id *a1)
{
  [a1[6] setAvtRendererTechnique:?];
  v2 = [a1[7] snapshotViewUsingBackgroundColor:?];
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    [a1[8] setSnapshotTexture:?];
    [a1[6] setAvtRendererTechnique:?];
    v2 = [MEMORY[0x1E69DF378] flush];
    v3 = v5;
  }

  return MEMORY[0x1EEE66BB8](v2, v3);
}

void __143__AVTViewTransitionHelper_coordinator_performCrossFadeTransitionToStickerConfiguration_duration_options_avatar_avatarNode_oldReversionContext___block_invoke_2(uint64_t a1, double a2, double a3, uint64_t a4, void *a5, _BYTE *a6)
{
  v10 = a5;
  v11 = (a2 - a3) / *(a1 + 48);
  *&a3 = fmaxf(fminf(v11, 1.0), 0.0);
  [*(a1 + 32) _solveForInput:?];
  [*(a1 + 40) setFramebufferTextureOpacity:?];
  if (*&a3 >= 1.0)
  {
    *a6 = 1;
    v12 = [v10 conformsToProtocol:?];
    if (v12)
    {
      v13 = v10;
      v14 = [v13 avtRendererTechnique];
      v15 = *(a1 + 40);

      if (v14 == v15)
      {
        [v13 setAvtRendererTechnique:?];
      }
    }

    else
    {
      v16 = avt_default_log(v12);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __143__AVTViewTransitionHelper_coordinator_performCrossFadeTransitionToStickerConfiguration_duration_options_avatar_avatarNode_oldReversionContext___block_invoke_2_cold_1();
      }
    }
  }
}

- (void)coordinator_performCrossFadeTransitionOutOfStickerConfigurationWithDuration:(double)duration avatar:(id)avatar avatarNode:(id)node oldReversionContext:(id)context
{
  avatarCopy = avatar;
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if (WeakRetained)
  {
    transitionTechnique = [(AVTViewTransitionHelper *)self transitionTechnique];
    if (!transitionTechnique)
    {
      v12 = avt_default_log(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [AVTViewTransitionHelper view_performCrossFadeTransitionToStickerConfiguration:v12 fallbackPose:v13 duration:v14 avatar:v15 avatarNode:v16 oldReversionContext:v17 completionHandler:v18 simultaneousAnimationsBlock:v19];
      }
    }

    [transitionTechnique setFramebufferTextureOpacity:?];
    [(AVTViewTransitionHelper *)self viewBackgroundColor];
    v29 = v20;
    renderer = [WeakRetained renderer];
    _renderingQueue = [renderer _renderingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __141__AVTViewTransitionHelper_coordinator_performCrossFadeTransitionOutOfStickerConfigurationWithDuration_avatar_avatarNode_oldReversionContext___block_invoke;
    block[3] = &unk_1E7F480C8;
    v33 = WeakRetained;
    selfCopy = self;
    v32 = v29;
    v23 = transitionTechnique;
    v35 = v23;
    dispatch_sync(_renderingQueue, block);

    [contextCopy revertChangesWithScope:? animationDuration:?];
    v24 = [MEMORY[0x1E69793D0] functionWithName:?];
    v30 = v23;
    contextCopy = v23;
    v25 = v24;
    [avatarCopy addDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:? block:?];
  }

  else
  {
    v26 = avt_default_log(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [AVTViewTransitionHelper coordinator_performCrossFadeTransitionToStickerConfiguration:v26 duration:v27 options:v28 avatar:? avatarNode:? oldReversionContext:?];
    }

    [contextCopy revertChangesWithScope:? animationDuration:?];
  }
}

uint64_t __141__AVTViewTransitionHelper_coordinator_performCrossFadeTransitionOutOfStickerConfigurationWithDuration_avatar_avatarNode_oldReversionContext___block_invoke(id *a1)
{
  [a1[6] setAvtRendererTechnique:?];
  v2 = [a1[7] snapshotViewUsingBackgroundColor:?];
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    [a1[8] setSnapshotTexture:?];
    [a1[6] setAvtRendererTechnique:?];
    v2 = [MEMORY[0x1E69DF378] flush];
    v3 = v5;
  }

  return MEMORY[0x1EEE66BB8](v2, v3);
}

void __141__AVTViewTransitionHelper_coordinator_performCrossFadeTransitionOutOfStickerConfigurationWithDuration_avatar_avatarNode_oldReversionContext___block_invoke_2(uint64_t a1, double a2, double a3, uint64_t a4, void *a5, _BYTE *a6)
{
  v10 = a5;
  v11 = (a2 - a3) / *(a1 + 48);
  *&a3 = fmaxf(fminf(v11, 1.0), 0.0);
  [*(a1 + 32) _solveForInput:?];
  [*(a1 + 40) setFramebufferTextureOpacity:?];
  if (*&a3 >= 1.0)
  {
    *a6 = 1;
    v12 = [v10 conformsToProtocol:?];
    if (v12)
    {
      v13 = v10;
      v14 = [v13 avtRendererTechnique];
      v15 = *(a1 + 40);

      if (v14 == v15)
      {
        [v13 setAvtRendererTechnique:?];
      }
    }

    else
    {
      v16 = avt_default_log(v12);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __143__AVTViewTransitionHelper_coordinator_performCrossFadeTransitionToStickerConfiguration_duration_options_avatar_avatarNode_oldReversionContext___block_invoke_2_cold_1();
      }
    }
  }
}

- (void)view_performCrossFadeThenAnimateTransitionToStickerConfiguration:(id)configuration fallbackPose:(id)pose duration:(double)duration avatar:(id)avatar avatarNode:(id)node oldReversionContext:(id)context completionHandler:(id)handler simultaneousAnimationsBlock:(id)self0
{
  configurationCopy = configuration;
  poseCopy = pose;
  avatarCopy = avatar;
  nodeCopy = node;
  contextCopy = context;
  handlerCopy = handler;
  blockCopy = block;
  objc_initWeak(location, self);
  objc_copyWeak(&to, &self->_view);
  transitionTechnique = [(AVTViewTransitionHelper *)self transitionTechnique];
  if (!transitionTechnique)
  {
    v23 = avt_default_log(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [AVTViewTransitionHelper view_performCrossFadeTransitionToStickerConfiguration:v23 fallbackPose:v24 duration:v25 avatar:v26 avatarNode:v27 oldReversionContext:v28 completionHandler:v29 simultaneousAnimationsBlock:v30];
    }
  }

  v31 = configurationCopy;
  [transitionTechnique setFramebufferTextureOpacity:?];
  [(AVTViewTransitionHelper *)self viewBackgroundColor];
  v41 = v32;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  renderer = [WeakRetained renderer];
  _renderingQueue = [renderer _renderingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __198__AVTViewTransitionHelper_view_performCrossFadeThenAnimateTransitionToStickerConfiguration_fallbackPose_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke;
  block[3] = &unk_1E7F48168;
  objc_copyWeak(&v54, location);
  objc_copyWeak(v55, &to);
  v46 = v41;
  v47 = transitionTechnique;
  v48 = contextCopy;
  v55[1] = *&duration;
  v56 = 0;
  v49 = avatarCopy;
  v50 = v31;
  v51 = poseCopy;
  v52 = blockCopy;
  v53 = handlerCopy;
  v42 = handlerCopy;
  *&v41 = poseCopy;
  v40 = v31;
  v36 = avatarCopy;
  v37 = blockCopy;
  v38 = contextCopy;
  v39 = transitionTechnique;
  dispatch_async(_renderingQueue, block);

  objc_destroyWeak(v55);
  objc_destroyWeak(&v54);
  objc_destroyWeak(&to);
  objc_destroyWeak(location);
}

void __198__AVTViewTransitionHelper_view_performCrossFadeThenAnimateTransitionToStickerConfiguration_fallbackPose_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  v3 = objc_loadWeakRetained((a1 + 112));
  v4 = v3;
  if (WeakRetained && v3)
  {
    [v3 setAvtRendererTechnique:?];
    v5 = [WeakRetained snapshotViewUsingBackgroundColor:?];
    if (v5)
    {
      [*(a1 + 48) setSnapshotTexture:?];
      [v4 setAvtRendererTechnique:?];
    }

    [*(a1 + 56) revertChangesWithScope:? animationDuration:?];
    [MEMORY[0x1E69DF378] flush];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __198__AVTViewTransitionHelper_view_performCrossFadeThenAnimateTransitionToStickerConfiguration_fallbackPose_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke_2;
    v6[3] = &unk_1E7F48140;
    v14 = *(a1 + 88);
    v7 = *(a1 + 64);
    v16[1] = *(a1 + 120);
    v17 = *(a1 + 128);
    v8 = *(a1 + 48);
    v9 = *(a1 + 72);
    v10 = WeakRetained;
    v11 = v4;
    v12 = *(a1 + 80);
    v13 = *(a1 + 56);
    objc_copyWeak(v16, (a1 + 112));
    v15 = *(a1 + 96);
    dispatch_async(MEMORY[0x1E69E96A0], v6);

    objc_destroyWeak(v16);
  }
}

void __198__AVTViewTransitionHelper_view_performCrossFadeThenAnimateTransitionToStickerConfiguration_fallbackPose_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  v3 = [MEMORY[0x1E69793D0] functionWithName:?];
  v4 = *(a1 + 32);
  v15[1] = *(a1 + 112);
  v10 = v3;
  v16 = *(a1 + 120);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = *(a1 + 56);
  v7 = *(&v9 + 1);
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v11 = v8;
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  objc_copyWeak(v15, (a1 + 104));
  v14 = *(a1 + 96);
  [v4 addDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:? block:?];

  objc_destroyWeak(v15);
  _Block_object_dispose(v17, 8);
}

void __198__AVTViewTransitionHelper_view_performCrossFadeThenAnimateTransitionToStickerConfiguration_fallbackPose_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke_3(uint64_t a1, void *a2, double a3, double a4, uint64_t a5, _BYTE *a6)
{
  v24 = a2;
  v10 = (a3 - a4) / *(a1 + 112);
  v11 = fmaxf(fminf(v10, 1.0), 0.0);
  [*(a1 + 32) _solveForInput:?];
  [*(a1 + 40) setFramebufferTextureOpacity:?];
  if (v11 >= 0.25)
  {
    v12 = *(*(a1 + 96) + 8);
    if ((*(v12 + 24) & 1) == 0)
    {
      *(v12 + 24) = 1;
      if (*(a1 + 48))
      {
        v13 = objc_alloc_init(AVTStickerConfigurationReversionContext);
        v14 = *(a1 + 56);
        v15 = *(v14 + 24);
        *(v14 + 24) = v13;
        v16 = v13;

        [AVTStickerGenerator applyViewTransitionConfiguration:"applyViewTransitionConfiguration:toView:scope:options:duration:avatar:context:completionHandler:" toView:0 scope:? options:? duration:? avatar:? context:? completionHandler:?];
      }

      else
      {
        [v24 transitionFromPose:? toPose:? duration:? delay:? completionHandler:?];
      }

      [*(a1 + 80) revertChangesWithScope:? animationDuration:?];
    }
  }

  if (v11 >= 1.0)
  {
    *a6 = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 104));
    v18 = WeakRetained;
    if (WeakRetained)
    {
      v19 = [WeakRetained avtRendererTechnique];
      v20 = *(a1 + 40);

      if (v19 == v20)
      {
        [v18 setAvtRendererTechnique:?];
      }
    }

    v21 = *(a1 + 48);
    if (v21)
    {
      v22 = [v21 physicalizedPose];
      v23 = [v22 pose];
      [v24 setPose:?];
    }

    else
    {
      [v24 setPose:?];
    }

    [v24 stopTransitionAnimation];
    if (*(a1 + 88))
    {
      dispatch_async(MEMORY[0x1E69E96A0], *(a1 + 88));
    }
  }
}

- (void)coordinator_performCrossFadeThenAnimateTransitionToStickerConfiguration:(id)configuration duration:(double)duration options:(unint64_t)options avatar:(id)avatar avatarNode:(id)node oldReversionContext:(id)context
{
  configurationCopy = configuration;
  avatarCopy = avatar;
  nodeCopy = node;
  contextCopy = context;
  transitionTechnique = [(AVTViewTransitionHelper *)self transitionTechnique];
  if (!transitionTechnique)
  {
    v17 = avt_default_log(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [AVTViewTransitionHelper view_performCrossFadeTransitionToStickerConfiguration:v17 fallbackPose:v18 duration:v19 avatar:v20 avatarNode:v21 oldReversionContext:v22 completionHandler:v23 simultaneousAnimationsBlock:v24];
    }
  }

  [transitionTechnique setFramebufferTextureOpacity:?];
  [(AVTViewTransitionHelper *)self viewBackgroundColor];
  v37 = v25;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  renderer = [WeakRetained renderer];
  _renderingQueue = [renderer _renderingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __154__AVTViewTransitionHelper_coordinator_performCrossFadeThenAnimateTransitionToStickerConfiguration_duration_options_avatar_avatarNode_oldReversionContext___block_invoke;
  block[3] = &unk_1E7F48190;
  selfCopy = self;
  v44 = v37;
  v29 = transitionTechnique;
  v46 = v29;
  dispatch_sync(_renderingQueue, block);

  [contextCopy revertChangesWithScope:? animationDuration:?];
  v30 = dispatch_semaphore_create(0);
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  v38 = [MEMORY[0x1E69793D0] functionWithName:?];
  v39 = v29;
  v40 = v30;
  [avatarCopy addDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:? block:?];
  v31 = fmin(duration * 10.0, 2.0);
  v32 = dispatch_time(0, (v31 * 1000000000.0));
  dispatch_semaphore_wait(v40, v32);
  v33 = objc_alloc_init(AVTStickerConfigurationReversionContext);
  stickerTransitionReversionContext = self->_stickerTransitionReversionContext;
  self->_stickerTransitionReversionContext = v33;

  v35 = objc_loadWeakRetained(&self->_view);
  [AVTStickerGenerator applyViewTransitionConfiguration:"applyViewTransitionConfiguration:toView:scope:options:duration:avatar:context:completionHandler:" toView:0 scope:? options:? duration:? avatar:? context:? completionHandler:?];

  [contextCopy revertChangesWithScope:? animationDuration:?];
  _Block_object_dispose(v41, 8);
}

void __154__AVTViewTransitionHelper_coordinator_performCrossFadeThenAnimateTransitionToStickerConfiguration_duration_options_avatar_avatarNode_oldReversionContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained setAvtRendererTechnique:?];
    v3 = [*(a1 + 48) snapshotViewUsingBackgroundColor:?];
    if (v3)
    {
      [*(a1 + 56) setSnapshotTexture:?];
      [v4 setAvtRendererTechnique:?];
      [MEMORY[0x1E69DF378] flush];
    }

    WeakRetained = v4;
  }
}

void __154__AVTViewTransitionHelper_coordinator_performCrossFadeThenAnimateTransitionToStickerConfiguration_duration_options_avatar_avatarNode_oldReversionContext___block_invoke_2(uint64_t a1, double a2, double a3, uint64_t a4, void *a5, _BYTE *a6)
{
  v10 = a5;
  v11 = (a2 - a3) / *(a1 + 64);
  v12 = fmaxf(fminf(v11, 1.0), 0.0);
  [*(a1 + 32) _solveForInput:?];
  [*(a1 + 40) setFramebufferTextureOpacity:?];
  if (v12 >= 0.25)
  {
    v13 = *(*(a1 + 56) + 8);
    if ((*(v13 + 24) & 1) == 0)
    {
      *(v13 + 24) = 1;
      dispatch_semaphore_signal(*(a1 + 48));
    }
  }

  if (v12 >= 1.0)
  {
    *a6 = 1;
    v14 = [v10 conformsToProtocol:?];
    if (v14)
    {
      v15 = v10;
      v16 = [v15 avtRendererTechnique];
      v17 = *(a1 + 40);

      if (v16 == v17)
      {
        [v15 setAvtRendererTechnique:?];
      }
    }

    else
    {
      v18 = avt_default_log(v14);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __143__AVTViewTransitionHelper_coordinator_performCrossFadeTransitionToStickerConfiguration_duration_options_avatar_avatarNode_oldReversionContext___block_invoke_2_cold_1();
      }
    }
  }
}

- (void)coordinator_performCrossFadeThenAnimateTransitionOutOfStickerConfigurationWithDuration:(double)duration avatar:(id)avatar avatarNode:(id)node oldReversionContext:(id)context
{
  avatarCopy = avatar;
  nodeCopy = node;
  contextCopy = context;
  transitionTechnique = [(AVTViewTransitionHelper *)self transitionTechnique];
  if (!transitionTechnique)
  {
    v14 = avt_default_log(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [AVTViewTransitionHelper view_performCrossFadeTransitionToStickerConfiguration:v14 fallbackPose:v15 duration:v16 avatar:v17 avatarNode:v18 oldReversionContext:v19 completionHandler:v20 simultaneousAnimationsBlock:v21];
    }
  }

  [transitionTechnique setFramebufferTextureOpacity:?];
  [(AVTViewTransitionHelper *)self viewBackgroundColor];
  v30 = v22;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  renderer = [WeakRetained renderer];
  _renderingQueue = [renderer _renderingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __152__AVTViewTransitionHelper_coordinator_performCrossFadeThenAnimateTransitionOutOfStickerConfigurationWithDuration_avatar_avatarNode_oldReversionContext___block_invoke;
  block[3] = &unk_1E7F48190;
  selfCopy = self;
  v37 = v30;
  v26 = transitionTechnique;
  v39 = v26;
  dispatch_sync(_renderingQueue, block);

  [contextCopy revertChangesWithScope:? animationDuration:?];
  v27 = dispatch_semaphore_create(0);
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 0;
  v31 = [MEMORY[0x1E69793D0] functionWithName:?];
  v32 = v26;
  v33 = v27;
  [avatarCopy addDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:? block:?];
  v28 = fmin(duration * 10.0, 2.0);
  v29 = dispatch_time(0, (v28 * 1000000000.0));
  dispatch_semaphore_wait(v33, v29);
  [contextCopy revertChangesWithScope:? animationDuration:?];

  _Block_object_dispose(v34, 8);
}

void __152__AVTViewTransitionHelper_coordinator_performCrossFadeThenAnimateTransitionOutOfStickerConfigurationWithDuration_avatar_avatarNode_oldReversionContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained setAvtRendererTechnique:?];
    v3 = [*(a1 + 48) snapshotViewUsingBackgroundColor:?];
    if (v3)
    {
      [*(a1 + 56) setSnapshotTexture:?];
      [v4 setAvtRendererTechnique:?];
      [MEMORY[0x1E69DF378] flush];
    }

    WeakRetained = v4;
  }
}

void __152__AVTViewTransitionHelper_coordinator_performCrossFadeThenAnimateTransitionOutOfStickerConfigurationWithDuration_avatar_avatarNode_oldReversionContext___block_invoke_2(uint64_t a1, double a2, double a3, uint64_t a4, void *a5, _BYTE *a6)
{
  v10 = a5;
  v11 = (a2 - a3) / *(a1 + 64);
  v12 = fmaxf(fminf(v11, 1.0), 0.0);
  [*(a1 + 32) _solveForInput:?];
  [*(a1 + 40) setFramebufferTextureOpacity:?];
  if (v12 >= 0.25)
  {
    v13 = *(*(a1 + 56) + 8);
    if ((*(v13 + 24) & 1) == 0)
    {
      *(v13 + 24) = 1;
      dispatch_semaphore_signal(*(a1 + 48));
    }
  }

  if (v12 >= 1.0)
  {
    *a6 = 1;
    v14 = [v10 conformsToProtocol:?];
    if (v14)
    {
      v15 = v10;
      v16 = [v15 avtRendererTechnique];
      v17 = *(a1 + 40);

      if (v16 == v17)
      {
        [v15 setAvtRendererTechnique:?];
      }
    }

    else
    {
      v18 = avt_default_log(v14);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __143__AVTViewTransitionHelper_coordinator_performCrossFadeTransitionToStickerConfiguration_duration_options_avatar_avatarNode_oldReversionContext___block_invoke_2_cold_1();
      }
    }
  }
}

- (void)view_performAnimateThenCrossFadeTransitionFromStickerConfiguration:(id)configuration toStickerConfiguration:(id)stickerConfiguration duration:(double)duration avatar:(id)avatar avatarNode:(id)node oldReversionContext:(id)context completionHandler:(id)handler simultaneousAnimationsBlock:(id)self0
{
  configurationCopy = configuration;
  stickerConfigurationCopy = stickerConfiguration;
  avatarCopy = avatar;
  nodeCopy = node;
  contextCopy = context;
  handlerCopy = handler;
  blockCopy = block;
  transitionTechnique = [(AVTViewTransitionHelper *)self transitionTechnique];
  if (!transitionTechnique)
  {
    v23 = avt_default_log(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [AVTViewTransitionHelper view_performCrossFadeTransitionToStickerConfiguration:v23 fallbackPose:v24 duration:v25 avatar:v26 avatarNode:v27 oldReversionContext:v28 completionHandler:v29 simultaneousAnimationsBlock:v30];
    }
  }

  [(AVTViewTransitionHelper *)self viewBackgroundColor];
  v41 = v31;
  objc_initWeak(location, self);
  objc_copyWeak(&to, &self->_view);
  WeakRetained = objc_loadWeakRetained(&self->_view);
  renderer = [WeakRetained renderer];
  _renderingQueue = [renderer _renderingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __210__AVTViewTransitionHelper_view_performAnimateThenCrossFadeTransitionFromStickerConfiguration_toStickerConfiguration_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke;
  block[3] = &unk_1E7F48230;
  objc_copyWeak(&v53, location);
  objc_copyWeak(v54, &to);
  v46 = avatarCopy;
  v47 = contextCopy;
  v45 = v41;
  v48 = stickerConfigurationCopy;
  v49 = transitionTechnique;
  v54[1] = *&duration;
  v50 = configurationCopy;
  v51 = blockCopy;
  v52 = handlerCopy;
  *&v41 = handlerCopy;
  v35 = blockCopy;
  v36 = configurationCopy;
  v37 = transitionTechnique;
  v38 = stickerConfigurationCopy;
  v39 = contextCopy;
  v40 = avatarCopy;
  dispatch_async(_renderingQueue, block);

  objc_destroyWeak(v54);
  objc_destroyWeak(&v53);
  objc_destroyWeak(&to);
  objc_destroyWeak(location);
}

void __210__AVTViewTransitionHelper_view_performAnimateThenCrossFadeTransitionFromStickerConfiguration_toStickerConfiguration_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  v3 = objc_loadWeakRetained(a1 + 14);
  v4 = v3;
  if (WeakRetained && v3)
  {
    [a1[6] stopTransitionAnimation];
    [a1[7] revertChangesWithScope:? animationDuration:?];
    v5 = objc_alloc_init(AVTStickerConfigurationReversionContext);
    objc_storeStrong(WeakRetained + 3, v5);
    [AVTStickerGenerator applyViewTransitionConfiguration:"applyViewTransitionConfiguration:toView:scope:options:duration:avatar:context:completionHandler:" toView:0 scope:? options:? duration:? avatar:? context:? completionHandler:?];
    [v4 setAvtRendererTechnique:?];
    [MEMORY[0x1E69DF378] flush];
    v6 = [WeakRetained snapshotViewUsingBackgroundColor:?];
    if (v6)
    {
      [a1[9] setSnapshotTexture:?];
    }

    [AVTStickerConfigurationReversionContext revertChangesWithScope:v5 animationDuration:"revertChangesWithScope:animationDuration:"];
    [AVTStickerGenerator applyViewTransitionConfiguration:"applyViewTransitionConfiguration:toView:scope:options:duration:avatar:context:completionHandler:" toView:0 scope:? options:? duration:? avatar:? context:? completionHandler:?];
    [MEMORY[0x1E69DF378] flush];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __210__AVTViewTransitionHelper_view_performAnimateThenCrossFadeTransitionFromStickerConfiguration_toStickerConfiguration_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke_2;
    block[3] = &unk_1E7F48208;
    objc_copyWeak(&v15, a1 + 13);
    objc_copyWeak(v16, a1 + 14);
    v16[1] = a1[15];
    v9 = v5;
    v10 = a1[8];
    v11 = a1[6];
    v13 = a1[11];
    v12 = a1[9];
    v14 = a1[12];
    v7 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(v16);
    objc_destroyWeak(&v15);
  }
}

void __210__AVTViewTransitionHelper_view_performAnimateThenCrossFadeTransitionFromStickerConfiguration_toStickerConfiguration_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = objc_loadWeakRetained((a1 + 88));
  v4 = v3;
  if (WeakRetained && v3)
  {
    [*(a1 + 32) revertChangesWithScope:? animationDuration:?];
    [AVTStickerGenerator applyViewTransitionConfiguration:"applyViewTransitionConfiguration:toView:scope:options:duration:avatar:context:completionHandler:" toView:0 scope:? options:? duration:? avatar:? context:? completionHandler:?];
    v5 = *(a1 + 64);
    if (v5)
    {
      (*(v5 + 16))();
    }

    [v4 setAvtRendererTechnique:?];
    [*(a1 + 56) setFramebufferTextureOpacity:?];
    v6 = [MEMORY[0x1E69793D0] functionWithName:?];
    v7 = *(a1 + 48);
    v13[1] = *(a1 + 96);
    v8 = v6;
    v9 = *(a1 + 56);
    objc_copyWeak(v13, (a1 + 88));
    v10 = *(a1 + 40);
    v11 = *(a1 + 32);
    v12 = *(a1 + 72);
    [v7 addDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:? block:?];

    objc_destroyWeak(v13);
  }
}

void __210__AVTViewTransitionHelper_view_performAnimateThenCrossFadeTransitionFromStickerConfiguration_toStickerConfiguration_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke_3(uint64_t a1, void *a2, double a3, double a4, uint64_t a5, _BYTE *a6)
{
  v14 = a2;
  v10 = (a3 - a4) / *(a1 + 80);
  *&a4 = fmaxf(fminf(v10, 1.0), 0.0);
  [*(a1 + 32) _solveForInput:?];
  [*(a1 + 40) setFramebufferTextureOpacity:?];
  if (*&a4 >= 1.0)
  {
    *a6 = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [AVTStickerGenerator applyViewTransitionConfiguration:"applyViewTransitionConfiguration:toView:scope:options:duration:avatar:context:completionHandler:" toView:0 scope:? options:? duration:? avatar:? context:? completionHandler:?];
    if (WeakRetained)
    {
      v12 = [WeakRetained avtRendererTechnique];
      v13 = *(a1 + 40);

      if (v12 == v13)
      {
        [WeakRetained setAvtRendererTechnique:?];
      }
    }

    if (*(a1 + 64))
    {
      dispatch_async(MEMORY[0x1E69E96A0], *(a1 + 64));
    }
  }
}

- (id)transitionTechnique
{
  transitionTechnique = self->_transitionTechnique;
  if (!transitionTechnique)
  {
    v4 = [AVTRendererViewTransitionTechnique alloc];
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v6 = [(AVTRendererViewTransitionTechnique *)v4 initWithWorldRenderer:?];
    v7 = self->_transitionTechnique;
    self->_transitionTechnique = v6;

    transitionTechnique = self->_transitionTechnique;
  }

  return transitionTechnique;
}

- (__n128)viewBackgroundColor
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3020000000;
  v16 = 0;
  v17 = 0;
  WeakRetained = objc_loadWeakRetained((self + 8));
  traitCollection = [WeakRetained traitCollection];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __46__AVTViewTransitionHelper_viewBackgroundColor__block_invoke;
  v10 = &unk_1E7F48258;
  selfCopy = self;
  v12 = &v13;
  [traitCollection performAsCurrentTraitCollection:?];

  v4 = vmulq_laneq_f32(v14[2], v14[2], 3);
  v4.i32[3] = HIDWORD(*&v14[2]);
  v6 = v4;
  v14[2] = v4;
  _Block_object_dispose(&v13, 8);
  return v6;
}

void __46__AVTViewTransitionHelper_viewBackgroundColor__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained renderer];
  v4 = [v3 backgroundColor];
  v5 = [v4 CGColor];

  *(*(*(a1 + 40) + 8) + 32) = AVTColor4WithCGColor(v5);
}

- (id)snapshotViewUsingBackgroundColor:(AVTViewTransitionHelper *)self
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  renderer = [WeakRetained renderer];

  device = [renderer device];
  [renderer _backingSize];
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [MEMORY[0x1E69741B8] texture2DDescriptorWithPixelFormat:? width:? height:? mipmapped:?];
    [v10 setStorageMode:?];
    [v10 setUsage:?];
    v11 = [device newTextureWithDescriptor:?];
    AVTMTLDeviceSupportsMemorylessStorage(device);
    v12 = objc_loadWeakRetained(&self->_view);
    v13 = [v12 antialiasingMode] - 1;

    v37 = v11;
    if (v13 > 1)
    {
      v36 = 0;
      v34 = 1;
    }

    else
    {
      [v10 setStorageMode:?];
      [v10 setUsage:?];
      [v10 setTextureType:?];
      [v10 setSampleCount:?];
      v34 = 2;
      v36 = [device newTextureWithDescriptor:?];
    }

    v14 = [MEMORY[0x1E69741B8] texture2DDescriptorWithPixelFormat:v34 width:? height:? mipmapped:?];
    [v14 setStorageMode:?];
    [v14 setUsage:?];
    [v14 setTextureType:?];
    [v14 setSampleCount:?];
    v35 = device;
    v15 = [device newTextureWithDescriptor:?];
    renderPassDescriptor = [MEMORY[0x1E6974130] renderPassDescriptor];
    colorAttachments = [renderPassDescriptor colorAttachments];
    v18 = [colorAttachments objectAtIndexedSubscript:?];
    [v18 setTexture:?];

    colorAttachments2 = [renderPassDescriptor colorAttachments];
    v20 = [colorAttachments2 objectAtIndexedSubscript:?];
    [v20 setResolveTexture:?];

    colorAttachments3 = [renderPassDescriptor colorAttachments];
    v22 = [colorAttachments3 objectAtIndexedSubscript:?];
    [v22 setLoadAction:?];

    colorAttachments4 = [renderPassDescriptor colorAttachments];
    v24 = [colorAttachments4 objectAtIndexedSubscript:?];
    [v24 setClearColor:?];

    colorAttachments5 = [renderPassDescriptor colorAttachments];
    v26 = [colorAttachments5 objectAtIndexedSubscript:?];
    [v26 setStoreAction:?];

    depthAttachment = [renderPassDescriptor depthAttachment];
    [depthAttachment setTexture:?];

    depthAttachment2 = [renderPassDescriptor depthAttachment];
    [depthAttachment2 setClearDepth:?];

    depthAttachment3 = [renderPassDescriptor depthAttachment];
    [depthAttachment3 setLoadAction:?];

    depthAttachment4 = [renderPassDescriptor depthAttachment];
    [depthAttachment4 setStoreAction:?];

    commandQueue = [renderer commandQueue];
    commandBuffer = [commandQueue commandBuffer];

    CACurrentMediaTime();
    [renderer updateAtTime:?];
    [renderer renderWithViewport:? commandBuffer:? passDescriptor:?];
    [commandBuffer commit];

    device = v35;
    v9 = v37;
  }

  return v9;
}

- (id)initWithView:(id *)view
{
  v3 = a2;
  if (view)
  {
    v6.receiver = view;
    v6.super_class = AVTViewTransitionHelper;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    view = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 1, v3);
    }
  }

  return view;
}

- (void)transitionViewToStickerConfiguration:(void *)configuration fallbackPose:(unint64_t)pose duration:(void *)duration style:(void *)style avatar:(void *)avatar completionHandler:(double)handler simultaneousAnimationsBlock:
{
  v74 = *MEMORY[0x1E69E9840];
  v16 = a2;
  configurationCopy = configuration;
  durationCopy = duration;
  styleCopy = style;
  avatarCopy = avatar;
  if (self)
  {
    avatarNode = [durationCopy avatarNode];
    if (configurationCopy)
    {
      pose = [durationCopy pose];
      v22 = [pose isEqualToPose:?];
    }

    else
    {
      v22 = 0;
    }

    v23 = self[2];
    v24 = (configurationCopy | v23) == 0;
    v25 = (v23 == v16) | v22;
    if (v16)
    {
      v24 = 0;
    }

    else
    {
      v25 = v22;
    }

    if ((v25 & 1) != 0 || v24)
    {
      v31 = avatarNode;
      if (avatarCopy)
      {
        v32 = OUTLINED_FUNCTION_3();
        v33(v32);
      }

      if (styleCopy)
      {
        styleCopy[2](styleCopy);
      }
    }

    else
    {
      v26 = v23;
      objc_storeStrong(self + 2, a2);
      v27 = self[3];
      v28 = self[3];
      self[3] = 0;

      if (!v16 && v26)
      {
        [durationCopy resetToPhysicsState:? assumeRestStateIfNil:?];
      }

      objc_opt_class();
      v62 = v26;
      if (objc_opt_isKindOfClass())
      {
        v29 = durationCopy;
        v30 = v29;
        if (v16)
        {
          v70[1] = MEMORY[0x1E69E9820];
          v70[2] = 3221225472;
          v70[3] = __145__AVTViewTransitionHelper_transitionViewToStickerConfiguration_fallbackPose_duration_style_avatar_completionHandler_simultaneousAnimationsBlock___block_invoke;
          v70[4] = &unk_1E7F48000;
          v71 = v16;
          [v30 setComponentAssetNodeObservationForStickerBlock:?];
        }

        else
        {
          [v29 setComponentAssetNodeObservationForStickerBlock:?];
        }
      }

      else
      {
        v30 = 0;
      }

      if (pose)
      {
        poseCopy = pose;
      }

      else
      {
        poseCopy = 3;
      }

      if (handler == 0.0)
      {
        [durationCopy removeDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:?];
        WeakRetained = objc_loadWeakRetained(self + 1);
        [WeakRetained setAvtRendererTechnique:?];

        if (v27)
        {
          [v27 revertChangesWithScope:? animationDuration:?];
        }

        [durationCopy stopTransitionAnimation];
        if (v16)
        {
          v36 = objc_alloc_init(AVTStickerConfigurationReversionContext);
          v37 = self[3];
          self[3] = v36;

          v38 = v30;
          v39 = objc_loadWeakRetained(self + 1);
          [AVTStickerGenerator applyViewTransitionConfiguration:"applyViewTransitionConfiguration:toView:scope:options:duration:avatar:context:completionHandler:" toView:0 scope:? options:? duration:? avatar:? context:? completionHandler:?];

          v30 = v38;
          v31 = avatarNode;
        }

        else
        {
          v31 = avatarNode;
          if (configurationCopy)
          {
            [durationCopy setPose:?];
          }
        }

        if (avatarCopy)
        {
          v42 = OUTLINED_FUNCTION_3();
          v43(v42);
        }

        if (styleCopy)
        {
          styleCopy[2](styleCopy);
        }
      }

      else
      {
        definesPoseOnly = v62;
        if (v62)
        {
          definesPoseOnly = [v62 definesPoseOnly];
          v41 = definesPoseOnly;
        }

        else
        {
          v41 = 1;
        }

        v61 = v30;
        if (v16)
        {
          definesPoseOnly = [v16 definesPoseOnly];
          v44 = definesPoseOnly;
        }

        else
        {
          v44 = 1;
        }

        if (((poseCopy != 1) & v41) == 1 && v44)
        {
          [durationCopy removeDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:?];
          v45 = objc_loadWeakRetained(self + 1);
          [v45 setAvtRendererTechnique:?];

          if (v16)
          {
            v46 = objc_alloc_init(AVTStickerConfigurationReversionContext);
            v47 = self[3];
            self[3] = v46;

            v59 = objc_loadWeakRetained(self + 1);
            v67[0] = MEMORY[0x1E69E9820];
            v67[1] = 3221225472;
            v67[2] = __145__AVTViewTransitionHelper_transitionViewToStickerConfiguration_fallbackPose_duration_style_avatar_completionHandler_simultaneousAnimationsBlock___block_invoke_2;
            v67[3] = &unk_1E7F48028;
            v68 = durationCopy;
            v60 = &v69;
            v69 = v16;
            v48 = v70;
            v70[0] = styleCopy;
            v49 = &v68;
            [AVTStickerGenerator applyViewTransitionConfiguration:"applyViewTransitionConfiguration:toView:scope:options:duration:avatar:context:completionHandler:" toView:v67 scope:? options:? duration:? avatar:? context:? completionHandler:?];
          }

          else
          {
            v49 = &v64;
            v54 = durationCopy;
            v64 = v54;
            v60 = &v65;
            v65 = configurationCopy;
            v48 = &v66;
            v66 = styleCopy;
            [v54 transitionFromPose:? toPose:? duration:? delay:? completionHandler:?];
          }

          v30 = v61;
          if (avatarCopy)
          {
            v55 = OUTLINED_FUNCTION_3();
            v56(v55);
          }

          [v27 revertChangesWithScope:? animationDuration:?];
          v31 = avatarNode;
        }

        else
        {
          if (poseCopy > 2 && ((v41 | v44) & 1) != 0)
          {
            if (poseCopy != 3)
            {
              v50 = avt_default_log(definesPoseOnly);
              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315138;
                v73 = "style == AVTViewTransitionStyleInternal3DAnimationWithFallbackTemporaryCrossFadeIfNecessary";
                _os_log_error_impl(&dword_1BB472000, v50, OS_LOG_TYPE_ERROR, "Error: Condition '%s' failed. Failed to resolve the view transition style", buf, 0xCu);
              }
            }

            v31 = avatarNode;
            if (v41)
            {
              if (v44)
              {
                v51 = avt_default_log(definesPoseOnly);
                if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  OUTLINED_FUNCTION_7(&dword_1BB472000, v51, v52, "Error: Unreachable code: Failed to start an adequate view transition", buf);
                }
              }

              else
              {
                OUTLINED_FUNCTION_4();
                [v58 view_performAnimateThenCrossFadeTransitionFromStickerConfiguration:avatarCopy toStickerConfiguration:? duration:? avatar:? avatarNode:? oldReversionContext:? completionHandler:? simultaneousAnimationsBlock:?];
              }
            }

            else
            {
              OUTLINED_FUNCTION_2_0();
              OUTLINED_FUNCTION_4();
              [v57 view_performCrossFadeThenAnimateTransitionToStickerConfiguration:? fallbackPose:? duration:? avatar:? avatarNode:? oldReversionContext:? completionHandler:? simultaneousAnimationsBlock:?];
            }
          }

          else
          {
            OUTLINED_FUNCTION_2_0();
            v31 = avatarNode;
            OUTLINED_FUNCTION_4();
            [v53 view_performCrossFadeTransitionToStickerConfiguration:? fallbackPose:? duration:? avatar:? avatarNode:? oldReversionContext:? completionHandler:? simultaneousAnimationsBlock:?];
          }

          v30 = v61;
        }
      }
    }
  }
}

- (void)transitionCoordinatorToStickerConfiguration:(unint64_t)configuration duration:(double)duration style:(uint64_t)style options:(void *)options avatar:
{
  v31 = *MEMORY[0x1E69E9840];
  v11 = a2;
  optionsCopy = options;
  v13 = optionsCopy;
  if (self)
  {
    avatarNode = [optionsCopy avatarNode];
    v15 = avatarNode;
    if (self[2])
    {
      v16 = avt_default_log(avatarNode);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v30 = "_stickerConfiguration == nil";
        _os_log_error_impl(&dword_1BB472000, v16, OS_LOG_TYPE_ERROR, "Error: Condition '%s' failed. Coordinators are not expected to transition from a previous sticker configuration", buf, 0xCu);
      }
    }

    objc_storeStrong(self + 2, a2);
    v17 = self[3];
    v18 = self[3];
    self[3] = 0;

    if (!configuration)
    {
      configuration = 3;
    }

    if (duration == 0.0)
    {
      [v13 removeDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:?];
      WeakRetained = objc_loadWeakRetained(self + 1);
      [WeakRetained setAvtRendererTechnique:?];

      if (v17)
      {
        [v17 revertChangesWithScope:? animationDuration:?];
      }

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v11)
      {
        definesPoseOnly = [v11 definesPoseOnly];
      }

      else
      {
        definesPoseOnly = 1;
      }

      if (configuration == 1 || !definesPoseOnly)
      {
        if (configuration > 2)
        {
          if (configuration == 3)
          {
            OUTLINED_FUNCTION_1_1();
            [v26 coordinator_performCrossFadeThenAnimateTransitionToStickerConfiguration:? duration:? options:? avatar:? avatarNode:? oldReversionContext:?];
          }

          else
          {
            v27 = avt_default_log(definesPoseOnly);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              OUTLINED_FUNCTION_7(&dword_1BB472000, v27, v28, "Error: Unreachable code: Failed to start an adequate view transition", buf);
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_1();
          [v25 coordinator_performCrossFadeTransitionToStickerConfiguration:? duration:? options:? avatar:? avatarNode:? oldReversionContext:?];
        }

        goto LABEL_21;
      }

      [v13 removeDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:?];
      v21 = objc_loadWeakRetained(self + 1);
      [v21 setAvtRendererTechnique:?];

      if (v17)
      {
        [v17 revertChangesWithScope:? animationDuration:?];
      }
    }

    v22 = objc_alloc_init(AVTStickerConfigurationReversionContext);
    v23 = self[3];
    self[3] = v22;

    v24 = objc_loadWeakRetained(self + 1);
    [OUTLINED_FUNCTION_6() applyViewTransitionConfiguration:0 toView:? scope:? options:? duration:? avatar:? context:? completionHandler:?];

LABEL_21:
  }
}

- (void)transitionCoordinatorOutOfStickerConfigurationWithDuration:(double)duration style:(uint64_t)style options:(void *)options avatar:
{
  optionsCopy = options;
  v8 = optionsCopy;
  if (self)
  {
    avatarNode = [optionsCopy avatarNode];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v8;
      [v10 setComponentAssetNodeObservationForStickerBlock:?];
    }

    else
    {
      v10 = 0;
    }

    v11 = *(self + 16);
    v12 = *(self + 16);
    *(self + 16) = 0;

    v13 = *(self + 24);
    v14 = *(self + 24);
    *(self + 24) = 0;

    if (!a2)
    {
      a2 = 3;
    }

    if (v11)
    {
      definesPoseOnly = [v11 definesPoseOnly];
    }

    else
    {
      definesPoseOnly = 1;
    }

    if (a2 == 1 || !definesPoseOnly)
    {
      if (a2 > 2)
      {
        if (a2 == 3)
        {
          OUTLINED_FUNCTION_5();
          [v17 coordinator_performCrossFadeThenAnimateTransitionOutOfStickerConfigurationWithDuration:? avatar:? avatarNode:? oldReversionContext:?];
        }

        else
        {
          v18 = avt_default_log(definesPoseOnly);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *v20 = 0;
            OUTLINED_FUNCTION_7(&dword_1BB472000, v18, v19, "Error: Unreachable code: Failed to start an adequate view transition", v20);
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_5();
        [v16 coordinator_performCrossFadeTransitionOutOfStickerConfigurationWithDuration:? avatar:? avatarNode:? oldReversionContext:?];
      }
    }

    else
    {
      [v13 revertChangesWithScope:? animationDuration:?];
    }
  }
}

- (void)view_performCrossFadeTransitionToStickerConfiguration:(NSObject *)a1 fallbackPose:(uint64_t)a2 duration:(uint64_t)a3 avatar:(uint64_t)a4 avatarNode:(uint64_t)a5 oldReversionContext:(uint64_t)a6 completionHandler:(uint64_t)a7 simultaneousAnimationsBlock:(uint64_t)a8 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "capturedTechnique";
}

@end