@interface CKContextContentProviderUIScene
+ (BOOL)_isRelevantForExtractionWithView:(id)view;
+ (double)_fontSizeOfView:(id)view usingExecutor:(id)executor;
+ (id)_UIElementsForWebViewContentString:(id)string;
+ (id)_allViewControllersFromUIViews:(id)views;
+ (id)_bestContentStringForWebViewUIElements:(id)elements andTitle:(id)title;
+ (id)_bestVisibleStringForView:(id)view usingExecutor:(id)executor;
+ (id)_descendantsRelevantForContentExtractionFromWindow:(id)window;
+ (id)_extractItemsFromViewControllers:(id)controllers;
+ (id)_firstAvailableUIViewControllerForUIView:(id)view;
+ (id)_getNotableSuperviewClassNamesForView:(id)view;
+ (id)_handleWKWebView:(id)view withExecutor:(id)executor;
+ (void)_descendantsRelevantForContentExtractionFromView:(id)view intoArray:(id)array;
+ (void)_donateContentsOfWindow:(id)window usingExecutor:(id)executor withOptions:(unint64_t)options;
+ (void)_donateText:(id)text withTitle:(id)title debugText:(id)debugText debugUrlString:(id)string rawHTML:(id)l leadImage:(id)image snapshot:(id)snapshot uiElements:(id)self0 extractionItems:(id)self1 usingContextFromExecutor:(id)self2;
+ (void)_extractContentFromWebView:(id)view includingSnapshot:(BOOL)snapshot includingUIBoundingBox:(BOOL)box ignoreViewTextLengthRequirements:(BOOL)requirements ignoreViewCountCap:(BOOL)cap includeRawHTML:(BOOL)l withCompletionHandler:(id)handler;
+ (void)extractFromScene:(id)scene usingExecutor:(id)executor withOptions:(unint64_t)options;
+ (void)initialize;
- (BOOL)_determineIfDebuggingControlsShouldBeAllowed;
- (BOOL)_shouldInstallAppSwitcherControls;
- (CKContextContentProviderUIScene)initWithScene:(id)scene;
- (UIScene)_scene;
- (id)_containerViewForDebugButtons;
- (id)_descendantsRelevantForDebugControls:(id)controls;
- (void)_didSelectDebugControl:(id)control;
- (void)_didSelectRecentsControl:(id)control;
- (void)_installDebuggingButton;
- (void)_installDebuggingControlsIfApplicable;
- (void)_installRecentsButton;
- (void)_sceneWillInvalidate:(id)invalidate;
- (void)_setUpDebuggingControlsIfPossibleAfterDelay:(double)delay;
- (void)extractUsingExecutor:(id)executor withOptions:(unint64_t)options;
@end

@implementation CKContextContentProviderUIScene

+ (void)initialize
{
  v13[6] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    v2 = MEMORY[0x1E695DFD8];
    v3 = *MEMORY[0x1E69DE4A0];
    v13[0] = *MEMORY[0x1E69DE480];
    v13[1] = v3;
    v4 = *MEMORY[0x1E69DE528];
    v13[2] = *MEMORY[0x1E69DE588];
    v13[3] = v4;
    v5 = *MEMORY[0x1E69DE518];
    v13[4] = *MEMORY[0x1E69DE500];
    v13[5] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:6];
    v7 = [v2 setWithArray:v6];
    v8 = kSensitiveContentTypes;
    kSensitiveContentTypes = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F305C820];
    v10 = kNotNotableSuperviewClassNames;
    kNotNotableSuperviewClassNames = v9;

    v11 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F305C838];
    v12 = kClassesExcludedFromTextExtraction;
    kClassesExcludedFromTextExtraction = v11;
  }
}

- (BOOL)_determineIfDebuggingControlsShouldBeAllowed
{
  if (!+[CKContextContentProviderManager isSpringBoard]|| !os_variant_has_internal_content())
  {
    return 0;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"CKContextAllowAppSwitcherDebuggingControls"];

  return v3;
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->__scene);

  return WeakRetained;
}

- (CKContextContentProviderUIScene)initWithScene:(id)scene
{
  sceneCopy = scene;
  v10.receiver = self;
  v10.super_class = CKContextContentProviderUIScene;
  v5 = [(CKContextContentProviderUIScene *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(CKContextContentProviderUIScene *)v5 _setScene:sceneCopy];
    v7 = +[CKContextContentProviderManager sharedManager];
    [v7 addProvider:v6];

    if (+[CKContextContentProviderManager isSpringBoard])
    {
      [(CKContextContentProviderUIScene *)v6 _setUpDebuggingControlsIfPossibleAfterDelay:2.0];
    }

    v8 = v6;
  }

  return v6;
}

- (void)_sceneWillInvalidate:(id)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_toolInstallationTimer);
  isValid = [WeakRetained isValid];

  if (isValid)
  {
    v6 = objc_loadWeakRetained(&self->_toolInstallationTimer);
    [v6 invalidate];

    objc_storeWeak(&self->_toolInstallationTimer, 0);
  }

  v7 = +[CKContextContentProviderManager sharedManager];
  [v7 removeProvider:self];

  [(CKContextContentProviderUIScene *)self _setScene:0];
}

- (void)extractUsingExecutor:(id)executor withOptions:(unint64_t)options
{
  executorCopy = executor;
  _scene = [(CKContextContentProviderUIScene *)self _scene];
  if (_scene)
  {
    [objc_opt_class() extractFromScene:_scene usingExecutor:executorCopy withOptions:options];
  }
}

+ (void)extractFromScene:(id)scene usingExecutor:(id)executor withOptions:(unint64_t)options
{
  v23 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  executorCopy = executor;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (sceneCopy && [sceneCopy activationState] <= 1)
    {
      _visibleWindows = [sceneCopy _visibleWindows];
      if ([_visibleWindows count])
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = _visibleWindows;
        v10 = _visibleWindows;
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            v14 = 0;
            do
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v18 + 1) + 8 * v14);
              v17[0] = MEMORY[0x1E69E9820];
              v17[1] = 3221225472;
              v17[2] = __78__CKContextContentProviderUIScene_extractFromScene_usingExecutor_withOptions___block_invoke;
              v17[3] = &unk_1E7CEE5A8;
              v17[4] = v15;
              v17[5] = options;
              [executorCopy addWorkItem:v17];
              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
          }

          while (v12);
        }

        _visibleWindows = v16;
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    +[CKContextContentProviderUIScene extractFromScene:usingExecutor:withOptions:];
  }
}

void __78__CKContextContentProviderUIScene_extractFromScene_usingExecutor_withOptions___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  [CKContextContentProviderUIScene _donateContentsOfWindow:*(a1 + 32) usingExecutor:v4 withOptions:*(a1 + 40)];
  objc_autoreleasePoolPop(v3);
}

