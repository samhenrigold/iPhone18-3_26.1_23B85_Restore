@interface CKBrowserDragManager
- (BOOL)usesSeparateDragWindow;
- (CGPoint)locationInView;
- (CKBrowserDragControllerDelegate)delegate;
- (CKBrowserDragControllerTranscriptDelegate)transcriptDelegate;
- (CKBrowserDragManager)initWithTargetView:(id)view;
- (id)browserDragViewControllerTargetView:(id)view;
- (id)draggedSticker;
- (id)superviewOfView:(id)view matchingClass:(Class)class;
- (void)beginDraggingItem:(id)item withAnimatedDragImage:(id)image fromRect:(CGRect)rect;
- (void)beginDraggingItem:(id)item withDragImage:(id)image fromRect:(CGRect)rect;
- (void)browserDragViewController:(id)controller dragEndedWithTarget:(id)target;
- (void)browserDragViewController:(id)controller draggedWithTarget:(id)target;
- (void)dealloc;
- (void)setPlusButtonHidden:(BOOL)hidden;
- (void)tapRecognized:(id)recognized;
@end

@implementation CKBrowserDragManager

- (CKBrowserDragManager)initWithTargetView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = CKBrowserDragManager;
  v5 = [(CKBrowserDragManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(CKBrowserDragManager *)v5 setTargetView:viewCopy];
    v7 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v6 action:sel_tapRecognized_];
    [v7 setMinimumPressDuration:2.22507386e-308];
    [v7 setDelegate:v6];
    [v7 setCancelsTouchesInView:0];
    [viewCopy addGestureRecognizer:v7];
    [(CKBrowserDragManager *)v6 setGestureRecognizer:v7];
  }

  return v6;
}

- (void)dealloc
{
  gestureRecognizer = [(CKBrowserDragManager *)self gestureRecognizer];
  [gestureRecognizer setEnabled:0];

  targetView = [(CKBrowserDragManager *)self targetView];
  gestureRecognizer2 = [(CKBrowserDragManager *)self gestureRecognizer];
  [targetView removeGestureRecognizer:gestureRecognizer2];

  v6.receiver = self;
  v6.super_class = CKBrowserDragManager;
  [(CKBrowserDragManager *)&v6 dealloc];
}

- (BOOL)usesSeparateDragWindow
{
  if (IMIsRunningIniMessageAppsViewService())
  {
    return 0;
  }

  v2 = IMIsRunningIniMessageAppExtension();
  if (v2 || CKIsRunningInInCallService(v2, v3))
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x1E69DCBB8] usesInputSystemUI] ^ 1;
  }
}

- (void)beginDraggingItem:(id)item withDragImage:(id)image fromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v19[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (image)
  {
    imageCopy = image;
    v13 = [CKAnimatedImage alloc];
    v19[0] = imageCopy;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

    v15 = [(CKAnimatedImage *)v13 initWithImages:v14 durations:&unk_1F04E6900];
    [(CKBrowserDragManager *)self beginDraggingItem:itemCopy withAnimatedDragImage:v15 fromRect:x, y, width, height];
  }

  else
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = 0;
    v18 = [v16 exceptionWithName:@"CKBrowserDragManagerDragException" reason:@"beginDraggingItem userInfo:{should not be called with a nil image parameter", 0}];

    IMLogSimulateCrashForException();
  }
}

- (id)superviewOfView:(id)view matchingClass:(Class)class
{
  viewCopy = view;
  v5 = viewCopy;
  if (viewCopy)
  {
    v6 = viewCopy;
    do
    {
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview = [v6 superview];

      v6 = superview;
    }

    while (superview);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)beginDraggingItem:(id)item withAnimatedDragImage:(id)image fromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  itemCopy = item;
  imageCopy = image;
  gestureRecognizer = [(CKBrowserDragManager *)self gestureRecognizer];
  state = [gestureRecognizer state];

  if (CKIsRunningInMacCatalyst())
  {
    currentItem = [(CKBrowserDragManager *)self currentItem];

    if (!currentItem)
    {
      goto LABEL_12;
    }

LABEL_30:
    if (IMOSLoggingEnabled())
    {
      v91 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v91, OS_LOG_TYPE_INFO, "Drag and drop cancelled, current gesture recognizer state is not recognized, changed, or began", buf, 2u);
      }
    }

    delegate = [(CKBrowserDragManager *)self delegate];
    v93 = objc_opt_respondsToSelector();

    if (v93)
    {
      delegate2 = [(CKBrowserDragManager *)self delegate];
      [delegate2 dragManager:self didEndDraggingItem:itemCopy toDragTarget:0 dropArea:0];
    }

    goto LABEL_36;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    v18 = CKIsRunningInCameraAppsClient(1, v17);

    if (!v18)
    {
      v19 = MEMORY[0x1E69DD0A8];
      keyWindow = [MEMORY[0x1E69DD2E8] keyWindow];
      windowScene = [keyWindow windowScene];
      v22 = [v19 sharedTextEffectsWindowForWindowScene:windowScene];

      LODWORD(keyWindow) = [v22 _isFullscreen];
      if (!keyWindow)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
  }

  currentItem2 = [(CKBrowserDragManager *)self currentItem];
  if (currentItem2)
  {

    goto LABEL_30;
  }

  if ((state - 1) > 2)
  {
    goto LABEL_30;
  }

