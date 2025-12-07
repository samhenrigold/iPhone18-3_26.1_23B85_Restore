@interface CRLCanvasGuideController
+ (BOOL)shouldAlignCenters;
+ (BOOL)shouldAlignEdges;
+ (BOOL)shouldAlignToSizingGuides;
+ (BOOL)shouldAlignToSpacingGuides;
+ (BOOL)shouldSnapToGrid;
+ (BOOL)shouldUseHapticFeedbackWhenSnapping;
+ (void)setGuideColor:(id)color;
+ (void)setShouldAlignCenters:(BOOL)centers;
+ (void)setShouldAlignEdges:(BOOL)edges;
+ (void)setShouldAlignToSizingGuides:(BOOL)guides;
+ (void)setShouldAlignToSpacingGuides:(BOOL)guides;
+ (void)setShouldSnapToGrid:(BOOL)grid;
+ (void)setShouldUseHapticFeedbackWhenSnapping:(BOOL)snapping;
- (BOOL)p_guidesAreRelevantForEdge:(int)edge whileDraggingKnobTag:(unint64_t)tag;
- (BOOL)p_sizingGuidesAreRelevantForOrientation:(int)orientation whileDraggingKnobTag:(unint64_t)tag;
- (CGPoint)snapRectToGuides:(CGRect)guides;
- (CGPoint)snapRectToGuides:(CGRect)guides forKnobTag:(unint64_t)tag;
- (CGPoint)snapRectToGuides:(CGRect)guides forKnobTag:(unint64_t)tag snapSize:(BOOL)size;
- (CGPoint)snapRectToGuides:(CGRect)guides forKnobTag:(unint64_t)tag snapSize:(BOOL)size snapWithBackgroundAlignmentProvider:(BOOL)provider isLine:(BOOL)line startPoint:(CGPoint)point endPoint:(CGPoint)endPoint;
- (CGPoint)snapRectToGuides:(CGRect)guides forKnobTag:(unint64_t)tag snapSize:(BOOL)size snapWithBackgroundAlignmentProvider:(BOOL)provider isLine:(BOOL)line startPoint:(CGPoint)point endPoint:(CGPoint)endPoint hasHorizontalFlip:(BOOL)self0 hasVerticalFlip:(BOOL)self1 snapWithGuides:(BOOL)self2;
- (CGRect)i_currentGuidesRect;
- (CGRect)p_alignmentFrameInRootForLayout:(id)layout;
- (CRLCanvasGuideController)initWithInteractiveCanvasController:(id)controller;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (NSArray)decoratorOverlayRenderables;
- (double)p_maxSnapForSnapDistance:(double)distance;
- (double)snapDistanceToUseForGuides;
- (float)p_spacingForCenterOrSpacingGuide:(id)guide;
- (id)p_closestGuideForOffset:(double)offset predicate:(id)predicate inArray:(id)array;
- (id)p_guideClosestToEdge:(int)edge ofFrame:(CGRect)frame;
- (id)p_guidesForEdge:(int)edge ofFrame:(CGRect)frame;
- (id)p_guidesForOffset:(double)offset predicate:(id)predicate inArray:(id)array;
- (id)p_predicateCanBeSnappedToByEdge:(int)edge ofFrame:(CGRect)frame inVisibleUnscaledRect:(CGRect)rect;
- (id)p_predicateCanBeSnappedToInVisibleUnscaledRect:(CGRect)rect;
- (int64_t)p_indexToInsertGuide:(id)guide inSortedArray:(id)array;
- (void)beginAlignmentOperationForRep:(id)rep;
- (void)beginAlignmentOperationForReps:(id)reps preventCenterGuides:(BOOL)guides preventSpacingGuides:(BOOL)spacingGuides preventSizingGuides:(BOOL)sizingGuides;
- (void)endAlignmentOperation;
- (void)hideAlignmentGuides;
- (void)hideSizingGuides;
- (void)p_addAlignmentGuide:(id)guide toSortedArray:(id)array;
- (void)p_addCenterAlignmentGuide:(id)guide toSortedArray:(id)array;
- (void)p_addGuidesForLayout:(id)layout;
- (void)p_addSizingGuide:(id)guide toSortedArray:(id)array;
- (void)p_addSpacingGuide:(id)guide toSortedArray:(id)array;
- (void)p_addSpacingGuidesForFrame:(CGRect)frame spacing:(id)spacing isVerticalSpacing:(BOOL)verticalSpacing;
- (void)p_getOffset:(double *)offset andGuidesArray:(id *)array forEdge:(int)edge ofFrame:(CGRect)frame;
- (void)showGuidesAlignedWithRect:(CGRect)rect forKnobTag:(unint64_t)tag shouldRenderX:(BOOL)x shouldRenderY:(BOOL)y shouldRenderSizeGuides:(BOOL)guides;
- (void)showSizingGuideUIForRep:(id)rep matchingWidth:(BOOL)width matchingHeight:(BOOL)height;
- (void)showSizingGuidesAlignedWithLayout:(id)layout forKnobTag:(unint64_t)tag;
@end

@implementation CRLCanvasGuideController

+ (void)setShouldAlignEdges:(BOOL)edges
{
  edgesCopy = edges;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:edgesCopy forKey:@"CRLDisplayEdgeGuides"];
}

+ (BOOL)shouldAlignEdges
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"CRLDisplayEdgeGuides"];

  return v3;
}

+ (void)setShouldAlignToSpacingGuides:(BOOL)guides
{
  guidesCopy = guides;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:guidesCopy forKey:@"CRLDisplaySpacingGuides"];
}

+ (BOOL)shouldAlignToSpacingGuides
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"CRLDisplaySpacingGuides"];

  return v3;
}

+ (void)setShouldAlignToSizingGuides:(BOOL)guides
{
  guidesCopy = guides;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:guidesCopy forKey:@"CRLDisplaySizingGuides"];
}

+ (void)setGuideColor:(id)color
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_1013141A4();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013141B8();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101314240();
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v3);
  }

  v4 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLCanvasGuideController setGuideColor:]");
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasGuideController.m"];
  [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:289 isFatal:0 description:"iOS and QL do not support setting the guide color"];
}

+ (BOOL)shouldAlignToSizingGuides
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"CRLDisplaySizingGuides"];

  return v3;
}

+ (void)setShouldAlignCenters:(BOOL)centers
{
  centersCopy = centers;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:centersCopy forKey:@"CRLDisplayCenterGuides"];
}

+ (BOOL)shouldAlignCenters
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"CRLDisplayCenterGuides"];

  return v3;
}

+ (void)setShouldSnapToGrid:(BOOL)grid
{
  gridCopy = grid;
  if ([CRLFeatureFlagsHelper isOSFeatureEnabled:10])
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 setBool:gridCopy forKey:@"CRLSnapToGrid"];
  }
}

+ (BOOL)shouldSnapToGrid
{
  v2 = [CRLFeatureFlagsHelper isOSFeatureEnabled:10];
  if (v2)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"CRLSnapToGrid"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (double)snapDistanceToUseForGuides
{
  interactiveCanvasController = [(CRLCanvasGuideController *)self interactiveCanvasController];
  v4 = 7.0;
  if (![interactiveCanvasController isCanvasBackgroundAlignmentSnappingEnabled])
  {
    goto LABEL_4;
  }

  interactiveCanvasController2 = [(CRLCanvasGuideController *)self interactiveCanvasController];
  canvasBackground = [interactiveCanvasController2 canvasBackground];
  alignmentProvider = [canvasBackground alignmentProvider];

  if (alignmentProvider)
  {
    interactiveCanvasController = [(CRLCanvasGuideController *)self interactiveCanvasController];
    canvasBackground2 = [interactiveCanvasController canvasBackground];
    alignmentProvider2 = [canvasBackground2 alignmentProvider];
    [alignmentProvider2 snapDistanceForViewScale:1.0];
    v4 = v10;

LABEL_4:
  }

  return v4;
}

+ (void)setShouldUseHapticFeedbackWhenSnapping:(BOOL)snapping
{
  snappingCopy = snapping;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:snappingCopy forKey:@"CRLUseHapticFeedbackWhenSnapping"];
}

+ (BOOL)shouldUseHapticFeedbackWhenSnapping
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"CRLUseHapticFeedbackWhenSnapping"];

  return v3;
}

