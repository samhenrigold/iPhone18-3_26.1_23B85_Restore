@interface EQKitiOSEquationView
- (CGPoint)offset;
- (CGSize)intrinsicContentSize;
- (EQKitiOSEquationView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setEquationLayout:(id)layout;
@end

@implementation EQKitiOSEquationView

- (EQKitiOSEquationView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = EQKitiOSEquationView;
  result = [(EQKitiOSEquationView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_viewScale = 1.0;
    result->_offset = *MEMORY[0x277CBF348];
    result->_padding = 2.0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitiOSEquationView;
  [(EQKitiOSEquationView *)&v3 dealloc];
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextTranslateCTM(CurrentContext, self->_offset.x, self->_offset.y);
  CGContextScaleCTM(CurrentContext, self->_viewScale, self->_viewScale);
  [(EQKitLayout *)self->_equationLayout erasableBounds];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  MinX = CGRectGetMinX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MinY = CGRectGetMinY(v16);
  textColor = self->_textColor;
  if (textColor)
  {
    cGColor = [(UIColor *)textColor CGColor];
    CGContextSetFillColorWithColor(CurrentContext, cGColor);
    CGContextSetStrokeColorWithColor(CurrentContext, cGColor);
  }

  equationLayout = self->_equationLayout;

  [(EQKitLayout *)equationLayout renderIntoContext:CurrentContext offset:-MinX, -MinY];
}

- (void)setEquationLayout:(id)layout
{
  equationLayout = self->_equationLayout;
  if (equationLayout != layout)
  {

    self->_equationLayout = layout;

    MEMORY[0x2821F9670](self, sel_setNeedsLayout);
  }
}

- (CGSize)intrinsicContentSize
{
  equationLayout = self->_equationLayout;
  if (equationLayout)
  {
    [(EQKitLayout *)equationLayout erasableBounds];
    v4 = v3;
    v6 = v5;
  }

  else
  {
    v4 = *MEMORY[0x277CBF3A8];
    v6 = *(MEMORY[0x277CBF3A8] + 8);
  }

  result.height = v6;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = EQKitiOSEquationView;
  [(EQKitiOSEquationView *)&v19 layoutSubviews];
  equationLayout = self->_equationLayout;
  if (equationLayout)
  {
    [(EQKitLayout *)equationLayout erasableBounds];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = *(MEMORY[0x277CBF3A0] + 16);
    v7 = *(MEMORY[0x277CBF3A0] + 24);
  }

  [(EQKitiOSEquationView *)self bounds];
  v9 = v8;
  v11 = v10;
  [(EQKitiOSEquationView *)self padding];
  v13 = v9 + -v12 * 2.0;
  if (v13 < 1.0)
  {
    v13 = 1.0;
  }

  v14 = v13 / v5;
  if (v5 == 0.0)
  {
    v14 = 1.0;
  }

  v15 = v11 + -v12 * 2.0;
  if (v15 < 1.0)
  {
    v15 = 1.0;
  }

  v16 = v15 / v7;
  if (v7 == 0.0)
  {
    v16 = 1.0;
  }

  if (v14 < v16)
  {
    v16 = v14;
  }

  v17 = fmin(v16, 10.0);
  self->_viewScale = v17;
  v18 = v12 + v12;
  self->_offset.x = (v9 - (v18 + v5 * v17)) * 0.5;
  self->_offset.y = (v11 - (v18 + v7 * v17)) * 0.5;
  [(EQKitiOSEquationView *)self setNeedsDisplay];
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end