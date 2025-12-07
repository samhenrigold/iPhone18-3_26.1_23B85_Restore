@interface ZOTFullscreenEventHandler
- (BOOL)_autoPanIfNecessaryWithEvent:(id)event isDragging:(BOOL)dragging;
- (BOOL)_handleEvent:(id)event;
- (BOOL)_handleTrackpadEvent:(id)event;
- (BOOL)_verifyZoomActionIsAppropriate:(id)appropriate;
- (BOOL)handleDragEvent:(id)event;
- (BOOL)handleEvent:(id)event;
- (BOOL)handleSpeakUnderFingerEvent:(id)event;
- (BOOL)handleTrackpadEvent:(id)event;
- (BOOL)isAnyDisplayZoomedIn;
- (BOOL)isMainDisplayZoomedIn;
- (CGPoint)_middleFingerForEvent:(id)event;
- (ZOTFullscreenEventHandler)initWithEventThread:(id)thread;
- (ZOTFullscreenEventHandlerDelegate)eventDelegate;
- (ZOTFullscreenZoomHandlerDelegate)zoomDelegate;
- (double)_currentVelocity:(id)velocity;
- (id)_descriptionForEvent:(id)event;
- (unint64_t)_senderIDForRepostingOfEvent:(id)event;
- (void)_clearState;
- (void)_drainEventRepostQueue:(id)queue replayEvents:(BOOL)events updateEventTimestamps:(BOOL)timestamps;
- (void)_eventPostTimerCallback;
- (void)_handleDoubleTapEvent:(id)event newLocation:(CGPoint)location;
- (void)_handleTrackpadDoubleTapEvent:(id)event newLocation:(CGPoint)location;
- (void)_handleVoiceOverMultiTapActionWithEvent:(id)event tapCount:(int64_t)count;
- (void)_scheduleTapTimeout:(BOOL)timeout;
- (void)_updateAutopanWhileDragging:(BOOL)dragging;
- (void)_updateVelocityAndVectorWithEventLocation:(CGPoint)location startPoint:(CGPoint)point endPoint:(CGPoint)endPoint forTrackpad:(BOOL)trackpad;
- (void)postHandCancelWithSenderID:(unint64_t)d;
@end

@implementation ZOTFullscreenEventHandler

- (ZOTFullscreenEventHandler)initWithEventThread:(id)thread
{
  threadCopy = thread;
  v31.receiver = self;
  v31.super_class = ZOTFullscreenEventHandler;
  v5 = [(ZOTFullscreenEventHandler *)&v31 init];
  v6 = v5;
  if (v5)
  {
    v5->_orbFinger = -1;
    v7 = ZOTTimeUnset;
    *&v5->_snarfLastTime = ZOTTimeUnset;
    v5->_lastPanTime = v7;
    v5->_velocityLastTime = v7;
    v5->_trackpadVelocityLastTime = v7;
    v5->_tapDoubleLastTime = v7;
    v5->_tapLastTime = v7;
    v5->_trackpadTapDoubleLastTime = v7;
    v5->_trackpadTapLastTime = v7;
    v5->_lastAppTransition = v7;
    v5->_flickTime = v7;
    v5->_autopanDelay = v7;
    v5->_borderpanStartTime = v7;
    v5->_twoFingerTapDownWithHold = v7;
    v5->_firstFingerDownTime = v7;
    v5->_secondFingerDownTime = v7;
    v5->_thirdFingerDownTime = v7;
    v5->_anyFingerDownTime = v7;
    v5->_firstTrackpadFingerDownTime = v7;
    v5->_secondTrackpadFingerDownTime = v7;
    v5->_thirdTrackpadFingerDownTime = v7;
    v5->_anyTrackpadFingerDownTime = v7;
    v5->_currentFingerCount = 0;
    v5->_oneFingerWasDown = 0;
    v8 = [[AXThreadTimer alloc] initWithThread:threadCopy];
    autopanTimer = v6->_autopanTimer;
    v6->_autopanTimer = v8;

    v10 = [[AXThreadTimer alloc] initWithThread:threadCopy];
    multiTapTimer = v6->_multiTapTimer;
    v6->_multiTapTimer = v10;

    v12 = [[AXThreadTimer alloc] initWithThread:threadCopy];
    passthruEventTimer = v6->_passthruEventTimer;
    v6->_passthruEventTimer = v12;

    v14 = [[AXThreadTimer alloc] initWithThread:threadCopy];
    tapCountResetTimer = v6->_tapCountResetTimer;
    v6->_tapCountResetTimer = v14;

    v16 = [[AXThreadTimer alloc] initWithThread:threadCopy];
    trackpadTapCountResetTimer = v6->_trackpadTapCountResetTimer;
    v6->_trackpadTapCountResetTimer = v16;

    v18 = [[AXThreadTimer alloc] initWithThread:threadCopy];
    editingGestureHoldTimer = v6->_editingGestureHoldTimer;
    v6->_editingGestureHoldTimer = v18;

    v20 = [[AXThreadTimer alloc] initWithThread:threadCopy];
    hoverTextTapTimer = v6->_hoverTextTapTimer;
    v6->_hoverTextTapTimer = v20;

    v22 = +[NSMutableArray array];
    eventReplayQueue = v6->_eventReplayQueue;
    v6->_eventReplayQueue = v22;

    v24 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v25 = dispatch_queue_create("com.apple.accessibility.zoomEventDispatch", v24);
    eventReplayDispatchQueue = v6->_eventReplayDispatchQueue;
    v6->_eventReplayDispatchQueue = v25;

    v27 = +[NSPointerArray weakObjectsPointerArray];
    externalDisplayZoomDelegates = v6->_externalDisplayZoomDelegates;
    v6->_externalDisplayZoomDelegates = v27;

    v29 = v6;
  }

  return v6;
}

- (BOOL)isMainDisplayZoomedIn
{
  selfCopy = self;
  zoomDelegate = [(ZOTFullscreenEventHandler *)self zoomDelegate];
  LOBYTE(selfCopy) = [(ZOTFullscreenEventHandler *)selfCopy isDisplayZoomedIn:zoomDelegate];

  return selfCopy;
}

- (BOOL)isAnyDisplayZoomedIn
{
  if ([(ZOTFullscreenEventHandler *)self isMainDisplayZoomedIn])
  {
    LOBYTE(externalDisplayZoomDelegates2) = 1;
  }

  else
  {
    externalDisplayZoomDelegates = [(ZOTFullscreenEventHandler *)self externalDisplayZoomDelegates];
    externalDisplayZoomDelegates2 = [externalDisplayZoomDelegates count];

    if (externalDisplayZoomDelegates2)
    {
      v5 = 0;
      do
      {
        externalDisplayZoomDelegates2 = [(ZOTFullscreenEventHandler *)self externalDisplayZoomDelegates];
        v6 = [externalDisplayZoomDelegates2 pointerAtIndex:v5];

        LODWORD(externalDisplayZoomDelegates2) = [(ZOTFullscreenEventHandler *)self isDisplayZoomedIn:v6];
        if (externalDisplayZoomDelegates2)
        {
          break;
        }

        ++v5;
        externalDisplayZoomDelegates3 = [(ZOTFullscreenEventHandler *)self externalDisplayZoomDelegates];
        v8 = [externalDisplayZoomDelegates3 count];
      }

      while (v8 > v5);
    }
  }

  return externalDisplayZoomDelegates2;
}

- (BOOL)_verifyZoomActionIsAppropriate:(id)appropriate
{
  appropriateCopy = appropriate;
  v5 = 1;
  if (![(ZOTFullscreenEventHandler *)self isMainDisplayZoomedIn])
  {
    Current = CFAbsoluteTimeGetCurrent();
    secondFingerDownTime = self->_secondFingerDownTime;
    v8 = secondFingerDownTime == ZOTTimeUnset || Current - secondFingerDownTime <= 0.75;
    if (!v8 || ((firstFingerDownTime = self->_firstFingerDownTime, v10 = Current - firstFingerDownTime, firstFingerDownTime != ZOTTimeUnset) ? (v11 = v10 <= 0.75) : (v11 = 1), !v11 || -[ZOTFullscreenEventHandler _allowsFingerDistanceToAffectZoom](self, "_allowsFingerDistanceToAffectZoom", v10) && (([appropriateCopy fingerAtIndex:0], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "location"), v12, objc_msgSend(appropriateCopy, "fingerAtIndex:", 1), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "location"), v13, objc_msgSend(appropriateCopy, "fingerAtIndex:", 2), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "location"), v14, SCRCMathGetDistanceBetweenPoints(), v15 > 0.75) || (SCRCMathGetDistanceBetweenPoints(), v16 > 0.75) || (SCRCMathGetDistanceBetweenPoints(), v17 > 0.75))))
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)postHandCancelWithSenderID:(unint64_t)d
{
  eventDelegate = [(ZOTFullscreenEventHandler *)self eventDelegate];
  [eventDelegate postHandCancelWithSenderID:d];
}

- (BOOL)handleEvent:(id)event
{
  v4 = [ZOTEvent createEventFromEventRepresentation:event];
  LOBYTE(self) = [(ZOTFullscreenEventHandler *)self _handleEvent:v4];

  return self;
}

- (BOOL)handleTrackpadEvent:(id)event
{
  v4 = [ZOTEvent createEventFromEventRepresentation:event];
  LOBYTE(self) = [(ZOTFullscreenEventHandler *)self _handleTrackpadEvent:v4];

  return self;
}

- (BOOL)handleSpeakUnderFingerEvent:(id)event
{
  v4 = [ZOTEvent createEventFromEventRepresentation:event];
  v5 = v4;
  x = CGPointZero.x;
  y = CGPointZero.y;
  if (CGPointZero.x == self->_initialSingleFingerLocation.x && y == self->_initialSingleFingerLocation.y)
  {
    [v4 magneticLocation];
    self->_initialSingleFingerLocation.x = x;
    self->_initialSingleFingerLocation.y = y;
    self->_snarfing = 1;
  }

  [(ZOTFullscreenEventHandler *)self _autoPanIfNecessaryWithEvent:v5, x, y];
  if ([v5 handEventType] == 6)
  {
    [(ZOTFullscreenEventHandler *)self _clearState];
  }

  return 1;
}

- (BOOL)handleDragEvent:(id)event
{
  v4 = [ZOTEvent createEventFromEventRepresentation:event];
  v5 = v4;
  x = CGPointZero.x;
  y = CGPointZero.y;
  if (CGPointZero.x == self->_initialSingleFingerLocation.x && y == self->_initialSingleFingerLocation.y)
  {
    [v4 magneticLocation];
    self->_initialSingleFingerLocation.x = x;
    self->_initialSingleFingerLocation.y = y;
    self->_snarfing = 1;
  }

  [(ZOTFullscreenEventHandler *)self _autoPanIfNecessaryWithEvent:v5 isDragging:1, x, y];

  return 0;
}

