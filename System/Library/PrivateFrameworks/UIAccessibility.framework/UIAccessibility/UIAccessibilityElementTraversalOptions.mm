@interface UIAccessibilityElementTraversalOptions
+ (id)defaultContinuityDisplayOptions;
+ (id)defaultFullKeyboardAccessOptions;
+ (id)defaultSpeakScreenOptions;
+ (id)defaultSwitchControlOptions;
+ (id)options;
+ (id)voiceOverOptionsIncludingElementsFromOpaqueProviders:(BOOL)providers honorsGroups:(BOOL)groups;
- (UIAccessibilityElementTraversalOptions)init;
- (id)description;
- (void)setAllowedElementsForTraversal:(id)traversal;
@end

@implementation UIAccessibilityElementTraversalOptions

+ (id)options
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)voiceOverOptionsIncludingElementsFromOpaqueProviders:(BOOL)providers honorsGroups:(BOOL)groups
{
  groupsCopy = groups;
  options = [self options];
  [options setHonorsElementGrouping:groupsCopy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __108__UIAccessibilityElementTraversalOptions_voiceOverOptionsIncludingElementsFromOpaqueProviders_honorsGroups___block_invoke;
  v9[3] = &__block_descriptor_42_e8_B16__0_8l;
  v9[4] = self;
  providersCopy = providers;
  v11 = groupsCopy;
  [options setLeafNodePredicate:v9];

  return options;
}

uint64_t __108__UIAccessibilityElementTraversalOptions_voiceOverOptionsIncludingElementsFromOpaqueProviders_honorsGroups___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAccessibilityElement] && (v4 = objc_msgSend(*(a1 + 32), "accessibilityTraits"), (UIAccessibilityTraitSpacer & ~v4) != 0) || (*(a1 + 40) & 1) == 0 && (objc_msgSend(v3, "isAccessibilityOpaqueElementProvider") & 1) != 0)
  {
    v5 = 1;
  }

  else if (*(a1 + 41) == 1)
  {
    v5 = [v3 _accessibilityIsGroupedParent];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)defaultSwitchControlOptions
{
  options = [self options];
  [options setShouldReturnScannerGroups:1];
  [options setShouldOnlyIncludeElementsWithVisibleFrame:1];
  [options setShouldIncludeStatusBarWindow:1];
  [options setLeafNodePredicate:&__block_literal_global_3];

  return options;
}

uint64_t __69__UIAccessibilityElementTraversalOptions_defaultSwitchControlOptions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isAccessibilityElement])
  {
    v3 = [v2 accessibilityRespondsToUserInteraction];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)defaultSpeakScreenOptions
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = +[UIAccessibilityElementTraversalOptions options];
  [v2 setLeafNodePredicate:&__block_literal_global_282];
  [v2 setForSpeakScreen:1];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  _accessibilitySpeakThisRootElement = [mEMORY[0x1E69DC668] _accessibilitySpeakThisRootElement];

  v5 = AXLogSpeakScreen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[UIAccessibilityElementTraversalOptions defaultSpeakScreenOptions];
  }

  mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
  _accessibilitySpeakThisViewsFromSceneRequestedForActiveSpeakScreenSession = [mEMORY[0x1E69DC668]2 _accessibilitySpeakThisViewsFromSceneRequestedForActiveSpeakScreenSession];

  v8 = AXLogSpeakScreen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[UIAccessibilityElementTraversalOptions defaultSpeakScreenOptions];
  }

  if (_accessibilitySpeakThisRootElement)
  {
    v13[0] = _accessibilitySpeakThisRootElement;
    mEMORY[0x1E69DC668]3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v2 setAllowedElementsForTraversal:mEMORY[0x1E69DC668]3];
LABEL_7:

    goto LABEL_10;
  }

  if (!_accessibilitySpeakThisViewsFromSceneRequestedForActiveSpeakScreenSession)
  {
    mEMORY[0x1E69DC668]3 = [MEMORY[0x1E69DC668] sharedApplication];
    _accessibilitySpeakThisViewController = [mEMORY[0x1E69DC668]3 _accessibilitySpeakThisViewController];
    _accessibilitySpeakThisViews = [_accessibilitySpeakThisViewController _accessibilitySpeakThisViews];
    [v2 setAllowedElementsForTraversal:_accessibilitySpeakThisViews];

    goto LABEL_7;
  }

  [v2 setAllowedElementsForTraversal:_accessibilitySpeakThisViewsFromSceneRequestedForActiveSpeakScreenSession];
