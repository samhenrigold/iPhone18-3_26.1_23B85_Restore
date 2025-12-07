@interface BKTouchAnnotationController
+ (id)workQueue;
- (BKTouchAnnotationController)initWithDisplayUUID:(id)d;
- (BOOL)shouldVisualizeHitTestRegions;
- (BOOL)shouldVisualizeTouches;
- (id)_stringByRemovingPrefix:(id)prefix fromString:(id)string;
- (id)_stringDescribingContextID:(unsigned int)d clientPort:(unsigned int)port;
- (id)_stringDescribingPID:(int)d;
- (int)_pidForClientPort:(unsigned int)port;
- (void)_queue_annotateTouch:(unsigned int)touch withString:(id)string uniqueIdentifier:(id)identifier fromPID:(int)d;
- (void)_queue_applyBasicAnnotationTextForTouchIdentifier:(unsigned int)identifier pathIndex:(int64_t)index;
- (void)_queue_setCenter:(CGPoint)center forTouchIdentifier:(unsigned int)identifier;
- (void)_queue_touchWasHardCanceled:(unsigned int)canceled;
- (void)_queue_touchWasSoftCanceled:(unsigned int)canceled;
- (void)_queue_updateHoverStateForTouchIdentifier:(unsigned int)identifier z:(double)z maxZ:(double)maxZ;
- (void)annotateTouch:(unsigned int)touch withString:(id)string uniqueIdentifier:(id)identifier;
- (void)annotateTouch:(unsigned int)touch withString:(id)string uniqueIdentifier:(id)identifier fromPID:(int)d;
- (void)annotateTouch:(unsigned int)touch withUniqueString:(id)string;
- (void)hitTestRegionsDidChange:(id)change;
- (void)hitTestRegionsDidChangeSwift:(id)swift displayAnnotationController:(id)controller;
- (void)setShouldVisualizeHitTestRegions:(BOOL)regions;
- (void)setShouldVisualizeTouches:(BOOL)touches;
- (void)touch:(unsigned int)touch didAlwaysRouteToContext:(unsigned int)context clientPort:(unsigned int)port;
- (void)touch:(unsigned int)touch didHitTestToDestination:(id)destination hostingChainIndex:(int64_t)index;
- (void)touch:(unsigned int)touch didMoveToPoint:(CGPoint)point eventMask:(unsigned int)mask z:(double)z maxZ:(double)maxZ;
- (void)touch:(unsigned int)touch pathIndex:(int64_t)index downAtPoint:(CGPoint)point eventMask:(unsigned int)mask transducerType:(unsigned int)type;
- (void)touch:(unsigned int)touch pathIndex:(int64_t)index rangeInAtPoint:(CGPoint)point eventMask:(unsigned int)mask z:(double)z maxZ:(double)maxZ transducerType:(unsigned int)type;
- (void)touch:(unsigned int)touch pathIndex:(int64_t)index rangeOutAtPoint:(CGPoint)point;
- (void)touch:(unsigned int)touch pathIndex:(int64_t)index upAtPoint:(CGPoint)point detached:(BOOL)detached;
- (void)touchDidDetach:(unsigned int)detach destinations:(id)destinations;
- (void)touchDidHIDCancel:(unsigned int)cancel;
- (void)touchDidSoftCancel:(unsigned int)cancel;
- (void)touchDidTransfer:(unsigned int)transfer destination:(id)destination;
@end

@implementation BKTouchAnnotationController

- (void)hitTestRegionsDidChangeSwift:(id)swift displayAnnotationController:(id)controller
{
  sub_10000B60C();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  sub_10000B850(v6, controllerCopy);
}

- (void)_queue_touchWasSoftCanceled:(unsigned int)canceled
{
  displayAnnotationController = self->_displayAnnotationController;
  v4 = [(BKTouchAnnotationController *)self _keyPathForTouchIdentifier:*&canceled];
  v5 = [v4 stringByAppendingString:@".ctx"];
  v6 = [(BKDisplayAnnotationController *)displayAnnotationController allAnnotationsForKeyPath:v5];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v13 = +[BKDisplayAnnotationStyle canceledStyle];
        [v12 setStyleModifier:v13];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)_queue_touchWasHardCanceled:(unsigned int)canceled
{
  v6 = [(BKTouchAnnotationController *)self _keyPathForTouchIdentifier:*&canceled];
  v4 = [(BKDisplayAnnotationController *)self->_displayAnnotationController annotationForKeyPath:v6];
  v5 = +[BKDisplayAnnotationStyle canceledStyle];
  [v4 setStyleModifier:v5];

  [(BKDisplayAnnotationController *)self->_displayAnnotationController removeAnnotationsForKeyPath:v6 afterDelay:self->_workQueue queue:0.5];
}

