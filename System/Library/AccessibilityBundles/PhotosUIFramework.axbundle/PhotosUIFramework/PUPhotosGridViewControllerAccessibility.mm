@interface PUPhotosGridViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_configureAddPlaceholderCell:(id)cell animated:(BOOL)animated;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)updateNavigationBarAnimated:(BOOL)animated;
@end

@implementation PUPhotosGridViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUPhotosGridViewController" hasInstanceMethod:@"_configureAddPlaceholderCell: animated:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"PUPhotosGridViewController" hasInstanceMethod:@"updateNavigationBarAnimated:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"PUPhotosGridViewController" hasInstanceMethod:@"setEditing: animated:" withFullSignature:{"v", "B", "B", 0}];
}

- (void)_configureAddPlaceholderCell:(id)cell animated:(BOOL)animated
{
  animatedCopy = animated;
  v6.receiver = self;
  v6.super_class = PUPhotosGridViewControllerAccessibility;
  cellCopy = cell;
  [(PUPhotosGridViewControllerAccessibility *)&v6 _configureAddPlaceholderCell:cellCopy animated:animatedCopy];
  [cellCopy setAccessibilityIdentifier:{@"AddPhotoPlaceholder", v6.receiver, v6.super_class}];
}

- (void)updateNavigationBarAnimated:(BOOL)animated
{
  v6.receiver = self;
  v6.super_class = PUPhotosGridViewControllerAccessibility;
  [(PUPhotosGridViewControllerAccessibility *)&v6 updateNavigationBarAnimated:animated];
  if ([(PUPhotosGridViewControllerAccessibility *)self _axShouldMoveFocusToNavigationButton])
  {
    v4 = [(PUPhotosGridViewControllerAccessibility *)self safeValueForKey:@"navigationItem"];
    v5 = [v4 safeValueForKey:@"rightBarButtonItem"];
  }

  else
  {
    v5 = 0;
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v5);
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if ([(PUPhotosGridViewControllerAccessibility *)self isEditing]!= editing && animatedCopy)
  {
    [(PUPhotosGridViewControllerAccessibility *)self _axSetShouldMoveFocusToNavigationButton:1];
  }

  v7.receiver = self;
  v7.super_class = PUPhotosGridViewControllerAccessibility;
  [(PUPhotosGridViewControllerAccessibility *)&v7 setEditing:editingCopy animated:animatedCopy];
  [(PUPhotosGridViewControllerAccessibility *)self _axSetShouldMoveFocusToNavigationButton:0];
}

@end