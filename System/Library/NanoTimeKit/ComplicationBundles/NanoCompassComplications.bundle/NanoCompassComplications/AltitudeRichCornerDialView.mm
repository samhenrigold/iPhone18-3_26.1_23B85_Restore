@interface AltitudeRichCornerDialView
- (id)_newBottomView;
- (id)_newTopView;
@end

@implementation AltitudeRichCornerDialView

- (id)_newTopView
{
  v2 = objc_alloc(MEMORY[0x277D755E8]);
  v3 = NanoCompassComplicationImageNamed(@"Altitude/Corner/Top");
  v5 = objc_msgSend_initWithImage_(v2, v4, v3);

  return v5;
}

- (id)_newBottomView
{
  v2 = objc_alloc(MEMORY[0x277D755E8]);
  v3 = NanoCompassComplicationImageNamed(@"Altitude/Corner/Bottom");
  v5 = objc_msgSend_initWithImage_(v2, v4, v3);

  return v5;
}

@end