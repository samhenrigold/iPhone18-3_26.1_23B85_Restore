@interface PRRenderer
- (BOOL)scriptInterperterShouldBeginExecution:(id)execution initialStatement:(id)statement;
- (CATransform3D)createTransformation:(uint64_t)transformation@<X8> inputX:(CGFloat)x@<D0> inputY:(CGFloat)y@<D1>;
- (PRRenderer)initWithDelegate:(id)delegate;
- (PRRenderer)initWithScene:(id)scene;
- (UIView)floatingView;
- (double)_calculateRealizedAdaptiveTimeHeight;
- (double)_collectContentSizeForView:(uint64_t)view;
- (id)_actionsAfterHandlingAppIntentsHandshakeActionsInActions:(void *)actions;
- (id)_makeComplicationPreviewSceneWithSpecification:(uint64_t)specification;
- (id)_makeGraphicComplicationPreviewScene;
- (id)_makeInlineComplicationPreviewScene;
- (id)_makeSidebarComplicationPreviewScene;
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
- (id)_settingsDiffActionsForScene:(id)scene;
- (id)_stateCaptureDescription;
- (id)_viewForLevel:(id)level;
- (id)extendRenderSessionForReason:(id)reason;
- (id)extendRenderingSessionForReason:(id)reason;
- (id)extensionBundleURL;
- (uint64_t)_derivedInterfaceOrientation;
- (uint64_t)_isAmbientSupportedForRendererScene;
- (uint64_t)_isDepthEffectEffectivelyDisabled;
- (uint64_t)_isRenderingAdaptiveTime;
- (uint64_t)_markRotationComplete;
- (uint64_t)_rendererDynamicRotationIsActive;
- (void)_cleanupAfterNotifyingDelegateOfInvalidation;
- (void)_configureProminentDisplay:(uint64_t)display;
- (void)_executeSnapshotForDescriptor:(void *)descriptor outputURL:(void *)l scene:(void *)scene completion:;
- (void)_executeStatement:(uint64_t)statement;
- (void)_handleCandidateSnapshotContextsAction:(uint64_t)action;
- (void)_handleRenderingEventAction:(uint64_t)action;
- (void)_handleRenderingServiceEndpointDidChangeAction:(uint64_t)action;
- (void)_handleScriptExecutionAction:(void *)action forScene:;
- (void)_handleSnapshotAction:(void *)action forScene:;
- (void)_issueEnvironmentOverrides:(void *)overrides transition:;
- (void)_issueSceneInvalidated:(uint64_t)invalidated;
- (void)_moveViewForLevel:(uint64_t)level toLevel:;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)_reapUnusedViews;
- (void)_registerForAmbientPresentationTraitChangesIfNecessary;
- (void)_reportUpdatedEnvironmentWithTransition:(uint64_t)transition;
- (void)_updateAnimatedUnlockProgress:(double)progress;
- (void)_updateBacklightLuminanceFrom:(void *)from to:(int)to animateChanges:;
- (void)_updateContentSize;
- (void)_updateDepthEffect:(int)effect wasDepthEffectDisabled:;
- (void)_updateDepthEffectIfNeededFrom:(void *)from to:;
- (void)_updateEnvironmentForUpdatedTraitCollection;
- (void)_updateHangTracer;
- (void)_updateHeaderAndComplicationsFrom:(void *)from to:(void *)to animationSettings:;
- (void)_updateOrientationIfNeededFrom:(void *)from to:;
- (void)_updateProminentViewSizingAndTransforms:(id *)transforms;
- (void)_updateRenderingExtensions;
- (void)_updateViewsIfNeededFrom:(void *)from to:(void *)to headerAnimationSettings:(int)settings animateBacklightChanges:;
- (void)_validateCleanupResultedInThingsCleanedUpWithPrememoryUsage:(uint64_t)usage;
- (void)captureController:(id)controller needsEnvironmentUpdate:(id)update;
- (void)dealloc;
- (void)invalidateView:(id)view;
- (void)noteContentSignificantlyChanged;
- (void)scene:(id)scene didReceiveActions:(id)actions;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)scriptInterpreter:(id)interpreter executeStatement:(id)statement;
- (void)scriptInterpreterDidBeginExecution:(id)execution;
- (void)scriptInterpreterDidFinish:(id)finish;
- (void)setAttachments:(id)attachments;
- (void)updatePreferences:(id)preferences;
- (void)updateTransformWithFloating:(id)floating foreground:(id)foreground background:(id)background inputX:(double)x inputY:(double)y types:(id)types;
- (void)updatedValuesForView:(id)view;
@end

@implementation PRRenderer

- (void)_updateHangTracer
{
  if (self)
  {
    environment = [self environment];
    context = [environment context];
    if (([context scriptIsExecuting] & 1) == 0)
    {
      environment2 = [self environment];
      if (([environment2 isPreview] & 1) == 0)
      {
        environment3 = [self environment];
        if (([environment3 isSnapshot] & 1) == 0)
        {
          _FBSScene = [*(self + 264) _FBSScene];
          pui_captureController = [_FBSScene pui_captureController];
          isSnapshotting = [pui_captureController isSnapshotting];

          if ((isSnapshotting & 1) == 0)
          {
            if (*(self + 186))
            {
              return;
            }

            v20 = PRLogRendering(v6);
            if (OUTLINED_FUNCTION_15(v20))
            {
              OUTLINED_FUNCTION_4_4();
              OUTLINED_FUNCTION_3_4();
              _os_log_impl(v21, v22, v23, v24, v25, v26);
            }

            _startHangTracer = [*MEMORY[0x1E69DDA98] _startHangTracer];
            *(self + 186) = 1;
            v28 = PRLogRendering(_startHangTracer);
            if (!OUTLINED_FUNCTION_15(v28))
            {
              goto LABEL_25;
            }

            OUTLINED_FUNCTION_4_4();
            OUTLINED_FUNCTION_3_4();
            goto LABEL_24;
          }

LABEL_8:
          if (*(self + 186) != 1)
          {
            return;
          }

          v7 = PRLogRendering(v6);
          if (OUTLINED_FUNCTION_15(v7))
          {
            OUTLINED_FUNCTION_4_4();
            OUTLINED_FUNCTION_3_4();
            _os_log_impl(v8, v9, v10, v11, v12, v13);
          }

          *(self + 186) = 0;
          [*MEMORY[0x1E69DDA98] _stopHangTracer];
          environment = [self environment];
          isPreview = [environment isPreview];

          if ((isPreview & 1) == 0)
          {
            environment = [self environment];
            isSnapshot = [environment isSnapshot];

            if ((isSnapshot & 1) == 0)
            {
              environment = [self environment];
              context2 = [environment context];
              scriptIsExecuting = [context2 scriptIsExecuting];

              if ((scriptIsExecuting & 1) == 0)
              {
                environment = [*(self + 264) _FBSScene];
                pui_captureController2 = [environment pui_captureController];
                [pui_captureController2 isSnapshotting];
              }
            }
          }

          v38 = PRLogRendering(v15);
          if (!OUTLINED_FUNCTION_15(v38))
          {
            goto LABEL_25;
          }

          OUTLINED_FUNCTION_4_4();
          OUTLINED_FUNCTION_8_0();
          v34 = 22;
LABEL_24:
          _os_log_impl(v29, v30, v31, v32, v33, v34);
LABEL_25:

          return;
        }
      }
    }

    goto LABEL_8;
  }
}

- (uint64_t)_isDepthEffectEffectivelyDisabled
{
  selfCopy = self;
  if (self)
  {
    _FBSScene = [*(self + 264) _FBSScene];
    isDepthEffectDisabled = [*(selfCopy + 16) isDepthEffectDisabled];
    isDepthEffectDisallowed = [*(selfCopy + 16) isDepthEffectDisallowed];
    settings = [_FBSScene settings];
    [settings pui_deviceOrientation];
    pui_isComplicationRowConfigured = [OUTLINED_FUNCTION_12() pui_isComplicationRowConfigured];
    if (PUIFeatureEnabled())
    {
      LOBYTE(selfCopy) = isDepthEffectDisabled | isDepthEffectDisallowed;
    }

    else
    {
      LOBYTE(selfCopy) = isDepthEffectDisabled | isDepthEffectDisallowed | ((v1 - 1) < 2) & pui_isComplicationRowConfigured;
    }
  }

  return selfCopy & 1;
}

- (void)_reapUnusedViews
{
  if (self)
  {
    v2 = OUTLINED_FUNCTION_16();
    allKeys = [*(v3 + 40) allKeys];
    OUTLINED_FUNCTION_14();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          OUTLINED_FUNCTION_28();
          if (v10 != v8)
          {
            objc_enumerationMutation(allKeys);
          }

          v11 = [*(self + 40) objectForKey:*(v12 + 8 * v9)];
          if ([v11 isEmpty])
          {
            [v11 invalidate];
          }

          ++v9;
        }

        while (v7 != v9);
        OUTLINED_FUNCTION_14();
        v7 = [allKeys countByEnumeratingWithState:? objects:? count:?];
      }

      while (v7);
    }
  }
}

- (void)_updateRenderingExtensions
{
  v57 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (([*(self + 56) isActive] & 1) != 0 || (v2 = objc_msgSend(*(self + 232), "isActive"), v2))
    {
      v3 = *(self + 64);
      if (!v3 || (*(self + 72) & 1) == 0)
      {
        v4 = v3;
        ++*(self + 120);
        v5 = PRLogCommon(v4);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(self + 120);
          *buf = 134218240;
          *&buf[4] = self;
          *&buf[12] = 2048;
          *&buf[14] = v6;
          _os_log_impl(&dword_1A8AA7000, v5, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> Acquiring extended rendering assertion %lu", buf, 0x16u);
        }

        *(self + 72) = 1;
        v7 = MEMORY[0x1E69C7548];
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-%lu", *(self + 120)];
        v9 = [v7 pf_extendRenderSessionWithReason:v8];
        v10 = *(self + 64);
        *(self + 64) = v9;

        v11 = *(self + 64);
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __40__PRRenderer__updateRenderingExtensions__block_invoke;
        v52[3] = &unk_1E7845D80;
        v52[4] = self;
        [v11 acquireWithInvalidationHandler:v52];
        goto LABEL_14;
      }
    }

    else if (*(self + 64))
    {
      v12 = PRLogCommon(v2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(self + 120);
        *buf = 134218240;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = v13;
        _os_log_impl(&dword_1A8AA7000, v12, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> Dropping extended rendering assertion %lu", buf, 0x16u);
      }

      v4 = *(self + 64);
      v14 = *(self + 64);
      *(self + 64) = 0;

      *(self + 72) = 0;
LABEL_14:
      v15 = *(self + 72);
      isActive = [*(self + 56) isActive];
      _FBSScene = [*(self + 264) _FBSScene];
      v18 = isActive & v15;
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __40__PRRenderer__updateRenderingExtensions__block_invoke_225;
      v50[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
      v51 = v18;
      [_FBSScene pr_performUpdate:v50];
      role = [*(self + 16) role];
      if (!(v18 & 1 | (([role isEqual:@"PRPosterRoleLockScreen"] & 1) == 0)) && (*(self + 73) & 1) == 0)
      {
        _FBSScene2 = [*(self + 264) _FBSScene];
        pui_captureController = [_FBSScene2 pui_captureController];
        isSnapshotting = [pui_captureController isSnapshotting];

        if (isSnapshotting)
        {
          goto LABEL_17;
        }

        role = [_FBSScene settings];
        isForeground = [role isForeground];
        [*(self + 16) unlockProgress];
        if ((isForeground & BSFloatIsOne()) == 1)
        {
          *(self + 73) = 1;
          v24 = objc_opt_respondsToSelector();
          if (v24)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            v56 = 0;
            v25 = MEMORY[0x1AC573EB0](9, 0, 0, 0);
            v26 = PRLogRendering(v25);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *v53 = 134217984;
              selfCopy4 = self;
              _os_log_impl(&dword_1A8AA7000, v26, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> Memory reclamation: Posting kCARenderMetalLayerMarkPurgeable notification.", v53, 0xCu);
            }

            v28 = PRLogRendering(v27);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *v53 = 134217984;
              selfCopy4 = self;
              _os_log_impl(&dword_1A8AA7000, v28, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> Memory reclamation: Calling CABackingStoreCollect.", v53, 0xCu);
            }

            v43 = MEMORY[0x1E69E9820];
            v44 = 3221225472;
            v45 = __40__PRRenderer__updateRenderingExtensions__block_invoke_230;
            v46 = &unk_1E7845DC8;
            v49 = buf;
            v29 = v4;
            v47 = v29;
            selfCopy3 = self;
            v30 = CABackingStoreCollectWithCompletionHandler();
            v31 = PRLogRendering(v30);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *v53 = 134217984;
              selfCopy4 = self;
              _os_log_impl(&dword_1A8AA7000, v31, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> Memory reclamation: Notifying renderer delegates to drop excess resources.", v53, 0xCu);
            }

            v32 = *(self + 8);
            v39[0] = MEMORY[0x1E69E9820];
            v39[1] = 3221225472;
            v39[2] = __40__PRRenderer__updateRenderingExtensions__block_invoke_231;
            v39[3] = &unk_1E7845DC8;
            v42 = buf;
            v40 = v29;
            selfCopy5 = self;
            [v32 renderer:self shouldDropExcessResourcesWithCompletionHandler:v39];

            _Block_object_dispose(buf, 8);
          }

          else
          {
            v33 = PRLogRendering(v24);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              *&buf[4] = self;
              _os_log_impl(&dword_1A8AA7000, v33, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> Memory reclamation: Posting kCARenderMetalLayerMarkPurgeable notification.", buf, 0xCu);
            }

            v34 = MEMORY[0x1AC573EB0](9, 0, 0, 0);
            v35 = PRLogRendering(v34);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              *&buf[4] = self;
              _os_log_impl(&dword_1A8AA7000, v35, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> Memory reclamation: Posted kCARenderMetalLayerMarkPurgeable notification.", buf, 0xCu);
            }

            v37 = PRLogRendering(v36);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              *&buf[4] = self;
              _os_log_impl(&dword_1A8AA7000, v37, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> Memory reclamation: Calling CABackingStoreCollect.", buf, 0xCu);
            }

            v38 = v4;
            CABackingStoreCollectWithCompletionHandler();
          }

          goto LABEL_18;
        }
      }

LABEL_17:
      [v4 invalidate];
LABEL_18:

      return;
    }

    v4 = 0;
    goto LABEL_14;
  }
}

- (PRRenderer)initWithDelegate:(id)delegate
{
  v42[1] = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (initWithDelegate__onceToken != -1)
  {
    [PRRenderer initWithDelegate:];
  }

  v41.receiver = self;
  v41.super_class = PRRenderer;
  v6 = [(PRRenderer *)&v41 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, delegate);
    v8 = objc_opt_new();
    viewsByLevel = v7->_viewsByLevel;
    v7->_viewsByLevel = v8;

    v10 = objc_opt_new();
    sceneInvalidationActions = v7->_sceneInvalidationActions;
    v7->_sceneInvalidationActions = v10;

    v12 = objc_opt_new();
    preferences = v7->_preferences;
    v7->_preferences = v12;

    objc_initWeak(&location, v7);
    v14 = MEMORY[0x1E698E658];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __31__PRRenderer_initWithDelegate___block_invoke_2;
    v38[3] = &unk_1E7843B70;
    objc_copyWeak(&v39, &location);
    v15 = [v14 assertionWithIdentifier:@"Render Extension" stateDidChangeHandler:v38];
    sessionExtensions = v7->_sessionExtensions;
    v7->_sessionExtensions = v15;

    v17 = MEMORY[0x1E698E658];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __31__PRRenderer_initWithDelegate___block_invoke_4;
    v36[3] = &unk_1E7843B70;
    objc_copyWeak(&v37, &location);
    v18 = [v17 assertionWithIdentifier:@"Views In Use" stateDidChangeHandler:v36];
    inUseAssertion = v7->_inUseAssertion;
    v7->_inUseAssertion = v18;

    v20 = objc_alloc_init(MEMORY[0x1E69DD268]);
    unlockAnimator = v7->_unlockAnimator;
    v7->_unlockAnimator = v20;

    [(UIViewFloatAnimatableProperty *)v7->_unlockAnimator setVelocityUsableForVFD:1];
    [(UIViewFloatAnimatableProperty *)v7->_unlockAnimator setValue:0.0];
    objc_initWeak(&from, v7);
    objc_initWeak(&v34, v7->_unlockAnimator);
    v22 = MEMORY[0x1E69DD250];
    v42[0] = v7->_unlockAnimator;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __31__PRRenderer_initWithDelegate___block_invoke_6;
    v31[3] = &unk_1E7845AE0;
    objc_copyWeak(&v32, &from);
    objc_copyWeak(&v33, &v34);
    [v22 _createTransformerWithInputAnimatableProperties:v23 presentationValueChangedCallback:v31];

    v24 = [__knownRenderers count];
    if (v24)
    {
      v25 = PRLogRendering(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [PRRenderer initWithDelegate:v25];
      }
    }

    [__knownRenderers addObject:v7];
    v26 = MEMORY[0x1E69E96A0];
    objc_copyWeak(&v30, &location);
    v27 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureHandle = v7->_stateCaptureHandle;
    v7->_stateCaptureHandle = v27;

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&from);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);
  }

  return v7;
}

uint64_t __31__PRRenderer_initWithDelegate___block_invoke()
{
  v0 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  v1 = __knownRenderers;
  __knownRenderers = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __31__PRRenderer_initWithDelegate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v4, (a1 + 32));
  BSDispatchMain();
  objc_destroyWeak(&v4);
}

void __31__PRRenderer_initWithDelegate___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(PRRenderer *)WeakRetained _updateRenderingExtensions];
}

void __31__PRRenderer_initWithDelegate___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v4, (a1 + 32));
  BSDispatchMain();
  objc_destroyWeak(&v4);
}

void __31__PRRenderer_initWithDelegate___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(PRRenderer *)WeakRetained _updateRenderingExtensions];
}

void __31__PRRenderer_initWithDelegate___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2 && WeakRetained[184] == 1)
  {
    [v2 presentationValue];
    [(PRRenderer *)WeakRetained _updateAnimatedUnlockProgress:v3, v4];
  }
}

id __31__PRRenderer_initWithDelegate___block_invoke_25(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [(PRRenderer *)WeakRetained _stateCaptureDescription];

  return v2;
}