LABEL_10:

  return v2;
}

uint64_t __67__UIAccessibilityElementTraversalOptions_defaultSpeakScreenOptions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (AXRequestingClient() == 19)
  {
    v3 = [v2 accessibilityTraits];
    v4 = ((*MEMORY[0x1E69DD9B8] | *MEMORY[0x1E69DD9D0]) & v3) == 0;
    if (([v2 _accessibilitySpeakThisIgnoresAccessibilityElementStatus] & 1) == 0 && (!objc_msgSend(v2, "_accessibilityIsSpeakThisElement") || (objc_msgSend(v2, "isAccessibilityElement") & 1) == 0) && !objc_msgSend(v2, "isAccessibilityOpaqueElementProvider"))
    {
      v4 = 0;
    }
  }

  else if ([v2 _accessibilitySpeakThisIgnoresAccessibilityElementStatus] & 1) != 0 || objc_msgSend(v2, "_accessibilityIsSpeakThisElement") && (objc_msgSend(v2, "isAccessibilityElement"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v2 isAccessibilityOpaqueElementProvider];
  }

  return v4;
}

+ (id)defaultFullKeyboardAccessOptions
{
  options = [self options];
  [options setShouldIncludeStatusBarWindow:1];
  [options setLeafNodePredicate:&__block_literal_global_286];

  return options;
}

+ (id)defaultContinuityDisplayOptions
{
  v2 = [self voiceOverOptionsIncludingElementsFromOpaqueProviders:1 honorsGroups:0];
  [v2 setShouldOnlyIncludeElementsWithVisibleFrame:1];

  return v2;
}

- (UIAccessibilityElementTraversalOptions)init
{
  v5.receiver = self;
  v5.super_class = UIAccessibilityElementTraversalOptions;
  v2 = [(UIAccessibilityElementTraversalOptions *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UIAccessibilityElementTraversalOptions *)v2 setDirection:1];
    [(UIAccessibilityElementTraversalOptions *)v3 setSorted:1];
  }

  return v3;
}

- (id)description
{
  direction = [(UIAccessibilityElementTraversalOptions *)self direction];
  v4 = @"previous";
  if (direction == 1)
  {
    v4 = @"next";
  }

  v5 = v4;
  if ([(UIAccessibilityElementTraversalOptions *)self shouldOnlyIncludeElementsWithVisibleFrame])
  {
    v13 = __UIAXStringForVariables(v5, v6, v7, v8, v9, v10, v11, v12, @"only include elements with visible frame");

    v5 = v13;
  }

  if ([(UIAccessibilityElementTraversalOptions *)self shouldReturnScannerGroups])
  {
    v21 = __UIAXStringForVariables(v5, v14, v15, v16, v17, v18, v19, v20, @"scanner groups");

    v5 = v21;
  }

  leafNodePredicate = [(UIAccessibilityElementTraversalOptions *)self leafNodePredicate];

  if (leafNodePredicate)
  {
    v30 = __UIAXStringForVariables(v5, v23, v24, v25, v26, v27, v28, v29, @"has predicate");

    v5 = v30;
  }

  if ([(UIAccessibilityElementTraversalOptions *)self forSpeakScreen])
  {
    v38 = __UIAXStringForVariables(v5, v31, v32, v33, v34, v35, v36, v37, @"for Speak Screen");

    v5 = v38;
  }

  if ([(UIAccessibilityElementTraversalOptions *)self shouldUseAllSubviews])
  {
    v46 = __UIAXStringForVariables(v5, v39, v40, v41, v42, v43, v44, v45, @"use all subviews");

    v5 = v46;
  }

  v47 = MEMORY[0x1E696AEC0];
  v51.receiver = self;
  v51.super_class = UIAccessibilityElementTraversalOptions;
  v48 = [(UIAccessibilityElementTraversalOptions *)&v51 description];
  v49 = [v47 stringWithFormat:@"%@ - %@", v48, v5];

  return v49;
}

- (void)setAllowedElementsForTraversal:(id)traversal
{
  traversalCopy = traversal;
  allowedElementsForTraversal = self->_allowedElementsForTraversal;
  p_allowedElementsForTraversal = &self->_allowedElementsForTraversal;
  if (allowedElementsForTraversal != traversalCopy)
  {
    v8 = traversalCopy;
    objc_storeStrong(p_allowedElementsForTraversal, traversal);
    traversalCopy = v8;
  }
}

@end