+ (BOOL)_isRelevantForExtractionWithView:(id)view
{
  viewCopy = view;
  if (([viewCopy isHidden] & 1) != 0 || (objc_msgSend(viewCopy, "alpha"), v4 < 0.05) || (objc_msgSend(viewCopy, "frame"), x = v13.origin.x, y = v13.origin.y, width = v13.size.width, height = v13.size.height, CGRectGetWidth(v13) < 30.0) || (v14.origin.x = x, v14.origin.y = y, v14.size.width = width, v14.size.height = height, CGRectGetHeight(v14) < 17.0))
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v9 = [kClassesExcludedFromTextExtraction containsObject:v12] ^ 1;
  }

  return v9;
}

+ (void)_descendantsRelevantForContentExtractionFromView:(id)view intoArray:(id)array
{
  v32 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  arrayCopy = array;
  if ([self _isRelevantForExtractionWithView:viewCopy])
  {
    [arrayCopy addObject:viewCopy];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    subviews = [viewCopy subviews];
    reverseObjectEnumerator = [subviews reverseObjectEnumerator];

    v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        v13 = 0;
        do
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v14 = *(*(&v27 + 1) + 8 * v13);
          if (![viewCopy clipsToBounds] || (objc_msgSend(viewCopy, "bounds"), v16 = v15, v18 = v17, v20 = v19, v22 = v21, objc_msgSend(v14, "frame"), v34.origin.x = v23, v34.origin.y = v24, v34.size.width = v25, v34.size.height = v26, v33.origin.x = v16, v33.origin.y = v18, v33.size.width = v20, v33.size.height = v22, CGRectIntersectsRect(v33, v34)))
          {
            [self _descendantsRelevantForContentExtractionFromView:v14 intoArray:arrayCopy];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v11);
    }
  }
}

+ (id)_descendantsRelevantForContentExtractionFromWindow:(id)window
{
  v46 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v40 = windowCopy;
  subviews = [windowCopy subviews];
  reverseObjectEnumerator = [subviews reverseObjectEnumerator];

  v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_17;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v42;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v42 != v11)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v13 = *(*(&v41 + 1) + 8 * i);
      if (([v13 isHidden] & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen bounds];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        [v13 frame];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v48.origin.x = v16;
        v48.origin.y = v18;
        v48.size.width = v20;
        v48.size.height = v22;
        Width = CGRectGetWidth(v48);
        [v13 frame];
        v32 = CGRectGetWidth(v49);
        if (!v10 || (v33 = v32, [v10 frame], v51.origin.x = v34, v51.origin.y = v35, v51.size.width = v36, v51.size.height = v37, v50.origin.x = v24, v50.origin.y = v26, v50.size.width = v28, v50.size.height = v30, !CGRectEqualToRect(v50, v51)) || vabdd_f64(Width, v33) <= 20.0)
        {
          v38 = v13;

          v10 = v38;
LABEL_12:
          [self _descendantsRelevantForContentExtractionFromView:v13 intoArray:v5];
          continue;
        }
      }
    }

    v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v41 objects:v45 count:16];
  }

  while (v9);
LABEL_17:

  return v5;
}

+ (id)_allViewControllersFromUIViews:(id)views
{
  v18 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = viewsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self _firstAvailableUIViewControllerForUIView:{*(*(&v13 + 1) + 8 * i), v13}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)_firstAvailableUIViewControllerForUIView:(id)view
{
  nextResponder = [view nextResponder];
  if (nextResponder)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3NextResponder = [nextResponder nextResponder];

      nextResponder = v3NextResponder;
    }

    while (v3NextResponder);
  }

  return nextResponder;
}

+ (void)_donateContentsOfWindow:(id)window usingExecutor:(id)executor withOptions:(unint64_t)options
{
  v88 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  executorCopy = executor;
  v77 = windowCopy;
  v10 = [self _descendantsRelevantForContentExtractionFromWindow:windowCopy];
  if (![v10 count])
  {
    goto LABEL_48;
  }

  v70 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v69 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v68 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = options & 0x20;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v66 = v10;
  obj = v10;
  v74 = v11;
  selfCopy = self;
  optionsCopy = options;
  v80 = [obj countByEnumeratingWithState:&v81 objects:v87 count:16];
  v12 = 0;
  if (!v80)
  {
    goto LABEL_36;
  }

  v13 = *v82;
  v14 = 250;
  if ((options & 0x20) != 0)
  {
    v14 = -1;
  }

  v67 = v14;
  v72 = *v82;
  v73 = executorCopy;
  do
  {
    for (i = 0; i != v80; ++i)
    {
      if (*v82 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v81 + 1) + 8 * i);
      v17 = [self _bestVisibleStringForView:v16 usingExecutor:executorCopy];
      v18 = [v17 length];
      if (v11 | v18)
      {
        v19 = v18;
        v78 = v12;
        if (v18 && ([v70 containsObject:v17] & 1) == 0)
        {
          [v70 addObject:v17];
        }

        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = [self _getNotableSuperviewClassNamesForView:v16];
        [self _fontSizeOfView:v16 usingExecutor:executorCopy];
        v24 = v23;
        if (v19)
        {
          v25 = [v17 length];
          if (v67 >= v25)
          {
            v26 = v25;
          }

          else
          {
            v26 = v67;
          }

          v27 = [v17 substringWithRange:{0, v26}];
        }

        else
        {
          v27 = &stru_1F305A6D8;
        }

        v28 = [[CKContextUIElement alloc] initWithText:v27 className:v21];
        [(CKContextUIElement *)v28 setSuperviewClassNames:v22];
        *&v29 = v24;
        [(CKContextUIElement *)v28 setFontSize:v29];
        options = [v77 windowScene];
        _sceneIdentifier = [options _sceneIdentifier];
        v31 = [_sceneIdentifier copy];
        [(CKContextUIElement *)v28 setSceneIdentifier:v31];

        LOBYTE(options) = optionsCopy;
        if ((optionsCopy & 4) != 0)
        {
          v71 = [CKContextSharedExtractionHelper elementIsOnScreenWithView:v16 window:v77];
          [v16 bounds];
          [v16 convertRect:v77 toView:?];
          v33 = v32;
          v35 = v34;
          [(CKContextUIElement *)v28 setFrameInWindow:?];
          screen = [v77 screen];
          coordinateSpace = [screen coordinateSpace];
          LOBYTE(options) = optionsCopy;
          [v77 convertPoint:coordinateSpace toCoordinateSpace:{v33, v35}];
          [(CKContextUIElement *)v28 setAbsoluteOriginOnScreen:?];

          [(CKContextUIElement *)v28 setOnScreen:v71];
        }

        if ([(CKContextUIElement *)v28 isOnScreen])
        {
          v38 = v69;
          executorCopy = v73;
          self = selfCopy;
          if ((options & 0x10) == 0)
          {
            v39 = [v69 count];
            v38 = v69;
            LOBYTE(options) = optionsCopy;
            if (v39 >= 0xFA)
            {
              goto LABEL_28;
            }
          }
        }

        else
        {
          v38 = v68;
          executorCopy = v73;
          self = selfCopy;
          if ((options & 0x10) == 0)
          {
            v40 = [v68 count];
            v38 = v68;
            LOBYTE(options) = optionsCopy;
            if (v40 > 0xF9)
            {
              goto LABEL_28;
            }
          }
        }

        [v38 addObject:v28];
LABEL_28:

        v12 = v78;
        v11 = v74;
        v13 = v72;
      }

      if ((options & 1) != 0 && !v12)
      {
        v41 = [CKContextSharedExtractionHelper bestImageForView:v16];
        v12 = v41;
        if (v41)
        {
          v42 = v41;
        }
      }
    }

    v80 = [obj countByEnumeratingWithState:&v81 objects:v87 count:16];
  }

  while (v80);