- (void)setAttachments:(id)attachments
{
  v38 = *MEMORY[0x1E69E9840];
  attachmentsCopy = attachments;
  if (![(NSArray *)self->_attachments isEqualToArray:attachmentsCopy])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = self->_attachments;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v33;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(&v32 + 1) + 8 * i), "level")}];
          v11 = [(NSMutableDictionary *)self->_viewsByLevel objectForKey:v10];
          [(NSMutableDictionary *)self->_viewsByLevel removeObjectForKey:v10];
          [v11 invalidate];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v7);
    }

    v26 = attachmentsCopy;
    v12 = [attachmentsCopy copy];
    attachments = self->_attachments;
    self->_attachments = v12;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = self->_attachments;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v28 + 1) + 8 * j);
          v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v19, "level")}];
          v21 = [(NSMutableDictionary *)self->_viewsByLevel objectForKey:v20];

          if (!v21)
          {
            v22 = [PRPosterSceneAttachmentView alloc];
            scene = self->_scene;
            level = [v19 level];
            v25 = [(PRRenderingView *)v22 initWithOwner:self scene:scene level:level dynamicRotationEnabled:[(PRRenderer *)self _rendererDynamicRotationIsActive] extensionUserInteractionEnabled:0];
            [(PRPosterSceneAttachmentView *)v25 setAttachment:v19];
            [(NSMutableDictionary *)self->_viewsByLevel setObject:v25 forKey:v20];
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v16);
    }

    attachmentsCopy = v26;
  }
}

- (void)updatePreferences:(id)preferences
{
  v55 = *MEMORY[0x1E69E9840];
  preferencesCopy = preferences;
  BSDispatchQueueAssertMain();
  salientContentRectangleUpdatesRequested = [(PRPosterPreferencesImpl *)self->_preferences salientContentRectangleUpdatesRequested];
  [(PRPosterPreferencesImpl *)self->_preferences preferredSalientContentRectangle];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = objc_opt_new();
  preferencesCopy[2](preferencesCopy, self->_preferences, v14);

  salientContentRectangleUpdatesRequested2 = [(PRPosterPreferencesImpl *)self->_preferences salientContentRectangleUpdatesRequested];
  preferredSalientContentRectangle = [(PRPosterPreferencesImpl *)self->_preferences preferredSalientContentRectangle];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  if (salientContentRectangleUpdatesRequested != salientContentRectangleUpdatesRequested2)
  {
    v25 = PRLogRendering(preferredSalientContentRectangle);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v49 = 134218240;
      selfCopy3 = self;
      v51 = 1024;
      LODWORD(v52) = salientContentRectangleUpdatesRequested2;
      _os_log_impl(&dword_1A8AA7000, v25, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> PREFERENCES; salient content rect updates updated: %{BOOL}u", &v49, 0x12u);
    }
  }

  v56.origin.x = v7;
  v56.origin.y = v9;
  v56.size.width = v11;
  v56.size.height = v13;
  v59.origin.x = v18;
  v59.origin.y = v20;
  v59.size.width = v22;
  v59.size.height = v24;
  v26 = CGRectEqualToRect(v56, v59);
  if (!v26)
  {
    v27 = PRLogRendering(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v57.origin.x = v18;
      v57.origin.y = v20;
      v57.size.width = v22;
      v57.size.height = v24;
      v28 = NSStringFromCGRect(v57);
      v49 = 134218242;
      selfCopy3 = self;
      v51 = 2114;
      v52 = v28;
      _os_log_impl(&dword_1A8AA7000, v27, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> PREFERENCES; preferredSalientContentRectangle: %{public}@", &v49, 0x16u);
    }
  }

  [(PRPosterPreferencesImpl *)self->_preferences preferredSalientContentRectangle];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  _calculateRealizedAdaptiveTimeHeight = [(PRRenderer *)&self->super.isa _calculateRealizedAdaptiveTimeHeight];
  [(UIWindowScene *)self->_scene pr_updatePreferences:self->_preferences withTransition:v14 configuredSalientRect:v30, _calculateRealizedAdaptiveTimeHeight, v34, v36 + v32 - _calculateRealizedAdaptiveTimeHeight];
  if ([(PRRenderer *)self _isRenderingAdaptiveTime])
  {
    _calculateRealizedAdaptiveTimeHeight2 = [(PRRenderer *)&self->super.isa _calculateRealizedAdaptiveTimeHeight];
    _FBSScene = [(UIWindowScene *)self->_scene _FBSScene];
    settings = [_FBSScene settings];
    v41 = [(NSDictionary *)self->_currentEnvironmentOverrides objectForKey:@"salientContentRectangle"];
    [settings pui_salientContentRectangle];
    v58.origin.y = _calculateRealizedAdaptiveTimeHeight2 + v42;
    v43 = NSStringFromCGRect(v58);
    if ((BSEqualStrings() & 1) == 0)
    {
      v44 = [(NSDictionary *)self->_currentEnvironmentOverrides mutableCopy];
      v45 = v44;
      if (v44)
      {
        v46 = v44;
      }

      else
      {
        v46 = objc_opt_new();
      }

      v47 = v46;

      v48 = PRLogRendering([v47 setObject:v43 forKeyedSubscript:@"salientContentRectangle"]);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = 134218498;
        selfCopy3 = self;
        v51 = 2112;
        v52 = v41;
        v53 = 2112;
        v54 = v43;
        _os_log_impl(&dword_1A8AA7000, v48, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> PREFERENCES adaptive time salient content rect override from %@ to %@", &v49, 0x20u);
      }

      [(PRRenderer *)self _issueEnvironmentOverrides:v47 transition:v14];
    }
  }

  [(PRRenderer *)self _reapUnusedViews];
}

- (id)extendRenderingSessionForReason:(id)reason
{
  v26 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = BSDispatchQueueAssertMain();
  if (self->_disableReentrantRenderingExtensionForMemoryReclamation)
  {
    v6 = PRLogRendering(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A8AA7000, v6, OS_LOG_TYPE_DEFAULT, "Not extending render session because disabled re-entrant rendering extension for memory reclamation.", buf, 2u);
    }

    v7 = 0;
  }

  else
  {
    reasonCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%u] %@", ++extendRenderingSessionForReason__count, reasonCopy];

    v10 = PRLogRendering(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = reasonCopy;
      _os_log_impl(&dword_1A8AA7000, v10, OS_LOG_TYPE_DEFAULT, "Extending render session for reason: %{public}@", buf, 0xCu);
    }

    v11 = [(BSCompoundAssertion *)self->_sessionExtensions acquireForReason:reasonCopy];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __46__PRRenderer_extendRenderingSessionForReason___block_invoke;
    v19[3] = &unk_1E7845B30;
    reasonCopy = reasonCopy;
    v20 = reasonCopy;
    v6 = v11;
    v21 = v6;
    v12 = MEMORY[0x1AC574C60](v19);
    v7 = [[PRRenderingSession alloc] initWithReason:reasonCopy invalidationBlock:v12];
    timeRemaining = [(PRRenderingSession *)v7 timeRemaining];
    v15 = v14;
    v16 = PRLogRendering(timeRemaining);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
      *buf = 138543618;
      v23 = reasonCopy;
      v24 = 2114;
      v25 = v17;
      _os_log_impl(&dword_1A8AA7000, v16, OS_LOG_TYPE_DEFAULT, "Extend rendering session, reason: %{public}@, %{public}@ seconds", buf, 0x16u);
    }
  }

  return v7;
}

uint64_t __46__PRRenderer_extendRenderingSessionForReason___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PRLogRendering(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1A8AA7000, v2, OS_LOG_TYPE_DEFAULT, "End rendering extension, reason: %{public}@", &v5, 0xCu);
  }

  return [*(a1 + 40) invalidate];
}

- (id)extendRenderSessionForReason:(id)reason
{
  v3 = [(PRRenderer *)self extendRenderingSessionForReason:reason];
  assertion = [v3 assertion];

  return assertion;
}

- (void)noteContentSignificantlyChanged
{
  if (self->_disconnected || self->_disconnecting)
  {
    v3 = PRLogRendering(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A8AA7000, v3, OS_LOG_TYPE_DEFAULT, "noteContentSignificantlyChanged called while disconnecting scene, skipping preference update.", buf, 2u);
    }
  }

  else
  {
    v4 = objc_opt_new();
    [v4 setContentSignificantlyChanged:1];
    [(UIWindowScene *)self->_scene pr_updatePreferences:self->_preferences withTransition:v4];
  }
}

- (CATransform3D)createTransformation:(uint64_t)transformation@<X8> inputX:(CGFloat)x@<D0> inputY:(CGFloat)y@<D1>
{
  if (result)
  {
    v8 = MEMORY[0x1E69792E8];
    v9 = *(MEMORY[0x1E69792E8] + 80);
    *(transformation + 64) = *(MEMORY[0x1E69792E8] + 64);
    *(transformation + 80) = v9;
    v10 = v8[7];
    *(transformation + 96) = v8[6];
    *(transformation + 112) = v10;
    v11 = v8[1];
    *transformation = *v8;
    *(transformation + 16) = v11;
    v12 = v8[3];
    *(transformation + 32) = v8[2];
    *(transformation + 48) = v12;
    switch(a2)
    {
      case 2:

        return CATransform3DMakeRotation(transformation, y, 1.0, 0.0, 0.0);
      case 1:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "TestMicaPoster - applying translation in PRRenderer", v13, 2u);
        }

        return CATransform3DMakeTranslation(transformation, x, y, 0.0);
      case 0:
        *(transformation + 64) = x;
        *(transformation + 72) = y;
        break;
    }
  }

  else
  {
    *(transformation + 96) = 0u;
    *(transformation + 112) = 0u;
    *(transformation + 64) = 0u;
    *(transformation + 80) = 0u;
    *(transformation + 32) = 0u;
    *(transformation + 48) = 0u;
    *transformation = 0u;
    *(transformation + 16) = 0u;
  }

  return result;
}

- (void)updateTransformWithFloating:(id)floating foreground:(id)foreground background:(id)background inputX:(double)x inputY:(double)y types:(id)types
{
  floatingCopy = floating;
  foregroundCopy = foreground;
  backgroundCopy = background;
  typesCopy = types;
  if ([typesCopy count])
  {
    v18 = 0;
    do
    {
      v19 = [typesCopy objectAtIndexedSubscript:v18];
      integerValue = [v19 integerValue];

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      [(PRRenderer *)self createTransformation:integerValue inputX:&v29 inputY:x, y];
      [MEMORY[0x1E6979518] begin];
      v25 = v33;
      v26 = v34;
      v27 = v35;
      v28 = v36;
      v21 = v29;
      v22 = v30;
      v23 = v31;
      v24 = v32;
      [floatingCopy setSublayerTransform:&v21];
      v25 = v33;
      v26 = v34;
      v27 = v35;
      v28 = v36;
      v21 = v29;
      v22 = v30;
      v23 = v31;
      v24 = v32;
      [foregroundCopy setSublayerTransform:&v21];
      v25 = v33;
      v26 = v34;
      v27 = v35;
      v28 = v36;
      v21 = v29;
      v22 = v30;
      v23 = v31;
      v24 = v32;
      [backgroundCopy setSublayerTransform:&v21];
      [MEMORY[0x1E6979518] commit];
      ++v18;
    }

    while ([typesCopy count] > v18);
  }
}

- (void)dealloc
{
  scene = self->_scene;
  if (scene && self->_ambientPresentationTraitChangeRegistration)
  {
    [(UIWindowScene *)scene unregisterForTraitChanges:?];
  }

  [(BSCompoundAssertion *)self->_sessionExtensions invalidate];
  [(BSCompoundAssertion *)self->_inUseAssertion invalidate];
  [__knownRenderers removeObject:self];
  [(BSInvalidatable *)self->_stateCaptureHandle invalidate];
  [(PRDeviceMotionRenderer *)self->_deviceMotionRenderer invalidate];
  v4.receiver = self;
  v4.super_class = PRRenderer;
  [(PRRenderer *)&v4 dealloc];
}

- (void)scene:(id)scene didReceiveActions:(id)actions
{
  v44 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  actionsCopy = actions;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = [actionsCopy countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v39;
    do
    {
      v11 = 0;
      do
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(actionsCopy);
        }

        v12 = *(*(&v38 + 1) + 8 * v11);
        v13 = objc_opt_self();
        if (objc_opt_isKindOfClass())
        {
          isValid = [v12 isValid];

          if (isValid)
          {
            if (self->_graphicComplicationScene == sceneCopy)
            {
              self->_graphicComplicationsRendered = 1;
            }

            else if (self->_sidebarComplicationScene == sceneCopy)
            {
              self->_sidebarComplicationsRendered = 1;
            }

            else if (self->_inlineComplicationScene == sceneCopy)
            {
              self->_inlineComplicationRendered = 1;
            }
          }
        }

        else
        {
        }

        ++v11;
      }

      while (v9 != v11);
      v15 = [actionsCopy countByEnumeratingWithState:&v38 objects:v43 count:16];
      v9 = v15;
    }

    while (v15);
  }

  _FBSScene = [(UIWindowScene *)self->_scene _FBSScene];
  settings = [_FBSScene settings];

  pui_isInlineComplicationConfigured = [settings pui_isInlineComplicationConfigured];
  pui_isComplicationRowConfigured = [settings pui_isComplicationRowConfigured];
  pui_isComplicationSidebarConfigured = [settings pui_isComplicationSidebarConfigured];
  pui_deviceOrientation = [settings pui_deviceOrientation];
  if ((pui_deviceOrientation - 1) < 2)
  {
    v22 = pui_isComplicationRowConfigured;
  }

  else
  {
    v22 = 0;
  }

  if ((pui_deviceOrientation - 3) < 2)
  {
    v23 = pui_isComplicationSidebarConfigured;
  }

  else
  {
    v23 = 0;
  }

  if (pui_isInlineComplicationConfigured)
  {
    inlineComplicationRendered = self->_inlineComplicationRendered;
  }

  else
  {
    inlineComplicationRendered = v22 | v23;
  }

  if ((v22 & inlineComplicationRendered) == 1)
  {
    graphicComplicationsRendered = self->_graphicComplicationsRendered;
    if (!v23)
    {
      goto LABEL_29;
    }
  }

  else
  {
    graphicComplicationsRendered = (v22 ^ 1) & inlineComplicationRendered;
    if (!v23)
    {
LABEL_29:
      if ((graphicComplicationsRendered & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_34:
      v26 = [objc_alloc(MEMORY[0x1E69C5550]) initWithInfo:0 responder:0];
      _FBSScene2 = [(UIWindowScene *)self->_scene _FBSScene];
      v28 = [MEMORY[0x1E695DFD8] setWithObject:v26];
      [_FBSScene2 sendActions:v28];

      goto LABEL_35;
    }
  }

  if ((graphicComplicationsRendered & 1) != 0 && self->_sidebarComplicationsRendered)
  {
    goto LABEL_34;
  }

LABEL_35:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  allValues = [(NSMutableDictionary *)self->_viewsByLevel allValues];
  v30 = [allValues countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v35;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v34 + 1) + 8 * i) setExtensionUserInteractionEnabled:{objc_msgSend(settings, "pui_isExtensionUserInteractionEnabled")}];
      }

      v31 = [allValues countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v31);
  }
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  v49[1] = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  if (self->_scene)
  {
    [PRRenderer scene:a2 willConnectToSession:self options:?];
  }

  v13 = optionsCopy;
  v14 = sceneCopy;
  NSClassFromString(&cfstr_Uiwindowscene.isa);
  if (!v14)
  {
    [PRRenderer scene:a2 willConnectToSession:? options:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRRenderer scene:a2 willConnectToSession:? options:?];
  }

  v16 = PRLogRendering(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A8AA7000, v16, OS_LOG_TYPE_DEFAULT, "Scene did connect", buf, 2u);
  }

  v17 = [(BSCompoundAssertion *)self->_inUseAssertion acquireForReason:@"initial renderer setup"];
  v18 = PRLogRendering(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [PRRenderer scene:willConnectToSession:options:];
  }

  v44 = v13;
  v45 = sessionCopy;

  objc_storeStrong(&self->_scene, scene);
  [(UIWindowScene *)self->_scene setDelegate:self];
  [(UIWindowScene *)self->_scene _registerSceneComponent:self forKey:@"PRRenderer"];
  scene = self->_scene;
  v49[0] = self;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
  [(UIWindowScene *)scene _registerBSActionResponderArray:v20 forKey:@"PRRenderer"];

  _FBSScene = [(UIWindowScene *)self->_scene _FBSScene];
  backlightSceneEnvironment = [_FBSScene backlightSceneEnvironment];
  [backlightSceneEnvironment setSupportsAlwaysOn:1];

  settings = [_FBSScene settings];
  v24 = PRLogTelemetrySignposts(settings);
  if (os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A8AA7000, v24, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PBF_ENV_INIT", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
  }

  kdebug_trace();
  v25 = [PRPosterEnvironmentImpl alloc];
  traitCollection = [(UIWindowScene *)self->_scene traitCollection];
  extensionBundleURL = [(PRRenderer *)self extensionBundleURL];
  v28 = [(PRPosterEnvironmentImpl *)v25 initWithSceneSettings:settings traitCollection:traitCollection targetConfig:0 extensionBundleURL:extensionBundleURL];
  environment = self->_environment;
  self->_environment = v28;

  [(PRPosterEnvironmentImpl *)self->_environment setOverrides:self->_currentEnvironmentOverrides];
  environmentSnapshot = [(PRPosterEnvironmentImpl *)self->_environment environmentSnapshot];
  [(PRRenderer *)self _updateViewsIfNeededFrom:environmentSnapshot to:0 headerAnimationSettings:0 animateBacklightChanges:?];
  preferences = self->_preferences;
  clientSettings = [_FBSScene clientSettings];
  [(PRPosterPreferencesImpl *)preferences setInitialValuesFromSettings:clientSettings];

  [(PRRenderingDelegate *)self->_delegate renderer:self didInitializeWithEnvironment:environmentSnapshot];
  v33 = PRLogTelemetrySignposts([(PRRenderer *)self didInitializeWithEnvironment:environmentSnapshot]);
  if (os_signpost_enabled(v33))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A8AA7000, v33, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PBF_ENV_INIT", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
  }

  kdebug_trace();
  [(PRRenderer *)self _updateContentSize];
  [(PRRenderer *)self _configureProminentDisplay:?];
  v34 = [PRRenderingBackdropView alloc];
  v36 = [(PRRenderingBackdropView *)v34 initWithOwner:self scene:self->_scene dynamicRotationEnabled:[(PRRenderer *)self _rendererDynamicRotationIsActive]];
  backdropView = self->_backdropView;
  self->_backdropView = v36;

  v38 = self->_backdropView;
  [(PRPosterEnvironmentImpl *)self->_environment backlightProgress];
  [(PRRenderingBackdropView *)v38 setTargetBacklightProgress:?];
  pui_sceneAttachments = [settings pui_sceneAttachments];
  [(PRRenderer *)self setAttachments:pui_sceneAttachments];

  v40 = objc_opt_respondsToSelector() & 1;
  _FBSScene2 = [v14 _FBSScene];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __49__PRRenderer_scene_willConnectToSession_options___block_invoke;
  v46[3] = &__block_descriptor_33_e39_v16__0__FBSMutableSceneClientSettings_8l;
  v47 = v40;
  [_FBSScene2 updateClientSettingsWithBlock:v46];

  [(PRRenderer *)self _registerForAmbientPresentationTraitChangesIfNecessary];
  v43 = PRLogRendering(v42);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    [PRRenderer scene:willConnectToSession:options:];
  }

  [v17 invalidate];
}