- (void)_queue_setCenter:(CGPoint)center forTouchIdentifier:(unsigned int)identifier
{
  y = center.y;
  x = center.x;
  v11 = [(BKTouchAnnotationController *)self _keyPathForTouchIdentifier:*&identifier];
  v7 = [(BKDisplayAnnotationController *)self->_displayAnnotationController annotationForKeyPath:?];
  if (v7)
  {
    v8 = [BKDisplayAnnotationLocation centerAtPoint:x, y];
    [v7 setLocation:v8];
  }

  else
  {
    v8 = [BKDisplayAnnotation annotationWithEllipseSize:64.0, 64.0];
    v9 = [BKDisplayAnnotationLocation centerAtPoint:x, y];
    v10 = objc_alloc_init(BKDisplayAnnotationContainedSubnodeRenderer);
    [v8 setLocation:v9];
    [v8 setRenderer:v10];
    [(BKDisplayAnnotationController *)self->_displayAnnotationController setAnnotation:v8 forKeyPath:v11];
  }
}

- (int)_pidForClientPort:(unsigned int)port
{
  v3 = *&port;
  v4 = BKHIDEventRoutingGetClientConnectionManager();
  v5 = [v4 clientForTaskPort:v3];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 pid];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (id)_stringDescribingContextID:(unsigned int)d clientPort:(unsigned int)port
{
  v4 = *&d;
  v6 = [(BKTouchAnnotationController *)self _pidForClientPort:*&port];
  if (v6 < 1)
  {
    v11 = [NSString stringWithFormat:@"ctx:%X", v4];
  }

  else
  {
    v7 = v6;
    v8 = BSBundleIDForPID();
    v9 = [(BKTouchAnnotationController *)self _stringByRemovingPrefix:@"com.apple." fromString:v8];
    v10 = [v9 stringByAppendingFormat:@" (%d)", v7];

    v11 = [NSString stringWithFormat:@"ctx:%X -- %@", v4, v10];
  }

  return v11;
}

- (id)_stringDescribingPID:(int)d
{
  if (d < 1)
  {
    v7 = &stru_1001013E0;
    goto LABEL_9;
  }

  v3 = *&d;
  v5 = BSBundleIDForPID();
  if ([v5 length])
  {
    v6 = [(BKTouchAnnotationController *)self _stringByRemovingPrefix:@"com.apple." fromString:v5];
    [v6 stringByAppendingFormat:@" (%d)", v3];
  }

  else
  {
    v6 = BSProcessNameForPID();
    if (![v6 length])
    {
      v8 = [NSString stringWithFormat:@"pid %d", v3];
      goto LABEL_8;
    }

    [v6 stringByAppendingFormat:@" (%d)", v3];
  }
  v8 = ;
LABEL_8:
  v7 = v8;

LABEL_9:

  return v7;
}

- (id)_stringByRemovingPrefix:(id)prefix fromString:(id)string
{
  prefixCopy = prefix;
  stringCopy = string;
  v7 = [prefixCopy length];
  if ([stringCopy length] > v7 && objc_msgSend(stringCopy, "hasPrefix:", prefixCopy))
  {
    v8 = [stringCopy substringFromIndex:v7];
  }

  else
  {
    v8 = stringCopy;
  }

  v9 = v8;

  return v9;
}

- (void)_queue_annotateTouch:(unsigned int)touch withString:(id)string uniqueIdentifier:(id)identifier fromPID:(int)d
{
  v6 = *&d;
  v8 = *&touch;
  stringCopy = string;
  identifierCopy = identifier;
  displayAnnotationController = self->_displayAnnotationController;
  v13 = [(BKTouchAnnotationController *)self _keyPathForTouchIdentifier:v8];
  v14 = [(BKDisplayAnnotationController *)displayAnnotationController annotationForKeyPath:v13];

  v15 = sub_1000525A0();
  identifierCopy = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      v21 = v8;
      v22 = 2114;
      v23 = stringCopy;
      v24 = 1024;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, identifierCopy, OS_LOG_TYPE_DEFAULT, "touchIdentifier:%X annotation:%{public}@ pid:%d", buf, 0x18u);
    }

    identifierCopy = [NSString stringWithFormat:@"touch.%X.%@", v8, identifierCopy];
    if ([stringCopy length])
    {
      v17 = [BKDisplayAnnotation annotationWithString:stringCopy];
      v18 = objc_alloc_init(BKDisplayAnnotationNullRenderer);
      [v17 setRenderer:v18];
      if (v6 >= 1)
      {
        v19 = [(BKTouchAnnotationController *)self _stringDescribingPID:v6];
        [v17 setSection:v19];
      }

      [(BKDisplayAnnotationController *)self->_displayAnnotationController setAnnotation:v17 forKeyPath:identifierCopy];
    }

    else
    {
      [(BKDisplayAnnotationController *)self->_displayAnnotationController removeAnnotationsForKeyPath:identifierCopy];
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109378;
    v21 = v8;
    v22 = 2114;
    v23 = stringCopy;
    _os_log_error_impl(&_mh_execute_header, identifierCopy, OS_LOG_TYPE_ERROR, "touchIdentifier %X does not exist; dropping annotation:%{public}@", buf, 0x12u);
  }
}

