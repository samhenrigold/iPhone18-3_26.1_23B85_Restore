@interface GCControllerTouchpad
- (BOOL)calculateRelativePositionWithDigitizerX:(float)x digitizerY:(float)y touchDown:(BOOL)down;
- (BOOL)determineTouchStateWithDigitizerX:(float)x digitizerY:(float)y touchDown:(BOOL)down;
- (BOOL)setDigitizerX:(float)x digitizerY:(float)y touchDown:(BOOL)down queue:(id)queue;
- (CGPoint)addCGPoint:(CGPoint)point toPoint:(CGPoint)toPoint;
- (CGPoint)clampPoint:(CGPoint)point toLength:(double)length;
- (CGPoint)mulCGPoint:(CGPoint)point byScalar:(double)scalar;
- (CGPoint)normalizeCGPoint:(CGPoint)point;
- (CGPoint)scaleCGPoint:(CGPoint)point toLength:(double)length;
- (CGPoint)subCGPoint:(CGPoint)point fromPoint:(CGPoint)fromPoint;
- (GCControllerTouchpad)initWithCoder:(id)coder;
- (GCControllerTouchpad)initWithDescriptionName:(id)name;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)reportDigitizerChange:(id)change;
- (void)setValueForXAxis:(float)xAxis yAxis:(float)yAxis touchDown:(BOOL)touchDown buttonValue:(float)buttonValue;
@end

@implementation GCControllerTouchpad

- (GCControllerTouchpad)initWithDescriptionName:(id)name
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = GCControllerTouchpad;
  v5 = [(GCControllerElement *)&v15 init];
  v6 = v5;
  if (v5)
  {
    if (nameCopy)
    {
      v7 = nameCopy;
    }

    else
    {
      v7 = @"Touchpad";
    }

    objc_storeStrong(&v5->_descriptionName, v7);
    [(GCControllerElement *)v6 setPrimaryAlias:v6->_descriptionName];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v6->_descriptionName, @"Surface"];
    v9 = [[GCControllerDirectionPad alloc] initWithDigital:0 descriptionName:v8];
    touchSurface = v6->_touchSurface;
    v6->_touchSurface = v9;

    [(GCControllerElement *)v6->_touchSurface setCollection:v6];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v6->_descriptionName, @"Button"];
    v12 = [[GCControllerButtonInput alloc] initWithDescriptionName:v11];
    button = v6->_button;
    v6->_button = v12;

    [(GCControllerButtonInput *)v6->_button setTouchedAndValueDistinct:1];
    [(GCControllerElement *)v6->_button setCollection:v6];
    v6->_touchState = 0;
    v6->_touchpadRelativeWindowSize = 0.5;
    v6->_touchpadRelativeOriginBufferSize = 0.225;
    v6->_reportsAbsoluteTouchSurfaceValues = 1;
    v6->_previousButtonState = 0.0;
    [(GCControllerButtonInput *)v6->_button setNonAnalog:1];
  }

  return v6;
}

- (GCControllerTouchpad)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = GCControllerTouchpad;
  v5 = [(GCControllerElement *)&v9 init];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"_touchpadRelativeWindowSize"];
    v5->_touchpadRelativeWindowSize = v6;
    [coderCopy decodeFloatForKey:@"_touchpadRelativeOriginBufferRadius"];
    v5->_touchpadRelativeOriginBufferSize = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  touchpadRelativeWindowSize = self->_touchpadRelativeWindowSize;
  coderCopy = coder;
  *&v5 = touchpadRelativeWindowSize;
  [coderCopy encodeFloat:@"_touchpadRelativeWindowSize" forKey:v5];
  *&v6 = self->_touchpadRelativeOriginBufferSize;
  [coderCopy encodeFloat:@"_touchpadRelativeOriginBufferSize" forKey:v6];
}