void __49__PRRenderer_scene_willConnectToSession_options___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 pui_setWantsSuitableSnapshotChecks:v2];
  [v3 pui_setDidFinishInitialization:1];
}

- (void)_registerForAmbientPresentationTraitChangesIfNecessary
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    isAmbientSupportedForRenderer = [(PRRenderer *)self _isAmbientSupportedForRendererScene];
    if (isAmbientSupportedForRenderer)
    {
      v3 = PRLogRendering(isAmbientSupportedForRenderer);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        [PRRenderer _registerForAmbientPresentationTraitChangesIfNecessary];
      }

      objc_initWeak(&location, self);
      v4 = self[33];
      v5 = objc_opt_self();
      v13[0] = v5;
      v6 = objc_opt_self();
      v13[1] = v6;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __68__PRRenderer__registerForAmbientPresentationTraitChangesIfNecessary__block_invoke;
      v10[3] = &unk_1E7845E38;
      objc_copyWeak(&v11, &location);
      v8 = [v4 registerForTraitChanges:v7 withHandler:v10];
      v9 = self[25];
      self[25] = v8;

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_issueSceneInvalidated:(uint64_t)invalidated
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (invalidated)
  {
    BSDispatchQueueAssertMain();
    [*(invalidated + 216) invalidate];
    v4 = *(invalidated + 216);
    *(invalidated + 216) = 0;

    v6 = PRLogRendering(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      invalidatedCopy12 = invalidated;
      v62 = 1024;
      *v63 = v3 != 0;
      _os_log_impl(&dword_1A8AA7000, v6, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> _issueSceneInvalidated called w/ scene invalidation action: %{BOOL}u", buf, 0x12u);
    }

    if ((*(invalidated + 24) & 1) != 0 || *(invalidated + 25) == 1)
    {
      v8 = PRLogRendering(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(invalidated + 24);
        v10 = *(invalidated + 25);
        *buf = 134218496;
        invalidatedCopy12 = invalidated;
        v62 = 1024;
        *v63 = v9;
        *&v63[4] = 1024;
        *&v63[6] = v10;
        _os_log_impl(&dword_1A8AA7000, v8, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> _issueSceneInvalidated called while disconnected (%{BOOL}u) or disconnecting (%{BOOL}u)", buf, 0x18u);
      }

      if (v3 && (*(invalidated + 24) & 1) != 0)
      {
        v12 = PRLogRendering(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(invalidated + 24);
          *buf = 134218240;
          invalidatedCopy12 = invalidated;
          v62 = 1024;
          *v63 = v13;
          _os_log_impl(&dword_1A8AA7000, v12, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> _issueSceneInvalidated called while disconnected (%{BOOL}u); will fire sceneInvalidationAction immediately", buf, 0x12u);
        }

        v14 = MEMORY[0x1E698E600];
        v15 = MEMORY[0x1E696ABC0];
        v58 = *MEMORY[0x1E696A588];
        v59 = @"Scene already disconnected";
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v17 = [v15 pr_errorWithCode:5 userInfo:v16];
        v18 = [v14 responseForError:v17];
        [v3 sendResponse:v18];
      }

      else if (v3 && (*(invalidated + 25) & 1) != 0)
      {
        v19 = PRLogRendering(v11);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(invalidated + 24);
          *buf = 134218240;
          invalidatedCopy12 = invalidated;
          v62 = 1024;
          *v63 = v20;
          _os_log_impl(&dword_1A8AA7000, v19, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> _issueSceneInvalidated called while disconnecting (%{BOOL}u); will enqueue sceneInvalidationAction for calling after disconnected", buf, 0x12u);
        }

        v11 = [*(invalidated + 32) addObject:v3];
      }

      if (*(invalidated + 8) || *(invalidated + 264))
      {
        v21 = PRLogRendering(v11);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          invalidatedCopy12 = invalidated;
          _os_log_impl(&dword_1A8AA7000, v21, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> _issueSceneInvalidated cleaning issuing poster invalidation cleanup because things are in an inconsistent state", buf, 0xCu);
        }

        [(PRRenderer *)invalidated _cleanupAfterNotifyingDelegateOfInvalidation];
      }

      v22 = PRLogRendering(v11);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        invalidatedCopy12 = invalidated;
        _os_log_impl(&dword_1A8AA7000, v22, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> Scene already disconnected; bailing", buf, 0xCu);
      }
    }

    else
    {
      v23 = PRLogRendering(v7);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        invalidatedCopy12 = invalidated;
        _os_log_impl(&dword_1A8AA7000, v23, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> _issueSceneInvalidated; Acquiring runtime assertion to allow for invalidation", buf, 0xCu);
      }

      v24 = [MEMORY[0x1E69C7548] pf_extendRenderSessionWithReason:@"Invalidation"];
      objc_initWeak(&location, invalidated);
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __37__PRRenderer__issueSceneInvalidated___block_invoke;
      v55[3] = &unk_1E7845B58;
      objc_copyWeak(&v56, &location);
      [v24 acquireWithInvalidationHandler:v55];
      v25 = [objc_alloc(MEMORY[0x1E698E610]) initWithFlag:0];
      v26 = PRGetMemoryUsageForCurrentProcess();
      v27 = PRLogRendering(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        invalidatedCopy12 = invalidated;
        v62 = 2048;
        *v63 = v26;
        _os_log_impl(&dword_1A8AA7000, v27, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> _issueSceneInvalidated; Memory usage prior to invalidation: %llu", buf, 0x16u);
      }

      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __37__PRRenderer__issueSceneInvalidated___block_invoke_85;
      v49[3] = &unk_1E7845B80;
      v49[4] = invalidated;
      v28 = v25;
      v50 = v28;
      v53 = sel__issueSceneInvalidated_;
      v51 = v3;
      v54 = v26;
      v22 = v24;
      v52 = v22;
      v29 = MEMORY[0x1AC574C60](v49);
      v30 = objc_opt_respondsToSelector();
      if (v30)
      {
        v31 = PRLogRendering(v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          invalidatedCopy12 = invalidated;
          _os_log_impl(&dword_1A8AA7000, v31, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> Scene is disconnecting (async)", buf, 0xCu);
        }

        *(invalidated + 25) = 1;
        v32 = objc_autoreleasePoolPush();
        Current = CFAbsoluteTimeGetCurrent();
        v34 = *(invalidated + 8);
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __37__PRRenderer__issueSceneInvalidated___block_invoke_92;
        v45[3] = &unk_1E7845BD0;
        v45[4] = invalidated;
        v48 = Current;
        v35 = v29;
        v47 = v35;
        v46 = v22;
        [v34 rendererDidInvalidate:invalidated completion:v45];
        v36 = dispatch_time(0, 8000000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __37__PRRenderer__issueSceneInvalidated___block_invoke_94;
        block[3] = &unk_1E7845BF8;
        v42 = v28;
        invalidatedCopy10 = invalidated;
        v44 = v35;
        dispatch_after(v36, MEMORY[0x1E69E96A0], block);

        objc_autoreleasePoolPop(v32);
      }

      else
      {
        *(invalidated + 24) = 1;
        v37 = PRLogRendering(v30);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          invalidatedCopy12 = invalidated;
          _os_log_impl(&dword_1A8AA7000, v37, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> Scene disconnection (sync)", buf, 0xCu);
        }

        v38 = objc_autoreleasePoolPush();
        [*(invalidated + 8) rendererDidInvalidate:invalidated];
        [(PRRenderer *)invalidated _cleanupAfterNotifyingDelegateOfInvalidation];
        objc_autoreleasePoolPop(v38);
        v40 = PRLogRendering(v39);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          invalidatedCopy12 = invalidated;
          _os_log_impl(&dword_1A8AA7000, v40, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> Scene did disconnect (sync)", buf, 0xCu);
        }

        v29[2](v29, 0);
      }

      objc_destroyWeak(&v56);
      objc_destroyWeak(&location);
    }
  }
}

void __37__PRRenderer__issueSceneInvalidated___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRLogRendering(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = 134218242;
    v8 = WeakRetained;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1A8AA7000, v5, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> _issueSceneInvalidated; Runtime assertion to allow for invalidation: %{public}@", &v7, 0x16u);
  }
}

void __37__PRRenderer__issueSceneInvalidated___block_invoke_85(uint64_t a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = PRLogRendering(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 134218240;
    v24 = v5;
    v25 = 1024;
    v26 = a2;
    _os_log_impl(&dword_1A8AA7000, v4, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> Invalidation completion block was called; didTimeOut: %{BOOL}u", buf, 0x12u);
  }

  v6 = [*(a1 + 40) setFlag:1];
  if (v6)
  {
    if (a2)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<PRRenderer %p> did not call the completion block.  Aborting.", *(a1 + 32), 1];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __37__PRRenderer__issueSceneInvalidated___block_invoke_85_cold_2(a1, (a1 + 32), v17);
      }

      [v17 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
    }

    else
    {
      v8 = PRLogRendering(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        *buf = 134217984;
        v24 = v9;
        _os_log_impl(&dword_1A8AA7000, v8, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> Invalidation completion block marked completed", buf, 0xCu);
      }

      *(*(a1 + 32) + 25) = 0;
      *(*(a1 + 32) + 24) = 1;
      v10 = [MEMORY[0x1E698E600] response];
      v11 = *(a1 + 48);
      if (v11)
      {
        [v11 sendResponse:v10];
      }

      if ([*(*(a1 + 32) + 32) count])
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v12 = *(*(a1 + 32) + 32);
        v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v19;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v19 != v15)
              {
                objc_enumerationMutation(v12);
              }

              [*(*(&v18 + 1) + 8 * i) sendResponse:v10];
            }

            v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
          }

          while (v14);
        }

        [*(*(a1 + 32) + 32) removeAllObjects];
      }

      [(PRRenderer *)*(a1 + 32) _validateCleanupResultedInThingsCleanedUpWithPrememoryUsage:?];

      [*(a1 + 56) invalidate];
    }
  }

  else
  {
    v7 = PRLogRendering(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __37__PRRenderer__issueSceneInvalidated___block_invoke_85_cold_1(a1, v7);
    }
  }
}

uint64_t __37__PRRenderer__issueSceneInvalidated___block_invoke_93(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PRLogRendering(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1A8AA7000, v2, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> Scene is disconnected (async); sending external invalidation completion", &v5, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
  return [*(a1 + 40) invalidate];
}

uint64_t __37__PRRenderer__issueSceneInvalidated___block_invoke_94(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) getFlag];
  if ((result & 1) == 0)
  {
    v3 = PRLogRendering(result);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = 134218240;
      v6 = v4;
      v7 = 2048;
      v8 = 0x4020000000000000;
      _os_log_impl(&dword_1A8AA7000, v3, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> Scene disconnection (async) timedout after %f seconds", &v5, 0x16u);
    }

    return (*(*(a1 + 48) + 16))();
  }

  return result;
}

- (PRRenderer)initWithScene:(id)scene
{
  sceneCopy = scene;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this should not be called"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = 138544642;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2048;
    selfCopy = self;
    v17 = 2114;
    v18 = @"PRRenderer.m";
    v19 = 1024;
    v20 = 786;
    v21 = 2114;
    v22 = v6;
    _os_log_error_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
  }

  [v6 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)_settingsDiffActionsForScene:(id)scene
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = self;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  v158 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  sSceneCopy = sScene;
  diffCopy = diff;
  settingsCopy = settings;
  contextCopy = context;
  if (self->_disconnected || self->_disconnecting)
  {
    goto LABEL_3;
  }

  v114 = a2;
  v117 = settingsCopy == 0;
  settings = [sSceneCopy settings];
  if (!(diffCopy | settingsCopy))
  {
    diffCopy = [MEMORY[0x1E699FC30] diffFromSettings:0 toSettings:settings];
  }

  LODWORD(v115) = [settings pui_isWallpaperObscured] ^ 1;
  if ((v115 & 1) == 0)
  {
    [contextCopy setAnimationSettings:0];
  }

  v124 = objc_opt_new();
  if (-[PRRenderer _rendererDynamicRotationIsActive](self, v20) && ([contextCopy animationSettings], v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
  {
    v23 = MEMORY[0x1E698E608];
    animationSettings = [contextCopy animationSettings];
    [animationSettings duration];
    v26 = v25;
    v27 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    animationSettings2 = [v23 settingsWithDuration:v27 timingFunction:v26];
  }

  else
  {
    animationSettings2 = [contextCopy animationSettings];
  }

  [v124 setAnimationSettings:animationSettings2];

  actions = [contextCopy actions];
  v28 = [(PRRenderer *)self _actionsAfterHandlingAppIntentsHandshakeActionsInActions:actions];
  allObjects = [v28 allObjects];
  [v124 setActions:allObjects];

  [v124 setSignificantEvent:{objc_msgSend(contextCopy, "pui_significantEvent")}];
  [v124 setSettingsDiff:diffCopy];
  p_environment = &self->_environment;
  environmentSnapshot = [(PRPosterEnvironmentImpl *)self->_environment environmentSnapshot];
  v128 = objc_opt_new();
  v118 = sSceneCopy;
  v119 = sceneCopy;
  v120 = environmentSnapshot;
  v121 = settingsCopy;
  v123 = contextCopy;
  selfCopy = self;
  if (diffCopy)
  {
    scene = self->_scene;
    v32 = objc_opt_class();
    sceneCopy2 = scene;
    if (v32)
    {
      if (objc_opt_isKindOfClass())
      {
        v34 = sceneCopy2;
      }

      else
      {
        v34 = 0;
      }
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;

    traitCollection = [(UIWindowScene *)v35 traitCollection];

    v112 = traitCollection;
    if (*p_environment)
    {
      [(PRPosterEnvironmentImpl *)*p_environment updateFromSceneSettings:settings traitCollection:traitCollection overrides:self->_currentEnvironmentOverrides, traitCollection, v114, v115];
    }

    else
    {
      [PRRenderer _performActionsForUIScene:settings withUpdatedFBSScene:traitCollection settingsDiff:p_environment fromSettings:? transitionContext:? lifecycleActionType:?];
    }

    [v124 setSettingsDiff:{diffCopy, v112}];
    pui_sceneAttachments = [settings pui_sceneAttachments];
    [(PRRenderer *)self setAttachments:pui_sceneAttachments];

    v39 = PRValidRenderingTransitionTypes(v38);
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v40 = [v39 countByEnumeratingWithState:&v149 objects:v157 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v150;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v150 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v149 + 1) + 8 * i);
          v45 = SceneSettingForPRRenderingTransitionType(v44);
          if ([diffCopy pui_inspect:v45])
          {
            v46 = diffCopy;
            v47 = settings;
            otherSettings = [settings otherSettings];
            v49 = [otherSettings objectForSetting:v45];
            v50 = objc_opt_class();
            v51 = v49;
            if (v50)
            {
              if (objc_opt_isKindOfClass())
              {
                v52 = v51;
              }

              else
              {
                v52 = 0;
              }
            }

            else
            {
              v52 = 0;
            }

            v53 = v52;

            if (v53)
            {
              v55 = PRLogRendering(v54);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543618;
                *&buf[4] = v44;
                *&buf[12] = 2114;
                *&buf[14] = v53;
                _os_log_debug_impl(&dword_1A8AA7000, v55, OS_LOG_TYPE_DEBUG, "PRRenderingTransitionType '%{public}@' state update to %{public}@", buf, 0x16u);
              }

              [v128 addObject:v53];
            }

            settings = v47;
            diffCopy = v46;
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v149 objects:v157 count:16];
      }

      while (v41);
    }

    environmentSnapshot = v120;
    settingsCopy = v121;
    contextCopy = v123;
    self = selfCopy;
  }

  *buf = *MEMORY[0x1E695F060];
  v56 = [contextCopy pr_finishUnlockingWithParameters:buf];
  if (self->_animatingUnlock && v56)
  {
    v57 = PRLogRendering(v56);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      [PRRenderer _performActionsForUIScene:withUpdatedFBSScene:settingsDiff:fromSettings:transitionContext:lifecycleActionType:];
    }

    goto LABEL_74;
  }

  if (v56)
  {
    if (self->_animatingUnlock)
    {
      [PRRenderer _performActionsForUIScene:v114 withUpdatedFBSScene:? settingsDiff:? fromSettings:? transitionContext:? lifecycleActionType:?];
    }

    self->_animatingUnlock = 1;
    v58 = PRLogTelemetrySignposts(v56);
    if (os_signpost_enabled(v58))
    {
      *v154 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A8AA7000, v58, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PBF_UNLOCK_PROGRESS", " enableTelemetry=YES  isAnimation=YES ", v154, 2u);
    }

    kdebug_trace();
    self->_interruptedUnlock = 0;
    v59 = [(PRRenderer *)self extendRenderingSessionForReason:@"FinishUnlock"];
    unlockToken = self->_unlockToken;
    self->_unlockToken = v59;

    v147[4] = self;
    v148[0] = MEMORY[0x1E69E9820];
    v148[1] = 3221225472;
    v148[2] = __124__PRRenderer__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke;
    v148[3] = &unk_1E7843688;
    v148[4] = self;
    v147[0] = MEMORY[0x1E69E9820];
    v147[1] = 3221225472;
    v147[2] = __124__PRRenderer__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke_3;
    v147[3] = &unk_1E78453B0;
    [MEMORY[0x1E69DD250] _animateUsingSpringWithTension:0 friction:v148 interactive:v147 animations:*buf completion:*&buf[8]];
    goto LABEL_74;
  }

  [settings pr_unlockProgress];
  v62 = v61;
  pr_unlockProgressDidChange = [diffCopy pr_unlockProgressDidChange];
  if (self->_animatingUnlock)
  {
    if (pr_unlockProgressDidChange)
    {
      pr_unlockProgress = [settingsCopy pr_unlockProgress];
      if (v62 < v65)
      {
        v66 = PRLogRendering(pr_unlockProgress);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *v154 = 134217984;
          selfCopy2 = self;
          _os_log_impl(&dword_1A8AA7000, v66, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> Interrupting animated unlock!", v154, 0xCu);
        }

        *&self->_animatingUnlock = 256;
        unlockAnimator = self->_unlockAnimator;
        [(UIViewFloatAnimatableProperty *)unlockAnimator presentationValue];
        [(UIViewFloatAnimatableProperty *)unlockAnimator setValue:?];
        goto LABEL_74;
      }
    }

    v79 = *p_environment;
    [environmentSnapshot unlockProgress];
    environment = v79;
    goto LABEL_73;
  }

  if (pr_unlockProgressDidChange)
  {
    v68 = PRLogRendering(pr_unlockProgressDidChange);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
    {
      [PRRenderer _performActionsForUIScene:v68 withUpdatedFBSScene:v69 settingsDiff:v62 fromSettings:? transitionContext:? lifecycleActionType:?];
    }

    if (self->_interruptedUnlock)
    {
      [(UIViewFloatAnimatableProperty *)self->_unlockAnimator value];
      v71 = v70;
      [settingsCopy pr_unlockProgress];
      v73 = v62 - v72;
      v74 = 0.0;
      if (v62 - v72 <= 0.0)
      {
        v75 = 0.0;
      }

      else
      {
        v75 = 1.0;
      }

      v76 = v75 - v62;
      if ((BSFloatIsZero() & 1) == 0)
      {
        v74 = (v75 - v71) / v76;
      }

      if (BSFloatIsZero())
      {
        v62 = v75;
      }

      else
      {
        v62 = v71 + v73 * v74;
      }

      if ((BSFloatIsZero() & 1) != 0 || BSFloatIsOne())
      {
        self->_interruptedUnlock = 0;
      }
    }

    [(UIViewFloatAnimatableProperty *)self->_unlockAnimator setValue:v62];
    environment = self->_environment;
    v78 = v62;
LABEL_73:
    [(PRPosterEnvironmentImpl *)environment setUnlockProgress:v78];
  }

