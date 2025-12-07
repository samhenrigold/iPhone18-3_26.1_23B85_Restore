@interface SafariUIApplicationAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityAlternateActionForURL:(id)l;
- (BOOL)_accessibilityLoadURL:(id)l;
- (BOOL)_accessibilityWebSearchResultsActive;
- (BOOL)_iosAccessibilityPerformAction:(int)action withValue:(id)value fencePort:(unsigned int)port;
- (id)_accessibilityActiveURL;
- (id)_accessibilityMainBrowserController;
- (id)_accessibilityRetrieveWebViewForSearchResults;
- (id)_getScribbleController;
- (id)_iosAccessibilityAttributeValue:(int64_t)value;
- (id)_iosAccessibilityAttributeValue:(int64_t)value forParameter:(id)parameter;
@end

@implementation SafariUIApplicationAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WebHTMLView" hasInstanceMethod:@"accessibilityRootElement" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIWebBrowserFindOnPageHighlighter" hasInstanceMethod:@"setSearchText: matchLimit:" withFullSignature:{"v", "@", "Q", 0}];
  [validationsCopy validateClass:@"UIWebBrowserFindOnPageHighlighter" hasInstanceMethod:@"numberOfMatches" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"TabDocument" hasInstanceMethod:@"loadURL: userDriven:" withFullSignature:{"@", "@", "B", 0}];
  [validationsCopy validateClass:@"TabDocument" hasInstanceVariable:@"_findCompletionProvider" withType:"FindOnPageCompletionProvider"];
  [validationsCopy validateClass:@"TabController" hasInstanceMethod:@"activeTabDocument" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TabDocument" hasInstanceMethod:@"URLString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Application" hasInstanceMethod:@"browserWindowController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TabDocument" hasInstanceVariable:@"_sfScribbleController" withType:"SFScribbleController"];
  [validationsCopy validateClass:@"SFScribbleController" hasInstanceVariable:@"_elementController" withType:"WBSScribbleController"];
  [validationsCopy validateClass:@"SFScribbleController" hasInstanceMethod:@"_hideSelectedElement" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SFScribbleController" hasInstanceMethod:@"_setSelectedElement:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SFScribbleController" hasInstanceMethod:@"_updateScribbleControllerForElementAtPoint:" withFullSignature:{"v", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"WBSScribbleController" hasInstanceMethod:@"getElementAtPoint:completion:" withFullSignature:{"v", "{CGPoint=dd}", "@?", 0}];
  [validationsCopy validateClass:@"WBSScribbleElement" hasInstanceVariable:@"_targetedElements" withType:"NSArray"];
  [validationsCopy validateClass:@"WBSScribbleElement" hasInstanceVariable:@"_screenReaderText" withType:"NSString"];
}

- (id)_accessibilityMainBrowserController
{
  v26 = *MEMORY[0x29EDCA608];
  v24 = 0;
  v2 = [*MEMORY[0x29EDC8008] safeValueForKey:@"_browserWindowController"];
  v3 = __UIAccessibilitySafeClass();

  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [v3 safeArrayForKey:@"browserControllers"];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v19 = v3;
    v7 = *v21;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v24 = 0;
        objc_opt_class();
        v10 = [v9 safeValueForKey:@"rootViewController"];
        v11 = __UIAccessibilityCastAsClass();

        if (v24 == 1)
        {
          goto LABEL_19;
        }

        view = [v11 view];
        window = [view window];

        windowScene = [window windowScene];
        keyWindow = [windowScene keyWindow];

        if (window == keyWindow)
        {
          v24 = 0;
          v17 = __UIAccessibilitySafeClass();
          if (v24 == 1)
          {
LABEL_19:
            abort();
          }

          v16 = v17;

          goto LABEL_14;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    v16 = 0;
LABEL_14:
    v3 = v19;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)_accessibilityWebSearchResultsActive
{
  v16 = *MEMORY[0x29EDCA608];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = AXUIApplicationWindows();
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v2);
      }

      firstResponder = [*(*(&v11 + 1) + 8 * v6) firstResponder];
      v8 = 1;
      v9 = [firstResponder _accessibilityFindAncestor:&__block_literal_global_1 startWithSelf:1];

      if (v9)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

  return v8;
}

uint64_t __72__SafariUIApplicationAccessibility__accessibilityWebSearchResultsActive__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessibilityIdentifier];
  v3 = [v2 isEqualToString:@"SFFindOnPageBarIdentifier"];

  return v3;
}