LABEL_12:
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CKBrowserDragManagerWillStartDraggingNotification" object:0];

  [(CKBrowserDragManager *)self setCurrentItem:itemCopy];
  usesSeparateDragWindow = [(CKBrowserDragManager *)self usesSeparateDragWindow];
  targetView = [(CKBrowserDragManager *)self targetView];
  window = [targetView window];

  if (usesSeparateDragWindow)
  {
    v28 = [CKBrowserDragWindow alloc];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v30 = [(CKPresentationControllerWindow *)v28 initWithFrame:0 allowsRotation:0 allowsStatusBarChanges:0 restrictedToPortraitOrientation:?];

    window = v30;
  }

  [(CKBrowserDragManager *)self setDragWindow:window];
  targetView2 = [(CKBrowserDragManager *)self targetView];
  [targetView2 convertRect:0 toView:{x, y, width, height}];
  v101 = v33;
  v102 = v32;
  v99 = v35;
  v100 = v34;

  gestureRecognizer2 = [(CKBrowserDragManager *)self gestureRecognizer];
  targetView3 = [(CKBrowserDragManager *)self targetView];
  [gestureRecognizer2 locationInView:targetView3];
  v39 = v38;
  v41 = v40;

  targetView4 = [(CKBrowserDragManager *)self targetView];
  [targetView4 convertPoint:0 toView:{v39, v41}];
  v44 = v43;
  v46 = v45;

  targetView5 = [(CKBrowserDragManager *)self targetView];
  v48 = [(CKBrowserDragManager *)self superviewOfView:targetView5 matchingClass:objc_opt_class()];

  targetView6 = [(CKBrowserDragManager *)self targetView];
  [targetView6 convertRect:v48 toView:{x, y, width, height}];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;

  gestureRecognizer3 = [(CKBrowserDragManager *)self gestureRecognizer];
  [gestureRecognizer3 locationInView:v48];
  v60 = v59;
  v62 = v61;

  targetView7 = [(CKBrowserDragManager *)self targetView];
  [targetView7 convertPoint:v48 toView:{v60, v62}];
  v65 = v64;
  v67 = v66;

  v68 = [CKBrowserDragViewController alloc];
  gestureRecognizer4 = [(CKBrowserDragManager *)self gestureRecognizer];
  v70 = [(CKBrowserDragViewController *)v68 initWithDragImage:imageCopy inSourceRect:gestureRecognizer4 withSourcePoint:v102 keyboardSourceRect:v101 keyboardSourcePoint:v100 withGestureRecognizer:v99, v44, v46, v51, v53, v55, v57, v65, v67];

  keyWindow2 = [MEMORY[0x1E69DD2E8] keyWindow];
  windowScene2 = [keyWindow2 windowScene];
  _enhancedWindowingEnabled = [windowScene2 _enhancedWindowingEnabled];

  if (_enhancedWindowingEnabled)
  {
    [(CKBrowserDragViewController *)v70 setKeyboardWindowSourceView:v48];
  }

  [(CKBrowserDragViewController *)v70 setDelegate:self];
  [(CKBrowserDragManager *)self setDragViewController:v70];
  if (usesSeparateDragWindow)
  {
    v74 = 0;
  }

  else
  {
    v74 = 5;
  }

  [(CKBrowserDragViewController *)v70 setModalPresentationStyle:v74];
  delegate3 = [(CKBrowserDragManager *)self delegate];
  v76 = objc_opt_respondsToSelector();

  if (v76)
  {
    delegate4 = [(CKBrowserDragManager *)self delegate];
    -[CKBrowserDragViewController setCanScale:](v70, "setCanScale:", [delegate4 dragManager:self canScaleItem:itemCopy]);
  }

  delegate5 = [(CKBrowserDragManager *)self delegate];
  v79 = objc_opt_respondsToSelector();

  if (v79)
  {
    delegate6 = [(CKBrowserDragManager *)self delegate];
    -[CKBrowserDragViewController setCanRotate:](v70, "setCanRotate:", [delegate6 dragManager:self canRotateItem:itemCopy]);
  }

  delegate7 = [(CKBrowserDragManager *)self delegate];
  v82 = objc_opt_respondsToSelector();

  if (v82)
  {
    delegate8 = [(CKBrowserDragManager *)self delegate];
    -[CKBrowserDragViewController setCanPeel:](v70, "setCanPeel:", [delegate8 dragManager:self canPeelItem:itemCopy]);
  }

  [window setHidden:0];
  rootViewController = [window rootViewController];
  if (!usesSeparateDragWindow)
  {
    v95 = 10;
    while (1)
    {
      presentedViewController = [rootViewController presentedViewController];
      if (!presentedViewController)
      {
        break;
      }

      v97 = presentedViewController;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      presentedViewController2 = [rootViewController presentedViewController];

      rootViewController = presentedViewController2;
      if (!--v95)
      {
        goto LABEL_27;
      }
    }
  }

  presentedViewController2 = rootViewController;
