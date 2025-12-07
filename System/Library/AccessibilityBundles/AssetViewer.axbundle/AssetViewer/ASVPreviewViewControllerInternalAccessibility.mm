@interface ASVPreviewViewControllerInternalAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axActivateForEntityController:(id)controller deltaYaw:(float)yaw deltaPitch:(float)pitch;
- (BOOL)_axIsAccessibilityElementForEntityController:(id)controller;
- (BOOL)_axIsOffScreenForEntityWrapper:(id)wrapper;
- (BOOL)_axTranslateForLevitation:(BOOL)levitation delta:(id)delta entityController:;
- (CGRect)_axBoundingRectForEntityController:(id)controller;
- (CGRect)_axBoundingRectForEntityWrapper:(id)wrapper;
- (CGRect)_axBoundsForControls;
- (CGRect)_axFrameForEntityController:(id)controller;
- (id)_axARModeControlsForEntityController:(id)controller isRTL:(BOOL)l;
- (id)_axControlForRotationWithDeltaYaw:(float)yaw deltaPitch:(float)pitch nameFormat:(id)format hintFormat:(id)hintFormat shouldUseArrows:(BOOL)arrows entityController:(id)controller;
- (id)_axControlForScalingForEntityController:(id)controller;
- (id)_axControlForTranslationForLevitation:(BOOL)levitation delta:(id)delta nameFormat:(id)format entityController:;
- (id)_axControlsViewStack;
- (id)_axCreateAssetElementForEntityController:(id)controller;
- (id)_axDescriptionForCurrentPitchForEntityController:(id)controller;
- (id)_axDescriptionForCurrentPositionForEntityController:(id)controller;
- (id)_axDescriptionForCurrentRotationForEntityController:(id)controller;
- (id)_axDescriptionForPitchInDegrees:(int64_t)degrees;
- (id)_axDescriptionForRotationInDegrees:(int64_t)degrees;
- (id)_axEntityElementsForEntityController:(id)controller;
- (id)_axLabelForEntityController:(id)controller;
- (id)_axNameForEntityController:(id)controller;
- (id)_axObjectModeControlsForEntityController:(id)controller isRTL:(BOOL)l;
- (id)_axRootEntityWrapperForEntityController:(id)controller;
- (id)_axUnifiedGestureRecognizerForEntityController:(id)controller;
- (int64_t)_axEmitterMode;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAdjustScaleByMultiplier:(float)multiplier entityController:(id)controller;
- (void)_axAnnotateAsControl:(id)control;
- (void)_axCheckForAppearanceOfObjectsWithTimer:(id)timer;
- (void)_axGetAccessibilityFrame:(CGRect *)frame path:(id *)path forArrowTowardsEdge:(unint64_t)edge isDoubleArrow:(BOOL)arrow;
- (void)_axGetAccessibilityFrame:(CGRect *)frame path:(id *)path forRotationControlClockwise:(BOOL)clockwise;
- (void)_axResetToInitialScaleForEntityAction:(id)action;
- (void)_axSetOffScreen:(BOOL)screen forEntityWrapper:(id)wrapper;
- (void)_axToggleVisibilityAnnouncementsIfNeeded;
- (void)_axUpdateARViewAccessibilityElements;
- (void)_axUpdateForAXSettings;
- (void)_axUpdateForOldEmitterMode:(int64_t)mode;
- (void)accessibilityDidSetUpEntityControllers;
- (void)entityController:(id)controller doubleTappedAt:(CGPoint)at;
- (void)handleTapAtPointWithPoint:(CGPoint)point;
- (void)updateInterfaceState;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation ASVPreviewViewControllerInternalAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ASVPreviewViewControllerInternal" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"AssetViewer.EntityController" conformsToProtocol:@"ASVUnifiedGestureRecognizerDelegate"];
  [validationsCopy validateClass:@"ASVPreviewViewControllerInternal" hasInstanceMethod:@"currentlyDisallowsUnifiedGestureRecognizerAction" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"ASVPreviewViewControllerInternal" hasInstanceMethod:@"handleTapAtPointWithPoint:" withFullSignature:{"v", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"ASVPreviewViewControllerInternal" hasInstanceMethod:@"overlayController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ASVPreviewViewControllerInternal" hasInstanceMethod:@"accessibilityEntityControllers" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ASVPreviewViewControllerInternal" hasInstanceMethod:@"accessibilityRootEntityController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ASVPreviewViewControllerInternal" hasInstanceMethod:@"accessibilityARView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ASVPreviewViewControllerInternal" hasInstanceMethod:@"updateInterfaceState" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"ASVPreviewViewControllerInternal" hasInstanceMethod:@"entityController:doubleTappedAt:" withFullSignature:{"v", "@", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"ASVPreviewViewControllerInternal" hasInstanceMethod:@"accessibilityDidSetUpEntityControllers" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"ASVPreviewViewControllerInternal" hasInstanceMethod:@"accessibilityShowControls" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"ASVPreviewViewControllerInternal" hasInstanceMethod:@"accessibilityDistanceInMetersFromEntityController:" withFullSignature:{"f", "@", 0}];
  [validationsCopy validateClass:@"AssetViewer.ARQuickLookOverlayController" hasInstanceMethod:@"controlsViewStack" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"accessibilityAssetURL" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"assetYaw" withFullSignature:{"f", 0}];
  [validationsCopy validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"assetPitch" withFullSignature:{"f", 0}];
  [validationsCopy validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"assetScale" withFullSignature:{"f", 0}];
  [validationsCopy validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"assetScreenPosition" withFullSignature:{"1", 0}];
  [validationsCopy validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"rotateByDeltaYaw:deltaPitch:" withFullSignature:{"v", "f", "f", 0}];
  [validationsCopy validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"worldGestureRecognizer:translatedAssetToScreenPoint:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"worldGestureRecognizer:levitatedAssetToScreenPoint:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"scaleTo:updateARScale:" withFullSignature:{"v", "f", "B", 0}];
  [validationsCopy validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"worldGestureRecognizer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"levitationHeight" withFullSignature:{"f", 0}];
  [validationsCopy validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"calculateAssetScreenBoundingRectIn:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "@", 0}];
  [validationsCopy validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"entityAccessibilityWrappers" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"viewDidDisappear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"AssetViewer.ARQLView" hasInstanceMethod:@"emitterMode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"isEntityRoot" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"entityLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"rootEntityWrapper" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"isEntityActive" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"calculateScreenBoundingRectIn:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "@", 0}];
  [validationsCopy validateClass:@"RealityKit.ARView" hasInstanceMethod:@"accessibilityElementsForEntityWrappers:" withFullSignature:{"@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v14.receiver = self;
  v14.super_class = ASVPreviewViewControllerInternalAccessibility;
  [(ASVPreviewViewControllerInternalAccessibility *)&v14 _accessibilityLoadAccessibilityInformation];
  _axARView = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  objc_initWeak(&location, _axARView);
  objc_initWeak(&from, self);
  v6 = MEMORY[0x29EDCA5F8];
  v7 = 3221225472;
  v8 = __91__ASVPreviewViewControllerInternalAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v9 = &unk_29F2A1D00;
  objc_copyWeak(&v10, &location);
  objc_copyWeak(&v11, &from);
  [_axARView _setAccessibilityFrameBlock:&v6];
  [_axARView setAccessibilityNavigationStyle:{2, v6, v7, v8, v9}];
  [(ASVPreviewViewControllerInternalAccessibility *)self _axUpdateARViewAccessibilityElements];
  if (![(ASVPreviewViewControllerInternalAccessibility *)self _axHasHandledLoadAX])
  {
    [(ASVPreviewViewControllerInternalAccessibility *)self _axToggleVisibilityAnnouncementsIfNeeded];
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:self selector:sel__axDidToggleAXSetting_ name:*MEMORY[0x29EDC8000] object:0];

    defaultCenter2 = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__axDidToggleAXSetting_ name:*MEMORY[0x29EDC7F48] object:0];

    [(ASVPreviewViewControllerInternalAccessibility *)self _axUpdateForAXSettings];
    [(ASVPreviewViewControllerInternalAccessibility *)self _axSetHasHandledLoadAX:1];
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

double __91__ASVPreviewViewControllerInternalAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 _axBoundsForControls];
  *&v4 = UIAccessibilityConvertFrameToScreenCoordinates(v6, WeakRetained);

  return v4;
}

- (void)_axUpdateForAXSettings
{
  objc_opt_class();
  _axOverlayController = [(ASVPreviewViewControllerInternalAccessibility *)self _axOverlayController];
  v4 = __UIAccessibilityCastAsSafeCategory();

  if ([v4 axShouldDisableAutoHidingControls])
  {
    v5 = MEMORY[0x29EDCA5F8];
    v6 = 3221225472;
    v7 = __71__ASVPreviewViewControllerInternalAccessibility__axUpdateForAXSettings__block_invoke;
    v8 = &unk_29F2A1D28;
    selfCopy = self;
    AXPerformSafeBlock();
  }

  [v4 axUpdateAutoHideControlsTimer];
}

- (id)_axControlsViewStack
{
  _axOverlayController = [(ASVPreviewViewControllerInternalAccessibility *)self _axOverlayController];
  v3 = [_axOverlayController safeUIViewForKey:@"controlsViewStack"];

  return v3;
}

- (id)_axRootEntityWrapperForEntityController:(id)controller
{
  v17 = *MEMORY[0x29EDCA608];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(ASVPreviewViewControllerInternalAccessibility *)self _axEntityWrappersForEntityController:controller, 0];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 safeBoolForKey:@"isEntityRoot"])
        {
          v9 = v8;
LABEL_13:
          v10 = v9;
          goto LABEL_14;
        }

        v9 = [v8 safeValueForKey:@"rootEntityWrapper"];
        if (v9)
        {
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v10 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_14:

  return v10;
}

- (id)_axNameForEntityController:(id)controller
{
  controllerCopy = controller;
  _axEntityControllers = [(ASVPreviewViewControllerInternalAccessibility *)self _axEntityControllers];
  firstObject = [_axEntityControllers firstObject];
  v7 = [(ASVPreviewViewControllerInternalAccessibility *)self _axRootEntityWrapperForEntityController:firstObject];
  v8 = [(ASVPreviewViewControllerInternalAccessibility *)self _axNameForEntityWrapper:v7];

  if (![v8 length])
  {
    objc_opt_class();
    v9 = [controllerCopy safeValueForKey:@"accessibilityAssetURL"];
    v10 = __UIAccessibilityCastAsClass();

    uRLByDeletingPathExtension = [v10 URLByDeletingPathExtension];
    lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];

    v8 = lastPathComponent;
  }

  if (![v8 length])
  {
    v13 = accessibilityLocalizedString(@"DEFAULT_ASSET_NAME");

    v8 = v13;
  }

  return v8;
}