- (id)_accessibilityRetrieveWebViewForSearchResults
{
  _accessibilityMainBrowserController = [(SafariUIApplicationAccessibility *)self _accessibilityMainBrowserController];
  v4 = _accessibilityMainBrowserController;
  if (!_accessibilityMainBrowserController || ([_accessibilityMainBrowserController safeValueForKey:@"browserView"], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "safeValueForKey:", @"webView"), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v6 = [(SafariUIApplicationAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Webview_0.isa)];
  }

  return v6;
}

- (id)_accessibilityActiveURL
{
  objc_opt_class();
  _accessibilityMainBrowserController = [(SafariUIApplicationAccessibility *)self _accessibilityMainBrowserController];
  v4 = __UIAccessibilityCastAsSafeCategory();

  accessibilityActiveTabDocument = [v4 accessibilityActiveTabDocument];
  v6 = __UIAccessibilitySafeClass();

  v7 = [v6 safeValueForKey:@"URLString"];

  return v7;
}

- (BOOL)_accessibilityLoadURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    objc_opt_class();
    _accessibilityMainBrowserController = [(SafariUIApplicationAccessibility *)self _accessibilityMainBrowserController];
    v6 = __UIAccessibilityCastAsSafeCategory();

    accessibilityActiveTabDocument = [v6 accessibilityActiveTabDocument];
    v8 = __UIAccessibilitySafeClass();

    v12 = v8;
    v13 = [objc_alloc(MEMORY[0x29EDB8E70]) initWithString:lCopy];
    v9 = v13;
    v10 = v8;
    AXPerformSafeBlock();
  }

  return lCopy != 0;
}

- (BOOL)_accessibilityAlternateActionForURL:(id)l
{
  lCopy = l;
  v4 = [MEMORY[0x29EDB8E70] URLWithString:lCopy];
  v5 = v4;
  if (v4)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__0;
    v14 = __Block_byref_object_dispose__0;
    v15 = 0;
    v9 = v4;
    AXPerformSafeBlock();
    v6 = v11[5];

    _Block_object_dispose(&v10, 8);
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __72__SafariUIApplicationAccessibility__accessibilityAlternateActionForURL___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [NSClassFromString(&cfstr_Tabdocument.isa) urlForExternalURL:*(a1 + 32)];

  return MEMORY[0x2A1C71028]();
}

- (id)_iosAccessibilityAttributeValue:(int64_t)value
{
  if (value == 5073)
  {
    _getScribbleController = [(SafariUIApplicationAccessibility *)self _getScribbleController];
    v4 = [_getScribbleController safeBoolForKey:@"isScribbling"];
    v5 = [MEMORY[0x29EDBA070] numberWithBool:v4];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SafariUIApplicationAccessibility;
    v5 = [(SafariUIApplicationAccessibility *)&v7 _iosAccessibilityAttributeValue:?];
  }

  return v5;
}

