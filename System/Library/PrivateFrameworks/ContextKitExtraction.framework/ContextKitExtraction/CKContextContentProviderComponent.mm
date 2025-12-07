@interface CKContextContentProviderComponent
+ (double)_fontSizeOfView:(id)view usingExecutor:(id)executor;
+ (id)_UIElementsForWebViewContentString:(id)string withSceneIdentifier:(id)identifier;
+ (id)_bestVisibleStringForView:(id)view usingExecutor:(id)executor;
+ (id)_decendantsRelevantForExtractionFromParentView:(id)view;
+ (id)_getNotableSuperviewClassNamesForView:(id)view;
+ (id)_handleWKWebView:(id)view withExecutor:(id)executor;
+ (void)_donateContentsOfParentView:(id)view usingExecutor:(id)executor withOptions:(unint64_t)options;
+ (void)_donateText:(id)text withTitle:(id)title debugText:(id)debugText debugUrlString:(id)string leadImage:(id)image snapshot:(id)snapshot uiElements:(id)elements usingContextFromExecutor:(id)self0;
+ (void)_extractContentFromWebView:(id)view includingUIBoundingBox:(BOOL)box withCompletionHandler:(id)handler;
+ (void)initialize;
- (CKContextContentProviderComponent)init;
- (UIView)view;
- (void)extractUsingExecutor:(id)executor withOptions:(unint64_t)options;
@end

@implementation CKContextContentProviderComponent

+ (void)initialize
{
  v11[6] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    v2 = MEMORY[0x1E695DFD8];
    v3 = *MEMORY[0x1E69DE4A0];
    v11[0] = *MEMORY[0x1E69DE480];
    v11[1] = v3;
    v4 = *MEMORY[0x1E69DE528];
    v11[2] = *MEMORY[0x1E69DE588];
    v11[3] = v4;
    v5 = *MEMORY[0x1E69DE518];
    v11[4] = *MEMORY[0x1E69DE500];
    v11[5] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];
    v7 = [v2 setWithArray:v6];
    v8 = kSensitiveContentTypes_0;
    kSensitiveContentTypes_0 = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F305C868];
    v10 = kNotNotableSuperviewClassNames_0;
    kNotNotableSuperviewClassNames_0 = v9;
  }
}

- (CKContextContentProviderComponent)init
{
  v14.receiver = self;
  v14.super_class = CKContextContentProviderComponent;
  v2 = [(CKContextContentProviderComponent *)&v14 init];
  if (v2)
  {
    v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
    if (v3)
    {
      [(CKContextContentProviderComponent *)v3 init:v4];
    }

    v11 = +[CKContextContentProviderManager sharedManager];
    [v11 addProvider:v2];

    v12 = v2;
  }

  return v2;
}

- (void)extractUsingExecutor:(id)executor withOptions:(unint64_t)options
{
  executorCopy = executor;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);

    if (WeakRetained)
    {
      v8 = objc_opt_class();
      v9 = objc_loadWeakRetained(&self->_view);
      [v8 _donateContentsOfParentView:v9 usingExecutor:executorCopy withOptions:options];
    }

    else
    {
      v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        [(CKContextContentProviderComponent *)v10 extractUsingExecutor:v11 withOptions:v12, v13, v14, v15, v16, v17];
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    [CKContextContentProviderComponent extractUsingExecutor:withOptions:];
  }
}