- (CRLCanvasGuideController)initWithInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = CRLCanvasGuideController;
  v5 = [(CRLCanvasGuideController *)&v16 init];
  v6 = v5;
  if (v5)
  {
    if (controllerCopy)
    {
      objc_storeWeak(&v5->_icc, controllerCopy);
      v7 = dispatch_queue_create("com.apple.freeform.CRLGuideGeneration", 0);
      guideGenerationAccessQueue = v6->_guideGenerationAccessQueue;
      v6->_guideGenerationAccessQueue = v7;

      v9 = dispatch_semaphore_create(1);
      guideGenerationStateLock = v6->_guideGenerationStateLock;
      v6->_guideGenerationStateLock = v9;

      size = CGRectNull.size;
      v6->_lastIgnoredRectForDisplayingGuides.origin = CGRectNull.origin;
      v6->_lastIgnoredRectForDisplayingGuides.size = size;
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101314268();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101314290();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10131432C();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v12);
      }

      v13 = [NSString stringWithUTF8String:"[CRLCanvasGuideController initWithInteractiveCanvasController:]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasGuideController.m"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:428 isFatal:0 description:"invalid nil value for '%{public}s'", "icc"];

      v6 = 0;
    }
  }

  return v6;
}

- (void)beginAlignmentOperationForRep:(id)rep
{
  repCopy = rep;
  if (!repCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101314354();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101314368();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101314404();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLCanvasGuideController beginAlignmentOperationForRep:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasGuideController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:444 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];
  }

  v8 = [NSSet setWithObject:repCopy];
  [(CRLCanvasGuideController *)self beginAlignmentOperationForReps:v8];
}

- (void)beginAlignmentOperationForReps:(id)reps preventCenterGuides:(BOOL)guides preventSpacingGuides:(BOOL)spacingGuides preventSizingGuides:(BOOL)sizingGuides
{
  repsCopy = reps;
  if (!+[NSThread isMainThread])
  {
    v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131442C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101314440();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013144C8();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013144F0(v9, v8);
    }

    v10 = [NSString stringWithUTF8String:"[CRLCanvasGuideController beginAlignmentOperationForReps:preventCenterGuides:preventSpacingGuides:preventSizingGuides:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasGuideController.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:453 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if (repsCopy && [repsCopy count])
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v12 = repsCopy;
    v13 = [v12 countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v13)
    {
      v14 = *v61;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v61 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v60 + 1) + 8 * i);
          if ([v16 exclusivelyProvidesGuidesWhileAligning])
          {
            v17 = v16;
            goto LABEL_32;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v60 objects:v64 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_32:

    size = CGRectNull.size;
    self->_lastIgnoredRectForDisplayingGuides.origin = CGRectNull.origin;
    self->_lastIgnoredRectForDisplayingGuides.size = size;
    dispatch_semaphore_wait(self->_guideGenerationStateLock, 0xFFFFFFFFFFFFFFFFLL);
    p_guideGenerationState = &self->_guideGenerationState;
    guideGenerationState = self->_guideGenerationState;
    if (guideGenerationState != 3)
    {
      if (guideGenerationState)
      {
        v25 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013145A0();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_1013145C8();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101314658();
        }

        v26 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101314680(v26, v25);
        }

        v27 = [NSString stringWithUTF8String:"[CRLCanvasGuideController beginAlignmentOperationForReps:preventCenterGuides:preventSpacingGuides:preventSizingGuides:]"];
        v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasGuideController.m"];
        [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:475 isFatal:0 description:"Guide state unexpected when begin alignment operation! %lu", *p_guideGenerationState];
      }

      else
      {
        *p_guideGenerationState = 1;
      }
    }

    dispatch_semaphore_signal(self->_guideGenerationStateLock);
    v58[0] = 0;
    v58[1] = v58;
    v58[2] = 0x3032000000;
    v58[3] = sub_100103A3C;
    v58[4] = sub_100103A4C;
    v59 = 0;
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x3032000000;
    v56[3] = sub_100103A3C;
    v56[4] = sub_100103A4C;
    v57 = 0;
    v54[0] = 0;
    v54[1] = v54;
    v54[2] = 0x3032000000;
    v54[3] = sub_100103A3C;
    v54[4] = sub_100103A4C;
    v55 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 1;
    guideGenerationAccessQueue = self->_guideGenerationAccessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100103A54;
    block[3] = &unk_10183CBF8;
    guidesCopy = guides;
    spacingGuidesCopy = spacingGuides;
    sizingGuidesCopy = sizingGuides;
    block[4] = self;
    v43 = v54;
    v41 = v12;
    v44 = &v50;
    v45 = v58;
    v20 = v17;
    v42 = v20;
    v46 = v56;
    dispatch_sync(guideGenerationAccessQueue, block);
    if (*(v51 + 24))
    {
      WeakRetained = objc_loadWeakRetained(&self->_icc);
      [WeakRetained addDecorator:self];

      v31 = self->_guideGenerationAccessQueue;
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100104954;
      v35[3] = &unk_101839FD0;
      v36 = v20;
      selfCopy = self;
      v38 = v58;
      v39 = v56;
      dispatch_async(v31, v35);
    }

    _Block_object_dispose(&v50, 8);
    _Block_object_dispose(v54, 8);

    _Block_object_dispose(v56, 8);
    _Block_object_dispose(v58, 8);
  }

  else
  {
    v18 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101314730();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101314758();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013147E0();
    }

    v19 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101314808(v19, v18);
    }

    v20 = [NSString stringWithUTF8String:"[CRLCanvasGuideController beginAlignmentOperationForReps:preventCenterGuides:preventSpacingGuides:preventSizingGuides:]"];
    v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasGuideController.m"];
    [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:455 isFatal:0 description:"beginning alignment with no reps"];
  }
}

