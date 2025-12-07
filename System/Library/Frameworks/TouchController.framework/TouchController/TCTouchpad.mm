@interface TCTouchpad
- (CGPoint)offset;
- (CGPoint)position;
- (CGSize)size;
- (TCTouchController)touchController;
- (TCTouchpad)initWithDescriptor:(id)descriptor touchController:(id)controller;
- (void)_calculatePosition;
- (void)_calculateSize;
- (void)collectQuadDataInto:(id)into;
- (void)handleTouchBeganAtPoint:(CGPoint)point;
- (void)handleTouchEndedAtPoint:(CGPoint)point;
- (void)handleTouchMovedAtPoint:(CGPoint)point;
- (void)layoutIfNeeded;
- (void)processTouch:(CGPoint)touch;
- (void)resetDeltas;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation TCTouchpad

- (TCTouchpad)initWithDescriptor:(id)descriptor touchController:(id)controller
{
  descriptorCopy = descriptor;
  controllerCopy = controller;
  v29.receiver = self;
  v29.super_class = TCTouchpad;
  v8 = [(TCTouchpad *)&v29 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_touchController, controllerCopy);
    v9->_enabled = 1;
    contents = [descriptorCopy contents];
    contents = v9->_contents;
    v9->_contents = contents;

    v9->_anchor = [descriptorCopy anchor];
    v9->_anchorCoordinateSystem = [descriptorCopy anchorCoordinateSystem];
    [descriptorCopy offset];
    v9->_offset.x = v12;
    v9->_offset.y = v13;
    v9->_zIndex = [descriptorCopy zIndex];
    [descriptorCopy size];
    v9->_size.width = v14;
    v9->_size.height = v15;
    [descriptorCopy highlightDuration];
    v9->_highlightDuration = v16;
    label = [descriptorCopy label];
    label = v9->_label;
    v9->_label = label;

    v9->_reportsRelativeValues = [descriptorCopy reportsRelativeValues];
    if ([descriptorCopy colliderShape])
    {
      if ([descriptorCopy colliderShape] != 1)
      {
        if ([descriptorCopy colliderShape] == 2)
        {
          v22 = [TCRegionCollider alloc];
          WeakRetained = objc_loadWeakRetained(&v9->_touchController);
          v23 = v22;
          v24 = 0;
        }

        else
        {
          if ([descriptorCopy colliderShape] != 3)
          {
LABEL_13:
            [(TCTouchpad *)v9 _calculateSize];
            [(TCTouchpad *)v9 _calculatePosition];
            goto LABEL_14;
          }

          v25 = [TCRegionCollider alloc];
          WeakRetained = objc_loadWeakRetained(&v9->_touchController);
          v23 = v25;
          v24 = 1;
        }

        v26 = [(TCRegionCollider *)v23 initWithRegion:v24 TouchController:WeakRetained];
        collider = v9->_collider;
        v9->_collider = v26;

LABEL_12:
        goto LABEL_13;
      }

      v19 = TCRectCollider;
    }

    else
    {
      v19 = TCCircleCollider;
    }

    v20 = [[v19 alloc] initWithControlLayout:v9];
    WeakRetained = v9->_collider;
    v9->_collider = v20;
    goto LABEL_12;
  }

LABEL_14:

  return v9;
}

- (void)_calculateSize
{
  if ([(TCCollider *)self->_collider colliderShape]== 2 || [(TCCollider *)self->_collider colliderShape]== 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_touchController);
    [WeakRetained size];
    v5 = v4;

    v6 = objc_loadWeakRetained(&self->_touchController);
    [v6 size];
    v8 = v7;

    self->_size.width = v5 * 0.5 + -20.0;
    self->_size.height = (v8 + -20.0);
    self->_anchor = 4;
    colliderShape = [(TCCollider *)self->_collider colliderShape];
    v10 = 0.25;
    if (colliderShape == 2)
    {
      v10 = -0.25;
    }

    self->_offset.x = (v10 * v5);
    self->_offset.y = 0.0;
  }
}