LABEL_74:
  [(PRPosterEnvironmentImpl *)self->_environment setOverrides:self->_currentEnvironmentOverrides];
  role = [(PRPosterEnvironmentImpl *)self->_environment role];
  v81 = [role isEqual:@"PRPosterRoleLockScreen"];

  if (v81)
  {
    [(PRRenderer *)self updatePreferences:&__block_literal_global_115];
  }

  environmentSnapshot2 = [(PRPosterEnvironmentImpl *)self->_environment environmentSnapshot];
  animationSettings3 = [contextCopy animationSettings];
  [(PRRenderer *)self _updateViewsIfNeededFrom:environmentSnapshot to:environmentSnapshot2 headerAnimationSettings:animationSettings3 animateBacklightChanges:v115];

  effectiveMotionEffectsMode = [environmentSnapshot effectiveMotionEffectsMode];
  effectiveMotionEffectsMode2 = [environmentSnapshot2 effectiveMotionEffectsMode];
  [environmentSnapshot userTapLocation];
  v86 = v85;
  v88 = v87;
  [environmentSnapshot2 userTapLocation];
  v90 = v89;
  v92 = v91;
  userTapEventsCounter = [environmentSnapshot userTapEventsCounter];
  v126 = environmentSnapshot2;
  if (userTapEventsCounter == [environmentSnapshot2 userTapEventsCounter] && v90 == v86 && v92 == v88)
  {
    v94 = 0;
    v90 = *MEMORY[0x1E695EFF8];
    v92 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    v94 = 1;
  }

  v145 = 0u;
  v146 = 0u;
  v144 = 0u;
  v143 = 0u;
  allValues = [(NSMutableDictionary *)self->_viewsByLevel allValues];
  v96 = [allValues countByEnumeratingWithState:&v143 objects:v153 count:16];
  if (v96)
  {
    v97 = v96;
    v98 = *v144;
    do
    {
      for (j = 0; j != v97; ++j)
      {
        if (*v144 != v98)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v143 + 1) + 8 * j) setExtensionUserInteractionEnabled:{objc_msgSend(settings, "pui_isExtensionUserInteractionEnabled")}];
      }

      v97 = [allValues countByEnumeratingWithState:&v143 objects:v153 count:16];
    }

    while (v97);
  }

  v131 = MEMORY[0x1E69E9820];
  v132 = 3221225472;
  v133 = __124__PRRenderer__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke_2_116;
  v134 = &unk_1E7845C40;
  v140 = v117;
  v135 = selfCopy;
  v100 = v124;
  v136 = v100;
  v141 = effectiveMotionEffectsMode != effectiveMotionEffectsMode2;
  v142 = v94;
  v138 = v90;
  v139 = v92;
  v101 = v128;
  v137 = v101;
  _UISceneSettingsDiffActionPerformChangesWithTransitionContext();
  pui_isInvalidated = [settings pui_isInvalidated];
  sceneCopy = v119;
  if (pui_isInvalidated)
  {
    v103 = PRLogRendering(pui_isInvalidated);
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      *v154 = 134217984;
      selfCopy2 = selfCopy;
      _os_log_impl(&dword_1A8AA7000, v103, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> issuing scene settings invalidation", v154, 0xCu);
    }

    otherSettings2 = [settings otherSettings];
    v105 = [otherSettings2 objectForSetting:20469];

    [(PRRenderer *)selfCopy _issueSceneInvalidated:v105];
  }

  [(PRPosterEnvironmentImpl *)*p_environment unlockProgress];
  IsOne = BSFloatIsOne();
  role2 = [(PRPosterEnvironmentImpl *)*p_environment role];
  v108 = [role2 isEqual:@"PRPosterRoleLockScreen"];

  if (v108 && IsOne)
  {
    v109 = [(PRRenderer *)selfCopy extendRenderingSessionForReason:@"delaySuspend"];
    v110 = MEMORY[0x1E6979518];
    v129[0] = MEMORY[0x1E69E9820];
    v129[1] = 3221225472;
    v129[2] = __124__PRRenderer__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke_124;
    v129[3] = &unk_1E7843688;
    v130 = v109;
    v111 = v109;
    [v110 bs_performAfterSynchronizedCommit:v129];
  }

  sSceneCopy = v118;
  settingsCopy = v121;
  contextCopy = v123;
LABEL_3:
}

uint64_t __124__PRRenderer__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __124__PRRenderer__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke_2;
  v4[3] = &unk_1E7843688;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:2490370 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

void __124__PRRenderer__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke_3(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v19 = *MEMORY[0x1E69E9840];
  v6 = BSDispatchQueueAssertMain();
  v7 = PRLogRendering(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    v13 = 134218496;
    v14 = v12;
    v15 = 1024;
    v16 = v4;
    v17 = 1024;
    v18 = a3;
    _os_log_debug_impl(&dword_1A8AA7000, v7, OS_LOG_TYPE_DEBUG, "<PRRenderer %p> Unlock animator complete! %d/%d", &v13, 0x18u);
  }

  *(*(a1 + 32) + 184) = 0;
  v9 = PRLogTelemetrySignposts(v8);
  if (os_signpost_enabled(v9))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A8AA7000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PBF_UNLOCK_PROGRESS", " enableTelemetry=YES  isAnimation=YES ", &v13, 2u);
  }

  kdebug_trace();
  [*(*(a1 + 32) + 88) invalidate];
  v10 = *(a1 + 32);
  v11 = *(v10 + 88);
  *(v10 + 88) = 0;
}

void __124__PRRenderer__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke_124(uint64_t a1)
{
  v2 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __124__PRRenderer__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke_2_125;
  block[3] = &unk_1E7843688;
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

- (void)_updateOrientationIfNeededFrom:(void *)from to:
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  fromCopy = from;
  if (self)
  {
    deviceOrientation = [v5 deviceOrientation];
    if (deviceOrientation != [fromCopy deviceOrientation])
    {
      deviceOrientation2 = [v5 deviceOrientation];
      deviceOrientation3 = [fromCopy deviceOrientation];
      v10 = PRLogRendering(deviceOrientation3);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        switch(deviceOrientation2)
        {
          case 1:
            v11 = @"UIInterfaceOrientationPortrait";
            break;
          case 3:
            v11 = @"UIInterfaceOrientationLandscapeRight";
            break;
          case 4:
            v11 = @"UIInterfaceOrientationLandscapeLeft";
            break;
          default:
            v11 = @"UIInterfaceOrientationPortraitUpsideDown";
            if (deviceOrientation2 != 2)
            {
              v11 = 0;
            }

            break;
        }

        switch(deviceOrientation3)
        {
          case 1:
            v12 = @"UIInterfaceOrientationPortrait";
            break;
          case 3:
            v12 = @"UIInterfaceOrientationLandscapeRight";
            break;
          case 4:
            v12 = @"UIInterfaceOrientationLandscapeLeft";
            break;
          default:
            v12 = @"UIInterfaceOrientationPortraitUpsideDown";
            if (deviceOrientation3 != 2)
            {
              v12 = 0;
            }

            break;
        }

        *buf = 134218498;
        selfCopy2 = self;
        v28 = 2114;
        v29 = v11;
        v30 = 2114;
        v31 = v12;
        _os_log_impl(&dword_1A8AA7000, v10, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> Scene Orientation has updated from %{public}@ -> %{public}@", buf, 0x20u);
      }
    }

    deviceOrientation4 = [v5 deviceOrientation];
    if (deviceOrientation4 != [fromCopy deviceOrientation])
    {
      deviceOrientation5 = [v5 deviceOrientation];
      deviceOrientation6 = [fromCopy deviceOrientation];
      v16 = PRLogRendering(deviceOrientation6);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        switch(deviceOrientation5)
        {
          case 1:
            v17 = @"UIInterfaceOrientationPortrait";
            break;
          case 3:
            v17 = @"UIInterfaceOrientationLandscapeRight";
            break;
          case 4:
            v17 = @"UIInterfaceOrientationLandscapeLeft";
            break;
          default:
            v17 = @"UIInterfaceOrientationPortraitUpsideDown";
            if (deviceOrientation5 != 2)
            {
              v17 = 0;
            }

            break;
        }

        switch(deviceOrientation6)
        {
          case 1:
            v18 = @"UIInterfaceOrientationPortrait";
            break;
          case 3:
            v18 = @"UIInterfaceOrientationLandscapeRight";
            break;
          case 4:
            v18 = @"UIInterfaceOrientationLandscapeLeft";
            break;
          default:
            v18 = @"UIInterfaceOrientationPortraitUpsideDown";
            if (deviceOrientation6 != 2)
            {
              v18 = 0;
            }

            break;
        }

        *buf = 134218498;
        selfCopy2 = self;
        v28 = 2114;
        v29 = v17;
        v30 = 2114;
        v31 = v18;
        _os_log_impl(&dword_1A8AA7000, v16, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> Device Orientation has updated from %{public}@ -> %{public}@", buf, 0x20u);
      }

      ++self[24];
      if ((deviceOrientation5 - 3) >= 2)
      {
        v19 = 0.5;
        if (((deviceOrientation5 - 1) | (deviceOrientation6 - 1)) >= 2)
        {
LABEL_46:
          v20 = [self extendRenderingSessionForReason:@"RotationAnimations"];
          objc_initWeak(buf, self);
          v21 = MEMORY[0x1E6979518];
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __48__PRRenderer__updateOrientationIfNeededFrom_to___block_invoke;
          v23[3] = &unk_1E7845C68;
          v25[1] = *&v19;
          v22 = v20;
          v24 = v22;
          objc_copyWeak(v25, buf);
          [v21 bs_performAfterSynchronizedCommit:v23];
          objc_destroyWeak(v25);

          objc_destroyWeak(buf);
          goto LABEL_47;
        }
      }

      else
      {
        v19 = 0.5;
        if ((deviceOrientation6 - 3) > 1)
        {
          goto LABEL_46;
        }
      }

      v19 = 0.9;
      goto LABEL_46;
    }
  }

LABEL_47:
}

void __62__PRRenderer__updateBacklightLuminanceFrom_to_animateChanges___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 80);
  if (v3 == v2)
  {
    [v3 invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 80);
    *(v4 + 80) = 0;
  }
}

void __48__PRRenderer__updateOrientationIfNeededFrom_to___block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__PRRenderer__updateOrientationIfNeededFrom_to___block_invoke_2;
  v3[3] = &unk_1E7845A88;
  v4 = *(a1 + 32);
  objc_copyWeak(&v5, (a1 + 40));
  dispatch_after(v2, MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v5);
}

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  v48 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  sceneCopy = scene;
  v39 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = actionsCopy;
  v8 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v44;
    do
    {
      v11 = 0;
      do
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v43 + 1) + 8 * v11);
        v13 = objc_opt_class();
        v14 = v12;
        if (v13)
        {
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        if (v16)
        {
          [(PRRenderer *)self _handleRenderingEventAction:v16];
        }

        else
        {
          v17 = objc_opt_class();
          v18 = v14;
          if (v17)
          {
            if (objc_opt_isKindOfClass())
            {
              v19 = v18;
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = 0;
          }

          v20 = v19;

          if (v20)
          {
            [(PRRenderer *)self _handleCandidateSnapshotContextsAction:v20];
          }

          else
          {
            v21 = objc_opt_class();
            v22 = v18;
            if (v21)
            {
              if (objc_opt_isKindOfClass())
              {
                v23 = v22;
              }

              else
              {
                v23 = 0;
              }
            }

            else
            {
              v23 = 0;
            }

            v24 = v23;

            if (v24)
            {
              [(PRRenderer *)self _handleSnapshotAction:v24 forScene:sceneCopy];
            }

            else
            {
              v25 = objc_opt_class();
              v26 = v22;
              if (v25)
              {
                if (objc_opt_isKindOfClass())
                {
                  v27 = v26;
                }

                else
                {
                  v27 = 0;
                }
              }

              else
              {
                v27 = 0;
              }

              v28 = v27;

              if (v28)
              {
                pui_captureController = [sceneCopy pui_captureController];
                [pui_captureController handleSceneSnapshotReadinessAction:v28];
              }

              else
              {
                v30 = objc_opt_class();
                v31 = v26;
                if (v30)
                {
                  if (objc_opt_isKindOfClass())
                  {
                    v32 = v31;
                  }

                  else
                  {
                    v32 = 0;
                  }
                }

                else
                {
                  v32 = 0;
                }

                pui_captureController = v32;

                if (pui_captureController)
                {
                  [(PRRenderer *)self _handleScriptExecutionAction:pui_captureController forScene:sceneCopy];
                }

                else
                {
                  v33 = objc_opt_class();
                  v34 = v31;
                  if (v33)
                  {
                    if (objc_opt_isKindOfClass())
                    {
                      v35 = v34;
                    }

                    else
                    {
                      v35 = 0;
                    }
                  }

                  else
                  {
                    v35 = 0;
                  }

                  v36 = v35;

                  if (v36)
                  {
                    [(PRRenderer *)self _handleRenderingServiceEndpointDidChangeAction:v36];
                  }

                  else if (![(PRPosterScriptInterpreter *)self->_scriptInterpreter receiveAction:v34])
                  {
                    [v39 addObject:v34];
                  }
                }
              }
            }
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v37 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
      v9 = v37;
    }

    while (v37);
  }

  return v39;
}

- (void)_handleRenderingServiceEndpointDidChangeAction:(uint64_t)action
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (action)
  {
    endpoint = [v3 endpoint];
    v6 = PRLogRendering(endpoint);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (endpoint)
    {
      if (v7)
      {
        v8 = [endpoint description];
        *buf = 138412290;
        v19 = v8;
        _os_log_impl(&dword_1A8AA7000, v6, OS_LOG_TYPE_DEFAULT, "Received PRRenderingServiceEndpointDidChangeAction endpoint: %@", buf, 0xCu);
      }

      v9 = *(action + 224);
      if (!v9 || ([v9 renderingServiceEndpoint], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToServiceEndpoint:", endpoint), v10, (v11 & 1) == 0))
      {
        objc_initWeak(buf, action);
        v12 = [PRDeviceMotionRenderer alloc];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __61__PRRenderer__handleRenderingServiceEndpointDidChangeAction___block_invoke;
        v16[3] = &unk_1E7843FE8;
        objc_copyWeak(&v17, buf);
        v13 = [(PRDeviceMotionRenderer *)v12 initWithIdentifier:@"PRRenderer.deviceMotionRendering" renderingServiceEndpoint:endpoint motionUpdateHandler:v16];
        v14 = *(action + 224);
        *(action + 224) = v13;

        v15 = *(action + 224);
        [*(action + 16) deviceMotionUpdateInterval];
        [v15 setDeviceMotionUpdateInterval:?];
        objc_destroyWeak(&v17);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      [(PRRenderer *)v7 _handleRenderingServiceEndpointDidChangeAction:v6];
    }
  }
}

void __53__PRRenderer__handleCandidateSnapshotContextsAction___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69C5658];
  v6 = a3;
  v7 = a2;
  v9 = [[v5 alloc] initWithDictionary:v6];

  v8 = [PRPosterSnapshotContext contextFromSnapshotBundleContextProvider:v9];
  [*(a1 + 32) setObject:v7 forKey:v8];

  [*(a1 + 40) addObject:v8];
}

void __45__PRRenderer__handleSnapshotAction_forScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![*(a1 + 32) canSendResponse])
  {
    goto LABEL_4;
  }

  if (v3)
  {
    [*(a1 + 32) respondWithError:v3];
LABEL_4:
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    [v4 removeItemAtURL:*(a1 + 40) error:0];
    goto LABEL_5;
  }

  v5 = *(a1 + 48);
  v17 = 0;
  v4 = [MEMORY[0x1E69C55B8] snapshotBundleAtURL:v5 error:&v17];
  v6 = v17;
  v7 = *(a1 + 32);
  v8 = v17;
  if (v6)
  {
    [v7 respondWithError:v8];
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    [v9 removeItemAtURL:*(a1 + 40) error:0];
    v10 = v8;
    v8 = v9;
  }

  else
  {
    v11 = [v7 respondWithSnapshotBundle:v4];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __45__PRRenderer__handleSnapshotAction_forScene___block_invoke_2;
    v15[3] = &unk_1E7845CB8;
    v16 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__PRRenderer__handleSnapshotAction_forScene___block_invoke_3;
    v13[3] = &unk_1E7845CE0;
    v14 = *(a1 + 40);
    v12 = [MEMORY[0x1E69C5268] mainThreadScheduler];
    [v11 addSuccessBlock:v15 andFailureBlock:v13 scheduler:v12];

    v10 = v16;
  }

LABEL_5:
}

void __45__PRRenderer__handleSnapshotAction_forScene___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  [v2 removeItemAtURL:*(a1 + 32) error:0];
}

void __45__PRRenderer__handleSnapshotAction_forScene___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  [v2 removeItemAtURL:*(a1 + 32) error:0];
}

void __71__PRRenderer__executeSnapshotForDescriptor_outputURL_scene_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 64) == 1)
  {
    [*(*(a1 + 32) + 8) renderer:*(a1 + 32) completedSnapshotForHandle:*(a1 + 40)];
  }

  [*(a1 + 48) invalidate];
  v3 = *(a1 + 56);
  if (v3)
  {
    (*(v3 + 16))(v3, 0);
  }
}

