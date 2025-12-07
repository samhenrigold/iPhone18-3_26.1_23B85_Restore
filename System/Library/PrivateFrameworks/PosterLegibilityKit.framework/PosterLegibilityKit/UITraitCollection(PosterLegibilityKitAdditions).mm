@interface UITraitCollection(PosterLegibilityKitAdditions)
+ (id)plk_traitCollectionNotingShouldBeBackdropAware:()PosterLegibilityKitAdditions;
- (id)plk_shouldBeBackdropAware;
@end

@implementation UITraitCollection(PosterLegibilityKitAdditions)

+ (id)plk_traitCollectionNotingShouldBeBackdropAware:()PosterLegibilityKitAdditions
{
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __98__UITraitCollection_PosterLegibilityKitAdditions__plk_traitCollectionNotingShouldBeBackdropAware___block_invoke;
  v8 = &__block_descriptor_33_e27_v16__0___UIMutableTraits__8l;
  v9 = a3;
  v3 = [self traitCollectionWithTraits:?];

  return v3;
}

- (id)plk_shouldBeBackdropAware
{
  v2 = objc_opt_self();
  v3 = [self objectForTrait:?];

  return v3;
}

@end