LABEL_27:
  [presentedViewController2 presentViewController:v70 animated:0 completion:0];
  [(CKBrowserDragManager *)self setPresentingViewController:presentedViewController2];
  transcriptDelegate = [(CKBrowserDragManager *)self transcriptDelegate];
  [transcriptDelegate dragManagerDidBeginDragging:self];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:@"CKBrowserDragManagerDidStartDraggingNotification" object:0];

  delegate9 = [(CKBrowserDragManager *)self delegate];
  v89 = objc_opt_respondsToSelector();

  if (v89)
  {
    delegate10 = [(CKBrowserDragManager *)self delegate];
    [delegate10 dragManager:self didBeginDraggingItem:itemCopy];
  }

LABEL_36:
}

- (void)setPlusButtonHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  dragViewController = [(CKBrowserDragManager *)self dragViewController];
  [dragViewController setPlusImageViewHidden:hiddenCopy];
}

- (void)tapRecognized:(id)recognized
{
  recognizedCopy = recognized;
  targetView = [(CKBrowserDragManager *)self targetView];
  [recognizedCopy locationInView:targetView];
  v7 = v6;
  v9 = v8;

  [(CKBrowserDragManager *)self setLocationInView:v7, v9];
}

- (void)browserDragViewController:(id)controller draggedWithTarget:(id)target
{
  targetCopy = target;
  transcriptDelegate = [(CKBrowserDragManager *)self transcriptDelegate];
  [transcriptDelegate dragManager:self draggedItemWithTarget:targetCopy];

  delegate = [(CKBrowserDragManager *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CKBrowserDragManager *)self delegate];
    currentItem = [(CKBrowserDragManager *)self currentItem];
    [delegate2 dragManager:self didDragItem:currentItem toDragTarget:targetCopy];
  }
}