- (BOOL)calculateRelativePositionWithDigitizerX:(float)x digitizerY:(float)y touchDown:(BOOL)down
{
  xCopy = x;
  yCopy = y;
  p_absoluteWindowLocation = &self->_absoluteWindowLocation;
  [(GCControllerTouchpad *)self distanceBetweenCGPoint:down andCGPoint:x, y, self->_absoluteWindowLocation.x, self->_absoluteWindowLocation.y];
  touchpadRelativeWindowSize = self->_touchpadRelativeWindowSize;
  if (v10 >= (self->_touchpadRelativeOriginBufferSize * touchpadRelativeWindowSize) || self->_reportsAbsoluteTouchSurfaceValues)
  {
    leftBufferZone = 1;
    self->_leftBufferZone = 1;
    self->_absolutePosition.x = xCopy;
    self->_absolutePosition.y = yCopy;
    [(GCControllerTouchpad *)self mulCGPoint:xCopy - p_absoluteWindowLocation->x byScalar:yCopy - p_absoluteWindowLocation->y, 1.0 / touchpadRelativeWindowSize];
    v13 = v12;
    v15 = v14;
    [(GCControllerTouchpad *)self normalizeCGPoint:?];
    v17 = v16;
    v19 = v18;
    [GCControllerTouchpad scaleCGPoint:"scaleCGPoint:toLength:" toLength:?];
    [GCControllerTouchpad addCGPoint:"addCGPoint:toPoint:" toPoint:?];
    p_relativePosition = &self->_relativePosition;
    v23 = self->_absolutePosition.y - v22;
    self->_relativePosition.x = self->_absolutePosition.x - v20;
    self->_relativePosition.y = v23;
    [GCControllerTouchpad mulCGPoint:"mulCGPoint:byScalar:" byScalar:?];
    self->_relativePosition.x = v24;
    self->_relativePosition.y = v25;
    [(GCControllerTouchpad *)self magnitudeForCGPoint:v13, v15];
    if (v26 > 1.0)
    {
      v27 = 1.0 - self->_touchpadRelativeWindowSize;
      [(GCControllerTouchpad *)self subCGPoint:v17 fromPoint:v19, v13, v15];
      [(GCControllerTouchpad *)self addCGPoint:p_absoluteWindowLocation->x toPoint:p_absoluteWindowLocation->y, v28, v29];
      p_absoluteWindowLocation->x = v30;
      p_absoluteWindowLocation->y = v31;
      if (self->_beganTouchOutsideBounds)
      {
        [(GCControllerTouchpad *)self magnitudeForCGPoint:?];
        if (v32 <= v27)
        {
          self->_beganTouchOutsideBounds = 0;
        }
      }

      else
      {
        [GCControllerTouchpad clampPoint:"clampPoint:toLength:" toLength:?];
        p_absoluteWindowLocation->x = v33;
        p_absoluteWindowLocation->y = v34;
      }

      [(GCControllerTouchpad *)self scaleCGPoint:p_relativePosition->x toLength:self->_relativePosition.y, 1.0];
      p_relativePosition->x = v35;
      self->_relativePosition.y = v36;
    }
  }

  else
  {
    self->_absolutePosition = *p_absoluteWindowLocation;
    self->_relativePosition = *MEMORY[0x1E695EFF8];
    if (self->_touchState)
    {
      leftBufferZone = self->_leftBufferZone;
    }

    else
    {
      leftBufferZone = 1;
    }

    self->_leftBufferZone = 0;
  }

  return leftBufferZone;
}