LABEL_36:

  if ((options & 0x10) != 0)
  {
    v45 = v68;
    v47 = [v68 count];
    v43 = v69;
  }

  else
  {
    v43 = v69;
    v44 = 250 - [v69 count];
    v45 = v68;
    v46 = [v68 count];
    if (v44 >= v46)
    {
      v47 = v46;
    }

    else
    {
      v47 = v44;
    }
  }

  v48 = [v45 subarrayWithRange:{0, v47}];
  [v43 addObjectsFromArray:v48];

  v49 = 0;
  if ((optionsCopy & 2) != 0)
  {
    v10 = v66;
    if (!v12)
    {
      [v77 bounds];
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v57 = v56;
      isOpaque = [v77 isOpaque];
      v89.width = v55;
      v89.height = v57;
      UIGraphicsBeginImageContextWithOptions(v89, isOpaque, 0.0);
      [v77 drawViewHierarchyInRect:1 afterScreenUpdates:{v51, v53, v55, v57}];
      v49 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
    }
  }

  else
  {
    v10 = v66;
  }

  v59 = [self _allViewControllersFromUIViews:obj];
  v60 = [self _extractItemsFromViewControllers:v59];
  v61 = [v70 componentsJoinedByString:@"\n\n"];
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v63 = [v61 stringByTrimmingCharactersInSet:newlineCharacterSet];
  v64 = [v63 length];

  if ([v60 count] || objc_msgSend(v69, "count") | v74 || v64 > 0x2C)
  {
    v65 = v69;
    [selfCopy _donateText:v61 withTitle:0 debugText:0 debugUrlString:0 rawHTML:0 leadImage:v12 snapshot:v49 uiElements:v69 & ((optionsCopy << 60) >> 63) extractionItems:v60 usingContextFromExecutor:executorCopy];
  }

  else
  {
    v65 = v69;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v86 = v64;
      _os_log_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "The extracted text (length %lu) is too short. Donation from UIKit hierarchy aborted.", buf, 0xCu);
    }
  }

LABEL_48:
}

+ (id)_getNotableSuperviewClassNamesForView:(id)view
{
  viewCopy = view;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  superview = [viewCopy superview];
  v6 = 20;
  while (1)
  {
    if (!superview)
    {
      v5Superview = 0;
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v5Superview = [superview superview];

    if (([kNotNotableSuperviewClassNames containsObject:v8] & 1) == 0)
    {
      break;
    }

LABEL_6:

    superview = v5Superview;
    if (!--v6)
    {
      goto LABEL_10;
    }
  }

  if ([v4 count] <= 5)
  {
    [v4 addObject:v8];
    goto LABEL_6;
  }

LABEL_10:

  return v4;
}

+ (void)_donateText:(id)text withTitle:(id)title debugText:(id)debugText debugUrlString:(id)string rawHTML:(id)l leadImage:(id)image snapshot:(id)snapshot uiElements:(id)self0 extractionItems:(id)self1 usingContextFromExecutor:(id)self2
{
  v18 = MEMORY[0x1E6997208];
  executorCopy = executor;
  itemsCopy = items;
  elementsCopy = elements;
  snapshotCopy = snapshot;
  imageCopy = image;
  lCopy = l;
  stringCopy = string;
  debugTextCopy = debugText;
  titleCopy = title;
  textCopy = text;
  v30 = objc_alloc_init(v18);
  [v30 setText:textCopy];

  [v30 setTitle:titleCopy];
  [v30 setDebugText:debugTextCopy];

  [v30 setDebugUrlString:stringCopy];
  [v30 setUiElements:elementsCopy];

  [v30 setExtractionItems:itemsCopy];
  [v30 setRawHTML:lCopy];

  [CKContextExtractionUtil renderSnapshot:snapshotCopy toDonationItem:v30];
  [CKContextExtractionUtil renderLeadImage:imageCopy toDonationItem:v30];

  context = [executorCopy context];

  [context addItem:v30];
}

+ (double)_fontSizeOfView:(id)view usingExecutor:(id)executor
{
  viewCopy = view;
  objc_opt_class();
  v5 = 0.0;
  if (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_respondsToSelector())
  {
    v6 = [viewCopy performSelector:sel_font];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 pointSize];
      v5 = v7;
    }
  }

  return v5;
}

+ (id)_bestVisibleStringForView:(id)view usingExecutor:(id)executor
{
  v61 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  executorCopy = executor;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  if ([CKContextUIClasses isSFSafariView:viewCopy])
  {
    context = [executorCopy context];
    [context setRemoteProcesses:{objc_msgSend(context, "remoteProcesses") + 1}];
  }

  if ([CKContextUIClasses isWKWebView:viewCopy])
  {
    v11 = [self _handleWKWebView:viewCopy withExecutor:executorCopy];
LABEL_7:
    v12 = v11;
    goto LABEL_11;
  }

  if ([CKContextUIClasses isPDFView:viewCopy])
  {
    v11 = [self handlePDFView:viewCopy withExecutor:executorCopy];
    goto LABEL_7;
  }

  if ([self controlCodeForExecutor:executorCopy] == 1 || +[CKContextContentProviderManager isSafariContentProvider](CKContextContentProviderManager, "isSafariContentProvider"))
  {
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    textContentType = [viewCopy textContentType];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([self _isSensitiveTextContentType:textContentType])
    {

LABEL_10:
      v12 = 0;
      goto LABEL_11;
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && ([viewCopy isSecureTextEntry])
  {
    goto LABEL_10;
  }

  if ([0 length] || (objc_opt_respondsToSelector() & 1) == 0)
  {
    string = 0;
  }

  else
  {
    attributedText = [viewCopy attributedText];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      string = [attributedText string];
    }

    else
    {
      string = 0;
    }
  }

  if (![string length] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v17 = [viewCopy performSelector:sel_text];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;

      string = v18;
    }
  }

  if (![string length])
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    if ([bundleIdentifier isEqualToString:@"com.apple.mobilecal"])
    {
      v21 = [v9 isEqualToString:@"EKEventDetailAttendeesListView"];

      if (v21)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Performing special handling for Calendar", buf, 2u);
        }

        v22 = objc_opt_class();
        InstanceVariable = class_getInstanceVariable(v22, "_inviteeNames");
        if (InstanceVariable)
        {
          v24 = InstanceVariable;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            +[CKContextContentProviderUIScene _bestVisibleStringForView:usingExecutor:];
          }

          v25 = object_getIvar(viewCopy, v24);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = v25;
            if ([v26 count])
            {
              v50 = v9;
              v51 = v26;
              v52 = v25;
              v53 = string;
              firstObject = [v26 firstObject];
              array = [MEMORY[0x1E695DF70] array];
              v55 = 0u;
              v56 = 0u;
              v57 = 0u;
              v58 = 0u;
              v28 = firstObject;
              v29 = [v28 countByEnumeratingWithState:&v55 objects:v60 count:16];
              if (v29)
              {
                v30 = v29;
                v31 = *v56;
                do
                {
                  for (i = 0; i != v30; ++i)
                  {
                    if (*v56 != v31)
                    {
                      objc_enumerationMutation(v28);
                    }

                    v33 = *(*(&v55 + 1) + 8 * i);
                    if (objc_opt_respondsToSelector())
                    {
                      v34 = [v33 performSelector:sel_displayString];
                      if (objc_opt_respondsToSelector())
                      {
                        v35 = [v34 performSelector:sel_string];
                        [array addObject:v35];
                      }
                    }
                  }

                  v30 = [v28 countByEnumeratingWithState:&v55 objects:v60 count:16];
                }

                while (v30);
              }

              v36 = objc_alloc_init(MEMORY[0x1E696AD08]);
              string = [v36 stringFromItems:array];

              v26 = v51;
              v25 = v52;
              v9 = v50;
            }
          }
        }
      }
    }

    else
    {
    }
  }

  if (![string length] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v37 = [viewCopy performSelector:sel_accessibilityLabel];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v37 length] >= 0x14)
    {
      v38 = v37;

      string = v38;
    }
  }

  if (![string length] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v39 = [viewCopy performSelector:sel_component];
    if (objc_opt_respondsToSelector())
    {
      v40 = [v39 performSelector:sel_text];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v41 = v40;

        string = v41;
      }
    }
  }

  if (![string length] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v42 = [viewCopy performSelector:sel_delegate];
    if (objc_opt_respondsToSelector())
    {
      v43 = [v42 performSelector:sel_text];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v44 = v43;

        string = v44;
      }
    }
  }

  if (![string length] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v45 = [viewCopy performSelector:sel_dataDetectorElement];
    if (objc_opt_respondsToSelector())
    {
      v46 = [v45 performSelector:sel_scannerResult];
      if (objc_opt_respondsToSelector())
      {
        v47 = [v46 performSelector:sel_value];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v48 = v47;

          string = v48;
        }
      }
    }
  }

  if ([string length])
  {
    v49 = string;
  }

  else
  {
    v49 = 0;
  }

  v12 = v49;

