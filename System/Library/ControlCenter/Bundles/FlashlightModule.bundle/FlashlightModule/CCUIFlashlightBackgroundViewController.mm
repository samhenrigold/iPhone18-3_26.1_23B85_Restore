@interface CCUIFlashlightBackgroundViewController
- (CCUIFlashlightBackgroundViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_updateGlyphForFlashlightLevel:(unint64_t)level;
- (void)flashlightLevelDidChange:(unint64_t)change;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CCUIFlashlightBackgroundViewController

- (CCUIFlashlightBackgroundViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v12.receiver = self;
  v12.super_class = CCUIFlashlightBackgroundViewController;
  v6 = [(CCUIFlashlightBackgroundViewController *)&v12 initWithNibName:name bundle:bundle];
  if (v6 && objc_msgSend_deviceSupportsFlashlight(MEMORY[0x29EDC6D08], v4, v5))
  {
    v9 = objc_msgSend_sharedInstance(MEMORY[0x29EDC6D08], v7, v8);
    objc_msgSend_addObserver_(v9, v10, v6);
  }

  return v6;
}

- (void)viewWillAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = CCUIFlashlightBackgroundViewController;
  [(CCUIFlashlightBackgroundViewController *)&v13 viewWillAppear:appear];
  if (objc_msgSend_deviceSupportsFlashlight(MEMORY[0x29EDC6D08], v4, v5))
  {
    v8 = objc_msgSend_sharedInstance(MEMORY[0x29EDC6D08], v6, v7);
    v11 = objc_msgSend_level(v8, v9, v10);
    objc_msgSend__updateGlyphForFlashlightLevel_(self, v12, v11);
  }
}

- (void)flashlightLevelDidChange:(unint64_t)change
{
  dispatch_assert_queue_V2(MEMORY[0x29EDCA578]);

  objc_msgSend__updateGlyphForFlashlightLevel_(self, v5, change);
}

- (void)_updateGlyphForFlashlightLevel:(unint64_t)level
{
  v4 = @"flashlight.on.fill";
  if (!level)
  {
    v4 = @"flashlight.off.fill";
  }

  v5 = MEMORY[0x29EDC7AD0];
  v6 = v4;
  v11 = objc_msgSend_configurationWithPointSize_weight_scale_(v5, v7, 3, 2, 30.0);
  v9 = objc_msgSend_systemImageNamed_withConfiguration_(MEMORY[0x29EDC7AC8], v8, v6, v11);

  objc_msgSend_setHeaderGlyphImage_unscaledSymbolPointSize_(self, v10, v9, 30.0);
}

@end