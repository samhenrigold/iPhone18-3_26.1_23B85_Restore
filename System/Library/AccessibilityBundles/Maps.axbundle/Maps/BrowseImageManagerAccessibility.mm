@interface BrowseImageManagerAccessibility
- (id)_createImageForCategory:(id)category scale:(double)scale traits:(id)traits isCarplay:(BOOL)carplay nightMode:(BOOL)mode;
@end

@implementation BrowseImageManagerAccessibility

- (id)_createImageForCategory:(id)category scale:(double)scale traits:(id)traits isCarplay:(BOOL)carplay nightMode:(BOOL)mode
{
  modeCopy = mode;
  carplayCopy = carplay;
  v15.receiver = self;
  v15.super_class = BrowseImageManagerAccessibility;
  categoryCopy = category;
  v12 = [(BrowseImageManagerAccessibility *)&v15 _createImageForCategory:categoryCopy scale:traits traits:carplayCopy isCarplay:modeCopy nightMode:scale];
  v13 = [categoryCopy safeValueForKey:{@"name", v15.receiver, v15.super_class}];

  [v12 setAccessibilityIdentifier:v13];

  return v12;
}

@end