LABEL_11:

  return v12;
}

+ (id)_extractItemsFromViewControllers:(id)controllers
{
  v47 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = controllersCopy;
  v6 = [v5 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v6)
  {
    v7 = v6;
    v41 = *v43;
    v37 = v5;
    do
    {
      v8 = 0;
      v38 = v7;
      do
      {
        if (*v43 != v41)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v42 + 1) + 8 * v8);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        if (([v11 hasPrefix:@"HUDashboardViewController"] & 1) != 0 || objc_msgSend(v11, "hasPrefix:", @"HOHomeViewController"))
        {
          if (objc_opt_respondsToSelector())
          {
            v12 = [v9 performSelector:sel_context];
            if (objc_opt_respondsToSelector())
            {
              v13 = [(CKContextExtractionItem *)v12 performSelector:sel_room];
              if (objc_opt_respondsToSelector())
              {
                v14 = [(CKContextExtractionItem *)v13 performSelector:sel_name];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v15 = v14;
                }

                else
                {
                  v15 = 0;
                }

                v16 = v15;
              }

              else
              {
                v16 = 0;
              }

              if (objc_opt_respondsToSelector())
              {
                v20 = [(CKContextExtractionItem *)v13 performSelector:sel_uniqueIdentifier];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v21 = v20;
                }

                else
                {
                  v21 = 0;
                }

                v19 = v21;

                if (v19 && v16)
                {
                  v13 = [[CKContextExtractionItem alloc] initWithTitle:v16 type:0 bundleIdentifier:bundleIdentifier];
                  uUIDString = [v19 UUIDString];
                  [(CKContextExtractionItem *)v13 setIdentifier:uUIDString];

                  [(CKContextExtractionItem *)v13 setExtractionSourceClassName:v11];
                  [(CKContextExtractionItem *)v13 setOnScreen:1];
                  [v39 addObject:v13];
                  v19 = v20;
                  goto LABEL_26;
                }
              }

              else
              {
                v19 = 0;
LABEL_26:
              }
            }

            else
            {
              v19 = 0;
              v16 = 0;
            }

            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              v17 = 0;
              v18 = 0;
              goto LABEL_44;
            }

            v23 = [(CKContextExtractionItem *)v12 performSelector:sel_home];
            if (objc_opt_respondsToSelector())
            {
              v24 = [v23 performSelector:sel_name];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v25 = v24;
              }

              else
              {
                v25 = 0;
              }

              v18 = v25;
            }

            else
            {
              v18 = 0;
            }

            if (objc_opt_respondsToSelector())
            {
              v26 = [v23 performSelector:sel_uniqueIdentifier];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v27 = v26;
              }

              else
              {
                v27 = 0;
              }

              v17 = v27;

              v5 = v37;
            }

            else
            {
              v17 = 0;
            }

            if (v17)
            {
              v7 = v38;
              if (v18)
              {
                v12 = [[CKContextExtractionItem alloc] initWithTitle:v18 type:2 bundleIdentifier:bundleIdentifier];
                uUIDString2 = [v17 UUIDString];
                [(CKContextExtractionItem *)v12 setIdentifier:uUIDString2];

                v5 = v37;
                [(CKContextExtractionItem *)v12 setExtractionSourceClassName:v11];
                [(CKContextExtractionItem *)v12 setOnScreen:1];
                [v39 addObject:v12];
LABEL_44:
              }
            }

            else
            {
              v7 = v38;
            }
          }

          else
          {
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v16 = 0;
          }
        }

        if ([v11 hasPrefix:@"HomeUI.DashboardAccessoryControlViewController"])
        {
          if (objc_opt_respondsToSelector())
          {
            v29 = [v9 performSelector:sel_description];
            v30 = [v29 componentsSeparatedByString:@" uniqueIdentifier: "];
            if ([v30 count] == 2)
            {
              v31 = [v30 objectAtIndexedSubscript:0];
              v32 = 0;
              v33 = 0;
              if ([v31 hasPrefix:@"accessoryName: "])
              {
                v33 = [v31 substringFromIndex:{objc_msgSend(@"accessoryName: ", "length")}];
                v32 = [v30 objectAtIndexedSubscript:1];
              }
            }

            else
            {
              v32 = 0;
              v33 = 0;
            }

            if (v32 && v33)
            {
              v34 = [[CKContextExtractionItem alloc] initWithTitle:v33 type:1 bundleIdentifier:bundleIdentifier];
              [(CKContextExtractionItem *)v34 setIdentifier:v32];
              [(CKContextExtractionItem *)v34 setExtractionSourceClassName:v11];
              [(CKContextExtractionItem *)v34 setOnScreen:1];
              [v39 addObject:v34];
            }
          }

          else
          {
            v33 = 0;
            v32 = 0;
          }
        }

        ++v8;
      }

      while (v7 != v8);
      v35 = [v5 countByEnumeratingWithState:&v42 objects:v46 count:16];
      v7 = v35;
    }

    while (v35);
  }

  return v39;
}

