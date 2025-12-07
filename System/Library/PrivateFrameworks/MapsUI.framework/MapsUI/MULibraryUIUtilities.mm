@interface MULibraryUIUtilities
+ (BOOL)isMyPlacesEnabled;
@end

@implementation MULibraryUIUtilities

+ (BOOL)isMyPlacesEnabled
{
  if (isMyPlacesEnabled_onceToken != -1)
  {
    dispatch_once(&isMyPlacesEnabled_onceToken, &__block_literal_global_22448);
  }

  return isMyPlacesEnabled__myPlacesEnabled;
}

uint64_t __41__MULibraryUIUtilities_isMyPlacesEnabled__block_invoke(uint64_t a1)
{
  result = MapsFeature_IsEnabled_MyPlacesFeatures();
  isMyPlacesEnabled__myPlacesEnabled = result;
  return result;
}

@end