- (CGRect)_axBoundsForControls
{
  _axARView = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  [_axARView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  _axControlsViewStack = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlsViewStack];
  v13 = _axControlsViewStack;
  if (_axControlsViewStack)
  {
    [_axControlsViewStack bounds];
    [_axARView convertRect:v13 fromView:?];
    MaxY = CGRectGetMaxY(v19);
    v11 = v11 - (MaxY - v7);
    v7 = MaxY;
  }

  v15 = v5;
  v16 = v7;
  v17 = v9;
  v18 = v11;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)_axGetAccessibilityFrame:(CGRect *)frame path:(id *)path forArrowTowardsEdge:(unint64_t)edge isDoubleArrow:(BOOL)arrow
{
  arrowCopy = arrow;
  [(ASVPreviewViewControllerInternalAccessibility *)self _axBoundsForControls];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  path = [MEMORY[0x29EDC7948] bezierPath];
  if (edge == 8 || edge == 2)
  {
    v47.origin.x = v12;
    v47.origin.y = v14;
    v47.size.width = v16;
    v47.size.height = v18;
    MinY = CGRectGetMinY(v47);
    v48.origin.x = v12;
    v48.origin.y = v14;
    v48.size.width = v16;
    v48.size.height = v18;
    v20 = MinY + (CGRectGetHeight(v48) + -80.0) * 0.5;
    if (edge == 2)
    {
      v21 = 50.0;
      v22 = 80.0;
      v49.origin.x = v12;
      v49.origin.y = v20;
      v49.size.width = 50.0;
      v49.size.height = 80.0;
      MinX = CGRectGetMinX(v49);
      v50.origin.x = v12;
      v50.origin.y = v20;
      v50.size.width = 50.0;
      v50.size.height = 80.0;
      [(UIBezierPath *)path moveToPoint:MinX, CGRectGetMidY(v50)];
      v51.origin.x = v12;
      v51.origin.y = v20;
      v51.size.width = 50.0;
      v51.size.height = 80.0;
      MaxX = CGRectGetMaxX(v51);
      v52.origin.x = v12;
      v52.origin.y = v20;
      v52.size.width = 50.0;
      v52.size.height = 80.0;
      [(UIBezierPath *)path addLineToPoint:MaxX, CGRectGetMinY(v52)];
      v53.origin.x = v12;
      v53.origin.y = v20;
      v53.size.width = 50.0;
      v53.size.height = 80.0;
      v25 = CGRectGetMaxX(v53);
      v54.origin.x = v12;
      v54.origin.y = v20;
      v54.size.width = 50.0;
      v54.size.height = 80.0;
      MaxY = CGRectGetMaxY(v54);
      v27 = v12;
    }

    else
    {
      v55.origin.x = v12;
      v55.origin.y = v14;
      v55.size.width = v16;
      v55.size.height = v18;
      v27 = CGRectGetMaxX(v55) + -50.0;
      v21 = 50.0;
      v22 = 80.0;
      v56.origin.x = v27;
      v56.origin.y = v20;
      v56.size.width = 50.0;
      v56.size.height = 80.0;
      v28 = CGRectGetMaxX(v56);
      v57.origin.x = v27;
      v57.origin.y = v20;
      v57.size.width = 50.0;
      v57.size.height = 80.0;
      [(UIBezierPath *)path moveToPoint:v28, CGRectGetMidY(v57)];
      v58.origin.x = v27;
      v58.origin.y = v20;
      v58.size.width = 50.0;
      v58.size.height = 80.0;
      v29 = CGRectGetMinX(v58);
      v59.origin.x = v27;
      v59.origin.y = v20;
      v59.size.width = 50.0;
      v59.size.height = 80.0;
      [(UIBezierPath *)path addLineToPoint:v29, CGRectGetMinY(v59)];
      v60.origin.x = v27;
      v60.origin.y = v20;
      v60.size.width = 50.0;
      v60.size.height = 80.0;
      v25 = CGRectGetMinX(v60);
      v61.origin.x = v27;
      v61.origin.y = v20;
      v61.size.width = 50.0;
      v61.size.height = 80.0;
      MaxY = CGRectGetMaxY(v61);
    }

    v14 = v20;
    goto LABEL_7;
  }

  v22 = 75.0;
  if (arrowCopy)
  {
    v31 = 75.0;
  }

  else
  {
    v31 = 50.0;
  }

  v63.origin.x = v12;
  v63.origin.y = v14;
  v63.size.width = v16;
  v63.size.height = v18;
  v32 = CGRectGetMinX(v63);
  v64.origin.x = v12;
  v64.origin.y = v14;
  v64.size.width = v16;
  v64.size.height = v18;
  v27 = v32 + (CGRectGetWidth(v64) + -80.0) * 0.5;
  if (edge != 4)
  {
    if (edge == 1)
    {
      v21 = 80.0;
      v65.origin.x = v27;
      v65.origin.y = v14;
      v65.size.width = 80.0;
      v65.size.height = v31;
      MidX = CGRectGetMidX(v65);
      v66.origin.x = v27;
      v66.origin.y = v14;
      v66.size.width = 80.0;
      v66.size.height = v31;
      [(UIBezierPath *)path moveToPoint:MidX, CGRectGetMinY(v66)];
      v67.origin.x = v27;
      v67.origin.y = v14;
      v67.size.width = 80.0;
      v67.size.height = v31;
      v34 = CGRectGetMaxY(v67);
      if (arrowCopy)
      {
        MaxY = v34 + -25.0;
        v68.origin.x = v27;
        v68.origin.y = v14;
        v68.size.width = 80.0;
        v68.size.height = v31;
        [(UIBezierPath *)path addLineToPoint:CGRectGetMinX(v68), MaxY];
        v69.origin.x = v27;
        v69.origin.y = v14;
        v69.size.width = 80.0;
        v69.size.height = v31;
        [(UIBezierPath *)path addLineToPoint:CGRectGetMinX(v69) + 20.0, MaxY];
        v70.origin.x = v27;
        v70.origin.y = v14;
        v70.size.width = 80.0;
        v70.size.height = v31;
        v35 = CGRectGetMinX(v70);
        v71.origin.x = v27;
        v71.origin.y = v14;
        v71.size.width = 80.0;
        v71.size.height = v31;
        [(UIBezierPath *)path addLineToPoint:v35, CGRectGetMaxY(v71)];
        v72.origin.x = v27;
        v72.origin.y = v14;
        v72.size.width = 80.0;
        v72.size.height = v31;
        v36 = CGRectGetMaxX(v72);
        v73.origin.x = v27;
        v73.origin.y = v14;
        v73.size.width = 80.0;
        v73.size.height = v31;
        v37 = CGRectGetMaxY(v73);
LABEL_20:
        [(UIBezierPath *)path addLineToPoint:v36, v37, edgeCopy];
        v84.origin.x = v27;
        v84.origin.y = v14;
        v84.size.width = 80.0;
        v84.size.height = v31;
        [(UIBezierPath *)path addLineToPoint:CGRectGetMaxX(v84) + -20.0, MaxY];
        v85.origin.x = v27;
        v85.origin.y = v14;
        v85.size.width = 80.0;
        v85.size.height = v31;
        v25 = CGRectGetMaxX(v85);
        goto LABEL_7;
      }

      v90.origin.x = v27;
      v90.origin.y = v14;
      v90.size.width = 80.0;
      v90.size.height = v31;
      v43 = CGRectGetMinX(v90);
      v91.origin.x = v27;
      v91.origin.y = v14;
      v91.size.width = 80.0;
      v91.size.height = v31;
      [(UIBezierPath *)path addLineToPoint:v43, CGRectGetMaxY(v91)];
      v92.origin.x = v27;
      v92.origin.y = v14;
      v92.size.width = 80.0;
      v92.size.height = v31;
      v25 = CGRectGetMaxX(v92);
      v93.origin.x = v27;
      v93.origin.y = v14;
      v93.size.width = 80.0;
      v93.size.height = v31;
      v42 = CGRectGetMaxY(v93);
      goto LABEL_23;
    }

    edgeCopy = edge;
    _AXAssert();
  }

  v74.origin.x = v12;
  v74.origin.y = v14;
  v74.size.width = v16;
  v74.size.height = v18;
  v14 = CGRectGetMaxY(v74) - v31;
  v21 = 80.0;
  v75.origin.x = v27;
  v75.origin.y = v14;
  v75.size.width = 80.0;
  v75.size.height = v31;
  v38 = CGRectGetMidX(v75);
  v76.origin.x = v27;
  v76.origin.y = v14;
  v76.size.width = 80.0;
  v76.size.height = v31;
  [(UIBezierPath *)path moveToPoint:v38, CGRectGetMaxY(v76)];
  v77.origin.x = v27;
  v77.origin.y = v14;
  v77.size.width = 80.0;
  v77.size.height = v31;
  v39 = CGRectGetMinY(v77);
  if (arrowCopy)
  {
    MaxY = v39 + 25.0;
    v78.origin.x = v27;
    v78.origin.y = v14;
    v78.size.width = 80.0;
    v78.size.height = v31;
    [(UIBezierPath *)path addLineToPoint:CGRectGetMinX(v78), MaxY];
    v79.origin.x = v27;
    v79.origin.y = v14;
    v79.size.width = 80.0;
    v79.size.height = v31;
    [(UIBezierPath *)path addLineToPoint:CGRectGetMinX(v79) + 20.0, MaxY];
    v80.origin.x = v27;
    v80.origin.y = v14;
    v80.size.width = 80.0;
    v80.size.height = v31;
    v40 = CGRectGetMinX(v80);
    v81.origin.x = v27;
    v81.origin.y = v14;
    v81.size.width = 80.0;
    v81.size.height = v31;
    [(UIBezierPath *)path addLineToPoint:v40, CGRectGetMinY(v81)];
    v82.origin.x = v27;
    v82.origin.y = v14;
    v82.size.width = 80.0;
    v82.size.height = v31;
    v36 = CGRectGetMaxX(v82);
    v83.origin.x = v27;
    v83.origin.y = v14;
    v83.size.width = 80.0;
    v83.size.height = v31;
    v37 = CGRectGetMinY(v83);
    goto LABEL_20;
  }

  v86.origin.x = v27;
  v86.origin.y = v14;
  v86.size.width = 80.0;
  v86.size.height = v31;
  v41 = CGRectGetMinX(v86);
  v87.origin.x = v27;
  v87.origin.y = v14;
  v87.size.width = 80.0;
  v87.size.height = v31;
  [(UIBezierPath *)path addLineToPoint:v41, CGRectGetMinY(v87)];
  v88.origin.x = v27;
  v88.origin.y = v14;
  v88.size.width = 80.0;
  v88.size.height = v31;
  v25 = CGRectGetMaxX(v88);
  v89.origin.x = v27;
  v89.origin.y = v14;
  v89.size.width = 80.0;
  v89.size.height = v31;
  v42 = CGRectGetMinY(v89);
LABEL_23:
  MaxY = v42;
  v22 = 50.0;
LABEL_7:
  [(UIBezierPath *)path addLineToPoint:v25, MaxY, edgeCopy];
  [(UIBezierPath *)path closePath];
  _axARView = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  v62.origin.x = v27;
  v62.origin.y = v14;
  v62.size.width = v21;
  v62.size.height = v22;
  *frame = UIAccessibilityConvertFrameToScreenCoordinates(v62, _axARView);
  *path = UIAccessibilityConvertPathToScreenCoordinates(path, _axARView);
}

