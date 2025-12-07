@interface PFParallaxLayoutTextOverlapParameters
+ (PFParallaxLayoutTextOverlapParameters)standardAlphabeticTextParameters;
+ (PFParallaxLayoutTextOverlapParameters)standardNumericTextParameters;
+ (PFParallaxLayoutTextOverlapParameters)systemParameters;
- (double)maxTopOverlapForTopRect:(CGRect)rect isInteractive:(BOOL)interactive;
@end

@implementation PFParallaxLayoutTextOverlapParameters

+ (PFParallaxLayoutTextOverlapParameters)standardAlphabeticTextParameters
{
  v2 = objc_alloc_init(PFParallaxLayoutAlphabeticalTextOverlapParameters);

  return v2;
}

- (double)maxTopOverlapForTopRect:(CGRect)rect isInteractive:(BOOL)interactive
{
  v4 = _PFAssertFailHandler();
  +[(PFParallaxLayoutTextOverlapParameters *)v4];
  return result;
}

+ (PFParallaxLayoutTextOverlapParameters)standardNumericTextParameters
{
  v2 = objc_alloc_init(PFParallaxLayoutNumericTextOverlapParameters);

  return v2;
}

+ (PFParallaxLayoutTextOverlapParameters)systemParameters
{
  if (systemParameters_once[0] != -1)
  {
    dispatch_once(systemParameters_once, &__block_literal_global_6699);
  }

  v2 = sSystemParameters;
  if (sSystemParameters)
  {

    return v2;
  }

  else
  {
    _PFAssertFailHandler();
    __57__PFParallaxLayoutTextOverlapParameters_systemParameters__block_invoke();
  }

  return result;
}

void __57__PFParallaxLayoutTextOverlapParameters_systemParameters__block_invoke()
{
  if (!sSystemParameters)
  {
    v0 = +[PFParallaxLayoutTextOverlapParameters standardNumericTextParameters];
    v1 = sSystemParameters;
    sSystemParameters = v0;

    MEMORY[0x1EEE66BB8](v0, v1);
  }
}

@end