- (void)_queue_updateHoverStateForTouchIdentifier:(unsigned int)identifier z:(double)z maxZ:(double)maxZ
{
  v5 = *&identifier;
  if (z > 0.0 || maxZ > 0.0)
  {
    v7 = [@"in range" stringByAppendingFormat:@" max:%.4g z:%.4g", *&maxZ, *&z];
  }

  else
  {
    v7 = @"in range";
  }

  v8 = v7;
  [(BKTouchAnnotationController *)self _queue_annotateTouch:v5 withString:v7 uniqueIdentifier:@"withinRange" fromPID:0xFFFFFFFFLL];
}

- (void)hitTestRegionsDidChange:(id)change
{
  changeCopy = change;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033B28;
  v7[3] = &unk_1000FD128;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(workQueue, v7);
}

- (void)touchDidSoftCancel:(unsigned int)cancel
{
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100033C18;
  v4[3] = &unk_1000FCD68;
  v4[4] = self;
  cancelCopy = cancel;
  dispatch_async(workQueue, v4);
}

- (void)touch:(unsigned int)touch didAlwaysRouteToContext:(unsigned int)context clientPort:(unsigned int)port
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033CA4;
  block[3] = &unk_1000FAC68;
  block[4] = self;
  contextCopy = context;
  portCopy = port;
  touchCopy = touch;
  dispatch_async(workQueue, block);
}

- (void)touchDidHIDCancel:(unsigned int)cancel
{
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100033DE8;
  v4[3] = &unk_1000FCD68;
  v4[4] = self;
  cancelCopy = cancel;
  dispatch_async(workQueue, v4);
}

- (void)touch:(unsigned int)touch pathIndex:(int64_t)index rangeOutAtPoint:(CGPoint)point
{
  workQueue = self->_workQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100033E70;
  v6[3] = &unk_1000FCD68;
  v6[4] = self;
  touchCopy = touch;
  dispatch_async(workQueue, v6);
}

- (void)touch:(unsigned int)touch pathIndex:(int64_t)index upAtPoint:(CGPoint)point detached:(BOOL)detached
{
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033F48;
  v7[3] = &unk_1000FCD68;
  v7[4] = self;
  touchCopy = touch;
  dispatch_async(workQueue, v7);
}

- (void)touch:(unsigned int)touch didMoveToPoint:(CGPoint)point eventMask:(unsigned int)mask z:(double)z maxZ:(double)maxZ
{
  workQueue = self->_workQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003401C;
  v8[3] = &unk_1000FAC40;
  v8[4] = self;
  pointCopy = point;
  touchCopy = touch;
  maxZCopy = maxZ;
  zCopy = z;
  dispatch_async(workQueue, v8);
}

- (void)touchDidTransfer:(unsigned int)transfer destination:(id)destination
{
  destinationCopy = destination;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034128;
  block[3] = &unk_1000FD1A0;
  transferCopy = transfer;
  block[4] = self;
  v10 = destinationCopy;
  v8 = destinationCopy;
  dispatch_async(workQueue, block);
}

- (void)touchDidDetach:(unsigned int)detach destinations:(id)destinations
{
  workQueue = self->_workQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003421C;
  v5[3] = &unk_1000FCD68;
  v5[4] = self;
  detachCopy = detach;
  dispatch_async(workQueue, v5);
}

- (void)touch:(unsigned int)touch didHitTestToDestination:(id)destination hostingChainIndex:(int64_t)index
{
  destinationCopy = destination;
  workQueue = self->_workQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000342E4;
  v11[3] = &unk_1000FBA90;
  v11[4] = self;
  v12 = destinationCopy;
  touchCopy = touch;
  indexCopy = index;
  v10 = destinationCopy;
  dispatch_async(workQueue, v11);
}