+ (void)_donateContentsOfParentView:(id)view usingExecutor:(id)executor withOptions:(unint64_t)options
{
  v74 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  executorCopy = executor;
  window = [viewCopy window];
  v9 = [self _decendantsRelevantForExtractionFromParentView:viewCopy];
  if ([v9 count])
  {
    v63 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v56 = viewCopy;
    v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
    window2 = [viewCopy window];
    windowScene = [window2 windowScene];
    _sceneIdentifier = [windowScene _sceneIdentifier];

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v54 = v9;
    obj = v9;
    v65 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
    v12 = 0;
    if (!v65)
    {
      goto LABEL_30;
    }

    v64 = *v69;
    selfCopy = self;
    while (1)
    {
      for (i = 0; i != v65; ++i)
      {
        if (*v69 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v68 + 1) + 8 * i);
        v15 = [self _bestVisibleStringForView:v14 usingExecutor:executorCopy];
        if ([v15 length])
        {
          v66 = v12;
          if (([v63 containsObject:v15] & 1) == 0)
          {
            [v63 addObject:v15];
          }

          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          v18 = [self _getNotableSuperviewClassNamesForView:v14];
          [self _fontSizeOfView:v14 usingExecutor:executorCopy];
          v20 = v19;
          v21 = [v15 length];
          if (v21 >= 0xFA)
          {
            v22 = 250;
          }

          else
          {
            v22 = v21;
          }

          v23 = [v15 substringWithRange:{0, v22}];
          v24 = [[CKContextUIElement alloc] initWithText:v23 className:v17];
          [(CKContextUIElement *)v24 setSuperviewClassNames:v18];
          *&v25 = v20;
          [(CKContextUIElement *)v24 setFontSize:v25];
          sceneIdentifier = [(CKContextUIElement *)v24 sceneIdentifier];
          v27 = [sceneIdentifier length];

          if (!v27)
          {
            v28 = [_sceneIdentifier copy];
            [(CKContextUIElement *)v24 setSceneIdentifier:v28];
          }

          if ((options & 4) != 0)
          {
            v61 = [CKContextSharedExtractionHelper elementIsOnScreenWithView:v14 window:window];
            [v14 bounds];
            [v14 convertRect:window toView:?];
            v30 = v29;
            v32 = v31;
            [(CKContextUIElement *)v24 setFrameInWindow:?];
            screen = [window screen];
            [screen coordinateSpace];
            v35 = v34 = executorCopy;
            [v56 convertPoint:v35 toCoordinateSpace:{v30, v32}];
            [(CKContextUIElement *)v24 setAbsoluteOriginOnScreen:?];

            executorCopy = v34;
            [(CKContextUIElement *)v24 setOnScreen:v61];
          }

          if ([(CKContextUIElement *)v24 isOnScreen])
          {
            v36 = v58;
            if ([v58 count] >= 0xFA)
            {
              goto LABEL_22;
            }

LABEL_21:
            [v36 addObject:v24];
          }

          else
          {
            v36 = v57;
            if ([v57 count] <= 0xF9)
            {
              goto LABEL_21;
            }
          }

LABEL_22:

          self = selfCopy;
          v12 = v66;
        }

        if ((options & 1) != 0 && !v12)
        {
          v37 = [CKContextSharedExtractionHelper bestImageForView:v14];
          v12 = v37;
          if (v37)
          {
            v38 = v37;
          }
        }
      }

      v65 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
      if (!v65)
      {
LABEL_30:

        v39 = 250 - [v58 count];
        v40 = [v57 count];
        if (v39 >= v40)
        {
          v41 = v40;
        }

        else
        {
          v41 = v39;
        }

        v42 = [v57 subarrayWithRange:{0, v41}];
        [v58 addObjectsFromArray:v42];

        v43 = 0;
        if ((options & 2) != 0)
        {
          viewCopy = v56;
          v9 = v54;
          if (!v12)
          {
            [window bounds];
            v45 = v44;
            v47 = v46;
            v49 = v48;
            v51 = v50;
            isOpaque = [window isOpaque];
            v75.width = v49;
            v75.height = v51;
            UIGraphicsBeginImageContextWithOptions(v75, isOpaque, 0.0);
            [window drawViewHierarchyInRect:1 afterScreenUpdates:{v45, v47, v49, v51}];
            v43 = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();
          }
        }

        else
        {
          viewCopy = v56;
          v9 = v54;
        }

        v53 = [v63 componentsJoinedByString:@"\n\n"];
        [self _donateText:v53 withTitle:0 debugText:0 debugUrlString:0 leadImage:v12 snapshot:v43 uiElements:v58 & ((options << 60) >> 63) usingContextFromExecutor:executorCopy];

        goto LABEL_40;
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "There are no descendants on the view provided for extraction.", buf, 2u);
  }

LABEL_40:
}

