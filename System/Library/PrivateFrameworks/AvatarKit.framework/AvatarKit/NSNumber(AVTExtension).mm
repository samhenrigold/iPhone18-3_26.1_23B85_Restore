@interface NSNumber(AVTExtension)
+ (id)avt_numberWithFloat:()AVTExtension roundingBehavior:;
- (id)avt_numberByRoundingWithBehavior:()AVTExtension;
@end

@implementation NSNumber(AVTExtension)

+ (id)avt_numberWithFloat:()AVTExtension roundingBehavior:
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a4;
  v6 = [v4 numberWithFloat:?];
  v7 = [v6 avt_numberByRoundingWithBehavior:?];

  return v7;
}

- (id)avt_numberByRoundingWithBehavior:()AVTExtension
{
  v3 = MEMORY[0x1E696AB90];
  v4 = a3;
  v5 = [v3 alloc];
  [v9 decimalValue];
  v6 = [v5 initWithDecimal:?];
  v7 = [v6 decimalNumberByRoundingAccordingToBehavior:?];

  return v7;
}

@end