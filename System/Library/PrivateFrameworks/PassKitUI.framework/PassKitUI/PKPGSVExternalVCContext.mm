@interface PKPGSVExternalVCContext
+ (PKPGSVExternalVCContext)createForTransitionCoordinator:(void *)coordinator withParentViewController:(void *)controller dashboardPassGroupViewController:;
- (double)_destinationViewFrameWithSize:(void *)size@<X2> inViewControllerFrame:(uint64_t)frame@<X8>;
- (id)_animatingView;
- (id)_containedView;
- (id)_didDisappear;
- (uint64_t)_invert;
- (uint64_t)_updateForViewControllerFrame:(int)frame usingPassAnchorPoint:(void *)point withSpringConfiguration:(int)configuration preferModalSpringFactories:;
- (unsigned)_willDisappear;
- (void)_destinationViewControllerFrame;
- (void)_didAppear;
- (void)_interruptTransferedGroupView;
- (void)_referenceView;
- (void)_setTransition:(uint64_t)transition;
- (void)_setTransitionState:(uint64_t)state;
- (void)_terminate;
- (void)_willAppearInContainerView:(uint64_t)view;
- (void)_willLoanGroupView;
- (void)_willTransferGroupView;
- (void)viewControllerLayoutProvider;
@end

@implementation PKPGSVExternalVCContext

+ (PKPGSVExternalVCContext)createForTransitionCoordinator:(void *)coordinator withParentViewController:(void *)controller dashboardPassGroupViewController:
{
  controllerCopy = controller;
  coordinatorCopy = coordinator;
  v9 = a2;
  objc_opt_self();
  v10 = [PKPGSVExternalVCContext alloc];
  v11 = v9;
  v12 = coordinatorCopy;
  result = controllerCopy;
  v14 = result;
  if (!v10)
  {
    goto LABEL_7;
  }

  if (v11 && v12 && result)
  {
    v16.receiver = v10;
    v16.super_class = PKPGSVExternalVCContext;
    v15 = objc_msgSendSuper2(&v16, sel_init);
    v10 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_transitionCoordinator, a2);
      objc_storeWeak(&v10->_parentViewController, v12);
      objc_storeStrong(&v10->_viewController, controller);
      objc_storeStrong(&v10->_dashboardPassGroupViewController, controller);
      v10->_sending = 1;
      v10->_visibility = 0;
    }

LABEL_7:

    return v10;
  }

  __break(1u);
  return result;
}

- (uint64_t)_invert
{
  if (result)
  {
    if (*(result + 8) == 1)
    {
      __break(1u);
    }

    else
    {
      *(result + 40) ^= 1u;
    }
  }

  return result;
}

- (id)_containedView
{
  if (!self)
  {
LABEL_4:

    return self;
  }

  if (*(self + 24))
  {
    self = self[4];
    v1 = vars8;
    goto LABEL_4;
  }

  self = 0;

  return self;
}