- (void)reportDigitizerChange:(id)change
{
  changeCopy = change;
  if (self->_reportsAbsoluteTouchSurfaceValues)
  {
    v5 = &OBJC_IVAR___GCControllerTouchpad__absolutePosition;
  }

  else
  {
    v5 = &OBJC_IVAR___GCControllerTouchpad__relativePosition;
  }

  v6 = (self + *v5);
  v7 = *v6;
  v8 = v6[1];
  [(GCControllerButtonInput *)self->_button value];
  v10 = v9;
  isPressed = [(GCControllerButtonInput *)self->_button isPressed];
  self->_previousButtonState = v10;
  touchState = self->_touchState;
  switch(touchState)
  {
    case 0:
      xAxis = [(GCControllerDirectionPad *)self->_touchSurface xAxis];
      [xAxis _setValue:changeCopy queue:0.0];

      yAxis = [(GCControllerDirectionPad *)self->_touchSurface yAxis];
      [yAxis _setValue:changeCopy queue:0.0];

      v17 = v25;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v18 = __46__GCControllerTouchpad_reportDigitizerChange___block_invoke_3;
      goto LABEL_10;
    case 2:
      xAxis2 = [(GCControllerDirectionPad *)self->_touchSurface xAxis];
      *&v20 = v7;
      [xAxis2 _setValue:changeCopy queue:v20];

      yAxis2 = [(GCControllerDirectionPad *)self->_touchSurface yAxis];
      *&v22 = v8;
      [yAxis2 _setValue:changeCopy queue:v22];

      v17 = v26;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v18 = __46__GCControllerTouchpad_reportDigitizerChange___block_invoke_2;
      goto LABEL_10;
    case 1:
      xAxis3 = [(GCControllerDirectionPad *)self->_touchSurface xAxis];
      *&v14 = v7;
      [xAxis3 _setValue:changeCopy queue:v14];

      yAxis3 = [(GCControllerDirectionPad *)self->_touchSurface yAxis];
      *&v16 = v8;
      [yAxis3 _setValue:changeCopy queue:v16];

      v17 = v27;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v18 = __46__GCControllerTouchpad_reportDigitizerChange___block_invoke;
LABEL_10:
      *(v17 + 2) = v18;
      *(v17 + 3) = &unk_1E8419DB0;
      *(v17 + 4) = self;
      v17[5] = v7;
      v17[6] = v8;
      *(v17 + 14) = v10;
      *(v17 + 60) = isPressed;
      dispatch_async(changeCopy, v17);
      break;
  }
}

void __46__GCControllerTouchpad_reportDigitizerChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) touchDown];

  if (v2)
  {
    v5 = [*(a1 + 32) touchDown];
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    (*(v5 + 2))(v5, *(a1 + 32), *(a1 + 60), v3, v4, *(a1 + 56));
  }
}

void __46__GCControllerTouchpad_reportDigitizerChange___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) touchMoved];

  if (v2)
  {
    v5 = [*(a1 + 32) touchMoved];
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    (*(v5 + 2))(v5, *(a1 + 32), *(a1 + 60), v3, v4, *(a1 + 56));
  }
}

void __46__GCControllerTouchpad_reportDigitizerChange___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) touchUp];

  if (v2)
  {
    v5 = [*(a1 + 32) touchUp];
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    (*(v5 + 2))(v5, *(a1 + 32), *(a1 + 60), v3, v4, *(a1 + 56));
  }
}

- (BOOL)determineTouchStateWithDigitizerX:(float)x digitizerY:(float)y touchDown:(BOOL)down
{
  touchState = self->_touchState;
  if (touchState)
  {
    downCopy = 0;
  }

  else
  {
    downCopy = down;
  }

  v7 = touchState == 1 && down;
  if (downCopy || v7 || (v8 = self->_touchState, !down))
  {
    v9 = !v7;
    v10 = 1;
    if (!v9)
    {
      v10 = 2;
    }

    if (down)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }

    self->_touchState = v8;
  }

  if (touchState)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v11 = !down;
  }

  return !v11 && (v8 != 2 || self->_absolutePosition.x != x || self->_absolutePosition.y != y);
}

- (BOOL)setDigitizerX:(float)x digitizerY:(float)y touchDown:(BOOL)down queue:(id)queue
{
  downCopy = down;
  queueCopy = queue;
  [(GCControllerButtonInput *)self->_button value];
  v12 = v11;
  previousButtonState = self->_previousButtonState;
  *&v14 = x;
  *&v15 = y;
  if (![(GCControllerTouchpad *)self determineTouchStateWithDigitizerX:downCopy digitizerY:v14 touchDown:v15]&& v12 == previousButtonState)
  {
    goto LABEL_3;
  }

  if (self->_touchState == 1)
  {
    self->_absoluteTouchDownPosition.x = x;
    self->_absoluteTouchDownPosition.y = y;
    self->_absoluteWindowLocation = self->_absoluteTouchDownPosition;
    self->_absolutePosition.x = x;
    self->_absolutePosition.y = y;
    self->_relativePosition = *MEMORY[0x1E695EFF8];
    self->_leftBufferZone = 0;
    v19 = 1.0 - self->_touchpadRelativeWindowSize;
    [(GCControllerTouchpad *)self magnitudeForCGPoint:self->_absoluteWindowLocation.x, self->_absoluteWindowLocation.y];
    if (v20 > v19)
    {
      self->_beganTouchOutsideBounds = 1;
    }

    goto LABEL_9;
  }

  *&v16 = x;
  *&v17 = y;
  if ([(GCControllerTouchpad *)self calculateRelativePositionWithDigitizerX:downCopy digitizerY:v16 touchDown:v17]|| v12 != previousButtonState)
  {
LABEL_9:
    [(GCControllerTouchpad *)self reportDigitizerChange:queueCopy];
    v18 = 1;
    goto LABEL_10;
  }

LABEL_3:
  v18 = 0;
LABEL_10:

  return v18;
}