uint64_t __71__PRRenderer__executeSnapshotForDescriptor_outputURL_scene_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6 && (*(a1 + 64) & 1) != 0)
  {
    [*(*(a1 + 32) + 8) renderer:*(a1 + 32) failedToSnapshotWithError:v6 handle:*(a1 + 40)];
  }

  [*(a1 + 48) invalidate];
  v3 = *(a1 + 56);
  v4 = v6;
  if (v3)
  {
    v3 = (*(v3 + 16))(v3, v6);
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

void __61__PRRenderer__handleRenderingServiceEndpointDidChangeAction___block_invoke(uint64_t a1, _OWORD *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    __61__PRRenderer__handleRenderingServiceEndpointDidChangeAction___block_invoke_cold_1(WeakRetained, a2);
  }
}

- (BOOL)scriptInterperterShouldBeginExecution:(id)execution initialStatement:(id)statement
{
  scriptInterpreter = self->_scriptInterpreter;
  if (scriptInterpreter == execution)
  {
    statementCopy = statement;
    v8 = PRLogRendering(statementCopy);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PRRenderer scriptInterperterShouldBeginExecution:initialStatement:];
    }

    [(PRRenderer *)self _executeStatement:statementCopy];
  }

  return scriptInterpreter == execution;
}

- (void)_executeStatement:(uint64_t)statement
{
  v3 = a2;
  v4 = v3;
  if (statement && v3)
  {
    transition = [v3 transition];
    v6 = [v4 renderingOverridesForEnvironment:*(statement + 16)];
    renderingEvent = [v4 renderingEvent];

    if (renderingEvent)
    {
      [(PRRenderer *)v4 _executeStatement:statement];
    }

    v9 = PRLogRendering(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PRRenderer _executeStatement:];
    }

    [(PRRenderer *)statement _issueEnvironmentOverrides:v6 transition:transition];
  }
}

- (void)scriptInterpreterDidBeginExecution:(id)execution
{
  v3 = PRLogRendering(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PRRenderer scriptInterpreterDidBeginExecution:];
  }
}

- (void)scriptInterpreter:(id)interpreter executeStatement:(id)statement
{
  statementCopy = statement;
  v6 = PRLogRendering(statementCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PRRenderer scriptInterpreter:executeStatement:];
  }

  [(PRRenderer *)self _executeStatement:statementCopy];
}

- (void)scriptInterpreterDidFinish:(id)finish
{
  scriptInterpreter = self->_scriptInterpreter;
  if (scriptInterpreter == finish)
  {
    [(PRPosterScriptInterpreter *)scriptInterpreter invalidate];
    v5 = self->_scriptInterpreter;
    self->_scriptInterpreter = 0;

    v7 = PRLogRendering(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PRRenderer scriptInterpreterDidBeginExecution:];
    }

    [(PRRenderer *)self _issueEnvironmentOverrides:0 transition:?];
  }
}

- (void)updatedValuesForView:(id)view
{
  v18 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  [(PRRenderingBackdropView *)self->_backdropView backlightProgress];
  v5 = v4;
  v6 = 1.0;
  v7 = 1.0;
  if ((BSFloatGreaterThanOrEqualToFloat() & 1) == 0)
  {
    v7 = 0.0;
    if (!BSFloatLessThanOrEqualToFloat())
    {
      v7 = v5;
    }
  }

  [(PRRenderingBackdropView *)self->_backdropView linearBacklightProgress];
  v9 = v8;
  v10 = BSFloatGreaterThanOrEqualToFloat();
  if ((v10 & 1) == 0)
  {
    v6 = 0.0;
    v10 = BSFloatLessThanOrEqualToFloat();
    if (!v10)
    {
      v6 = v9;
    }
  }

  v11 = PRLogRendering(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134218496;
    selfCopy = self;
    v14 = 2048;
    v15 = v7;
    v16 = 2048;
    v17 = v6;
    _os_log_debug_impl(&dword_1A8AA7000, v11, OS_LOG_TYPE_DEBUG, "<PRRenderer %p> Backlight progress is %.6f; linear is %.6f", &v12, 0x20u);
  }

  [(PRPosterEnvironmentImpl *)self->_environment backlightProgress];
  if (!BSFloatEqualToFloat() || ([(PRPosterEnvironmentImpl *)self->_environment linearBacklightProgress], (BSFloatEqualToFloat() & 1) == 0))
  {
    [(PRRenderer *)&self->_environment updatedValuesForView:v7, v6];
  }
}

- (void)invalidateView:(id)view
{
  v12 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v5 = PRLogRendering(viewCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    selfCopy = self;
    v10 = 2048;
    level = [viewCopy level];
    _os_log_impl(&dword_1A8AA7000, v5, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> Invalidated view at level %ld", &v8, 0x16u);
  }

  viewsByLevel = self->_viewsByLevel;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(viewCopy, "level")}];
  [(NSMutableDictionary *)viewsByLevel removeObjectForKey:v7];

  [viewCopy removeFromSuperview];
}

void __40__PRRenderer__updateRenderingExtensions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = PRLogCommon(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 descriptionWithMultilinePrefix:0];
    *buf = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1A8AA7000, v6, OS_LOG_TYPE_DEFAULT, "Invalidated rendering assertion: %@", buf, 0xCu);
  }

  v8 = v4;
  BSDispatchMain();
}

void __40__PRRenderer__updateRenderingExtensions__block_invoke_224(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 64) == *(a1 + 40))
  {
    *(v1 + 72) = 0;
    [(PRRenderer *)*(a1 + 32) _updateRenderingExtensions];
  }
}

void __40__PRRenderer__updateRenderingExtensions__block_invoke_230(id *a1)
{
  v1 = a1;
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1[6] + 1);
  if (*(v2 + 24) == 1)
  {
    a1 = [a1[4] invalidate];
    *(v1[5] + 73) = 0;
    v2 = *(v1[6] + 1);
  }

  *(v2 + 24) = 1;
  v3 = PRLogRendering(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1[5];
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&dword_1A8AA7000, v3, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> Memory reclamation: CABackingStoreCollect completed.", &v5, 0xCu);
  }
}

void __40__PRRenderer__updateRenderingExtensions__block_invoke_231(id *a1)
{
  v1 = a1;
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1[6] + 1);
  if (*(v2 + 24) == 1)
  {
    a1 = [a1[4] invalidate];
    *(v1[5] + 73) = 0;
    v2 = *(v1[6] + 1);
  }

  *(v2 + 24) = 1;
  v3 = PRLogRendering(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1[5];
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&dword_1A8AA7000, v3, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> Memory reclamation: Renderer delegates completed dropping excess resources.", &v5, 0xCu);
  }
}

void __40__PRRenderer__updateRenderingExtensions__block_invoke_232(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) invalidate];
  *(*(a1 + 40) + 73) = 0;
  v3 = PRLogRendering(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&dword_1A8AA7000, v3, OS_LOG_TYPE_DEFAULT, "<PRRenderer %p> Memory reclamation: CABackingStoreCollect completed.", &v5, 0xCu);
  }
}

void __61__PRRenderer__makeComplicationPreviewSceneWithSpecification___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AFB0];
  v5 = a2;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  v8 = [v3 stringWithFormat:@"PRRenderer-%@", v7];
  [v5 setIdentifier:v8];

  [v5 setSpecification:*(a1 + 32)];
  v9 = MEMORY[0x1E699FBD8];
  v11 = [MEMORY[0x1E69C75F0] identityForAngelJobLabel:@"com.apple.PosterBoard"];
  v10 = [v9 identityForProcessIdentity:v11];
  [v5 setClientIdentity:v10];
}

void __61__PRRenderer__makeComplicationPreviewSceneWithSpecification___block_invoke_2(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__PRRenderer__makeComplicationPreviewSceneWithSpecification___block_invoke_3;
  v6[3] = &unk_1E7843DD0;
  v7 = *(a1 + 32);
  v4 = a2;
  [v4 updateClientSettingsWithBlock:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__PRRenderer__makeComplicationPreviewSceneWithSpecification___block_invoke_4;
  v5[3] = &unk_1E78448D0;
  v5[4] = *(a1 + 40);
  [v4 updateSettingsWithBlock:v5];
}

void __61__PRRenderer__makeComplicationPreviewSceneWithSpecification___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 264);
  v4 = a2;
  v5 = [v3 _FBSScene];
  v6 = [v5 settings];
  v10 = [v6 pui_posterContents];

  [v4 pui_setPosterContents:v10];
  v7 = [*(*(a1 + 32) + 264) _FBSScene];
  v8 = [v7 settings];
  v9 = [v8 pui_previewIdentifier];
  [v4 pui_setPreviewIdentifier:v9];
}

void __68__PRRenderer__registerForAmbientPresentationTraitChangesIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRLogRendering(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __68__PRRenderer__registerForAmbientPresentationTraitChangesIfNecessary__block_invoke_cold_1(a1, v3, v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(PRRenderer *)WeakRetained _updateEnvironmentForUpdatedTraitCollection];
}

- (void)_updateAnimatedUnlockProgress:(double)progress
{
  v10 = *MEMORY[0x1E69E9840];
  if (result)
  {
    BSDispatchQueueAssertMain();
    [*(result + 16) unlockProgress];
    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      progressCopy = 0.0;
      if ((BSFloatIsZero() & 1) == 0)
      {
        if (BSFloatIsOne())
        {
          progressCopy = 1.0;
        }

        else
        {
          progressCopy = progress;
        }
      }

      v6 = PRLogRendering([*(result + 16) setUnlockProgress:progressCopy]);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_1_9();
        v9 = progressCopy;
        OUTLINED_FUNCTION_34(&dword_1A8AA7000, v6, v7, "<PRRenderer %p> Unlock progress is %.6f (animated)", v8);
      }

      OUTLINED_FUNCTION_25();
    }
  }
}

- (id)_stateCaptureDescription
{
  selfCopy = self;
  if (self)
  {
    _FBSScene = [self[33] _FBSScene];
    settings = [_FBSScene settings];
    pui_posterContents = [settings pui_posterContents];

    v5 = [MEMORY[0x1E698E680] builderWithObject:selfCopy];
    v6 = [v5 appendObject:pui_posterContents withName:@"posterPath"];
    environment = [selfCopy environment];
    v8 = [OUTLINED_FUNCTION_22() appendObject:? withName:?];

    _FBSScene2 = [selfCopy[33] _FBSScene];
    v10 = [OUTLINED_FUNCTION_22() appendObject:? withName:?];

    if ([selfCopy[14] count])
    {
      v11 = [selfCopy[14] description];
      v12 = [OUTLINED_FUNCTION_22() appendObject:? withName:? skipIfNil:?];
    }

    else
    {
      v13 = [v5 appendObject:0 withName:@"overrides" skipIfNil:1];
    }

    v14 = [v5 appendBool:*(selfCopy + 25) withName:@"invalidating"];
    v15 = [v5 appendBool:*(selfCopy + 24) withName:@"invalidated"];
    reasons = [selfCopy[29] reasons];
    bs_array = [reasons bs_array];
    v18 = [OUTLINED_FUNCTION_22() appendObject:? withName:?];

    selfCopy = [v5 build];
  }

  return selfCopy;
}

- (id)_viewForLevel:(id)level
{
  levelCopy = level;
  if (level)
  {
    BSDispatchQueueAssertMain();
    v4 = *(levelCopy + 5);
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v6 = [v4 objectForKey:v5];

    if (!v6)
    {
      _FBSScene = [*(levelCopy + 33) _FBSScene];
      settings = [_FBSScene settings];

      [*(levelCopy + 2) appliesCountertransformForRotation];
      v10 = objc_alloc(objc_opt_class());
      v6 = [v10 initWithOwner:levelCopy scene:*(levelCopy + 33) level:a2 dynamicRotationEnabled:-[PRRenderer _rendererDynamicRotationIsActive](levelCopy extensionUserInteractionEnabled:{v11), objc_msgSend(settings, "pui_isExtensionUserInteractionEnabled")}];
      v12 = *(levelCopy + 5);
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
      [v12 setObject:v6 forKey:v13];

      v15 = PRLogRendering(v14);
      if (OUTLINED_FUNCTION_33(v15))
      {
        [v6 level];
        OUTLINED_FUNCTION_1_9();
        OUTLINED_FUNCTION_10_0();
        _os_log_impl(v16, v17, v18, v19, v20, v21);
      }
    }

    levelCopy = [v6 contentContainer];
  }

  return levelCopy;
}

- (UIView)floatingView
{
  isDepthEffectEffectively = [(PRRenderer *)self _isDepthEffectEffectivelyDisabled];
  v4 = &PRPosterLevelFloatingUnder;
  if (!isDepthEffectEffectively)
  {
    v4 = &PRPosterLevelFloating;
  }

  v5 = *v4;

  return [(PRRenderer *)self _viewForLevel:v5];
}

- (uint64_t)_rendererDynamicRotationIsActive
{
  if (!self || !PUIDynamicRotationIsActive())
  {
    return 0;
  }

  role = [*(self + 16) role];
  v4 = PFPosterRoleSupportsDynamicRotation();

  return v4;
}

- (double)_calculateRealizedAdaptiveTimeHeight
{
  if (!self)
  {
    return 0.0;
  }

  v2 = self[2];
  targetConfiguredProperties = [v2 targetConfiguredProperties];
  titleStyleConfiguration = [targetConfiguredProperties titleStyleConfiguration];

  deviceOrientation = [self[2] deviceOrientation];
  v6 = deviceOrientation;
  memset(&v40, 0, sizeof(v40));
  switch(deviceOrientation)
  {
    case 1:
      v7 = 0.0;
      break;
    case 3:
      v7 = 1.57079633;
      break;
    case 4:
      v7 = -1.57079633;
      break;
    default:
      v7 = 3.14159265;
      if (deviceOrientation != 2)
      {
        v7 = 0.0;
      }

      break;
  }

  CGAffineTransformMakeRotation(&v38, v7);
  UIIntegralTransform();
  CGAffineTransformInvert(&v40, &v39);
  [self[2] canvasSize];
  BSRectWithSize();
  v39 = v40;
  v42 = CGRectApplyAffineTransform(v41, &v39);
  height = v42.size.height;
  [self[6] preferredSalientContentRectangle];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  _FBSScene = [self[33] _FBSScene];
  settings = [_FBSScene settings];
  pui_posterContents = [settings pui_posterContents];

  serverIdentity = [pui_posterContents serverIdentity];
  type = [serverIdentity type];

  IsValidSalientContentRectangle = PUICGRectIsValidSalientContentRectangle();
  adaptiveTimeMode = [self[6] adaptiveTimeMode];
  mEMORY[0x1E6999638] = [MEMORY[0x1E6999638] sharedLayoutController];
  OUTLINED_FUNCTION_31(mEMORY[0x1E6999638], v25);
  OUTLINED_FUNCTION_31(mEMORY[0x1E6999638], v26);
  MaxY = CGRectGetMaxY(v43);
  v28 = OUTLINED_FUNCTION_30();
  v30 = ((type - 1) <= 1 || type == 4) && adaptiveTimeMode == 1;
  if (v30 && IsValidSalientContentRectangle)
  {
    v44.origin.x = v10;
    v44.origin.y = v12;
    v44.size.width = v14;
    v44.size.height = v16;
    MinY = CGRectGetMinY(v44);
    goto LABEL_32;
  }

  v37 = MaxY;
  [titleStyleConfiguration preferredTimeMaxYForOrientation:v6];
  v33 = v32;
  if (adaptiveTimeMode == 1 && v32 > 0.0)
  {
    goto LABEL_30;
  }

  if (adaptiveTimeMode == 2)
  {
    goto LABEL_28;
  }

  if (adaptiveTimeMode == 4)
  {
    if ([titleStyleConfiguration isAdaptiveTimeHeightUserConfigured])
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v34 = 0.0;
  if (BSFloatIsZero())
  {
    if (adaptiveTimeMode == 1)
    {
LABEL_28:
      if (IsValidSalientContentRectangle)
      {
        v45.origin.x = v10;
        v45.origin.y = v12;
        v45.size.width = v14;
        v45.size.height = v16;
        MinY = CGRectGetMinY(v45);
LABEL_31:
        MaxY = v37;
LABEL_32:
        v34 = MaxY - v28;
        v35 = MinY - OUTLINED_FUNCTION_30();
        if (v34 < v35)
        {
          v34 = v35;
        }

        goto LABEL_34;
      }

LABEL_30:
      MinY = height * v33;
      goto LABEL_31;
    }
  }

LABEL_34:

  return v34;
}

- (uint64_t)_isRenderingAdaptiveTime
{
  selfCopy = self;
  if (self)
  {
    v2 = *(self + 16);
    if (![v2 showsHeaderElements] || (objc_msgSend(v2, "isAdaptiveTimeDisabled") & 1) != 0)
    {
      goto LABEL_4;
    }

    adaptiveTimeMode = [*(selfCopy + 48) adaptiveTimeMode];
    switch(adaptiveTimeMode)
    {
      case 1:
        selfCopy = 1;
        goto LABEL_5;
      case 4:
        _FBSScene = [*(selfCopy + 264) _FBSScene];
        clientSettings = [_FBSScene clientSettings];

        selfCopy = [clientSettings pui_isAdaptiveTimeHeightUserConfigured] ^ 1;
        break;
      case 2:
        _FBSScene2 = [*(selfCopy + 264) _FBSScene];
        clientSettings = [_FBSScene2 settings];

        if ([clientSettings pui_isComplicationRowConfigured])
        {
          selfCopy = [clientSettings pui_isComplicationRowAtBottom];
        }

        else
        {
          selfCopy = 1;
        }

        break;
      default:
LABEL_4:
        selfCopy = 0;
LABEL_5:

        return selfCopy;
    }

    goto LABEL_5;
  }

  return selfCopy;
}

- (void)_issueEnvironmentOverrides:(void *)overrides transition:
{
  v74 = *MEMORY[0x1E69E9840];
  v6 = a2;
  overridesCopy = overrides;
  if (self && ([*(self + 112) isEqual:v6] & 1) == 0)
  {
    v59 = (self + 112);
    v60 = a2;
    v62 = overridesCopy;
    environmentSnapshot = [*(self + 16) environmentSnapshot];
    context = objc_autoreleasePoolPush();
    v8 = MEMORY[0x1E695DFD8];
    allKeys = [*(self + 112) allKeys];
    v10 = [v8 setWithArray:allKeys];

    v11 = MEMORY[0x1E695DFD8];
    v63 = v6;
    allKeys2 = [v6 allKeys];
    v13 = [v11 setWithArray:allKeys2];

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v68 objects:v73 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v69;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v69 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [v10 containsObject:*(*(&v68 + 1) + 8 * i)];
          if ((v19 & 1) == 0)
          {
            v20 = PRLogRendering(v19);
            v21 = OUTLINED_FUNCTION_15(v20);
            if (v21)
            {
              OUTLINED_FUNCTION_13(v21, v22, v23, v24, v25, v26, v27, v28, v29, context, v59, v60, environmentSnapshot, v62, v63, v30);
              OUTLINED_FUNCTION_8_0();
              _os_log_impl(v31, v32, v33, "<PRRenderer %p> Environment override added: %{public}@", v34, 0x16u);
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v68 objects:v73 count:16];
      }

      while (v16);
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v35 = v10;
    v36 = [v35 countByEnumeratingWithState:&v64 objects:v72 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v65;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v65 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = [v14 containsObject:*(*(&v64 + 1) + 8 * j)];
          if ((v40 & 1) == 0)
          {
            v41 = PRLogRendering(v40);
            v42 = OUTLINED_FUNCTION_15(v41);
            if (v42)
            {
              OUTLINED_FUNCTION_13(v42, v43, v44, v45, v46, v47, v48, v49, v50, context, v59, v60, environmentSnapshot, v62, v63, v51);
              OUTLINED_FUNCTION_8_0();
              _os_log_impl(v52, v53, v54, "<PRRenderer %p> Environment override removed: %{public}@", v55, 0x16u);
            }
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v64 objects:v72 count:16];
      }

      while (v37);
    }

    objc_autoreleasePoolPop(context);
    objc_storeStrong(v59, v60);
    [*(self + 16) setOverrides:*(self + 112)];
    environmentSnapshot2 = [*(self + 16) environmentSnapshot];
    overridesCopy = v62;
    animationSettings = [v62 animationSettings];
    [(PRRenderer *)self _updateViewsIfNeededFrom:environmentSnapshot to:environmentSnapshot2 headerAnimationSettings:animationSettings animateBacklightChanges:animationSettings != 0];
    [(PRRenderer *)self _reportUpdatedEnvironmentWithTransition:v62];

    v6 = v63;
  }
}