- (void)_willAppearInContainerView:(uint64_t)view
{
  v3 = a2;
  v4 = v3;
  if (!view)
  {
LABEL_26:

    return;
  }

  if (v3 && (*(view + 8) & 1) == 0 && !*(view + 24))
  {
    *(view + 24) = 1;
    v5 = objc_autoreleasePoolPush();
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = *(view + 32);
    if (v14)
    {
      superview = [v14 superview];
      v16 = superview;
      v17 = superview != v4;
      if (superview != v4 && superview)
      {
        [*(view + 32) removeFromSuperview];
      }

      [*(view + 32) setFrame:{v7, v9, v11, v13}];
      if (v16 != v4)
      {
        [v4 addSubview:*(view + 32)];
      }

      v18 = *(view + 32);
      if (v18)
      {
        *(v18 + 600) = 1;
      }
    }

    else
    {
      v19 = [PKPGSVExternalVCContextContainerView alloc];
      view = [*(view + 56) view];
      v21 = view;
      v22 = v21;
      if (v19)
      {
        if (!v21)
        {
          goto LABEL_27;
        }

        v69.receiver = v19;
        v69.super_class = PKPGSVExternalVCContextContainerView;
        v19 = objc_msgSendSuper2(&v69, sel_initWithFrame_, v7, v9, v11, v13);
        if (v19)
        {
          v23 = objc_alloc_init(MEMORY[0x1E69B8978]);
          actionRemover = v19->_actionRemover;
          v19->_actionRemover = v23;

          v25 = *MEMORY[0x1E695EFF8];
          v26 = *(MEMORY[0x1E695EFF8] + 8);
          objc_storeStrong(&v19->_view, view);
          v64 = v26;
          v65 = v25;
          [v22 setFrame:{v25, v26, v11, v13}];
          [(PKPGSVExternalVCContextContainerView *)v19 addSubview:v22];
          v27 = v19->_view;
          if (!v27)
          {
            goto LABEL_27;
          }

          v28 = v27;
          [(UIView *)v28 bounds];
          v62 = v30;
          v63 = v29;
          v60 = v32;
          v61 = v31;
          [(UIView *)v28 anchorPoint];
          v58 = v34;
          v59 = v33;
          [(UIView *)v28 alignmentRectInsets];
          v36 = v35;
          v38 = v37;
          v40 = v39;
          v42 = v41;

          [(UIView *)v28 center];
          v44 = v43;
          v46 = v45;

          v19->_frame.bounds.origin.x = v63;
          v19->_frame.bounds.origin.y = v62;
          v19->_frame.bounds.size.width = v61;
          v19->_frame.bounds.size.height = v60;
          v19->_frame.bounds.anchorPoint.x = v59;
          v19->_frame.bounds.anchorPoint.y = v58;
          *&v19->_frame.bounds.content.inset.top = 0u;
          *&v19->_frame.bounds.content.inset.bottom = 0u;
          v19->_frame.bounds.content.alignmentInset.top = v36;
          v19->_frame.bounds.content.alignmentInset.left = v38;
          v19->_frame.bounds.content.alignmentInset.bottom = v40;
          v19->_frame.bounds.content.alignmentInset.right = v42;
          v19->_frame.bounds.transform.scale = 1.0;
          v19->_frame.position.x = v44;
          v19->_frame.position.y = v46;
          v47 = [[PKBlurView alloc] initWithFrame:v65, v64, v11, v13];
          portalContainer = v19->_portalContainer;
          v19->_portalContainer = v47;

          [(PKBlurView *)v19->_portalContainer setHitTestEnabled:0];
          [(PKPGSVExternalVCContextContainerView *)v19 addSubview:v19->_portalContainer];
          layer = [MEMORY[0x1E6979408] layer];
          portalLayer = v19->_portalLayer;
          v19->_portalLayer = layer;

          [(CAPortalLayer *)v19->_portalLayer setDelegate:v19->_actionRemover];
          [(CAPortalLayer *)v19->_portalLayer setFrame:v65, v64, v11, v13];
          [(CAPortalLayer *)v19->_portalLayer setHidesSourceLayer:1];
          v51 = v19->_portalLayer;
          layer2 = [v22 layer];
          [(CAPortalLayer *)v51 setSourceLayer:layer2];

          layer3 = [(PKBlurView *)v19->_portalContainer layer];
          [layer3 addSublayer:v19->_portalLayer];

          v19->_hitTestEnabled = 1;
          v19->_state = 0;
        }
      }

      v54 = *(view + 32);
      *(view + 32) = v19;

      [v4 addSubview:*(view + 32)];
      v17 = 1;
    }

    if (*(view + 32))
    {
      WeakRetained = objc_loadWeakRetained((view + 16));
      v56 = WeakRetained;
      if (WeakRetained)
      {
        [WeakRetained addChildViewController:*(view + 56)];
      }

      if (v17)
      {
        v57 = MEMORY[0x1E69DD250];
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __54__PKPGSVExternalVCContext__willAppearInContainerView___block_invoke;
        v66[3] = &unk_1E8010A10;
        v67 = v56;
        viewCopy = view;
        [v57 performWithoutAnimation:v66];
      }

      *(view + 32);

      objc_autoreleasePoolPop(v5);
      goto LABEL_26;
    }
  }

LABEL_27:
  __break(1u);
}

void __54__PKPGSVExternalVCContext__willAppearInContainerView___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = [v3 view];
    [v5 layoutIfNeeded];
  }

  else
  {
    v4 = *(*(a1 + 40) + 32);

    [v4 layoutIfNeeded];
  }
}

- (void)_didAppear
{
  if (self)
  {
    if ((*(self + 8) & 1) != 0 || *(self + 24) != 1)
    {
      __break(1u);
    }

    else
    {
      *(self + 24) = 2;
      WeakRetained = objc_loadWeakRetained((self + 16));
      if (WeakRetained)
      {
        v3 = WeakRetained;
        [*(self + 56) didMoveToParentViewController:WeakRetained];
        WeakRetained = v3;
      }
    }
  }
}