+ (id)_decendantsRelevantForExtractionFromParentView:(id)view
{
  v44 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  subviews = [viewCopy subviews];
  reverseObjectEnumerator = [subviews reverseObjectEnumerator];

  v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_17;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v40;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v40 != v10)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v12 = *(*(&v39 + 1) + 8 * i);
      if (([v12 isHidden] & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen bounds];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;

        [v12 frame];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v46.origin.x = v15;
        v46.origin.y = v17;
        v46.size.width = v19;
        v46.size.height = v21;
        Width = CGRectGetWidth(v46);
        [v12 frame];
        v31 = CGRectGetWidth(v47);
        if (!v9 || (v32 = v31, [v9 frame], v49.origin.x = v33, v49.origin.y = v34, v49.size.width = v35, v49.size.height = v36, v48.origin.x = v23, v48.origin.y = v25, v48.size.width = v27, v48.size.height = v29, !CGRectEqualToRect(v48, v49)) || vabdd_f64(Width, v32) <= 20.0)
        {
          v37 = v12;

          v9 = v37;
LABEL_12:
          [CKContextSharedExtractionHelper descendantsRelevantForContentExtractionFromView:v12 intoArray:v4];
          continue;
        }
      }
    }

    v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v39 objects:v43 count:16];
  }

  while (v8);
LABEL_17:

  return v4;
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

    if (([kNotNotableSuperviewClassNames_0 containsObject:v8] & 1) == 0)
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

+ (void)_donateText:(id)text withTitle:(id)title debugText:(id)debugText debugUrlString:(id)string leadImage:(id)image snapshot:(id)snapshot uiElements:(id)elements usingContextFromExecutor:(id)self0
{
  v16 = MEMORY[0x1E6997208];
  executorCopy = executor;
  elementsCopy = elements;
  snapshotCopy = snapshot;
  imageCopy = image;
  stringCopy = string;
  debugTextCopy = debugText;
  titleCopy = title;
  textCopy = text;
  v26 = objc_alloc_init(v16);
  [v26 setText:textCopy];

  [v26 setTitle:titleCopy];
  [v26 setDebugText:debugTextCopy];

  [v26 setDebugUrlString:stringCopy];
  [v26 setUiElements:elementsCopy];

  [CKContextExtractionUtil renderSnapshot:snapshotCopy toDonationItem:v26];
  [CKContextExtractionUtil renderLeadImage:imageCopy toDonationItem:v26];

  context = [executorCopy context];

  [context addItem:v26];
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
  viewCopy = view;
  executorCopy = executor;
  if ([CKContextUIClasses isSFSafariView:viewCopy])
  {
    context = [executorCopy context];
    [context setRemoteProcesses:{objc_msgSend(context, "remoteProcesses") + 1}];
  }

  if ([CKContextUIClasses isWKWebView:viewCopy])
  {
    v9 = [self _handleWKWebView:viewCopy withExecutor:executorCopy];
LABEL_7:
    v10 = v9;
    goto LABEL_8;
  }

  if ([CKContextUIClasses isPDFView:viewCopy])
  {
    v9 = [self handlePDFView:viewCopy withExecutor:executorCopy];
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    textContentType = [viewCopy textContentType];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([self _isSensitiveTextContentType:textContentType])
    {

LABEL_18:
      v10 = 0;
      goto LABEL_8;
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && ([viewCopy isSecureTextEntry])
  {
    goto LABEL_18;
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
    v15 = [viewCopy performSelector:sel_text];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;

      string = v16;
    }
  }

  if (![string length] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v17 = [viewCopy performSelector:sel_accessibilityLabel];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v17 length] >= 0x14)
    {
      v18 = v17;

      string = v18;
    }
  }

  if (![string length] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v19 = [viewCopy performSelector:sel_component];
    if (objc_opt_respondsToSelector())
    {
      v20 = [v19 performSelector:sel_text];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;

        string = v21;
      }
    }
  }

  if (![string length] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v22 = [viewCopy performSelector:sel_dataDetectorElement];
    if (objc_opt_respondsToSelector())
    {
      v23 = [v22 performSelector:sel_scannerResult];
      if (objc_opt_respondsToSelector())
      {
        v24 = [v23 performSelector:sel_value];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;

          string = v25;
        }
      }
    }
  }

  if ([string length])
  {
    v26 = string;
  }

  else
  {
    v26 = 0;
  }

  v10 = v26;