- (void)_axGetAccessibilityFrame:(CGRect *)frame path:(id *)path forRotationControlClockwise:(BOOL)clockwise
{
  clockwiseCopy = clockwise;
  [(ASVPreviewViewControllerInternalAccessibility *)self _axBoundsForControls];
  AX_CGRectGetCenter();
  v11 = v9;
  v12 = v10;
  if (clockwiseCopy)
  {
    v13 = 2.35619449;
  }

  else
  {
    v13 = 0.785398163;
  }

  if (clockwiseCopy)
  {
    v14 = 3.92699082;
  }

  else
  {
    v14 = -0.785398163;
  }

  if (clockwiseCopy)
  {
    v15 = 4.3196899;
  }

  else
  {
    v15 = -1.17809725;
  }

  v16 = [MEMORY[0x29EDC7948] bezierPathWithArcCenter:clockwiseCopy radius:v9 startAngle:v10 endAngle:125.0 clockwise:{v13, v14}];
  v17 = __sincos_stret(v15);
  [(UIBezierPath *)v16 addLineToPoint:v11 + v17.__cosval * 100.0, v12 + v17.__sinval * 100.0];
  [(UIBezierPath *)v16 addArcWithCenter:clockwiseCopy ^ 1 radius:v11 startAngle:v12 endAngle:75.0 clockwise:v14, v13];
  [(UIBezierPath *)v16 closePath];
  _axARView = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  v21 = UIAccessibilityConvertPathToScreenCoordinates(v16, _axARView);

  v19 = v21;
  *path = v21;
  v20 = v21;
  *frame = CGPathGetPathBoundingBox([v21 CGPath]);
}

- (void)_axAnnotateAsControl:(id)control
{
  controlCopy = control;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __70__ASVPreviewViewControllerInternalAccessibility__axAnnotateAsControl___block_invoke;
  v5[3] = &unk_29F2A1D50;
  objc_copyWeak(&v6, &location);
  [controlCopy _setIsAccessibilityElementBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

uint64_t __70__ASVPreviewViewControllerInternalAccessibility__axAnnotateAsControl___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axShouldExposeControls];

  return v2;
}

- (id)_axDescriptionForRotationInDegrees:(int64_t)degrees
{
  v3 = round(degrees / 5.0) * 5.0;
  v4 = v3;
  v5 = 180;
  if (v3 < 180)
  {
    v5 = v3;
  }

  v6 = 360 * ((v4 - v5 + 359) / 0x168uLL);
  v7 = v4 - v6;
  v8 = -180;
  if ((v4 - v6) > -180)
  {
    v8 = v4 - v6;
  }

  v9 = v8 + v6;
  v10 = v9 == v4;
  v11 = (v9 - v4 - (v9 != v4)) / 0x168;
  if (!v10)
  {
    ++v11;
  }

  v12 = v7 + 360 * v11;
  if (v12 == -180 || v12 == 180)
  {
    v13 = @"ROTATE_TO_180_ANNOUNCEMENT";
  }

  else
  {
    if (v12)
    {
      v15 = MEMORY[0x29EDBA0F8];
      if ((v12 & 0x8000000000000000) != 0)
      {
        v16 = accessibilityLocalizedString(@"ROTATE_TO_CLOCKWISE_ANNOUNCEMENT");
        [v15 localizedStringWithFormat:v16, -v12];
      }

      else
      {
        v16 = accessibilityLocalizedString(@"ROTATE_TO_COUNTERCLOCKWISE_ANNOUNCEMENT");
        [v15 localizedStringWithFormat:v16, v12];
      }
      v14 = ;

      goto LABEL_17;
    }

    v13 = @"ROTATE_TO_ZERO_ANNOUNCEMENT";
  }

  v14 = accessibilityLocalizedString(v13);
LABEL_17:

  return v14;
}

- (id)_axDescriptionForPitchInDegrees:(int64_t)degrees
{
  v3 = round(degrees / 5.0) * 5.0;
  v4 = v3;
  v5 = 180;
  if (v3 < 180)
  {
    v5 = v3;
  }

  v6 = 360 * ((v4 - v5 + 359) / 0x168uLL);
  v7 = v4 - v6;
  v8 = -180;
  if ((v4 - v6) > -180)
  {
    v8 = v4 - v6;
  }

  v9 = v8 + v6;
  v10 = v9 == v4;
  v11 = (v9 - v4 - (v9 != v4)) / 0x168;
  if (!v10)
  {
    ++v11;
  }

  v12 = v7 + 360 * v11;
  if (v12 == -180 || v12 == 180)
  {
    v13 = @"UPSIDE_DOWN_ANNOUNCEMENT";
  }

  else
  {
    if (v12)
    {
      v15 = MEMORY[0x29EDBA0F8];
      if ((v12 & 0x8000000000000000) != 0)
      {
        v16 = accessibilityLocalizedString(@"TILTED_AWAY_ANNOUNCEMENT");
        [v15 localizedStringWithFormat:v16, -v12];
      }

      else
      {
        v16 = accessibilityLocalizedString(@"TILTED_TOWARD_ANNOUNCEMENT");
        [v15 localizedStringWithFormat:v16, v12];
      }
      v14 = ;

      goto LABEL_17;
    }

    v13 = @"NOT_TILTED_ANNOUNCEMENT";
  }

  v14 = accessibilityLocalizedString(v13);
LABEL_17:

  return v14;
}

- (id)_axDescriptionForCurrentRotationForEntityController:(id)controller
{
  [controller safeFloatForKey:@"assetYaw"];

  return [(ASVPreviewViewControllerInternalAccessibility *)self _axDescriptionForRotationInDegrees:(v4 / 0.0174532925)];
}

- (id)_axDescriptionForCurrentPitchForEntityController:(id)controller
{
  [controller safeFloatForKey:@"assetPitch"];

  return [(ASVPreviewViewControllerInternalAccessibility *)self _axDescriptionForPitchInDegrees:(v4 / 0.0174532925)];
}

- (id)_axLabelForEntityController:(id)controller
{
  controllerCopy = controller;
  v5 = [(ASVPreviewViewControllerInternalAccessibility *)self _axNameForEntityController:controllerCopy];
  _axEmitterMode = [(ASVPreviewViewControllerInternalAccessibility *)self _axEmitterMode];
  if ((_axEmitterMode & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if (_axEmitterMode)
    {
      v7 = @"ASSET_IS_NOT_PLACED";
    }

    else
    {
      if (![(ASVPreviewViewControllerInternalAccessibility *)self _axIsOffScreenForEntityController:controllerCopy])
      {
        goto LABEL_10;
      }

      v7 = @"ASSET_IS_OFF_SCREEN";
    }

    v8 = accessibilityLocalizedString(v7);
    v9 = __UIAXStringForVariables();
  }

  else
  {
    if (![(ASVPreviewViewControllerInternalAccessibility *)self _axShouldExposeControls])
    {
      goto LABEL_10;
    }

    v8 = [(ASVPreviewViewControllerInternalAccessibility *)self _axDescriptionForCurrentRotationForEntityController:controllerCopy];
    v11 = [(ASVPreviewViewControllerInternalAccessibility *)self _axDescriptionForCurrentPitchForEntityController:controllerCopy];
    v9 = __UIAXStringForVariables();

    v5 = v11;
  }

  v5 = v9;
LABEL_10:

  return v5;
}

- (CGRect)_axFrameForEntityController:(id)controller
{
  controllerCopy = controller;
  [(ASVPreviewViewControllerInternalAccessibility *)self _axBoundsForControls];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (([(ASVPreviewViewControllerInternalAccessibility *)self _axEmitterMode]& 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(ASVPreviewViewControllerInternalAccessibility *)self _axBoundingRectForEntityController:controllerCopy];
    v31.origin.x = v6;
    v31.origin.y = v8;
    v31.size.width = v10;
    v31.size.height = v12;
    v27 = CGRectIntersection(v26, v31);
    x = v27.origin.x;
    y = v27.origin.y;
    width = v27.size.width;
    height = v27.size.height;
    if (!CGRectIsNull(v27))
    {
      v12 = height;
      v10 = width;
      v8 = y;
      v6 = x;
    }
  }

  _axARView = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  v28.origin.x = v6;
  v28.origin.y = v8;
  v28.size.width = v10;
  v28.size.height = v12;
  v29 = UIAccessibilityConvertFrameToScreenCoordinates(v28, _axARView);
  v18 = v29.origin.x;
  v19 = v29.origin.y;
  v20 = v29.size.width;
  v21 = v29.size.height;

  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (BOOL)_axIsAccessibilityElementForEntityController:(id)controller
{
  v3 = [(ASVPreviewViewControllerInternalAccessibility *)self _axEntityElementsForEntityController:controller];
  v4 = [v3 count] == 0;

  return v4;
}

- (id)_axCreateAssetElementForEntityController:(id)controller
{
  controllerCopy = controller;
  v5 = [AXEntityControllerElement alloc];
  _axARView = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  v7 = [(AXEntityControllerElement *)v5 initWithAccessibilityContainer:_axARView entityController:controllerCopy previewViewController:self];

  objc_initWeak(&location, self);
  objc_initWeak(&from, controllerCopy);
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 3221225472;
  v18[2] = __90__ASVPreviewViewControllerInternalAccessibility__axCreateAssetElementForEntityController___block_invoke;
  v18[3] = &unk_29F2A1D78;
  objc_copyWeak(&v19, &location);
  objc_copyWeak(&v20, &from);
  [(AXEntityControllerElement *)v7 _setAccessibilityLabelBlock:v18];
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __90__ASVPreviewViewControllerInternalAccessibility__axCreateAssetElementForEntityController___block_invoke_2;
  v15[3] = &unk_29F2A1D00;
  objc_copyWeak(&v16, &location);
  objc_copyWeak(&v17, &from);
  [(AXEntityControllerElement *)v7 _setAccessibilityFrameBlock:v15];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __90__ASVPreviewViewControllerInternalAccessibility__axCreateAssetElementForEntityController___block_invoke_3;
  v12[3] = &unk_29F2A1DA0;
  objc_copyWeak(&v13, &location);
  objc_copyWeak(&v14, &from);
  [(AXEntityControllerElement *)v7 _setIsAccessibilityElementBlock:v12];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __90__ASVPreviewViewControllerInternalAccessibility__axCreateAssetElementForEntityController___block_invoke_4;
  v9[3] = &unk_29F2A1DC8;
  objc_copyWeak(&v10, &location);
  objc_copyWeak(&v11, &from);
  [(AXEntityControllerElement *)v7 _setAccessibilityElementsBlock:v9];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v7;
}

id __90__ASVPreviewViewControllerInternalAccessibility__axCreateAssetElementForEntityController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained _axLabelForEntityController:v3];

  return v4;
}