- (uint64_t)_markRotationComplete
{
  if (result)
  {
    v1 = result;
    v2 = result[24];
    v3 = v2 <= 0 ? 0 : v2 - 1;
    result[24] = v3;
    if (!v3)
    {
      OUTLINED_FUNCTION_25();

      return [v1 noteContentSignificantlyChanged];
    }
  }

  return result;
}

- (void)_reportUpdatedEnvironmentWithTransition:(uint64_t)transition
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (transition)
  {
    if (*(transition + 192) >= 1)
    {
      v7 = PRLogRendering(v5);
      if (OUTLINED_FUNCTION_33(v7))
      {
        *buf = 134217984;
        transitionCopy2 = transition;
        OUTLINED_FUNCTION_23();
        _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
      }
    }

    v13 = PRLogTelemetrySignposts(v5);
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A8AA7000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PBF_ENV_UPDATE", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
    }

    OUTLINED_FUNCTION_27();
    kdebug_trace();
    v14 = [*(transition + 232) acquireForReason:@"environment update"];
    animationSettings = [v6 animationSettings];
    v16 = animationSettings;
    if (animationSettings)
    {
      v17 = PRLogRendering(animationSettings);
      if (OUTLINED_FUNCTION_32(v17))
      {
        *buf = 134218242;
        transitionCopy2 = transition;
        v38 = 2114;
        v39 = v16;
        OUTLINED_FUNCTION_10_0();
        _os_log_impl(v18, v19, v20, v21, v22, v23);
      }
    }

    v24 = *(transition + 224);
    if (v24)
    {
      [*(transition + 16) deviceMotionUpdateInterval];
      [v24 setDeviceMotionUpdateInterval:?];
    }

    environmentSnapshot = [*(transition + 16) environmentSnapshot];
    [*(transition + 8) renderer:transition didUpdateEnvironment:environmentSnapshot withTransition:v6];
    v26 = dispatch_time(0, 330000000);
    v27 = dispatch_get_global_queue(21, 0);
    OUTLINED_FUNCTION_0_14();
    v32 = 3221225472;
    v33 = __54__PRRenderer__reportUpdatedEnvironmentWithTransition___block_invoke;
    v34 = &unk_1E7843688;
    v35 = v14;
    v28 = v14;
    dispatch_after(v26, v27, block);

    v30 = PRLogTelemetrySignposts(v29);
    if (os_signpost_enabled(v30))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A8AA7000, v30, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PBF_ENV_UPDATE", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
    }

    OUTLINED_FUNCTION_27();
    kdebug_trace();
    [transition didUpdateEnvironment:environmentSnapshot];
  }
}

- (id)extensionBundleURL
{
  if (self)
  {
    if (*(self + 8))
    {
      v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    }

    else
    {
      v1 = 0;
    }

    bundleURL = [v1 bundleURL];
  }

  else
  {
    bundleURL = 0;
  }

  return bundleURL;
}

- (void)_updateViewsIfNeededFrom:(void *)from to:(void *)to headerAnimationSettings:(int)settings animateBacklightChanges:
{
  if (self)
  {
    toCopy = to;
    fromCopy = from;
    v20 = a2;
    [(PRRenderer *)self _updateOrientationIfNeededFrom:v20 to:fromCopy];
    v11 = OUTLINED_FUNCTION_17();
    [(PRRenderer *)v11 _updateDepthEffectIfNeededFrom:v12 to:v13];
    v14 = OUTLINED_FUNCTION_17();
    [(PRRenderer *)v14 _updateHeaderAndComplicationsFrom:v15 to:v16 animationSettings:toCopy];

    v17 = OUTLINED_FUNCTION_17();
    [(PRRenderer *)v17 _updateBacklightLuminanceFrom:v18 to:v19 animateChanges:settings];
  }
}

- (void)_updateContentSize
{
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v3 = *MEMORY[0x1E695F060];
    v2 = *(MEMORY[0x1E695F060] + 8);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allValues = [*(self + 40) allValues];
    v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          [(PRRenderer *)self _collectContentSizeForView:?];
          OUTLINED_FUNCTION_26();
          ++v8;
        }

        while (v6 != v8);
        v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    _FBSScene = [*(self + 264) _FBSScene];
    OUTLINED_FUNCTION_5();
    v11[1] = 3221225472;
    v11[2] = __32__PRRenderer__updateContentSize__block_invoke;
    v11[3] = &__block_descriptor_48_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
    v11[4] = v3;
    v11[5] = v2;
    [v10 pr_performUpdate:v11];
  }
}

- (void)_configureProminentDisplay:(uint64_t)display
{
  v102[4] = *MEMORY[0x1E69E9840];
  if (display)
  {
    v3 = *(display + 264);
    v4 = a2;
    _FBSScene = [v3 _FBSScene];
    settings = [_FBSScene settings];

    pui_isInlineComplicationConfigured = [settings pui_isInlineComplicationConfigured];
    pui_isComplicationRowConfigured = [settings pui_isComplicationRowConfigured];
    pui_isComplicationSidebarConfigured = [settings pui_isComplicationSidebarConfigured];
    v10 = *(display + 16);
    showsHeaderElements = [v10 showsHeaderElements];
    showsComplications = [v10 showsComplications];
    deviceOrientation = [v10 deviceOrientation];
    if ((deviceOrientation - 1) < 2)
    {
      v14 = pui_isComplicationRowConfigured;
    }

    else
    {
      v14 = 0;
    }

    v99 = v14;
    if ((deviceOrientation - 3) >= 2)
    {
      pui_isComplicationSidebarConfigured = 0;
    }

    if (showsHeaderElements)
    {
      timePreviewProminentDisplayViewController = [display timePreviewProminentDisplayViewController];

      if (!timePreviewProminentDisplayViewController)
      {
        v75 = *(display + 8);
        if (v75)
        {
          v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        }

        else
        {
          v16 = 0;
        }

        v77 = pui_isComplicationSidebarConfigured;
        targetConfiguredProperties = [v10 targetConfiguredProperties];
        titleStyleConfiguration = [targetConfiguredProperties titleStyleConfiguration];

        [v10 role];
        v74 = v85 = v16;
        v83 = [titleStyleConfiguration effectiveTimeFontWithExtensionBundle:v16 forRole:?];
        v87 = titleStyleConfiguration;
        effectiveTitleColor = [titleStyleConfiguration effectiveTitleColor];
        traitCollection = [*(display + 16) traitCollection];
        v97 = settings;
        v89 = showsHeaderElements;
        if ([traitCollection _backlightLuminance] == 1)
        {
          v20 = 1;
        }

        else
        {
          traitCollection2 = [*(display + 16) traitCollection];
          v20 = [traitCollection2 _backlightLuminance] == 0;
        }

        v70 = v20;
        v22 = [v87 vibrancyConfigurationWithExtensionBundle:v16 luminanceReduced:v20];
        v79 = pui_isInlineComplicationConfigured;
        if (pui_isInlineComplicationConfigured & 1 | ((showsComplications & 1) == 0))
        {
          v23 = -3;
        }

        else
        {
          v23 = -1;
        }

        v24 = objc_alloc(MEMORY[0x1E6999630]);
        [effectiveTitleColor color];
        objc_claimAutoreleasedReturnValue();
        v25 = [OUTLINED_FUNCTION_12() initWithElements:v23 baseFont:v83 date:0 textColor:settings];

        [v25 setBackgroundType:{objc_msgSend(v22, "backgroundType")}];
        [v25 setEffectType:{objc_msgSend(v22, "effectType")}];
        v26 = v22;
        alternativeVibrancyEffectLUT = [v22 alternativeVibrancyEffectLUT];
        v28 = objc_opt_respondsToSelector();
        lutIdentifier = [alternativeVibrancyEffectLUT lutIdentifier];
        v73 = alternativeVibrancyEffectLUT;
        bundleURL = [alternativeVibrancyEffectLUT bundleURL];
        v93 = v10;
        v95 = v4;
        v91 = showsComplications;
        if (v28)
        {
          [v25 setAlternativeVibrancyEffectLUTIdentifier:lutIdentifier alternativeVibrancyEffectLUTBundleURL:bundleURL luminanceReduced:v70];
        }

        else
        {
          [v25 setAlternativeVibrancyEffectLUTIdentifier:lutIdentifier alternativeVibrancyEffectLUTBundleURL:bundleURL];
        }

        v72 = v26;
        groupName = [v26 groupName];
        [v25 setGroupName:groupName];

        [v25 pr_setAlternateDateEnabled:{objc_msgSend(v87, "isAlternateDateEnabled")}];
        timeNumberingSystem = [v87 timeNumberingSystem];
        [v25 setNumberingSystem:timeNumberingSystem];
        v32 = [(PRRenderer *)display _viewForLevel:?];
        view = [v25 view];
        [view setTranslatesAutoresizingMaskIntoConstraints:0];
        [v32 addSubview:view];
        v64 = MEMORY[0x1E696ACD8];
        leadingAnchor = [view leadingAnchor];
        leadingAnchor2 = [v32 leadingAnchor];
        v67 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v102[0] = v67;
        trailingAnchor = [view trailingAnchor];
        trailingAnchor2 = [v32 trailingAnchor];
        v63 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v102[1] = v63;
        topAnchor = [view topAnchor];
        topAnchor2 = [v32 topAnchor];
        v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v102[2] = v35;
        bottomAnchor = [view bottomAnchor];
        bottomAnchor2 = [v32 bottomAnchor];
        v38 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v102[3] = v38;
        v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:4];
        [v64 activateConstraints:v39];

        titleContentStyle = [v87 titleContentStyle];
        [v25 setTitleContentStyle:titleContentStyle];

        [display setTimePreviewProminentDisplayViewController:v25];
        v4 = v95;
        settings = v97;
        v10 = v93;
        showsHeaderElements = v89;
        showsComplications = v91;
        pui_isInlineComplicationConfigured = v79;
        pui_isComplicationSidebarConfigured = v77;
      }
    }

    if ((showsComplications & (pui_isInlineComplicationConfigured | v99 | pui_isComplicationSidebarConfigured)) == 1)
    {
      complicationsPreviewProminentDisplayViewController = [display complicationsPreviewProminentDisplayViewController];

      if (!complicationsPreviewProminentDisplayViewController)
      {
        v42 = [objc_alloc(MEMORY[0x1E6999630]) initWithElements:28 baseFont:0 date:0 textColor:0];
        if (v99)
        {
          _makeGraphicComplicationPreviewScene = [(PRRenderer *)display _makeGraphicComplicationPreviewScene];
          v44 = *(display + 128);
          *(display + 128) = _makeGraphicComplicationPreviewScene;

          [*(display + 128) setDelegate:display];
          [[PRComplicationsSnapshotSceneHostViewController alloc] initWithScene:*(display + 128)];
          [OUTLINED_FUNCTION_18() setComplicationContainerViewController:?];
        }

        if (pui_isComplicationSidebarConfigured)
        {
          _makeSidebarComplicationPreviewScene = [(PRRenderer *)display _makeSidebarComplicationPreviewScene];
          v46 = *(display + 144);
          *(display + 144) = _makeSidebarComplicationPreviewScene;

          [*(display + 144) setDelegate:display];
          [[PRComplicationsSnapshotSceneHostViewController alloc] initWithScene:*(display + 144)];
          [OUTLINED_FUNCTION_18() setComplicationSidebarViewController:?];
        }

        v90 = showsHeaderElements;
        v92 = showsComplications;
        v94 = v10;
        v96 = v4;
        v98 = settings;
        if (pui_isInlineComplicationConfigured)
        {
          _makeInlineComplicationPreviewScene = [(PRRenderer *)display _makeInlineComplicationPreviewScene];
          v48 = *(display + 160);
          *(display + 160) = _makeInlineComplicationPreviewScene;

          [*(display + 160) setDelegate:display];
          [[PRComplicationsSnapshotSceneHostViewController alloc] initWithScene:*(display + 160)];
          [OUTLINED_FUNCTION_18() setSubtitleComplicationViewController:?];
        }

        v49 = [(PRRenderer *)display _viewForLevel:?];
        view2 = [v42 view];
        [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v49 addSubview:view2];
        v80 = MEMORY[0x1E696ACD8];
        leadingAnchor3 = [view2 leadingAnchor];
        leadingAnchor4 = [v49 leadingAnchor];
        v86 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
        v101[0] = v86;
        trailingAnchor3 = [view2 trailingAnchor];
        trailingAnchor4 = [v49 trailingAnchor];
        v78 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
        v101[1] = v78;
        topAnchor3 = [view2 topAnchor];
        topAnchor4 = [v49 topAnchor];
        v53 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
        v101[2] = v53;
        bottomAnchor3 = [view2 bottomAnchor];
        [v49 bottomAnchor];
        v55 = v76 = v42;
        v56 = [bottomAnchor3 constraintEqualToAnchor:v55];
        v101[3] = v56;
        v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:4];
        [v80 activateConstraints:v57];

        [display setComplicationsPreviewProminentDisplayViewController:v76];
        v4 = v96;
        settings = v98;
        v10 = v94;
        showsHeaderElements = v90;
        showsComplications = v92;
      }
    }

    timePreviewProminentDisplayViewController2 = [display timePreviewProminentDisplayViewController];
    view3 = [timePreviewProminentDisplayViewController2 view];
    [view3 setHidden:showsHeaderElements ^ 1u];

    complicationsPreviewProminentDisplayViewController2 = [display complicationsPreviewProminentDisplayViewController];
    view4 = [complicationsPreviewProminentDisplayViewController2 view];
    [view4 setHidden:showsComplications ^ 1u];

    [(PRRenderer *)display _updateProminentViewSizingAndTransforms:v4];
  }
}

- (void)_cleanupAfterNotifyingDelegateOfInvalidation
{
  if (self)
  {
    v3 = PRLogRendering(self);
    if (OUTLINED_FUNCTION_15(v3))
    {
      OUTLINED_FUNCTION_3_4();
      _os_log_impl(v4, v5, v6, v7, v8, v9);
    }

    v10 = objc_autoreleasePoolPush();
    allValues = [*(self + 40) allValues];
    v12 = [allValues copy];

    v21 = OUTLINED_FUNCTION_29(v13, v14, v15, v16, v17, v18, v19, v20, v46, 0, 0, 0, 0, 0, 0, 0);
    if (v21)
    {
      v22 = v21;
      v23 = *v49;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          OUTLINED_FUNCTION_28();
          if (v25 != v23)
          {
            objc_enumerationMutation(v12);
          }

          invalidate = [*(v48 + 8 * i) invalidate];
        }

        v22 = OUTLINED_FUNCTION_29(invalidate, v27, v28, v29, v30, v31, v32, v33, v47, v48, v49, v50, v51, v52, v53, v54);
      }

      while (v22);
    }

    [*(self + 96) invalidate];
    [*(self + 128) invalidate];
    [*(self + 144) invalidate];
    [*(self + 160) invalidate];
    [*(self + 56) invalidate];
    [*(self + 176) invalidate];
    [*(self + 64) invalidate];
    [*(self + 40) removeAllObjects];
    if (*(self + 200))
    {
      [*(self + 264) unregisterForTraitChanges:?];
    }

    _FBSScene = [*(self + 264) _FBSScene];
    pui_captureController = [_FBSScene pui_captureController];
    [pui_captureController invalidate];

    [*(self + 264) setDelegate:0];
    v36 = *(self + 264);
    *(self + 264) = 0;

    v37 = *(self + 8);
    *(self + 8) = 0;

    [__knownRenderers removeObject:self];
    [*(self + 104) invalidate];
    objc_autoreleasePoolPop(v10);
    v39 = PRLogRendering(v38);
    if (OUTLINED_FUNCTION_15(v39))
    {
      OUTLINED_FUNCTION_3_4();
      _os_log_impl(v40, v41, v42, v43, v44, v45);
    }
  }
}

- (void)_validateCleanupResultedInThingsCleanedUpWithPrememoryUsage:(uint64_t)usage
{
  v50 = *MEMORY[0x1E69E9840];
  if (usage)
  {
    v4 = PRGetMemoryUsageForCurrentProcess();
    v5 = PRGetMaximumMemoryUsageForCurrentProcess();
    v6 = PRLogRendering(v5);
    if (OUTLINED_FUNCTION_32(v6))
    {
      OUTLINED_FUNCTION_1_9();
      v49 = a2;
      OUTLINED_FUNCTION_10_0();
      _os_log_impl(v7, v8, v9, v10, v11, v12);
    }

    v14 = PRLogRendering(v13);
    if (OUTLINED_FUNCTION_32(v14))
    {
      OUTLINED_FUNCTION_1_9();
      v49 = v4;
      OUTLINED_FUNCTION_10_0();
      _os_log_impl(v15, v16, v17, v18, v19, v20);
    }

    v22 = PRLogRendering(v21);
    if (OUTLINED_FUNCTION_32(v22))
    {
      OUTLINED_FUNCTION_1_9();
      v49 = v5;
      OUTLINED_FUNCTION_10_0();
      _os_log_impl(v23, v24, v25, v26, v27, v28);
    }

    v30 = a2 - v4;
    if (a2 - v4 > -1000001)
    {
      v34 = PRLogRendering(v29);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_9();
        v49 = v30;
        OUTLINED_FUNCTION_10_0();
        _os_log_impl(v36, v37, v38, v39, v40, v41);
      }
    }

    else
    {
      has_internal_content = os_variant_has_internal_content();
      v32 = has_internal_content;
      v33 = PRLogRendering(has_internal_content);
      v34 = v33;
      if (v32)
      {
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          OUTLINED_FUNCTION_4_4();
          v48 = 2048;
          v49 = v35;
          _os_log_fault_impl(&dword_1A8AA7000, v34, OS_LOG_TYPE_FAULT, "<PRRenderer %p> Memory increased after invalidation; invalidating this poster caused a memory gain of %{iec-bytes}llu bytes", v47, 0x16u);
        }
      }

      else if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_4_4();
        v48 = 2048;
        v49 = v46;
        _os_log_error_impl(&dword_1A8AA7000, v34, OS_LOG_TYPE_ERROR, "<PRRenderer %p> Memory increased after invalidation; invalidating this poster caused a memory gain of %{iec-bytes}llu bytes", v47, 0x16u);
      }
    }

    if (v4 > v5)
    {
      v42 = os_variant_has_internal_content();
      v43 = v42;
      v44 = PRLogRendering(v42);
      v45 = v44;
      if (v43)
      {
        if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
        {
          OUTLINED_FUNCTION_4_4();
          _os_log_fault_impl(&dword_1A8AA7000, v45, OS_LOG_TYPE_FAULT, "<PRRenderer %p> Memory after invalidation exceeds max memory usage for poster!", v47, 0xCu);
        }
      }

      else if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_4_4();
        _os_log_error_impl(&dword_1A8AA7000, v45, OS_LOG_TYPE_ERROR, "<PRRenderer %p> Memory after invalidation exceeds max memory usage for poster!", v47, 0xCu);
      }
    }
  }
}