+ (id)_UIElementsForWebViewContentString:(id)string
{
  v31 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = [CKContextSharedExtractionHelper blocksFromText:stringCopy];
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v4 count])
    {
      v23 = v4;
      v24 = stringCopy;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v27;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v27 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v26 + 1) + 8 * i);
            if (![CKContextSharedExtractionHelper textBlockLooksLikeAListWithText:v10])
            {
              newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
              v12 = [v10 componentsSeparatedByCharactersInSet:newlineCharacterSet];
              v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@distinctUnionOfObjects.%@", @"self"];
              v14 = [v12 valueForKeyPath:v13];

              v15 = [v14 componentsJoinedByString:@"\n"];
              v16 = [v14 count];
              v17 = [v15 length];
              if (v17)
              {
                v18 = v16 == 0;
              }

              else
              {
                v18 = 1;
              }

              if (!v18)
              {
                v19 = v17 / v16;
                v20 = [[CKContextUIElement alloc] initWithText:v15 className:@"WKWebView"];
                *&v21 = v19;
                [(CKContextUIElement *)v20 setDensity:v21];
                [v25 addObject:v20];
              }
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v7);
      }

      v4 = v23;
      stringCopy = v24;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (id)_bestContentStringForWebViewUIElements:(id)elements andTitle:(id)title
{
  v25 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  titleCopy = title;
  if ([elementsCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = elementsCopy;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          [v13 density];
          if (v14 > 43.0)
          {
            text = [v13 text];
            [array addObject:text];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    v16 = [array componentsJoinedByString:@"\n\n"];
    if ([titleCopy length])
    {
      v17 = &stru_1F305A6D8;
      if (v16)
      {
        v17 = v16;
      }

      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", titleCopy, @"\n\n", v17];

      v16 = v18;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)_handleWKWebView:(id)view withExecutor:(id)executor
{
  viewCopy = view;
  executorCopy = executor;
  v8 = [self controlCodeForExecutor:executorCopy];
  v9 = [CKContextContentProviderManager optionsForControlCode:v8];
  if (v8 != 2 && v8 != 4 && [viewCopy isLoading])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[CKContextContentProviderUIScene _handleWKWebView:withExecutor:];
    }

LABEL_10:
    v13 = &stru_1F305A6D8;
    goto LABEL_11;
  }

  configuration = [viewCopy configuration];
  websiteDataStore = [configuration websiteDataStore];
  isPersistent = [websiteDataStore isPersistent];

  if ((isPersistent & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "The webview data store is not persistent. We cannot extract from it for privacy reasons without user gesture.", buf, 2u);
    }

    goto LABEL_10;
  }

  [executorCopy markIncomplete];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__CKContextContentProviderUIScene__handleWKWebView_withExecutor___block_invoke;
  v15[3] = &unk_1E7CEE620;
  selfCopy = self;
  v16 = viewCopy;
  v18 = (v9 & 0x10) != 0;
  v19 = (v9 & 0x20) != 0;
  [executorCopy addWorkItem:v15];

  v13 = 0;
LABEL_11:

  return v13;
}

void __65__CKContextContentProviderUIScene__handleWKWebView_withExecutor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 40) controlCodeForExecutor:v3];
  v5 = v4;
  v6 = [CKContextContentProviderManager optionsForControlCode:v4];
  v7 = (v6 >> 1) & 1;
  v8 = (v6 >> 2) & 1;
  v9 = (v6 >> 3) & 1;
  v10 = (v6 >> 6) & 1;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __65__CKContextContentProviderUIScene__handleWKWebView_withExecutor___block_invoke_2;
  v21[3] = &unk_1E7CEE5D0;
  v11 = *(a1 + 32);
  v24 = *(a1 + 48);
  v25 = v5;
  v26 = v8;
  v27 = v9;
  v22 = v11;
  v23 = v3;
  v12 = v3;
  v13 = MEMORY[0x1B8CBE810](v21);
  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v16 = *(a1 + 49);
  v17 = *(a1 + 48);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__CKContextContentProviderUIScene__handleWKWebView_withExecutor___block_invoke_3;
  v19[3] = &unk_1E7CEE5F8;
  v20 = v13;
  v18 = v13;
  [v14 _extractContentFromWebView:v15 includingSnapshot:v7 includingUIBoundingBox:v8 ignoreViewTextLengthRequirements:v16 ignoreViewCountCap:v17 includeRawHTML:v10 withCompletionHandler:v19];
}

void __65__CKContextContentProviderUIScene__handleWKWebView_withExecutor___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v31 = a2;
  v28 = a3;
  v30 = a4;
  v9 = a5;
  v10 = [CKContextContentProviderUIScene _UIElementsForWebViewContentString:v31];
  v11 = [*(a1 + 32) title];
  v29 = [CKContextContentProviderUIScene _bestContentStringForWebViewUIElements:v10 andTitle:v11];

  if (*(a1 + 48) == 1)
  {
    v12 = v10;
  }

  else
  {
    v13 = [v10 count];
    if (v13 >= 0xFA)
    {
      v14 = 250;
    }

    else
    {
      v14 = v13;
    }

    v12 = [v10 subarrayWithRange:{0, v14}];
  }

  v15 = v12;
  v27 = v9;
  if (*(a1 + 48) == 1)
  {
    v16 = v9;
  }

  else
  {
    v17 = [v9 count];
    if (v17 >= 0xFA)
    {
      v18 = 250;
    }

    else
    {
      v18 = v17;
    }

    v16 = [v9 subarrayWithRange:{0, v18}];
  }

  v19 = v16;
  v20 = (*(a1 + 49) < 6u) & (0x2Cu >> *(a1 + 49));
  if (*(a1 + 50))
  {
    v21 = v16;
  }

  else
  {
    v21 = v15;
  }

  v22 = v21;
  v23 = [*(a1 + 32) title];
  if (v20 == 1)
  {
    v11 = [*(a1 + 32) URL];
    v24 = [v11 absoluteString];
    v25 = v31;
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  if (*(a1 + 51))
  {
    v26 = v22;
  }

  else
  {
    v26 = 0;
  }

  [CKContextContentProviderUIScene _donateText:v29 withTitle:v23 debugText:v25 debugUrlString:v24 rawHTML:v28 leadImage:0 snapshot:v30 uiElements:v26 extractionItems:0 usingContextFromExecutor:*(a1 + 40)];
  if (v20)
  {
  }

  [*(a1 + 40) markReady];
}