double __90__ASVPreviewViewControllerInternalAccessibility__axCreateAssetElementForEntityController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _axFrameForEntityController:v3];
  v5 = v4;

  return v5;
}

uint64_t __90__ASVPreviewViewControllerInternalAccessibility__axCreateAssetElementForEntityController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained _axIsAccessibilityElementForEntityController:v3];

  return v4;
}

id __90__ASVPreviewViewControllerInternalAccessibility__axCreateAssetElementForEntityController___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained _axEntityElementsForEntityController:v3];

  return v4;
}

- (BOOL)_axActivateForEntityController:(id)controller deltaYaw:(float)yaw deltaPitch:(float)pitch
{
  controllerCopy = controller;
  v16 = MEMORY[0x29EDCA5F8];
  v17 = 3221225472;
  v18 = __100__ASVPreviewViewControllerInternalAccessibility__axActivateForEntityController_deltaYaw_deltaPitch___block_invoke;
  v19 = &unk_29F2A1DF0;
  v9 = controllerCopy;
  v20 = v9;
  yawCopy = yaw;
  pitchCopy = pitch;
  AXPerformSafeBlock();
  if (yaw == 0.0)
  {
    [(ASVPreviewViewControllerInternalAccessibility *)self _axDescriptionForCurrentPitchForEntityController:v9];
  }

  else
  {
    [(ASVPreviewViewControllerInternalAccessibility *)self _axDescriptionForCurrentRotationForEntityController:v9];
  }
  v10 = ;
  v11 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __100__ASVPreviewViewControllerInternalAccessibility__axActivateForEntityController_deltaYaw_deltaPitch___block_invoke_2;
  block[3] = &unk_29F2A1D28;
  v15 = v10;
  v12 = v10;
  dispatch_after(v11, MEMORY[0x29EDCA578], block);

  return 1;
}

uint64_t __100__ASVPreviewViewControllerInternalAccessibility__axActivateForEntityController_deltaYaw_deltaPitch___block_invoke(uint64_t a1, double a2, double a3)
{
  LODWORD(a2) = *(a1 + 40);
  LODWORD(a3) = *(a1 + 44);
  return [*(a1 + 32) rotateByDeltaYaw:a2 deltaPitch:a3];
}

- (id)_axControlForRotationWithDeltaYaw:(float)yaw deltaPitch:(float)pitch nameFormat:(id)format hintFormat:(id)hintFormat shouldUseArrows:(BOOL)arrows entityController:(id)controller
{
  arrowsCopy = arrows;
  formatCopy = format;
  hintFormatCopy = hintFormat;
  controllerCopy = controller;
  v17 = objc_alloc(MEMORY[0x29EDC78F8]);
  _axARView = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  v19 = [v17 initWithAccessibilityContainer:_axARView];

  [(ASVPreviewViewControllerInternalAccessibility *)self _axAnnotateAsControl:v19];
  v20 = *(MEMORY[0x29EDB90E0] + 16);
  v49 = *MEMORY[0x29EDB90E0];
  v50 = v20;
  if (yaw == 0.0)
  {
    v46 = 0;
    if (pitch < 0.0)
    {
      v21 = 1;
    }

    else
    {
      v21 = 4;
    }

    v22 = &v46;
    v23 = &v46;
    goto LABEL_11;
  }

  if (arrowsCopy)
  {
    v48 = 0;
    if (yaw >= 0.0)
    {
      v21 = 8;
    }

    else
    {
      v21 = 2;
    }

    v22 = &v48;
    v23 = &v48;
LABEL_11:
    [(ASVPreviewViewControllerInternalAccessibility *)self _axGetAccessibilityFrame:&v49 path:v23 forArrowTowardsEdge:v21 isDoubleArrow:0];
    goto LABEL_13;
  }

  v47 = 0;
  v22 = &v47;
  [(ASVPreviewViewControllerInternalAccessibility *)self _axGetAccessibilityFrame:&v49 path:&v47 forRotationControlClockwise:yaw < 0.0];
LABEL_13:
  v24 = *v22;
  [v19 setAccessibilityFrame:{v49, v50}];
  [v19 setAccessibilityPath:v24];
  objc_initWeak(&location, self);
  objc_initWeak(&from, controllerCopy);
  v40[0] = MEMORY[0x29EDCA5F8];
  v40[1] = 3221225472;
  v40[2] = __149__ASVPreviewViewControllerInternalAccessibility__axControlForRotationWithDeltaYaw_deltaPitch_nameFormat_hintFormat_shouldUseArrows_entityController___block_invoke;
  v40[3] = &unk_29F2A1E18;
  v25 = formatCopy;
  v41 = v25;
  objc_copyWeak(&v42, &location);
  objc_copyWeak(&v43, &from);
  [v19 _setAccessibilityLabelBlock:v40];
  v36[0] = MEMORY[0x29EDCA5F8];
  v36[1] = 3221225472;
  v36[2] = __149__ASVPreviewViewControllerInternalAccessibility__axControlForRotationWithDeltaYaw_deltaPitch_nameFormat_hintFormat_shouldUseArrows_entityController___block_invoke_2;
  v36[3] = &unk_29F2A1E18;
  v26 = hintFormatCopy;
  v37 = v26;
  objc_copyWeak(&v38, &location);
  objc_copyWeak(&v39, &from);
  [v19 _setAccessibilityHintBlock:v36];
  [v19 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  v28 = MEMORY[0x29EDCA5F8];
  v29 = 3221225472;
  v30 = __149__ASVPreviewViewControllerInternalAccessibility__axControlForRotationWithDeltaYaw_deltaPitch_nameFormat_hintFormat_shouldUseArrows_entityController___block_invoke_3;
  v31 = &unk_29F2A1E40;
  objc_copyWeak(&v32, &location);
  objc_copyWeak(&v33, &from);
  yawCopy = yaw;
  pitchCopy = pitch;
  [v19 _setAccessibilityActivateBlock:&v28];
  [v19 _accessibilitySetScannerActivateBehavior:{1, v28, v29, v30, v31}];
  objc_destroyWeak(&v33);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&v39);
  objc_destroyWeak(&v38);

  objc_destroyWeak(&v43);
  objc_destroyWeak(&v42);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v19;
}

id __149__ASVPreviewViewControllerInternalAccessibility__axControlForRotationWithDeltaYaw_deltaPitch_nameFormat_hintFormat_shouldUseArrows_entityController___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x29EDBA0F8];
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained _axNameForEntityController:v5];
  v7 = [v2 localizedStringWithFormat:v3, v6];

  return v7;
}

id __149__ASVPreviewViewControllerInternalAccessibility__axControlForRotationWithDeltaYaw_deltaPitch_nameFormat_hintFormat_shouldUseArrows_entityController___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x29EDBA0F8];
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained _axNameForEntityController:v5];
  v7 = [v2 localizedStringWithFormat:v3, v6];

  return v7;
}

uint64_t __149__ASVPreviewViewControllerInternalAccessibility__axControlForRotationWithDeltaYaw_deltaPitch_nameFormat_hintFormat_shouldUseArrows_entityController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  LODWORD(v4) = *(a1 + 48);
  LODWORD(v5) = *(a1 + 52);
  v6 = [WeakRetained _axActivateForEntityController:v3 deltaYaw:v4 deltaPitch:v5];

  return v6;
}

- (id)_axUnifiedGestureRecognizerForEntityController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  v4 = [controllerCopy safeValueForKey:@"worldGestureRecognizer"];
  v5 = __UIAccessibilityCastAsClass();

  return v5;
}

- (void)_axAdjustScaleByMultiplier:(float)multiplier entityController:(id)controller
{
  controllerCopy = controller;
  [(ASVPreviewViewControllerInternalAccessibility *)self _axAssetScaleForEntityController:controllerCopy];
  [(ASVPreviewViewControllerInternalAccessibility *)self _axUnifiedGestureRecognizerForEntityController:controllerCopy];
  v9 = v8 = controllerCopy;
  v6 = v9;
  v7 = controllerCopy;
  AXPerformSafeBlock();
}

uint64_t __93__ASVPreviewViewControllerInternalAccessibility__axAdjustScaleByMultiplier_entityController___block_invoke(uint64_t a1)
{
  [*(a1 + 32) unifiedGestureRecognizerBeganScaling:*(a1 + 40)];
  LODWORD(v2) = *(a1 + 48);
  [*(a1 + 32) unifiedGestureRecognizer:*(a1 + 40) scaledAssetToScale:v2];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 unifiedGestureRecognizerEndedScaling:v4];
}

- (void)_axResetToInitialScaleForEntityAction:(id)action
{
  entityController = [action entityController];
  v3 = entityController;
  AXPerformSafeBlock();
}

void __87__ASVPreviewViewControllerInternalAccessibility__axResetToInitialScaleForEntityAction___block_invoke(uint64_t a1)
{
  [*(a1 + 32) assetScreenPosition];
  v3 = v2;
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) _axUnifiedGestureRecognizerForEntityController:*(a1 + 32)];
  [v4 unifiedGestureRecognizer:v5 doubleTappedAtScreenPoint:1 onAsset:v3];
}