- (CGPoint)snapRectToGuides:(CGRect)guides
{
  [(CRLCanvasGuideController *)self snapRectToGuides:0 forKnobTag:1 snapSize:guides.origin.x, guides.origin.y, guides.size.width, guides.size.height];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)snapRectToGuides:(CGRect)guides forKnobTag:(unint64_t)tag
{
  [(CRLCanvasGuideController *)self snapRectToGuides:tag forKnobTag:1 snapSize:guides.origin.x, guides.origin.y, guides.size.width, guides.size.height];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)snapRectToGuides:(CGRect)guides forKnobTag:(unint64_t)tag snapSize:(BOOL)size
{
  LOBYTE(v7) = 1;
  [(CRLCanvasGuideController *)self snapRectToGuides:tag forKnobTag:size snapSize:1 snapWithBackgroundAlignmentProvider:0 isLine:0 startPoint:0 endPoint:guides.origin.x hasHorizontalFlip:guides.origin.y hasVerticalFlip:guides.size.width snapWithGuides:guides.size.height, CGPointZero.x, CGPointZero.y, CGPointZero.x, CGPointZero.y, v7];
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)snapRectToGuides:(CGRect)guides forKnobTag:(unint64_t)tag snapSize:(BOOL)size snapWithBackgroundAlignmentProvider:(BOOL)provider isLine:(BOOL)line startPoint:(CGPoint)point endPoint:(CGPoint)endPoint
{
  LOBYTE(v11) = 1;
  [(CRLCanvasGuideController *)self snapRectToGuides:tag forKnobTag:size snapSize:provider snapWithBackgroundAlignmentProvider:line isLine:0 startPoint:0 endPoint:guides.origin.x hasHorizontalFlip:guides.origin.y hasVerticalFlip:guides.size.width snapWithGuides:guides.size.height, point.x, point.y, endPoint.x, endPoint.y, v11];
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)snapRectToGuides:(CGRect)guides forKnobTag:(unint64_t)tag snapSize:(BOOL)size snapWithBackgroundAlignmentProvider:(BOOL)provider isLine:(BOOL)line startPoint:(CGPoint)point endPoint:(CGPoint)endPoint hasHorizontalFlip:(BOOL)self0 hasVerticalFlip:(BOOL)self1 snapWithGuides:(BOOL)self2
{
  flipCopy = flip;
  verticalFlipCopy = verticalFlip;
  lineCopy = line;
  providerCopy = provider;
  y = endPoint.y;
  x = endPoint.x;
  v16 = point.y;
  v17 = point.x;
  height = guides.size.height;
  width = guides.size.width;
  v21 = guides.origin.y;
  v22 = guides.origin.x;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101314B4C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101314B60();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101314BE8();
    }

    v24 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v24);
    }

    v25 = [NSString stringWithUTF8String:"[CRLCanvasGuideController snapRectToGuides:forKnobTag:snapSize:snapWithBackgroundAlignmentProvider:isLine:startPoint:endPoint:hasHorizontalFlip:hasVerticalFlip:snapWithGuides:]"];
    v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasGuideController.m"];
    [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:788 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  dispatch_semaphore_wait(self->_guideGenerationStateLock, 0xFFFFFFFFFFFFFFFFLL);
  guideGenerationState = self->_guideGenerationState;
  dispatch_semaphore_signal(self->_guideGenerationStateLock);
  if (guideGenerationState == 2)
  {
    if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101314C10();
      }

      v28 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101314C38(v28, v22, v21, width, height);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101314D48();
      }

      v29 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v29);
      }

      v30 = [NSString stringWithUTF8String:"[CRLCanvasGuideController snapRectToGuides:forKnobTag:snapSize:snapWithBackgroundAlignmentProvider:isLine:startPoint:endPoint:hasHorizontalFlip:hasVerticalFlip:snapWithGuides:]"];
      v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasGuideController.m"];
      v92.origin.x = v22;
      v92.origin.y = v21;
      v92.size.width = width;
      v92.size.height = height;
      v32 = NSStringFromCGRect(v92);
      [CRLAssertionHandler handleFailureInFunction:v30 file:v31 lineNumber:797 isFatal:0 description:"bad rect for snap rect! %@", v32];
    }

    v80 = y;
    v81 = x;
    v84 = v17;
    v85 = height;
    v82 = v16;
    v33 = 7.0;
    if (providerCopy)
    {
      [(CRLCanvasGuideController *)self snapDistanceToUseForGuides];
    }

    [(CRLCanvasGuideController *)self p_maxSnapForSnapDistance:v33];
    v35 = v34;
    WeakRetained = objc_loadWeakRetained(&self->_icc);
    [WeakRetained visibleUnscaledRect];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;

    if (withGuides)
    {
      v45 = objc_alloc_init(CRLBidirectionalGeometricOperator);
      v89[0] = _NSConcreteStackBlock;
      v89[1] = 3221225472;
      v89[2] = sub_100105CB0;
      v89[3] = &unk_10183CCF0;
      v89[5] = v35;
      v89[4] = self;
      v89[6] = tag;
      *&v89[7] = v22;
      *&v89[8] = v21;
      *&v89[9] = width;
      *&v89[10] = v85;
      v89[11] = v38;
      v89[12] = v40;
      v89[13] = v42;
      v89[14] = v44;
      sizeCopy = size;
      [(CRLBidirectionalGeometricOperator *)v45 executeBidirectionalOperation:v89];
      v46 = [(CRLBidirectionalGeometricOperator *)v45 valueForKey:@"CRLCanvasGuideControllerHorizontalSnapOffsetKey" swapped:0];
      [v46 floatValue];
      v48 = v47;
      v49 = [(CRLBidirectionalGeometricOperator *)v45 valueForKey:@"CRLCanvasGuideControllerHorizontalSnapOffsetKey" swapped:1];
      [v49 floatValue];
      v51 = v50;

      v52 = [(CRLBidirectionalGeometricOperator *)v45 valueForKey:@"CRLCanvasGuideControllerDidSnapHorizontalKey" swapped:0];
      bOOLValue = [v52 BOOLValue];

      v54 = [(CRLBidirectionalGeometricOperator *)v45 valueForKey:@"CRLCanvasGuideControllerDidSnapHorizontalKey" swapped:1];
      bOOLValue2 = [v54 BOOLValue];
    }

    else
    {
      bOOLValue2 = 0;
      bOOLValue = 0;
      v48 = CGPointZero.x;
      v51 = CGPointZero.y;
    }

    interactiveCanvasController = [(CRLCanvasGuideController *)self interactiveCanvasController];
    canvasBackground = [interactiveCanvasController canvasBackground];

    alignmentProvider = [canvasBackground alignmentProvider];
    v59 = alignmentProvider;
    if (!providerCopy || !alignmentProvider || (-[CRLCanvasGuideController interactiveCanvasController](self, "interactiveCanvasController"), v60 = objc_claimAutoreleasedReturnValue(), v61 = [v60 isCanvasBackgroundAlignmentSnappingEnabled], v60, !v61))
    {
      self->_didJustSnapInX = bOOLValue;
      self->_didJustSnapInY = bOOLValue2;
LABEL_66:

      goto LABEL_67;
    }

    if (tag == 5 || !tag)
    {
      v63 = flipCopy;
      v62 = verticalFlipCopy;
      if (lineCopy)
      {
        [v59 alignmentPointForPoint:{v84, v82}];
        if (vabdd_f64(v81, v84) <= 0.01)
        {
          v69 = -(width * 0.5);
          if (v82 >= v80)
          {
            v69 = width * 0.5;
          }
        }

        else
        {
          if (vabdd_f64(v80, v82) > 0.01)
          {
            goto LABEL_39;
          }

          v69 = 0.0;
        }

        v66 = sub_10011F31C(v64, v65, v69);
        goto LABEL_51;
      }

LABEL_39:
      [v59 originPointForAligningRect:{v22, v21, width, v85}];
      v84 = v22;
LABEL_51:
      *&self->_didJustSnapInX = 257;
LABEL_52:
      v72 = sub_10011F31C(v66, v67, v84);
      v74 = -v72;
      if (!v63)
      {
        v74 = v72;
      }

      v75 = -v73;
      if (!v62)
      {
        v75 = v73;
      }

      if (bOOLValue && fabs(v48) < fabs(v72) && withGuides)
      {
        self->_didJustSnapInX = 1;
        v74 = v48;
      }

      if (bOOLValue2 && fabs(v51) < fabs(v73) && withGuides)
      {
        self->_didJustSnapInY = 1;
      }

      else
      {
        v51 = v75;
      }

      v48 = v74;
      goto LABEL_66;
    }

    v63 = flipCopy;
    v62 = verticalFlipCopy;
    if (flipCopy && verticalFlipCopy)
    {
      tagCopy = sub_100345B0C(tag);
    }

    else
    {
      tagCopy = tag;
      if (verticalFlipCopy)
      {
        v70 = sub_100346034(tag);
        tagCopy = sub_100345B08(v71, v70);
      }

      else if (flipCopy)
      {
        tagCopy = sub_100346034(tag);
      }
    }

    v78 = sub_100345F44(tagCopy, v22, v21, width, v85);
    v83 = v79;
    v84 = v78;
    [v59 alignmentPointForPoint:?];
    if (tag <= 5)
    {
      if (tag != 2)
      {
        if (tag == 3)
        {
          goto LABEL_51;
        }

        if (tag != 4)
        {
          goto LABEL_52;
        }

LABEL_77:
        *&self->_didJustSnapInX = 1;
        v67 = v83;
        goto LABEL_52;
      }
    }

    else
    {
      if (tag <= 7)
      {
        if (tag != 6)
        {
          goto LABEL_51;
        }

        goto LABEL_77;
      }

      if (tag != 8)
      {
        if (tag != 9)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }
    }

    *&self->_didJustSnapInX = 256;
    v66 = v84;
    goto LABEL_52;
  }

  v48 = CGPointZero.x;
  v51 = CGPointZero.y;
LABEL_67:
  v76 = v48;
  v77 = v51;
  result.y = v77;
  result.x = v76;
  return result;
}

