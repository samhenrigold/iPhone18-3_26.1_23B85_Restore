@interface MTWhiteColor
- (CAColorMatrix)sourceOverColorMatrix;
- (CGColor)CGColor;
- (MTWhiteColor)colorWithAlphaComponent:(double)component;
- (MTWhiteColor)initWithWhite:(double)white alpha:(double)alpha;
- (id)_initWithCGColor:(CGColor *)color;
- (id)_initWithDescription:(id)description;
- (id)_rgbColor;
- (id)colorBlendedWithColor:(id)color;
- (id)colorDescription;
@end

@implementation MTWhiteColor

- (CGColor)CGColor
{
  components[2] = *MEMORY[0x1E69E9840];
  result = self->super._cachedColor;
  if (!result)
  {
    alpha = self->_alpha;
    components[0] = self->_white;
    components[1] = alpha;
    if (GrayColorSpace_onceToken != -1)
    {
      +[MTColor colorWithCGColor:];
    }

    result = CGColorCreate(GrayColorSpace___GrayColorSpace, components);
    self->super._cachedColor = result;
  }

  return result;
}

- (CAColorMatrix)sourceOverColorMatrix
{
  white = self->_white;
  alpha = self->_alpha;
  return MEMORY[0x1EEDD5DB0](white, white, white, alpha);
}

- (MTWhiteColor)initWithWhite:(double)white alpha:(double)alpha
{
  v9.receiver = self;
  v9.super_class = MTWhiteColor;
  v6 = [(MTWhiteColor *)&v9 init];
  if (v6)
  {
    if (white < 0.0 || white > 1.0)
    {
      [MTWhiteColor initWithWhite:alpha:];
    }

    if (alpha < 0.0 || alpha > 1.0)
    {
      [MTWhiteColor initWithWhite:alpha:];
    }

    v6->_white = white;
    v6->_alpha = alpha;
  }

  return v6;
}

- (id)_initWithCGColor:(CGColor *)color
{
  if (!color)
  {
    [MTWhiteColor _initWithCGColor:];
    goto LABEL_6;
  }

  ColorSpace = CGColorGetColorSpace(color);
  v6 = CGColorSpaceGetName(ColorSpace);
  if (![v6 isEqualToString:?] || (CGColorGetComponents(color), CGColorGetNumberOfComponents(color) != 2))
  {

LABEL_6:
    selfCopy = 0;
    goto LABEL_7;
  }

  self = [MTWhiteColor initWithWhite:"initWithWhite:alpha:" alpha:?];
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
    [MTWhiteColor _initWithDescription:];
  }

  v5 = [descriptionCopy objectForKey:?];
  if (!v5)
  {
    [MTWhiteColor _initWithDescription:];
  }

  v6 = [descriptionCopy objectForKey:?];
  if (!v6)
  {
    [MTWhiteColor _initWithDescription:];
  }

  [v6 floatValue];
  [v5 floatValue];
  v7 = [MTWhiteColor initWithWhite:"initWithWhite:alpha:" alpha:?];

  return v7;
}

- (id)colorDescription
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];

  return v2;
}

- (MTWhiteColor)colorWithAlphaComponent:(double)component
{
  v3 = [objc_alloc(objc_opt_class()) initWithWhite:? alpha:?];

  return v3;
}

- (id)colorBlendedWithColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  if (colorCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [MTColor colorWithWhite:"colorWithWhite:alpha:" alpha:?];
    }

    else
    {
      _rgbColor = [(MTWhiteColor *)selfCopy _rgbColor];
      v6 = [(MTWhiteColor *)_rgbColor colorBlendedWithColor:?];

      selfCopy = _rgbColor;
    }

    selfCopy = v6;
  }

  return selfCopy;
}

- (id)_rgbColor
{
  v2 = [MTRGBColor initWithRed:"initWithRed:green:blue:alpha:" green:? blue:? alpha:?];

  return v2;
}

- (void)initWithWhite:alpha:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:@"(0 <= white) && (white <= 1.0)" object:? file:? lineNumber:? description:?];
}

- (void)initWithWhite:alpha:.cold.2()
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
  [v0 handleFailureInMethod:@"wrappedWhite != nil" object:? file:? lineNumber:? description:?];
}

@end