+ (void)_extractContentFromWebView:(id)view includingSnapshot:(BOOL)snapshot includingUIBoundingBox:(BOOL)box ignoreViewTextLengthRequirements:(BOOL)requirements ignoreViewCountCap:(BOOL)cap includeRawHTML:(BOOL)l withCompletionHandler:(id)handler
{
  lCopy = l;
  requirementsCopy = requirements;
  boxCopy = box;
  snapshotCopy = snapshot;
  viewCopy = view;
  handlerCopy = handler;
  if (handlerCopy)
  {
    window = [viewCopy window];
    if ([viewCopy _isDisplayingPDF])
    {
      _dataForDisplayedPDF = [viewCopy _dataForDisplayedPDF];
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke;
      v75[3] = &unk_1E7CEE648;
      v76 = handlerCopy;
      [self extractContentFromWebViewPDFData:_dataForDisplayedPDF withCompletionHandler:v75];
      v18 = v76;
    }

    else
    {
      v19 = dispatch_group_create();
      v73[0] = 0;
      v73[1] = v73;
      v73[2] = 0x3032000000;
      v73[3] = __Block_byref_object_copy_;
      v73[4] = __Block_byref_object_dispose_;
      v74 = 0;
      v71[0] = 0;
      v71[1] = v71;
      v71[2] = 0x3032000000;
      v71[3] = __Block_byref_object_copy_;
      v71[4] = __Block_byref_object_dispose_;
      v72 = 0;
      v69[0] = 0;
      v69[1] = v69;
      v69[2] = 0x3032000000;
      v69[3] = __Block_byref_object_copy_;
      v69[4] = __Block_byref_object_dispose_;
      v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (requirementsCopy)
      {
        v21 = -1;
      }

      else
      {
        v21 = 10000;
      }

      v70 = v20;
      dispatch_group_enter(v19);
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_174;
      v63[3] = &unk_1E7CEE698;
      v68 = requirementsCopy;
      v66 = v73;
      v67 = v21;
      _dataForDisplayedPDF = v19;
      v64 = _dataForDisplayedPDF;
      v22 = viewCopy;
      v65 = v22;
      [v22 _getContentsAsStringWithCompletionHandler:v63];
      v77 = 0;
      v78 = &v77;
      v79 = 0x2050000000;
      v23 = getWKContentWorldClass_softClass;
      v80 = getWKContentWorldClass_softClass;
      if (!getWKContentWorldClass_softClass)
      {
        v52 = MEMORY[0x1E69E9820];
        v53 = 3221225472;
        v54 = __getWKContentWorldClass_block_invoke;
        v55 = &unk_1E7CEE4D8;
        v56 = &v77;
        __getWKContentWorldClass_block_invoke(&v52);
        v23 = *(v78 + 24);
      }

      v24 = v23;
      _Block_object_dispose(&v77, 8);
      v25 = [v23 worldWithName:@"CKContextExtractionContentWorld"];
      v26 = v25;
      if (boxCopy && v25)
      {
        dispatch_group_enter(_dataForDisplayedPDF);
        v27 = +[CKContextSharedExtractionHelper webPageNodeExtractionJavaScript];
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_2;
        v58[3] = &unk_1E7CEE6C0;
        v59 = _dataForDisplayedPDF;
        v28 = v22;
        v60 = v28;
        v61 = window;
        v62 = v69;
        [v28 evaluateJavaScript:v27 inFrame:0 inContentWorld:v26 completionHandler:v58];
      }

      v52 = 0;
      v53 = &v52;
      v54 = 0x3032000000;
      v55 = __Block_byref_object_copy_;
      v56 = __Block_byref_object_dispose_;
      v57 = 0;
      if (snapshotCopy)
      {
        dispatch_group_enter(_dataForDisplayedPDF);
        [window bounds];
        [window convertRect:v22 toView:?];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v82 = 0;
        v83 = &v82;
        v84 = 0x2050000000;
        v37 = getWKSnapshotConfigurationClass_softClass;
        v85 = getWKSnapshotConfigurationClass_softClass;
        if (!getWKSnapshotConfigurationClass_softClass)
        {
          v77 = MEMORY[0x1E69E9820];
          v78 = 3221225472;
          v79 = __getWKSnapshotConfigurationClass_block_invoke;
          v80 = &unk_1E7CEE4D8;
          v81 = &v82;
          __getWKSnapshotConfigurationClass_block_invoke(&v77);
          v37 = v83[3];
        }

        v38 = v37;
        _Block_object_dispose(&v82, 8);
        v39 = objc_alloc_init(v37);
        [v39 setRect:{v30, v32, v34, v36}];
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_181;
        v49[3] = &unk_1E7CEE6E8;
        v50 = _dataForDisplayedPDF;
        v51 = v71;
        [v22 takeSnapshotWithConfiguration:v39 completionHandler:v49];
      }

      if (lCopy)
      {
        dispatch_group_enter(_dataForDisplayedPDF);
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_2_186;
        v46[3] = &unk_1E7CEE710;
        v47 = _dataForDisplayedPDF;
        v48 = &v52;
        [v22 evaluateJavaScript:@"document.documentElement.outerHTML.toString()" completionHandler:v46];
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_3;
      block[3] = &unk_1E7CEE738;
      v41 = handlerCopy;
      v42 = v73;
      v43 = &v52;
      v44 = v71;
      v45 = v69;
      dispatch_group_notify(_dataForDisplayedPDF, MEMORY[0x1E69E96A0], block);

      _Block_object_dispose(&v52, 8);
      _Block_object_dispose(v69, 8);

      _Block_object_dispose(v71, 8);
      _Block_object_dispose(v73, 8);
      v18 = v74;
    }
  }
}

void __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_174(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ((*(a1 + 64) & 1) != 0 || [v5 length] < 0x96)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Failed to extract enough text from main webpage frame. Trying to get content from all frames", buf, 2u);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_175;
    v15[3] = &unk_1E7CEE670;
    v13 = *(a1 + 40);
    v14 = *(a1 + 56);
    v17 = *(a1 + 48);
    v18 = v14;
    v16 = *(a1 + 32);
    [v13 _getContentsOfAllFramesAsStringWithCompletionHandler:v15];
  }

  else
  {
    v7 = *(a1 + 56);
    v8 = [v5 length];
    if (v7 >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    v10 = [v5 substringWithRange:{0, v9}];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    dispatch_group_leave(*(a1 + 32));
  }
}

void __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_175(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a2;
  v5 = [v4 length];
  if (v3 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  v7 = [v4 substringWithRange:{0, v6}];

  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = a1[4];

  dispatch_group_leave(v10);
}

void __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v82 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_2_cold_1(v6);
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v7 = [v5 description];
    if ([v7 length])
    {
      v8 = [v7 dataUsingEncoding:4];
      v80 = 0;
      v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:&v80];
      v10 = v80;
      if (v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_2_cold_2();
        }

        dispatch_group_leave(*(a1 + 32));
      }

      else
      {
        v11 = [v9 objectForKeyedSubscript:@"nodes"];
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v64 = v9;
            v65 = v8;
            v66 = v7;
            v67 = v5;
            v76 = 0u;
            v77 = 0u;
            v78 = 0u;
            v79 = 0u;
            obj = v11;
            v12 = [obj countByEnumeratingWithState:&v76 objects:v81 count:16];
            v63 = v11;
            if (v12)
            {
              v13 = v12;
              v14 = 0x1E695D000uLL;
              v15 = *v77;
              v68 = *v77;
              do
              {
                v16 = 0;
                v69 = v13;
                do
                {
                  if (*v77 != v15)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v17 = *(*(&v76 + 1) + 8 * v16);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v18 = [v17 objectForKeyedSubscript:@"text"];
                    v19 = [*(v14 + 4016) null];
                    if ([v18 isEqual:v19])
                    {
                      v20 = 0;
                    }

                    else
                    {
                      v20 = [v17 objectForKeyedSubscript:@"text"];
                    }

                    v21 = [v17 objectForKeyedSubscript:@"className"];
                    v22 = [*(v14 + 4016) null];
                    if ([v21 isEqual:v22])
                    {
                      v71 = 0;
                    }

                    else
                    {
                      v71 = [v17 objectForKeyedSubscript:@"className"];
                    }

                    v23 = [v17 objectForKeyedSubscript:@"left"];
                    v24 = [*(v14 + 4016) null];
                    if ([v23 isEqual:v24])
                    {
                      v75 = 0;
                    }

                    else
                    {
                      v75 = [v17 objectForKeyedSubscript:@"left"];
                    }

                    v25 = [v17 objectForKeyedSubscript:@"right"];
                    v26 = [*(v14 + 4016) null];
                    if ([v25 isEqual:v26])
                    {
                      v74 = 0;
                    }

                    else
                    {
                      v74 = [v17 objectForKeyedSubscript:@"right"];
                    }

                    v27 = [v17 objectForKeyedSubscript:@"top"];
                    v28 = v14;
                    v29 = [*(v14 + 4016) null];
                    if ([v27 isEqual:v29])
                    {
                      v73 = 0;
                    }

                    else
                    {
                      v73 = [v17 objectForKeyedSubscript:@"top"];
                    }

                    v30 = [v17 objectForKeyedSubscript:@"bottom"];
                    v31 = [*(v28 + 4016) null];
                    v72 = v20;
                    if ([v30 isEqual:v31])
                    {
                      v32 = 0;
                    }

                    else
                    {
                      v32 = [v17 objectForKeyedSubscript:@"bottom"];
                    }

                    v33 = [v17 objectForKeyedSubscript:@"onScreen"];
                    v34 = [*(v28 + 4016) null];
                    if ([v33 isEqual:v34])
                    {
                      v35 = 0;
                    }

                    else
                    {
                      v35 = [v17 objectForKeyedSubscript:@"onScreen"];
                    }

                    if ([v20 length])
                    {
                      v36 = [CKContextUIElement alloc];
                      v37 = [v20 length];
                      if (v37 >= 0xFA)
                      {
                        v38 = 250;
                      }

                      else
                      {
                        v38 = v37;
                      }

                      v39 = [v20 substringWithRange:{0, v38}];
                      v40 = [(CKContextUIElement *)v36 initWithText:v39 className:v71];

                      -[CKContextUIElement setOnScreen:](v40, "setOnScreen:", [v35 BOOLValue]);
                      v41 = [*(a1 + 40) window];
                      v42 = [v41 windowScene];
                      v43 = [v42 _sceneIdentifier];
                      v44 = a1;
                      v45 = [v43 copy];
                      [(CKContextUIElement *)v40 setSceneIdentifier:v45];

                      a1 = v44;
                      if (v75 && v74 && v73 && v32)
                      {
                        v46 = *(v44 + 40);
                        [v75 doubleValue];
                        v48 = v47;
                        [v73 doubleValue];
                        [v46 _convertPointFromContentsToView:{v48, v49}];
                        v51 = v50;
                        v53 = v52;
                        v54 = *(v44 + 40);
                        [v74 doubleValue];
                        v56 = v55;
                        [v32 doubleValue];
                        [v54 _convertPointFromContentsToView:{v56, v57}];
                        [*(v44 + 40) convertRect:0 toView:{v51, v53, v58 - v51, v59 - v53}];
                        [*(v44 + 48) convertRect:0 toView:?];
                        [(CKContextUIElement *)v40 setFrameInWindow:?];
                        v60 = [*(v44 + 48) screen];
                        v61 = [v60 coordinateSpace];

                        if (v61)
                        {
                          v62 = *(v44 + 48);
                          [(CKContextUIElement *)v40 frameInWindow];
                          [v62 convertPoint:v61 toCoordinateSpace:?];
                          [(CKContextUIElement *)v40 setAbsoluteOriginOnScreen:?];
                        }
                      }

                      [*(*(*(v44 + 56) + 8) + 40) addObject:v40];

                      v20 = v72;
                    }

                    v14 = v28;
                    v15 = v68;
                    v13 = v69;
                  }

                  ++v16;
                }

                while (v13 != v16);
                v13 = [obj countByEnumeratingWithState:&v76 objects:v81 count:16];
              }

              while (v13);
            }

            v6 = 0;
            v5 = v67;
            v11 = v63;
            v10 = 0;
            v8 = v65;
            v7 = v66;
            v9 = v64;
          }
        }

        dispatch_group_leave(*(a1 + 32));
      }
    }

    else
    {
      dispatch_group_leave(*(a1 + 32));
    }
  }
}

