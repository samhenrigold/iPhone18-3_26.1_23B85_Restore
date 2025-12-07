@interface CRLCanvasRepDragTracker
- (BOOL)insertInfosAndUpdateDragForDuplicatingDragIfAppropriate;
- (BOOL)p_delegateIsHandlingDrag;
- (BOOL)supportsAlignmentGuides;
- (BOOL)traceIfDesiredForBeginOperation;
- (BOOL)traceIfDesiredForEndOperation;
- (CGRect)p_selectedInfosRect;
- (CRLCanvasRepDragTracker)initWithRep:(id)rep;
- (NSArray)decoratorOverlayRenderables;
- (id)p_infosFromReps:(id)reps;
- (id)p_orderedDraggedReps;
- (id)p_repsBeingHoveredAtCurrentDragPoint;
- (id)p_repsForInfos:(id)infos fromReps:(id)reps;
- (id)repsForGuidesWhenManipulatingReps:(id)reps;
- (id)selectionBehaviorForReps:(id)reps;
- (void)addUnscaledDragDelta:(CGPoint)delta roundDeltaToViewScale:(BOOL)scale;
- (void)beginShowingDragUIForInitialDragPoint:(CGPoint)point;
- (void)changeDynamicLayoutsForReps:(id)reps;
- (void)commitChangesForReps:(id)reps;
- (void)dealloc;
- (void)didChangeCurrentlyTransformingReps;
- (void)endPossibleRepDragGesture;
- (void)p_didBeginDrag;
- (void)p_hideHUD;
- (void)p_makeSiblingRepsOfRep:(id)rep performBlock:(id)block;
- (void)p_updateGuides;
- (void)p_updateHUDAtPoint:(CGPoint)point;
- (void)p_updateRepsBeingHoveredAtCurrentDragPoint;
- (void)setActualDragPoint:(CGPoint)point;
- (void)setShouldConstrain:(BOOL)constrain;
- (void)setShouldShowGuides:(BOOL)guides;
- (void)setSnapLevel:(double)level;
- (void)willBeginDynamicOperationForReps:(id)reps;
@end

@implementation CRLCanvasRepDragTracker

- (CRLCanvasRepDragTracker)initWithRep:(id)rep
{
  repCopy = rep;
  v21.receiver = self;
  v21.super_class = CRLCanvasRepDragTracker;
  v5 = [(CRLCanvasRepDragTracker *)&v21 init];
  if (v5)
  {
    if (!repCopy)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101397908();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101397930();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013979E0();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v6);
      }

      v7 = [NSString stringWithUTF8String:"[CRLCanvasRepDragTracker initWithRep:]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepDragTracker.m"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:136 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];
    }

    [(CRLCanvasRepDragTracker *)v5 setRep:repCopy];
    v9 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:0];
    mMapRepsToSnapOffsets = v5->mMapRepsToSnapOffsets;
    v5->mMapRepsToSnapOffsets = v9;

    interactiveCanvasController = [repCopy interactiveCanvasController];
    if (objc_opt_respondsToSelector())
    {
      v12 = [(CRLCanvasRepDragTracker *)v5 rep];
      allowDragDelegate = [v12 allowDragDelegate];

      if (allowDragDelegate)
      {
        v14 = [interactiveCanvasController repDragTrackerDelegateForRep:repCopy];
        mDelegate = v5->mDelegate;
        v5->mDelegate = v14;
      }
    }

    v16 = objc_alloc_init(CRLCanvasHUDController);
    mSecondHUDController = v5->mSecondHUDController;
    v5->mSecondHUDController = v16;

    v5->mShowDragHUD = 0;
    v18 = objc_alloc_init(UIImpactFeedbackGenerator);
    mImpactFeedbackGenerator = v5->mImpactFeedbackGenerator;
    v5->mImpactFeedbackGenerator = v18;

    [(UIImpactFeedbackGenerator *)v5->mImpactFeedbackGenerator prepare];
    v5->mConstraintAngle = -1.0;
  }

  return v5;
}

- (void)dealloc
{
  if (self->mHaveShownHUD || self->mHaveShownSecondHUD)
  {
    [(CRLCanvasRepDragTracker *)self p_hideHUD];
  }

  [(CRLCanvasRenderable *)self->mGuideRenderable setDelegate:0];
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  v3.receiver = self;
  v3.super_class = CRLCanvasRepDragTracker;
  [(CRLCanvasRepDragTracker *)&v3 dealloc];
}

- (void)beginShowingDragUIForInitialDragPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (![(CRLCanvasRepDragTracker *)self p_delegateIsHandlingDrag])
  {
    interactiveCanvasController = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
    dynamicOperationController = [interactiveCanvasController dynamicOperationController];
    if ([dynamicOperationController isInPossibleDynamicOperation])
    {
    }

    else
    {
      dynamicOperationController2 = [interactiveCanvasController dynamicOperationController];
      isInOperation = [dynamicOperationController2 isInOperation];

      if ((isInOperation & 1) == 0)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101397A08();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101397A1C();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101397AA4();
        }

        v10 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v10);
        }

        v11 = [NSString stringWithUTF8String:"[CRLCanvasRepDragTracker beginShowingDragUIForInitialDragPoint:]"];
        v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepDragTracker.m"];
        [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:203 isFatal:0 description:"showing UI for drag without being in some kind of dynamic operation"];
      }
    }

    self->mInitialDragPoint.x = x;
    self->mInitialDragPoint.y = y;
    v13 = objc_alloc_init(NSMutableSet);
    mConnectedLineLayouts = self->mConnectedLineLayouts;
    self->mConnectedLineLayouts = v13;

    v15 = objc_alloc_init(NSMutableSet);
    mParentLayoutsForInvalidatingForAncestorCollabCursors = self->mParentLayoutsForInvalidatingForAncestorCollabCursors;
    self->mParentLayoutsForInvalidatingForAncestorCollabCursors = v15;

    [(CRLCanvasRepDragTracker *)self didChangeCurrentlyTransformingReps];
    [(CRLCanvasRepDragTracker *)self p_updateGuides];
    [(CRLCanvasRepDragTracker *)self performSelector:"p_updateHUDFromTimer" withObject:0 afterDelay:0.2];
  }
}

- (void)endPossibleRepDragGesture
{
  interactiveCanvasController = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  if (self->mDelegate && self->mDidBeginDrag && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(CRLCanvasRepDragTrackerDelegate *)self->mDelegate dragTrackerDidFinishDragging:self atPoint:self->mActualDragPoint.x, self->mActualDragPoint.y];
    [interactiveCanvasController layoutIfNeeded];
  }

  [(CRLCanvasRepDragTracker *)self p_hideHUD];
  [(CRLCanvasRepDragTracker *)self p_hideGuideRenderable];
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  guideController = [interactiveCanvasController guideController];
  [guideController endAlignmentOperation];

  if (self->mGuideRenderable)
  {
    [interactiveCanvasController removeDecorator:self];
  }
}