- (id)browserDragViewControllerTargetView:(id)view
{
  transcriptDelegate = [(CKBrowserDragManager *)self transcriptDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    transcriptDelegate2 = [(CKBrowserDragManager *)self transcriptDelegate];
    v7 = [transcriptDelegate2 dragManagerTargetView:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)browserDragViewController:(id)controller dragEndedWithTarget:(id)target
{
  targetCopy = target;
  currentItem = [(CKBrowserDragManager *)self currentItem];
  if (targetCopy)
  {
    transcriptDelegate = [(CKBrowserDragManager *)self transcriptDelegate];
    v8 = [transcriptDelegate dragManager:self dropAreaForDragTarget:targetCopy];
  }

  else
  {
    v8 = 0;
  }

  delegate = [(CKBrowserDragManager *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(CKBrowserDragManager *)self delegate];
    v12 = [delegate2 dragManager:self shouldCancelDraggingForItem:currentItem toDragTarget:targetCopy dropArea:v8];
  }

  else
  {
    v12 = 0;
  }

  v13 = (v8 == 0) | v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__CKBrowserDragManager_browserDragViewController_dragEndedWithTarget___block_invoke;
  aBlock[3] = &unk_1E72F0D40;
  aBlock[4] = self;
  v14 = currentItem;
  v30 = v14;
  v15 = targetCopy;
  v31 = v15;
  v32 = v8;
  v33 = v13 & 1;
  v16 = _Block_copy(aBlock);
  if (v13)
  {
    dragViewController = [(CKBrowserDragManager *)self dragViewController];
    [dragViewController animateBackToSourceCompletionBlock:v16];
  }

  else
  {
    delegate3 = [(CKBrowserDragManager *)self delegate];
    currentItem2 = [(CKBrowserDragManager *)self currentItem];
    v20 = [delegate3 dragManager:self canPeelItem:currentItem2];

    if (v20)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __70__CKBrowserDragManager_browserDragViewController_dragEndedWithTarget___block_invoke_2;
      v27[3] = &unk_1E72F0D68;
      v27[4] = self;
      v28 = v16;
      v21 = _Block_copy(v27);
      transcriptDelegate2 = [(CKBrowserDragManager *)self transcriptDelegate];
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        transcriptDelegate3 = [(CKBrowserDragManager *)self transcriptDelegate];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __70__CKBrowserDragManager_browserDragViewController_dragEndedWithTarget___block_invoke_4;
        v25[3] = &unk_1E72F0DB8;
        v26 = v21;
        [transcriptDelegate3 dragManager:self overrideDropPointForTarget:v15 completion:v25];
      }

      else
      {
        [v15 screenCoordinate];
        (*(v21 + 2))(v21, 0);
      }
    }

    else
    {
      v16[2](v16);
    }
  }
}

void __70__CKBrowserDragManager_browserDragViewController_dragEndedWithTarget___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 dragManager:*(a1 + 32) didEndDraggingItem:*(a1 + 40) toDragTarget:*(a1 + 48) dropArea:*(a1 + 56)];
  }

  if (*(a1 + 60) == 1)
  {
    v11 = @"CKBrowserDragManagerDidEndDragSuccessKey";
    v12[0] = MEMORY[0x1E695E110];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"CKBrowserDragManagerDidEndDraggingNotification" object:0 userInfo:v5];

  v7 = [*(a1 + 32) presentingViewController];
  [v7 dismissViewControllerAnimated:0 completion:0];

  [*(a1 + 32) setPresentingViewController:0];
  if ([*(a1 + 32) usesSeparateDragWindow])
  {
    v8 = [*(a1 + 32) dragWindow];
    [v8 setHidden:1];
  }

  v9 = [*(a1 + 32) dragViewController];
  [v9 setDelegate:0];

  [*(a1 + 32) setDragViewController:0];
  [*(a1 + 32) setDragWindow:0];
  v10 = [*(a1 + 32) transcriptDelegate];
  [v10 dragManagerDidEndDragging:*(a1 + 32)];

  [*(a1 + 32) setCurrentItem:0];
}

void __70__CKBrowserDragManager_browserDragViewController_dragEndedWithTarget___block_invoke_2(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = [*(a1 + 32) dragViewController];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__CKBrowserDragManager_browserDragViewController_dragEndedWithTarget___block_invoke_3;
  v9[3] = &unk_1E72EBDB8;
  v10 = *(a1 + 40);
  [v8 animatePlacementAtPoint:a2 shouldShrink:v9 completionBlock:{a3, a4}];
}

void __70__CKBrowserDragManager_browserDragViewController_dragEndedWithTarget___block_invoke_4(uint64_t a1, double a2, double a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__CKBrowserDragManager_browserDragViewController_dragEndedWithTarget___block_invoke_5;
  block[3] = &unk_1E72F0D90;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)draggedSticker
{
  dragViewController = [(CKBrowserDragManager *)self dragViewController];
  draggedSticker = [dragViewController draggedSticker];

  return draggedSticker;
}

- (CKBrowserDragControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CKBrowserDragControllerTranscriptDelegate)transcriptDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transcriptDelegate);

  return WeakRetained;
}

- (CGPoint)locationInView
{
  x = self->_locationInView.x;
  y = self->_locationInView.y;
  result.y = y;
  result.x = x;
  return result;
}

@end