@interface CAFilter(PosterLegibilityKitAdditions)
+ (id)plk_multiplyColor:()PosterLegibilityKitAdditions;
+ (id)plk_vibrantColorMatrixFilterWithVibrantColorMatrix:()PosterLegibilityKitAdditions options:;
@end

@implementation CAFilter(PosterLegibilityKitAdditions)

+ (id)plk_vibrantColorMatrixFilterWithVibrantColorMatrix:()PosterLegibilityKitAdditions options:
{
  v6 = [MEMORY[0x277CD9EA0] filterWithType:?];
  v7 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:{*a3, *(a3 + 2), *(a3 + 3), a3[2], *(a3 + 6), *(a3 + 7), a3[4]}];
  [v6 setValue:? forKey:?];

  if (a4)
  {
    [v6 setValue:? forKey:?];
  }

  return v6;
}

+ (id)plk_multiplyColor:()PosterLegibilityKitAdditions
{
  v3 = MEMORY[0x277CD9EA0];
  v4 = a3;
  v5 = [v3 filterWithType:?];
  [v4 CGColor];

  [v5 setValue:? forKey:?];

  return v5;
}

@end