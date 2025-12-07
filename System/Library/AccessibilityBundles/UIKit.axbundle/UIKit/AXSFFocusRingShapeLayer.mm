@interface AXSFFocusRingShapeLayer
+ (id)focusLayerForUserInterfaceStyle:(int64_t)style;
+ (id)layer;
- (uint64_t)innerBorder;
- (uint64_t)outerBorder;
- (void)setInnerBorder:(uint64_t)border;
- (void)setOuterBorder:(uint64_t)border;
- (void)setPath:(CGPath *)path;
@end

@implementation AXSFFocusRingShapeLayer

+ (id)layer
{
  v8[2] = self;
  v8[1] = a2;
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___AXSFFocusRingShapeLayer;
  v8[0] = objc_msgSendSuper2(&v7, sel_layer);
  clearColor = [MEMORY[0x29EDC7A00] clearColor];
  v2 = clearColor;
  cGColor = [clearColor CGColor];
  [v8[0] setFillColor:cGColor];
  MEMORY[0x29EDC9740](clearColor);
  v6 = MEMORY[0x29EDC9748](v8[0]);
  objc_storeStrong(v8, 0);

  return v6;
}

+ (id)focusLayerForUserInterfaceStyle:(int64_t)style
{
  v31[3] = self;
  v31[2] = a2;
  v31[1] = style;
  v31[0] = +[AXSFFocusRingShapeLayer layer];
  layer = [MEMORY[0x29EDBBAC0] layer];
  [(AXSFFocusRingShapeLayer *)v31[0] setInnerBorder:layer];
  blackColor = [MEMORY[0x29EDC7A00] blackColor];
  v3 = blackColor;
  cGColor = [blackColor CGColor];
  innerBorder = [(AXSFFocusRingShapeLayer *)v31[0] innerBorder];
  [innerBorder setStrokeColor:cGColor];
  MEMORY[0x29EDC9740](innerBorder);
  clearColor = [MEMORY[0x29EDC7A00] clearColor];
  v4 = clearColor;
  cGColor2 = [clearColor CGColor];
  innerBorder2 = [(AXSFFocusRingShapeLayer *)v31[0] innerBorder];
  [innerBorder2 setFillColor:cGColor2];
  MEMORY[0x29EDC9740](innerBorder2);
  MEMORY[0x29EDC9740](clearColor);
  innerBorder3 = [(AXSFFocusRingShapeLayer *)v31[0] innerBorder];
  [innerBorder3 setLineWidth:3.0];
  MEMORY[0x29EDC9740](innerBorder3);
  innerBorder4 = [(AXSFFocusRingShapeLayer *)v31[0] innerBorder];
  [innerBorder4 setCornerRadius:?];
  MEMORY[0x29EDC9740](innerBorder4);
  v17 = v31[0];
  innerBorder5 = [(AXSFFocusRingShapeLayer *)v31[0] innerBorder];
  [v17 addSublayer:?];
  layer2 = [MEMORY[0x29EDBBAC0] layer];
  [(AXSFFocusRingShapeLayer *)v31[0] setOuterBorder:layer2];
  whiteColor = [MEMORY[0x29EDC7A00] whiteColor];
  v5 = whiteColor;
  cGColor3 = [whiteColor CGColor];
  outerBorder = [(AXSFFocusRingShapeLayer *)v31[0] outerBorder];
  [outerBorder setStrokeColor:cGColor3];
  MEMORY[0x29EDC9740](outerBorder);
  clearColor2 = [MEMORY[0x29EDC7A00] clearColor];
  v6 = clearColor2;
  cGColor4 = [clearColor2 CGColor];
  outerBorder2 = [(AXSFFocusRingShapeLayer *)v31[0] outerBorder];
  [outerBorder2 setFillColor:cGColor4];
  MEMORY[0x29EDC9740](outerBorder2);
  MEMORY[0x29EDC9740](clearColor2);
  outerBorder3 = [(AXSFFocusRingShapeLayer *)v31[0] outerBorder];
  [outerBorder3 setLineWidth:1.0];
  MEMORY[0x29EDC9740](outerBorder3);
  outerBorder4 = [(AXSFFocusRingShapeLayer *)v31[0] outerBorder];
  [outerBorder4 setCornerRadius:5.0];
  MEMORY[0x29EDC9740](outerBorder4);
  v28 = v31[0];
  outerBorder5 = [(AXSFFocusRingShapeLayer *)v31[0] outerBorder];
  [v28 addSublayer:?];
  MEMORY[0x29EDC9740](outerBorder5);
  v30 = MEMORY[0x29EDC9748](v31[0]);
  objc_storeStrong(v31, 0);

  return v30;
}

- (void)setInnerBorder:(uint64_t)border
{
  if (border)
  {
    objc_storeStrong((border + 48), a2);
  }
}

- (uint64_t)innerBorder
{
  if (self)
  {
    return *(self + 48);
  }

  else
  {
    return 0;
  }
}

- (void)setOuterBorder:(uint64_t)border
{
  if (border)
  {
    objc_storeStrong((border + 56), a2);
  }
}

- (uint64_t)outerBorder
{
  if (self)
  {
    return *(self + 56);
  }

  else
  {
    return 0;
  }
}

- (void)setPath:(CGPath *)path
{
  selfCopy = self;
  v35 = a2;
  pathCopy = path;
  v33.receiver = self;
  v33.super_class = AXSFFocusRingShapeLayer;
  [(AXSFFocusRingShapeLayer *)&v33 setPath:path];
  v9 = pathCopy;
  outerBorder = [(AXSFFocusRingShapeLayer *)selfCopy outerBorder];
  [outerBorder setPath:v9];
  *&v3 = MEMORY[0x29EDC9740](outerBorder).n128_u64[0];
  v32 = [MEMORY[0x29EDC7948] bezierPathWithCGPath:{pathCopy, v3}];
  [v32 bounds];
  v31 = v37;
  v30 = CGRectInset(v37, 1.0, 1.0);
  Width = CGRectGetWidth(v30);
  v29 = Width / CGRectGetWidth(v31);
  Height = CGRectGetHeight(v30);
  v28 = Height / CGRectGetHeight(v31);
  memset(&__b, 0, sizeof(__b));
  __src = MEMORY[0x29EDB90A0];
  memcpy(&__dst, MEMORY[0x29EDB90A0], sizeof(__dst));
  CGAffineTransformScale(&__b, &__dst, v29, v28);
  memcpy(v25, &__b, sizeof(v25));
  [v32 applyTransform:v25];
  [v32 bounds];
  *&v22 = v4;
  *(&v22 + 1) = v5;
  v23 = v6;
  v24 = v7;
  v21 = v22;
  origin = v31.origin;
  memset(&v19, 0, sizeof(v19));
  memcpy(&v18, __src, sizeof(v18));
  CGAffineTransformTranslate(&v19, &v18, v31.origin.x - *&v22 + 1.0, v31.origin.y - *(&v22 + 1) + 1.0);
  memcpy(v17, &v19, sizeof(v17));
  [v32 applyTransform:v17];
  v14 = v32;
  v8 = v32;
  cGPath = [v14 CGPath];
  innerBorder = [(AXSFFocusRingShapeLayer *)selfCopy innerBorder];
  [innerBorder setPath:cGPath];
  MEMORY[0x29EDC9740](innerBorder);
  objc_storeStrong(&v32, 0);
}

@end