- (BOOL)_handleEvent:(id)event
{
  eventCopy = event;
  [eventCopy time];
  v7 = v6;
  handEventType = [eventCopy handEventType];
  v9 = handEventType;
  v10 = v7 - *&_handleEvent__LastEventTime < 0.016 && _handleEvent__LastEventType == handEventType;
  if (!v10 || (self->_zoomPanning ? (v11 = handEventType == 2) : (v11 = 0), !v11))
  {
    obj = event;
    fingerCount = [eventCopy fingerCount];
    isTouchEventWeCareAbout = [eventCopy isTouchEventWeCareAbout];
    v13 = self->_eventFingersTracking || v7 - self->_snarfLastTime < 0.12;
    self->_snarfing = v13;
    self->_orbZoomToggled &= v13;
    zoomDelegate = [(ZOTFullscreenEventHandler *)self zoomDelegate];
    v15 = [zoomDelegate isZoomMovingWithVelocityWithFullscreenEventHandler:self];

    if (self->_zoomDisabledForApp)
    {
      eventDelegate = [(ZOTFullscreenEventHandler *)self eventDelegate];
      [eventDelegate dispatchEventToSystem:eventCopy];

      goto LABEL_228;
    }

    LODWORD(v191) = v15;
    anyFingerDown = self->_anyFingerDown;
    self->_currentFingerCount = fingerCount;
    v18 = [eventCopy fingerCount] != 0;
    self->_anyFingerDown = v18;
    if (!self->_orbSnarfing)
    {
      record = [eventCopy record];
      if ([record allowsZoomOrb])
      {
        record2 = [eventCopy record];
        v21 = ZOTEventMeetsOrbThreshold(record2);

        v18 = self->_anyFingerDown;
        if (v21)
        {
          if (v18)
          {
            v22 = [eventCopy fingerAtIndex:0];
            [v22 location];
            v24 = v23;

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke;
            block[3] = &unk_78D28;
            block[4] = self;
            block[5] = ZOTDenormalizePoint(v25, v26, v24);
            block[6] = v27;
            dispatch_async(&_dispatch_main_q, block);
            record3 = [eventCopy record];
            -[ZOTFullscreenEventHandler postHandCancelWithSenderID:](self, "postHandCancelWithSenderID:", [record3 senderID]);

            self->_orbSnarfing = 1;
            goto LABEL_228;
          }

LABEL_26:
          if (v18)
          {
            self->_wasPassingThroughSystemGesture = 0;
            if (v18 != anyFingerDown)
            {
              zoomDelegate2 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
              [(ZOTFullscreenEventHandler *)self _middleFingerForEvent:eventCopy];
              [zoomDelegate2 fullscreenEventHandler:self didReceiveAnyFingerDownAtLocation:?];

              if (fingerCount == &dword_0 + 1)
              {
                zoomDelegate3 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
                v39 = [zoomDelegate3 interfaceOrientationWithFullscreenEventHandler:self];
                [(ZOTFullscreenEventHandler *)self _middleFingerForEvent:eventCopy];
                v42 = v41;
                if (v39 == 4)
                {
                  v43 = 1.0 - v41;
                  v42 = v40;
                }

                else if (v39 == 3)
                {
                  v43 = v41;
                  v42 = 1.0 - v40;
                }

                else
                {
                  v43 = v40;
                  if (v39 == 2)
                  {
                    v42 = 1.0 - v41;
                    v43 = 1.0 - v40;
                  }
                }

                zoomDelegate4 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
                [zoomDelegate4 fullscreenEventHandler:self didReceiveOneFingerDownAtLocation:{v43, v42}];

                self->_oneFingerWasDown = 1;
              }
            }
          }

          else if (v18 != anyFingerDown)
          {
            zoomDelegate5 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
            [(ZOTFullscreenEventHandler *)self _middleFingerForEvent:eventCopy];
            [zoomDelegate5 fullscreenEventHandler:self didReceiveAnyFingerUpAtLocation:?];

            if (self->_oneFingerWasDown)
            {
              self->_oneFingerWasDown = 0;
            }
          }

          if ([eventCopy handEventType] == 1 || objc_msgSend(eventCopy, "handEventType") == 5)
          {
            objc_storeStrong(&self->_lastDownEvent, obj);
          }

          if (![(ZOTFullscreenEventHandler *)self isMainDisplayZoomedIn]&& !self->_zooming && !self->_shouldPerformEditingGesture)
          {
            eventReplayQueue = self->_eventReplayQueue;
            record4 = [eventCopy record];
            [(NSMutableArray *)eventReplayQueue addObject:record4];
          }

          if (([eventCopy handEventType] & 0xFFFFFFFB) == 1 && (fingerCount - 1) <= 2)
          {
            *(&self->_firstFingerDownTime + (fingerCount - 1)) = v7;
          }

          if (self->_anyFingerDown)
          {
            v52 = ZOTTimeUnset;
            if (self->_anyFingerDownTime == ZOTTimeUnset)
            {
              self->_anyFingerDownTime = v7;
            }

LABEL_69:
            v215 = 0u;
            v216 = 0u;
            v213 = 0u;
            v214 = 0u;
            record5 = [eventCopy record];
            handInfo = [record5 handInfo];
            paths = [handInfo paths];

            v62 = [paths countByEnumeratingWithState:&v213 objects:v221 count:16];
            if (v62)
            {
              v63 = *v214;
              v64 = 0.0;
              do
              {
                for (i = 0; i != v62; i = i + 1)
                {
                  if (*v214 != v63)
                  {
                    objc_enumerationMutation(paths);
                  }

                  v66 = *(*(&v213 + 1) + 8 * i);
                  [v66 orbValue];
                  if (v64 < v67)
                  {
                    [v66 orbValue];
                    v64 = v68;
                  }
                }

                v62 = [paths countByEnumeratingWithState:&v213 objects:v221 count:16];
              }

              while (v62);
            }

            if (isTouchEventWeCareAbout && !self->_snarfing && (fingerCount == &dword_0 + 3 || self->_isTrackingHoverText) && !self->_ignoreSnarfingForFingerSession && [(ZOTFullscreenEventHandler *)self _verifyZoomActionIsAppropriate:eventCopy])
            {
              [(AXThreadTimer *)self->_eventPostTimer cancel];
              v69 = &_dispatch_main_q;
              v212[0] = _NSConcreteStackBlock;
              v212[1] = 3221225472;
              v212[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_4;
              v212[3] = &unk_78D00;
              v212[4] = self;
              dispatch_async(&_dispatch_main_q, v212);

              self->_snarfing = 1;
              [(ZOTFullscreenEventHandler *)self _middleFingerForEvent:eventCopy];
              self->_tapPoint.x = v70;
              self->_tapPoint.y = v71;
              [(AXThreadTimer *)self->_autopanTimer cancel];
              record6 = [eventCopy record];
              -[ZOTFullscreenEventHandler postHandCancelWithSenderID:](self, "postHandCancelWithSenderID:", [record6 senderID]);

              autopanDownEvent = self->_autopanDownEvent;
              self->_autopanDownEvent = 0;

              eventDelegate2 = [(ZOTFullscreenEventHandler *)self eventDelegate];
              [eventDelegate2 disableSleepTimer:1];
            }

            IsPad = AXDeviceIsPad();
            if (fingerCount > 3)
            {
              v76 = IsPad;
            }

            else
            {
              v76 = 0;
            }

            if (v76 == 1 && !self->_zooming && !self->_zoomPanning)
            {
              self->_ignoreSnarfingForFingerSession = 1;
            }

            if (self->_snarfing)
            {
              record7 = [eventCopy record];
              handInfo2 = [record7 handInfo];
              if ([handInfo2 initialFingerCount])
              {
                record8 = [eventCopy record];
                handInfo3 = [record8 handInfo];
                v81 = [handInfo3 lifetimeFingerCount] < 3;

                if (v81)
                {
                  self->_snarfLastTime = v52;
                  v82 = ZOOMLogEvents();
                  if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
                  {
                    isTouchEventWeCareAbout = [eventCopy record];
                    *buf = 138412290;
                    *&buf[4] = isTouchEventWeCareAbout;
                    _os_log_impl(&dword_0, v82, OS_LOG_TYPE_INFO, "one of the fingers we were tracking with zoom was cancelled, so stop snarfing: %@", buf, 0xCu);
                  }

                  [(AXThreadTimer *)self->_tapCountResetTimer cancel];
                  goto LABEL_98;
                }
              }

              else
              {
              }
            }

            if (!self->_snarfing)
            {
              if (fingerCount)
              {
                v90 = isTouchEventWeCareAbout;
              }

              else
              {
                v90 = 1;
              }

              if ((v90 & 1) == 0)
              {
                eventDelegate3 = [(ZOTFullscreenEventHandler *)self eventDelegate];
                [eventDelegate3 dispatchEventToSystem:eventCopy];

                if (self->_allowTimedEventPosting)
                {
                  objc_initWeak(buf, self);
                  eventPostTimer = self->_eventPostTimer;
                  v196[0] = _NSConcreteStackBlock;
                  v196[1] = 3221225472;
                  v196[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_10;
                  v196[3] = &unk_78D00;
                  v196[4] = self;
                  [(AXThreadTimer *)eventPostTimer afterDelay:v196 processBlock:0.0799999982];
                  objc_destroyWeak(buf);
                }

                goto LABEL_227;
              }

              if (fingerCount)
              {
                zoomDelegate6 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
                v92 = [zoomDelegate6 isZoomMovingWithVelocityWithFullscreenEventHandler:self];

                if (v92)
                {
                  v195[0] = _NSConcreteStackBlock;
                  v195[1] = 3221225472;
                  v195[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_11;
                  v195[3] = &unk_78D00;
                  v195[4] = self;
                  dispatch_async(&_dispatch_main_q, v195);
                  self->_snarfLastTime = v7;
                }

                else
                {
                  v113 = [(ZOTFullscreenEventHandler *)self _hasReachedFlickVelocity:eventCopy];
                  if (fingerCount == &dword_0 + 1)
                  {
                    v114 = v113;
                  }

                  else
                  {
                    v114 = 0;
                  }

                  if (v114 == 1)
                  {
                    [(AXThreadTimer *)self->_autopanTimer cancel];
                    if (self->_autopanDownEvent)
                    {
                      eventDelegate4 = [(ZOTFullscreenEventHandler *)self eventDelegate];
                      [eventDelegate4 dispatchEventToSystem:self->_autopanDownEvent];

                      v116 = self->_autopanDownEvent;
                      self->_autopanDownEvent = 0;
                    }

                    self->_borderpanMode = 0;
                    eventDelegate5 = [(ZOTFullscreenEventHandler *)self eventDelegate];
                    [eventDelegate5 dispatchEventToSystem:eventCopy];
                  }

                  else
                  {
                    eventDelegate6 = [(ZOTFullscreenEventHandler *)self eventDelegate];
                    [eventDelegate6 dispatchEventToSystem:eventCopy];

                    v119 = self->_autopanDownEvent;
                    self->_autopanDownEvent = 0;
                  }
                }

                goto LABEL_227;
              }

LABEL_115:
              if (self->_sendingUnzoomedPanFingers)
              {
                eventDelegate7 = [(ZOTFullscreenEventHandler *)self eventDelegate];
                [eventDelegate7 postHandCancelWithSenderID:0x8000000817319374];

                self->_sendingUnzoomedPanFingers = 0;
                [(ZOTFullscreenEventHandler *)self _clearState];
              }

              else
              {
                if (self->_anyFingerDownTime == v52 && !self->_wasPassingThroughSystemGesture && (-[ZOTEvent handEventType](self->_lastEvent, "handEventType") != 9 || [eventCopy handEventType] != 10))
                {
                  record9 = [eventCopy record];
                  handInfo4 = [record9 handInfo];
                  isStylus = [handInfo4 isStylus];
                  if (isStylus && ([eventCopy record], v191 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v191, "handInfo"), v190 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v190, "paths"), v189 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v189, "firstObject"), isTouchEventWeCareAbout = objc_claimAutoreleasedReturnValue(), objc_msgSend(isTouchEventWeCareAbout, "altitude"), v99 > 0.0))
                  {
                  }

                  else
                  {
                    record10 = [eventCopy record];
                    handInfo5 = [record10 handInfo];
                    pathsIncludingMayBeginEvents = [handInfo5 pathsIncludingMayBeginEvents];
                    v166 = [pathsIncludingMayBeginEvents count];

                    if (isStylus)
                    {
                    }

                    if (!v166)
                    {
                      goto LABEL_227;
                    }
                  }
                }

                if ([(AXThreadTimer *)self->_autopanTimer isPending])
                {
                  if (([(AXThreadTimer *)self->_autopanTimer isCancelled]& 1) == 0)
                  {
                    autopanEvent = self->_autopanEvent;
                    if (autopanEvent)
                    {
                      if (!self->_snarfing)
                      {
                        eventDelegate8 = [(ZOTFullscreenEventHandler *)self eventDelegate];
                        [eventDelegate8 dispatchEventToSystem:self->_autopanEvent];

                        autopanEvent = self->_autopanEvent;
                      }

                      self->_autopanEvent = 0;
                    }
                  }
                }

                zoomDelegate7 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
                [zoomDelegate7 endZoomMovementWithFullscreenEventHandler:self];

                if (!self->_snarfing || self->_wasPassingThroughSystemGesture)
                {
                  eventDelegate9 = [(ZOTFullscreenEventHandler *)self eventDelegate];
                  [eventDelegate9 dispatchEventToSystem:eventCopy];
                }

                [(ZOTFullscreenEventHandler *)self _clearState];
                [(AXThreadTimer *)self->_passthruEventTimer cancel];
                eventDelegate10 = [(ZOTFullscreenEventHandler *)self eventDelegate];
                [eventDelegate10 resetEventQueue];
              }

LABEL_227:
              objc_storeStrong(&self->_lastEvent, obj);
              _handleEvent__LastEventTime = *&v7;
              _handleEvent__LastEventType = v9;
              goto LABEL_228;
            }

            if (!self->_zooming && !self->_zoomPanning && fingerCount >= 4)
            {
              self->_snarfing = 0;
              self->_ignoreSnarfingForFingerSession = 1;
              self->_eventFingersTracking = 0;
              eventDelegate11 = [(ZOTFullscreenEventHandler *)self eventDelegate];
              [eventDelegate11 dispatchEventToSystem:eventCopy];

              goto LABEL_227;
            }

            if (!isTouchEventWeCareAbout || self->_isTrackingHoverText)
            {
LABEL_106:
              if (fingerCount)
              {
                goto LABEL_227;
              }

              goto LABEL_115;
            }

            self->_snarfLastTime = v7;
            [(AXThreadTimer *)self->_eventPostTimer cancel];
            eventDelegate12 = [(ZOTFullscreenEventHandler *)self eventDelegate];
            [eventDelegate12 resetEventQueue];

            self->_eventFingersTracking = 1;
            snarfFingerCount = self->_snarfFingerCount;
            if (fingerCount)
            {
              v102 = [eventCopy fingerWithIdentifier:self->_snarfFingerIdentifier];
              if (v102 && !([eventCopy chordChanged] & 1 | (snarfFingerCount != fingerCount)))
              {
                [v102 location];
                v105 = v131;
                v107 = v132;
                v103 = v102;
              }

              else
              {
                v103 = [eventCopy fingerAtIndex:0];

                self->_snarfFingerIdentifier = [v103 identifier];
                [v103 location];
                v105 = v104;
                v107 = v106;
                v108 = fabs(v106) != INFINITY;
                if (fabs(v104) == INFINITY || !v108)
                {
                  record11 = [eventCopy record];
                  [record11 location];
                  v105 = v110;
                  v107 = v111;
                }

                y = self->_trackingLocation.y;
                self->_offsetLocation.x = self->_trackingLocation.x - v105;
                self->_offsetLocation.y = y - v107;
                self->_velocityLastTime = v52;
              }

              v133 = fingerCount;
              v134 = fabs(v107) != INFINITY;
              if (fabs(v105) == INFINITY || !v134)
              {
                record12 = [eventCopy record];
                [record12 location];
                v105 = v136;
                v107 = v137;

                v133 = fingerCount;
              }

              self->_snarfFingerCount = v133;
              v138 = v105 + self->_offsetLocation.x;
              v139 = v107 + self->_offsetLocation.y;
              self->_trackingLocation.x = v138;
              self->_trackingLocation.y = v139;
              tapCount = self->_tapCount;
              if (tapCount > 1)
              {
                v156 = 0.0;
              }

              else
              {
                *buf = 0;
                v211 = 0.0;
                averageLocation = [eventCopy averageLocation];
                v145 = v143;
                v146 = v144;
                if (self->_velocityLastTime == v52)
                {
                  self->_velocityLocation.x = v143;
                  self->_velocityLocation.y = v144;
                  self->_lastPanTime = v52;
                }

                v147 = ZOTDenormalizePoint(averageLocation, v142, v143);
                ZOTFlipDenormalizedPoint(v148, v149, v147);
                v152 = ZOTDenormalizePoint(v150, v151, self->_velocityLocation.x);
                ZOTFlipDenormalizedPoint(v153, v154, v152);
                self->_velocityLocation.x = v145;
                self->_velocityLocation.y = v146;
                SCRCMathGetVectorAndDistanceForPoints();
                v155 = ZOTMainScreenScaleFactor();
                tapCount = self->_tapCount;
                v156 = v211 / v155;
              }

              if (tapCount)
              {
                if (tapCount == 1)
                {
                  [eventCopy averageLocation];
                  [ZOTFullscreenEventHandler _updateVelocityAndVectorWithEventLocation:"_updateVelocityAndVectorWithEventLocation:startPoint:endPoint:forTrackpad:" startPoint:0 endPoint:? forTrackpad:?];
                  [(AXThreadTimer *)self->_tapCountResetTimer cancel];
                  [(AXThreadTimer *)self->_multiTapTimer cancel];
                  if (([(AXThreadTimer *)self->_editingGestureHoldTimer isPending]& 1) != 0)
                  {
                    isActive = 1;
                  }

                  else
                  {
                    isActive = [(AXThreadTimer *)self->_editingGestureHoldTimer isActive];
                  }

                  if (!self->_zooming && ([(ZOTFullscreenEventHandler *)self isMainDisplayZoomedIn]|| _AXSVoiceOverTouchEnabled()) && ((self->_shouldPerformEditingGesture | isActive) & 1) == 0)
                  {
                    objc_initWeak(buf, self);
                    editingGestureHoldTimer = self->_editingGestureHoldTimer;
                    v209[0] = _NSConcreteStackBlock;
                    v209[1] = 3221225472;
                    v209[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_286;
                    v209[3] = &unk_78CD8;
                    objc_copyWeak(&v210, buf);
                    v207[0] = _NSConcreteStackBlock;
                    v207[1] = 3221225472;
                    v207[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_2_287;
                    v207[3] = &unk_78CD8;
                    objc_copyWeak(&v208, buf);
                    [(AXThreadTimer *)editingGestureHoldTimer afterDelay:v209 processBlock:v207 cancelBlock:0.5];
                    objc_destroyWeak(&v208);
                    objc_destroyWeak(&v210);
                    objc_destroyWeak(buf);
                  }

                  [(ZOTFullscreenEventHandler *)self _handleDoubleTapEvent:eventCopy newLocation:v138, v139];
                }

LABEL_226:

                goto LABEL_227;
              }

              [(AXThreadTimer *)self->_tapCountResetTimer cancel];
              if (!_AXSVoiceOverTouchEnabled() && fabs(self->_mainDisplayZoomLevel + -1.0) < 0.1 && v156 < 20.0)
              {
                self->_sendingUnzoomedPanFingers = 1;
                v158 = self->_lastEvent;
                objc_initWeak(buf, self);
                autopanTimer = self->_autopanTimer;
                v204[0] = _NSConcreteStackBlock;
                v204[1] = 3221225472;
                v204[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_3_288;
                v204[3] = &unk_78E00;
                objc_copyWeak(&v206, buf);
                v160 = v158;
                v205 = v160;
                [(AXThreadTimer *)autopanTimer afterDelay:v204 processBlock:0.5];

                objc_destroyWeak(&v206);
                objc_destroyWeak(buf);
              }

              if (self->_sendingUnzoomedPanFingers)
              {
                goto LABEL_224;
              }

              v161 = fabs(v156) + self->_pannerTrackDistance;
              self->_pannerTrackDistance = v161;
              if (v161 <= 20.0 || _AXSVoiceOverTouchEnabled() && v7 - self->_anyFingerDownTime <= 0.175)
              {
                goto LABEL_224;
              }

              self->_lastPanTime = v7;
              if (snarfFingerCount != fingerCount)
              {
                self->_borderpanStartTime = v7 + 0.300000012;
              }

              borderpanMode = self->_borderpanMode;
              if (fingerCount == &dword_0 + 1)
              {
                if (self->_borderpanMode)
                {
                  goto LABEL_184;
                }

                if (v7 > self->_borderpanStartTime)
                {
                  goto LABEL_218;
                }

                SCRCMathGetAverage();
                borderpanMode = self->_borderpanMode;
                if (v184 < 125.0)
                {
LABEL_184:
                  if (borderpanMode)
                  {
LABEL_219:
                    x = CGPointZero.x;
                    if (CGPointZero.x == self->_initialSingleFingerLocation.x)
                    {
                      x = CGPointZero.y;
                      if (x == self->_initialSingleFingerLocation.y)
                      {
                        [eventCopy magneticLocation];
                        self->_initialSingleFingerLocation.x = x;
                        self->_initialSingleFingerLocation.y = v179;
                      }
                    }

                    if (self->_snarfing)
                    {
                      [(ZOTFullscreenEventHandler *)self _autoPanIfNecessaryWithEvent:eventCopy, x];
                    }

                    goto LABEL_224;
                  }

LABEL_218:
                  v177 = &_dispatch_main_q;
                  v203[0] = _NSConcreteStackBlock;
                  v203[1] = 3221225472;
                  v203[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_4_289;
                  v203[3] = &unk_78D00;
                  v203[4] = self;
                  dispatch_async(&_dispatch_main_q, v203);

                  self->_borderpanMode = 1;
                  goto LABEL_219;
                }

                if (!self->_borderpanMode)
                {
LABEL_224:
                  if (v7 - *&_handleEvent__LastUpdateTime >= 0.016)
                  {
                    [eventCopy averageLocation];
                    [ZOTFullscreenEventHandler _updateVelocityAndVectorWithEventLocation:"_updateVelocityAndVectorWithEventLocation:startPoint:endPoint:forTrackpad:" startPoint:0 endPoint:? forTrackpad:?];
                    _handleEvent__LastUpdateTime = *&v7;
                  }

                  goto LABEL_226;
                }
              }

              else if (!self->_borderpanMode)
              {
LABEL_216:
                self->_zoomPanning = 1;
                zoomDelegate8 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
                [zoomDelegate8 fullscreenEventHandler:self updateZoomMovementWithPoint:{ZOTDenormalizePoint(zoomDelegate8, v176, self->_trackingLocation.x)}];

                goto LABEL_224;
              }

              [(AXThreadTimer *)self->_autopanTimer cancel];
              self->_borderpanMode = 0;
              goto LABEL_216;
            }

            if (!snarfFingerCount || [eventCopy handEventType] == 8)
            {
LABEL_98:
              self->_velocityLastTime = v52;
              self->_offsetLocation = CGPointZero;
              SCRCMathClearAverage();
              self->_zooming = 0;
              self->_zoomStartOffset = 0.0;
              self->_pannerTrackDistance = 0.0;
              self->_tapDoubleTracking = 0;
              self->_eventFingersTracking = 0;
              self->_zoomPanning = 0;
              self->_snarfFingerCount = 0;
              [(AXThreadTimer *)self->_editingGestureHoldTimer cancel];
              self->_shouldPerformEditingGesture = 0;
              v83 = &_dispatch_main_q;
              v197[0] = _NSConcreteStackBlock;
              v197[1] = 3221225472;
              v197[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_9;
              v197[3] = &unk_78D00;
              v197[4] = self;
              dispatch_async(&_dispatch_main_q, v197);

              if (!self->_currentlyTransititioningBetweenApps || v7 - self->_lastAppTransition > 1.0)
              {
                zoomDelegate9 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
                isTouchEventWeCareAbout = [(ZOTFullscreenEventHandler *)self zoomDelegate];
                [isTouchEventWeCareAbout storedZoomLevelWithFullscreenEventHandler:self];
                v86 = v85;
                zoomDelegate10 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
                [zoomDelegate10 zoomLocationWithFullscreenEventHandler:self];
                [zoomDelegate9 fullscreenEventHandler:self storeZoomLevel:-[ZOTFullscreenEventHandler isMainDisplayZoomedIn](self location:"isMainDisplayZoomedIn") ^ 1 zoomed:self->_applicationKey forKey:{v86, v88, v89}];
              }

              goto LABEL_106;
            }

            if (self->_pannerTrackDistance > 20.0 && !self->_borderpanMode)
            {
              v120 = &_dispatch_main_q;
              v202[0] = _NSConcreteStackBlock;
              v202[1] = 3221225472;
              v202[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_5;
              v202[3] = &unk_78D00;
              v202[4] = self;
              dispatch_async(&_dispatch_main_q, v202);

              SCRCMathGetAverage();
              v122 = v121;
              if (self->_tapCount != 2)
              {
                if (_AXSVoiceOverTouchEnabled())
                {
                  if (self->_snarfing)
                  {
                    if (v7 - self->_anyFingerDownTime < 0.35 || (-[ZOTFullscreenEventHandler zoomDelegate](self, "zoomDelegate"), v123 = objc_claimAutoreleasedReturnValue(), [v123 zoomLevelWithFullscreenEventHandler:self], v125 = v124 < AXZoomMinimumZoomLevel + 0.000001, v123, v125))
                    {
                      currentVector = self->_currentVector;
                      zoomDelegate11 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
                      v128 = ZOTConvertVectorToScreenStandard([zoomDelegate11 interfaceOrientationWithFullscreenEventHandler:self], currentVector);

                      if (v122 <= 125.0)
                      {
                        v187 = 0;
                      }

                      else
                      {
                        v129 = v128;
                        if (v129 <= 45.0 || v129 >= 315.0)
                        {
                          v130 = +[VOSGesture ThreeFingerFlickRight];
                        }

                        else if (v129 <= 45.0 || v129 > 135.0)
                        {
                          if (v129 <= 135.0 || v129 > 225.0)
                          {
                            v187 = 0;
                            if (v129 < 225.0 || v129 > 315.0)
                            {
                              goto LABEL_252;
                            }

                            v130 = +[VOSGesture ThreeFingerFlickDown];
                          }

                          else
                          {
                            v130 = +[VOSGesture ThreeFingerFlickLeft];
                          }
                        }

                        else
                        {
                          v130 = +[VOSGesture ThreeFingerFlickUp];
                        }

                        v187 = v130;
                      }

LABEL_252:
                      isTouchEventWeCareAbout = [NSKeyedArchiver archivedDataWithRootObject:v187 requiringSecureCoding:1 error:0];
                      v188 = +[AXVoiceOverServer server];
                      [v188 triggerGesture:isTouchEventWeCareAbout];

                      goto LABEL_98;
                    }
                  }
                }
              }

              isTouchEventWeCareAbout = [(ZOTFullscreenEventHandler *)self zoomDelegate];
              [isTouchEventWeCareAbout fullscreenEventHandler:self continueZoomMovementWithVelocity:v122 angle:self->_currentVector];
            }

            if ((v191 & 1) != 0 || v7 - self->_lastPanTime < 0.25 || self->_zooming || self->_shouldPerformEditingGesture)
            {
              self->_tapCount = 0;
              if (self->_shouldPerformEditingGesture)
              {
                v173 = [NSMutableArray alloc];
                isTouchEventWeCareAbout = [eventCopy record];
                v174 = [v173 initWithObjects:{isTouchEventWeCareAbout, 0}];

                [(ZOTFullscreenEventHandler *)self _drainEventRepostQueue:v174 replayEvents:1 updateEventTimestamps:1];
              }

              self->_tapLastTime = v52;
              self->_tapDoubleLastTime = v52;
              self->_lastPanTime = v52;
            }

            else
            {
              v181 = self->_tapCount;
              if (v181 < 1 || v7 - self->_tapLastTime <= 0.25)
              {
                self->_tapCount = v181 + 1;
                self->_tapLastTime = v7;
                if (!_AXSVoiceOverTouchEnabled())
                {
                  [(ZOTFullscreenEventHandler *)self _scheduleTapTimeout];
                }

                if (_AXSVoiceOverTouchEnabled())
                {
                  [(AXThreadTimer *)self->_multiTapTimer cancel];
                  objc_initWeak(buf, self);
                  v182 = self->_tapCount;
                  multiTapTimer = self->_multiTapTimer;
                  v198[0] = _NSConcreteStackBlock;
                  v198[1] = 3221225472;
                  v198[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_7;
                  v198[3] = &unk_78E28;
                  objc_copyWeak(v200, buf);
                  v199 = eventCopy;
                  v200[1] = v182;
                  [(AXThreadTimer *)multiTapTimer afterDelay:v198 processBlock:&__block_literal_global_1 cancelBlock:0.275];

                  objc_destroyWeak(v200);
                  objc_destroyWeak(buf);
                }

                else
                {
                  v185 = self->_tapCount;
                  if (v185 >= 3)
                  {
                    if (v185 == 3)
                    {
                      [(AXThreadTimer *)self->_tapCountResetTimer cancel];
                      [(AXThreadTimer *)self->_editingGestureHoldTimer cancel];
                      v186 = &_dispatch_main_q;
                      v201[0] = _NSConcreteStackBlock;
                      v201[1] = 3221225472;
                      v201[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_6;
                      v201[3] = &unk_78D00;
                      v201[4] = self;
                      dispatch_async(&_dispatch_main_q, v201);
                    }

                    self->_tapCount = 0;
                    self->_tapLastTime = v52;
                  }
                }
              }

              else
              {
                self->_tapCount = 1;
                self->_tapLastTime = v7;
                self->_sendingUnzoomedPanFingers = 0;
              }
            }

            goto LABEL_98;
          }

          v52 = ZOTTimeUnset;
          *&self->_twoFingerTapDownWithHold = ZOTTimeUnset;
          self->_firstFingerDownTime = v52;
          self->_secondFingerDownTime = v52;
          self->_thirdFingerDownTime = v52;
          if (_AXSVoiceOverTouchEnabled())
          {
            SCRCMathGetAverage();
            *&v53 = v53;
            if (*&v53 > 125.0 && self->_shouldPerformEditingGesture)
            {
              v54 = self->_currentVector;
              zoomDelegate12 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
              v56 = ZOTConvertVectorToScreenStandard([zoomDelegate12 interfaceOrientationWithFullscreenEventHandler:self], v54);

              v57 = 43;
              if (v56 > 45.0 && v56 < 315.0)
              {
                if (v56 <= 45.0 || v56 > 135.0)
                {
                  if (v56 <= 135.0 || v56 > 225.0)
                  {
                    if (v56 < 225.0 || v56 > 315.0)
                    {
                      goto LABEL_68;
                    }

                    v57 = 40;
                  }

                  else
                  {
                    v57 = 42;
                  }
                }

                else
                {
                  v57 = 41;
                }
              }

              v58 = +[AXVoiceOverServer server];
              [v58 triggerCommand:v57];
            }
          }

LABEL_68:
          [(ZOTFullscreenEventHandler *)self _scheduleTapTimeout];
          goto LABEL_69;
        }
      }

      else
      {

        v18 = self->_anyFingerDown;
      }
    }

    if (!self->_orbSnarfing)
    {
      goto LABEL_26;
    }

    if (v18)
    {
      orbFinger = self->_orbFinger;
      if (orbFinger == -1)
      {
        v30 = [eventCopy fingerAtIndex:0];
        self->_orbFinger = [v30 identifier];

        orbFinger = self->_orbFinger;
      }

      v31 = [eventCopy fingerWithIdentifier:orbFinger];
      [v31 location];
      v33 = v32;

      v217[0] = _NSConcreteStackBlock;
      v217[1] = 3221225472;
      v217[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_3;
      v217[3] = &unk_78D28;
      v217[4] = self;
      v217[5] = ZOTDenormalizePoint(v34, v35, v33);
      v217[6] = v36;
      dispatch_async(&_dispatch_main_q, v217);
    }

    else
    {
      v45 = [(ZOTFullscreenEventHandler *)self _middleFingerForEvent:eventCopy];
      v218[0] = _NSConcreteStackBlock;
      v218[1] = 3221225472;
      v218[2] = __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_2;
      v218[3] = &unk_78D28;
      v218[4] = self;
      v218[5] = ZOTDenormalizePoint(v45, v46, v47);
      v218[6] = v48;
      dispatch_async(&_dispatch_main_q, v218);
      self->_orbSnarfing = 0;
      self->_orbFinger = -1;
    }
  }

LABEL_228:

  return 1;
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 fullscreenEventHandler:*(a1 + 32) didStartOrbAtLocation:{*(a1 + 40), *(a1 + 48)}];
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 fullscreenEventHandler:*(a1 + 32) didEndOrbAtLocation:{*(a1 + 40), *(a1 + 48)}];
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 fullscreenEventHandler:*(a1 + 32) updateOrbMovementAtLocation:{*(a1 + 40), *(a1 + 48)}];
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 stopZoomMovementWithVelocityWithFullscreenEventHandler:*(a1 + 32)];
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_286(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  WeakRetained[1493] = 1;
  if (_AXSVoiceOverTouchEnabled())
  {
    v1 = +[AXVoiceOverServer server];
    [v1 triggerCommand:39];
  }
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_2_287(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _drainEventRepostQueue:*(WeakRetained + 205) replayEvents:0 updateEventTimestamps:0];
  *(WeakRetained + 1493) = 0;
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_3_288(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained[200] == 1)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained eventDelegate];
    [v3 dispatchEventToSystem:*(a1 + 32)];

    WeakRetained = v4;
  }
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_4_289(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 endZoomMovementWithFullscreenEventHandler:*(a1 + 32)];
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 endZoomMovementWithFullscreenEventHandler:*(a1 + 32)];
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3 = ZOTDenormalizePoint(a1, a2, *(*(a1 + 32) + 1224));
  v5 = v4;
  v6 = [*(a1 + 32) zoomDelegate];
  [v6 fullscreenEventHandler:*(a1 + 32) didReceiveThreeFingerTripleTapAtLocation:{v3, v5}];
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleVoiceOverMultiTapActionWithEvent:*(a1 + 32) tapCount:*(a1 + 48)];
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 updateStoredZoomedLevelWithFullscreenEventHandler:*(a1 + 32)];
}

void __42__ZOTFullscreenEventHandler__handleEvent___block_invoke_11(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 stopZoomMovementWithVelocityWithFullscreenEventHandler:*(a1 + 32)];
}

