@interface MiroTimelineClipCollectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation MiroTimelineClipCollectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MiroEditorFlowLayout"];
  [validationsCopy validateClass:@"MiroTimelineClipCollectionViewController" isKindOfClass:@"UICollectionViewController"];
  [validationsCopy validateClass:@"MiroEditorFlowLayout" hasInstanceMethod:@"snappedIndexPath" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MiroTimelineClipCollectionViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MiroTimelineClipCollectionViewController" hasInstanceMethod:@"collectionView: didSelectItemAtIndexPath:" withFullSignature:{"v", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9[1] = *MEMORY[0x29EDCA608];
  v8.receiver = self;
  v8.super_class = MiroTimelineClipCollectionViewControllerAccessibility;
  [(MiroTimelineClipCollectionViewControllerAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  _axMiroPhotoScrubber = [(MiroTimelineClipCollectionViewControllerAccessibility *)self _axMiroPhotoScrubber];

  if (!_axMiroPhotoScrubber)
  {
    v4 = [[AXMiroPhotoScrubber alloc] initWithAccessibilityContainer:self];
    [(MiroTimelineClipCollectionViewControllerAccessibility *)self _setAXMiroPhotoScrubber:v4];
    objc_opt_class();
    v5 = [(MiroTimelineClipCollectionViewControllerAccessibility *)self safeValueForKey:@"view"];
    v6 = __UIAccessibilityCastAsClass();

    v9[0] = v4;
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v9 count:1];
    [v6 setAccessibilityElements:v7];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MiroTimelineClipCollectionViewControllerAccessibility;
  [(MiroTimelineClipCollectionViewControllerAccessibility *)&v3 viewDidLoad];
  [(MiroTimelineClipCollectionViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end