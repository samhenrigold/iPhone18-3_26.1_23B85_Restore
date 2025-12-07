@interface SFCapsuleCollectionViewAccessibility
- (BOOL)_shouldToggleMinimizedWithTranslation:(double)translation velocity:(double)velocity gestureEnded:(BOOL)ended;
@end

@implementation SFCapsuleCollectionViewAccessibility

- (BOOL)_shouldToggleMinimizedWithTranslation:(double)translation velocity:(double)velocity gestureEnded:(BOOL)ended
{
  endedCopy = ended;
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
  {
    return 0;
  }

  v10.receiver = self;
  v10.super_class = SFCapsuleCollectionViewAccessibility;
  return [(SFCapsuleCollectionViewAccessibility *)&v10 _shouldToggleMinimizedWithTranslation:endedCopy velocity:translation gestureEnded:velocity];
}

@end