- (unsigned)_willDisappear
{
  if (result)
  {
    if ((result[8] & 1) != 0 || result[24] - 1 >= 2)
    {
      __break(1u);
    }

    else
    {
      result[24] = 3;
      v1 = *(result + 4);
      if (v1)
      {
        *(v1 + 600) = 0;
      }

      return [*(result + 7) willMoveToParentViewController:0];
    }
  }

  return result;
}

- (id)_didDisappear
{
  if (result)
  {
    v1 = result;
    if ((result[1] & 1) != 0 || *(result + 24) != 3)
    {
      __break(1u);
    }

    else
    {
      *(result + 24) = 0;
      [result[7] removeFromParentViewController];
      v2 = v1[4];

      return [v2 removeFromSuperview];
    }
  }

  return result;
}

- (void)_terminate
{
  if (self)
  {
    if (*(self + 8) != 1)
    {
      v2 = *(self + 24);
      if ((v2 - 1) <= 1)
      {
        [(PKPGSVExternalVCContext *)self _willDisappear];
        v2 = *(self + 24);
      }

      if (v2 == 3)
      {
        if (*(self + 8) == 1)
        {
          goto LABEL_12;
        }

        *(self + 24) = 0;
        [*(self + 56) removeFromParentViewController];
        [*(self + 32) removeFromSuperview];
        v2 = *(self + 24);
      }

      if (!v2)
      {
        superview = [*(self + 32) superview];

        if (!superview)
        {
          v4 = *(self + 32);
          *(self + 32) = 0;

          *(self + 8) = 1;
          return;
        }
      }
    }

LABEL_12:
    __break(1u);
  }
}

- (void)_willLoanGroupView
{
  if (!self)
  {
    return;
  }

  v1 = *(self + 32);
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = *(self + 48);
  if (!v2)
  {
LABEL_13:
    v6 = 0;
    v4 = 0;
    goto LABEL_8;
  }

  if ((*(v2 + 98) & 1) != 0 || *(v2 + 99) == 1)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v3 = *(v2 + 104);
  if (!v3)
  {
    goto LABEL_13;
  }

  v6 = v3;
  v4 = *(v3 + 1);
LABEL_8:
  v5 = v4;
  [(PKPGSVExternalVCContextContainerView *)v1 _willLoanGroupView:v5];
}

- (void)_interruptTransferedGroupView
{
  if (!self)
  {
    return;
  }

  v1 = *(self + 32);
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = *(self + 48);
  if (!v2)
  {
LABEL_13:
    v6 = 0;
    v4 = 0;
    goto LABEL_8;
  }

  if ((*(v2 + 98) & 1) != 0 || *(v2 + 99) == 1)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v3 = *(v2 + 104);
  if (!v3)
  {
    goto LABEL_13;
  }

  v6 = v3;
  v4 = *(v3 + 1);
LABEL_8:
  v5 = v4;
  [(PKPGSVExternalVCContextContainerView *)v1 _interruptTransferedGroupView:v5];
}

- (void)_willTransferGroupView
{
  if (self)
  {
    v2 = *(self + 32);
    if (!v2 || (v3 = *(self + 48)) != 0 && ((*(v3 + 98) & 1) != 0 || *(v3 + 99) == 1))
    {
      __break(1u);
    }

    else
    {
      [(PKPGSVExternalVCContextContainerView *)v2 _willTransferGroupView];
    }
  }
}

- (uint64_t)_updateForViewControllerFrame:(int)frame usingPassAnchorPoint:(void *)point withSpringConfiguration:(int)configuration preferModalSpringFactories:
{
  pointCopy = point;
  if (self)
  {
    v10 = *(self + 32);
    if (!v10)
    {
      __break(1u);
      return MEMORY[0x1EEE66C30]();
    }

    v11 = *(a2 + 112);
    v16[6] = *(a2 + 96);
    v16[7] = v11;
    v17 = *(a2 + 128);
    v12 = *(a2 + 48);
    v16[2] = *(a2 + 32);
    v16[3] = v12;
    v13 = *(a2 + 80);
    v16[4] = *(a2 + 64);
    v16[5] = v13;
    v14 = *(a2 + 16);
    v16[0] = *a2;
    v16[1] = v14;
    [(PKPGSVExternalVCContextContainerView *)v10 _updateForViewControllerFrame:v16 usingPassAnchorPoint:frame withSpringConfiguration:pointCopy preferModalSpringFactories:configuration];
  }

  return MEMORY[0x1EEE66C30]();
}

- (void)viewControllerLayoutProvider
{
  if (result)
  {
    v2 = result[8];
    if (!v2)
    {
      __break(1u);
      return result;
    }

    result = v2;
    v1 = vars8;
  }

  return result;
}

