@interface TwoPartTextLabel
- (BOOL)hasTwoParts;
- (CGSize)idealSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)textPart2Size;
- (TwoPartTextLabel)init;
- (double)rightmostDisplayedPartWidth;
- (id)description;
- (void)drawRect:(CGRect)rect;
- (void)setMinimumPart2Width:(double)width;
- (void)setStrikethroughPart1:(BOOL)part1;
- (void)setStrikethroughPart2:(BOOL)part2;
- (void)setTextPart1:(id)part1;
- (void)setTextPart1:(id)part1 part2:(id)part2;
@end

@implementation TwoPartTextLabel

- (TwoPartTextLabel)init
{
  v6.receiver = self;
  v6.super_class = TwoPartTextLabel;
  v2 = [(TwoPartTextLabel *)&v6 init];
  v3 = v2;
  if (v2)
  {
    layer = [(TwoPartTextLabel *)v2 layer];
    [layer setValue:MEMORY[0x1E695E118] forKeyPath:@"separatedOptions.enableContext"];
    [layer setNeedsDisplay];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = TwoPartTextLabel;
  v4 = [(TwoPartTextLabel *)&v8 description];
  text = [(TwoPartTextLabel *)self text];
  v6 = [v3 stringWithFormat:@"%@\t'%@'\t'%@'", v4, text, self->_secondTextPart];

  return v6;
}

- (void)setTextPart1:(id)part1 part2:(id)part2
{
  part2Copy = part2;
  [(TwoPartTextLabel *)self setTextPart1:part1];
  if (self->_secondTextPart != part2Copy)
  {
    objc_storeStrong(&self->_secondTextPart, part2);
    self->_part2Size = *MEMORY[0x1E695F060];
    [(TwoPartTextLabel *)self setNeedsDisplay];
  }
}

- (void)setTextPart1:(id)part1
{
  v3.receiver = self;
  v3.super_class = TwoPartTextLabel;
  [(TwoPartTextLabel *)&v3 setText:part1];
}

- (void)setStrikethroughPart1:(BOOL)part1
{
  if (self->_strikethroughPart1 != part1)
  {
    self->_strikethroughPart1 = part1;
    [(TwoPartTextLabel *)self setNeedsDisplay];
  }
}

- (void)setStrikethroughPart2:(BOOL)part2
{
  if (self->_strikethroughPart2 != part2)
  {
    self->_strikethroughPart2 = part2;
    [(TwoPartTextLabel *)self setNeedsDisplay];
  }
}

- (CGSize)textPart2Size
{
  p_part2Size = &self->_part2Size;
  if (self->_part2Size.width == 0.0 && self->_part2Size.height == 0.0 && [(NSString *)self->_secondTextPart length])
  {
    secondTextPart = self->_secondTextPart;
    font = [(TwoPartTextLabel *)self font];
    [(NSString *)secondTextPart _legacy_sizeWithFont:font];
    p_part2Size->width = v6;
    p_part2Size->height = v7;
  }

  width = p_part2Size->width;
  height = p_part2Size->height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)hasTwoParts
{
  [(TwoPartTextLabel *)self textPart2Size];
  if (v3 <= 0.0)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = TwoPartTextLabel;
  [(TwoPartTextLabel *)&v6 textSize];
  return v4 > 0.0;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(TwoPartTextLabel *)self idealSize:fits.width];
  if (width < v4)
  {
    v4 = width;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)idealSize
{
  [(TwoPartTextLabel *)self textPart2Size];
  v4 = v3;
  v6 = v5;
  text = [(TwoPartTextLabel *)self text];
  font = [(TwoPartTextLabel *)self font];
  [text _legacy_sizeWithFont:font];
  v10 = v9;
  v12 = v11;

  if (v4 > 0.0 && v10 > 0.0)
  {
    v10 = v10 + fmax(self->_minPart2Width - v4, 0.0) + 18.0;
  }

  v13 = v4 + v10;
  if (v12 >= v6)
  {
    v14 = v12;
  }

  else
  {
    v14 = v6;
  }

  result.height = v14;
  result.width = v13;
  return result;
}

- (double)rightmostDisplayedPartWidth
{
  [(TwoPartTextLabel *)self textPart2Size];
  if (result == 0.0)
  {
    v4.receiver = self;
    v4.super_class = TwoPartTextLabel;
    [(TwoPartTextLabel *)&v4 textSize];
  }

  return result;
}

- (void)setMinimumPart2Width:(double)width
{
  if (self->_minPart2Width != width)
  {
    self->_minPart2Width = width;
    [(TwoPartTextLabel *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v43[1] = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = TwoPartTextLabel;
  [(TwoPartTextLabel *)&v41 drawRect:?];
  [(TwoPartTextLabel *)self textPart2Size];
  if (v8 <= 0.0)
  {
    v20 = *MEMORY[0x1E695EFF8];
  }

  else
  {
    v9 = v8;
    v10 = *(MEMORY[0x1E695EFF8] + 8);
    text = [(TwoPartTextLabel *)self text];
    v42 = *MEMORY[0x1E69DB648];
    font = [(TwoPartTextLabel *)self font];
    v43[0] = font;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    [text sizeWithAttributes:v13];
    v15 = v14;

    if (CalInterfaceIsLeftToRight(v16, v17))
    {
      v18 = x + v15;
      CalRoundToScreenScale(v18 + 18.0 + fmax(self->_minPart2Width - v9, 0.0));
      v20 = v19;
      if (v9 + v19 > width)
      {
        if (v18 + 4.0 >= width - v9)
        {
          v20 = v18 + 4.0;
        }

        else
        {
          v20 = width - v9;
        }
      }
    }

    else
    {
      v44.origin.x = x;
      v44.origin.y = y;
      v44.size.width = width;
      v44.size.height = height;
      MaxX = CGRectGetMaxX(v44);
      CalRoundToScreenScale(MaxX - v15 + -18.0 - fmax(self->_minPart2Width - v9, 0.0) - v9);
      if (v22 >= 0.0)
      {
        v20 = v22;
      }

      else
      {
        v45.origin.x = x;
        v45.origin.y = y;
        v45.size.width = width;
        v45.size.height = height;
        v20 = fmin(CGRectGetMaxX(v45) - v15 + -4.0 - v9, 0.0);
      }
    }

    v23 = v10 + CalFloorToScreenScale(0.4);
    currentTextColor = [(TwoPartTextLabel *)self currentTextColor];
    [currentTextColor set];

    secondTextPart = self->_secondTextPart;
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v26 = CGRectGetMaxX(v46) - v20;
    font2 = [(TwoPartTextLabel *)self font];
    [(NSString *)secondTextPart _legacy_drawAtPoint:font2 forWidth:[(TwoPartTextLabel *)self lineBreakMode] withFont:v20 lineBreakMode:v23, v26];
  }

  if ([(TwoPartTextLabel *)self strikethroughPart1]|| [(TwoPartTextLabel *)self strikethroughPart2])
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    font3 = [(TwoPartTextLabel *)self font];
    [font3 lineHeight];
    v31 = v30;

    if ([(TwoPartTextLabel *)self strikethroughPart1])
    {
      v32 = 0.0;
    }

    else
    {
      v32 = v20;
    }

    [(TwoPartTextLabel *)self bounds];
    v33 = CGRectGetMaxX(v47) - v32 + -2.0;
    CalRoundToScreenScale(0.5);
    v35 = v34;
    font4 = [(TwoPartTextLabel *)self font];
    [font4 xHeight];
    CalRoundToScreenScale(y + v31 - v35 - v37);
    v39 = v38;

    CGContextSaveGState(CurrentContext);
    textColor = [(TwoPartTextLabel *)self textColor];
    CGContextSetFillColorWithColor(CurrentContext, [textColor CGColor]);

    v48.origin.x = v32;
    v48.origin.y = v39;
    v48.size.width = v33;
    v48.size.height = v35;
    CGContextFillRect(CurrentContext, v48);
    CGContextRestoreGState(CurrentContext);
  }
}

@end