- (void)showGuidesAlignedWithRect:(CGRect)rect forKnobTag:(unint64_t)tag shouldRenderX:(BOOL)x shouldRenderY:(BOOL)y shouldRenderSizeGuides:(BOOL)guides
{
  guidesCopy = guides;
  yCopy = y;
  xCopy = x;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!+[NSThread isMainThread])
  {
    v15 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101314D70();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_101314D84();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101314E0C();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_101314E34(v15);
    }

    v18 = [NSString stringWithUTF8String:"[CRLCanvasGuideController showGuidesAlignedWithRect:forKnobTag:shouldRenderX:shouldRenderY:shouldRenderSizeGuides:]"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasGuideController.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:1140 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  v20 = self->_guideGenerationStateLock;
  dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);

  guideGenerationState = self->_guideGenerationState;
  dispatch_semaphore_signal(self->_guideGenerationStateLock);
  if (guideGenerationState != 2)
  {
    self->_lastIgnoredRectForDisplayingGuides.origin.x = x;
    self->_lastIgnoredRectForDisplayingGuides.origin.y = y;
    self->_lastIgnoredRectForDisplayingGuides.size.width = width;
    self->_lastIgnoredRectForDisplayingGuides.size.height = height;
    self->_lastIgnoredKnobTag = tag;
    self->_lastIgnoredShouldShowSizeGuides = guidesCopy;
    return;
  }

  v22 = +[NSMutableSet set];
  v23 = sub_100345928(tag);
  if (tag && (v23 & 0x3DE) == 0)
  {
    v24 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101314EE0();
    }

    v25 = off_1019EDA68;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_101314F08();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101314F90();
    }

    v26 = off_1019EDA68;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_101314FB8(v24);
    }

    v27 = [NSString stringWithUTF8String:"[CRLCanvasGuideController showGuidesAlignedWithRect:forKnobTag:shouldRenderX:shouldRenderY:shouldRenderSizeGuides:]"];
    v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasGuideController.m"];
    [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:1162 isFatal:0 description:"Attempting to do guide operation for an unsupported knob type"];
  }

  if (xCopy)
  {
    if ([(CRLCanvasGuideController *)self p_guidesAreRelevantForEdge:0 whileDraggingKnobTag:tag])
    {
      height = [(CRLCanvasGuideController *)self p_guidesForEdge:0 ofFrame:x, y, width, height];
      [v22 addObjectsFromArray:height];
    }

    if ([(CRLCanvasGuideController *)self p_guidesAreRelevantForEdge:2 whileDraggingKnobTag:tag])
    {
      height2 = [(CRLCanvasGuideController *)self p_guidesForEdge:2 ofFrame:x, y, width, height];
      [v22 addObjectsFromArray:height2];
    }

    if ([(CRLCanvasGuideController *)self p_guidesAreRelevantForEdge:1 whileDraggingKnobTag:tag])
    {
      height3 = [(CRLCanvasGuideController *)self p_guidesForEdge:1 ofFrame:x, y, width, height];
      [v22 addObjectsFromArray:height3];
    }
  }

  if (yCopy)
  {
    if ([(CRLCanvasGuideController *)self p_guidesAreRelevantForEdge:3 whileDraggingKnobTag:tag])
    {
      height4 = [(CRLCanvasGuideController *)self p_guidesForEdge:3 ofFrame:x, y, width, height];
      [v22 addObjectsFromArray:height4];
    }

    if ([(CRLCanvasGuideController *)self p_guidesAreRelevantForEdge:5 whileDraggingKnobTag:tag])
    {
      height5 = [(CRLCanvasGuideController *)self p_guidesForEdge:5 ofFrame:x, y, width, height];
      [v22 addObjectsFromArray:height5];
    }

    if ([(CRLCanvasGuideController *)self p_guidesAreRelevantForEdge:4 whileDraggingKnobTag:tag])
    {
      height6 = [(CRLCanvasGuideController *)self p_guidesForEdge:4 ofFrame:x, y, width, height];
      [v22 addObjectsFromArray:height6];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_icc);
  [WeakRetained visibleUnscaledRect];
  v93 = v36;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  if (self->_shouldAlignToSpacingGuides)
  {
    if (self->_shouldAlignEdges)
    {
      goto LABEL_67;
    }

    if (xCopy)
    {
      if (tag && (sub_100345928(tag) & 0x92) == 0)
      {
        goto LABEL_47;
      }

      v130.origin.x = x;
      v130.origin.y = y;
      v130.size.width = width;
      v130.size.height = height;
      MinX = CGRectGetMinX(v130);
      v44 = [(CRLCanvasGuideController *)self p_predicateCanBeSnappedToByEdge:0 ofFrame:x inVisibleUnscaledRect:y, width, height, v93, v38, v40, v42];
      v45 = [(CRLCanvasGuideController *)self p_closestGuideForOffset:v44 predicate:self->_spacingGuidesForSnappingX inArray:MinX];

      if (v45)
      {
        [v45 offset];
        if (v46 - MinX == 0.0 || vabdd_f64(v46, MinX) < 0.00999999978)
        {
          [v22 addObject:{v45, *&v93}];
        }
      }

      if (tag)
      {
LABEL_47:
        if ((sub_100345928(tag) & 0x248) == 0)
        {
          if (!yCopy)
          {
            if (self->_shouldAlignCenters)
            {
              goto LABEL_86;
            }

LABEL_70:
            if ((sub_100345928(tag) & 4) != 0 || (sub_100345928(tag) & 0x100) != 0)
            {
LABEL_77:
              if (yCopy && (!tag || (sub_100345928(tag) & 0x10) == 0 && (sub_100345928(tag) & 0x40) == 0))
              {
                v135.origin.x = x;
                v135.origin.y = y;
                v135.size.width = width;
                v135.size.height = height;
                MidY = CGRectGetMidY(v135);
                v64 = [(CRLCanvasGuideController *)self p_predicateCanBeSnappedToByEdge:3 ofFrame:x inVisibleUnscaledRect:y, width, height, v93, v38, v40, v42];
                v65 = [(CRLCanvasGuideController *)self p_closestGuideForOffset:v64 predicate:self->_spacingCenterGuidesForSnappingY inArray:MidY];

                if (v65)
                {
                  [v65 offset];
                  if (v66 - MidY == 0.0 || vabdd_f64(v66, MidY) < 0.00999999978)
                  {
                    [v22 addObject:{v65, *&v93}];
                  }
                }
              }

              goto LABEL_86;
            }

LABEL_72:
            v134.origin.x = x;
            v134.origin.y = y;
            v134.size.width = width;
            v134.size.height = height;
            MidX = CGRectGetMidX(v134);
            v60 = [(CRLCanvasGuideController *)self p_predicateCanBeSnappedToByEdge:1 ofFrame:x inVisibleUnscaledRect:y, width, height, v93, v38, v40, v42];
            v61 = [(CRLCanvasGuideController *)self p_closestGuideForOffset:v60 predicate:self->_spacingCenterGuidesForSnappingX inArray:MidX];

            if (v61)
            {
              [v61 offset];
              if (v62 - MidX == 0.0 || vabdd_f64(v62, MidX) < 0.00999999978)
              {
                [v22 addObject:{v61, *&v93}];
              }
            }

            goto LABEL_77;
          }

          goto LABEL_55;
        }
      }

      v131.origin.x = x;
      v131.origin.y = y;
      v131.size.width = width;
      v131.size.height = height;
      MaxX = CGRectGetMaxX(v131);
      v48 = [(CRLCanvasGuideController *)self p_predicateCanBeSnappedToByEdge:2 ofFrame:x inVisibleUnscaledRect:y, width, height, v93, v38, v40, v42];
      v49 = [(CRLCanvasGuideController *)self p_closestGuideForOffset:v48 predicate:self->_spacingGuidesForSnappingX inArray:MaxX];

      if (v49)
      {
        [v49 offset];
        if (v50 - MaxX == 0.0 || vabdd_f64(v50, MaxX) < 0.00999999978)
        {
          [v22 addObject:{v49, *&v93}];
        }
      }
    }

    if (!yCopy)
    {
      goto LABEL_67;
    }

    if (!tag)
    {
LABEL_56:
      v132.origin.x = x;
      v132.origin.y = y;
      v132.size.width = width;
      v132.size.height = height;
      MinY = CGRectGetMinY(v132);
      v52 = [(CRLCanvasGuideController *)self p_predicateCanBeSnappedToByEdge:3 ofFrame:x inVisibleUnscaledRect:y, width, height, v93, v38, v40, v42];
      v53 = [(CRLCanvasGuideController *)self p_closestGuideForOffset:v52 predicate:self->_spacingGuidesForSnappingY inArray:MinY];

      if (v53)
      {
        [v53 offset];
        if (v54 - MinY == 0.0 || vabdd_f64(v54, MinY) < 0.00999999978)
        {
          [v22 addObject:{v53, *&v93}];
        }
      }

      if (!tag)
      {
LABEL_62:
        v133.origin.x = x;
        v133.origin.y = y;
        v133.size.width = width;
        v133.size.height = height;
        MaxY = CGRectGetMaxY(v133);
        v56 = [(CRLCanvasGuideController *)self p_predicateCanBeSnappedToByEdge:5 ofFrame:x inVisibleUnscaledRect:y, width, height, v93, v38, v40, v42];
        v57 = [(CRLCanvasGuideController *)self p_closestGuideForOffset:v56 predicate:self->_spacingGuidesForSnappingY inArray:MaxY];

        if (v57)
        {
          [v57 offset];
          if (v58 - MaxY == 0.0 || vabdd_f64(v58, MaxY) < 0.00999999978)
          {
            [v22 addObject:{v57, *&v93}];
          }
        }

LABEL_67:
        if (self->_shouldAlignCenters)
        {
          goto LABEL_86;
        }

        if (!xCopy)
        {
          goto LABEL_77;
        }

        if (!tag)
        {
          goto LABEL_72;
        }

        goto LABEL_70;
      }

LABEL_61:
      if ((sub_100345928(tag) & 0x380) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_62;
    }

LABEL_55:
    if ((sub_100345928(tag) & 0xE) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_56;
  }

LABEL_86:
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v67 = v22;
  v68 = [v67 countByEnumeratingWithState:&v124 objects:v129 count:16];
  if (v68)
  {
    v69 = *v125;
    do
    {
      for (i = 0; i != v68; i = i + 1)
      {
        if (*v125 != v69)
        {
          objc_enumerationMutation(v67);
        }

        [*(*(&v124 + 1) + 8 * i) setSnappingObjectFrame:{x, y, width, height, *&v93}];
      }

      v68 = [v67 countByEnumeratingWithState:&v124 objects:v129 count:16];
    }

    while (v68);
  }

  v118 = 0;
  v119 = &v118;
  v120 = 0x3032000000;
  v121 = sub_100103A3C;
  v122 = sub_100103A4C;
  v123 = 0;
  v112 = 0;
  v113 = &v112;
  v114 = 0x3032000000;
  v115 = sub_100103A3C;
  v116 = sub_100103A4C;
  v117 = 0;
  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = sub_100103A3C;
  v110 = sub_100103A4C;
  v111 = 0;
  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = sub_100103A3C;
  v104 = sub_100103A4C;
  v105 = 0;
  v99[0] = _NSConcreteStackBlock;
  v99[1] = 3221225472;
  v99[2] = sub_100107408;
  v99[3] = &unk_10183CD98;
  v99[4] = self;
  v99[5] = &v118;
  v99[6] = &v112;
  v99[7] = &v106;
  v99[8] = &v100;
  v71 = [NSPredicate predicateWithBlock:v99];
  [v67 filterUsingPredicate:v71];

  if (v107[5])
  {
    [v67 addObject:?];
  }

  v72 = v119[5];
  if (v72)
  {
    if (v107[5])
    {
      parentSpacing = [v119[5] parentSpacing];
      integerOffset = [parentSpacing integerOffset];
      v75 = integerOffset == [v107[5] integerOffset];

      if (!v75)
      {
        goto LABEL_100;
      }

      v72 = v119[5];
    }

    [v67 addObject:{v72, *&v93}];
  }

LABEL_100:
  if (v101[5])
  {
    [v67 addObject:?];
  }

  v76 = v113[5];
  if (!v76)
  {
    goto LABEL_107;
  }

  if (!v101[5])
  {
    goto LABEL_106;
  }

  parentSpacing2 = [v113[5] parentSpacing];
  integerOffset2 = [parentSpacing2 integerOffset];
  v79 = integerOffset2 == [v101[5] integerOffset];

  if (v79)
  {
    v76 = v113[5];
LABEL_106:
    [v67 addObject:{v76, *&v93}];
  }

LABEL_107:
  if ([(CRLCanvasGuideController *)self doNotRemoveExistingGuidesWhenDisplaying])
  {
    allObjects = [(NSSet *)self->_currentGuides allObjects];
    [v67 addObjectsFromArray:allObjects];
  }

  objc_storeStrong(&self->_currentGuides, v22);
  self->_currentGuidesRect.origin.x = x;
  self->_currentGuidesRect.origin.y = y;
  self->_currentGuidesRect.size.width = width;
  self->_currentGuidesRect.size.height = height;
  [(NSMutableSet *)self->_currentSizingGuideUIRenderables removeAllObjects];
  if (guidesCopy && self->_shouldAlignToSizingGuides && (sub_100345928(tag) & 0x3DE) != 0)
  {
    v81 = objc_alloc_init(NSMutableSet);
    if ([(CRLCanvasGuideController *)self p_sizingGuidesAreRelevantForOrientation:0 whileDraggingKnobTag:tag])
    {
      v82 = [(CRLCanvasGuideController *)self p_guidesForOffset:0 predicate:self->_horizontalSizingGuides inArray:width];
      [v81 addObjectsFromArray:v82];
    }

    if ([(CRLCanvasGuideController *)self p_sizingGuidesAreRelevantForOrientation:1 whileDraggingKnobTag:tag])
    {
      v83 = [(CRLCanvasGuideController *)self p_guidesForOffset:0 predicate:self->_verticalSizingGuides inArray:height];
      [v81 addObjectsFromArray:v83];
    }

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v84 = v81;
    v85 = [v84 countByEnumeratingWithState:&v95 objects:v128 count:16];
    if (v85)
    {
      v86 = *v96;
      do
      {
        for (j = 0; j != v85; j = j + 1)
        {
          if (*v96 != v86)
          {
            objc_enumerationMutation(v84);
          }

          v88 = *(*(&v95 + 1) + 8 * j);
          [v88 setSnappingObjectFrame:{x, y, width, height}];
          currentSizingGuideUIRenderables = self->_currentSizingGuideUIRenderables;
          v90 = objc_loadWeakRetained(&self->_icc);
          v91 = [v88 renderableWithICC:v90];
          [(NSMutableSet *)currentSizingGuideUIRenderables addObject:v91];
        }

        v85 = [v84 countByEnumeratingWithState:&v95 objects:v128 count:16];
      }

      while (v85);
    }

    objc_storeStrong(&self->_currentSizingGuides, v81);
  }

  v92 = objc_loadWeakRetained(&self->_icc);
  [v92 invalidateLayersForDecorator:self];

  _Block_object_dispose(&v100, 8);
  _Block_object_dispose(&v106, 8);

  _Block_object_dispose(&v112, 8);
  _Block_object_dispose(&v118, 8);
}

- (void)showSizingGuidesAlignedWithLayout:(id)layout forKnobTag:(unint64_t)tag
{
  layoutCopy = layout;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101315064();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101315078();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101315100();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLCanvasGuideController showSizingGuidesAlignedWithLayout:forKnobTag:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasGuideController.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:1395 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if (self->_shouldAlignToSizingGuides)
  {
    dispatch_semaphore_wait(self->_guideGenerationStateLock, 0xFFFFFFFFFFFFFFFFLL);
    guideGenerationState = self->_guideGenerationState;
    dispatch_semaphore_signal(self->_guideGenerationStateLock);
    if (guideGenerationState == 2)
    {
      [layoutCopy alignmentFrameForProvidingGuidesInRoot];
      v12 = v11;
      v14 = v13;
      if (layoutCopy)
      {
        objc_msgSend_transform(layoutCopy);
      }

      else
      {
        memset(v34, 0, sizeof(v34));
      }

      v15 = sub_100139980(v34);
      sub_1001208E0(v15);
      if (v16 == 90.0 || fabs(v16 + -90.0) < 0.00999999978)
      {
        v17 = sub_100345B30(tag);
      }

      else
      {
        if (v16 != 270.0 && fabs(v16 + -270.0) >= 0.00999999978)
        {
          goto LABEL_23;
        }

        v17 = sub_100345934(tag);
      }

      tag = v17;
LABEL_23:
      v18 = objc_alloc_init(NSMutableArray);
      if ([(CRLCanvasGuideController *)self p_sizingGuidesAreRelevantForOrientation:0 whileDraggingKnobTag:tag])
      {
        v19 = [(CRLCanvasGuideController *)self p_guidesForOffset:0 predicate:self->_horizontalSizingGuides inArray:v12];
        [v18 addObjectsFromArray:v19];
      }

      if ([(CRLCanvasGuideController *)self p_sizingGuidesAreRelevantForOrientation:1 whileDraggingKnobTag:tag])
      {
        v20 = [(CRLCanvasGuideController *)self p_guidesForOffset:0 predicate:self->_verticalSizingGuides inArray:v14];
        [v18 addObjectsFromArray:v20];
      }

      [(NSMutableSet *)self->_currentSizingGuideUIRenderables removeAllObjects];
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v21 = v18;
      v22 = [v21 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v31;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v31 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v30 + 1) + 8 * i);
            [v26 setSnappingObjectLayout:{layoutCopy, v30}];
            currentSizingGuideUIRenderables = self->_currentSizingGuideUIRenderables;
            WeakRetained = objc_loadWeakRetained(&self->_icc);
            v29 = [v26 renderableWithICC:WeakRetained];
            [(NSMutableSet *)currentSizingGuideUIRenderables addObject:v29];
          }

          v23 = [v21 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v23);
      }
    }
  }
}