- (BOOL)insertInfosAndUpdateDragForDuplicatingDragIfAppropriate
{
  selfCopy = self;
  if (self->mDidDuplicateWhenDragBegan)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101397ACC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101397AE0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101397B68();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLCanvasRepDragTracker insertInfosAndUpdateDragForDuplicatingDragIfAppropriate]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepDragTracker.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:266 isFatal:0 description:"Should only call insertInfosAndUpdateDragForDuplicatingDragIfAppropriate once!"];
  }

  if (![(CRLCanvasRepDragTracker *)selfCopy p_delegateIsHandlingDrag])
  {
    interactiveCanvasController = [(CRLCanvasRep *)selfCopy->mRep interactiveCanvasController];
    canvasEditor = [interactiveCanvasController canvasEditor];
    v8 = [(CRLCanvasRepDragTracker *)selfCopy rep];
    selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
    editorController = [interactiveCanvasController editorController];
    selectionPath = [editorController selectionPath];
    v12 = [selectionModelTranslator unlockedBoardItemsForSelectionPath:selectionPath];

    if ([canvasEditor canvasEditorCanOptionDragDuplicateWithSender:0] && objc_msgSend(v12, "count"))
    {
      commandController = [interactiveCanvasController commandController];
      [commandController openGroup];
      [commandController enableProgressiveEnqueuingInCurrentGroup];
      selfCopy->mDidDuplicateWhenDragBegan = 1;
      canvasEditorHelper = [canvasEditor canvasEditorHelper];
      v15 = [canvasEditorHelper insertCopiesOfInfos:v12 forDuplicatingDragOnRep:v8];

      [interactiveCanvasController layoutIfNeeded];
      v16 = [canvasEditor selectionPathWithInfos:v15];
      editorController2 = [interactiveCanvasController editorController];
      [editorController2 setSelectionPath:v16];
    }

    else
    {
      v15 = 0;
    }

    v54 = objc_alloc_init(NSMutableSet);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v18 = v12;
    v19 = [v18 countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v60;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v60 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [interactiveCanvasController repForInfo:*(*(&v59 + 1) + 8 * i)];
          if (v23)
          {
            [v54 addObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v59 objects:v64 count:16];
      }

      while (v20);
    }

    dynamicOperationController = [interactiveCanvasController dynamicOperationController];
    [dynamicOperationController stopTransformingReps:v54];

    v52 = v15;
    if ([v15 count])
    {
      v50 = canvasEditor;
      v51 = selfCopy;
      v25 = [interactiveCanvasController topLevelZOrderedSiblingsOfInfos:v18];
      v26 = [v25 crl_arrayWithObjectsInSet:v18];

      info = [v8 info];
      v47 = v26;
      v28 = [v26 indexOfObjectIdenticalTo:info];

      v53 = v28;
      if (v28 == 0x7FFFFFFFFFFFFFFFLL)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101397B90();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101397BB8();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101397C40();
        }

        v29 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v29);
        }

        v30 = [NSString stringWithUTF8String:"[CRLCanvasRepDragTracker insertInfosAndUpdateDragForDuplicatingDragIfAppropriate]"];
        v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepDragTracker.m"];
        [CRLAssertionHandler handleFailureInFunction:v30 file:v31 lineNumber:314 isFatal:0 description:"Unable to find index!"];
      }

      v48 = v18;
      v49 = v8;
      v32 = [interactiveCanvasController topLevelZOrderedSiblingsOfInfos:v15];
      v33 = [v32 crl_arrayWithObjectsInSet:v15];

      v34 = objc_alloc_init(NSMutableSet);
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v35 = v15;
      v36 = [v35 countByEnumeratingWithState:&v55 objects:v63 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = 0;
        v39 = *v56;
        do
        {
          for (j = 0; j != v37; j = j + 1)
          {
            if (*v56 != v39)
            {
              objc_enumerationMutation(v35);
            }

            v41 = *(*(&v55 + 1) + 8 * j);
            v42 = [interactiveCanvasController repForInfo:v41 createIfNeeded:1];
            if (v42)
            {
              [v34 addObject:v42];
            }

            if ([v33 indexOfObjectIdenticalTo:v41] == v53)
            {
              v43 = v42;

              v38 = v43;
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v55 objects:v63 count:16];
        }

        while (v37);
      }

      else
      {
        v38 = 0;
      }

      v44 = v34;
      if ([v34 count])
      {
        dynamicOperationController2 = [interactiveCanvasController dynamicOperationController];
        [dynamicOperationController2 startTransformingReps:v34];
      }

      canvasEditor = v50;
      selfCopy = v51;
      v18 = v48;
      if (v38)
      {
        [(CRLCanvasRepDragTracker *)v51 setRep:v38];
      }

      v8 = v49;
    }

    else
    {
      v38 = 0;
    }
  }

  return selfCopy->mDidDuplicateWhenDragBegan;
}

- (void)addUnscaledDragDelta:(CGPoint)delta roundDeltaToViewScale:(BOOL)scale
{
  self->mRoundDragDelta = scale;
  self->mUnscaledDragDelta.x = sub_10011F334(self->mUnscaledDragDelta.x, self->mUnscaledDragDelta.y, delta.x);
  self->mUnscaledDragDelta.y = v5;
}

- (void)setActualDragPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (!self->mHaveSetPreviousActualDragPoint)
  {
    self->mPreviousActualDragPoint = self->mActualDragPoint;
  }

  interactiveCanvasController = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  [interactiveCanvasController convertBoundsToUnscaledPoint:{x, y}];
  self->mActualDragPoint.x = v6;
  self->mActualDragPoint.y = v7;
}

- (void)setShouldConstrain:(BOOL)constrain
{
  if (self->mShouldConstrain != constrain)
  {
    self->mShouldConstrain = constrain;
    if (!self->mDidBeginDrag)
    {
      if (constrain)
      {
        if (!self->mConstraintGuidesShowing)
        {
          [(CRLCanvasRepDragTracker *)self p_showGuideRenderable];
        }
      }

      else if (self->mConstraintGuidesShowing)
      {
        [(CRLCanvasRepDragTracker *)self p_hideGuideRenderable];
      }
    }
  }
}

- (void)setSnapLevel:(double)level
{
  if (level != 0.0 && !self->mShouldConstrain)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101397C68();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101397C7C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101397D04();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLCanvasRepDragTracker setSnapLevel:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepDragTracker.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:375 isFatal:0 description:"non-zero snap level when we aren't constraining the drag. that doesn't make sense."];
  }

  if (self->mSnapLevel != level)
  {
    self->mSnapLevel = level;
  }
}

- (void)p_didBeginDrag
{
  if (!self->mDidBeginDrag)
  {
    self->mDidBeginDrag = 1;
    v3 = objc_alloc_init(NSMutableSet);
    mPreviousHoveredReps = self->mPreviousHoveredReps;
    self->mPreviousHoveredReps = v3;

    v5 = [(CRLCanvasRepDragTracker *)self rep];
    interactiveCanvasController = [v5 interactiveCanvasController];
    layerHost = [interactiveCanvasController layerHost];
    asiOSCVC = [layerHost asiOSCVC];
    [asiOSCVC hideEditMenu];

    if (!self->mTrackerDidBeginDragging)
    {
      mDelegate = self->mDelegate;
      if (mDelegate)
      {
        self->mTrackerDidBeginDragging = 1;
        x = self->mActualDragPoint.x;
        y = self->mActualDragPoint.y;

        [(CRLCanvasRepDragTrackerDelegate *)mDelegate dragTrackerWillBeginDragging:self atPoint:x, y];
      }
    }
  }
}

- (void)setShouldShowGuides:(BOOL)guides
{
  self->mShouldShowGuides = guides;
  if (guides && !self->mShowDragHUD && ![(CRLCanvasRepDragTracker *)self shouldSnapToGuides])
  {
    self->mShowDragHUD = 1;
  }
}

- (void)p_updateRepsBeingHoveredAtCurrentDragPoint
{
  p_repsBeingHoveredAtCurrentDragPoint = [(CRLCanvasRepDragTracker *)self p_repsBeingHoveredAtCurrentDragPoint];
  p_orderedDraggedReps = [(CRLCanvasRepDragTracker *)self p_orderedDraggedReps];
  v5 = [p_repsBeingHoveredAtCurrentDragPoint mutableCopy];
  [v5 minusSet:self->mPreviousHoveredReps];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v33 + 1) + 8 * i) dragTrackerEnteredAt:p_orderedDraggedReps withDraggedReps:{self->mActualDragPoint.x, self->mActualDragPoint.y}];
      }

      v8 = [v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v8);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = p_repsBeingHoveredAtCurrentDragPoint;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v29 + 1) + 8 * j);
        if ([(NSMutableSet *)self->mPreviousHoveredReps containsObject:v16])
        {
          [v16 dragTrackerMovedAt:p_orderedDraggedReps withDraggedReps:{self->mActualDragPoint.x, self->mActualDragPoint.y}];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v13);
  }

  v17 = [(NSMutableSet *)self->mPreviousHoveredReps mutableCopy];
  [v17 minusSet:v11];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      for (k = 0; k != v20; k = k + 1)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v25 + 1) + 8 * k) dragTrackerExitedAt:p_orderedDraggedReps withDraggedReps:{self->mActualDragPoint.x, self->mActualDragPoint.y, v25}];
      }

      v20 = [v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v20);
  }

  v23 = [[NSMutableSet alloc] initWithSet:v11];
  mPreviousHoveredReps = self->mPreviousHoveredReps;
  self->mPreviousHoveredReps = v23;
}

