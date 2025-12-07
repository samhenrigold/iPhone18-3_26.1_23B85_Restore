@interface BKPanGestureRecognizer
- (BKPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (CGPoint)lastLocation;
- (CGPoint)locationInView:(id)view;
- (CGPoint)startLocationInView:(id)view;
- (void)dealloc;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation BKPanGestureRecognizer

- (void)dealloc
{
  trackingTouch = self->_trackingTouch;
  self->_trackingTouch = 0;

  v4.receiver = self;
  v4.super_class = BKPanGestureRecognizer;
  [(BKPanGestureRecognizer *)&v4 dealloc];
}

- (BKPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v5.receiver = self;
  v5.super_class = BKPanGestureRecognizer;
  result = [(BKPanGestureRecognizer *)&v5 initWithTarget:target action:action];
  if (result)
  {
    result->_rightSideMovementThreshold = 20.0;
    result->_leftSideMovementThreshold = 20.0;
  }

  return result;
}

- (void)reset
{
  v5.receiver = self;
  v5.super_class = BKPanGestureRecognizer;
  [(BKPanGestureRecognizer *)&v5 reset];
  v3 = _AEPanGRLog([(BKPanGestureRecognizer *)self setTrackingTouch:0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Reseting pan gesture", v4, 2u);
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  v8 = _AEPanGRLog(eventCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "touches began event", buf, 2u);
  }

  if (![(BKPanGestureRecognizer *)self state])
  {
    [(BKPanGestureRecognizer *)self setTrackingTouch:0];
  }

  trackingTouch = [(BKPanGestureRecognizer *)self trackingTouch];

  if (trackingTouch)
  {
    v11 = _AEPanGRLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "tracking touch -- ignoring new touches", buf, 2u);
    }
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = beganCopy;
    v12 = beganCopy;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          window = [v17 window];
          [v17 locationInView:0];
          [window convertPoint:0 toWindow:?];
          v20 = v19;
          v22 = v21;

          v23 = [NSValue valueWithCGPoint:v20, v22];
          objc_setAssociatedObject(v17, &unk_193938, v23, &dword_0 + 1);
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v14);
    }

    v25.receiver = self;
    v25.super_class = BKPanGestureRecognizer;
    [(BKPanGestureRecognizer *)&v25 touchesBegan:v12 withEvent:eventCopy];
    beganCopy = v24;
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  trackingTouch = [(BKPanGestureRecognizer *)self trackingTouch];

  if (trackingTouch)
  {
    goto LABEL_2;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v14 = movedCopy;
  v15 = [v14 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (!v15)
  {

LABEL_2:
    v9 = movedCopy;
    goto LABEL_3;
  }

  v16 = v15;
  v64 = eventCopy;
  v65 = movedCopy;
  v11 = 0;
  v17 = *v70;
  v18 = 0.0;
  v66 = v14;
  selfCopy = self;
  do
  {
    for (i = 0; i != v16; i = i + 1)
    {
      if (*v70 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v69 + 1) + 8 * i);
      v21 = objc_getAssociatedObject(v20, &unk_193938);
      v22 = v21;
      if (v21)
      {
        [v21 CGPointValue];
        v24 = v23;
        v26 = v25;
        window = [v20 window];
        [v20 locationInView:0];
        [window convertPoint:0 fromWindow:?];
        v29 = v28;
        v31 = v30;

        v32 = vabdd_f64(v29, v24);
        window2 = [v20 window];
        [window2 bounds];
        Width = CGRectGetWidth(v82);

        view = [v20 view];
        [v20 locationInView:view];
        v37 = v36;

        v39 = &OBJC_IVAR___BKPanGestureRecognizer__rightSideMovementThreshold;
        if (v37 < Width * 0.5)
        {
          v39 = &OBJC_IVAR___BKPanGestureRecognizer__leftSideMovementThreshold;
        }

        v40 = *(&self->super.super.super.isa + *v39);
        if (v32 <= v40)
        {
          v32 = vabdd_f64(v31, v26);
          if (v32 <= v40)
          {
            goto LABEL_25;
          }

          v47 = _AEPanGRLog(v38);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            v74 = v32;
            v75 = 2048;
            v76 = v40;
            _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "enough movement in a touch %f > %f", buf, 0x16u);
          }

          v43 = _AEPanGRLog(v48);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v80.x = v24;
            v80.y = v26;
            v49 = NSStringFromCGPoint(v80);
            v81.x = v29;
            v81.y = v31;
            NSStringFromCGPoint(v81);
            v51 = v50 = v11;
            *buf = 138412546;
            v74 = *&v49;
            v75 = 2112;
            v76 = *&v51;
            _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "start %@ moved %@", buf, 0x16u);

            v11 = v50;
            v14 = v66;

            self = selfCopy;
          }
        }

        else
        {
          v41 = _AEPanGRLog(v38);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            v74 = v32;
            v75 = 2048;
            v76 = v40;
            _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "enough movement in a touch %f > %f", buf, 0x16u);
          }

          v43 = _AEPanGRLog(v42);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v78.x = v24;
            v78.y = v26;
            NSStringFromCGPoint(v78);
            v45 = v44 = v11;
            v79.x = v29;
            v79.y = v31;
            v46 = NSStringFromCGPoint(v79);
            *buf = 138412546;
            v74 = *&v45;
            v75 = 2112;
            v76 = *&v46;
            _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "start %@ moved %@", buf, 0x16u);

            self = selfCopy;
            v11 = v44;
            v14 = v66;
          }
        }

        if (v32 > v18)
        {
          v52 = v20;

          v18 = v32;
          v11 = v52;
        }
      }

