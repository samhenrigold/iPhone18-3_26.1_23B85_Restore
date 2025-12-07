@interface MTCCTimerViewController
- (MTCCTimerViewController)init;
- (MTCCTimerViewControllerDelegate)delegate;
- (double)sliderValueFromRemainingTime:(double)time;
- (id)createSliderView;
- (id)sliderView;
- (void)_reloadForCurrentStateAnimated:(BOOL)animated;
- (void)_updateGlyphPackageDescription;
- (void)buttonTapped:(id)tapped forEvent:(id)event;
- (void)dealloc;
- (void)displayLinkTick:(id)tick;
- (void)setContentRenderingMode:(unint64_t)mode;
- (void)setTimer:(id)timer animated:(BOOL)animated;
- (void)sliderDidBeginEditing:(id)editing;
- (void)sliderEditingEnded:(id)ended;
- (void)sliderValueChanged:(id)changed;
- (void)startDisplayLinkUpdates;
- (void)stopDisplayLinkUpdates;
- (void)viewDidLoad;
- (void)willTransitionToExpandedContentMode:(BOOL)mode;
@end

@implementation MTCCTimerViewController

- (MTCCTimerViewController)init
{
  v8 = *MEMORY[0x29EDCA608];
  v5.receiver = self;
  v5.super_class = MTCCTimerViewController;
  v2 = [(MTCCTimerViewController *)&v5 init];
  if (v2)
  {
    v3 = MTLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v7 = v2;
      _os_log_impl(&dword_29C9FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ initialized", buf, 0xCu);
    }
  }

  return v2;
}

- (void)dealloc
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_29C9FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocating", buf, 0xCu);
  }

  v6 = objc_msgSend_displayLink(self, v4, v5);
  objc_msgSend_invalidate(v6, v7, v8);

  v9.receiver = self;
  v9.super_class = MTCCTimerViewController;
  [(MTCCTimerViewController *)&v9 dealloc];
}

- (void)setTimer:(id)timer animated:(BOOL)animated
{
  animatedCopy = animated;
  timerCopy = timer;
  if ((objc_msgSend_isEqual_(self->_internalTimer, v6, timerCopy) & 1) == 0)
  {
    v9 = objc_msgSend_copy(timerCopy, v7, v8);
    internalTimer = self->_internalTimer;
    self->_internalTimer = v9;

    objc_msgSend__reloadForCurrentStateAnimated_(self, v11, animatedCopy);
  }
}

- (void)viewDidLoad
{
  v36[1] = *MEMORY[0x29EDCA608];
  v35.receiver = self;
  v35.super_class = MTCCTimerViewController;
  [(CCUISliderModuleViewController *)&v35 viewDidLoad];
  v3 = MEMORY[0x29EDB9F48];
  v4 = objc_opt_class();
  v6 = objc_msgSend_bundleForClass_(v3, v5, v4);
  v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v7, @"TIMER", &stru_2A23F3148, @"TimerModule");
  objc_msgSend_setTitle_(self, v9, v8);

  objc_msgSend_setValueText_(self, v10, 0);
  objc_msgSend_setSelectedValueText_(self, v11, 0);
  objc_msgSend__updateGlyphPackageDescription(self, v12, v13);
  v36[0] = objc_opt_class();
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v14, v36, 1);
  v17 = objc_msgSend_registerForTraitChanges_withAction_(self, v16, v15, sel__updateGlyphPackageDescription);

  v20 = objc_msgSend_sliderView(self, v18, v19);
  objc_msgSend_setNumberOfSteps_(v20, v21, 12);

  v24 = objc_msgSend_sliderView(self, v22, v23);
  objc_msgSend_addTarget_action_forControlEvents_(v24, v25, self, sel_sliderDidBeginEditing_, 0x10000);

  v28 = objc_msgSend_sliderView(self, v26, v27);
  objc_msgSend_addTarget_action_forControlEvents_(v28, v29, self, sel_sliderValueChanged_, 4096);

  v32 = objc_msgSend_sliderView(self, v30, v31);
  objc_msgSend_addTarget_action_forControlEvents_(v32, v33, self, sel_sliderEditingEnded_, 0x40000);

  objc_msgSend__reloadForCurrentStateAnimated_(self, v34, 0);
}

- (id)sliderView
{
  v4.receiver = self;
  v4.super_class = MTCCTimerViewController;
  sliderView = [(CCUISliderModuleViewController *)&v4 sliderView];

  return sliderView;
}