- (BOOL)_handleTrackpadEvent:(id)event
{
  eventCopy = event;
  [(ZOTEvent *)eventCopy time];
  v6 = v5;
  fingerCount = [(ZOTEvent *)eventCopy fingerCount];
  isTouchEventWeCareAbout = [(ZOTEvent *)eventCopy isTouchEventWeCareAbout];
  v9 = isTouchEventWeCareAbout;
  v10 = self->_trackpadEventFingersTracking || *&v6 - self->_snarfLastTime < 0.12;
  self->_trackpadSnarfing = v10;
  if (self->_trackpadTapCount == 1)
  {
    if (fingerCount == &dword_0 + 3)
    {
      v11 = isTouchEventWeCareAbout ^ 1;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  self->_anyTrackpadFingerDown = [(ZOTEvent *)eventCopy fingerCount]!= 0;
  if (([(ZOTEvent *)eventCopy handEventType]& 0xFFFFFFFB) == 1)
  {
    if ([(ZOTEvent *)eventCopy fingerCount]== &dword_0 + 1)
    {
      v13 = 1552;
    }

    else if ([(ZOTEvent *)eventCopy fingerCount]== &dword_0 + 2)
    {
      v13 = 1560;
    }

    else
    {
      if ([(ZOTEvent *)eventCopy fingerCount]!= &dword_0 + 3)
      {
        goto LABEL_17;
      }

      v13 = 1568;
    }

    *(&self->super.isa + v13) = v6;
  }

LABEL_17:
  if (self->_anyTrackpadFingerDown)
  {
    anyTrackpadFingerDownTime = self->_anyTrackpadFingerDownTime;
    v15 = ZOTTimeUnset;
    if (anyTrackpadFingerDownTime == ZOTTimeUnset)
    {
      self->_anyTrackpadFingerDownTime = *&v6;
    }
  }

  else
  {
    v15 = ZOTTimeUnset;
    *&self->_firstTrackpadFingerDownTime = ZOTTimeUnset;
    self->_secondTrackpadFingerDownTime = v15;
    self->_thirdTrackpadFingerDownTime = v15;
    [(ZOTFullscreenEventHandler *)self _scheduleTrackpadTapTimeout];
  }

  if (v9 && !self->_trackpadSnarfing && fingerCount == &dword_0 + 3)
  {
    secondTrackpadFingerDownTime = self->_secondTrackpadFingerDownTime;
    v12 = *&v6 - secondTrackpadFingerDownTime;
    v17 = secondTrackpadFingerDownTime == v15;
    anyTrackpadFingerDownTime = 0.75;
    if (!v17 && v12 > 0.75)
    {
      goto LABEL_40;
    }

    firstTrackpadFingerDownTime = self->_firstTrackpadFingerDownTime;
    if (firstTrackpadFingerDownTime != v15)
    {
      anyTrackpadFingerDownTime = *&v6 - firstTrackpadFingerDownTime;
      v12 = 0.75;
      if (anyTrackpadFingerDownTime > 0.75)
      {
        goto LABEL_40;
      }
    }

    self->_trackpadSnarfing = 1;
    record = [(ZOTEvent *)eventCopy record];
    -[ZOTFullscreenEventHandler postHandCancelWithSenderID:](self, "postHandCancelWithSenderID:", [record senderID]);

    eventDelegate = [(ZOTFullscreenEventHandler *)self eventDelegate];
    [eventDelegate disableSleepTimer:1];

    if (!self->_trackpadSnarfing)
    {
      goto LABEL_79;
    }
  }

  else if (!self->_trackpadSnarfing)
  {
    goto LABEL_40;
  }

  record2 = [(ZOTEvent *)eventCopy record];
  handInfo = [record2 handInfo];
  if ([handInfo initialFingerCount])
  {
    record3 = [(ZOTEvent *)eventCopy record];
    handInfo2 = [record3 handInfo];
    lifetimeFingerCount = [handInfo2 lifetimeFingerCount];

    if (lifetimeFingerCount <= 2)
    {
      v27 = ZOOMLogEvents();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        record4 = [(ZOTEvent *)eventCopy record];
        *buf = 138412290;
        *&buf[4] = record4;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "one of the trackpad fingers we were tracking with zoom was cancelled, so stop snarfing: %@", buf, 0xCu);
      }

      [(AXThreadTimer *)self->_trackpadTapCountResetTimer cancel];
      goto LABEL_71;
    }
  }

  else
  {
  }

LABEL_40:
  if ((self->_trackpadSnarfing & v9 & 1) == 0)
  {
LABEL_74:
    if (!fingerCount && (self->_anyTrackpadFingerDownTime != v15 || [(ZOTEvent *)self->_lastTrackpadEvent handEventType]== 9 && [(ZOTEvent *)eventCopy handEventType]== 10))
    {
      zoomDelegate = [(ZOTFullscreenEventHandler *)self zoomDelegate];
      [zoomDelegate zoomLevelWithFullscreenEventHandler:self];
      self->_mainDisplayZoomLevel = v62;

      self->_anyTrackpadFingerDownTime = v15;
      self->_trackpadZooming = 0;
    }

    goto LABEL_79;
  }

  self->_trackpadEventFingersTracking = 1;
  trackpadSnarfFingerCount = self->_trackpadSnarfFingerCount;
  if (!fingerCount)
  {
    if (trackpadSnarfFingerCount && [(ZOTEvent *)eventCopy handEventType:anyTrackpadFingerDownTime]!= 8)
    {
      if (self->_trackpadZooming)
      {
        self->_trackpadTapCount = 0;
        self->_trackpadTapLastTime = v15;
        self->_trackpadTapDoubleLastTime = v15;
      }

      else
      {
        trackpadTapCount = self->_trackpadTapCount;
        if (trackpadTapCount < 1 || *&v6 - self->_trackpadTapLastTime <= 0.25)
        {
          self->_trackpadTapCount = trackpadTapCount + 1;
          self->_trackpadTapLastTime = *&v6;
          [(ZOTFullscreenEventHandler *)self _scheduleTrackpadTapTimeout];
          v53 = self->_trackpadTapCount;
          if (v53 == 3)
          {
            [(AXThreadTimer *)self->_trackpadTapCountResetTimer cancel];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = __50__ZOTFullscreenEventHandler__handleTrackpadEvent___block_invoke;
            block[3] = &unk_78D00;
            block[4] = self;
            dispatch_async(&_dispatch_main_q, block);
          }

          else if (v53 < 4)
          {
            goto LABEL_71;
          }

          self->_trackpadTapCount = 0;
          self->_trackpadTapLastTime = v15;
          goto LABEL_71;
        }

        self->_trackpadTapCount = 1;
        self->_trackpadTapLastTime = *&v6;
      }
    }

LABEL_71:
    self->_trackpadVelocityLastTime = v15;
    self->_trackpadOffsetLocation = CGPointZero;
    SCRCMathClearAverage();
    self->_trackpadZooming = 0;
    self->_zoomStartOffset = 0.0;
    self->_tapDoubleTrackingForTrackpad = 0;
    self->_trackpadEventFingersTracking = 0;
    self->_trackpadSnarfFingerCount = 0;
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = __50__ZOTFullscreenEventHandler__handleTrackpadEvent___block_invoke_2;
    v66[3] = &unk_78D00;
    v66[4] = self;
    dispatch_async(&_dispatch_main_q, v66);
    if (!self->_currentlyTransititioningBetweenApps || *&v6 - self->_lastAppTransition > 1.0)
    {
      zoomDelegate2 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
      zoomDelegate3 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
      [zoomDelegate3 storedZoomLevelWithFullscreenEventHandler:self];
      v57 = v56;
      zoomDelegate4 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
      [zoomDelegate4 zoomLocationWithFullscreenEventHandler:self];
      [zoomDelegate2 fullscreenEventHandler:self storeZoomLevel:-[ZOTFullscreenEventHandler isMainDisplayZoomedIn](self location:"isMainDisplayZoomedIn") ^ 1 zoomed:self->_applicationKey forKey:{v57, v59, v60}];
    }

    goto LABEL_74;
  }

  v30 = [(ZOTEvent *)eventCopy fingerWithIdentifier:self->_trackpadSnarfFingerIdentifier, anyTrackpadFingerDownTime, v12];
  if (v30 && ![(ZOTEvent *)eventCopy chordChanged]&& trackpadSnarfFingerCount == fingerCount)
  {
    [v30 location];
    v32 = v31;
    v34 = v33;
  }

  else
  {
    v35 = [(ZOTEvent *)eventCopy fingerAtIndex:0];

    self->_trackpadSnarfFingerIdentifier = [v35 identifier];
    [v35 location];
    v32 = v36;
    v34 = v37;
    v38 = fabs(v37) != INFINITY;
    if (fabs(v36) == INFINITY || !v38)
    {
      record5 = [(ZOTEvent *)eventCopy record];
      [record5 location];
      v32 = v40;
      v34 = v41;
    }

    y = self->_trackingTrackpadLocation.y;
    self->_trackpadOffsetLocation.x = self->_trackingTrackpadLocation.x - v32;
    self->_trackpadOffsetLocation.y = y - v34;
    self->_trackpadVelocityLastTime = v15;
    v30 = v35;
  }

  v43 = fabs(v34) != INFINITY;
  if (fabs(v32) == INFINITY || !v43)
  {
    record6 = [(ZOTEvent *)eventCopy record];
    [record6 location];
    v32 = v45;
    v34 = v46;
  }

  self->_trackpadSnarfFingerCount = fingerCount;
  v47 = v32 + self->_trackpadOffsetLocation.x;
  v48 = v34 + self->_trackpadOffsetLocation.y;
  self->_trackingTrackpadLocation.x = v47;
  self->_trackingTrackpadLocation.y = v48;
  v49 = self->_trackpadTapCount;
  if (v49 > 1 || (block[5] = 0, *buf = 0, [(ZOTEvent *)eventCopy averageLocation], self->_trackpadVelocityLocation.x = v50, self->_trackpadVelocityLocation.y = v51, SCRCMathGetVectorAndDistanceForPoints(), (v49 = self->_trackpadTapCount) != 0))
  {
    if (v49 == 1)
    {
      [(ZOTEvent *)eventCopy averageLocation];
      [ZOTFullscreenEventHandler _updateVelocityAndVectorWithEventLocation:"_updateVelocityAndVectorWithEventLocation:startPoint:endPoint:forTrackpad:" startPoint:1 endPoint:? forTrackpad:?];
      [(AXThreadTimer *)self->_trackpadTapCountResetTimer cancel];
      [(ZOTFullscreenEventHandler *)self _handleTrackpadDoubleTapEvent:eventCopy newLocation:v47, v48];
    }
  }

  else
  {
    [(AXThreadTimer *)self->_trackpadTapCountResetTimer cancel];
  }

LABEL_79:
  lastTrackpadEvent = self->_lastTrackpadEvent;
  self->_lastTrackpadEvent = eventCopy;

  if ((v11 & 1) == 0)
  {
    eventDelegate2 = [(ZOTFullscreenEventHandler *)self eventDelegate];
    [eventDelegate2 postHandCancelWithSenderID:0x8000000817319374];
  }

  return v11 ^ 1;
}