- (id)p_repsBeingHoveredAtCurrentDragPoint
{
  interactiveCanvasController = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  topLevelRepsForHitTesting = [interactiveCanvasController topLevelRepsForHitTesting];

  v5 = objc_alloc_init(NSMutableSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = topLevelRepsForHitTesting;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (v11 != self->mRep)
        {
          [*(*(&v14 + 1) + 8 * i) convertNaturalPointFromUnscaledCanvas:{self->mActualDragPoint.x, self->mActualDragPoint.y, v14}];
          if ([(CRLCanvasRep *)v11 containsPoint:1 withPrecision:?])
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [[NSSet alloc] initWithSet:v5];

  return v12;
}

- (id)p_orderedDraggedReps
{
  interactiveCanvasController = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];
  selectionPath = [editorController selectionPath];

  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  v6 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath];

  v7 = [interactiveCanvasController topLevelZOrderedSiblingsOfInfos:v6];
  v8 = [v7 crl_arrayWithObjectsInSet:v6];
  v9 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [interactiveCanvasController repForInfo:{*(*(&v17 + 1) + 8 * i), v17}];
        [v9 crl_addNonNilObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v9;
}

- (void)willBeginDynamicOperationForReps:(id)reps
{
  repsCopy = reps;
  if (!self->mIsEnqueueingCommandsInRealTime)
  {
    interactiveCanvasController = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
    if (![interactiveCanvasController shouldSupportedDynamicOperationsEnqueueCommandsInRealTime])
    {
LABEL_5:

      goto LABEL_6;
    }

    allowsSupportedDynamicOperationsToBeRealTime = [(CRLCanvasRep *)self->mRep allowsSupportedDynamicOperationsToBeRealTime];

    if (allowsSupportedDynamicOperationsToBeRealTime)
    {
      interactiveCanvasController2 = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
      interactiveCanvasController = [interactiveCanvasController2 commandController];

      [interactiveCanvasController openGroup];
      [interactiveCanvasController enableRealTimeSyncProgressiveEnqueuingInCurrentGroup];
      self->mIsEnqueueingCommandsInRealTime = 1;
      goto LABEL_5;
    }
  }

LABEL_6:
  if (![(CRLCanvasRepDragTracker *)self p_delegateIsHandlingDrag]&& self->mDelegate && !self->mInWillBeginDynamicOperation)
  {
    self->mInWillBeginDynamicOperation = 1;
    [(CRLCanvasRepDragTracker *)self p_didBeginDrag];
    interactiveCanvasController3 = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
    v9 = [(CRLCanvasRepDragTracker *)self p_infosFromReps:repsCopy];
    v10 = [(CRLCanvasRepDragTrackerDelegate *)self->mDelegate dragTracker:self drawablesToDrag:v9 hitRep:self->mRep];
    v11 = [(CRLCanvasRepDragTracker *)self p_repsForInfos:v10 fromReps:repsCopy];
    v41 = v9;
    v42 = repsCopy;
    v39 = v11;
    v40 = v10;
    if ([(CRLCanvasRepDragTrackerDelegate *)self->mDelegate dragTracker:self willBeginDraggingReps:v11 atPoint:self->mActualDragPoint.x, self->mActualDragPoint.y])
    {
      [interactiveCanvasController3 layoutIfNeeded];
      info = [(CRLCanvasRep *)self->mRep info];
      v13 = [interactiveCanvasController3 repForInfo:info];

      if (v13 && v13 != self->mRep)
      {
        [(CRLCanvasRepDragTracker *)self setRep:v13];
      }

      selfCopy = self;
      v14 = +[NSMutableSet set];
      v43 = +[NSMutableSet set];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v15 = repsCopy;
      v16 = [v15 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v51;
        do
        {
          v19 = 0;
          v20 = v13;
          do
          {
            if (*v51 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v50 + 1) + 8 * v19);
            info2 = [(CRLCanvasRep *)v21 info];
            v13 = [interactiveCanvasController3 repForInfo:info2];

            if (v13)
            {
              v23 = v13 == v21;
            }

            else
            {
              v23 = 1;
            }

            if (!v23)
            {
              [v43 addObject:v21];
              [v14 addObject:v13];
            }

            v19 = v19 + 1;
            v20 = v13;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v50 objects:v55 count:16];
        }

        while (v17);
      }

      v24 = v14;
      v25 = [v14 count];
      v26 = v43;
      self = selfCopy;
      v11 = v39;
      if (v25 != [v43 count])
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101397D2C();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101397D54();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101397DDC();
        }

        v27 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v27);
        }

        v28 = [NSString stringWithUTF8String:"[CRLCanvasRepDragTracker willBeginDynamicOperationForReps:]"];
        v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepDragTracker.m"];
        [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:533 isFatal:0 description:"number of reps uneven for attached drag"];

        v26 = v43;
      }

      repsCopy = v42;
      if ([v24 count])
      {
        dynamicOperationController = [interactiveCanvasController3 dynamicOperationController];
        [dynamicOperationController stopTransformingReps:v26];

        dynamicOperationController2 = [interactiveCanvasController3 dynamicOperationController];
        [dynamicOperationController2 startTransformingReps:v24];
      }

      v10 = v40;
      v9 = v41;
    }

    if (![(CRLCanvasRepDragTracker *)self isInspectorDrivenTracking])
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v32 = repsCopy;
      v33 = [v32 countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v47;
        do
        {
          for (i = 0; i != v34; i = i + 1)
          {
            if (*v47 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v46 + 1) + 8 * i);
            v44[0] = _NSConcreteStackBlock;
            v44[1] = 3221225472;
            v44[2] = sub_100590964;
            v44[3] = &unk_101870D98;
            v45 = interactiveCanvasController3;
            [(CRLCanvasRepDragTracker *)self p_makeSiblingRepsOfRep:v37 performBlock:v44];
          }

          v34 = [v32 countByEnumeratingWithState:&v46 objects:v54 count:16];
        }

        while (v34);
      }

      v9 = v41;
      repsCopy = v42;
      v11 = v39;
      v10 = v40;
    }

    self->mInWillBeginDynamicOperation = 0;
  }
}