void __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_181(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6 && !a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_2_186(uint64_t a1, void *a2, uint64_t a3)
{
  obj = [a2 description];
  v5 = [obj length];
  if (!a3 && v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (BOOL)_shouldInstallAppSwitcherControls
{
  if (!self->_allowAppSwitcherControls)
  {
    return 0;
  }

  superview = [(UIButton *)self->_debugButton superview];

  if (superview)
  {
    return 0;
  }

  superview2 = [(UIButton *)self->_recentsButton superview];
  v4 = superview2 == 0;

  return v4;
}

- (void)_installDebuggingControlsIfApplicable
{
  if (self->_allowAppSwitcherControls)
  {
    v7[3] = v2;
    v7[4] = v3;
    objc_initWeak(v7, self);
    v4 = dispatch_time(0, 2000000000);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __72__CKContextContentProviderUIScene__installDebuggingControlsIfApplicable__block_invoke;
    v5[3] = &unk_1E7CEE760;
    objc_copyWeak(&v6, v7);
    dispatch_after(v4, MEMORY[0x1E69E96A0], v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(v7);
  }
}

uint64_t __72__CKContextContentProviderUIScene__installDebuggingControlsIfApplicable__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if ([WeakRetained _shouldInstallAppSwitcherControls])
    {
      [v3 _installDebuggingButton];
      [v3 _installRecentsButton];
      [v3 _installDebuggingControlsIfApplicable];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)_setUpDebuggingControlsIfPossibleAfterDelay:(double)delay
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E695DFF0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__CKContextContentProviderUIScene__setUpDebuggingControlsIfPossibleAfterDelay___block_invoke;
  v7[3] = &unk_1E7CEE788;
  objc_copyWeak(&v8, &location);
  v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:delay];
  objc_storeWeak(&self->_toolInstallationTimer, v6);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

uint64_t __79__CKContextContentProviderUIScene__setUpDebuggingControlsIfPossibleAfterDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained _determineIfDebuggingControlsShouldBeAllowed];
    v4[24] = v2;
    if (v2)
    {
      [v4 _installDebuggingControlsIfApplicable];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)_installRecentsButton
{
  v20[4] = *MEMORY[0x1E69E9840];
  if (self->_allowAppSwitcherControls)
  {
    _containerViewForDebugButtons = [(CKContextContentProviderUIScene *)self _containerViewForDebugButtons];
    if (_containerViewForDebugButtons)
    {
      v19 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"clock.fill"];
      v4 = [MEMORY[0x1E69DC738] systemButtonWithImage:v19 target:self action:sel__didSelectRecentsControl_];
      recentsButton = self->_recentsButton;
      self->_recentsButton = v4;

      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [(UIButton *)self->_recentsButton setTintColor:whiteColor];

      [(UIButton *)self->_recentsButton setTranslatesAutoresizingMaskIntoConstraints:0];
      [_containerViewForDebugButtons addSubview:self->_recentsButton];
      v16 = MEMORY[0x1E696ACD8];
      topAnchor = [(UIButton *)self->_recentsButton topAnchor];
      topAnchor2 = [_containerViewForDebugButtons topAnchor];
      v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v20[0] = v7;
      leadingAnchor = [(UIButton *)self->_recentsButton leadingAnchor];
      leadingAnchor2 = [_containerViewForDebugButtons leadingAnchor];
      v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v20[1] = v10;
      widthAnchor = [(UIButton *)self->_recentsButton widthAnchor];
      v12 = [widthAnchor constraintEqualToConstant:70.0];
      v20[2] = v12;
      heightAnchor = [(UIButton *)self->_recentsButton heightAnchor];
      v14 = [heightAnchor constraintEqualToConstant:70.0];
      v20[3] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
      [v16 activateConstraints:v15];
    }
  }
}

- (void)_installDebuggingButton
{
  v20[4] = *MEMORY[0x1E69E9840];
  if (self->_allowAppSwitcherControls)
  {
    _containerViewForDebugButtons = [(CKContextContentProviderUIScene *)self _containerViewForDebugButtons];
    if (_containerViewForDebugButtons)
    {
      v19 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up.fill"];
      v4 = [MEMORY[0x1E69DC738] systemButtonWithImage:v19 target:self action:sel__didSelectDebugControl_];
      debugButton = self->_debugButton;
      self->_debugButton = v4;

      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [(UIButton *)self->_debugButton setTintColor:whiteColor];

      [(UIButton *)self->_debugButton setTranslatesAutoresizingMaskIntoConstraints:0];
      [_containerViewForDebugButtons addSubview:self->_debugButton];
      v16 = MEMORY[0x1E696ACD8];
      topAnchor = [(UIButton *)self->_debugButton topAnchor];
      topAnchor2 = [_containerViewForDebugButtons topAnchor];
      v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v20[0] = v7;
      trailingAnchor = [(UIButton *)self->_debugButton trailingAnchor];
      trailingAnchor2 = [_containerViewForDebugButtons trailingAnchor];
      v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v20[1] = v10;
      widthAnchor = [(UIButton *)self->_debugButton widthAnchor];
      v12 = [widthAnchor constraintEqualToConstant:70.0];
      v20[2] = v12;
      heightAnchor = [(UIButton *)self->_debugButton heightAnchor];
      v14 = [heightAnchor constraintEqualToConstant:70.0];
      v20[3] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
      [v16 activateConstraints:v15];
    }
  }
}

- (void)_didSelectRecentsControl:(id)control
{
  if (self->_allowAppSwitcherControls)
  {
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_1);
  }
}