- (id)createSliderView
{
  v3 = objc_alloc(MEMORY[0x29EDC0CF8]);
  v6 = objc_msgSend_view(self, v4, v5);
  objc_msgSend_bounds(v6, v7, v8);
  v11 = objc_msgSend_initWithFrame_(v3, v9, v10);

  return v11;
}

- (void)setContentRenderingMode:(unint64_t)mode
{
  v7.receiver = self;
  v7.super_class = MTCCTimerViewController;
  if ([(CCUIButtonModuleViewController *)&v7 contentRenderingMode]!= mode)
  {
    v6.receiver = self;
    v6.super_class = MTCCTimerViewController;
    [(CCUIButtonModuleViewController *)&v6 setContentRenderingMode:mode];
    objc_msgSend__reloadForCurrentStateAnimated_(self, v5, 0);
  }
}

- (void)buttonTapped:(id)tapped forEvent:(id)event
{
  v13 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_29C9FA000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ button tapped, relaying to delegate", &v11, 0xCu);
  }

  v9 = objc_msgSend_delegate(self, v7, v8);
  objc_msgSend_timerViewControllerButtonTapped_withEvent_(v9, v10, self, eventCopy);
}

- (void)willTransitionToExpandedContentMode:(BOOL)mode
{
  modeCopy = mode;
  v9.receiver = self;
  v9.super_class = MTCCTimerViewController;
  [(CCUISliderModuleViewController *)&v9 willTransitionToExpandedContentMode:?];
  v7 = objc_msgSend_delegate(self, v5, v6);
  objc_msgSend_timerViewController_didExpand_(v7, v8, self, modeCopy);
}

- (void)sliderDidBeginEditing:(id)editing
{
  v35 = *MEMORY[0x29EDCA608];
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_29C9FA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ slider began editing", &v33, 0xCu);
  }

  objc_msgSend_stopDisplayLinkUpdates(self, v5, v6);
  v9 = objc_msgSend_timer(self, v7, v8);
  v12 = objc_msgSend_timerID(v9, v10, v11);

  if (v12)
  {
    v13 = [MTCCTimer alloc];
    v16 = objc_msgSend_timer(self, v14, v15);
    objc_msgSend_remainingTime(v16, v17, v18);
    v20 = objc_msgSend_initWithState_duration_(v13, v19, 1);

    v23 = objc_msgSend_timer(self, v21, v22);
    v26 = objc_msgSend_timerLabel(v23, v24, v25);
    objc_msgSend_setTimerLabel_(v20, v27, v26);

    v30 = objc_msgSend_timer(self, v28, v29);
    objc_msgSend_setEditingTimer_(v20, v31, v30);

    objc_msgSend_setTimer_(self, v32, v20);
  }
}

- (void)sliderEditingEnded:(id)ended
{
  v4 = objc_msgSend_timer(self, a2, ended);
  v7 = objc_msgSend_editingTimer(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_timer(self, v8, v9);
    objc_msgSend_setState_(v10, v11, 3);

    v18 = objc_msgSend_delegate(self, v12, v13);
    v16 = objc_msgSend_timer(self, v14, v15);
    objc_msgSend_timerViewController_timerDidChange_(v18, v17, self, v16);
  }
}

- (void)sliderValueChanged:(id)changed
{
  v30 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend_step(changed, a2, changed);
  v5 = v4;
  if (v4 >= 0xD)
  {
    NSLog(&cfstr_UnexpectedStep.isa, v4);
  }

  if (v5 >= 0xC)
  {
    v6 = 12;
  }

  else
  {
    v6 = v5;
  }

  v7 = MTLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v28 = 2050;
    v29 = v6;
    _os_log_impl(&dword_29C9FA000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ slider value changed to step: %{public}lu", buf, 0x16u);
  }

  v8 = qword_29CA02F80[v6] * 60.0;
  v11 = objc_msgSend_timer(self, v9, v10);
  objc_msgSend_setDuration_(v11, v12, v13, v8);

  v16 = objc_msgSend_timer(self, v14, v15);
  objc_msgSend_setRemainingTime_(v16, v17, v18, v8);

  v21 = objc_msgSend_delegate(self, v19, v20);
  v24 = objc_msgSend_timer(self, v22, v23);
  objc_msgSend_timerViewController_timerDidChange_(v21, v25, self, v24);
}

- (void)_updateGlyphPackageDescription
{
  v4 = objc_msgSend_traitCollection(self, a2, v2);
  v7 = objc_msgSend_accessibilityContrast(v4, v5, v6);
  v8 = @"Timer";
  if (v7 == 1)
  {
    v8 = @"Timer_IC";
  }

  v9 = v8;

  v10 = MEMORY[0x29EDC0CA0];
  v11 = MEMORY[0x29EDB9F48];
  v12 = objc_opt_class();
  v17 = objc_msgSend_bundleForClass_(v11, v13, v12);
  v15 = objc_msgSend_descriptionForPackageNamed_inBundle_(v10, v14, v9, v17);

  objc_msgSend_setGlyphPackageDescription_(self, v16, v15);
}