- (id)_axControlForScalingForEntityController:(id)controller
{
  v57[1] = *MEMORY[0x29EDCA608];
  val = controller;
  v4 = objc_alloc(MEMORY[0x29EDC78F8]);
  _axARView = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  v6 = [v4 initWithAccessibilityContainer:_axARView];

  [(ASVPreviewViewControllerInternalAccessibility *)self _axAnnotateAsControl:v6];
  [(ASVPreviewViewControllerInternalAccessibility *)self _axBoundsForControls];
  x = v59.origin.x;
  y = v59.origin.y;
  width = v59.size.width;
  height = v59.size.height;
  MaxX = CGRectGetMaxX(v59);
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  MaxY = CGRectGetMaxY(v60);
  view = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  v13 = MaxY + -100.0;
  if ([(UIView *)view effectiveUserInterfaceLayoutDirection]== UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v61.origin.x = x;
    v61.origin.y = y;
    v61.size.width = width;
    v61.size.height = height;
    MinX = CGRectGetMinX(v61);
  }

  else
  {
    MinX = MaxX + -100.0;
  }

  v16 = MEMORY[0x29EDC7948];
  v62.origin.x = MinX + 25.0;
  v15 = v62.origin.x;
  v62.origin.y = v13;
  v62.size.width = 50.0;
  v62.size.height = 100.0;
  v17 = CGRectGetMinX(v62);
  v63.origin.x = v15;
  v63.origin.y = v13;
  v63.size.width = 50.0;
  v63.size.height = 100.0;
  v18 = [v16 bezierPathWithOvalInRect:{v17, CGRectGetMinY(v63), 50.0, 50.0}];
  v64.origin.x = v15;
  v64.origin.y = v13;
  v64.size.width = 50.0;
  v64.size.height = 100.0;
  v19 = CGRectGetMinX(v64);
  v65.origin.x = v15;
  v65.origin.y = v13;
  v65.size.width = 50.0;
  v65.size.height = 100.0;
  v20 = v19 + (CGRectGetWidth(v65) + -10.0) * 0.5;
  v66.origin.x = v15;
  v66.origin.y = v13;
  v66.size.width = 50.0;
  v66.size.height = 100.0;
  v21 = CGRectGetMinX(v66);
  v67.origin.x = v15;
  v67.origin.y = v13;
  v67.size.width = 50.0;
  v67.size.height = 100.0;
  v22 = v21 + (CGRectGetWidth(v67) + 10.0) * 0.5;
  v68.origin.x = v15;
  v68.origin.y = v13;
  v68.size.width = 50.0;
  v68.size.height = 100.0;
  v23 = CGRectGetMinY(v68) + 50.0;
  v69.origin.x = v15;
  v69.origin.y = v13;
  v69.size.width = 50.0;
  v69.size.height = 100.0;
  v24 = CGRectGetMaxY(v69);
  [(UIBezierPath *)v18 moveToPoint:v20, v23];
  [(UIBezierPath *)v18 addLineToPoint:v22, v23];
  [(UIBezierPath *)v18 addLineToPoint:v22, v24];
  [(UIBezierPath *)v18 addLineToPoint:v20, v24];
  [(UIBezierPath *)v18 closePath];
  memset(&v56, 0, sizeof(v56));
  v70.origin.x = v15;
  v70.origin.y = v13;
  v70.size.width = 50.0;
  v70.size.height = 100.0;
  MidX = CGRectGetMidX(v70);
  v71.origin.x = v15;
  v71.origin.y = v13;
  v71.size.width = 50.0;
  v71.size.height = 100.0;
  MidY = CGRectGetMidY(v71);
  CGAffineTransformMakeTranslation(&v56, MidX, MidY);
  v54 = v56;
  CGAffineTransformRotate(&v55, &v54, -0.785398163);
  v56 = v55;
  v72.origin.x = v15;
  v72.origin.y = v13;
  v72.size.width = 50.0;
  v72.size.height = 100.0;
  v27 = CGRectGetMidX(v72);
  v73.origin.x = v15;
  v73.origin.y = v13;
  v73.size.width = 50.0;
  v73.size.height = 100.0;
  v28 = CGRectGetMidY(v73);
  v54 = v56;
  CGAffineTransformTranslate(&v55, &v54, -v27, -v28);
  v56 = v55;
  [(UIBezierPath *)v18 applyTransform:&v55];
  v29 = UIAccessibilityConvertPathToScreenCoordinates(v18, view);
  [v6 setAccessibilityPath:v29];

  accessibilityPath = [v6 accessibilityPath];
  v31 = accessibilityPath;
  PathBoundingBox = CGPathGetPathBoundingBox([accessibilityPath CGPath]);
  [v6 setAccessibilityFrame:{PathBoundingBox.origin.x, PathBoundingBox.origin.y, PathBoundingBox.size.width, PathBoundingBox.size.height}];

  objc_initWeak(&v55, self);
  objc_initWeak(&v54, val);
  v51[0] = MEMORY[0x29EDCA5F8];
  v51[1] = 3221225472;
  v51[2] = __89__ASVPreviewViewControllerInternalAccessibility__axControlForScalingForEntityController___block_invoke;
  v51[3] = &unk_29F2A1D78;
  objc_copyWeak(&v52, &v55);
  objc_copyWeak(&v53, &v54);
  [v6 _setAccessibilityLabelBlock:v51];
  v48[0] = MEMORY[0x29EDCA5F8];
  v48[1] = 3221225472;
  v48[2] = __89__ASVPreviewViewControllerInternalAccessibility__axControlForScalingForEntityController___block_invoke_2;
  v48[3] = &unk_29F2A1D78;
  objc_copyWeak(&v49, &v55);
  objc_copyWeak(&v50, &v54);
  [v6 _setAccessibilityHintBlock:v48];
  [v6 setAccessibilityTraits:*MEMORY[0x29EDC7F60]];
  v45[0] = MEMORY[0x29EDCA5F8];
  v45[1] = 3221225472;
  v45[2] = __89__ASVPreviewViewControllerInternalAccessibility__axControlForScalingForEntityController___block_invoke_3;
  v45[3] = &unk_29F2A1EB8;
  objc_copyWeak(&v46, &v55);
  objc_copyWeak(&v47, &v54);
  [v6 _setAccessibilityIncrementBlock:v45];
  v42[0] = MEMORY[0x29EDCA5F8];
  v42[1] = 3221225472;
  v42[2] = __89__ASVPreviewViewControllerInternalAccessibility__axControlForScalingForEntityController___block_invoke_4;
  v42[3] = &unk_29F2A1EB8;
  objc_copyWeak(&v43, &v55);
  objc_copyWeak(&v44, &v54);
  [v6 _setAccessibilityDecrementBlock:v42];
  v39[0] = MEMORY[0x29EDCA5F8];
  v39[1] = 3221225472;
  v39[2] = __89__ASVPreviewViewControllerInternalAccessibility__axControlForScalingForEntityController___block_invoke_5;
  v39[3] = &unk_29F2A1D78;
  objc_copyWeak(&v40, &v55);
  objc_copyWeak(&v41, &v54);
  [v6 _setAccessibilityValueBlock:v39];
  v32 = [AXEntityControllerAction alloc];
  v33 = accessibilityLocalizedString(@"SCALING_CONTROL_RESET");
  v34 = [(AXEntityControllerAction *)v32 initWithName:v33 target:self selector:sel__axResetToInitialScaleForEntityAction_];

  [(AXEntityControllerAction *)v34 setEntityController:val];
  v57[0] = v34;
  v35 = [MEMORY[0x29EDB8D80] arrayWithObjects:v57 count:1];
  [v6 setAccessibilityCustomActions:v35];

  objc_destroyWeak(&v41);
  objc_destroyWeak(&v40);
  objc_destroyWeak(&v44);
  objc_destroyWeak(&v43);
  objc_destroyWeak(&v47);
  objc_destroyWeak(&v46);
  objc_destroyWeak(&v50);
  objc_destroyWeak(&v49);
  objc_destroyWeak(&v53);
  objc_destroyWeak(&v52);
  objc_destroyWeak(&v54);
  objc_destroyWeak(&v55);

  return v6;
}

id __89__ASVPreviewViewControllerInternalAccessibility__axControlForScalingForEntityController___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x29EDBA0F8];
  v3 = accessibilityLocalizedString(@"SCALING_CONTROL");
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained _axNameForEntityController:v5];
  v7 = [v2 localizedStringWithFormat:v3, v6];

  return v7;
}

id __89__ASVPreviewViewControllerInternalAccessibility__axControlForScalingForEntityController___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x29EDBA0F8];
  v3 = accessibilityLocalizedString(@"SCALING_CONTROL_HINT");
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained _axNameForEntityController:v5];
  v7 = [v2 localizedStringWithFormat:v3, v6];

  return v7;
}

void __89__ASVPreviewViewControllerInternalAccessibility__axControlForScalingForEntityController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  LODWORD(v3) = 1068149419;
  [WeakRetained _axAdjustScaleByMultiplier:v2 entityController:v3];
}

void __89__ASVPreviewViewControllerInternalAccessibility__axControlForScalingForEntityController___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  LODWORD(v3) = 0.75;
  [WeakRetained _axAdjustScaleByMultiplier:v2 entityController:v3];
}

id __89__ASVPreviewViewControllerInternalAccessibility__axControlForScalingForEntityController___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _axAssetScaleForAnnouncementsForEntityController:v3];
  v4 = AXFormatFloatWithPercentage();

  return v4;
}

- (BOOL)_axTranslateForLevitation:(BOOL)levitation delta:(id)delta entityController:
{
  v5 = v4;
  levitationCopy = levitation;
  deltaCopy = delta;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v42[7] = MEMORY[0x29EDCA5F8];
  v42[8] = 3221225472;
  v42[9] = __98__ASVPreviewViewControllerInternalAccessibility__axTranslateForLevitation_delta_entityController___block_invoke;
  v42[10] = &unk_29F2A1EE0;
  v42[12] = &v43;
  v9 = deltaCopy;
  v42[11] = v9;
  AXPerformSafeBlock();
  v10 = v44[3];

  _Block_object_dispose(&v43, 8);
  [(ASVPreviewViewControllerInternalAccessibility *)self _axLevitationHeightForEntityController:v9];
  v12 = v11;
  LOBYTE(v43) = 0;
  objc_opt_class();
  v13 = [v9 safeValueForKey:@"worldGestureRecognizer"];
  v14 = __UIAccessibilityCastAsClass();

  if (v43 == 1)
  {
    abort();
  }

  v15 = vadd_f32(v10, v5);
  if (levitationCopy)
  {
    v16 = v42;
    v42[0] = MEMORY[0x29EDCA5F8];
    v42[1] = 3221225472;
    v17 = __98__ASVPreviewViewControllerInternalAccessibility__axTranslateForLevitation_delta_entityController___block_invoke_2;
  }

  else
  {
    v16 = v41;
    v41[0] = MEMORY[0x29EDCA5F8];
    v41[1] = 3221225472;
    v17 = __98__ASVPreviewViewControllerInternalAccessibility__axTranslateForLevitation_delta_entityController___block_invoke_3;
  }

  v16[2] = v17;
  v16[3] = &unk_29F2A1F08;
  v18 = v9;
  v16[4] = v18;
  v19 = v14;
  v16[5] = v19;
  v16[6] = v15;
  AXPerformSafeBlock();

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v35 = MEMORY[0x29EDCA5F8];
  v36 = 3221225472;
  v37 = __98__ASVPreviewViewControllerInternalAccessibility__axTranslateForLevitation_delta_entityController___block_invoke_4;
  v38 = &unk_29F2A1EE0;
  v40 = &v43;
  v20 = v18;
  v39 = v20;
  AXPerformSafeBlock();
  v21 = v44[3];

  _Block_object_dispose(&v43, 8);
  v22 = vmvn_s8(vceq_f32(v10, v21));
  if ((v22.i32[0] | v22.i32[1]))
  {
    if (!levitationCopy)
    {
      v32 = [(ASVPreviewViewControllerInternalAccessibility *)self _axDescriptionForCurrentPositionForEntityController:v20];
      goto LABEL_16;
    }

    [(ASVPreviewViewControllerInternalAccessibility *)self _axLevitationHeightForEntityController:v20];
    if (v12 <= 0.0 == v23 > 0.0)
    {
      if (v23 <= 0.0)
      {
        v24 = @"NOT_FLOATING";
      }

      else
      {
        v24 = @"FLOATING";
      }

      v32 = accessibilityLocalizedString(v24);
LABEL_16:
      v28 = v32;
      if (!v32)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v25 = MEMORY[0x29EDBA0F8];
    v26 = accessibilityLocalizedString(@"UNABLE_TO_MOVE");
    v27 = [(ASVPreviewViewControllerInternalAccessibility *)self _axNameForEntityController:v20];
    v28 = [v25 localizedStringWithFormat:v26, v27];

    if (v28)
    {
LABEL_11:
      v29 = dispatch_time(0, 100000000);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = __98__ASVPreviewViewControllerInternalAccessibility__axTranslateForLevitation_delta_entityController___block_invoke_5;
      block[3] = &unk_29F2A1D28;
      v34 = v28;
      v30 = v28;
      dispatch_after(v29, MEMORY[0x29EDCA578], block);
    }
  }

LABEL_12:

  return 1;
}

void *__98__ASVPreviewViewControllerInternalAccessibility__axTranslateForLevitation_delta_entityController___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) assetScreenPosition];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