- (void)showSizingGuideUIForRep:(id)rep matchingWidth:(BOOL)width matchingHeight:(BOOL)height
{
  heightCopy = height;
  widthCopy = width;
  repCopy = rep;
  v9 = [CRLCanvasSizingGuideUILayer alloc];
  layout = [repCopy layout];

  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v14 = [(CRLCanvasSizingGuideUILayer *)v9 initForLayout:layout withICC:WeakRetained showWidth:widthCopy showHeight:heightCopy];

  currentSizingGuideUIRenderables = self->_currentSizingGuideUIRenderables;
  v13 = [CRLCanvasRenderable renderableFromLayer:v14];
  [(NSMutableSet *)currentSizingGuideUIRenderables addObject:v13];
}

- (void)hideSizingGuides
{
  [(NSMutableSet *)self->_currentSizingGuideUIRenderables removeAllObjects];
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  [WeakRetained invalidateLayersForDecorator:self];
}

- (void)hideAlignmentGuides
{
  currentGuides = self->_currentGuides;
  self->_currentGuides = 0;

  currentSizingGuides = self->_currentSizingGuides;
  self->_currentSizingGuides = 0;

  WeakRetained = objc_loadWeakRetained(&self->_icc);
  [WeakRetained invalidateLayersForDecorator:self];
}