void __50__ZOTFullscreenEventHandler__handleTrackpadEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = ZOTDenormalizePoint(a1, a2, 0.5);
  v5 = v4;
  v6 = [*(a1 + 32) zoomDelegate];
  [v6 fullscreenEventHandler:*(a1 + 32) didReceiveThreeFingerTripleTapAtLocation:{v3, v5}];
}

void __50__ZOTFullscreenEventHandler__handleTrackpadEvent___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 updateStoredZoomedLevelWithFullscreenEventHandler:*(a1 + 32)];
}

- (void)_eventPostTimerCallback
{
  self->_allowTimedEventPosting = 0;
  eventDelegate = [(ZOTFullscreenEventHandler *)self eventDelegate];
  [eventDelegate dispatchEntireEventQueue];
}

- (void)_clearState
{
  [(AXThreadTimer *)self->_autopanTimer cancel];
  autopanEvent = self->_autopanEvent;
  self->_autopanEvent = 0;

  eventDelegate = [(ZOTFullscreenEventHandler *)self eventDelegate];
  [eventDelegate disableSleepTimer:0];

  self->_borderpanMode = 0;
  self->_allowTimedEventPosting = 1;
  self->_pannerTrackDistance = 0.0;
  if (self->_ignoreSnarfingForFingerSession)
  {
    self->_wasPassingThroughSystemGesture = 1;
  }

  self->_ignoreSnarfingForFingerSession = 0;
  self->_zoomPanning = 0;
  v5 = ZOTTimeUnset;
  *&self->_anyFingerDownTime = ZOTTimeUnset;
  zoomDelegate = [(ZOTFullscreenEventHandler *)self zoomDelegate];
  [zoomDelegate zoomLevelWithFullscreenEventHandler:self];
  self->_mainDisplayZoomLevel = v7;

  self->_timerFingerCount = 0;
  self->_flicking = 0;
  v8 = CGPointZero;
  self->_flickLocation = CGPointZero;
  self->_flickTime = v5;
  self->_pinchDetectionDistance = 0.0;
  self->_initialSingleFingerLocation = v8;
  zoomDelegate2 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
  [zoomDelegate2 fullscreenEventHandler:self setUsingRelativePushPanning:0];

  self->_firstTouchWentIntoLensContent = 0;
}