void *__98__ASVPreviewViewControllerInternalAccessibility__axTranslateForLevitation_delta_entityController___block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) assetScreenPosition];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (id)_axControlForTranslationForLevitation:(BOOL)levitation delta:(id)delta nameFormat:(id)format entityController:
{
  v22 = v5;
  levitationCopy = levitation;
  deltaCopy = delta;
  formatCopy = format;
  v11 = objc_alloc(MEMORY[0x29EDC78F8]);
  _axARView = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  v13 = [v11 initWithAccessibilityContainer:_axARView];

  [(ASVPreviewViewControllerInternalAccessibility *)self _axAnnotateAsControl:v13];
  v14 = *(MEMORY[0x29EDB90E0] + 16);
  v34 = *MEMORY[0x29EDB90E0];
  v35 = v14;
  v15 = *&v22;
  if (*&v22 >= 0.0)
  {
    if (*&v22 <= 0.0)
    {
      HIDWORD(v15) = HIDWORD(v22);
      LODWORD(v15) = HIDWORD(v22);
      if (*(&v22 + 1) >= 0.0)
      {
        if (*(&v22 + 1) <= 0.0)
        {
          v20 = *&v22;
          v21 = *(&v22 + 1);
          _AXAssert();
        }

        v16 = 4;
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v16 = 8;
    }
  }

  else
  {
    v16 = 2;
  }

  v33 = 0;
  [(ASVPreviewViewControllerInternalAccessibility *)self _axGetAccessibilityFrame:&v34 path:&v33 forArrowTowardsEdge:v16 isDoubleArrow:levitationCopy, v15, *&v20, *&v21];
  v17 = v33;
  [v13 setAccessibilityFrame:{v34, v35}];
  [v13 setAccessibilityPath:v17];
  objc_initWeak(&location, self);
  objc_initWeak(&from, formatCopy);
  v27[0] = MEMORY[0x29EDCA5F8];
  v27[1] = 3221225472;
  v27[2] = __121__ASVPreviewViewControllerInternalAccessibility__axControlForTranslationForLevitation_delta_nameFormat_entityController___block_invoke;
  v27[3] = &unk_29F2A1E18;
  v18 = deltaCopy;
  v28 = v18;
  objc_copyWeak(&v29, &location);
  objc_copyWeak(&v30, &from);
  [v13 _setAccessibilityLabelBlock:v27];
  [v13 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  v23[0] = MEMORY[0x29EDCA5F8];
  v23[1] = 3221225472;
  v23[2] = __121__ASVPreviewViewControllerInternalAccessibility__axControlForTranslationForLevitation_delta_nameFormat_entityController___block_invoke_2;
  v23[3] = &unk_29F2A1F30;
  objc_copyWeak(&v24, &location);
  v26 = levitationCopy;
  v25[1] = v22;
  objc_copyWeak(v25, &from);
  [v13 _setAccessibilityActivateBlock:v23];
  [v13 _accessibilitySetScannerActivateBehavior:1];
  objc_destroyWeak(v25);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v29);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v13;
}

id __121__ASVPreviewViewControllerInternalAccessibility__axControlForTranslationForLevitation_delta_nameFormat_entityController___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x29EDBA0F8];
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained _axNameForEntityController:v5];
  v7 = [v2 localizedStringWithFormat:v3, v6];

  return v7;
}

uint64_t __121__ASVPreviewViewControllerInternalAccessibility__axControlForTranslationForLevitation_delta_nameFormat_entityController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 56);
  v4 = *(a1 + 48);
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained _axTranslateForLevitation:v3 delta:v5 entityController:v4];

  return v6;
}

- (id)_axDescriptionForCurrentPositionForEntityController:(id)controller
{
  controllerCopy = controller;
  _axARView = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  [_axARView bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(ASVPreviewViewControllerInternalAccessibility *)self _axBoundingRectForEntityController:controllerCopy];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v41.origin.x = v15;
  v41.origin.y = v17;
  v41.size.width = v19;
  v41.size.height = v21;
  v49.origin.x = v7;
  v49.origin.y = v9;
  v49.size.width = v11;
  v49.size.height = v13;
  v42 = CGRectIntersection(v41, v49);
  x = v42.origin.x;
  y = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;
  if (CGRectIsNull(v42))
  {
    v26 = 0;
    goto LABEL_18;
  }

  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  MidX = CGRectGetMidX(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  MidY = CGRectGetMidY(v44);
  v45.origin.x = v7;
  v45.origin.y = v9;
  v45.size.width = v11;
  v45.size.height = v13;
  v28 = CGRectGetWidth(v45) * 0.333333333;
  v46.origin.x = v7;
  v46.origin.y = v9;
  v46.size.width = v11;
  v46.size.height = v13;
  v29 = CGRectGetWidth(v46);
  v47.origin.x = v7;
  v47.origin.y = v9;
  v47.size.width = v11;
  v47.size.height = v13;
  v30 = CGRectGetHeight(v47) * 0.333333333;
  v48.origin.x = v7;
  v48.origin.y = v9;
  v48.size.width = v11;
  v48.size.height = v13;
  v31 = CGRectGetHeight(v48) * 0.666666667;
  if (MidX >= v28)
  {
    if (MidX >= v29 * 0.666666667)
    {
      if (MidY < v30)
      {
        v32 = @"TOP_RIGHT";
        goto LABEL_17;
      }

      v33 = @"BOTTOM_RIGHT";
      v34 = @"MIDDLE_RIGHT";
    }

    else
    {
      if (MidY < v30)
      {
        v32 = @"TOP_CENTER";
        goto LABEL_17;
      }

      v33 = @"BOTTOM_CENTER";
      v34 = @"MIDDLE_CENTER";
    }

LABEL_14:
    if (MidY >= v31)
    {
      v32 = v33;
    }

    else
    {
      v32 = v34;
    }

    goto LABEL_17;
  }

  if (MidY >= v30)
  {
    v33 = @"BOTTOM_LEFT";
    v34 = @"MIDDLE_LEFT";
    goto LABEL_14;
  }

  v32 = @"TOP_LEFT";
LABEL_17:
  v35 = accessibilityLocalizedString(v32);
  v36 = MEMORY[0x29EDBA0F8];
  v37 = accessibilityLocalizedString(@"POSITIONED_AT_ANNOUNCEMENT");
  v26 = [v36 localizedStringWithFormat:v37, v35];

LABEL_18:

  return v26;
}

- (CGRect)_axBoundingRectForEntityController:(id)controller
{
  controllerCopy = controller;
  v5 = MEMORY[0x29EDB90D8];
  v6 = *MEMORY[0x29EDB90D8];
  v7 = *(MEMORY[0x29EDB90D8] + 8);
  v8 = *(MEMORY[0x29EDB90D8] + 16);
  v9 = *(MEMORY[0x29EDB90D8] + 24);
  _axARView = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  if (_axARView)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x4010000000;
    v25 = "";
    v11 = v5[1];
    v26 = *v5;
    v27 = v11;
    v20 = controllerCopy;
    v21 = _axARView;
    AXPerformSafeBlock();
    if (!CGRectIsNull(v23[1]))
    {
      UIAccessibilityFrameForBounds();
      v6 = v12;
      v7 = v13;
      v8 = v14;
      v9 = v15;
    }

    _Block_object_dispose(&v22, 8);
  }

  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

void *__84__ASVPreviewViewControllerInternalAccessibility__axBoundingRectForEntityController___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) calculateAssetScreenBoundingRectIn:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (CGRect)_axBoundingRectForEntityWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v5 = MEMORY[0x29EDB90D8];
  v6 = *MEMORY[0x29EDB90D8];
  v7 = *(MEMORY[0x29EDB90D8] + 8);
  v8 = *(MEMORY[0x29EDB90D8] + 16);
  v9 = *(MEMORY[0x29EDB90D8] + 24);
  _axARView = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  if (_axARView)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x4010000000;
    v25 = "";
    v11 = v5[1];
    v26 = *v5;
    v27 = v11;
    v20 = wrapperCopy;
    v21 = _axARView;
    AXPerformSafeBlock();
    if (!CGRectIsNull(v23[1]))
    {
      UIAccessibilityFrameForBounds();
      v6 = v12;
      v7 = v13;
      v8 = v14;
      v9 = v15;
    }

    _Block_object_dispose(&v22, 8);
  }

  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

void *__81__ASVPreviewViewControllerInternalAccessibility__axBoundingRectForEntityWrapper___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) calculateScreenBoundingRectIn:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (int64_t)_axEmitterMode
{
  _axARView = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  v3 = [_axARView safeIntegerForKey:@"emitterMode"];

  return v3;
}

- (id)_axEntityElementsForEntityController:(id)controller
{
  v44 = *MEMORY[0x29EDCA608];
  controllerCopy = controller;
  _axARView = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  _axRootEntityController = [(ASVPreviewViewControllerInternalAccessibility *)self _axRootEntityController];

  if (_axRootEntityController == controllerCopy)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    _axEntityControllers = [(ASVPreviewViewControllerInternalAccessibility *)self _axEntityControllers];
    v9 = [_axEntityControllers countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v9)
    {
      v10 = *v40;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v40 != v10)
          {
            objc_enumerationMutation(_axEntityControllers);
          }

          v12 = *(*(&v39 + 1) + 8 * i);
          _axRootEntityController2 = [(ASVPreviewViewControllerInternalAccessibility *)self _axRootEntityController];
          v14 = v12 == _axRootEntityController2;

          if (v14)
          {
            v16 = AXLogAppAccessibility();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
            {
              [ASVPreviewViewControllerInternalAccessibility _axEntityElementsForEntityController:v16];
            }

            goto LABEL_15;
          }

          v15 = [(ASVPreviewViewControllerInternalAccessibility *)self _axEntityWrappersForEntityController:v12];
          [array addObjectsFromArray:v15];
        }

        v9 = [_axEntityControllers countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
    array = [(ASVPreviewViewControllerInternalAccessibility *)self _axEntityWrappersForEntityController:controllerCopy];
  }

  v38 = 0;
  objc_opt_class();
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = 0;
  v25 = MEMORY[0x29EDCA5F8];
  v26 = 3221225472;
  v27 = __86__ASVPreviewViewControllerInternalAccessibility__axEntityElementsForEntityController___block_invoke;
  v28 = &unk_29F2A1CD8;
  v31 = &v32;
  v17 = _axARView;
  v29 = v17;
  v18 = array;
  v30 = v18;
  AXPerformSafeBlock();
  v19 = v33[5];

  _Block_object_dispose(&v32, 8);
  v20 = __UIAccessibilityCastAsClass();

  if (v38 == 1)
  {
    abort();
  }

  v23[0] = MEMORY[0x29EDCA5F8];
  v23[1] = 3221225472;
  v23[2] = __86__ASVPreviewViewControllerInternalAccessibility__axEntityElementsForEntityController___block_invoke_2;
  v23[3] = &unk_29F2A1F80;
  v23[4] = self;
  v24 = v18;
  v21 = v18;
  [v20 enumerateObjectsUsingBlock:v23];

  return v20;
}