- (CGPoint)normalizeCGPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(GCControllerTouchpad *)self magnitudeForCGPoint:?];
  v6 = y / v5;
  v7 = x / v5;
  result.y = v6;
  result.x = v7;
  return result;
}

- (CGPoint)scaleCGPoint:(CGPoint)point toLength:(double)length
{
  [(GCControllerTouchpad *)self normalizeCGPoint:point.x, point.y];
  v6 = v5 * length;
  v8 = v7 * length;
  result.y = v8;
  result.x = v6;
  return result;
}

- (CGPoint)addCGPoint:(CGPoint)point toPoint:(CGPoint)toPoint
{
  v4 = point.x + toPoint.x;
  v5 = point.y + toPoint.y;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)subCGPoint:(CGPoint)point fromPoint:(CGPoint)fromPoint
{
  v4 = fromPoint.x - point.x;
  v5 = fromPoint.y - point.y;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)mulCGPoint:(CGPoint)point byScalar:(double)scalar
{
  v4 = point.x * scalar;
  v5 = point.y * scalar;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)clampPoint:(CGPoint)point toLength:(double)length
{
  y = point.y;
  x = point.x;
  [(GCControllerTouchpad *)self magnitudeForCGPoint:?];
  if (v7 > length)
  {
    x = x / v7 * length;
    y = y / v7 * length;
  }

  v8 = x;
  v9 = y;
  result.y = v9;
  result.x = v8;
  return result;
}

- (id)description
{
  touchState = self->_touchState;
  if (touchState > 2)
  {
    v4 = &stru_1F4E3B4E0;
  }

  else
  {
    v4 = off_1E8419DD0[touchState];
  }

  v5 = MEMORY[0x1E696AEC0];
  descriptionName = self->_descriptionName;
  button = [(GCControllerTouchpad *)self button];
  if ([button isPressed])
  {
    v8 = @"Pressed";
  }

  else
  {
    v8 = @"Not Pressed";
  }

  touchSurface = [(GCControllerTouchpad *)self touchSurface];
  v10 = [v5 stringWithFormat:@"%@ (%@, %@, %@)", descriptionName, v4, v8, touchSurface];

  return v10;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCControllerTouchpad *)self description];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v5, self, v6];

  return v7;
}

- (void)setValueForXAxis:(float)xAxis yAxis:(float)yAxis touchDown:(BOOL)touchDown buttonValue:(float)buttonValue
{
  v7 = touchDown;
  device = [(GCControllerElement *)self device];
  if (device)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v12 = device;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_16;
    }

    isSnapshot = [device isSnapshot];
    v12 = device;
    if ((isSnapshot & 1) == 0)
    {
      goto LABEL_16;
    }

    handlerQueue = [device handlerQueue];
  }

  else
  {
    handlerQueue = MEMORY[0x1E69E96A0];
    v15 = MEMORY[0x1E69E96A0];
  }

  selfCopy = self;
  v17 = handlerQueue;
  button = [(GCControllerTouchpad *)selfCopy button];
  v19 = v17;
  v21 = !v7;
  if (buttonValue <= 0.0)
  {
    v21 = 1;
  }

  if (buttonValue != 0.0 && v21)
  {
    [GCControllerTouchpad setValueForXAxis:yAxis:touchDown:buttonValue:];
  }

  *&v20 = buttonValue;
  v22 = [button _setValue:v19 queue:v20];
  v23 = [button _setTouched:v7 queue:v19];
  if ((v22 & 1) != 0 || v23)
  {
    [0 addObject:button];
  }

  *&v24 = xAxis;
  *&v25 = yAxis;
  if ([(GCControllerTouchpad *)selfCopy setDigitizerX:v7 digitizerY:v19 touchDown:v24 queue:v25])
  {
    [0 addObject:selfCopy];
  }

  v12 = device;
LABEL_16:
}

@end