- (BOOL)_autoPanIfNecessaryWithEvent:(id)event isDragging:(BOOL)dragging
{
  eventCopy = event;
  v28 = 0.0;
  [eventCopy magneticLocation];
  v9 = v8;
  v11 = v10;
  zoomDelegate = [(ZOTFullscreenEventHandler *)self zoomDelegate];
  v13 = [zoomDelegate interfaceOrientationWithFullscreenEventHandler:self];
  v14 = 1.0 - v9;
  if (v13 == 2)
  {
    v15 = 1.0 - v9;
  }

  else
  {
    v15 = v9;
  }

  if (v13 == 2)
  {
    v16 = 1.0 - v11;
  }

  else
  {
    v16 = v11;
  }

  if (v13 == 3)
  {
    v15 = v11;
  }

  else
  {
    v14 = v16;
  }

  if (v13 == 4)
  {
    v17 = 1.0 - v11;
  }

  else
  {
    v17 = v15;
  }

  if (v13 != 4)
  {
    v9 = v14;
  }

  zoomDelegate2 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
  if (![zoomDelegate2 fullscreenEventHandler:self autopanShouldStartWithPoint:&v28 speedFactor:0 initialSingleFingerLocation:v17 fingerCount:v9 pointHasBeenMapped:{self->_initialSingleFingerLocation.x, self->_initialSingleFingerLocation.y, objc_msgSend(eventCopy, "fingerCount")}])
  {

    goto LABEL_21;
  }

  firstTouchWentIntoLensContent = self->_firstTouchWentIntoLensContent;

  if (!firstTouchWentIntoLensContent)
  {
LABEL_21:
    [(AXThreadTimer *)self->_autopanTimer cancel];
    v22 = 0;
    goto LABEL_29;
  }

  v20 = v28;
  self->_autopanSpeedFactor = v28;
  v21 = 0.0;
  if (v20 > 0.0)
  {
    if (v20 >= 0.100000001)
    {
      v21 = 0.00200000009 / v20;
    }

    else
    {
      v21 = 0.0200000014;
    }
  }

  self->_autopanDelay = v21;
  objc_storeStrong(&self->_autopanEvent, event);
  if ([eventCopy handEventType] == 1)
  {
    objc_storeStrong(&self->_autopanDownEvent, event);
  }

  if (![(AXThreadTimer *)self->_autopanTimer isPending]|| [(AXThreadTimer *)self->_autopanTimer isCancelled])
  {
    objc_initWeak(&location, self);
    autopanTimer = self->_autopanTimer;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __69__ZOTFullscreenEventHandler__autoPanIfNecessaryWithEvent_isDragging___block_invoke;
    v25[3] = &unk_78BD0;
    v25[4] = self;
    draggingCopy = dragging;
    [(AXThreadTimer *)autopanTimer afterDelay:v25 processBlock:0.1];
    objc_destroyWeak(&location);
  }

  v22 = 1;
LABEL_29:

  return v22;
}