- (void)endAlignmentOperation
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101315128();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131513C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013151C4();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLCanvasGuideController endAlignmentOperation]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasGuideController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:1454 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  v6 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [v6 setDelegate:0];
  [v6 setDuration:0.400000006];
  [v6 setFromValue:&off_1018E2F10];
  [v6 setToValue:&off_1018E3110];
  decoratorOverlayRenderables = [(CRLCanvasGuideController *)self decoratorOverlayRenderables];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [decoratorOverlayRenderables countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(decoratorOverlayRenderables);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        [v12 setOpacity:0.0];
        [v12 addAnimation:v6 forKey:@"fade out"];
      }

      v9 = [decoratorOverlayRenderables countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  dispatch_semaphore_wait(self->_guideGenerationStateLock, 0xFFFFFFFFFFFFFFFFLL);
  self->_guideGenerationState = 3;
  dispatch_semaphore_signal(self->_guideGenerationStateLock);
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  [WeakRetained removeDecorator:self];

  guideGenerationAccessQueue = self->_guideGenerationAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100107F48;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_async(guideGenerationAccessQueue, block);
}

- (NSArray)decoratorOverlayRenderables
{
  dispatch_semaphore_wait(self->_guideGenerationStateLock, 0xFFFFFFFFFFFFFFFFLL);
  guideGenerationState = self->_guideGenerationState;
  dispatch_semaphore_signal(self->_guideGenerationStateLock);
  if (guideGenerationState == 2 && (v4 = objc_loadWeakRetained(&self->_icc), [v4 visibleUnscaledRect], IsEmpty = CGRectIsEmpty(v59), v4, !IsEmpty))
  {
    v6 = +[NSMutableArray array];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    allValues = [(NSMutableDictionary *)self->_horizontalSpacings allValues];
    v8 = [allValues countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v52;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v52 != v10)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v51 + 1) + 8 * i) needsRedraw];
        }

        v9 = [allValues countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v9);
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    allValues2 = [(NSMutableDictionary *)self->_verticalSpacings allValues];
    v13 = [allValues2 countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v48;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v48 != v15)
          {
            objc_enumerationMutation(allValues2);
          }

          [*(*(&v47 + 1) + 8 * j) needsRedraw];
        }

        v14 = [allValues2 countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v14);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = self->_currentGuides;
    v17 = [(NSSet *)obj countByEnumeratingWithState:&v43 objects:v55 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v44;
      do
      {
        for (k = 0; k != v18; k = k + 1)
        {
          if (*v44 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v43 + 1) + 8 * k);
          v22 = objc_opt_class();
          v23 = sub_100014370(v22, v21);
          v24 = v23;
          if (v23 && [v23 infinite])
          {
            v25 = v6;
            guideType = [v24 guideType];
            WeakRetained = objc_loadWeakRetained(&self->_icc);
            [WeakRetained visibleUnscaledRect];
            if (guideType == 1)
            {
              [v24 setStart:v28];

              v29 = objc_loadWeakRetained(&self->_icc);
              [v29 visibleUnscaledRect];
              v31 = v30;
              v32 = objc_loadWeakRetained(&self->_icc);
              [v32 visibleUnscaledRect];
              v34 = v31 + v33;
            }

            else
            {
              [v24 setStart:?];

              v29 = objc_loadWeakRetained(&self->_icc);
              [v29 visibleUnscaledRect];
              v36 = v35;
              v32 = objc_loadWeakRetained(&self->_icc);
              [v32 visibleUnscaledRect];
              v34 = v36 + v37;
            }

            [v24 setEnd:v34];

            v6 = v25;
          }

          v38 = objc_loadWeakRetained(&self->_icc);
          v39 = [v21 renderableWithICC:v38];

          if (v39)
          {
            [v6 addObject:v39];
          }
        }

        v18 = [(NSSet *)obj countByEnumeratingWithState:&v43 objects:v55 count:16];
      }

      while (v18);
    }

    allObjects = [(NSMutableSet *)self->_currentSizingGuideUIRenderables allObjects];
    [v6 addObjectsFromArray:allObjects];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (double)p_maxSnapForSnapDistance:(double)distance
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  [WeakRetained viewScale];
  *&v5 = v5 + -1.0;
  v6 = distance / (tanhf(*&v5) + 1.0);

  return v6;
}

- (BOOL)p_sizingGuidesAreRelevantForOrientation:(int)orientation whileDraggingKnobTag:(unint64_t)tag
{
  v4 = (tag & 0xFFFFFFFFFFFFFFFDLL) != 4;
  v6 = tag != 2 && tag != 8;
  if (!orientation)
  {
    v4 = v6;
  }

  return tag && v4;
}

- (BOOL)p_guidesAreRelevantForEdge:(int)edge whileDraggingKnobTag:(unint64_t)tag
{
  if (tag > 3)
  {
    if (tag > 6)
    {
      if (tag == 9)
      {
        v5 = 0;
        if (edge <= 3)
        {
          if (edge != 1)
          {
            if (edge != 2)
            {
              return v5;
            }

            return self->_shouldAlignEdges;
          }

          return self->_shouldAlignCenters;
        }

LABEL_35:
        if (edge != 4)
        {
          if (edge != 5)
          {
            return v5;
          }

          return self->_shouldAlignEdges;
        }

        return self->_shouldAlignCenters;
      }

      if (tag != 8)
      {
        if (tag == 7)
        {
          v5 = 0;
          if (edge > 3)
          {
            goto LABEL_35;
          }

          goto LABEL_12;
        }

        goto LABEL_44;
      }

      if (edge == 4)
      {
        return self->_shouldAlignCenters;
      }

      if (edge != 5)
      {
        return 0;
      }

      return self->_shouldAlignEdges;
    }

    if (tag == 4)
    {
      if (edge == 1)
      {
        return self->_shouldAlignCenters;
      }

      if (edge)
      {
        return 0;
      }

      return self->_shouldAlignEdges;
    }

    if (tag == 6)
    {
      if (edge == 1)
      {
        return self->_shouldAlignCenters;
      }

      if (edge != 2)
      {
        return 0;
      }

      return self->_shouldAlignEdges;
    }

    goto LABEL_44;
  }

  if (tag > 1)
  {
    if (tag != 2)
    {
      if ((edge & 0xFFFFFFFE) == 2)
      {
        return self->_shouldAlignEdges;
      }

      if (edge == 4 || edge == 1)
      {
        return self->_shouldAlignCenters;
      }

      return 0;
    }

    if (edge == 4)
    {
      return self->_shouldAlignCenters;
    }

    if (edge != 3)
    {
      return 0;
    }

    return self->_shouldAlignEdges;
  }

  if (!tag)
  {
    if (edge > 5)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013152BC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013152D0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101315358();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v10);
      }

      v11 = [NSString stringWithUTF8String:"[CRLCanvasGuideController p_guidesAreRelevantForEdge:whileDraggingKnobTag:]"];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasGuideController.m"];
      [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:1670 isFatal:0 description:"unexpected edge type"];

      return 0;
    }

    if (((1 << edge) & 0x2D) == 0)
    {
      return self->_shouldAlignCenters;
    }

    return self->_shouldAlignEdges;
  }

  if (tag != 1)
  {
LABEL_44:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101315380();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101315394();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101315430();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLCanvasGuideController p_guidesAreRelevantForEdge:whileDraggingKnobTag:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasGuideController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1674 isFatal:0 description:"unexpected knob tag %zu", tag];

    return 0;
  }

  v5 = 0;
  if (edge <= 2)
  {
LABEL_12:
    if (edge)
    {
      if (edge != 1)
      {
        return v5;
      }

      return self->_shouldAlignCenters;
    }

    return self->_shouldAlignEdges;
  }

  if (edge == 4)
  {
    return self->_shouldAlignCenters;
  }

  if (edge == 3)
  {
    return self->_shouldAlignEdges;
  }

  return v5;
}

