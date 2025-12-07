@interface HWFavoritesPickerViewAccessibility
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
@end

@implementation HWFavoritesPickerViewAccessibility

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = HWFavoritesPickerViewAccessibility;
  [(HWFavoritesPickerViewAccessibility *)&v4 setEditing:editing animated:animated];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end