LABEL_8:

  return v10;
}

+ (id)_UIElementsForWebViewContentString:(id)string withSceneIdentifier:(id)identifier
{
  v35 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  identifierCopy = identifier;
  if ([stringCopy length])
  {
    v6 = [CKContextSharedExtractionHelper blocksFromText:stringCopy];
    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v6 count])
    {
      v26 = v6;
      v27 = stringCopy;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v31;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v31 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v30 + 1) + 8 * i);
            if (![CKContextSharedExtractionHelper textBlockLooksLikeAListWithText:v12])
            {
              newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
              v14 = [v12 componentsSeparatedByCharactersInSet:newlineCharacterSet];
              v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@distinctUnionOfObjects.%@", @"self"];
              v16 = [v14 valueForKeyPath:v15];

              v17 = [v16 componentsJoinedByString:@"\n"];
              v18 = [v16 count];
              v19 = [v17 length];
              if (v19)
              {
                v20 = v18 == 0;
              }

              else
              {
                v20 = 1;
              }

              if (!v20)
              {
                v21 = v19 / v18;
                v22 = [[CKContextUIElement alloc] initWithText:v17 className:@"WKWebView"];
                *&v23 = v21;
                [(CKContextUIElement *)v22 setDensity:v23];
                v24 = [identifierCopy copy];
                [(CKContextUIElement *)v22 setSceneIdentifier:v24];

                [v28 addObject:v22];
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v9);
      }

      v6 = v26;
      stringCopy = v27;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

+ (id)_handleWKWebView:(id)view withExecutor:(id)executor
{
  viewCopy = view;
  executorCopy = executor;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Extracting from a WKWebView", buf, 2u);
  }

  v8 = [self controlCodeForExecutor:executorCopy];
  [CKContextContentProviderManager optionsForControlCode:v8];
  if (v8 != 2 && v8 != 4 && [viewCopy isLoading])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "The web view is still loading. There should be no attempt to extract content from it without user gesture.";
LABEL_14:
      _os_log_impl(&dword_1B842F000, v9, OS_LOG_TYPE_INFO, v10, buf, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  configuration = [viewCopy configuration];
  websiteDataStore = [configuration websiteDataStore];
  isPersistent = [websiteDataStore isPersistent];

  if ((isPersistent & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "The webview data store is not persistent. We cannot extract from it for privacy reasons without user gesture.";
      goto LABEL_14;
    }

LABEL_15:
    v22 = &stru_1F305A6D8;
    goto LABEL_16;
  }

  v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
  if (v14)
  {
    [(CKContextContentProviderComponent *)v14 _handleWKWebView:v15 withExecutor:v16, v17, v18, v19, v20, v21];
  }

  [executorCopy markIncomplete];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __67__CKContextContentProviderComponent__handleWKWebView_withExecutor___block_invoke;
  v24[3] = &unk_1E7CEE5A8;
  selfCopy = self;
  v25 = viewCopy;
  [executorCopy addWorkItem:v24];

  v22 = 0;
LABEL_16:

  return v22;
}

void __67__CKContextContentProviderComponent__handleWKWebView_withExecutor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 40) controlCodeForExecutor:v3];
  v5 = v4;
  v6 = [CKContextContentProviderManager optionsForControlCode:v4];
  v7 = (v6 >> 2) & 1;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__CKContextContentProviderComponent__handleWKWebView_withExecutor___block_invoke_2;
  v17[3] = &unk_1E7CEE7C8;
  v8 = *(a1 + 32);
  v20 = *(a1 + 40);
  v21 = v5;
  v22 = (v6 & 4) != 0;
  v23 = (v6 & 8) != 0;
  v18 = v8;
  v19 = v3;
  v9 = v3;
  v10 = MEMORY[0x1B8CBE810](v17);
  v13 = a1 + 32;
  v11 = *(a1 + 32);
  v12 = *(v13 + 8);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__CKContextContentProviderComponent__handleWKWebView_withExecutor___block_invoke_3;
  v15[3] = &unk_1E7CEE7F0;
  v16 = v10;
  v14 = v10;
  [v12 _extractContentFromWebView:v11 includingUIBoundingBox:v7 withCompletionHandler:v15];
}