- (CGRect)p_alignmentFrameInRootForLayout:(id)layout
{
  alignmentFrameInRootByLayout = self->_alignmentFrameInRootByLayout;
  if (alignmentFrameInRootByLayout)
  {
    v4 = [(NSMapTable *)alignmentFrameInRootByLayout objectForKeyedSubscript:layout];
    if (!v4)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101315458();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10131546C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101315508();
      }

      v5 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v5);
      }

      v6 = [NSString stringWithUTF8String:"[CRLCanvasGuideController p_alignmentFrameInRootForLayout:]"];
      v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasGuideController.m"];
      [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1685 isFatal:0 description:"invalid nil value for '%{public}s'", "value"];
    }

    [v4 CGRectValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    [layout alignmentFrameForProvidingGuidesInRoot];
    v9 = v16;
    v11 = v17;
    v13 = v18;
    v15 = v19;
  }

  v20 = v9;
  v21 = v11;
  v22 = v13;
  v23 = v15;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)p_addGuidesForLayout:(id)layout
{
  layoutCopy = layout;
  v5 = layoutCopy;
  if (layoutCopy && [layoutCopy shouldDisplayGuides])
  {
    additionalGuides = [v5 additionalGuides];
    interactiveCanvasController = [(CRLCanvasGuideController *)self interactiveCanvasController];
    [interactiveCanvasController transformGuides:additionalGuides forLayout:v5];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v8 = additionalGuides;
    v9 = [v8 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v43;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v43 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v42 + 1) + 8 * i);
          if ([v13 guideType])
          {
            v14 = 120;
          }

          else
          {
            v14 = 112;
          }

          [(CRLCanvasGuideController *)self p_addAlignmentGuide:v13 toSortedArray:*(&self->super.isa + v14)];
        }

        v10 = [v8 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v10);
    }

    v15 = +[NSMutableSet set];
    [(CRLCanvasGuideController *)self p_alignmentFrameInRootForLayout:v5];
    v20 = v16;
    v21 = v17;
    v22 = v18;
    v23 = v19;
    if (self->_shouldAlignCenters)
    {
      v24 = [[CRLCanvasAlignmentGuide alloc] initWithGeneratingObjectUnscaledRect:1 edge:v16, v17, v18, v19];
      [v15 addObject:v24];
      v25 = [[CRLCanvasAlignmentGuide alloc] initWithGeneratingObjectUnscaledRect:4 edge:v20, v21, v22, v23];

      [v15 addObject:v25];
    }

    else
    {
      v25 = 0;
    }

    if (self->_shouldAlignEdges)
    {
      v26 = [[CRLCanvasAlignmentGuide alloc] initWithGeneratingObjectUnscaledRect:0 edge:v20, v21, v22, v23];

      [v15 addObject:v26];
      v27 = [[CRLCanvasAlignmentGuide alloc] initWithGeneratingObjectUnscaledRect:2 edge:v20, v21, v22, v23];

      [v15 addObject:v27];
      v28 = [[CRLCanvasAlignmentGuide alloc] initWithGeneratingObjectUnscaledRect:3 edge:v20, v21, v22, v23];

      [v15 addObject:v28];
      v25 = [[CRLCanvasAlignmentGuide alloc] initWithGeneratingObjectUnscaledRect:5 edge:v20, v21, v22, v23];

      [v15 addObject:v25];
    }

    interactiveCanvasController2 = [(CRLCanvasGuideController *)self interactiveCanvasController];
    v37 = v5;
    [interactiveCanvasController2 transformGuides:v15 forLayout:v5];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v30 = v15;
    v31 = [v30 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v39;
      do
      {
        v34 = 0;
        v35 = v25;
        do
        {
          if (*v39 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v25 = *(*(&v38 + 1) + 8 * v34);

          if ([(CRLCanvasAlignmentGuide *)v25 guideType])
          {
            v36 = 120;
          }

          else
          {
            v36 = 112;
          }

          [(CRLCanvasGuideController *)self p_addAlignmentGuide:v25 toSortedArray:*(&self->super.isa + v36)];
          v34 = v34 + 1;
          v35 = v25;
        }

        while (v32 != v34);
        v32 = [v30 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v32);
    }

    v5 = v37;
  }
}

- (void)p_addSpacingGuidesForFrame:(CGRect)frame spacing:(id)spacing isVerticalSpacing:(BOOL)verticalSpacing
{
  verticalSpacingCopy = verticalSpacing;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  spacingCopy = spacing;
  v11 = 120;
  if (verticalSpacingCopy)
  {
    v11 = 112;
    v12 = 136;
  }

  else
  {
    v12 = 128;
  }

  if (verticalSpacingCopy)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  if (verticalSpacingCopy)
  {
    v14 = 5;
  }

  else
  {
    v14 = 2;
  }

  v15 = *(&self->super.isa + v11);
  v16 = *(&self->super.isa + v12);
  if ([spacingCopy needsGuideForEdge:v13 ofRect:{x, y, width, height}])
  {
    height = [[CRLCanvasSpacingGuide alloc] initForEdge:v13 ofGeneratingObjectRect:spacingCopy andParentSpacing:x, y, width, height];
    [(CRLCanvasGuideController *)self p_addSpacingGuide:height toSortedArray:v15];
    [(CRLCanvasGuideController *)self p_addSpacingGuide:height toSortedArray:v16];
  }

  else
  {
    height = 0;
  }

  if ([spacingCopy needsGuideForEdge:v14 ofRect:{x, y, width, height}])
  {
    height2 = [[CRLCanvasSpacingGuide alloc] initForEdge:v14 ofGeneratingObjectRect:spacingCopy andParentSpacing:x, y, width, height];

    [(CRLCanvasGuideController *)self p_addSpacingGuide:height2 toSortedArray:v15];
    [(CRLCanvasGuideController *)self p_addSpacingGuide:height2 toSortedArray:v16];
    height = height2;
  }
}

- (void)p_addAlignmentGuide:(id)guide toSortedArray:(id)array
{
  arrayCopy = array;
  guideCopy = guide;
  [arrayCopy insertObject:guideCopy atIndex:{-[CRLCanvasGuideController p_indexToInsertGuide:inSortedArray:](self, "p_indexToInsertGuide:inSortedArray:", guideCopy, arrayCopy)}];
}

- (void)p_addSpacingGuide:(id)guide toSortedArray:(id)array
{
  arrayCopy = array;
  guideCopy = guide;
  [arrayCopy insertObject:guideCopy atIndex:{-[CRLCanvasGuideController p_indexToInsertGuide:inSortedArray:](self, "p_indexToInsertGuide:inSortedArray:", guideCopy, arrayCopy)}];
}

- (void)p_addSizingGuide:(id)guide toSortedArray:(id)array
{
  arrayCopy = array;
  guideCopy = guide;
  [arrayCopy insertObject:guideCopy atIndex:{-[CRLCanvasGuideController p_indexToInsertGuide:inSortedArray:](self, "p_indexToInsertGuide:inSortedArray:", guideCopy, arrayCopy)}];
}

- (void)p_addCenterAlignmentGuide:(id)guide toSortedArray:(id)array
{
  arrayCopy = array;
  guideCopy = guide;
  [arrayCopy insertObject:guideCopy atIndex:{-[CRLCanvasGuideController p_indexToInsertGuide:inSortedArray:](self, "p_indexToInsertGuide:inSortedArray:", guideCopy, arrayCopy)}];
}