void __60__CKContextContentProviderUIScene__didSelectRecentsControl___block_invoke()
{
  v0 = *MEMORY[0x1E69DDA98];
  v1 = [MEMORY[0x1E695DFF8] URLWithString:@"universal-recents://"];
  [v0 performSelector:sel_openURL_ withObject:v1];
}

- (void)_didSelectDebugControl:(id)control
{
  controlCopy = control;
  v5 = controlCopy;
  if (self->_allowAppSwitcherControls)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__CKContextContentProviderUIScene__didSelectDebugControl___block_invoke;
    block[3] = &unk_1E7CEE308;
    v7 = controlCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __58__CKContextContentProviderUIScene__didSelectDebugControl___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E69CD9F8];
  v2 = *(a1 + 32);
  v5 = [[v1 alloc] initWithActivityItems:&unk_1F305C850 applicationActivities:0];
  v3 = [v2 window];

  v4 = [v3 rootViewController];
  [v4 presentViewController:v5 animated:1 completion:0];
}

- (id)_containerViewForDebugButtons
{
  v32 = *MEMORY[0x1E69E9840];
  if (self->_allowAppSwitcherControls)
  {
    _scene = [(CKContextContentProviderUIScene *)self _scene];
    _visibleWindows = [_scene _visibleWindows];

    if ([_visibleWindows count])
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v5 = _visibleWindows;
      v20 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v20)
      {
        v6 = *v27;
        v21 = v5;
        v19 = *v27;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v27 != v6)
            {
              objc_enumerationMutation(v5);
            }

            v8 = [(CKContextContentProviderUIScene *)self _descendantsRelevantForDebugControls:*(*(&v26 + 1) + 8 * i)];
            v22 = 0u;
            v23 = 0u;
            v24 = 0u;
            v25 = 0u;
            v9 = v8;
            v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v23;
              while (2)
              {
                for (j = 0; j != v11; ++j)
                {
                  if (*v23 != v12)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v14 = *(*(&v22 + 1) + 8 * j);
                  v15 = objc_opt_class();
                  v16 = NSStringFromClass(v15);
                  if ([v16 containsString:@"SBFluidSwitcherContentView"])
                  {
                    v17 = v14;

                    v5 = v21;
                    goto LABEL_23;
                  }
                }

                v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
                if (v11)
                {
                  continue;
                }

                break;
              }
            }

            v5 = v21;
            v6 = v19;
          }

          v17 = 0;
          v20 = [v21 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v20);
      }

      else
      {
        v17 = 0;
      }

LABEL_23:
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_descendantsRelevantForDebugControls:(id)controls
{
  v23 = *MEMORY[0x1E69E9840];
  controlsCopy = controls;
  v5 = controlsCopy;
  if (self->_allowAppSwitcherControls && ([controlsCopy frame], x = v25.origin.x, y = v25.origin.y, width = v25.size.width, height = v25.size.height, CGRectGetWidth(v25) >= 150.0) && (v26.origin.x = x, v26.origin.y = y, v26.size.width = width, v26.size.height = height, CGRectGetHeight(v26) >= 150.0))
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v10 addObject:v5];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    subviews = [v5 subviews];
    v13 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(subviews);
          }

          v17 = [(CKContextContentProviderUIScene *)self _descendantsRelevantForDebugControls:*(*(&v18 + 1) + 8 * i)];
          [v10 addObjectsFromArray:v17];
        }

        v14 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error evaluating JavaScript for node extraction: %@", &v1, 0xCu);
}

void __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_2_cold_2()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = 138412290;
  v1 = 0;
  _os_log_error_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error parsing node information to JSON dictionary: %@", &v0, 0xCu);
}

@end