- (void)_updateAutopanWhileDragging:(BOOL)dragging
{
  isCancelled = [(AXThreadTimer *)self->_autopanTimer isCancelled];
  autopanEvent = self->_autopanEvent;
  if (!isCancelled)
  {
    [(ZOTEvent *)autopanEvent magneticLocation];
    v9 = v8;
    v11 = v10;
    zoomDelegate = [(ZOTFullscreenEventHandler *)self zoomDelegate];
    v13 = [zoomDelegate interfaceOrientationWithFullscreenEventHandler:self];
    v14 = 1.0 - v9;
    if (v13 == 2)
    {
      v15 = 1.0 - v9;
    }

    else
    {
      v15 = v9;
    }

    if (v13 == 2)
    {
      v16 = 1.0 - v11;
    }

    else
    {
      v16 = v11;
    }

    if (v13 == 3)
    {
      v15 = v11;
    }

    else
    {
      v14 = v16;
    }

    if (v13 == 4)
    {
      v17 = 1.0 - v11;
    }

    else
    {
      v17 = v15;
    }

    if (v13 == 4)
    {
      v18 = v9;
    }

    else
    {
      v18 = v14;
    }

    v19 = self->_autopanSpeedFactor * 4.0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __57__ZOTFullscreenEventHandler__updateAutopanWhileDragging___block_invoke;
    block[3] = &unk_78E70;
    block[4] = self;
    *&block[5] = v17;
    *&block[6] = v18;
    *&block[7] = v19;
    dispatch_async(&_dispatch_main_q, block);
    zoomDelegate2 = [(ZOTFullscreenEventHandler *)self zoomDelegate];
    if (([zoomDelegate2 usingRelativePushPanningWithFullscreenEventHandler:self] & 1) == 0)
    {
      snarfing = self->_snarfing;

      if (snarfing || dragging || (-1431655765 * _updateAutopanWhileDragging__ToggleCount + 715827882) > 0x55555554)
      {
        goto LABEL_25;
      }

      zoomDelegate2 = [(ZOTEvent *)self->_autopanEvent copyWithZone:0];
      [(AXThreadTimer *)self->_eventPostTimer cancel];
      eventDelegate = [(ZOTFullscreenEventHandler *)self eventDelegate];
      [eventDelegate dispatchEventToSystem:zoomDelegate2];
    }

LABEL_25:
    ++_updateAutopanWhileDragging__ToggleCount;
    objc_initWeak(&location, self);
    autopanTimer = self->_autopanTimer;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = __57__ZOTFullscreenEventHandler__updateAutopanWhileDragging___block_invoke_2;
    v24[3] = &unk_78BD0;
    v24[4] = self;
    draggingCopy = dragging;
    [(AXThreadTimer *)autopanTimer afterDelay:v24 processBlock:0.0166666675];
    objc_destroyWeak(&location);
    return;
  }

  self->_autopanEvent = 0;

  autopanDownEvent = self->_autopanDownEvent;
  self->_autopanDownEvent = 0;
}

void __57__ZOTFullscreenEventHandler__updateAutopanWhileDragging___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 fullscreenEventHandler:*(a1 + 40) autopanWithLocation:*(a1 + 48) initialSingleFingerLocation:*(*(a1 + 32) + 1472) distance:*(*(a1 + 32) + 1480) animationDuration:*(a1 + 56) useGutterDistance:0.0166666675 pointHasBeenMapped:?];
}

- (void)_handleTrackpadDoubleTapEvent:(id)event newLocation:(CGPoint)location
{
  y = location.y;
  eventCopy = event;
  if (self->_tapDoubleTrackingForTrackpad)
  {
    y = self->_zoomerTrackpadTrackStart;
  }

  else
  {
    self->_zoomerTrackpadTrackStart = y;
    self->_tapDoubleTrackingForTrackpad = 1;
  }

  v7 = self->_trackingTrackpadLocation.y;
  v8 = vabdd_f64(y, v7);
  if (self->_trackpadZooming || v8 > 0.0500000007)
  {
    v9 = y - v7;
    if (self->_trackpadZooming)
    {
      zoomStartOffset = self->_zoomStartOffset;
    }

    else
    {
      v11 = ZOOMLogEvents();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        trackpadZooming = self->_trackpadZooming;
        zoomerTrackpadTrackStart = self->_zoomerTrackpadTrackStart;
        *buf = 67110144;
        v22 = trackpadZooming;
        v23 = 1024;
        v24 = v8 > 0.0500000007;
        v25 = 2048;
        v26 = zoomerTrackpadTrackStart;
        v27 = 2048;
        v28 = v7;
        v29 = 2048;
        v30 = v9;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Zooming. Canceling timer. trackpadZooming:%d deltaExceeded:%d zoomerTrackpadTrackStart:%f zoomValue:%f normalizedDelta:%f", buf, 0x2Cu);
      }

      self->_trackpadZooming = 1;
      *v14.i64 = -v9;
      v15.i64[0] = 0x3FA99999A0000000;
      v16.f64[0] = NAN;
      v16.f64[1] = NAN;
      *&zoomStartOffset = vbslq_s8(vnegq_f64(v16), v15, v14).u64[0];
      self->_zoomStartOffset = zoomStartOffset;
    }

    v17 = v9 + zoomStartOffset;
    v18 = AXZoomMinimumZoomLevel;
    v19 = self->_mainDisplayZoomLevel + v17 * (AXZoomMaximumZoomLevel - AXZoomMinimumZoomLevel) * 0.5;
    if (v19 >= AXZoomMinimumZoomLevel + 0.000001)
    {
      v18 = v19;
      if (v19 > AXZoomMaximumZoomLevel)
      {
        v18 = AXZoomMaximumZoomLevel;
      }
    }

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __71__ZOTFullscreenEventHandler__handleTrackpadDoubleTapEvent_newLocation___block_invoke;
    v20[3] = &unk_78E98;
    v20[4] = self;
    *&v20[5] = v18;
    dispatch_async(&_dispatch_main_q, v20);
  }
}

void __71__ZOTFullscreenEventHandler__handleTrackpadDoubleTapEvent_newLocation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 fullscreenEventHandler:*(a1 + 32) setZoomLevelFromTrackpadGesture:*(a1 + 40)];
}