- (void)changeDynamicLayoutsForReps:(id)reps
{
  repsCopy = reps;
  if (self->mDidBeginDrag || (self->mUnscaledDragDelta.x == CGPointZero.x ? (v5 = self->mUnscaledDragDelta.y == CGPointZero.y) : (v5 = 0), !v5))
  {
    v206 = repsCopy;
    selfCopy = self;
    interactiveCanvasController = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
    selfCopy2 = self;
    if (self->mRoundDragDelta)
    {
      viewScale = [interactiveCanvasController viewScale];
      x = self->mUnscaledDragDelta.x;
      y = self->mUnscaledDragDelta.y;
      v11 = sub_10012218C(viewScale, x, y, v10);
      v13 = v12;
    }

    else
    {
      v11 = self->mUnscaledDragDelta.x;
      v13 = self->mUnscaledDragDelta.y;
      x = v11;
      y = v13;
    }

    self->mUnscaledDragDelta.x = sub_10011F31C(x, y, v11);
    self->mUnscaledDragDelta.y = v14;
    [(CRLCanvasRepDragTracker *)self p_didBeginDrag];
    if ([(CRLCanvasRepDragTracker *)self p_delegateIsHandlingDrag])
    {
LABEL_214:
      [(CRLCanvasRepDragTracker *)selfCopy2 p_updateRepsBeingHoveredAtCurrentDragPoint];
      selfCopy->mPreviousActualDragPoint = selfCopy->mActualDragPoint;
      selfCopy->mHaveSetPreviousActualDragPoint = 1;

      repsCopy = v206;
      goto LABEL_215;
    }

    shouldSnapToGuides = [(CRLCanvasRepDragTracker *)self shouldSnapToGuides];
    if (shouldSnapToGuides)
    {
      v16 = fabs(v13);
      v17 = v206;
      if (fabs(v11) >= 6.0)
      {
        shouldShowGuides = [(CRLCanvasRepDragTracker *)selfCopy2 shouldShowGuides];
        v19 = 0;
        shouldShowGuides2 = 1;
        v18 = v16 < 6.0;
      }

      else
      {
        shouldShowGuides = 1;
        v18 = v16 < 6.0;
        v19 = 1;
        shouldShowGuides2 = 1;
      }

      v20 = 1;
      shouldShowGuides3 = 1;
      if (v18)
      {
LABEL_17:
        v214 = v20;
        v264 = 0u;
        v265 = 0u;
        v262 = 0u;
        v263 = 0u;
        v21 = v17;
        v22 = [v21 countByEnumeratingWithState:&v262 objects:v286 count:16];
        if (v22)
        {
          v23 = *v263;
          while (2)
          {
            for (i = 0; i != v22; i = i + 1)
            {
              if (*v263 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = [(NSMapTable *)selfCopy->mMapRepsToSnapOffsets objectForKey:*(*(&v262 + 1) + 8 * i)];
              if (!v25)
              {
                [(NSMapTable *)selfCopy->mMapRepsToSnapOffsets removeAllObjects];
                goto LABEL_27;
              }
            }

            v22 = [v21 countByEnumeratingWithState:&v262 objects:v286 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

LABEL_27:

        v260 = 0u;
        v261 = 0u;
        v258 = 0u;
        v259 = 0u;
        v26 = v21;
        v27 = [v26 countByEnumeratingWithState:&v258 objects:v285 count:16];
        if (v27)
        {
          v28 = *v259;
          do
          {
            for (j = 0; j != v27; j = j + 1)
            {
              if (*v259 != v28)
              {
                objc_enumerationMutation(v26);
              }

              v30 = *(*(&v258 + 1) + 8 * j);
              if (([v30 isBeingDragged] & 1) == 0)
              {
                [v30 dynamicDragDidBegin];
              }
            }

            v27 = [v26 countByEnumeratingWithState:&v258 objects:v285 count:16];
          }

          while (v27);
        }

        commandController = [interactiveCanvasController commandController];
        v31 = selfCopy;
        if (selfCopy->mIsEnqueueingCommandsInRealTime)
        {
          [commandController openGroup];
          v31 = selfCopy;
        }

        v217 = [(CRLCanvasRepDragTracker *)v31 repsForGuidesWhenManipulatingReps:v26];
        v256 = 0u;
        v257 = 0u;
        v254 = 0u;
        v255 = 0u;
        v32 = v26;
        v33 = [v32 countByEnumeratingWithState:&v254 objects:v284 count:16];
        v35 = CGRectZero.origin.x;
        v34 = CGRectZero.origin.y;
        width = CGRectZero.size.width;
        rect = CGRectZero.size.height;
        if (v33)
        {
          v36 = *v255;
          do
          {
            for (k = 0; k != v33; k = k + 1)
            {
              if (*v255 != v36)
              {
                objc_enumerationMutation(v32);
              }

              v38 = *(*(&v254 + 1) + 8 * k);
              layout = [v38 layout];
              v40 = [(NSMapTable *)selfCopy->mMapRepsToSnapOffsets objectForKey:v38];
              v41 = v40;
              v42 = CGPointZero.x;
              if (v40)
              {
                [v40 CGPointValue];
                v42 = v43;
              }

              v44 = sub_10011F31C(v11, v13, v42);
              v46 = v45;
              if ([v38 shouldShowSizesInRulers] && objc_msgSend(v217, "containsObject:", v38))
              {
                [v38 snapRectForDynamicDragWithOffset:{v44, v46}];
                v35 = sub_10011FC04(v35, v34, width, rect, v47, v48, v49, v50);
                v34 = v51;
                width = v52;
                rect = v53;
              }

              [layout dragByUnscaled:{v44, v46}];
            }

            v33 = [v32 countByEnumeratingWithState:&v254 objects:v284 count:16];
          }

          while (v33);
        }

        v54 = selfCopy;
        if (selfCopy->mIsEnqueueingCommandsInRealTime)
        {
          [commandController closeGroup];
          v54 = selfCopy;
        }

        v56 = CGPointZero.x;
        v55 = CGPointZero.y;
        v213 = v55;
        if (v54->mShouldConstrain)
        {
          [(CRLCanvasRep *)v54->mRep i_dragOffset];
          v58 = v57;
          v60 = v59;
          v61 = sub_100120074(v57, v59);
          v62 = +[UIDevice crl_phoneUI];
          [interactiveCanvasController viewScale];
          if (v61 == 0.0)
          {
            v64 = selfCopy;
            selfCopy->mConstraintAngle = -1.0;
            mConstraintAngle = -1.0;
          }

          else
          {
            v66 = 200.0;
            if (v62)
            {
              v66 = 50.0;
            }

            v64 = selfCopy;
            if (v61 > v66 / v63 || (mConstraintAngle = selfCopy->mConstraintAngle, mConstraintAngle < 0.0))
            {
              v67 = acos(v58 / v61);
              if (v60 < 0.0)
              {
                v67 = 6.28318531 - v67;
              }

              mConstraintAngle = round(v67 / 0.785398163) * 0.785398163;
              selfCopy->mConstraintAngle = mConstraintAngle;
            }
          }

          v68 = __sincos_stret(mConstraintAngle);
          v69 = sub_10011F328(v68.__cosval, v68.__sinval, v58, v60);
          v70 = sub_10011F340(v68.__cosval, v68.__sinval, v69);
          mSnapLevel = v64->mSnapLevel;
          if (mSnapLevel != 0.0)
          {
            v70 = mSnapLevel * round(v70 / mSnapLevel);
            v71 = mSnapLevel * round(v71 / mSnapLevel);
          }

          v56 = sub_10011F31C(v70, v71, v58);
          v55 = v73;
          v35 = sub_10011F334(v35, v34, v56);
          v34 = v74;
        }

        v250 = 0;
        v251 = &v250;
        v252 = 0x2020000000;
        v253 = 0;
        allObjects = [v32 allObjects];
        v249[0] = _NSConcreteStackBlock;
        v249[1] = 3221225472;
        v249[2] = sub_1005920E0;
        v249[3] = &unk_101870DC0;
        v249[4] = &v250;
        v76 = [allObjects crl_allObjectsPassTest:v249];

        v78 = v213;
        v77 = CGPointZero.x;
        v79 = selfCopy;
        if ((shouldSnapToGuides & v76) == 1)
        {
          if (!selfCopy->mShouldConstrain || selfCopy->mSnapLevel == 0.0 || (v78 = v213, v77 = CGPointZero.x, [interactiveCanvasController isCanvasBackgroundAlignmentSnappingEnabled]))
          {
            guideController = [interactiveCanvasController guideController];
            if ([interactiveCanvasController isCanvasBackgroundAlignmentSnappingEnabled] && objc_msgSend(v32, "count") == 1)
            {
              anyObject = [v32 anyObject];
              v82 = objc_opt_class();
              layout2 = [anyObject layout];
              v84 = sub_100014370(v82, layout2);

              if (v84 && [v84 pathIsLineSegment])
              {
                v85 = objc_opt_class();
                layout3 = [anyObject layout];
                v87 = sub_100014370(v85, layout3);

                if (v87 && ([v87 isStraightLine] & 1) == 0)
                {
                  [guideController snapRectToGuides:0 forKnobTag:1 snapSize:1 snapWithBackgroundAlignmentProvider:0 isLine:v35 startPoint:v34 endPoint:{width, rect, CGPointZero.x, v213, CGPointZero.x, v213}];
                }

                else
                {
                  [v84 tailPoint];
                  [v84 convertNaturalPointToUnscaledCanvas:?];
                  v89 = v88;
                  v91 = v90;
                  [v84 headPoint];
                  [v84 convertNaturalPointToUnscaledCanvas:?];
                  [guideController snapRectToGuides:0 forKnobTag:1 snapSize:1 snapWithBackgroundAlignmentProvider:1 isLine:v35 startPoint:v34 endPoint:{width, rect, v89, v91, v92, v93}];
                }

                v77 = v94;
                v78 = v95;
              }

              else
              {
                LOBYTE(v204) = *(v251 + 24) ^ 1;
                [guideController snapRectToGuides:0 forKnobTag:1 snapSize:1 snapWithBackgroundAlignmentProvider:0 isLine:0 startPoint:0 endPoint:v35 hasHorizontalFlip:v34 hasVerticalFlip:width snapWithGuides:{rect, CGPointZero.x, v213, CGPointZero.x, v213, v204}];
                v77 = v99;
                v78 = v100;
              }
            }

            else
            {
              isCanvasBackgroundAlignmentSnappingEnabled = [interactiveCanvasController isCanvasBackgroundAlignmentSnappingEnabled];
              LOBYTE(v204) = *(v251 + 24) ^ 1;
              [guideController snapRectToGuides:0 forKnobTag:1 snapSize:isCanvasBackgroundAlignmentSnappingEnabled snapWithBackgroundAlignmentProvider:0 isLine:0 startPoint:0 endPoint:v35 hasHorizontalFlip:v34 hasVerticalFlip:width snapWithGuides:{rect, CGPointZero.x, v213, CGPointZero.x, v213, v204}];
              v77 = v97;
              v78 = v98;
            }

            v101 = +[NSMutableArray array];
            v247 = 0u;
            v248 = 0u;
            v245 = 0u;
            v246 = 0u;
            v102 = v32;
            v103 = [v102 countByEnumeratingWithState:&v245 objects:v283 count:16];
            if (v103)
            {
              v104 = *v246;
              do
              {
                for (m = 0; m != v103; m = m + 1)
                {
                  if (*v246 != v104)
                  {
                    objc_enumerationMutation(v102);
                  }

                  v106 = [*(*(&v245 + 1) + 8 * m) additionalRectsForSnappingWithOffset:{v56, v55}];
                  [v101 addObjectsFromArray:v106];
                }

                v103 = [v102 countByEnumeratingWithState:&v245 objects:v283 count:16];
              }

              while (v103);
            }

            if ([v101 count])
            {
              didJustSnapInX = [guideController didJustSnapInX];
              didJustSnapInY = [guideController didJustSnapInY];
              v109 = didJustSnapInY;
              if (didJustSnapInX)
              {
                v110 = v77;
              }

              else
              {
                v110 = 1.79769313e308;
              }

              v243 = 0u;
              v244 = 0u;
              if (didJustSnapInY)
              {
                v111 = v78;
              }

              else
              {
                v111 = 1.79769313e308;
              }

              v241 = 0uLL;
              v242 = 0uLL;
              v112 = v101;
              v113 = [v112 countByEnumeratingWithState:&v241 objects:v282 count:16];
              v211 = v19;
              if (v113)
              {
                v114 = *v242;
                do
                {
                  for (n = 0; n != v113; n = n + 1)
                  {
                    if (*v242 != v114)
                    {
                      objc_enumerationMutation(v112);
                    }

                    [*(*(&v241 + 1) + 8 * n) CGRectValue];
                    [guideController snapRectToGuides:?];
                    v117 = v116;
                    v119 = v118;
                    didJustSnapInX2 = [guideController didJustSnapInX];
                    didJustSnapInY2 = [guideController didJustSnapInY];
                    v122 = didJustSnapInX2 & (v117 < v110);
                    if (v122)
                    {
                      v110 = v117;
                    }

                    LOBYTE(didJustSnapInX) = v122 | didJustSnapInX;
                    v109 |= didJustSnapInY2 & (v119 < v111);
                    if ((didJustSnapInY2 & (v119 < v111)) != 0)
                    {
                      v111 = v119;
                    }
                  }

                  v113 = [v112 countByEnumeratingWithState:&v241 objects:v282 count:16];
                }

                while (v113);
              }

              v19 = v211;
              [guideController setDidJustSnapInX:didJustSnapInX & 1];
              if (v111 == 1.79769313e308)
              {
                v78 = 0.0;
              }

              else
              {
                v78 = v111;
              }

              if (v110 == 1.79769313e308)
              {
                v77 = 0.0;
              }

              else
              {
                v77 = v110;
              }

              [guideController setDidJustSnapInY:v109 & 1];
            }

            canvasBackground = [interactiveCanvasController canvasBackground];
            alignmentProvider = [canvasBackground alignmentProvider];
            v125 = [interactiveCanvasController isCanvasBackgroundAlignmentSnappingEnabled] & (alignmentProvider != 0);
            if (!(v19 | v125))
            {
              v77 = 0.0;
            }

            if (!(v214 | v125))
            {
              v78 = 0.0;
            }

            v79 = selfCopy;
          }
        }

        if (!v79->mShouldConstrain)
        {
          goto LABEL_161;
        }

        v126 = __sincos_stret(v79->mConstraintAngle);
        sinval = v126.__sinval;
        if (v126.__cosval == 0.0 || fabs(v126.__cosval) < 0.00999999978)
        {
          v131 = 0;
          v134 = 0;
          v130 = v78 != 0.0;
          v77 = 0.0;
        }

        else
        {
          v128 = v126.__sinval == 0.0;
          if (fabs(v126.__sinval) < 0.00999999978)
          {
            v128 = 1;
          }

          v129 = 0.0;
          if (!v128)
          {
            v129 = v78;
          }

          v130 = v129 != 0.0;
          v131 = v77 != 0.0;
          if (v77 == 0.0 || v129 == 0.0)
          {
            v78 = v129;
            v134 = v77 != 0.0;
          }

          else
          {
            v132 = fabs(v77);
            v133 = fabs(v78);
            if (v128)
            {
              v133 = 0.0;
            }

            v134 = v132 < v133;
            v130 = 1;
            v131 = 1;
            v78 = v129;
          }
        }

        v77 = sub_10011F334(v77, v78, v56);
        v78 = v135;
        v35 = sub_10011F31C(v35, v34, v56);
        v34 = v136;
        [(CRLCanvasRep *)v79->mRep i_dragOffset];
        v215 = v137;
        v139 = sub_10011F334(v137, v138, v77);
        v141 = v140;
        v142 = sub_100120074(v139, v140);
        v143 = v142;
        if (!v131 && !v130)
        {
LABEL_159:
          if (v143 > 0.0)
          {
            v158 = sub_10011F328(v126.__cosval, sinval, v139, v141);
            v159 = sub_10011F340(v126.__cosval, sinval, v158);
            v77 = sub_10011F31C(v159, v160, v215);
            v78 = v161;
          }

LABEL_161:
          [(NSMapTable *)v79->mMapRepsToSnapOffsets removeAllObjects];
          if (v79->mIsEnqueueingCommandsInRealTime)
          {
            [commandController openGroup];
          }

          v239 = 0u;
          v240 = 0u;
          v237 = 0u;
          v238 = 0u;
          v162 = v32;
          v163 = [v162 countByEnumeratingWithState:&v237 objects:v281 count:16];
          if (v163)
          {
            v164 = *v238;
            do
            {
              for (ii = 0; ii != v163; ii = ii + 1)
              {
                if (*v238 != v164)
                {
                  objc_enumerationMutation(v162);
                }

                v166 = *(*(&v237 + 1) + 8 * ii);
                layout4 = [v166 layout];
                [layout4 dragByUnscaled:{v77, v78}];
                mMapRepsToSnapOffsets = selfCopy->mMapRepsToSnapOffsets;
                v169 = [NSValue valueWithCGPoint:v77, v78];
                [(NSMapTable *)mMapRepsToSnapOffsets setObject:v169 forKey:v166];
              }

              v163 = [v162 countByEnumeratingWithState:&v237 objects:v281 count:16];
            }

            while (v163);
          }

          if (selfCopy->mIsEnqueueingCommandsInRealTime)
          {
            [commandController closeGroup];
          }

          v287.origin.x = v35;
          v287.origin.y = v34;
          v287.size.width = width;
          v287.size.height = rect;
          v288 = CGRectOffset(v287, v77, v78);
          v171 = v213;
          v170 = CGPointZero.x;
          if (shouldShowGuides2)
          {
            v172 = v288.origin.x;
            v173 = v288.origin.y;
            v174 = v288.size.width;
            height = v288.size.height;
            guideController2 = [interactiveCanvasController guideController];
            [guideController2 showGuidesAlignedWithRect:shouldShowGuides shouldRenderX:shouldShowGuides3 shouldRenderY:{v172, v173, v174, height}];
            [guideController2 setDoNotRemoveExistingGuidesWhenDisplaying:1];
            recta = guideController2;
            v235 = 0u;
            v236 = 0u;
            v233 = 0u;
            v234 = 0u;
            obja = v162;
            v212 = [obja countByEnumeratingWithState:&v233 objects:v280 count:16];
            if (v212)
            {
              v210 = *v234;
              do
              {
                for (jj = 0; jj != v212; jj = jj + 1)
                {
                  if (*v234 != v210)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v177 = *(*(&v233 + 1) + 8 * jj);
                  v178 = [v177 additionalRectsForSnappingWithOffset:{v170, v171}];
                  v231 = 0u;
                  v232 = 0u;
                  v229 = 0u;
                  v230 = 0u;
                  v179 = v178;
                  v180 = [v179 countByEnumeratingWithState:&v229 objects:v279 count:16];
                  if (v180)
                  {
                    v181 = *v230;
                    do
                    {
                      for (kk = 0; kk != v180; kk = kk + 1)
                      {
                        if (*v230 != v181)
                        {
                          objc_enumerationMutation(v179);
                        }

                        [*(*(&v229 + 1) + 8 * kk) CGRectValue];
                        v187 = v183;
                        v188 = v184;
                        v189 = v185;
                        v190 = v186;
                        if (v185 <= 0.0 || v186 <= 0.0)
                        {
                          v191 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                          if (qword_101AD5A10 != -1)
                          {
                            sub_101398014();
                          }

                          v192 = off_1019EDA68;
                          if (os_log_type_enabled(v192, OS_LOG_TYPE_ERROR))
                          {
                            v290.origin.x = v187;
                            v290.origin.y = v188;
                            v290.size.width = v189;
                            v290.size.height = v190;
                            v197 = NSStringFromCGRect(v290);
                            *buf = 67110402;
                            v268 = v191;
                            v269 = 2082;
                            v270 = "[CRLCanvasRepDragTracker changeDynamicLayoutsForReps:]";
                            v271 = 2082;
                            v272 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepDragTracker.m";
                            v273 = 1024;
                            v274 = 995;
                            v275 = 2112;
                            v276 = v197;
                            v277 = 2112;
                            v278 = v177;
                            _os_log_error_impl(&_mh_execute_header, v192, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Invalid additional snapping rect %@ from rep %@! Ignoring.", buf, 0x36u);
                          }

                          if (qword_101AD5A10 != -1)
                          {
                            sub_10139803C();
                          }

                          v193 = off_1019EDA68;
                          if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
                          {
                            v198 = +[CRLAssertionHandler packedBacktraceString];
                            *buf = 67109378;
                            v268 = v191;
                            v269 = 2114;
                            v270 = v198;
                            _os_log_error_impl(&_mh_execute_header, v193, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
                          }

                          v194 = [NSString stringWithUTF8String:"[CRLCanvasRepDragTracker changeDynamicLayoutsForReps:]"];
                          v195 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepDragTracker.m"];
                          v289.origin.x = v187;
                          v289.origin.y = v188;
                          v289.size.width = v189;
                          v289.size.height = v190;
                          v196 = NSStringFromCGRect(v289);
                          [CRLAssertionHandler handleFailureInFunction:v194 file:v195 lineNumber:995 isFatal:0 description:"Invalid additional snapping rect %@ from rep %@! Ignoring.", v196, v177];
                        }

                        else
                        {
                          [recta showGuidesAlignedWithRect:shouldShowGuides shouldRenderX:shouldShowGuides3 shouldRenderY:{v183, v184, v185, v186}];
                        }
                      }

                      v180 = [v179 countByEnumeratingWithState:&v229 objects:v279 count:16];
                    }

                    while (v180);
                  }

                  v171 = v213;
                  v170 = CGPointZero.x;
                }

                v212 = [obja countByEnumeratingWithState:&v233 objects:v280 count:16];
              }

              while (v212);
            }

            guideController3 = recta;
            [recta setDoNotRemoveExistingGuidesWhenDisplaying:0];
          }

          else
          {
            guideController3 = [interactiveCanvasController guideController];
            [guideController3 hideAlignmentGuides];
          }

          if (selfCopy->mShouldConstrain)
          {
            if (!selfCopy->mConstraintGuidesShowing)
            {
              [(CRLCanvasRepDragTracker *)selfCopy p_showGuideRenderable];
            }
          }

          else if (selfCopy->mConstraintGuidesShowing)
          {
            [(CRLCanvasRepDragTracker *)selfCopy p_hideGuideRenderable];
          }

          v227 = 0u;
          v228 = 0u;
          v225 = 0u;
          v226 = 0u;
          v200 = selfCopy->mParentLayoutsForInvalidatingForAncestorCollabCursors;
          v201 = [(NSMutableSet *)v200 countByEnumeratingWithState:&v225 objects:v266 count:16];
          if (v201)
          {
            v202 = *v226;
            do
            {
              for (mm = 0; mm != v201; mm = mm + 1)
              {
                if (*v226 != v202)
                {
                  objc_enumerationMutation(v200);
                }

                [*(*(&v225 + 1) + 8 * mm) invalidateFrame];
              }

              v201 = [(NSMutableSet *)v200 countByEnumeratingWithState:&v225 objects:v266 count:16];
            }

            while (v201);
          }

          [(CRLCanvasRepDragTracker *)selfCopy p_updateHUDAtPoint:selfCopy->mLogicalDragPoint.x, selfCopy->mLogicalDragPoint.y];
          _Block_object_dispose(&v250, 8);

          selfCopy2 = selfCopy;
          goto LABEL_214;
        }

        if (v134)
        {
          if (v126.__cosval != 0.0)
          {
            v144 = v139 / v126.__cosval;
LABEL_138:
            v145 = fabs(v144);
LABEL_158:
            v156 = v143;
            v139 = sub_10011F340(v139, v141, v145 / v143);
            v141 = v157;
            v143 = v156;
            sinval = v126.__sinval;
            goto LABEL_159;
          }

          obj = v142;
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101397F3C();
          }

          v146 = off_1019EDA68;
          if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
          {
            sub_101397F64();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101397FEC();
          }

          v147 = off_1019EDA68;
          if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
          {
            v148 = +[CRLAssertionHandler packedBacktraceString];
            sub_101397EDC(v148);
          }

          v149 = [NSString stringWithUTF8String:"[CRLCanvasRepDragTracker changeDynamicLayoutsForReps:]"];
          v150 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepDragTracker.m"];
          [CRLAssertionHandler handleFailureInFunction:v149 file:v150 lineNumber:842 isFatal:0 description:"prioritizing X offset with a unit direction that doesn't have an X value!"];
        }

        else
        {
          if (v126.__sinval != 0.0)
          {
            v144 = v141 / v126.__sinval;
            goto LABEL_138;
          }

          obj = v142;
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101397E04();
          }

          v151 = off_1019EDA68;
          if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
          {
            sub_101397E2C();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101397EB4();
          }

          v152 = off_1019EDA68;
          if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
          {
            v153 = +[CRLAssertionHandler packedBacktraceString];
            sub_101397EDC(v153);
          }

          v154 = [NSString stringWithUTF8String:"[CRLCanvasRepDragTracker changeDynamicLayoutsForReps:]"];
          v155 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasRepDragTracker.m"];
          [CRLAssertionHandler handleFailureInFunction:v154 file:v155 lineNumber:850 isFatal:0 description:"prioritizing Y offset with a unit direction that doesn't have an Y value!"];
        }

        v143 = obj;
        v145 = obj;
        v79 = selfCopy;
        goto LABEL_158;
      }
    }

    else
    {
      shouldShowGuides2 = [(CRLCanvasRepDragTracker *)self shouldShowGuides];
      shouldShowGuides = [(CRLCanvasRepDragTracker *)self shouldShowGuides];
      v19 = 0;
      v17 = v206;
    }

    shouldShowGuides3 = [(CRLCanvasRepDragTracker *)selfCopy2 shouldShowGuides];
    v20 = 0;
    goto LABEL_17;
  }

LABEL_215:
}

- (void)commitChangesForReps:(id)reps
{
  repsCopy = reps;
  interactiveCanvasController = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];
  [commandController openGroup];
  if (self->mDidDuplicateWhenDragBegan)
  {
    v7 = +[NSBundle mainBundle];
    anyObject = v7;
    v9 = @"Duplicate";
  }

  else
  {
    if ([repsCopy count] == 1)
    {
      anyObject = [repsCopy anyObject];
      actionStringForDrag = [anyObject actionStringForDrag];
      goto LABEL_7;
    }

    v7 = +[NSBundle mainBundle];
    anyObject = v7;
    v9 = @"Move";
  }

  actionStringForDrag = [v7 localizedStringForKey:v9 value:0 table:@"UndoStrings"];
LABEL_7:
  v11 = actionStringForDrag;
  [commandController setCurrentGroupActionString:actionStringForDrag];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = repsCopy;
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        if ([v17 isBeingDragged])
        {
          [v17 dynamicDragDidEndAt:{self->mActualDragPoint.x, self->mActualDragPoint.y}];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v14);
  }

  p_repsBeingHoveredAtCurrentDragPoint = [(CRLCanvasRepDragTracker *)self p_repsBeingHoveredAtCurrentDragPoint];
  p_orderedDraggedReps = [(CRLCanvasRepDragTracker *)self p_orderedDraggedReps];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = p_repsBeingHoveredAtCurrentDragPoint;
  v21 = [v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v29;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v28 + 1) + 8 * j) performAdditionalWorkToCommitDragTrackerAt:p_orderedDraggedReps withDraggedReps:{self->mActualDragPoint.x, self->mActualDragPoint.y, v28}];
      }

      v22 = [v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v22);
  }

  [(NSMutableSet *)self->mPreviousHoveredReps removeAllObjects];
  [commandController closeGroup];
  if (self->mIsEnqueueingCommandsInRealTime)
  {
    v25 = [CRLCanvasCommandSelectionBehavior alloc];
    canvasEditor = [interactiveCanvasController canvasEditor];
    v27 = [(CRLCanvasCommandSelectionBehavior *)v25 initWithCanvasEditor:canvasEditor type:2];

    [commandController closeGroupWithSelectionBehavior:v27];
  }
}