void __67__CKContextContentProviderComponent__handleWKWebView_withExecutor___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = a2;
  v30 = a3;
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = a4;
  v11 = [v9 window];
  v12 = [v11 windowScene];
  v13 = [v12 _sceneIdentifier];
  v14 = [v8 _UIElementsForWebViewContentString:v32 withSceneIdentifier:v13];

  v15 = [*(a1 + 32) title];
  v31 = [CKContextSharedExtractionHelper bestContentStringForWebViewUIElements:v14 andTitle:v15];

  v16 = [v14 count];
  if (v16 >= 0xFA)
  {
    v17 = 250;
  }

  else
  {
    v17 = v16;
  }

  v18 = [v14 subarrayWithRange:{0, v17}];
  v19 = [v10 count];
  if (v19 >= 0xFA)
  {
    v20 = 250;
  }

  else
  {
    v20 = v19;
  }

  v21 = [v10 subarrayWithRange:{0, v20}];

  v22 = (*(a1 + 56) < 6u) & (0x2Cu >> *(a1 + 56));
  if (*(a1 + 57))
  {
    v23 = v21;
  }

  else
  {
    v23 = v18;
  }

  v24 = v23;
  v25 = *(a1 + 48);
  v26 = [*(a1 + 32) title];
  if (v22 == 1)
  {
    v4 = [*(a1 + 32) URL];
    v27 = [v4 absoluteString];
    v28 = v32;
  }

  else
  {
    v28 = 0;
    v27 = 0;
  }

  if (*(a1 + 58))
  {
    v29 = v24;
  }

  else
  {
    v29 = 0;
  }

  [v25 _donateText:v31 withTitle:v26 debugText:v28 debugUrlString:v27 leadImage:0 snapshot:v30 uiElements:v29 usingContextFromExecutor:*(a1 + 40)];
  if (v22)
  {
  }

  [*(a1 + 40) markReady];
}