- (void)_calculatePosition
{
  WeakRetained = objc_loadWeakRetained(&self->_touchController);
  [WeakRetained offsetForAnchor:self->_anchor anchorCoordinateSystem:self->_anchorCoordinateSystem];
  v7 = v5;
  v8 = v4;

  v6.f64[0] = v8;
  v6.f64[1] = v7;
  self->_position = vaddq_f64(v6, self->_offset);
}

- (void)layoutIfNeeded
{
  [(TCTouchpad *)self _calculateSize];

  [(TCTouchpad *)self _calculatePosition];
}

- (void)resetDeltas
{
  if (self->_reportsRelativeValues && self->pressed)
  {
    WeakRetained = objc_loadWeakRetained(&self->_touchController);
    [WeakRetained _setDirectionPadPosition:self->_label forControl:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  }
}

- (void)processTouch:(CGPoint)touch
{
  if (self->_reportsRelativeValues)
  {
    v4 = -(touch.y - self->_touchPrevPos.y);
    height = self->_size.height;
    v6 = (touch.x - self->_touchPrevPos.x) / self->_size.width;
    self->_touchPrevPos = touch;
    v7 = v4 / height;
  }

  else
  {
    __asm { FMOV            V3.2D, #-0.5 }

    y = touch.y;
    __asm { FMOV            V1.2D, #1.0 }

    v15 = vminnmq_f64(vdivq_f64(vsubq_f64(touch, vaddq_f64(self->_position, vmulq_f64(self->_size, _Q3))), self->_size), _Q1);
    v16 = vmovn_s64(vcltzq_f64(v15));
    if (v16.i8[0])
    {
      v17 = 0.0;
    }

    else
    {
      v17 = v15.f64[0];
    }

    v18 = v15.f64[1];
    if (v16.i8[4])
    {
      v18 = 0.0;
    }

    v6 = v17 * 2.0 + -1.0;
    v7 = -(v18 * 2.0 + -1.0);
  }

  WeakRetained = objc_loadWeakRetained(&self->_touchController);
  [WeakRetained _setDirectionPadPosition:self->_label forControl:{v6, v7}];
}

- (void)handleTouchBeganAtPoint:(CGPoint)point
{
  if (!self->pressed)
  {
    self->pressed = 1;
    self->_touchStartPos = point;
    self->_touchPrevPos = self->_touchStartPos;
    [(TCTouchpad *)self processTouch:?];
  }
}

- (void)handleTouchMovedAtPoint:(CGPoint)point
{
  if (self->pressed)
  {
    [(TCTouchpad *)self processTouch:point.x, point.y];
  }
}

- (void)handleTouchEndedAtPoint:(CGPoint)point
{
  if (self->pressed)
  {
    self->pressed = 0;
    WeakRetained = objc_loadWeakRetained(&self->_touchController);
    [WeakRetained _setDirectionPadPosition:self->_label forControl:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  }
}

- (void)collectQuadDataInto:(id)into
{
  v24 = *MEMORY[0x277D85DE8];
  intoCopy = into;
  if (self->_enabled)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    images = [(TCControlContents *)self->_contents images];
    v6 = [images countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(images);
          }

          v10 = *(*(&v19 + 1) + 8 * v9);
          v11 = objc_opt_new();
          x = self->_position.x;
          [v10 offset];
          v14 = x + v13;
          y = self->_position.y;
          [v10 offset];
          [v11 setPosition:{v14, y + v16}];
          [v10 size];
          [v11 setSize:?];
          [v11 setTintColor:{objc_msgSend(v10, "tintColor")}];
          [(TCTouchpad *)self highlightIntensity];
          [v11 setHighlightIntensity:?];
          texture = [v10 texture];
          [v11 setTexture:texture];

          highlightTexture = [v10 highlightTexture];
          [v11 setHighlightTexture:highlightTexture];

          [intoCopy addObject:v11];
          ++v9;
        }

        while (v7 != v9);
        v7 = [images countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  WeakRetained = objc_loadWeakRetained(&self->_touchController);
  [WeakRetained _setDirectionPadPosition:self->_label forControl:{0.0, 0.0}];

  self->_enabled = enabledCopy;
  collider = self->_collider;

  [(TCCollider *)collider setEnabled:enabledCopy];
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

- (TCTouchController)touchController
{
  WeakRetained = objc_loadWeakRetained(&self->_touchController);

  return WeakRetained;
}

@end