LABEL_25:
    }

    v16 = [v14 countByEnumeratingWithState:&v69 objects:v77 count:16];
  }

  while (v16);

  v53 = v14;
  movedCopy = v65;
  if (!v11)
  {
LABEL_3:
    v10 = [(BKPanGestureRecognizer *)self trackingTouch:v64];

    v11 = 0;
    v12 = 0;
    v13 = movedCopy;
    if (v10)
    {
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  v54 = v53;
  trackingTouch2 = [(BKPanGestureRecognizer *)self trackingTouch];

  if (!trackingTouch2)
  {
    v57 = _AEPanGRLog(v56);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v74 = *&v11;
      _os_log_impl(&dword_0, v57, OS_LOG_TYPE_DEFAULT, "Now tracking touch %@", buf, 0xCu);
    }

    [(BKPanGestureRecognizer *)self setTrackingTouch:v11];
  }

  [(BKPanGestureRecognizer *)self setState:1, eventCopy, v65];
  v13 = [NSSet setWithObject:v11];

  allTouches = [eventCopy allTouches];
  v59 = [allTouches mutableCopy];

  [v59 removeObject:v11];
  v60 = [v59 count];
  if (v60)
  {
    v61 = _AEPanGRLog(v60);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v74 = *&v59;
      v75 = 2112;
      v76 = *&v11;
      _os_log_impl(&dword_0, v61, OS_LOG_TYPE_DEFAULT, "Ending touches %@. Tracking %@", buf, 0x16u);
    }

    [(BKPanGestureRecognizer *)self touchesEnded:v59 withEvent:eventCopy];
  }

LABEL_37:
  v68.receiver = self;
  v68.super_class = BKPanGestureRecognizer;
  [(BKPanGestureRecognizer *)&v68 touchesMoved:v13 withEvent:eventCopy];
  v12 = v11;
LABEL_38:
  trackingTouch3 = [(BKPanGestureRecognizer *)self trackingTouch];
  if (trackingTouch3)
  {
  }

  else if ([(BKPanGestureRecognizer *)self state]>= 1)
  {
    [(BKPanGestureRecognizer *)self setTrackingTouch:v12];
  }

  trackingTouch4 = [(BKPanGestureRecognizer *)self trackingTouch];

  if (trackingTouch4 && [(BKPanGestureRecognizer *)self numberOfTouches])
  {
    [(BKPanGestureRecognizer *)self locationOfTouch:0 inView:0];
    [(BKPanGestureRecognizer *)self setLastLocation:?];
  }
}

- (CGPoint)locationInView:(id)view
{
  viewCopy = view;
  [(BKPanGestureRecognizer *)self lastLocation];
  [viewCopy convertPoint:0 fromView:?];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)startLocationInView:(id)view
{
  viewCopy = view;
  trackingTouch = [(BKPanGestureRecognizer *)self trackingTouch];
  v6 = objc_getAssociatedObject(trackingTouch, &unk_193938);

  [v6 CGPointValue];
  [viewCopy convertPoint:0 fromView:?];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)lastLocation
{
  x = self->lastLocation.x;
  y = self->lastLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end