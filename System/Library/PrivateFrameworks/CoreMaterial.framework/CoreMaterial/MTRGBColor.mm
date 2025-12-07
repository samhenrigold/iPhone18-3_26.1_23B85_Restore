@interface MTRGBColor
- (CAColorMatrix)sourceOverColorMatrix;
- (CGColor)CGColor;
- (MTRGBColor)colorWithAlphaComponent:(double)component;
- (MTRGBColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
- (id)_initWithCGColor:(CGColor *)color;
- (id)_initWithDescription:(id)description;
- (id)colorBlendedWithColor:(id)color;
- (id)colorDescription;
@end

@implementation MTRGBColor

- (MTRGBColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v13.receiver = self;
  v13.super_class = MTRGBColor;
  v10 = [(MTRGBColor *)&v13 init];
  if (v10)
  {
    if (red < 0.0 || red > 1.0)
    {
      [MTRGBColor initWithRed:green:blue:alpha:];
    }

    if (green < 0.0 || green > 1.0)
    {
      [MTRGBColor initWithRed:green:blue:alpha:];
    }

    if (blue < 0.0 || blue > 1.0)
    {
      [MTRGBColor initWithRed:green:blue:alpha:];
    }

    if (alpha < 0.0 || alpha > 1.0)
    {
      [MTRGBColor initWithRed:green:blue:alpha:];
    }

    v10->_red = red;
    v10->_green = green;
    v10->_blue = blue;
    v10->_alpha = alpha;
  }

  return v10;
}

- (id)_initWithCGColor:(CGColor *)color
{
  if (!color)
  {
    [MTRGBColor _initWithCGColor:];
    goto LABEL_6;
  }

  ColorSpace = CGColorGetColorSpace(color);
  v6 = CGColorSpaceGetName(ColorSpace);
  if (![v6 isEqualToString:?] || (CGColorGetComponents(color), CGColorGetNumberOfComponents(color) != 4))
  {

LABEL_6:
    selfCopy = 0;
    goto LABEL_7;
  }

  self = [MTRGBColor initWithRed:"initWithRed:green:blue:alpha:" green:? blue:? alpha:?];
  selfCopy = self;
LABEL_7:
  v8 = selfCopy;

  return v8;
}

- (id)_initWithDescription:(id)description
{
  descriptionCopy = description;
  if (!descriptionCopy)
  {
    [MTRGBColor _initWithDescription:];
  }

  v5 = [descriptionCopy objectForKey:?];
  if (!v5)
  {
    [MTRGBColor _initWithDescription:];
  }

  v6 = [descriptionCopy objectForKey:?];
  if (!v6)
  {
    [MTRGBColor _initWithDescription:];
  }

  v7 = [descriptionCopy objectForKey:?];
  if (!v7)
  {
    [MTRGBColor _initWithDescription:];
  }

  v8 = [descriptionCopy objectForKey:?];
  if (!v8)
  {
    [MTRGBColor _initWithDescription:];
  }

  [v6 floatValue];
  [v7 floatValue];
  [v8 floatValue];
  [v5 floatValue];
  v9 = [MTRGBColor initWithRed:"initWithRed:green:blue:alpha:" green:? blue:? alpha:?];

  return v9;
}

- (CGColor)CGColor
{
  components[4] = *MEMORY[0x1E69E9840];
  result = self->super._cachedColor;
  if (!result)
  {
    green = self->_green;
    blue = self->_blue;
    alpha = self->_alpha;
    components[0] = self->_red;
    components[1] = green;
    components[2] = blue;
    components[3] = alpha;
    if (RGBColorSpace_onceToken != -1)
    {
      +[MTColor colorWithCGColor:];
    }

    result = CGColorCreate(RGBColorSpace___RGBColorSpace, components);
    self->super._cachedColor = result;
  }

  return result;
}

- (id)colorDescription
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];

  return v2;
}

- (MTRGBColor)colorWithAlphaComponent:(double)component
{
  v3 = [objc_alloc(objc_opt_class()) initWithRed:? green:? blue:? alpha:?];

  return v3;
}

- (id)colorBlendedWithColor:(id)color
{
  selfCopy = self;
  if (color)
  {
    _rgbColor = [color _rgbColor];
    v6 = [MTColor colorWithRed:"colorWithRed:green:blue:alpha:" green:? blue:? alpha:?];

    selfCopy = v6;
  }

  return selfCopy;
}

- (CAColorMatrix)sourceOverColorMatrix
{
  red = self->_red;
  green = self->_green;
  blue = self->_blue;
  alpha = self->_alpha;
  return MEMORY[0x1EEDD5DB0](red, green, blue, alpha);
}

- (void)initWithRed:green:blue:alpha:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:@"(0 <= red) && (red <= 1.0)" object:? file:? lineNumber:? description:?];
}

- (void)initWithRed:green:blue:alpha:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:@"(0 <= green) && (green <= 1.0)" object:? file:? lineNumber:? description:?];
}

- (void)initWithRed:green:blue:alpha:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:@"(0 <= blue) && (blue <= 1.0)" object:? file:? lineNumber:? description:?];
}

- (void)initWithRed:green:blue:alpha:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:@"(0 <= alpha) && (alpha <= 1.0)" object:? file:? lineNumber:? description:?];
}

- (void)_initWithCGColor:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"cgColor" object:? file:? lineNumber:? description:?];
}

- (void)_initWithDescription:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"colorDescription" object:? file:? lineNumber:? description:?];
}

- (void)_initWithDescription:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"wrappedAlpha != nil" object:? file:? lineNumber:? description:?];
}

- (void)_initWithDescription:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"wrappedRed != nil" object:? file:? lineNumber:? description:?];
}

- (void)_initWithDescription:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"wrappedGreen != nil" object:? file:? lineNumber:? description:?];
}

- (void)_initWithDescription:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"wrappedBlue != nil" object:? file:? lineNumber:? description:?];
}

@end