@interface _UIPointerLensView
- (CGRect)bounds;
- (double)_cornerRadius;
- (void)_setCornerRadius:(double)radius;
- (void)setBounds:(CGRect)bounds;
- (void)tintColorDidChange;
@end

@implementation _UIPointerLensView

- (double)_cornerRadius
{
  v3 = type metadata accessor for _UIPointerLensView();
  v6.receiver = self;
  v6.super_class = v4;
  [(UIView *)&v6 _cornerRadius];
  return result;
}

- (void)_setCornerRadius:(double)radius
{
  type metadata accessor for _UIPointerLensView();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  [(UIView *)&v9 _setCornerRadius:radius];
  v7 = [(UIView *)selfCopy layer:v9.receiver];
  [(_UIPointerLensView *)selfCopy _cornerRadius];
  [(CALayer *)v7 setCornerRadius:?];

  v8 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____UIPointerLensView_element);
  [(_UIPointerLensView *)selfCopy _cornerRadius];
  [v8 setCornerRadius_];
}

- (CGRect)bounds
{
  v3 = type metadata accessor for _UIPointerLensView();
  v9.receiver = self;
  v9.super_class = v4;
  [(UIView *)&v9 bounds];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  type metadata accessor for _UIPointerLensView();
  v12.receiver = self;
  v12.super_class = v8;
  selfCopy = self;
  [(UIView *)&v12 setBounds:x, y, width, height];
  v10 = [(UIView *)selfCopy layer:v12.receiver];
  v11 = selfCopy;
  sub_189128BBC(v10, v11);
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_1891286F8(selfCopy, v2);
}

@end