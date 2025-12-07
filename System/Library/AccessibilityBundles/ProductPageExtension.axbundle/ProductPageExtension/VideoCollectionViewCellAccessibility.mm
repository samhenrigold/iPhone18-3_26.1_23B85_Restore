@interface VideoCollectionViewCellAccessibility
- (id)_accessibilityContextDescriptors;
@end

@implementation VideoCollectionViewCellAccessibility

- (id)_accessibilityContextDescriptors
{
  v9[1] = *MEMORY[0x29EDCA608];
  v6 = @"category";
  v7 = @"value";
  v8[0] = @"VIDEO";
  v2 = accessibilityAppStoreLocalizedString(@"video.view");
  v8[1] = v2;
  v3 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:&v6 count:2];
  v9[0] = v3;
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v9 count:{1, v6, v7, v8[0]}];

  return v4;
}

@end