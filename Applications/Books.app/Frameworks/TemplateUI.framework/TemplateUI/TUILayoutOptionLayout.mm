@interface TUILayoutOptionLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- (TUILayoutOptionLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller;
- (double)computedScale;
- (void)computeLayout;
- (void)setScale:(double)scale;
@end

@implementation TUILayoutOptionLayout

- (TUILayoutOptionLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller
{
  v6.receiver = self;
  v6.super_class = TUILayoutOptionLayout;
  result = [(TUILayout *)&v6 initWithModel:model parent:parent controller:controller];
  if (result)
  {
    result->_scale = 1.0;
  }

  return result;
}

- (double)computedScale
{
  v5.receiver = self;
  v5.super_class = TUILayoutOptionLayout;
  [(TUILayout *)&v5 computedScale];
  return v3 * self->_scale;
}

- (void)setScale:(double)scale
{
  if (self->_scale != scale)
  {
    self->_scale = scale;
    [(TUILayout *)self onComputedScaleDidChange];
  }
}

- (void)computeLayout
{
  v3 = objc_msgSend_children(self, a2);
  firstObject = [v3 firstObject];

  [(TUILayout *)self containingWidth];
  [firstObject setContainingWidth:?];
  [(TUILayout *)self containingHeight];
  [firstObject setContainingHeight:?];
  [(TUILayout *)self flexedWidth];
  [firstObject setFlexedWidth:?];
  [(TUILayout *)self flexedHeight];
  [firstObject setFlexedHeight:?];
  objc_msgSend_validateLayout(firstObject);
  [firstObject setComputedOrigin:{CGPointZero.x, CGPointZero.y}];
  objc_msgSend_computedTransformedSize(firstObject);
  [(TUILayout *)self setComputedNaturalSize:?];
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth
{
  v3 = objc_msgSend_children(self, a3);
  firstObject = [v3 firstObject];

  validatedIntrinsicWidthConsideringSpecified = [firstObject validatedIntrinsicWidthConsideringSpecified];
  return validatedIntrinsicWidthConsideringSpecified;
}

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicHeight
{
  v3 = objc_msgSend_children(self, a3);
  firstObject = [v3 firstObject];

  validatedIntrinsicHeightConsideringSpecified = [firstObject validatedIntrinsicHeightConsideringSpecified];
  return validatedIntrinsicHeightConsideringSpecified;
}

@end