- (id)repsForGuidesWhenManipulatingReps:(id)reps
{
  v3 = [reps mutableCopy];

  return v3;
}

- (BOOL)supportsAlignmentGuides
{
  if ([(CRLCanvasRepDragTracker *)self p_delegateIsHandlingDrag])
  {
    return 0;
  }

  else
  {
    return ![(CRLCanvasRepDragTracker *)self isArrowkeyDrivenTracking];
  }
}

- (void)didChangeCurrentlyTransformingReps
{
  if (byte_101A35520)
  {
    return;
  }

  byte_101A35520 = 1;
  interactiveCanvasController = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  dynamicOperationController = [interactiveCanvasController dynamicOperationController];
  v4 = objc_alloc_init(NSMutableSet);
  v47 = objc_alloc_init(NSMutableSet);
  currentlyTransformingReps = [dynamicOperationController currentlyTransformingReps];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v6 = [currentlyTransformingReps countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v61;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v61 != v8)
        {
          objc_enumerationMutation(currentlyTransformingReps);
        }

        v10 = *(*(&v60 + 1) + 8 * i);
        if (-[CRLCanvasRepDragTracker isDragInsertDrivenTracking](self, "isDragInsertDrivenTracking") || ([v10 isSelected] & 1) != 0)
        {
          if ([v10 isSelected])
          {
            additionalRepsForDragging = [v10 additionalRepsForDragging];
            [v4 unionSet:additionalRepsForDragging];
          }
        }

        else
        {
          [v47 addObject:v10];
        }
      }

      v7 = [currentlyTransformingReps countByEnumeratingWithState:&v60 objects:v66 count:16];
    }

    while (v7);
  }

  [v47 minusSet:v4];
  [v4 minusSet:currentlyTransformingReps];
  if ([v4 count])
  {
    [dynamicOperationController startTransformingReps:v4];
  }

  if ([v47 count])
  {
    [dynamicOperationController stopTransformingReps:v47];
  }

  v45 = dynamicOperationController;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = currentlyTransformingReps;
  v12 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v57;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v57 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v56 + 1) + 8 * j);
        layout = [v16 layout];
        connectedLayouts = [layout connectedLayouts];

        if (connectedLayouts)
        {
          [(NSMutableSet *)self->mConnectedLineLayouts unionSet:connectedLayouts];
        }

        parentRep = [v16 parentRep];
        if (parentRep)
        {
          v20 = parentRep;
          while (![v20 shouldShowCollaboratorCursorHighlight])
          {
            parentRep2 = [v20 parentRep];

            v20 = parentRep2;
            if (!parentRep2)
            {
              goto LABEL_31;
            }
          }

          mParentLayoutsForInvalidatingForAncestorCollabCursors = self->mParentLayoutsForInvalidatingForAncestorCollabCursors;
          parentRep3 = [v16 parentRep];
          layout2 = [parentRep3 layout];
          [(NSMutableSet *)mParentLayoutsForInvalidatingForAncestorCollabCursors addObject:layout2];
        }