uint64_t __86__ASVPreviewViewControllerInternalAccessibility__axEntityElementsForEntityController___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) accessibilityElementsForEntityWrappers:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

void __86__ASVPreviewViewControllerInternalAccessibility__axEntityElementsForEntityController___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v6 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __86__ASVPreviewViewControllerInternalAccessibility__axEntityElementsForEntityController___block_invoke_3;
  v8[3] = &unk_29F2A1F58;
  objc_copyWeak(&v10, &location);
  v7 = v6;
  v9 = v7;
  [v5 _setAccessibilityLabelBlock:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

id __86__ASVPreviewViewControllerInternalAccessibility__axEntityElementsForEntityController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _axNameForEntityWrapper:*(a1 + 32)];
  if (([WeakRetained _axEmitterMode] & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v4 = @"ASSET_IS_NOT_PLACED";
  }

  else
  {
    if (![WeakRetained _axIsOffScreenForEntityWrapper:*(a1 + 32)])
    {
      goto LABEL_6;
    }

    v4 = @"ASSET_IS_OFF_SCREEN";
  }

  v7 = accessibilityLocalizedString(v4);
  v5 = __UIAXStringForVariables();

  v3 = v5;
LABEL_6:

  return v3;
}

- (id)_axObjectModeControlsForEntityController:(id)controller isRTL:(BOOL)l
{
  lCopy = l;
  controllerCopy = controller;
  array = [MEMORY[0x29EDB8DE8] array];
  v8 = [(ASVPreviewViewControllerInternalAccessibility *)self _axCreateAssetElementForEntityController:controllerCopy];
  [array addObject:v8];

  v9 = accessibilityLocalizedString(@"ROTATION_CONTROL_YAW_HINT");
  v10 = accessibilityLocalizedString(@"ROTATION_CONTROL_PITCH_HINT");
  v11 = accessibilityLocalizedString(@"ROTATION_CONTROL_CLOCKWISE");
  LODWORD(v12) = -1090123118;
  v13 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForRotationWithDeltaYaw:v11 deltaPitch:v9 nameFormat:1 hintFormat:controllerCopy shouldUseArrows:v12 entityController:0.0];

  v14 = accessibilityLocalizedString(@"ROTATION_CONTROL_COUNTERCLOCKWISE");
  LODWORD(v15) = 1057360530;
  v16 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForRotationWithDeltaYaw:v14 deltaPitch:v9 nameFormat:1 hintFormat:controllerCopy shouldUseArrows:v15 entityController:0.0];

  if (lCopy)
  {
    v17 = v16;
  }

  else
  {
    v17 = v13;
  }

  if (lCopy)
  {
    v18 = v13;
  }

  else
  {
    v18 = v16;
  }

  [array addObject:v17];
  [array addObject:v18];
  v19 = accessibilityLocalizedString(@"ROTATION_CONTROL_AWAY");
  LODWORD(v20) = -1098511726;
  v21 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForRotationWithDeltaYaw:v19 deltaPitch:v10 nameFormat:1 hintFormat:controllerCopy shouldUseArrows:0.0 entityController:v20];
  [array addObject:v21];

  v22 = accessibilityLocalizedString(@"ROTATION_CONTROL_TOWARD");
  LODWORD(v23) = 1048971922;
  v24 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForRotationWithDeltaYaw:v22 deltaPitch:v10 nameFormat:1 hintFormat:controllerCopy shouldUseArrows:0.0 entityController:v23];
  [array addObject:v24];

  v25 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForScalingForEntityController:controllerCopy];
  [array addObject:v25];

  return array;
}

- (id)_axARModeControlsForEntityController:(id)controller isRTL:(BOOL)l
{
  lCopy = l;
  v41[4] = *MEMORY[0x29EDCA608];
  controllerCopy = controller;
  array = [MEMORY[0x29EDB8DE8] array];
  v7 = [(ASVPreviewViewControllerInternalAccessibility *)self _axCreateAssetElementForEntityController:controllerCopy];
  [array addObject:v7];

  v8 = accessibilityLocalizedString(@"TRANSLATION_CONTROL_LEFT");
  v9 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForTranslationForLevitation:0 delta:v8 nameFormat:controllerCopy entityController:COERCE_DOUBLE(3259498496)];

  v10 = accessibilityLocalizedString(@"TRANSLATION_CONTROL_RIGHT");
  v11 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForTranslationForLevitation:0 delta:v10 nameFormat:controllerCopy entityController:COERCE_DOUBLE(1112014848)];

  v12 = accessibilityLocalizedString(@"TRANSLATION_CONTROL_BACKWARD");
  v13 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForTranslationForLevitation:0 delta:v12 nameFormat:controllerCopy entityController:-2.0615843e11];
  v37 = v13;

  v14 = accessibilityLocalizedString(@"TRANSLATION_CONTROL_FORWARD");
  v15 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForTranslationForLevitation:0 delta:v14 nameFormat:controllerCopy entityController:2.0615843e11];
  v36 = v15;

  v16 = accessibilityLocalizedString(@"TRANSLATION_CONTROL_UP");
  v17 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForTranslationForLevitation:1 delta:v16 nameFormat:controllerCopy entityController:-2.0615843e11];
  v35 = v17;

  v18 = accessibilityLocalizedString(@"TRANSLATION_CONTROL_DOWN");
  v19 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForTranslationForLevitation:1 delta:v18 nameFormat:controllerCopy entityController:2.0615843e11];

  v38 = v11;
  v39 = v9;
  if (lCopy)
  {
    v20 = v11;
  }

  else
  {
    v20 = v9;
  }

  if (lCopy)
  {
    v21 = v9;
  }

  else
  {
    v21 = v11;
  }

  [array addObject:v20];
  [array addObject:v21];
  v41[0] = v13;
  v41[1] = v15;
  v41[2] = v17;
  v41[3] = v19;
  v22 = [MEMORY[0x29EDB8D80] arrayWithObjects:v41 count:4];
  [array addObjectsFromArray:v22];

  v23 = accessibilityLocalizedString(@"ROTATION_CONTROL_YAW_HINT");
  v24 = accessibilityLocalizedString(@"ROTATION_CONTROL_CLOCKWISE");
  LODWORD(v25) = -1090123118;
  v26 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForRotationWithDeltaYaw:v24 deltaPitch:v23 nameFormat:0 hintFormat:controllerCopy shouldUseArrows:v25 entityController:0.0];

  v27 = accessibilityLocalizedString(@"ROTATION_CONTROL_COUNTERCLOCKWISE");
  LODWORD(v28) = 1057360530;
  v29 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForRotationWithDeltaYaw:v27 deltaPitch:v23 nameFormat:0 hintFormat:controllerCopy shouldUseArrows:v28 entityController:0.0];
  v30 = v29;
  if (lCopy)
  {
    v31 = v29;
  }

  else
  {
    v31 = v26;
  }

  if (lCopy)
  {
    v32 = v26;
  }

  else
  {
    v32 = v29;
  }

  [array addObject:v31];
  [array addObject:v32];
  v33 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForScalingForEntityController:controllerCopy];
  [array addObject:v33];

  return array;
}

- (void)_axUpdateARViewAccessibilityElements
{
  v19 = *MEMORY[0x29EDCA608];
  _axARView = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  v4 = _axARView;
  if (_axARView)
  {
    effectiveUserInterfaceLayoutDirection = [_axARView effectiveUserInterfaceLayoutDirection];
    if (([(ASVPreviewViewControllerInternalAccessibility *)self _axEmitterMode]& 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      _axARModeControls = [(ASVPreviewViewControllerInternalAccessibility *)self _axARModeControls];
      if (_axARModeControls)
      {
LABEL_15:
        [v4 setAccessibilityElements:{_axARModeControls, v14}];

        goto LABEL_16;
      }

      _axEntityControllers = [(ASVPreviewViewControllerInternalAccessibility *)self _axEntityControllers];
      _axARModeControls = [MEMORY[0x29EDB8DE8] array];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      _axRootEntityController = _axEntityControllers;
      v9 = [_axRootEntityController countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v15;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v15 != v11)
            {
              objc_enumerationMutation(_axRootEntityController);
            }

            v13 = [(ASVPreviewViewControllerInternalAccessibility *)self _axARModeControlsForEntityController:*(*(&v14 + 1) + 8 * i) isRTL:effectiveUserInterfaceLayoutDirection == 1, v14];
            [_axARModeControls addObjectsFromArray:v13];
          }

          v10 = [_axRootEntityController countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v10);
      }

      [(ASVPreviewViewControllerInternalAccessibility *)self _axSetARModeControls:_axARModeControls];
    }

    else
    {
      _axRootEntityController = [(ASVPreviewViewControllerInternalAccessibility *)self _axRootEntityController];
      _axARModeControls = [(ASVPreviewViewControllerInternalAccessibility *)self _axObjectModeControls];
      if (!_axARModeControls)
      {
        _axARModeControls = [(ASVPreviewViewControllerInternalAccessibility *)self _axObjectModeControlsForEntityController:_axRootEntityController isRTL:effectiveUserInterfaceLayoutDirection == 1];
        [(ASVPreviewViewControllerInternalAccessibility *)self _axSetObjectModeControls:_axARModeControls];
      }
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ASVPreviewViewControllerInternalAccessibility;
  [(ASVPreviewViewControllerInternalAccessibility *)&v4 viewDidAppear:appear];
  [(ASVPreviewViewControllerInternalAccessibility *)self _axToggleVisibilityAnnouncementsIfNeeded];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = ASVPreviewViewControllerInternalAccessibility;
  [(ASVPreviewViewControllerInternalAccessibility *)&v4 viewDidDisappear:disappear];
  [(ASVPreviewViewControllerInternalAccessibility *)self _axToggleVisibilityAnnouncementsIfNeeded];
}

- (void)handleTapAtPointWithPoint:(CGPoint)point
{
  v10.receiver = self;
  v10.super_class = ASVPreviewViewControllerInternalAccessibility;
  [(ASVPreviewViewControllerInternalAccessibility *)&v10 handleTapAtPointWithPoint:point.x, point.y];
  _axControlsViewStack = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlsViewStack];
  [_axControlsViewStack alpha];
  v6 = v5;

  v7 = *MEMORY[0x29EDC7EA8];
  if (v6 == 1.0)
  {
    v8 = @"CONTROLS_SHOWN";
  }

  else
  {
    v8 = @"CONTROLS_HIDDEN";
  }

  v9 = accessibilityLocalizedString(v8);
  UIAccessibilityPostNotification(v7, v9);

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)_axSetOffScreen:(BOOL)screen forEntityWrapper:(id)wrapper
{
  screenCopy = screen;
  v6 = [(ASVPreviewViewControllerInternalAccessibility *)self _axIdentifierForEntityWrapper:wrapper];
  if (v6)
  {
    v9 = v6;
    _axEntityIdentifiersToOffScreenState = [(ASVPreviewViewControllerInternalAccessibility *)self _axEntityIdentifiersToOffScreenState];
    if (!_axEntityIdentifiersToOffScreenState)
    {
      _axEntityIdentifiersToOffScreenState = [MEMORY[0x29EDB8E00] dictionary];
      [(ASVPreviewViewControllerInternalAccessibility *)self _axSetEntityIdentifiersToOffScreenState:_axEntityIdentifiersToOffScreenState];
    }

    v8 = [MEMORY[0x29EDBA070] numberWithBool:screenCopy];
    [_axEntityIdentifiersToOffScreenState setObject:v8 forKeyedSubscript:v9];

    v6 = v9;
  }
}