- (void)_handleDoubleTapEvent:(id)event newLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  eventCopy = event;
  fingerCount = [eventCopy fingerCount];
  if (fingerCount == &dword_0 + 3)
  {
    fingerCount = [(ZOTFullscreenEventHandler *)self _middleFingerForEvent:eventCopy];
    self->_tapPoint.x = v10;
    self->_tapPoint.y = v11;
  }

  if (self->_tapDoubleTracking)
  {
    deviceOrientation = self->_deviceOrientation;
  }

  else
  {
    zoomDelegate = [(ZOTFullscreenEventHandler *)self zoomDelegate];
    self->_deviceOrientation = [zoomDelegate interfaceOrientationWithFullscreenEventHandler:self];

    deviceOrientation = self->_deviceOrientation;
    if (deviceOrientation != 4)
    {
      if (deviceOrientation == 3)
      {
        x = 1.0 - x;
      }

      else if (deviceOrientation == 2)
      {
        x = 1.0 - y;
      }

      else
      {
        x = y;
      }
    }

    self->_zoomerTrackStart = x;
    self->_tapDoubleTracking = 1;
  }

  v14 = self->_trackingLocation.x;
  if (deviceOrientation != 4)
  {
    if (deviceOrientation == 3)
    {
      v14 = 1.0 - v14;
    }

    else if (deviceOrientation == 2)
    {
      v14 = 1.0 - self->_trackingLocation.y;
    }

    else
    {
      v14 = self->_trackingLocation.y;
    }
  }

  v15 = ZOTDenormalizeValue(fingerCount, v9, self->_zoomerTrackStart - v14);
  if (self->_shouldPerformEditingGesture)
  {
    if (!_AXSVoiceOverTouchEnabled())
    {
      if ([(NSMutableArray *)self->_eventReplayQueue count])
      {
        [(ZOTFullscreenEventHandler *)self _drainEventRepostQueue:self->_eventReplayQueue replayEvents:1 updateEventTimestamps:1];
      }

      record6 = +[AXEventTapManager sharedManager];
      _zoomSenderIdentifierData = [(ZOTFullscreenEventHandler *)self _zoomSenderIdentifierData];
      record = [eventCopy record];
      [record setAccessibilityData:_zoomSenderIdentifierData];

      record2 = [eventCopy record];
      [record2 applyAccessibilityDataToCreatorHIDEvent];

      record3 = [eventCopy record];
      v21 = [(ZOTFullscreenEventHandler *)self _senderIDForRepostingOfEvent:record3];

      record4 = [eventCopy record];
      [record6 sendHIDSystemEvent:record4 repostCreatorHIDEvent:1 senderID:v21];

      goto LABEL_29;
    }
  }

  else
  {
    v23 = v15;
    v24 = fabs(v15);
    if (self->_zooming || v24 > 20.0)
    {
      if (self->_zooming)
      {
        zoomStartOffset = self->_zoomStartOffset;
      }

      else
      {
        v29 = ZOOMLogEvents();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          zooming = self->_zooming;
          zoomerTrackStart = self->_zoomerTrackStart;
          *buf = 67110144;
          v41 = zooming;
          v42 = 1024;
          v43 = v24 > 20.0;
          v44 = 2048;
          v45 = zoomerTrackStart;
          v46 = 2048;
          v47 = v14;
          v48 = 2048;
          v49 = v23;
          _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "Zooming. Canceling timer. zooming:%d deltaExceeded:%d zoomTrackerStart:%f zoomValue:%f normalizedDelta:%f", buf, 0x2Cu);
        }

        [(AXThreadTimer *)self->_editingGestureHoldTimer cancel];
        self->_zooming = 1;
        *v32.i64 = -v23;
        v33.i64[0] = 20.0;
        v34.f64[0] = NAN;
        v34.f64[1] = NAN;
        *&zoomStartOffset = vbslq_s8(vnegq_f64(v34), v33, v32).u64[0];
        self->_zoomStartOffset = zoomStartOffset;
      }

      v35 = (v23 + zoomStartOffset) * (AXZoomMaximumZoomLevel - AXZoomMinimumZoomLevel);
      v36 = v35 / ZOTMainScreenSize();
      v37 = self->_mainDisplayZoomLevel + ZOTMainScreenScaleFactor() * v36;
      v38 = AXZoomMinimumZoomLevel;
      if (v37 >= AXZoomMinimumZoomLevel + 0.000001)
      {
        v38 = v37;
        if (v37 > AXZoomMaximumZoomLevel)
        {
          v38 = AXZoomMaximumZoomLevel;
        }
      }

      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = __63__ZOTFullscreenEventHandler__handleDoubleTapEvent_newLocation___block_invoke;
      v39[3] = &unk_78E98;
      v39[4] = self;
      *&v39[5] = v38;
      dispatch_async(&_dispatch_main_q, v39);
    }

    else if (([(AXThreadTimer *)self->_editingGestureHoldTimer isPending]& 1) != 0 || [(AXThreadTimer *)self->_editingGestureHoldTimer isActive])
    {
      lastObject = [(NSMutableArray *)self->_eventReplayQueue lastObject];
      record5 = [eventCopy record];

      if (lastObject != record5)
      {
        eventReplayQueue = self->_eventReplayQueue;
        record6 = [eventCopy record];
        [(NSMutableArray *)eventReplayQueue addObject:record6];
LABEL_29:
      }
    }
  }
}

void __63__ZOTFullscreenEventHandler__handleDoubleTapEvent_newLocation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 fullscreenEventHandler:*(a1 + 32) setZoomLevel:*(a1 + 40) duration:0.0];
}

- (void)_handleVoiceOverMultiTapActionWithEvent:(id)event tapCount:(int64_t)count
{
  eventCopy = event;
  v7 = eventCopy;
  if (count <= 2)
  {
    if (count == 1)
    {
      v8 = +[VOSGesture ThreeFingerSingleTap];
      goto LABEL_13;
    }

    if (count == 2)
    {
      [eventCopy time];
      self->_tapDoubleLastTime = v9;
      isAnyDisplayZoomedIn = [(ZOTFullscreenEventHandler *)self isAnyDisplayZoomedIn];
      if (isAnyDisplayZoomedIn)
      {
        v12 = v19;
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = __78__ZOTFullscreenEventHandler__handleVoiceOverMultiTapActionWithEvent_tapCount___block_invoke_2;
        v19[3] = &unk_78D00;
        v19[4] = self;
      }

      else
      {
        v16 = ZOTDenormalizePoint(isAnyDisplayZoomedIn, v11, self->_tapPoint.x);
        v12 = block;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __78__ZOTFullscreenEventHandler__handleVoiceOverMultiTapActionWithEvent_tapCount___block_invoke;
        block[3] = &unk_78D28;
        block[4] = self;
        *&block[5] = v16;
        block[6] = v17;
      }

      dispatch_async(&_dispatch_main_q, v12);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = __78__ZOTFullscreenEventHandler__handleVoiceOverMultiTapActionWithEvent_tapCount___block_invoke_3;
      v18[3] = &unk_78D00;
      v18[4] = self;
      dispatch_async(&_dispatch_main_q, v18);
    }
  }

  else
  {
    switch(count)
    {
      case 3:
        v8 = +[VOSGesture ThreeFingerDoubleTap];
        goto LABEL_13;
      case 4:
        v8 = +[VOSGesture ThreeFingerTripleTap];
        goto LABEL_13;
      case 5:
        v8 = +[VOSGesture ThreeFingerQuadrupleTap];
LABEL_13:
        v13 = v8;
        v14 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];

        v15 = +[AXVoiceOverServer server];
        [v15 triggerGesture:v14];

        break;
    }
  }

  self->_tapCount = 0;
  *&self->_tapLastTime = ZOTTimeUnset;
}

void __78__ZOTFullscreenEventHandler__handleVoiceOverMultiTapActionWithEvent_tapCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 fullscreenEventHandler:*(a1 + 32) didReceiveThreeFingerDoubleTapAtLocation:{*(a1 + 40), *(a1 + 48)}];

  v3 = [*(a1 + 32) zoomDelegate];
  [v3 zoomLevelWithFullscreenEventHandler:*(a1 + 32)];
  *(*(a1 + 32) + 1328) = v4;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [*(a1 + 32) externalDisplayZoomDelegates];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v6 = [*(*(&v11 + 1) + 8 * v10) fullscreenEventHandler:*(a1 + 32) didReceiveThreeFingerDoubleTapAtLocation:{ZOTDenormalizePoint(v6, v7, 0.5)}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v8 = v6;
    }

    while (v6);
  }
}

void __78__ZOTFullscreenEventHandler__handleVoiceOverMultiTapActionWithEvent_tapCount___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isMainDisplayZoomedIn])
  {
    v2 = [*(a1 + 32) zoomDelegate];
    [v2 fullscreenEventHandler:*(a1 + 32) didReceiveThreeFingerDoubleTapAtLocation:{CGPointZero.x, CGPointZero.y}];

    v3 = [*(a1 + 32) zoomDelegate];
    [v3 zoomLevelWithFullscreenEventHandler:*(a1 + 32)];
    *(*(a1 + 32) + 1328) = v4;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [*(a1 + 32) externalDisplayZoomDelegates];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    y = CGPointZero.y;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([*(a1 + 32) isDisplayZoomedIn:v11])
        {
          [v11 fullscreenEventHandler:*(a1 + 32) didReceiveThreeFingerDoubleTapAtLocation:{CGPointZero.x, y}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

void __78__ZOTFullscreenEventHandler__handleVoiceOverMultiTapActionWithEvent_tapCount___block_invoke_3(uint64_t a1)
{
  v9 = [*(a1 + 32) zoomDelegate];
  v2 = *(a1 + 32);
  v3 = [v2 zoomDelegate];
  [v3 storedZoomLevelWithFullscreenEventHandler:*(a1 + 32)];
  v5 = v4;
  v6 = [*(a1 + 32) zoomDelegate];
  [v6 zoomLocationWithFullscreenEventHandler:*(a1 + 32)];
  [v9 fullscreenEventHandler:v2 storeZoomLevel:objc_msgSend(*(a1 + 32) location:"isMainDisplayZoomedIn") ^ 1 zoomed:*(*(a1 + 32) + 1296) forKey:{v5, v7, v8}];
}

- (double)_currentVelocity:(id)velocity
{
  velocityCopy = velocity;
  [velocityCopy averageLocation];
  v7 = v5;
  v8 = v6;
  if (self->_flickTime == ZOTTimeUnset)
  {
    self->_flickLocation.x = v5;
    self->_flickLocation.y = v6;
  }

  [velocityCopy time];
  v10 = v9;

  v11 = v10 - self->_flickTime;
  self->_flickTime = v10;
  SCRCMathGetDistanceBetweenPoints();
  self->_flickLocation.x = v7;
  self->_flickLocation.y = v8;
  result = v12 / v11;
  if (v11 <= 0.0)
  {
    return 0.0;
  }

  return result;
}

- (CGPoint)_middleFingerForEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (ZOTIsWildcat == 1)
  {
    v6 = ZOTDeviceRotation();
    zoomDelegate = [(ZOTFullscreenEventHandler *)self zoomDelegate];
    v8 = [zoomDelegate interfaceOrientationWithFullscreenEventHandler:self];

    v9 = v8 == 2 && v6 == 2;
    v10 = v8 != 2 && v6 == 2;
    if (v8 == 3)
    {
      v9 = 0;
      v11 = v6 == 2;
    }

    else
    {
      v11 = 0;
    }

    if (v8 == 3)
    {
      v10 = 0;
    }

    v12 = v8 != 4 && v9;
    v13 = v8 != 4 && v11;
    v14 = v8 == 4 && v6 == 2;
    v15 = v8 != 4 && v10;
    v16 = [v5 fingerAtIndex:0];
    [v16 location];
    v18 = v17;
    v20 = v19;

    fingerCount = [v5 fingerCount];
    if (fingerCount >= 2)
    {
      v22 = fingerCount;
      for (i = 1; i != v22; ++i)
      {
        v24 = [v5 fingerAtIndex:i];
        [v24 location];
        v26 = v25;
        v28 = v27;

        if (v12 && v26 < v18)
        {
          v29 = v26;
        }

        else
        {
          v29 = v18;
        }

        v30 = v26 > v29 && v15;
        if (v30 || v12 && v26 < v18)
        {
          v31 = v28;
        }

        else
        {
          v31 = v20;
        }

        v32 = v14 && v28 < v31;
        if (v14 && v28 < v31)
        {
          v31 = v28;
        }

        if (v13 && v28 > v31)
        {
          v20 = v28;
        }

        else
        {
          v20 = v31;
        }

        if ((v13 && v28 > v31) | (v32 | v30) & 1)
        {
          v18 = v26;
        }

        else
        {
          v18 = v29;
        }
      }
    }
  }

  else
  {
    [eventCopy magneticLocation];
    v18 = v33;
    v20 = v34;
  }

  v35 = v18;
  v36 = v20;
  result.y = v36;
  result.x = v35;
  return result;
}

- (void)_drainEventRepostQueue:(id)queue replayEvents:(BOOL)events updateEventTimestamps:(BOOL)timestamps
{
  timestampsCopy = timestamps;
  eventsCopy = events;
  queueCopy = queue;
  if (eventsCopy)
  {
    v21 = +[AXEventTapManager sharedManager];
    _zoomSenderIdentifierData = [(ZOTFullscreenEventHandler *)self _zoomSenderIdentifierData];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = queueCopy;
    obj = queueCopy;
    v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v28;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          hIDTime = [v13 HIDTime];
          v15 = hIDTime;
          if (!v10)
          {
            v10 = hIDTime;
          }

          if (timestampsCopy && [v13 creatorHIDEvent])
          {
            [v13 setHIDTime:mach_absolute_time()];
            IOHIDEventSetTimeStamp();
          }

          v16 = dispatch_time(0, v15 - v10);
          eventReplayDispatchQueue = self->_eventReplayDispatchQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = __87__ZOTFullscreenEventHandler__drainEventRepostQueue_replayEvents_updateEventTimestamps___block_invoke;
          block[3] = &unk_78EC0;
          block[4] = v13;
          v24 = _zoomSenderIdentifierData;
          v25 = v21;
          selfCopy = self;
          dispatch_after(v16, eventReplayDispatchQueue, block);
        }

        v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v9);
    }

    queueCopy = v18;
  }

  [queueCopy removeAllObjects];
}