- (void)touch:(unsigned int)touch pathIndex:(int64_t)index downAtPoint:(CGPoint)point eventMask:(unsigned int)mask transducerType:(unsigned int)type
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034418;
  block[3] = &unk_1000FAC18;
  block[4] = self;
  pointCopy = point;
  indexCopy = index;
  touchCopy = touch;
  maskCopy = mask;
  dispatch_async(workQueue, block);
}

- (void)touch:(unsigned int)touch pathIndex:(int64_t)index rangeInAtPoint:(CGPoint)point eventMask:(unsigned int)mask z:(double)z maxZ:(double)maxZ transducerType:(unsigned int)type
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000345F0;
  block[3] = &unk_1000FABF0;
  block[4] = self;
  pointCopy = point;
  touchCopy = touch;
  indexCopy = index;
  zCopy = z;
  maxZCopy = maxZ;
  dispatch_async(workQueue, block);
}

- (void)_queue_applyBasicAnnotationTextForTouchIdentifier:(unsigned int)identifier pathIndex:(int64_t)index
{
  v5 = *&identifier;
  v12 = [NSString stringWithFormat:@"touch.%X.id", *&identifier];
  v7 = [(BKDisplayAnnotationController *)self->_displayAnnotationController annotationForKeyPath:?];

  if (!v7)
  {
    index = [NSString stringWithFormat:@"t%X p%d", v5, index];
    v9 = [BKDisplayAnnotation annotationWithString:index];

    v10 = objc_alloc_init(BKDisplayAnnotationNullRenderer);
    v11 = [BKDisplayAnnotationStyle colorVariationStyleWithIndex:v5];
    [v9 setStyleModifier:v11];

    [v9 setRenderer:v10];
    [(BKDisplayAnnotationController *)self->_displayAnnotationController setAnnotation:v9 forKeyPath:v12];
  }
}

- (void)annotateTouch:(unsigned int)touch withString:(id)string uniqueIdentifier:(id)identifier fromPID:(int)d
{
  stringCopy = string;
  identifierCopy = identifier;
  workQueue = self->_workQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100034850;
  v15[3] = &unk_1000FD238;
  v15[4] = self;
  v16 = stringCopy;
  v17 = identifierCopy;
  touchCopy = touch;
  dCopy = d;
  v13 = identifierCopy;
  v14 = stringCopy;
  dispatch_async(workQueue, v15);
}

- (void)annotateTouch:(unsigned int)touch withString:(id)string uniqueIdentifier:(id)identifier
{
  stringCopy = string;
  identifierCopy = identifier;
  workQueue = self->_workQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100034930;
  v13[3] = &unk_1000FABC8;
  touchCopy = touch;
  v13[4] = self;
  v14 = stringCopy;
  v15 = identifierCopy;
  v11 = identifierCopy;
  v12 = stringCopy;
  dispatch_async(workQueue, v13);
}

- (void)annotateTouch:(unsigned int)touch withUniqueString:(id)string
{
  stringCopy = string;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000349F0;
  block[3] = &unk_1000FD1A0;
  touchCopy = touch;
  block[4] = self;
  v10 = stringCopy;
  v8 = stringCopy;
  dispatch_async(workQueue, block);
}

- (void)setShouldVisualizeHitTestRegions:(BOOL)regions
{
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100034A78;
  v4[3] = &unk_1000FCD90;
  v4[4] = self;
  regionsCopy = regions;
  dispatch_async(workQueue, v4);
}

- (void)setShouldVisualizeTouches:(BOOL)touches
{
  workQueue = self->_workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100034B6C;
  v4[3] = &unk_1000FCD90;
  v4[4] = self;
  touchesCopy = touches;
  dispatch_async(workQueue, v4);
}

- (BOOL)shouldVisualizeHitTestRegions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = self->_workQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100034C50;
  v5[3] = &unk_1000FD178;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)shouldVisualizeTouches
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = self->_workQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100034D10;
  v5[3] = &unk_1000FD178;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BKTouchAnnotationController)initWithDisplayUUID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = BKTouchAnnotationController;
  v5 = [(BKTouchAnnotationController *)&v12 init];
  if (v5)
  {
    workQueue = [objc_opt_class() workQueue];
    workQueue = v5->_workQueue;
    v5->_workQueue = workQueue;

    v8 = sub_10000A500(dCopy);
    v9 = [BKDisplayAnnotationController annotationControllerForDisplay:v8];
    displayAnnotationController = v5->_displayAnnotationController;
    v5->_displayAnnotationController = v9;
  }

  return v5;
}

+ (id)workQueue
{
  if (qword_100125E30 != -1)
  {
    dispatch_once(&qword_100125E30, &stru_1000FABA0);
  }

  v3 = qword_100125E28;

  return v3;
}

@end