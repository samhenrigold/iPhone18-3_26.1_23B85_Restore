@interface CCUIFlashlightModuleViewController
- (BOOL)shouldBeginTransitionToExpandedContentModule;
- (CCUIFlashlightModuleViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)createSliderView;
- (id)sliderView;
- (void)_sliderValueDidChange:(id)change;
- (void)_updateControls;
- (void)_updateSliderValue;
- (void)buttonTapped:(id)tapped forEvent:(id)event;
- (void)flashlightAvailabilityDidChange:(BOOL)change;
- (void)flashlightLevelDidChange:(unint64_t)change;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation CCUIFlashlightModuleViewController

- (void)_updateControls
{
  isAvailable = objc_msgSend_isAvailable(self->_flashlight, a2, v2);
  if (objc_msgSend_level(self->_flashlight, v5, v6))
  {
    v9 = isAvailable;
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_msgSend_buttonView(self, v7, v8);
  objc_msgSend_setEnabled_(v10, v11, isAvailable);

  v14 = objc_msgSend_sliderView(self, v12, v13);
  objc_msgSend_setEnabled_(v14, v15, isAvailable);

  objc_msgSend_setSelected_(self, v16, v9);

  objc_msgSend__updateSliderValue(self, v17, v18);
}

- (id)sliderView
{
  v4.receiver = self;
  v4.super_class = CCUIFlashlightModuleViewController;
  sliderView = [(CCUISliderModuleViewController *)&v4 sliderView];

  return sliderView;
}

- (void)_updateSliderValue
{
  if (objc_msgSend_isExpanded(self, a2, v2))
  {
    v12 = objc_msgSend_sliderView(self, v4, v5);
    if (objc_msgSend_isSelected(self, v6, v7) && objc_msgSend_isAvailable(self->_flashlight, v8, v9) && (v11 = objc_msgSend_level(self->_flashlight, v8, v10), (v11 - 1) < 4))
    {
      objc_msgSend_setStep_(v12, v8, v11 + 1);
    }

    else
    {
      objc_msgSend_setStep_(v12, v8, 1);
    }
  }
}

- (CCUIFlashlightModuleViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v12.receiver = self;
  v12.super_class = CCUIFlashlightModuleViewController;
  v6 = [(CCUIButtonModuleViewController *)&v12 initWithNibName:name bundle:bundle];
  if (v6)
  {
    if (objc_msgSend_deviceSupportsFlashlight(MEMORY[0x29EDC6D08], v4, v5))
    {
      v9 = objc_msgSend_sharedInstance(MEMORY[0x29EDC6D08], v7, v8);
      flashlight = v6->_flashlight;
      v6->_flashlight = v9;
    }

    objc_msgSend_addObserver_(v6->_flashlight, v7, v6);
  }

  return v6;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CCUIFlashlightModuleViewController;
  [(CCUIFlashlightModuleViewController *)&v6 viewWillAppear:appear];
  objc_msgSend__updateControls(self, v4, v5);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = CCUIFlashlightModuleViewController;
  [(CCUIFlashlightModuleViewController *)&v8 viewDidDisappear:disappear];
  if (!objc_msgSend_level(self->_flashlight, v4, v5))
  {
    objc_msgSend_coolDown(self->_flashlight, v6, v7);
  }
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = CCUIFlashlightModuleViewController;
  [(CCUISliderModuleViewController *)&v11 viewDidLoad];
  v5 = objc_msgSend_sliderView(self, v3, v4);
  objc_msgSend_setNumberOfSteps_(v5, v6, 5);
  objc_msgSend_setFirstStepIsOff_(v5, v7, 1);
  objc_msgSend_addTarget_action_forControlEvents_(v5, v8, self, sel__sliderValueDidChange_, 4096);
  objc_msgSend__updateControls(self, v9, v10);
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = CCUIFlashlightModuleViewController;
  [(CCUISliderModuleViewController *)&v5 viewWillLayoutSubviews];
  objc_msgSend__updateSliderValue(self, v3, v4);
}

- (id)createSliderView
{
  v3 = objc_alloc(MEMORY[0x29EDC0CF8]);
  v6 = objc_msgSend_view(self, v4, v5);
  objc_msgSend_bounds(v6, v7, v8);
  v11 = objc_msgSend_initWithFrame_(v3, v9, v10);

  return v11;
}

- (void)buttonTapped:(id)tapped forEvent:(id)event
{
  isAvailable = objc_msgSend_isAvailable(self->_flashlight, a2, tapped, event);
  isSelected = objc_msgSend_isSelected(self, v6, v7);
  objc_msgSend_setSelected_(self, v9, (isSelected ^ 1) & isAvailable);
  v12 = objc_msgSend_isSelected(self, v10, v11);
  flashlight = self->_flashlight;
  if (v12)
  {

    MEMORY[0x2A1C70FE8](flashlight, sel_turnFlashlightOnForReason_, @"Control Center");
  }

  else
  {

    MEMORY[0x2A1C70FE8](flashlight, sel_turnFlashlightOffForReason_, @"Control Center");
  }
}

- (BOOL)shouldBeginTransitionToExpandedContentModule
{
  isAvailable = objc_msgSend_isAvailable(self->_flashlight, a2, v2);
  if (isAvailable)
  {
    LOBYTE(isAvailable) = objc_msgSend_deviceSupportsDynamicFlashlightInterface(self->_flashlight, v5, v6) ^ 1;
  }

  return isAvailable;
}

- (void)flashlightLevelDidChange:(unint64_t)change
{
  dispatch_assert_queue_V2(MEMORY[0x29EDCA578]);

  objc_msgSend__updateControls(self, v4, v5);
}

- (void)flashlightAvailabilityDidChange:(BOOL)change
{
  dispatch_assert_queue_V2(MEMORY[0x29EDCA578]);
  objc_msgSend__updateControls(self, v4, v5);
  if ((objc_msgSend_isAvailable(self->_flashlight, v6, v7) & 1) == 0)
  {
    v10 = objc_msgSend_buttonView(self, v8, v9);
    objc_msgSend_cancelTouchTracking(v10, v11, v12);

    if (objc_msgSend_isExpanded(self, v13, v14))
    {

      MEMORY[0x2A1C70FE8](self, sel_dismissViewControllerAnimated_completion_, 1);
    }
  }
}

- (void)_sliderValueDidChange:(id)change
{
  flashlight = self->_flashlight;
  v4 = objc_msgSend_step(change, a2, change);
  if (v4 > 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = qword_29C97BAE8[v4];
  }

  MEMORY[0x2A1C70FE8](flashlight, sel_setLevel_, v5);
}

@end