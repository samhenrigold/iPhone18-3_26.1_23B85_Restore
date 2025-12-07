@interface AltitudeModularSmallView
- (id)initFullColorImageViewWithDevice:(id)device;
@end

@implementation AltitudeModularSmallView

- (id)initFullColorImageViewWithDevice:(id)device
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = AltitudeModularSmallView;
  v5 = [(AltitudeModularSmallView *)&v13 init];
  v7 = v5;
  if (v5)
  {
    objc_msgSend_setDevice_(v5, v6, deviceCopy);
    v10 = objc_msgSend_greenColor(MEMORY[0x277D75348], v8, v9);
    objc_msgSend_setBackgroundColor_(v7, v11, v10);
  }

  return v7;
}

@end