void __37__PRRenderer__issueSceneInvalidated___block_invoke_92(uint64_t a1)
{
  CFAbsoluteTimeGetCurrent();
  v4 = PRLogRendering(v3);
  if (OUTLINED_FUNCTION_15(v4))
  {
    OUTLINED_FUNCTION_8_0();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  [(PRRenderer *)*(a1 + 32) _cleanupAfterNotifyingDelegateOfInvalidation];
  v11 = PRLogRendering(v10);
  if (OUTLINED_FUNCTION_15(v11))
  {
    OUTLINED_FUNCTION_3_4();
    _os_log_impl(v12, v13, v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_0_14();
  v19 = *(a1 + 48);
  v18 = *(a1 + 40);
  BSDispatchMain();
}

- (id)_actionsAfterHandlingAppIntentsHandshakeActionsInActions:(void *)actions
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v14 = v3;
  if (actions)
  {
    v4 = v3;
    actions = [v3 mutableCopy];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v10 isValid])
            {
              mEMORY[0x1E695A868] = [MEMORY[0x1E695A868] sharedListener];
              listenerEndpoint = [mEMORY[0x1E695A868] listenerEndpoint];
              [v10 respondWithListenerEndpoint:listenerEndpoint error:0];
            }

            [actions removeObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  return actions;
}

void __124__PRRenderer__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke_2_116(uint64_t a1)
{
  if ((*(a1 + 72) & 1) == 0)
  {
    [(PRRenderer *)*(a1 + 32) _reportUpdatedEnvironmentWithTransition:?];
    if (*(a1 + 73) == 1)
    {
      [(PRRenderer *)*(a1 + 32) _updateContentSize];
    }

    if (*(a1 + 74) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [*(*(a1 + 32) + 8) renderer:*(a1 + 56) didReceiveTapAtPoint:*(a1 + 64)];
    }

    if (objc_opt_respondsToSelector())
    {
      OUTLINED_FUNCTION_16();
      v2 = *(a1 + 48);
      OUTLINED_FUNCTION_14();
      v4 = [v3 countByEnumeratingWithState:? objects:? count:?];
      if (v4)
      {
        v5 = v4;
        v6 = *v10;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            OUTLINED_FUNCTION_28();
            if (v8 != v6)
            {
              objc_enumerationMutation(v2);
            }

            [*(*(a1 + 32) + 8) renderer:*(a1 + 32) didReceiveTransitionState:*(v9 + 8 * i)];
          }

          OUTLINED_FUNCTION_14();
          v5 = [v2 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v5);
      }
    }
  }

  [(PRRenderer *)*(a1 + 32) _reapUnusedViews];
}

- (void)_updateDepthEffectIfNeededFrom:(void *)from to:
{
  v10 = a2;
  fromCopy = from;
  if (self)
  {
    isDepthEffectEffectively = [(PRRenderer *)self _isDepthEffectEffectivelyDisabled];
    if (*(self + 208) != isDepthEffectEffectively)
    {
      v7 = isDepthEffectEffectively;
      if (isDepthEffectEffectively)
      {
        v8 = -500;
      }

      else
      {
        v8 = 1000;
      }

      if (*(self + 208))
      {
        v9 = -500;
      }

      else
      {
        v9 = 1000;
      }

      [(PRRenderer *)self _moveViewForLevel:v8 toLevel:v9];
      *(self + 208) = v7;
    }
  }
}

- (void)_updateHeaderAndComplicationsFrom:(void *)from to:(void *)to animationSettings:
{
  v16 = a2;
  fromCopy = from;
  toCopy = to;
  if (self)
  {
    isSnapshot = [v16 isSnapshot];
    isSnapshot2 = [fromCopy isSnapshot];
    showsHeaderElements = [v16 showsHeaderElements];
    showsHeaderElements2 = [fromCopy showsHeaderElements];
    showsComplications = [v16 showsComplications];
    showsComplications2 = [fromCopy showsComplications];
    [v16 salientContentRectangle];
    OUTLINED_FUNCTION_20();
    [fromCopy salientContentRectangle];
    v18.origin.x = OUTLINED_FUNCTION_2_2();
    v15 = CGRectEqualToRect(v18, v19);
    if (showsHeaderElements != showsHeaderElements2 || ((showsComplications ^ showsComplications2) & 1) != 0 || ((isSnapshot ^ isSnapshot2) & 1) != 0 || !v15)
    {
      [(PRRenderer *)self _configureProminentDisplay:toCopy];
    }
  }
}

- (void)_updateBacklightLuminanceFrom:(void *)from to:(int)to animateChanges:
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = a2;
  fromCopy = from;
  v9 = fromCopy;
  if (self)
  {
    luminance = [fromCopy luminance];
    luminance2 = [v7 luminance];
    if (luminance2 != luminance)
    {
      v12 = PRLogRendering(luminance2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        NSStringFromBLSAdjustedLuminance();
        *buf = 134218242;
        selfCopy2 = self;
        v50 = 2114;
        v51 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        OUTLINED_FUNCTION_10_0();
        _os_log_impl(v13, v14, v15, v16, v17, v18);
      }

      v19 = [self[29] acquireForReason:@"LuminanceDidChange"];
      [self[10] invalidate];
      v20 = self[10];
      self[10] = 0;

      if (luminance == 2)
      {
        v22 = [self extendRenderingSessionForReason:@"ScreenWake"];
        v23 = self[10];
        self[10] = v22;

        v24 = v22;
        if (to)
        {
          v25 = 3000000000;
        }

        else
        {
          v25 = 0;
        }

        v26 = dispatch_time(0, v25);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __62__PRRenderer__updateBacklightLuminanceFrom_to_animateChanges___block_invoke;
        block[3] = &unk_1E7843070;
        block[4] = self;
        v47 = v24;
        v27 = v24;
        dispatch_after(v26, MEMORY[0x1E69E96A0], block);
      }

      v28 = 0.0;
      v29 = 0.0;
      if (to)
      {
        v30 = +[PRPosterDomain rootSettings];
        [v30 wakeDuration];
        v29 = v31;
      }

      v33 = v29 > 0.0 && luminance != 0;
      if (luminance == 2)
      {
        v28 = 1.0;
      }

      v34 = PRLogRendering(v21);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        [self[2] backlightProgress];
        v39 = v38;
        [self[2] linearBacklightProgress];
        *buf = 134218752;
        selfCopy2 = self;
        v50 = 2048;
        v51 = v28;
        v52 = 2048;
        v53 = v39;
        v54 = 2048;
        v55 = v40;
        _os_log_debug_impl(&dword_1A8AA7000, v34, OS_LOG_TYPE_DEBUG, "<PRRenderer %p> updating target backlight progress to %.6f; is %.6f; linear is %.6f", buf, 0x2Au);
      }

      [self[12] setTargetBacklightProgress:v33 animated:v28];
      v35 = dispatch_time(0, (v29 * 1000000000.0));
      v36 = dispatch_get_global_queue(21, 0);
      OUTLINED_FUNCTION_0_14();
      v42 = 3221225472;
      v43 = __62__PRRenderer__updateBacklightLuminanceFrom_to_animateChanges___block_invoke_133;
      v44 = &unk_1E7843688;
      v45 = v19;
      v37 = v19;
      dispatch_after(v35, v36, v41);
    }
  }
}

void __48__PRRenderer__updateOrientationIfNeededFrom_to___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(PRRenderer *)WeakRetained _markRotationComplete];
}

- (void)_updateDepthEffect:(int)effect wasDepthEffectDisabled:
{
  if (result)
  {
    if (effect)
    {
      v3 = -500;
    }

    else
    {
      v3 = 1000;
    }

    if (a2)
    {
      v4 = -500;
    }

    else
    {
      v4 = 1000;
    }

    [(PRRenderer *)result _moveViewForLevel:v3 toLevel:v4];
  }
}

- (void)_moveViewForLevel:(uint64_t)level toLevel:
{
  if (self)
  {
    BSDispatchQueueAssertMain();
    [MEMORY[0x1E696AD98] numberWithInteger:a2];
    objc_claimAutoreleasedReturnValue();
    v11 = [OUTLINED_FUNCTION_12() objectForKey:v3];

    if (v11)
    {
      [v11 setLevel:level];
      v7 = *(self + 40);
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
      [v7 removeObjectForKey:v8];

      v9 = *(self + 40);
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:level];
      [v9 setObject:v11 forKey:v10];
    }
  }
}

- (void)_handleRenderingEventAction:(uint64_t)action
{
  v4 = a2;
  v5 = v4;
  if (action)
  {
    v6 = PRLogRendering(v4);
    if (OUTLINED_FUNCTION_33(v6))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_23();
      _os_log_impl(v9, v10, v11, v12, v13, 0x20u);
    }

    eventType = [v5 eventType];
    v15 = [eventType isEqual:@"PRRenderingEventTypeTap"];

    v16 = objc_opt_respondsToSelector();
    if (v15 && (v16 & 1) != 0)
    {
      v17 = *(action + 8);
      [v5 location];
      [v17 renderer:action didReceiveTapAtPoint:?];
    }

    if (objc_opt_respondsToSelector())
    {
      v18 = [[PRRenderingEvent alloc] initWithAction:v5];
      [*(action + 8) renderer:action didReceiveEvent:v18];
    }
  }
}

- (void)_handleCandidateSnapshotContextsAction:(uint64_t)action
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (action)
  {
    v6 = PRLogRendering(v4);
    if (OUTLINED_FUNCTION_15(v6))
    {
      v7 = objc_opt_class();
      NSStringFromClass(v7);
      v37 = v36 = 138543874;
      v38 = 2050;
      actionCopy = action;
      v40 = 2114;
      v41 = v5;
      OUTLINED_FUNCTION_8_0();
      _os_log_impl(v8, v9, v10, v11, v12, 0x20u);
    }

    if (objc_opt_respondsToSelector())
    {
      inflightSnapshotDescriptor = [v5 inflightSnapshotDescriptor];
      candidateSnapshotContexts = [v5 candidateSnapshotContexts];
      v15 = candidateSnapshotContexts;
      if (inflightSnapshotDescriptor && [candidateSnapshotContexts count])
      {
        v16 = [PRPosterSnapshotContext contextFromSnapshotDescriptor:inflightSnapshotDescriptor];
        v17 = objc_opt_new();
        v18 = objc_opt_new();
        OUTLINED_FUNCTION_6();
        v31 = 3221225472;
        v32 = __53__PRRenderer__handleCandidateSnapshotContextsAction___block_invoke;
        v33 = &unk_1E7845C90;
        v19 = v17;
        v34 = v19;
        v20 = v18;
        v35 = v20;
        [v15 enumerateKeysAndObjectsUsingBlock:v30];
        v21 = [PRPosterSnapshotHandle alloc];
        v29 = v20;
        v22 = [MEMORY[0x1E695DFD8] setWithArray:v20];
        v23 = [(PRPosterSnapshotHandle *)v21 initWithKnownContexts:v22 inflightContext:v16];

        v24 = [*(action + 8) renderer:action suitableSnapshotContextForSnapshotHandle:v23];
        if (v24 && ([v19 objectForKey:v24], (v25 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v26 = v25;
          [v5 respondWithSuitableURL:v25];
        }

        else
        {
          v28 = PFFunctionNameForAddress();
          OUTLINED_FUNCTION_27();
          v26 = PFGeneralErrorFromObjectWithLocalizedFailureReason();

          [v5 respondWithError:{v26, 0}];
        }
      }

      else
      {
        v27 = PFFunctionNameForAddress();
        OUTLINED_FUNCTION_27();
        v16 = PFGeneralErrorFromObjectWithLocalizedFailureReason();

        [v5 respondWithError:{v16, 0}];
      }
    }
  }
}

- (void)_handleSnapshotAction:(void *)action forScene:
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  actionCopy = action;
  if (self)
  {
    v8 = [MEMORY[0x1E695DFF8] pf_temporaryDirectoryURLWithBasenamePrefix:@"PRRenderer-Snapshot"];
    v9 = v8;
    if ((*(self + 24) & 1) != 0 || *(self + 25) == 1)
    {
      v18 = *MEMORY[0x1E696A588];
      v19[0] = @"PRRendererDelegate forbids snapshotting while scene is disconnecting/disconnected";
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      objc_claimAutoreleasedReturnValue();
      v10 = [OUTLINED_FUNCTION_12() pr_errorWithCode:7 userInfo:v3];
      [v6 respondWithError:v10];
    }

    else
    {
      v11 = [v8 URLByAppendingPathComponent:@"Snapshot"];
      v12 = [v11 URLByAppendingPathExtension:@"pks"];

      snapshotDescriptor = [v6 snapshotDescriptor];
      OUTLINED_FUNCTION_5();
      v14[1] = 3221225472;
      v14[2] = __45__PRRenderer__handleSnapshotAction_forScene___block_invoke;
      v14[3] = &unk_1E7845D08;
      v15 = v6;
      v16 = v9;
      v17 = v12;
      v3 = v12;
      [(PRRenderer *)self _executeSnapshotForDescriptor:snapshotDescriptor outputURL:v3 scene:actionCopy completion:v14];

      v10 = v15;
    }
  }
}

- (void)_handleScriptExecutionAction:(void *)action forScene:
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  actionCopy = action;
  v7 = actionCopy;
  if (self)
  {
    v8 = *(self + 216);
    v9 = PRLogRendering(actionCopy);
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        selfCopy2 = self;
        _os_log_error_impl(&dword_1A8AA7000, v10, OS_LOG_TYPE_ERROR, "<PRRenderer %p> bail on setting up script interpreter; one already setup", buf, 0xCu);
      }

      v11 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A588];
      v18 = @"A movie is already in progress.";
      response = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      [v11 pr_errorWithCode:7 userInfo:response];
      objc_claimAutoreleasedReturnValue();
      v13 = [OUTLINED_FUNCTION_12() responseForError:v11];
      [v5 sendResponse:v13];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        selfCopy2 = self;
        _os_log_debug_impl(&dword_1A8AA7000, v10, OS_LOG_TYPE_DEBUG, "<PRRenderer %p> setting up script interpreter", buf, 0xCu);
      }

      v14 = [PRPosterScriptInterpreter alloc];
      [v5 posterScript];
      objc_claimAutoreleasedReturnValue();
      v15 = [OUTLINED_FUNCTION_12() initWithScript:0 delegate:self];
      v16 = *(self + 216);
      *(self + 216) = v15;

      response = [MEMORY[0x1E698E600] response];
      [v5 sendResponse:response];
    }
  }
}

- (void)_executeSnapshotForDescriptor:(void *)descriptor outputURL:(void *)l scene:(void *)scene completion:
{
  v44[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  descriptorCopy = descriptor;
  lCopy = l;
  sceneCopy = scene;
  if (self)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v14 = objc_opt_respondsToSelector();
    v15 = objc_opt_respondsToSelector();
    v16 = objc_opt_respondsToSelector();
    if (v14 & 1) == 0 || ([*(self + 8) renderer:self shouldAttemptSnapshotForHandle:uUID])
    {
      v20 = v15 & 1;
      LODWORD(v24) = v15 & 1;
      HIDWORD(v24) = v16 & 1;
      pui_captureController = [lCopy pui_captureController];
      [pui_captureController setDelegate:self];
      v21 = [*(self + 232) acquireForReason:@"snapshotting"];
      v27 = [pui_captureController enqueueCaptureForDescriptor:v9 outputURL:descriptorCopy];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __71__PRRenderer__executeSnapshotForDescriptor_outputURL_scene_completion___block_invoke;
      v38[3] = &unk_1E7845D30;
      v42 = v20;
      v38[4] = self;
      v39 = uUID;
      v40 = v21;
      v41 = sceneCopy;
      OUTLINED_FUNCTION_6();
      v29 = 3221225472;
      v30 = __71__PRRenderer__executeSnapshotForDescriptor_outputURL_scene_completion___block_invoke_2;
      v31 = &unk_1E7845D58;
      v36 = v26;
      v37 = v25;
      selfCopy = self;
      v33 = v39;
      v34 = v40;
      v35 = v41;
      v22 = MEMORY[0x1E69C5268];
      v19 = v40;
      mainThreadScheduler = [v22 mainThreadScheduler];
      [v27 addSuccessBlock:v38 andFailureBlock:v28 scheduler:mainThreadScheduler];

      [(PRRenderer *)self _updateHangTracer];
    }

    else
    {
      v17 = MEMORY[0x1E696ABC0];
      v43 = *MEMORY[0x1E696A588];
      v44[0] = @"PRRendererDelegate forbids snapshotting at this time";
      pui_captureController = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      v19 = [v17 pr_errorWithCode:7 userInfo:pui_captureController];
      (*(sceneCopy + 2))(sceneCopy, v19);
    }
  }
}

- (void)captureController:(id)controller needsEnvironmentUpdate:(id)update
{
  controllerCopy = controller;
  updateCopy = update;
  if ([(PRRenderer *)self _isRenderingAdaptiveTime])
  {
    _calculateRealizedAdaptiveTimeHeight = [(PRRenderer *)&self->super.isa _calculateRealizedAdaptiveTimeHeight];
    scene = [controllerCopy scene];
    settings = [scene settings];
    [settings pui_salientContentRectangle];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v26.origin.y = _calculateRealizedAdaptiveTimeHeight + v13;
    v26.origin.x = v11;
    v26.size.width = v15;
    v26.size.height = v17;
    v18 = NSStringFromCGRect(v26);
    v19 = [(NSDictionary *)self->_currentEnvironmentOverrides mutableCopy];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = objc_opt_new();
    }

    v22 = v21;

    [v22 setObject:v18 forKeyedSubscript:@"salientContentRectangle"];
    v23 = [v22 copy];

    updateCopy = v23;
  }

  [(PRRenderer *)self _issueEnvironmentOverrides:updateCopy transition:0];
}