+ (void)_extractContentFromWebView:(id)view includingUIBoundingBox:(BOOL)box withCompletionHandler:(id)handler
{
  boxCopy = box;
  viewCopy = view;
  handlerCopy = handler;
  if (handlerCopy)
  {
    window = [viewCopy window];
    if ([viewCopy _isDisplayingPDF])
    {
      _dataForDisplayedPDF = [viewCopy _dataForDisplayedPDF];
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __109__CKContextContentProviderComponent__extractContentFromWebView_includingUIBoundingBox_withCompletionHandler___block_invoke;
      v52[3] = &unk_1E7CEE648;
      v53 = handlerCopy;
      [self extractContentFromWebViewPDFData:_dataForDisplayedPDF withCompletionHandler:v52];
      v12 = v53;
    }

    else
    {
      v13 = dispatch_group_create();
      v50[0] = 0;
      v50[1] = v50;
      v50[2] = 0x3032000000;
      v50[3] = __Block_byref_object_copy__0;
      v50[4] = __Block_byref_object_dispose__0;
      v51 = 0;
      v48[0] = 0;
      v48[1] = v48;
      v48[2] = 0x3032000000;
      v48[3] = __Block_byref_object_copy__0;
      v48[4] = __Block_byref_object_dispose__0;
      v49 = 0;
      v46[0] = 0;
      v46[1] = v46;
      v46[2] = 0x3032000000;
      v46[3] = __Block_byref_object_copy__0;
      v46[4] = __Block_byref_object_dispose__0;
      v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
      dispatch_group_enter(v13);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __109__CKContextContentProviderComponent__extractContentFromWebView_includingUIBoundingBox_withCompletionHandler___block_invoke_113;
      v41[3] = &unk_1E7CEE818;
      v44 = v50;
      v45 = 3000;
      _dataForDisplayedPDF = v13;
      v42 = _dataForDisplayedPDF;
      v14 = viewCopy;
      v43 = v14;
      [v14 _getContentsAsStringWithCompletionHandler:v41];
      v55 = 0;
      v56 = &v55;
      v57 = 0x2050000000;
      v15 = getWKContentWorldClass_softClass_0;
      v58 = getWKContentWorldClass_softClass_0;
      if (!getWKContentWorldClass_softClass_0)
      {
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __getWKContentWorldClass_block_invoke_0;
        v54[3] = &unk_1E7CEE4D8;
        v54[4] = &v55;
        __getWKContentWorldClass_block_invoke_0(v54);
        v15 = v56[3];
      }

      v16 = v15;
      _Block_object_dispose(&v55, 8);
      v17 = [v15 worldWithName:@"CKContextExtractionContentWorld"];
      v18 = v17;
      if (boxCopy && v17)
      {
        date = [MEMORY[0x1E695DF00] date];
        v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
        if (v20)
        {
          [(CKContextContentProviderComponent *)v20 _extractContentFromWebView:v21 includingUIBoundingBox:v22 withCompletionHandler:v23, v24, v25, v26, v27];
        }

        dispatch_group_enter(_dataForDisplayedPDF);
        v28 = +[CKContextSharedExtractionHelper webPageNodeExtractionJavaScript];
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __109__CKContextContentProviderComponent__extractContentFromWebView_includingUIBoundingBox_withCompletionHandler___block_invoke_117;
        v35[3] = &unk_1E7CEE840;
        v29 = date;
        v36 = v29;
        v37 = _dataForDisplayedPDF;
        v38 = v14;
        v39 = window;
        v40 = v46;
        [v38 evaluateJavaScript:v28 inFrame:0 inContentWorld:v18 completionHandler:v35];
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __109__CKContextContentProviderComponent__extractContentFromWebView_includingUIBoundingBox_withCompletionHandler___block_invoke_122;
      block[3] = &unk_1E7CEE868;
      v31 = handlerCopy;
      v32 = v50;
      v33 = v48;
      v34 = v46;
      dispatch_group_notify(_dataForDisplayedPDF, MEMORY[0x1E69E96A0], block);

      _Block_object_dispose(v46, 8);
      _Block_object_dispose(v48, 8);

      _Block_object_dispose(v50, 8);
      v12 = v51;
    }
  }
}

void __109__CKContextContentProviderComponent__extractContentFromWebView_includingUIBoundingBox_withCompletionHandler___block_invoke_113(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length] < 0x96)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Failed to extract enough text from main webpage frame. Trying to get content from all frames", buf, 2u);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __109__CKContextContentProviderComponent__extractContentFromWebView_includingUIBoundingBox_withCompletionHandler___block_invoke_114;
    v12[3] = &unk_1E7CEE670;
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    v14 = *(a1 + 48);
    v15 = v11;
    v13 = *(a1 + 32);
    [v10 _getContentsOfAllFramesAsStringWithCompletionHandler:v12];
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = [v3 length];
    if (v4 >= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    v7 = [v3 substringWithRange:{0, v6}];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    dispatch_group_leave(*(a1 + 32));
  }
}

void __109__CKContextContentProviderComponent__extractContentFromWebView_includingUIBoundingBox_withCompletionHandler___block_invoke_114(void *a1, void *a2)
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