- (int64_t)p_indexToInsertGuide:(id)guide inSortedArray:(id)array
{
  guideCopy = guide;
  arrayCopy = array;
  v7 = [arrayCopy count];
  if (v7 < 0)
  {
    sub_101315530();
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else if (!v7)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v8 = 0;
  v9 = v7 - 1;
  while (1)
  {
    v10 = (v9 + v8) >> 1;
    v11 = [arrayCopy objectAtIndexedSubscript:v10];
    [guideCopy offset];
    v13 = sub_1004C31F4(v12);
    [v11 offset];
    if (v13 == sub_1004C31F4(v14))
    {
      break;
    }

    [guideCopy offset];
    v16 = v15;
    [v11 offset];
    if (v16 < v17)
    {
      v9 = v10 - 1;
    }

    else
    {
      v8 = v10 + 1;
    }

    if (v8 > v9)
    {
      goto LABEL_12;
    }
  }

  [v11 offset];
  [guideCopy setOffset:?];

  v8 = (v9 + v8) >> 1;
  v9 = v10;
LABEL_12:
  if (v9 >= v10)
  {
    v10 = v8;
  }

LABEL_14:

  return v10;
}

- (void)p_getOffset:(double *)offset andGuidesArray:(id *)array forEdge:(int)edge ofFrame:(CGRect)frame
{
  if (edge > 2)
  {
    switch(edge)
    {
      case 3:
        MinY = CGRectGetMinY(frame);
        break;
      case 4:
        MinY = CGRectGetMidY(frame);
        break;
      case 5:
        MinY = CGRectGetMaxY(frame);
        break;
      default:
        return;
    }

    v10 = 112;
  }

  else
  {
    if (edge)
    {
      if (edge == 1)
      {
        MinY = CGRectGetMidX(frame);
      }

      else
      {
        if (edge != 2)
        {
          return;
        }

        MinY = CGRectGetMaxX(frame);
      }
    }

    else
    {
      MinY = CGRectGetMinX(frame);
    }

    v10 = 120;
  }

  *offset = MinY;
  *array = *(&self->super.isa + v10);
}

- (id)p_guidesForEdge:(int)edge ofFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = *&edge;
  v24 = 0;
  v25 = 0.0;
  [(CRLCanvasGuideController *)self p_getOffset:&v25 andGuidesArray:&v24 forEdge:*&edge ofFrame:?];
  v9 = v24;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  [WeakRetained visibleUnscaledRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v25;
  v20 = [(CRLCanvasGuideController *)self p_predicateCanBeSnappedToByEdge:v7 ofFrame:x inVisibleUnscaledRect:y, width, height, v12, v14, v16, v18];
  v21 = [(CRLCanvasGuideController *)self p_guidesForOffset:v20 predicate:v9 inArray:v19];

  return v21;
}

- (id)p_guidesForOffset:(double)offset predicate:(id)predicate inArray:(id)array
{
  predicateCopy = predicate;
  arrayCopy = array;
  v9 = [arrayCopy count];
  if (v9 < 0)
  {
    sub_1013156F0();
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v9;
    if (!v9)
    {
      v21 = 0;
      goto LABEL_26;
    }
  }

  v11 = 0;
  v12 = 0;
  v13 = v10 - 1;
  do
  {
    v14 = v12;
    v15 = v13;
    v16 = v11;
    v17 = v13 + v12;
    v18 = (v13 + v12) >> 1;
    v11 = [arrayCopy objectAtIndexedSubscript:v18];

    [v11 offset];
    if (vabdd_f64(offset, v19) < 0.01)
    {
      break;
    }

    [v11 offset];
    v13 = v18 - 1;
    if (v20 <= offset)
    {
      v12 = v18 + 1;
    }

    else
    {
      v12 = v14;
    }

    if (v20 <= offset)
    {
      v13 = v15;
    }
  }

  while (v12 <= v13);
  v21 = objc_alloc_init(NSMutableArray);
  if (v17 >= 2)
  {
    v22 = ((v15 + v14) >> 1) + 1;
    do
    {
      v23 = v11;
      v11 = [arrayCopy objectAtIndexedSubscript:v22 - 2];

      [v11 offset];
      if (vabdd_f64(v24, offset) > 0.01)
      {
        break;
      }

      if (!predicateCopy || [predicateCopy evaluateWithObject:v11])
      {
        [v21 addObject:v11];
      }

      --v22;
    }

    while (v22 > 1);
  }

  if (v18 < v10)
  {
    do
    {
      v25 = v11;
      v11 = [arrayCopy objectAtIndexedSubscript:v18];

      [v11 offset];
      if (vabdd_f64(v26, offset) > 0.01)
      {
        break;
      }

      if (!predicateCopy || [predicateCopy evaluateWithObject:v11])
      {
        [v21 addObject:v11];
      }

      ++v18;
    }

    while (v10 != v18);
  }

LABEL_26:

  return v21;
}

- (id)p_guideClosestToEdge:(int)edge ofFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = *&edge;
  v25 = 0.0;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  [WeakRetained visibleUnscaledRect];
  v23 = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v24 = 0;
  [(CRLCanvasGuideController *)self p_getOffset:&v25 andGuidesArray:&v24 forEdge:v8 ofFrame:x, y, width, height];
  v18 = v24;
  v19 = v25;
  v20 = [(CRLCanvasGuideController *)self p_predicateCanBeSnappedToByEdge:v8 ofFrame:x inVisibleUnscaledRect:y, width, height, v23, v13, v15, v17];
  v21 = [(CRLCanvasGuideController *)self p_closestGuideForOffset:v20 predicate:v18 inArray:v19];

  return v21;
}

- (id)p_closestGuideForOffset:(double)offset predicate:(id)predicate inArray:(id)array
{
  predicateCopy = predicate;
  arrayCopy = array;
  v10 = [arrayCopy count];
  if (v10 < 0)
  {
    sub_1013158B0();
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
    if (!v10)
    {
      v26 = 0;
      goto LABEL_35;
    }
  }

  v12 = 0;
  v13 = 0;
  v14 = v11 - 1;
  do
  {
    v15 = v13;
    v16 = v12;
    v17 = v14;
    v18 = v14 + v12;
    v19 = (v14 + v12) >> 1;
    v13 = [arrayCopy objectAtIndexedSubscript:v19];

    [v13 offset];
    if (v20 == offset)
    {
      break;
    }

    [v13 offset];
    v14 = v19 - 1;
    if (v21 <= offset)
    {
      v12 = v19 + 1;
    }

    else
    {
      v12 = v16;
    }

    if (v21 <= offset)
    {
      v14 = v17;
    }
  }

  while (v12 <= v14);
  v22 = [arrayCopy objectAtIndexedSubscript:v19];

  [v22 offset];
  v24 = vabdd_f64(v23, offset);
  [(CRLCanvasGuideController *)self snapDistanceToUseForGuides];
  if (v24 >= v25 + v25 || predicateCopy && ![predicateCopy evaluateWithObject:v22])
  {
    v26 = 0;
  }

  else
  {
    v26 = v22;
  }

  if (v18 >= 2)
  {
    v27 = ((v17 + v16) >> 1) + 1;
    do
    {
      v28 = v22;
      v22 = [arrayCopy objectAtIndexedSubscript:v27 - 2];

      [v22 offset];
      v30 = vabdd_f64(v29, offset);
      [(CRLCanvasGuideController *)self snapDistanceToUseForGuides];
      if (v30 > v31 + v31)
      {
        break;
      }

      if (v26)
      {
        [v26 offset];
        if (v30 >= vabdd_f64(v32, offset))
        {
          continue;
        }
      }

      if (!predicateCopy || [predicateCopy evaluateWithObject:v22])
      {
        v33 = v22;

        v26 = v33;
      }

      --v27;
    }

    while (v27 > 1);
  }

  v34 = v19 + 1;
  if (v34 < v11)
  {
    do
    {
      v35 = v22;
      v22 = [arrayCopy objectAtIndexedSubscript:v34];

      [v22 offset];
      v37 = vabdd_f64(v36, offset);
      [(CRLCanvasGuideController *)self snapDistanceToUseForGuides];
      if (v37 > v38 + v38)
      {
        break;
      }

      if (v26)
      {
        [v26 offset];
        if (v37 >= vabdd_f64(v39, offset))
        {
          continue;
        }
      }

      if (!predicateCopy || [predicateCopy evaluateWithObject:v22])
      {
        v40 = v22;

        v26 = v40;
      }

      ++v34;
    }

    while (v11 != v34);
  }

LABEL_35:

  return v26;
}

- (float)p_spacingForCenterOrSpacingGuide:(id)guide
{
  guideCopy = guide;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101315A70();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101315A84();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101315B0C();
      }

      v4 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v4);
      }

      v5 = [NSString stringWithUTF8String:"[CRLCanvasGuideController p_spacingForCenterOrSpacingGuide:]"];
      v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasGuideController.m"];
      [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:1997 isFatal:0 description:"Guide must have an associated spacing."];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_opt_class();
    v8 = sub_100014370(v7, guideCopy);
    parentSpacing = [v8 parentSpacing];
    [parentSpacing exactOffset];
    v11 = v10;

LABEL_16:
    v12 = v11;

    goto LABEL_17;
  }

  objc_opt_class();
  v12 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    v13 = objc_opt_class();
    v8 = sub_100014370(v13, guideCopy);
    [v8 exactOffset];
    v11 = v14;
    goto LABEL_16;
  }

LABEL_17:

  return v12;
}

- (id)p_predicateCanBeSnappedToInVisibleUnscaledRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (+[CRLCanvasGuideController shouldSnapToOffscreenContent])
  {
    v7 = 0;
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10010A278;
    v9[3] = &unk_10183D038;
    *&v9[4] = x;
    *&v9[5] = y;
    *&v9[6] = width;
    *&v9[7] = height;
    v7 = [NSPredicate predicateWithBlock:v9];
  }

  return v7;
}

- (id)p_predicateCanBeSnappedToByEdge:(int)edge ofFrame:(CGRect)frame inVisibleUnscaledRect:(CGRect)rect
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010A380;
  v7[3] = &unk_10183D058;
  edgeCopy = edge;
  frameCopy = frame;
  rectCopy = rect;
  v5 = [NSPredicate predicateWithBlock:v7];

  return v5;
}

- (CRLInteractiveCanvasController)interactiveCanvasController
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);

  return WeakRetained;
}

- (CGRect)i_currentGuidesRect
{
  x = self->_currentGuidesRect.origin.x;
  y = self->_currentGuidesRect.origin.y;
  width = self->_currentGuidesRect.size.width;
  height = self->_currentGuidesRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end