LABEL_31:
      }

      v13 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v13);
  }

  v25 = obj;

  v46 = objc_alloc_init(NSMutableSet);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v50 = self->mConnectedLineLayouts;
  v26 = [(NSMutableSet *)v50 countByEnumeratingWithState:&v52 objects:v64 count:16];
  v27 = interactiveCanvasController;
  if (!v26)
  {
    goto LABEL_49;
  }

  v28 = v26;
  v29 = *v53;
  do
  {
    v30 = 0;
    v49 = v28;
    do
    {
      if (*v53 != v29)
      {
        objc_enumerationMutation(v50);
      }

      v31 = *(*(&v52 + 1) + 8 * v30);
      [v31 checkConnections];
      connectedTo = [v31 connectedTo];
      if (connectedTo)
      {
        v33 = connectedTo;
        connectedFrom = [v31 connectedFrom];

        if (connectedFrom)
        {
          v35 = v29;
          connectedTo2 = [v31 connectedTo];
          info = [connectedTo2 info];
          v38 = [v27 repForInfo:info];
          if ([v25 containsObject:v38])
          {
            connectedFrom2 = [v31 connectedFrom];
            info2 = [connectedFrom2 info];
            v41 = [v27 repForInfo:info2];
            v42 = [obj containsObject:v41];

            v27 = interactiveCanvasController;
            v25 = obj;

            v29 = v35;
            v28 = v49;
            if (!v42)
            {
              goto LABEL_47;
            }

            info3 = [v31 info];
            connectedTo2 = [interactiveCanvasController repForInfo:info3];

            if (connectedTo2)
            {
              [v46 addObject:connectedTo2];
            }

            v27 = interactiveCanvasController;
          }

          else
          {

            v29 = v35;
            v28 = v49;
          }
        }
      }

LABEL_47:
      v30 = v30 + 1;
    }

    while (v28 != v30);
    v28 = [(NSMutableSet *)v50 countByEnumeratingWithState:&v52 objects:v64 count:16];
  }

  while (v28);