void __109__CKContextContentProviderComponent__extractContentFromWebView_includingUIBoundingBox_withCompletionHandler___block_invoke_117(uint64_t a1, void *a2, void *a3)
{
  v83 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __109__CKContextContentProviderComponent__extractContentFromWebView_includingUIBoundingBox_withCompletionHandler___block_invoke_117_cold_1(a1);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else if (v6)
  {
LABEL_3:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_2_cold_1(v6);
    }

    dispatch_group_leave(*(a1 + 40));
    goto LABEL_62;
  }

  v7 = [v5 description];
  if ([v7 length])
  {
    v8 = [v7 dataUsingEncoding:4];
    v81 = 0;
    v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:&v81];
    v10 = v81;
    if (v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __192__CKContextContentProviderUIScene__extractContentFromWebView_includingSnapshot_includingUIBoundingBox_ignoreViewTextLengthRequirements_ignoreViewCountCap_includeRawHTML_withCompletionHandler___block_invoke_2_cold_2();
      }

      dispatch_group_leave(*(a1 + 40));
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
          v67 = v6;
          v68 = v5;
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          obj = v11;
          v12 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
          v63 = v11;
          if (v12)
          {
            v13 = v12;
            v14 = 0x1E695D000uLL;
            v15 = *v78;
            v69 = *v78;
            do
            {
              v16 = 0;
              v70 = v13;
              do
              {
                if (*v78 != v15)
                {
                  objc_enumerationMutation(obj);
                }

                v17 = *(*(&v77 + 1) + 8 * v16);
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
                    v72 = 0;
                  }

                  else
                  {
                    v72 = [v17 objectForKeyedSubscript:@"className"];
                  }

                  v23 = [v17 objectForKeyedSubscript:@"left"];
                  v24 = [*(v14 + 4016) null];
                  if ([v23 isEqual:v24])
                  {
                    v76 = 0;
                  }

                  else
                  {
                    v76 = [v17 objectForKeyedSubscript:@"left"];
                  }

                  v25 = [v17 objectForKeyedSubscript:@"right"];
                  v26 = [*(v14 + 4016) null];
                  if ([v25 isEqual:v26])
                  {
                    v75 = 0;
                  }

                  else
                  {
                    v75 = [v17 objectForKeyedSubscript:@"right"];
                  }

                  v27 = [v17 objectForKeyedSubscript:@"top"];
                  v28 = v14;
                  v29 = [*(v14 + 4016) null];
                  if ([v27 isEqual:v29])
                  {
                    v74 = 0;
                  }

                  else
                  {
                    v74 = [v17 objectForKeyedSubscript:@"top"];
                  }

                  v30 = [v17 objectForKeyedSubscript:@"bottom"];
                  v31 = [*(v28 + 4016) null];
                  v73 = v20;
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
                    v40 = [(CKContextUIElement *)v36 initWithText:v39 className:v72];

                    -[CKContextUIElement setOnScreen:](v40, "setOnScreen:", [v35 BOOLValue]);
                    v41 = [*(a1 + 48) window];
                    v42 = [v41 windowScene];
                    v43 = [v42 _sceneIdentifier];
                    v44 = a1;
                    v45 = [v43 copy];
                    [(CKContextUIElement *)v40 setSceneIdentifier:v45];

                    a1 = v44;
                    if (v76 && v75 && v74 && v32)
                    {
                      v46 = *(v44 + 48);
                      [v76 doubleValue];
                      v48 = v47;
                      [v74 doubleValue];
                      [v46 _convertPointFromContentsToView:{v48, v49}];
                      v51 = v50;
                      v53 = v52;
                      v54 = *(v44 + 48);
                      [v75 doubleValue];
                      v56 = v55;
                      [v32 doubleValue];
                      [v54 _convertPointFromContentsToView:{v56, v57}];
                      [*(v44 + 48) convertRect:0 toView:{v51, v53, v58 - v51, v59 - v53}];
                      [*(v44 + 56) convertRect:0 toView:?];
                      [(CKContextUIElement *)v40 setFrameInWindow:?];
                      v60 = [*(v44 + 56) screen];
                      v61 = [v60 coordinateSpace];

                      if (v61)
                      {
                        v62 = *(v44 + 56);
                        [(CKContextUIElement *)v40 frameInWindow];
                        [v62 convertPoint:v61 toCoordinateSpace:?];
                        [(CKContextUIElement *)v40 setAbsoluteOriginOnScreen:?];
                      }
                    }

                    [*(*(*(v44 + 64) + 8) + 40) addObject:v40];

                    v20 = v73;
                  }

                  v14 = v28;
                  v15 = v69;
                  v13 = v70;
                }

                ++v16;
              }

              while (v13 != v16);
              v13 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
            }

            while (v13);
          }

          v6 = v67;
          v5 = v68;
          v11 = v63;
          v10 = 0;
          v8 = v65;
          v7 = v66;
          v9 = v64;
        }
      }

      dispatch_group_leave(*(a1 + 40));
    }
  }

  else
  {
    dispatch_group_leave(*(a1 + 40));
  }

LABEL_62:
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

void __109__CKContextContentProviderComponent__extractContentFromWebView_includingUIBoundingBox_withCompletionHandler___block_invoke_117_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] date];
  [v2 timeIntervalSinceDate:*(a1 + 32)];
  v4 = 134217984;
  v5 = v3;
  _os_log_debug_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Evaluated after %f seconds", &v4, 0xCu);
}

@end