- (void)_referenceView
{
  if (result)
  {
    v2 = result[4];
    if (!v2)
    {
      __break(1u);
      return result;
    }

    result = v2;
    v1 = vars8;
  }

  return result;
}

- (id)_animatingView
{
  if (self)
  {
    self = [(PKPGSVExternalVCContextContainerView *)self[4] _animatingView];
    v1 = vars8;
  }

  return self;
}

- (void)_destinationViewControllerFrame
{
  if (self)
  {
    view = [*(self + 56) view];
    if (view)
    {
      v20 = view;
      [v20 bounds];
      *a2 = v4;
      *(a2 + 8) = v5;
      *(a2 + 16) = v6;
      *(a2 + 24) = v7;
      [v20 anchorPoint];
      *(a2 + 32) = v8;
      *(a2 + 40) = v9;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      [v20 alignmentRectInsets];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      *(a2 + 80) = v11;
      *(a2 + 88) = v13;
      *(a2 + 96) = v15;
      *(a2 + 104) = v17;
      *(a2 + 112) = 0x3FF0000000000000;
      [v20 center];
      *(a2 + 120) = v18;
      *(a2 + 128) = v19;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a2 + 128) = 0;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

- (double)_destinationViewFrameWithSize:(void *)size@<X2> inViewControllerFrame:(uint64_t)frame@<X8>
{
  if (self)
  {
    viewControllerLayoutProvider = [(PKPGSVExternalVCContext *)self viewControllerLayoutProvider];
    v8 = viewControllerLayoutProvider;
    v9 = 0uLL;
    memset(v19, 0, 24);
    if (viewControllerLayoutProvider)
    {
      objc_msgSend_externalVCContext_destinationFrameForViewWithSize_inViewControllerFrame_(viewControllerLayoutProvider, *size, size[1], size[2], size[3], size[4], size[5], size[6], size[7], size[8], size[9], size[10], size[11], size[12], size[13], size[14], size[15], size[16]);
      v9 = 0u;
    }

    v10 = *(a2 + 32);
    v11 = vmovn_s64(vceqq_f64(v9, v10));
    if (v11.i32[0] & v11.i32[1])
    {
      *(frame + 96) = 0u;
      *(frame + 112) = 0u;
      *(frame + 128) = 0;
      *(frame + 32) = 0u;
      *(frame + 48) = 0u;
      *(frame + 64) = 0u;
      *(frame + 80) = 0u;
      *frame = 0u;
      *(frame + 16) = 0u;
    }

    else
    {
      v12 = *(a2 + 80);
      *(frame + 64) = *(a2 + 64);
      *(frame + 80) = v12;
      *(frame + 96) = *(a2 + 96);
      *(frame + 112) = *(a2 + 112);
      v13 = *(a2 + 16);
      *frame = *a2;
      *(frame + 16) = v13;
      v14 = *(a2 + 48);
      *(frame + 32) = *(a2 + 32);
      *(frame + 48) = v14;
      v15 = vdup_n_s32(v19[0].f64[0] == 1.0);
      v16.i64[0] = v15.u32[0];
      v16.i64[1] = v15.u32[1];
      v17 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v16, 0x3FuLL)), 0, vmulq_n_f64(0, v19[0].f64[0]));
      *(frame + 120) = vmlaq_f64(vmlsq_f64(*(v19 + 8), v17, v9), v17, v10);
    }
  }

  else
  {
    *(frame + 128) = 0;
    result = 0.0;
    *(frame + 96) = 0u;
    *(frame + 112) = 0u;
    *(frame + 64) = 0u;
    *(frame + 80) = 0u;
    *(frame + 32) = 0u;
    *(frame + 48) = 0u;
    *frame = 0u;
    *(frame + 16) = 0u;
  }

  return result;
}

- (void)_setTransition:(uint64_t)transition
{
  v4 = a2;
  if (transition)
  {
    if (*(transition + 72) != v4)
    {
      v6 = v4;
      objc_storeStrong((transition + 72), a2);
      v4 = v6;
      if (!v6)
      {
        v5 = *(transition + 80);
        *(transition + 80) = 0;

        v4 = 0;
      }
    }
  }
}

- (void)_setTransitionState:(uint64_t)state
{
  v4 = a2;
  if (state && *(state + 80) != v4)
  {
    v5 = v4;
    if (v4 && !*(state + 72))
    {
      __break(1u);
      return;
    }

    objc_storeStrong((state + 80), a2);
    v4 = v5;
  }
}

@end