LABEL_49:

  if ([v46 count])
  {
    [v45 startTransformingReps:v46];
  }

  byte_101A35520 = 0;
}

- (BOOL)traceIfDesiredForBeginOperation
{
  if (qword_101AD5D00 != -1)
  {
    sub_101398064();
  }

  v2 = off_1019F1120;
  if (os_log_type_enabled(off_1019F1120, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "begin drag operation", v4, 2u);
  }

  return 1;
}

- (BOOL)traceIfDesiredForEndOperation
{
  interactiveCanvasController = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  dynamicOperationController = [interactiveCanvasController dynamicOperationController];
  allTransformedReps = [dynamicOperationController allTransformedReps];
  [(CRLCanvasRep *)self->mRep i_dragOffset];
  v7 = v6;
  v9 = v8;
  if (qword_101AD5D00 != -1)
  {
    sub_101398078();
  }

  v10 = off_1019F1120;
  if (os_log_type_enabled(off_1019F1120, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v13 = 134218496;
    v14 = [allTransformedReps count];
    v15 = 2048;
    v16 = v7;
    v17 = 2048;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "end drag operation for %zi reps. Offset (%f, %f)", &v13, 0x20u);
  }

  return 1;
}

- (id)selectionBehaviorForReps:(id)reps
{
  p_repsBeingHoveredAtCurrentDragPoint = [(CRLCanvasRepDragTracker *)self p_repsBeingHoveredAtCurrentDragPoint];
  p_orderedDraggedReps = [(CRLCanvasRepDragTracker *)self p_orderedDraggedReps];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = p_repsBeingHoveredAtCurrentDragPoint;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) selectionBehaviorToCommitDragTrackerWithDraggedReps:{p_orderedDraggedReps, v14}];
        if (v11)
        {
          v12 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (NSArray)decoratorOverlayRenderables
{
  if (self->mConstraintGuidesShowing)
  {
    mGuideRenderable = self->mGuideRenderable;
    v2 = [NSArray arrayWithObjects:&mGuideRenderable count:1];
  }

  else
  {
    v2 = &__NSArray0__struct;
  }

  return v2;
}

- (void)p_updateHUDAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactiveCanvasController = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  if (self->mShowDragHUD)
  {
    if ([(CRLCanvasRep *)self->mRep shouldShowDragHUD])
    {
      dynamicOperationController = [interactiveCanvasController dynamicOperationController];
      currentlyTransformingReps = [dynamicOperationController currentlyTransformingReps];
      v8 = [currentlyTransformingReps count];

      if (v8 == 1)
      {
        [(CRLCanvasRepDragTracker *)self p_selectedInfosRect];
        v10 = v9;
        MinY = v11;
        v14 = v13;
        v16 = v15;
        canvas = [interactiveCanvasController canvas];
        isAnchoredAtRight = [canvas isAnchoredAtRight];

        if (isAnchoredAtRight)
        {
          v40.origin.x = v10;
          v40.origin.y = MinY;
          v40.size.width = v14;
          v40.size.height = v16;
          MaxX = CGRectGetMaxX(v40);
          v41.origin.x = v10;
          v41.origin.y = MinY;
          v41.size.width = v14;
          v41.size.height = v16;
          MinY = CGRectGetMinY(v41);
          v10 = -MaxX;
        }

        v20 = [interactiveCanvasController unitStringForPoint:{v10, MinY}];
        v21 = +[CRLCanvasHUDController sharedHUDController];
        [v21 setLabelText:v20];
        canvasView = [interactiveCanvasController canvasView];
        [v21 showHUDForKey:self forTouchPoint:canvasView inCanvasView:x withUpwardsNudge:{y, 75.0}];

        self->mHaveShownHUD = 1;
        goto LABEL_9;
      }
    }
  }

  if (self->mHaveShownHUD)
  {
    self->mHaveShownHUD = 0;
    v20 = +[CRLCanvasHUDController sharedHUDController];
    [v20 hideHUDForKey:self];
LABEL_9:
  }

  if (self->mShouldConstrain && ![(CRLCanvasRepDragTracker *)self shouldSuppressConstrainingHUD])
  {
    mConstraintAngle = self->mConstraintAngle;
    if (fabs(mConstraintAngle) >= 0.1 && fabs(mConstraintAngle + -6.28318531) >= 0.1 && fabs(mConstraintAngle + -3.14159265) >= 0.1)
    {
      if (fabs(mConstraintAngle + -1.57079633) >= 0.1 && fabs(mConstraintAngle + -4.71238898) >= 0.1)
      {
        if (self->mSnapLevel == 0.0)
        {
          v24 = +[NSBundle mainBundle];
          v25 = v24;
          v26 = @"Diagonal";
          goto LABEL_19;
        }

        v28 = +[NSBundle mainBundle];
        v25 = v28;
        v29 = @"Diagonal %i pt";
      }

      else
      {
        if (self->mSnapLevel == 0.0)
        {
          v24 = +[NSBundle mainBundle];
          v25 = v24;
          v26 = @"Vertical";
          goto LABEL_19;
        }

        v28 = +[NSBundle mainBundle];
        v25 = v28;
        v29 = @"Vertical %i pt";
      }
    }

    else
    {
      if (self->mSnapLevel == 0.0)
      {
        v24 = +[NSBundle mainBundle];
        v25 = v24;
        v26 = @"Horizontal";
LABEL_19:
        v27 = [v24 localizedStringForKey:v26 value:0 table:0];
LABEL_22:

        [(CRLCanvasHUDController *)self->mSecondHUDController setLabelText:v27];
        mSecondHUDController = self->mSecondHUDController;
        view = [(CRLCanvasHUDController *)mSecondHUDController view];
        [view frame];
        v34 = sub_10011F334(self->mConstrainingPoint.x, self->mConstrainingPoint.y, (v33 + v33) / 5.0);
        v36 = v35;
        canvasView2 = [interactiveCanvasController canvasView];
        [(CRLCanvasHUDController *)mSecondHUDController showHUDForKey:self forTouchPoint:canvasView2 inCanvasView:v34 withUpwardsNudge:v36, 75.0];

        self->mHaveShownSecondHUD = 1;
        goto LABEL_23;
      }

      v28 = +[NSBundle mainBundle];
      v25 = v28;
      v29 = @"Horizontal %i pt";
    }

    v30 = [v28 localizedStringForKey:v29 value:0 table:0];
    v27 = [NSString localizedStringWithFormat:v30, self->mSnapLevel];

    goto LABEL_22;
  }

  if (self->mHaveShownSecondHUD)
  {
    self->mHaveShownSecondHUD = 0;
    [(CRLCanvasHUDController *)self->mSecondHUDController hideHUDForKey:self];
  }

LABEL_23:
}

