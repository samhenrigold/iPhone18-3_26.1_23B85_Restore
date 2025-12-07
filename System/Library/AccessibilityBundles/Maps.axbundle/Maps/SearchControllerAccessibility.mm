@interface SearchControllerAccessibility
- (void)_dropPinsForSearchResults:(id)results forSearchType:(int64_t)type scrollToResults:(BOOL)toResults;
@end

@implementation SearchControllerAccessibility

- (void)_dropPinsForSearchResults:(id)results forSearchType:(int64_t)type scrollToResults:(BOOL)toResults
{
  toResultsCopy = toResults;
  v16.receiver = self;
  v16.super_class = SearchControllerAccessibility;
  resultsCopy = results;
  [(SearchControllerAccessibility *)&v16 _dropPinsForSearchResults:resultsCopy forSearchType:type scrollToResults:toResultsCopy];
  v8 = [resultsCopy safeValueForKey:@"results"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 count];
    if (v9 >= 1)
    {
      v10 = v9;
      v11 = MEMORY[0x29EDBA0F8];
      if (v9 == 1)
      {
        v12 = @"DROPPED_PINS_ANNOUNCEMENT_SINGULAR";
      }

      else
      {
        v12 = @"DROPPED_PINS_ANNOUNCEMENT_PLURAL";
      }

      v13 = AXMapsLocString(v12);
      v14 = MEMORY[0x29C2DCCE0](v10);
      v15 = [v11 localizedStringWithFormat:v13, v14];

      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v15);
    }
  }
}

@end