- (uint64_t)_derivedInterfaceOrientation
{
  if (!self)
  {
    return 0;
  }

  _rendererDynamicRotationIsActive = [(PRRenderer *)self _rendererDynamicRotationIsActive];
  _FBSScene = [*(self + 264) _FBSScene];
  settings = [_FBSScene settings];
  v6 = settings;
  if (_rendererDynamicRotationIsActive)
  {
    pui_deviceOrientation = [settings pui_deviceOrientation];
  }

  else
  {
    pui_deviceOrientation = [settings interfaceOrientation];
  }

  v8 = pui_deviceOrientation;

  return v8;
}

- (id)_makeGraphicComplicationPreviewScene
{
  selfCopy = self;
  if (self)
  {
    v3 = objc_alloc_init(PRComplicationsSnapshotSceneSpecification);
    v4 = OUTLINED_FUNCTION_19();
    selfCopy = [(PRRenderer *)v4 _makeComplicationPreviewSceneWithSpecification:v5];
  }

  return selfCopy;
}

- (id)_makeSidebarComplicationPreviewScene
{
  selfCopy = self;
  if (self)
  {
    v3 = objc_alloc_init(PRSidebarComplicationsSnapshotSceneSpecification);
    v4 = OUTLINED_FUNCTION_19();
    selfCopy = [(PRRenderer *)v4 _makeComplicationPreviewSceneWithSpecification:v5];
  }

  return selfCopy;
}

- (id)_makeInlineComplicationPreviewScene
{
  selfCopy = self;
  if (self)
  {
    v3 = objc_alloc_init(PRInlineComplicationSnapshotSceneSpecification);
    v4 = OUTLINED_FUNCTION_19();
    selfCopy = [(PRRenderer *)v4 _makeComplicationPreviewSceneWithSpecification:v5];
  }

  return selfCopy;
}

- (void)_updateProminentViewSizingAndTransforms:(id *)transforms
{
  v103 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (transforms)
  {
    v5 = transforms[2];
    if ([v5 showsHeaderElements])
    {
      context = [v5 context];
      HIDWORD(v87) = [context isSnapshot];

      context2 = [v5 context];
      LODWORD(v87) = [context2 isPreview];

      context3 = [v5 context];
      HIDWORD(v85) = [context3 scriptIsExecuting];

      deviceOrientation = [v5 deviceOrientation];
      v10 = [(PRRenderer *)transforms _viewForLevel:?];
      timePreviewProminentDisplayViewController = [transforms timePreviewProminentDisplayViewController];
      view = [timePreviewProminentDisplayViewController view];

      v13 = [(PRRenderer *)transforms _viewForLevel:?];
      complicationsPreviewProminentDisplayViewController = [transforms complicationsPreviewProminentDisplayViewController];
      view2 = [complicationsPreviewProminentDisplayViewController view];

      [view bounds];
      OUTLINED_FUNCTION_20();
      v15 = (deviceOrientation - 3) < 2;
      Width = CGRectGetWidth(v104);
      v105.origin.x = OUTLINED_FUNCTION_2_2();
      Height = CGRectGetHeight(v105);
      v106.origin.x = OUTLINED_FUNCTION_2_2();
      v18 = CGRectGetWidth(v106);
      v107.origin.x = OUTLINED_FUNCTION_2_2();
      v19 = CGRectGetHeight(v107);
      if (v18 < v19 != v15)
      {
        v20 = v19;
      }

      else
      {
        v20 = v18;
      }

      v21 = (Width < Height) ^ v15;
      v22 = v10;
      if (v21)
      {
        v23 = Width;
      }

      else
      {
        v23 = Height;
      }

      [v10 setFrame:{0.0, 0.0, v23, v20}];
      [v13 setFrame:{0.0, 0.0, v23, v20}];
      v77 = *(MEMORY[0x1E695EFD0] + 16);
      v80 = *MEMORY[0x1E695EFD0];
      *&v101.a = *MEMORY[0x1E695EFD0];
      *&v101.c = v77;
      v74 = *(MEMORY[0x1E695EFD0] + 32);
      *&v101.tx = v74;
      _rendererDynamicRotationIsActive = [(PRRenderer *)transforms _rendererDynamicRotationIsActive];
      if (_rendererDynamicRotationIsActive && ((HIDWORD(v87) | v87 | HIDWORD(v85)) & 1) != 0)
      {
        memset(&v102, 0, sizeof(v102));
        switch(deviceOrientation)
        {
          case 1:
            v35 = 0.0;
            break;
          case 3:
            v35 = 1.57079633;
            break;
          case 4:
            v35 = -1.57079633;
            break;
          default:
            v35 = 3.14159265;
            if (deviceOrientation != 2)
            {
              v35 = 0.0;
            }

            break;
        }

        CGAffineTransformMakeRotation(&v100, v35);
        UIIntegralTransform();
        [view bounds];
        OUTLINED_FUNCTION_20();
        *&v100.a = v80;
        *&v100.c = v77;
        *&v100.tx = v74;
        if ((deviceOrientation - 3) <= 1)
        {
          v37 = v20;
          v38 = v23;
          v39 = v2;
          v40 = CGRectGetHeight(*(&v36 - 3));
          v108.origin.x = OUTLINED_FUNCTION_2_2();
          v41 = v40 - CGRectGetWidth(v108);
          if (v41 < 0.0)
          {
            v41 = -v41;
          }

          v42 = v41 * 0.5;
          v43 = -(v41 * 0.5);
          if (deviceOrientation == 3)
          {
            v43 = v42;
          }

          *&t2.a = v80;
          *&t2.c = v77;
          *&t2.tx = v74;
          CGAffineTransformTranslate(&t1, &t2, v43, v43);
          UIIntegralTransform();
        }

        t1 = v100;
        t2 = v102;
        _rendererDynamicRotationIsActive = CGAffineTransformConcat(&v101, &t1, &t2);
      }

      v44 = [view setTransform:{OUTLINED_FUNCTION_21(_rendererDynamicRotationIsActive, v26, v27, v28, v29, v30, v31, v32, v33, v74, *(&v74 + 1), v77, *(&v77 + 1), v80, *(&v80 + 1), v83, v85, v87, view2, v92, v93, v94, v95, v96, v97, *&t2.a, *&t2.b, *&t2.c, *&t2.d, *&t2.tx, *&t2.ty, *&t1.a, *&t1.b, *&t1.c, *&t1.d, *&t1.tx, *&t1.ty, *&v100.a, *&v100.b, *&v100.c, *&v100.d, *&v100.tx, *&v100.ty, *&v101.a, *&v101.c, v34).n128_f64[0]}];
      *&v54 = OUTLINED_FUNCTION_21(v44, v45, v46, v47, v48, v49, v50, v51, v52, v75, v76, v78, v79, v81, v82, v84, v86, v88, v90, v92, v93, v94, v95, v96, v97, *&t2.a, *&t2.b, *&t2.c, *&t2.d, *&t2.tx, *&t2.ty, *&t1.a, *&t1.b, *&t1.c, *&t1.d, *&t1.tx, *&t1.ty, *&v100.a, *&v100.b, *&v100.c, *&v100.d, *&v100.tx, *&v100.ty, *&v101.a, *&v101.c, v53).n128_u64[0];
      v55 = v91;
      [v91 setTransform:v54];
      timePreviewProminentDisplayViewController2 = [transforms timePreviewProminentDisplayViewController];
      if ([(PRRenderer *)transforms _isRenderingAdaptiveTime])
      {
        _calculateRealizedAdaptiveTimeHeight = [(PRRenderer *)transforms _calculateRealizedAdaptiveTimeHeight];
        [timePreviewProminentDisplayViewController2 setAdaptsTimeTextHeight:1];
        [timePreviewProminentDisplayViewController2 adaptiveTimeTextHeight];
        v58 = BSFloatEqualToFloat();
        v59 = v58;
        v60 = PRLogRendering(v58);
        v61 = OUTLINED_FUNCTION_33(v60);
        if (v59)
        {
          if (v61)
          {
            LODWORD(v102.a) = 134217984;
            *(&v102.a + 4) = transforms;
            OUTLINED_FUNCTION_23();
            _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
          }
        }

        else
        {
          if (v61)
          {
            [timePreviewProminentDisplayViewController2 adaptiveTimeTextHeight];
            LODWORD(v102.a) = 134218496;
            *(&v102.a + 4) = transforms;
            WORD2(v102.b) = 2048;
            *(&v102.b + 6) = v67;
            HIWORD(v102.c) = 2048;
            v102.d = _calculateRealizedAdaptiveTimeHeight;
            OUTLINED_FUNCTION_23();
            _os_log_impl(v68, v69, v70, v71, v72, 0x20u);
          }

          v73 = MEMORY[0x1E69DD250];
          v92 = MEMORY[0x1E69E9820];
          v93 = 3221225472;
          v94 = __54__PRRenderer__updateProminentViewSizingAndTransforms___block_invoke;
          v95 = &unk_1E78441A8;
          v96 = timePreviewProminentDisplayViewController2;
          v97 = *&_calculateRealizedAdaptiveTimeHeight;
          [v73 _animateWithAnimationSettings:v4 animations:&v92 completion:0];
        }

        v55 = v91;
      }

      else
      {
        [timePreviewProminentDisplayViewController2 setAdaptsTimeTextHeight:0];
      }
    }
  }
}

- (double)_collectContentSizeForView:(uint64_t)view
{
  v3 = a2;
  v4 = v3;
  if (view)
  {
    if (([v3 isHidden] & 1) != 0 || (objc_msgSend(v4, "alpha"), v5 == 0.0))
    {
      v6 = *MEMORY[0x1E695F060];
    }

    else
    {
      [v4 bounds];
      v6 = v8;
      if (([v4 clipsToBounds] & 1) == 0)
      {
        subviews = [v4 subviews];
        OUTLINED_FUNCTION_14();
        v11 = [v10 countByEnumeratingWithState:? objects:? count:?];
        if (v11)
        {
          v12 = v11;
          v13 = *v17;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              OUTLINED_FUNCTION_28();
              if (v15 != v13)
              {
                objc_enumerationMutation(subviews);
              }

              [(PRRenderer *)view _collectContentSizeForView:?];
              OUTLINED_FUNCTION_26();
            }

            OUTLINED_FUNCTION_14();
            v12 = [subviews countByEnumeratingWithState:? objects:? count:?];
          }

          while (v12);
        }
      }
    }
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (id)_makeComplicationPreviewSceneWithSpecification:(uint64_t)specification
{
  v3 = a2;
  if (specification)
  {
    pui_posterKitComplicationsWorkspace = [MEMORY[0x1E699F7F8] pui_posterKitComplicationsWorkspace];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __61__PRRenderer__makeComplicationPreviewSceneWithSpecification___block_invoke;
    v22[3] = &unk_1E7844240;
    v23 = v3;
    v5 = [pui_posterKitComplicationsWorkspace pui_createScene:v22];

    targetConfiguredProperties = [*(specification + 16) targetConfiguredProperties];
    titleStyleConfiguration = [targetConfiguredProperties titleStyleConfiguration];

    v8 = *(specification + 8);
    if (v8)
    {
      v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    }

    else
    {
      v9 = 0;
    }

    traitCollection = [*(specification + 16) traitCollection];
    if ([traitCollection _backlightLuminance] == 1)
    {
      v11 = 1;
    }

    else
    {
      traitCollection2 = [*(specification + 16) traitCollection];
      v11 = [traitCollection2 _backlightLuminance] == 0;
    }

    [titleStyleConfiguration vibrancyConfigurationWithExtensionBundle:v9 luminanceReduced:v11];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_0_14();
    v17 = 3221225472;
    v18 = __61__PRRenderer__makeComplicationPreviewSceneWithSpecification___block_invoke_2;
    v19 = &unk_1E7845E10;
    v20 = v13;
    specificationCopy = specification;
    v14 = v13;
    [v5 configureParameters:v16];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)_isAmbientSupportedForRendererScene
{
  if (self)
  {
    _FBSScene = [*(self + 264) _FBSScene];
    settings = [_FBSScene settings];
    v3 = objc_opt_respondsToSelector();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)_updateEnvironmentForUpdatedTraitCollection
{
  if (self)
  {
    _FBSScene = [*(self + 264) _FBSScene];
    [*(self + 16) backlightProgress];
    v3 = v2;
    [*(self + 16) linearBacklightProgress];
    v5 = v4;
    [*(self + 16) unlockProgress];
    v7 = v6;
    [*(self + 16) deviceRoll];
    v9 = v8;
    [*(self + 16) devicePitch];
    v11 = v10;
    [*(self + 16) deviceYaw];
    v13 = v12;
    appliesCountertransformForRotation = [*(self + 16) appliesCountertransformForRotation];
    settings = [_FBSScene settings];
    traitCollection = [*(self + 264) traitCollection];
    [OUTLINED_FUNCTION_22() updateFromSceneSettings:? traitCollection:? overrides:?];

    [*(self + 16) setBacklightProgress:v3];
    [*(self + 16) setLinearBacklightProgress:v5];
    [*(self + 16) setUnlockProgress:v7];
    [*(self + 16) setDeviceRoll:v9];
    [*(self + 16) setDevicePitch:v11];
    [*(self + 16) setDeviceYaw:v13];
    [*(self + 16) setAppliesCountertransformForRotation:appliesCountertransformForRotation];
    OUTLINED_FUNCTION_25();
  }
}

- (void)scene:(char *)a1 willConnectToSession:(uint64_t)a2 options:.cold.1(char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"already have a scene"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_2();
    v6 = NSStringFromClass(v5);
    v7 = 138544642;
    v8 = a1;
    v9 = 2114;
    v10 = v6;
    v11 = 2048;
    v12 = a2;
    v13 = 2114;
    v14 = @"PRRenderer.m";
    v15 = 1024;
    v16 = 488;
    v17 = 2114;
    v18 = v4;
    _os_log_error_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v7, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)scene:(char *)a1 willConnectToSession:options:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:UIWindowSceneClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)scene:(char *)a1 willConnectToSession:options:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __37__PRRenderer__issueSceneInvalidated___block_invoke_85_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_1A8AA7000, a2, OS_LOG_TYPE_ERROR, "<PRRenderer %p> Invalidation completion block ALREADY CALLED", &v3, 0xCu);
}

void __37__PRRenderer__issueSceneInvalidated___block_invoke_85_cold_2(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = NSStringFromSelector(*(a1 + 64));
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_4_4();
  v10 = 2114;
  v11 = v7;
  v12 = 2048;
  v13 = v8;
  v14 = 2114;
  v15 = @"PRRenderer.m";
  v16 = 1024;
  v17 = 597;
  v18 = 2114;
  v19 = a3;
  _os_log_error_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, 0x3Au);
}

- (uint64_t)_performActionsForUIScene:(uint64_t)a3 withUpdatedFBSScene:(void *)a4 settingsDiff:fromSettings:transitionContext:lifecycleActionType:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v9 = [PRPosterEnvironmentImpl alloc];
  v10 = OUTLINED_FUNCTION_12();
  v11 = [(PRRenderer *)v10 extensionBundleURL];
  v12 = [v4 initWithSceneSettings:a2 traitCollection:a3 targetConfig:0 extensionBundleURL:v11];
  v13 = *a4;
  *a4 = v12;

  v14 = *a4;
  v15 = *(a1 + 112);

  return [v14 setOverrides:v15];
}

- (void)_performActionsForUIScene:(uint64_t)a3 withUpdatedFBSScene:(double)a4 settingsDiff:fromSettings:transitionContext:lifecycleActionType:.cold.2(uint64_t a1, NSObject *a2, uint64_t a3, double a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218240;
  v5 = a1;
  v6 = 2048;
  v7 = a4;
  OUTLINED_FUNCTION_34(&dword_1A8AA7000, a2, a3, "<PRRenderer %p> Unlock progress is %.6f (explicit)", &v4);
}

- (void)_performActionsForUIScene:(char *)a1 withUpdatedFBSScene:settingsDiff:fromSettings:transitionContext:lifecycleActionType:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_animatingUnlock"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_handleRenderingServiceEndpointDidChangeAction:(char)a1 .cold.1(char a1, os_log_t log)
{
  if (a1)
  {
    *v3 = 0;
    _os_log_impl(&dword_1A8AA7000, log, OS_LOG_TYPE_DEFAULT, "Not Received PRRenderingServiceEndpointDidChangeAction endpoint", v3, 2u);
  }
}

void __61__PRRenderer__handleRenderingServiceEndpointDidChangeAction___block_invoke_cold_1(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 16);
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  [v2 setDeviceMotionRotation:v4];
  OUTLINED_FUNCTION_25();
}

- (void)_executeStatement:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [PRRenderingEventAction alloc];
  v5 = [a1 renderingEvent];
  v6 = [(PRRenderingEventAction *)v4 initWithEvent:v5];

  [(PRRenderer *)a2 _handleRenderingEventAction:v6];
  v8 = PRLogRendering(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [a1 renderingEvent];
    v11 = 134218242;
    v12 = a2;
    v13 = 2114;
    v14 = v9;
    OUTLINED_FUNCTION_34(&dword_1A8AA7000, v8, v10, "<PRRenderer %p> stage direction executing rendering event: %{public}@", &v11);
  }
}

- (void)scriptInterpreter:executeStatement:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  v3 = 2112;
  v4 = v0;
  OUTLINED_FUNCTION_34(&dword_1A8AA7000, v1, v1, "<PRRenderer %p> execute statement: %@", v2);
}

- (void)updatedValuesForView:(double)a3 .cold.1(id *a1, double a2, double a3)
{
  [*a1 setBacklightProgress:a2];
  [*a1 setLinearBacklightProgress:a3];
  OUTLINED_FUNCTION_25();
}

void __68__PRRenderer__registerForAmbientPresentationTraitChangesIfNecessary__block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [a2 traitCollection];
  v7 = [v6 isAmbientPresented];
  v8 = [a2 traitCollection];
  [v8 ambientDisplayStyle];
  v9 = AMUIAmbientDisplayStyleString();
  OUTLINED_FUNCTION_4_4();
  v12 = 1024;
  v13 = v7;
  v14 = 2114;
  v15 = v10;
  _os_log_debug_impl(&dword_1A8AA7000, a3, OS_LOG_TYPE_DEBUG, "<PRRenderer %p> Updating renderer environment for ambient presentation update [ isAmbientPresented:%{BOOL}d ; ambientDisplayStyle:%{public}@ ]", v11, 0x1Cu);
}

@end