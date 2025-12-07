@interface SFMagicHeadPlaceholderViewAccessibility
- (void)setTiltedTooFarColor:(BOOL)color useRaiseLabel:(BOOL)label useNoUWBCapableLabel:(BOOL)capableLabel;
@end

@implementation SFMagicHeadPlaceholderViewAccessibility

- (void)setTiltedTooFarColor:(BOOL)color useRaiseLabel:(BOOL)label useNoUWBCapableLabel:(BOOL)capableLabel
{
  capableLabelCopy = capableLabel;
  labelCopy = label;
  colorCopy = color;
  v9 = [(SFMagicHeadPlaceholderViewAccessibility *)self safeBoolForKey:@"_useRaiseLabel"];
  v10 = [(SFMagicHeadPlaceholderViewAccessibility *)self safeBoolForKey:@"_useNoUWBCapableLabel"];
  v16.receiver = self;
  v16.super_class = SFMagicHeadPlaceholderViewAccessibility;
  [(SFMagicHeadPlaceholderViewAccessibility *)&v16 setTiltedTooFarColor:colorCopy useRaiseLabel:labelCopy useNoUWBCapableLabel:capableLabelCopy];
  Current = CFAbsoluteTimeGetCurrent();
  v12 = [(SFMagicHeadPlaceholderViewAccessibility *)self safeUIViewForKey:@"_label"];
  accessibilityLabel = [v12 accessibilityLabel];

  v14 = (v9 & 1) == 0 && labelCopy || capableLabelCopy & ~v10;
  if (labelCopy && Current - *&setTiltedTooFarColor_useRaiseLabel_useNoUWBCapableLabel__LastAnnouncementTime > 4.0)
  {
    v15 = [accessibilityLabel isEqualToString:{setTiltedTooFarColor_useRaiseLabel_useNoUWBCapableLabel__LastAnnouncementString, Current - *&setTiltedTooFarColor_useRaiseLabel_useNoUWBCapableLabel__LastAnnouncementTime}] ^ 1;
  }

  else
  {
    v15 = 0;
  }

  if ((v14 | v15))
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], accessibilityLabel);
    setTiltedTooFarColor_useRaiseLabel_useNoUWBCapableLabel__LastAnnouncementTime = *&Current;
    objc_storeStrong(&setTiltedTooFarColor_useRaiseLabel_useNoUWBCapableLabel__LastAnnouncementString, accessibilityLabel);
  }
}

@end