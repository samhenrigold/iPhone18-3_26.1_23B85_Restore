@interface MTColor
+ (id)colorWithCGColor:(CGColor *)color;
+ (id)colorWithDescription:(id)description;
+ (id)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
+ (id)colorWithWhite:(double)white alpha:(double)alpha;
- (CAColorMatrix)sourceOverColorMatrix;
- (CGColor)CGColor;
- (MTColor)colorWithAdditionalAlphaComponent:(double)component;
- (MTColor)colorWithAlphaComponent:(double)component;
- (id)_initWithCGColor:(CGColor *)color;
- (id)_initWithDescription:(id)description;
- (id)_rgbColor;
- (id)colorBlendedWithColor:(id)color;
- (id)colorDescription;
- (void)dealloc;
@end

@implementation MTColor

- (void)dealloc
{
  cachedColor = self->_cachedColor;
  if (cachedColor)
  {
    CGColorRelease(cachedColor);
  }

  v4.receiver = self;
  v4.super_class = MTColor;
  [(MTColor *)&v4 dealloc];
}

+ (id)colorWithWhite:(double)white alpha:(double)alpha
{
  v4 = [MTWhiteColor initWithWhite:"initWithWhite:alpha:" alpha:?];

  return v4;
}

+ (id)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v6 = [MTRGBColor initWithRed:"initWithRed:green:blue:alpha:" green:? blue:? alpha:?];

  return v6;
}

+ (id)colorWithCGColor:(CGColor *)color
{
  if (color)
  {
    ColorSpace = CGColorGetColorSpace(color);
    if (RGBColorSpace_onceToken != -1)
    {
      +[MTColor colorWithCGColor:];
    }

    if (ColorSpace != RGBColorSpace___RGBColorSpace || (v5 = [[MTRGBColor alloc] _initWithCGColor:?]) == 0)
    {
      if (GrayColorSpace_onceToken != -1)
      {
        +[MTColor colorWithCGColor:];
      }

      if (ColorSpace == GrayColorSpace___GrayColorSpace)
      {
        v5 = [[MTWhiteColor alloc] _initWithCGColor:?];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)colorWithDescription:(id)description
{
  descriptionCopy = description;
  v4 = [descriptionCopy objectForKey:?];

  if (v4)
  {
    v5 = [descriptionCopy objectForKey:?];

    if (v5)
    {
      v6 = MTWhiteColor;
LABEL_4:
      v4 = [[v6 alloc] _initWithDescription:?];
      goto LABEL_5;
    }

    v4 = [descriptionCopy objectForKey:?];
    if (v4)
    {
      v8 = [descriptionCopy objectForKey:?];
      if (v8)
      {
        v9 = v8;
        v10 = [descriptionCopy objectForKey:?];

        if (v10)
        {
          v6 = MTRGBColor;
          goto LABEL_4;
        }
      }

      else
      {
      }

      v4 = 0;
    }
  }

LABEL_5:

  return v4;
}

- (id)_initWithCGColor:(CGColor *)color
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  return 0;
}

- (id)_initWithDescription:(id)description
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  return 0;
}

- (CGColor)CGColor
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  return 0;
}

- (id)colorDescription
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  return 0;
}

- (MTColor)colorWithAlphaComponent:(double)component
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  return 0;
}

- (MTColor)colorWithAdditionalAlphaComponent:(double)component
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  return 0;
}

- (id)colorBlendedWithColor:(id)color
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  return 0;
}

- (CAColorMatrix)sourceOverColorMatrix
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  v6 = MEMORY[0x1E6979280];
  v7 = *(MEMORY[0x1E6979280] + 48);
  *&retstr->m24 = *(MEMORY[0x1E6979280] + 32);
  *&retstr->m33 = v7;
  *&retstr->m42 = v6[4];
  v8 = v6[1];
  *&retstr->m11 = *v6;
  *&retstr->m15 = v8;
  return result;
}

- (id)_rgbColor
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  return 0;
}

@end