id __87__ZOTFullscreenEventHandler__drainEventRepostQueue_replayEvents_updateEventTimestamps___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAccessibilityData:*(a1 + 40)];
  [*(a1 + 32) applyAccessibilityDataToCreatorHIDEvent];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 56) _senderIDForRepostingOfEvent:v2];

  return [v3 sendHIDSystemEvent:v2 repostCreatorHIDEvent:1 senderID:v4];
}

- (id)_descriptionForEvent:(id)event
{
  eventCopy = event;
  handInfo = [eventCopy handInfo];
  v5 = objc_alloc_init(NSMutableString);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [handInfo eventType];
  v8 = AXDebugDescriptionForAXHandEventType();
  [v5 appendFormat:@"<%@ %p> %12@", v7, eventCopy, v8];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  paths = [handInfo paths];
  v10 = [paths countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(paths);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        [v14 pathLocation];
        v16 = v15;
        [v14 pathLocation];
        [v5 appendFormat:@" {%5.3f, %5.3f}", v16, v17];
      }

      v11 = [paths countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  return v5;
}

- (void)_updateVelocityAndVectorWithEventLocation:(CGPoint)location startPoint:(CGPoint)point endPoint:(CGPoint)endPoint forTrackpad:(BOOL)trackpad
{
  trackpadCopy = trackpad;
  Current = CFAbsoluteTimeGetCurrent();
  v15 = 0.0;
  SCRCMathGetVectorAndDistanceForPoints();
  if (trackpadCopy)
  {
    v9 = 1120;
  }

  else
  {
    v15 = 0.0 / ZOTMainScreenScaleFactor();
    v9 = 1112;
  }

  v10 = *(&self->super.isa + v9);
  if (v10 != ZOTTimeUnset)
  {
    v11 = Current - v10;
    if (Current - v10 == 0.0)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v15 / v11;
    }

    if (v11 < 0.2 || v12 > 125.0)
    {
      if (trackpadCopy)
      {
        v13 = &_updateVelocityAndVectorWithEventLocation_startPoint_endPoint_forTrackpad__LastTrackpadVector;
      }

      else
      {
        v13 = &_updateVelocityAndVectorWithEventLocation_startPoint_endPoint_forTrackpad__LastVector;
      }

      SCRCMathUpdateAverage();
      if (*v13 <= 0.0 || vabdd_f64(*v13, 0.0) >= 20.0)
      {
        if (trackpadCopy)
        {
          _updateVelocityAndVectorWithEventLocation_startPoint_endPoint_forTrackpad__LastTrackpadVector = 0;
          goto LABEL_23;
        }

        _updateVelocityAndVectorWithEventLocation_startPoint_endPoint_forTrackpad__LastVector = 0;
      }

      else
      {
        if (trackpadCopy)
        {
          self->_currentTrackpadVector = 0.0;
          goto LABEL_23;
        }

        self->_currentVector = 0.0;
      }

LABEL_26:
      v14 = 1112;
      goto LABEL_27;
    }

    if (v11 > 0.2)
    {
      SCRCMathClearAverage();
    }
  }

  if (!trackpadCopy)
  {
    goto LABEL_26;
  }

LABEL_23:
  v14 = 1120;
LABEL_27:
  *(&self->super.isa + v14) = Current;
}

- (unint64_t)_senderIDForRepostingOfEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy creatorHIDEvent])
  {
    SenderID = IOHIDEventGetSenderID();
  }

  else
  {
    SenderID = [eventCopy senderID];
  }

  v5 = SenderID;

  return v5;
}

- (void)_scheduleTapTimeout:(BOOL)timeout
{
  timeoutCopy = timeout;
  Current = CFAbsoluteTimeGetCurrent();
  if (_AXSVoiceOverTouchEnabled())
  {
    v6 = timeoutCopy;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6 == 0;
  v8 = (&dword_0 + 3);
  if (v7)
  {
    v8 = &dword_4;
  }

  v9 = 1280;
  if (timeoutCopy)
  {
    v9 = 1288;
  }

  v10 = 0.25;
  if (*(&self->super.isa + v9) == v8)
  {
    v11 = 1200;
    if (timeoutCopy)
    {
      v11 = 1216;
    }

    v10 = Current - *(&self->super.isa + v11) + 0.05;
  }

  v12 = 1600;
  if (timeoutCopy)
  {
    v12 = 1608;
  }

  v13 = *(&self->super.isa + v12);
  [v13 cancel];
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __49__ZOTFullscreenEventHandler__scheduleTapTimeout___block_invoke;
  v14[3] = &unk_78F38;
  objc_copyWeak(v15, &location);
  v16 = timeoutCopy;
  v14[4] = self;
  v15[1] = *&Current;
  [v13 afterDelay:v14 processBlock:&__block_literal_global_305 cancelBlock:v10];
  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

void __49__ZOTFullscreenEventHandler__scheduleTapTimeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = _AXSVoiceOverTouchEnabled();
  if (!v3 || (*(a1 + 56) & 1) != 0)
  {
    v5 = 1280;
    if ((v3 != 0) | *(a1 + 56) & 1)
    {
      v5 = 1288;
    }

    v6 = *&WeakRetained[v5];
    if (v6 == 2)
    {
      v9 = *(a1 + 48);
      if ((v3 != 0) | *(a1 + 56) & 1)
      {
        *(WeakRetained + 151) = v9;
        v10 = -1.0;
        v11 = -1.0;
      }

      else
      {
        *(WeakRetained + 149) = v9;
        v10 = ZOTDenormalizePoint(v3, v4, *(WeakRetained + 153));
        v11 = v12;
      }

      if ([WeakRetained isAnyDisplayZoomedIn])
      {
        v13 = v17;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = __49__ZOTFullscreenEventHandler__scheduleTapTimeout___block_invoke_3;
        v17[3] = &unk_78D00;
        v17[4] = WeakRetained;
      }

      else
      {
        v13 = v15;
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = __49__ZOTFullscreenEventHandler__scheduleTapTimeout___block_invoke_301;
        v15[3] = &unk_78F10;
        *&v15[5] = v10;
        *&v15[6] = v11;
        v15[4] = WeakRetained;
        v16 = *(a1 + 56);
      }

      dispatch_async(&_dispatch_main_q, v13);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = __49__ZOTFullscreenEventHandler__scheduleTapTimeout___block_invoke_302;
      v14[3] = &unk_78D00;
      v14[4] = WeakRetained;
      dispatch_async(&_dispatch_main_q, v14);
    }

    else if (v6 == 1)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __49__ZOTFullscreenEventHandler__scheduleTapTimeout___block_invoke_2;
      block[3] = &unk_78EE8;
      v19 = *(a1 + 56);
      v7 = *(a1 + 32);
      block[4] = WeakRetained;
      block[5] = v7;
      dispatch_async(&_dispatch_main_q, block);
      if (*(a1 + 56) == 1)
      {
        v8 = WeakRetained[1337] == 0;
        goto LABEL_19;
      }

      if ((WeakRetained[1336] & 1) == 0)
      {
        v8 = [WeakRetained isMainDisplayZoomedIn] ^ 1;
        goto LABEL_19;
      }
    }
  }

  v8 = 0;
LABEL_19:
  if (*(a1 + 56) == 1)
  {
    *(WeakRetained + 161) = 0;
    *(WeakRetained + 152) = ZOTTimeUnset;
  }

  else
  {
    *(WeakRetained + 160) = 0;
    *(WeakRetained + 150) = ZOTTimeUnset;
    [WeakRetained _drainEventRepostQueue:*(WeakRetained + 205) replayEvents:v8 updateEventTimestamps:0];
  }
}

void __49__ZOTFullscreenEventHandler__scheduleTapTimeout___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  v4 = v2;
  v5 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    v6 = ZOTDenormalizePoint(v2, v3, 0.5);
  }

  else
  {
    [*(a1 + 32) _middleFingerForEvent:*(v5 + 176)];
  }

  [v4 fullscreenEventHandler:v5 didReceiveThreeFingerSingleTapAtLocation:v6];

  v7 = [*(a1 + 32) zoomDelegate];
  [v7 zoomLevelWithFullscreenEventHandler:*(a1 + 32)];
  *(*(a1 + 32) + 1328) = v8;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [*(a1 + 32) externalDisplayZoomDelegates];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v10 = [*(*(&v15 + 1) + 8 * v14) fullscreenEventHandler:*(a1 + 40) didReceiveThreeFingerSingleTapAtLocation:{ZOTDenormalizePoint(v10, v11, 0.5)}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v12 = v10;
    }

    while (v10);
  }
}

void __49__ZOTFullscreenEventHandler__scheduleTapTimeout___block_invoke_3(uint64_t a1)
{
  v2 = ZOOMLogEvents();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "3. did receive three finger double tap at {0,0}", buf, 2u);
  }

  if ([*(a1 + 32) isMainDisplayZoomedIn])
  {
    v3 = [*(a1 + 32) zoomDelegate];
    [v3 fullscreenEventHandler:*(a1 + 32) didReceiveThreeFingerDoubleTapAtLocation:{CGPointZero.x, CGPointZero.y}];

    v4 = [*(a1 + 32) zoomDelegate];
    [v4 zoomLevelWithFullscreenEventHandler:*(a1 + 32)];
    *(*(a1 + 32) + 1328) = v5;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [*(a1 + 32) externalDisplayZoomDelegates];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    y = CGPointZero.y;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([*(a1 + 32) isDisplayZoomedIn:v12])
        {
          [v12 fullscreenEventHandler:*(a1 + 32) didReceiveThreeFingerDoubleTapAtLocation:{CGPointZero.x, y}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }
}

void __49__ZOTFullscreenEventHandler__scheduleTapTimeout___block_invoke_301(uint64_t a1)
{
  v2 = ZOOMLogEvents();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = NSStringFromPoint(*(a1 + 40));
    *buf = 138412290;
    v23 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "4. did receive three finger double tap at %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) zoomDelegate];
  [v4 fullscreenEventHandler:*(a1 + 32) didReceiveThreeFingerDoubleTapAtLocation:{*(a1 + 40), *(a1 + 48)}];

  v5 = [*(a1 + 32) zoomDelegate];
  [v5 zoomLevelWithFullscreenEventHandler:*(a1 + 32)];
  *(*(a1 + 32) + 1328) = v6;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [*(a1 + 32) externalDisplayZoomDelegates];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v14 = *(a1 + 32);
        v15 = -1.0;
        v16 = -1.0;
        if ((*(a1 + 56) & 1) == 0)
        {
          v15 = ZOTDenormalizePoint(v8, v9, 0.5);
        }

        v8 = [v13 fullscreenEventHandler:v14 didReceiveThreeFingerDoubleTapAtLocation:{v15, v16}];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v10 = v8;
    }

    while (v8);
  }
}

void __49__ZOTFullscreenEventHandler__scheduleTapTimeout___block_invoke_302(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomDelegate];
  [v2 updateSystemGestureDisablingAssertionsWithFullscreenEventHandler:*(a1 + 32)];
}

- (ZOTFullscreenEventHandlerDelegate)eventDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_eventDelegate);

  return WeakRetained;
}

- (ZOTFullscreenZoomHandlerDelegate)zoomDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_zoomDelegate);

  return WeakRetained;
}

@end