- (BOOL)_axIsOffScreenForEntityWrapper:(id)wrapper
{
  v4 = [(ASVPreviewViewControllerInternalAccessibility *)self _axIdentifierForEntityWrapper:wrapper];
  if (v4)
  {
    _axEntityIdentifiersToOffScreenState = [(ASVPreviewViewControllerInternalAccessibility *)self _axEntityIdentifiersToOffScreenState];
    v6 = [_axEntityIdentifiersToOffScreenState objectForKeyedSubscript:v4];
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)_axCheckForAppearanceOfObjectsWithTimer:(id)timer
{
  v47 = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  array2 = [MEMORY[0x29EDB8DE8] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [(ASVPreviewViewControllerInternalAccessibility *)self _axEntityControllers];
  v35 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v35)
  {
    v34 = *v42;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v41 + 1) + 8 * i);
        v6 = [(ASVPreviewViewControllerInternalAccessibility *)self _axEntityWrappersForEntityController:v5];
        if ([v6 count])
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v36 = v6;
          v7 = v6;
          v8 = [v7 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (!v8)
          {
            goto LABEL_20;
          }

          v9 = v8;
          v10 = *v38;
          while (1)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v38 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v37 + 1) + 8 * j);
              v13 = [(ASVPreviewViewControllerInternalAccessibility *)self _axIsOffScreenForEntityWrapper:v12];
              if (([v12 safeBoolForKey:@"isEntityActive"] & 1) == 0)
              {
                if (v13)
                {
                  continue;
                }

                IsNull = 1;
LABEL_17:
                [(ASVPreviewViewControllerInternalAccessibility *)self _axSetOffScreen:IsNull forEntityWrapper:v12];
                continue;
              }

              [(ASVPreviewViewControllerInternalAccessibility *)self _axBoundingRectForEntityWrapper:v12];
              IsNull = CGRectIsNull(v48);
              if (v13 != IsNull)
              {
                goto LABEL_17;
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (!v9)
            {
LABEL_20:

              v6 = v36;
              break;
            }
          }
        }

        v15 = [(ASVPreviewViewControllerInternalAccessibility *)self _axIsOffScreenForEntityController:v5];
        [(ASVPreviewViewControllerInternalAccessibility *)self _axBoundingRectForEntityController:v5];
        v16 = CGRectIsNull(v49);
        if (v15 != v16)
        {
          v17 = v16;
          [(ASVPreviewViewControllerInternalAccessibility *)self _axSetOffScreen:v16 forEntityController:v5];
          v18 = [(ASVPreviewViewControllerInternalAccessibility *)self _axNameForEntityController:v5];
          if (v17)
          {
            v19 = array2;
          }

          else
          {
            v19 = array;
          }

          [v19 addObject:v18];
        }
      }

      v35 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v35);
  }

  v20 = array2;
  if (!-[ASVPreviewViewControllerInternalAccessibility _axIsFirstVisibilityAnnouncement](self, "_axIsFirstVisibilityAnnouncement") && ([array count] || objc_msgSend(array2, "count")))
  {
    if ([array2 count])
    {
      v21 = MEMORY[0x29EDBA0F8];
      v22 = accessibilityLocalizedString(@"ASSETS_MOVED_OFF_SCREEN");
      v23 = MEMORY[0x29C2C9B00](array2);
      v29 = [v21 localizedStringWithFormat:v22, v23];
      v30 = @"__AXStringForVariablesSentinel";
      v24 = __UIAXStringForVariables();
    }

    else
    {
      v24 = 0;
    }

    if ([array count])
    {
      v25 = MEMORY[0x29EDBA0F8];
      v26 = accessibilityLocalizedString(@"ASSETS_MOVED_ON_SCREEN");
      v27 = MEMORY[0x29C2C9B00](array);
      v29 = [v25 localizedStringWithFormat:v26, v27];
      v30 = @"__AXStringForVariablesSentinel";
      v28 = __UIAXStringForVariables();

      v24 = v28;
    }

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v24);

    v20 = array2;
  }

  [(ASVPreviewViewControllerInternalAccessibility *)self _axSetIsFirstVisibilityAnnouncement:0, v29, v30];
}

- (void)_axToggleVisibilityAnnouncementsIfNeeded
{
  if (-[ASVPreviewViewControllerInternalAccessibility _axEmitterMode](self, "_axEmitterMode") == 2 && (LOBYTE(location) = 0, objc_opt_class(), __UIAccessibilityCastAsClass(), v3 = objc_claimAutoreleasedReturnValue(), [v3 view], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "window"), v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v3, v5))
  {
    _axTimerForVisibilityAnnouncements = [(ASVPreviewViewControllerInternalAccessibility *)self _axTimerForVisibilityAnnouncements];

    if (!_axTimerForVisibilityAnnouncements)
    {
      [(ASVPreviewViewControllerInternalAccessibility *)self _axSetIsFirstVisibilityAnnouncement:1];
      objc_initWeak(&location, self);
      v7 = MEMORY[0x29EDB8E68];
      v10 = MEMORY[0x29EDCA5F8];
      v11 = 3221225472;
      v12 = __89__ASVPreviewViewControllerInternalAccessibility__axToggleVisibilityAnnouncementsIfNeeded__block_invoke;
      v13 = &unk_29F2A1FA8;
      objc_copyWeak(&v14, &location);
      v8 = [v7 scheduledTimerWithTimeInterval:1 repeats:&v10 block:1.0];
      [(ASVPreviewViewControllerInternalAccessibility *)self _axSetTimerForVisibilityAnnouncements:v8, v10, v11, v12, v13];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    _axTimerForVisibilityAnnouncements2 = [(ASVPreviewViewControllerInternalAccessibility *)self _axTimerForVisibilityAnnouncements];
    [_axTimerForVisibilityAnnouncements2 invalidate];

    [(ASVPreviewViewControllerInternalAccessibility *)self _axSetTimerForVisibilityAnnouncements:0];
  }
}

void __89__ASVPreviewViewControllerInternalAccessibility__axToggleVisibilityAnnouncementsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _axCheckForAppearanceOfObjectsWithTimer:v3];
}

- (void)_axUpdateForOldEmitterMode:(int64_t)mode
{
  _axEmitterMode = [(ASVPreviewViewControllerInternalAccessibility *)self _axEmitterMode];
  if (_axEmitterMode != mode)
  {
    if (mode == 3 && _axEmitterMode == 2)
    {
      v6 = *MEMORY[0x29EDC7EA8];
      v7 = MEMORY[0x29EDBA0F8];
      v8 = accessibilityLocalizedString(@"ASSET_PLACED_IN_WORLD");
      _axRootEntityController = [(ASVPreviewViewControllerInternalAccessibility *)self _axRootEntityController];
      v10 = [(ASVPreviewViewControllerInternalAccessibility *)self _axNameForEntityController:_axRootEntityController];
      v11 = [v7 localizedStringWithFormat:v8, v10];
      UIAccessibilityPostNotification(v6, v11);
    }

    else if (((mode & 0xFFFFFFFFFFFFFFFELL) == 2) != ((_axEmitterMode & 0xFFFFFFFFFFFFFFFELL) == 2))
    {
      [(ASVPreviewViewControllerInternalAccessibility *)self _axUpdateARViewAccessibilityElements];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
    }

    [(ASVPreviewViewControllerInternalAccessibility *)self _axToggleVisibilityAnnouncementsIfNeeded];
  }
}

- (void)updateInterfaceState
{
  _axEmitterMode = [(ASVPreviewViewControllerInternalAccessibility *)self _axEmitterMode];
  v4.receiver = self;
  v4.super_class = ASVPreviewViewControllerInternalAccessibility;
  [(ASVPreviewViewControllerInternalAccessibility *)&v4 updateInterfaceState];
  [(ASVPreviewViewControllerInternalAccessibility *)self _axUpdateForOldEmitterMode:_axEmitterMode];
}

- (void)entityController:(id)controller doubleTappedAt:(CGPoint)at
{
  y = at.y;
  x = at.x;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = ASVPreviewViewControllerInternalAccessibility;
  [(ASVPreviewViewControllerInternalAccessibility *)&v12 entityController:controllerCopy doubleTappedAt:x, y];
  v8 = dispatch_time(0, 500000000);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __81__ASVPreviewViewControllerInternalAccessibility_entityController_doubleTappedAt___block_invoke;
  v10[3] = &unk_29F2A1FD0;
  v10[4] = self;
  v11 = controllerCopy;
  v9 = controllerCopy;
  dispatch_after(v8, MEMORY[0x29EDCA578], v10);
}

void __81__ASVPreviewViewControllerInternalAccessibility_entityController_doubleTappedAt___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x29EDC7EA8];
  v3 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityLocalizedString(@"RESET_SCALE_ANNOUNCEMENT");
  [*(a1 + 32) _axAssetScaleForAnnouncementsForEntityController:*(a1 + 40)];
  v4 = AXFormatFloatWithPercentage();
  v5 = [v3 localizedStringWithFormat:v6, v4];
  UIAccessibilityPostNotification(v2, v5);
}

- (void)accessibilityDidSetUpEntityControllers
{
  v3.receiver = self;
  v3.super_class = ASVPreviewViewControllerInternalAccessibility;
  [(ASVPreviewViewControllerInternalAccessibility *)&v3 accessibilityDidSetUpEntityControllers];
  [(ASVPreviewViewControllerInternalAccessibility *)self _axSetARModeControls:0];
  [(ASVPreviewViewControllerInternalAccessibility *)self _axSetObjectModeControls:0];
  [(ASVPreviewViewControllerInternalAccessibility *)self _axUpdateARViewAccessibilityElements];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end