- (BOOL)_iosAccessibilityPerformAction:(int)action withValue:(id)value fencePort:(unsigned int)port
{
  if ((action - 4202) > 0xFFFFFFFD)
  {
    _getScribbleController = [(SafariUIApplicationAccessibility *)self _getScribbleController];
    v7 = _getScribbleController;
    v5 = _getScribbleController != 0;
    if (_getScribbleController)
    {
      v9 = _getScribbleController;
      AXPerformSafeBlock();
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SafariUIApplicationAccessibility;
    return [(SafariUIApplicationAccessibility *)&v10 _iosAccessibilityPerformAction:*&action withValue:value fencePort:*&port];
  }

  return v5;
}

void *__87__SafariUIApplicationAccessibility__iosAccessibilityPerformAction_withValue_fencePort___block_invoke(void *result)
{
  v1 = *(result + 10);
  if (v1 == 4201)
  {
    return [*(result + 4) _setSelectedElement:0];
  }

  if (v1 == 4200)
  {
    return [*(result + 4) _hideSelectedElement];
  }

  return result;
}

- (id)_iosAccessibilityAttributeValue:(int64_t)value forParameter:(id)parameter
{
  v67 = *MEMORY[0x29EDCA608];
  parameterCopy = parameter;
  if (value == 94100)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [parameterCopy pointValue];
      v8 = v7;
      v10 = v9;
      _getScribbleController = [(SafariUIApplicationAccessibility *)self _getScribbleController];
      v33 = _getScribbleController;
      if (_getScribbleController)
      {
        v61 = 0;
        v62 = &v61;
        v63 = 0x2020000000;
        v64 = 0;
        *buf = 0;
        v56 = buf;
        v57 = 0x3032000000;
        v58 = __Block_byref_object_copy__0;
        v59 = __Block_byref_object_dispose__0;
        v60 = 0;
        v46 = MEMORY[0x29EDCA5F8];
        v47 = 3221225472;
        v48 = __81__SafariUIApplicationAccessibility__iosAccessibilityAttributeValue_forParameter___block_invoke;
        v49 = &unk_29F2D7C80;
        v12 = _getScribbleController;
        v53 = v8;
        v54 = v10;
        v50 = v12;
        v51 = buf;
        v52 = &v61;
        AXPerformSafeBlock();
        while ((v62[3] & 1) == 0)
        {
          CFRunLoopGetCurrent();
          CFRunLoopRunSpecific();
        }

        if (*(v56 + 5))
        {
          v38 = MEMORY[0x29EDCA5F8];
          v39 = 3221225472;
          v40 = __81__SafariUIApplicationAccessibility__iosAccessibilityAttributeValue_forParameter___block_invoke_418;
          v41 = &unk_29F2D7CA8;
          v42 = v12;
          v43 = v8;
          v44 = v10;
          AXPerformSafeBlock();

          [*(v56 + 5) safeArrayForKey:@"targetedElements"];
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v15 = v35 = 0u;
          v16 = 0;
          v17 = [v15 countByEnumeratingWithState:&v34 objects:v66 count:16];
          if (v17)
          {
            v18 = *v35;
            do
            {
              v19 = 0;
              v20 = v16;
              do
              {
                if (*v35 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v31 = [*(*(&v34 + 1) + 8 * v19) safeStringForKey:{@"screenReaderText", v31, v32}];
                v32 = @"__AXStringForVariablesSentinel";
                v16 = __UIAXStringForVariables();

                ++v19;
                v20 = v16;
              }

              while (v17 != v19);
              v17 = [v15 countByEnumeratingWithState:&v34 objects:v66 count:16, v31, @"__AXStringForVariablesSentinel"];
            }

            while (v17);
          }

          if ([v16 length])
          {
            [*(v56 + 5) safeCGRectForKey:@"geometry"];
            v22 = v21;
            v24 = v23;
            v26 = v25;
            v28 = v27;
            dictionary = [MEMORY[0x29EDB8E00] dictionary];
            [dictionary setObject:v16 forKey:@"AXScribbleRenderedTextKey"];
            v29 = [MEMORY[0x29EDBA168] valueWithRect:{v22, v24, v26, v28}];
            [dictionary setObject:v29 forKey:@"AXScribbleGeometryKey"];
          }

          else
          {
            dictionary = 0;
          }
        }

        else
        {
          v15 = AXLogAppAccessibility();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v45 = 0;
            _os_log_impl(&dword_29BFE7000, v15, OS_LOG_TYPE_DEFAULT, "[Scribble] no element found at point", v45, 2u);
          }

          dictionary = 0;
        }

        _Block_object_dispose(buf, 8);
        _Block_object_dispose(&v61, 8);
      }

      else
      {
        dictionary = 0;
      }
    }

    else
    {
      v14 = AXLogAppAccessibility();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_29BFE7000, v14, OS_LOG_TYPE_DEFAULT, "[Scribble] attribute value is not an NSValue", buf, 2u);
      }

      dictionary = 0;
    }
  }

  else
  {
    v65.receiver = self;
    v65.super_class = SafariUIApplicationAccessibility;
    dictionary = [(SafariUIApplicationAccessibility *)&v65 _iosAccessibilityAttributeValue:value forParameter:parameterCopy];
  }

  return dictionary;
}

void __81__SafariUIApplicationAccessibility__iosAccessibilityAttributeValue_forParameter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"_elementController"];
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __81__SafariUIApplicationAccessibility__iosAccessibilityAttributeValue_forParameter___block_invoke_2;
  v3[3] = &unk_29F2D7C58;
  v4 = *(a1 + 40);
  [v2 getElementAtPoint:v3 completion:{*(a1 + 56), *(a1 + 64)}];
}

void __81__SafariUIApplicationAccessibility__iosAccessibilityAttributeValue_forParameter___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v6 = a2;
  v7 = a3;
  v8 = AXLogAppAccessibility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_29BFE7000, v8, OS_LOG_TYPE_DEFAULT, "[Scribble] error getting element at point: %@", &v9, 0xCu);
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)_getScribbleController
{
  objc_opt_class();
  _accessibilityMainBrowserController = [(SafariUIApplicationAccessibility *)self _accessibilityMainBrowserController];
  v4 = __UIAccessibilityCastAsSafeCategory();

  accessibilityActiveTabDocument = [v4 accessibilityActiveTabDocument];
  v6 = __UIAccessibilitySafeClass();

  v7 = [v6 safeValueForKey:@"_sfScribbleController"];

  return v7;
}

@end