- (void)_reloadForCurrentStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = objc_msgSend_timer(self, a2, animated);
  v8 = objc_msgSend_state(v5, v6, v7);

  switch(v8)
  {
    case 3:
      v11 = objc_msgSend_timer(self, v9, v10);
      v21 = objc_msgSend_fireDate(v11, v19, v20);
      objc_msgSend_timeIntervalSinceNow(v21, v22, v23);
      v17 = v24;

      v18 = 1;
      goto LABEL_8;
    case 2:
      v11 = objc_msgSend_timer(self, v9, v10);
      objc_msgSend_remainingTime(v11, v15, v16);
      goto LABEL_6;
    case 1:
      v11 = objc_msgSend_timer(self, v9, v10);
      objc_msgSend_duration(v11, v12, v13);
LABEL_6:
      v17 = v14;
      v18 = 0;
LABEL_8:

      goto LABEL_10;
  }

  v18 = 0;
  v17 = 0;
LABEL_10:
  objc_msgSend_setSelected_(self, v9, v18);
  v27 = objc_msgSend_appearsSelected(self, v25, v26);
  v35[0] = MEMORY[0x29EDCA5F8];
  v35[1] = 3221225472;
  v35[2] = sub_29CA01EB0;
  v35[3] = &unk_29F33F8E0;
  v35[4] = self;
  v35[5] = v17;
  v36 = animatedCopy;
  v37 = v27;
  v28 = MEMORY[0x29ED51590](v35);
  v30 = v28;
  if (animatedCopy)
  {
    objc_msgSend_animateWithDuration_animations_(MEMORY[0x29EDC7DA0], v29, v28, 0.25);
  }

  else
  {
    (*(v28 + 16))(v28);
  }

  objc_msgSend_stopDisplayLinkUpdates(self, v31, v32);
  if (v27)
  {
    objc_msgSend_startDisplayLinkUpdates(self, v33, v34);
  }
}

- (void)startDisplayLinkUpdates
{
  v3 = objc_msgSend_displayLinkWithTarget_selector_(MEMORY[0x29EDBBA90], a2, self, sel_displayLinkTick_);
  objc_msgSend_setDisplayLink_(self, v4, v3);

  v7 = objc_msgSend_displayLink(self, v5, v6);
  objc_msgSend_setPreferredFramesPerSecond_(v7, v8, 4);

  v15 = objc_msgSend_displayLink(self, v9, v10);
  v13 = objc_msgSend_mainRunLoop(MEMORY[0x29EDB8E48], v11, v12);
  objc_msgSend_addToRunLoop_forMode_(v15, v14, v13, *MEMORY[0x29EDB8D18]);
}

- (void)stopDisplayLinkUpdates
{
  v4 = objc_msgSend_displayLink(self, a2, v2);
  objc_msgSend_invalidate(v4, v5, v6);

  objc_msgSend_setDisplayLink_(self, v7, 0);
}

- (void)displayLinkTick:(id)tick
{
  v4 = objc_msgSend_timer(self, a2, tick);
  v7 = objc_msgSend_fireDate(v4, v5, v6);
  objc_msgSend_timeIntervalSinceNow(v7, v8, v9);
  v11 = v10;

  v18 = objc_msgSend_sliderView(self, v12, v13);
  objc_msgSend_sliderValueFromRemainingTime_(self, v14, v15, v11);
  *&v16 = v16;
  objc_msgSend_setValue_animated_(v18, v17, 0, v16);
}

- (double)sliderValueFromRemainingTime:(double)time
{
  v3 = 0;
  v4 = round(time);
  while (qword_29CA02F80[v3] * 60.0 < v4)
  {
    if (++v3 == 13)
    {
      goto LABEL_6;
    }
  }

  if (!v3)
  {
    return 0.0;
  }

LABEL_6:
  if (v3 >= 0xC)
  {
    v3 = 12;
  }

  v5 = v3 - 1;
  v6 = vmulq_f64(vcvtq_f64_u64(*&qword_29CA02F80[v5]), vdupq_n_s64(0x404E000000000000uLL));
  return ((v4 - v6.f64[0]) / vsubq_f64(vdupq_laneq_s64(v6, 1), v6).f64[0] + v5) / 12.0;
}

- (MTCCTimerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end