- (void)p_hideHUD
{
  if (self->mHaveShownHUD)
  {
    self->mHaveShownHUD = 0;
    v3 = +[CRLCanvasHUDController sharedHUDController];
    [v3 hideHUDForKey:self];
  }

  if (self->mHaveShownSecondHUD)
  {
    self->mHaveShownSecondHUD = 0;
    mSecondHUDController = self->mSecondHUDController;

    [(CRLCanvasHUDController *)mSecondHUDController hideHUDForKey:self];
  }
}

- (void)p_updateGuides
{
  interactiveCanvasController = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  guideController = [interactiveCanvasController guideController];
  [(CRLCanvasRepDragTracker *)self p_selectedInfosRect];
  [guideController showGuidesAlignedWithRect:1 shouldRenderX:1 shouldRenderY:?];
}

- (CGRect)p_selectedInfosRect
{
  interactiveCanvasController = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  dynamicOperationController = [interactiveCanvasController dynamicOperationController];
  currentlyTransformingReps = [dynamicOperationController currentlyTransformingReps];

  v9 = [currentlyTransformingReps countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    v12 = CGPointZero.y;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(currentlyTransformingReps);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        if ([v14 shouldShowSizesInRulers])
        {
          [v14 snapRectForDynamicDragWithOffset:{CGPointZero.x, v12}];
          x = sub_10011FC04(x, y, width, height, v15, v16, v17, v18);
          y = v19;
          width = v20;
          height = v21;
        }
      }

      v10 = [currentlyTransformingReps countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)p_makeSiblingRepsOfRep:(id)rep performBlock:(id)block
{
  repCopy = rep;
  blockCopy = block;
  if (self->mDelegate && (objc_opt_respondsToSelector() & 1) != 0 && [(CRLCanvasRepDragTrackerDelegate *)self->mDelegate dragTracker:self shouldApplyToSiblingRepsForRep:repCopy])
  {
    interactiveCanvasController = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
    info = [repCopy info];
    v10 = [interactiveCanvasController repsForInfo:info];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if (*(*(&v16 + 1) + 8 * v15) != repCopy)
          {
            blockCopy[2](blockCopy);
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }
  }
}

- (BOOL)p_delegateIsHandlingDrag
{
  if (!self->mDelegate || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  mDelegate = self->mDelegate;

  return [(CRLCanvasRepDragTrackerDelegate *)mDelegate delegateDisplaysUIForRepDragTracker:self];
}

- (id)p_infosFromReps:(id)reps
{
  repsCopy = reps;
  v4 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(repsCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = repsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        info = [*(*(&v12 + 1) + 8 * i) info];
        [v4 addObject:info];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)p_repsForInfos:(id)infos fromReps:(id)reps
{
  infosCopy = infos;
  repsCopy = reps;
  v7 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(infosCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = repsCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        info = [v13 info];
        v15 = [infosCopy containsObject:info];

        if (v15)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

@end