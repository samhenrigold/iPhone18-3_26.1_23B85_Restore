@interface AVTStickerPagingControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
- (void)stickerSheetController:(id)controller didInteractWithStickerItem:(id)item atIndex:(int64_t)index byPeeling:(BOOL)peeling;
@end

@implementation AVTStickerPagingControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVTStickerPagingController" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"AVTStickerPagingController" hasProperty:@"collectionView" withType:"@"];
  [validationsCopy validateClass:@"AVTStickerPagingController" conformsToProtocol:@"AVTStickerSheetControllerDelegate"];
  [validationsCopy validateProtocol:@"AVTStickerSheetControllerDelegate" hasMethod:@"stickerSheetController:didInteractWithStickerItem:atIndex:byPeeling:" isInstanceMethod:1 isRequired:1];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = AVTStickerPagingControllerAccessibility;
  [(AVTStickerPagingControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(AVTStickerPagingControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setAccessibilityContainerType:0];
  [v4 setAccessibilityShouldBypassCollectionViewAccessibility:1];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = AVTStickerPagingControllerAccessibility;
  [(AVTStickerPagingControllerAccessibility *)&v3 loadView];
  [(AVTStickerPagingControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)stickerSheetController:(id)controller didInteractWithStickerItem:(id)item atIndex:(int64_t)index byPeeling:(BOOL)peeling
{
  v8.receiver = self;
  v8.super_class = AVTStickerPagingControllerAccessibility;
  [(AVTStickerPagingControllerAccessibility *)&v8 stickerSheetController:controller didInteractWithStickerItem:item atIndex:index byPeeling:peeling];
  v6 = *MEMORY[0x29EDC7EA8];
  v7 = accessibilityLocalizedString(@"announcement.selected.sticker");
  UIAccessibilityPostNotification(v6, v7);
}

@end