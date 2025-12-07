@interface NTKUnity2025FaceView
- (NTKUnity2025FaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (id)createFaceColorPalette;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyFrozen;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_forceUpdateComplicationColor;
- (void)_loadSnapshotContentViews;
- (void)_renderSynchronouslyWithImageQueueDiscard:(BOOL)discard inGroup:(id)group;
- (void)_reorderSwitcherSnapshotView;
- (void)_setUpMetalView;
- (void)_tearDownMetalView;
- (void)_unloadSnapshotContentViews;
- (void)setOverrideDate:(id)date duration:(double)duration;
@end

@implementation NTKUnity2025FaceView

- (NTKUnity2025FaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v20.receiver = self;
  v20.super_class = NTKUnity2025FaceView;
  v10 = [(NTKAnalogFaceView *)&v20 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_device, device);
    v11->_isPaused = 1;
    v12 = [NTKUnity2025FaceViewComplicationFactory alloc];
    v14 = objc_msgSend_initForDevice_(v12, v13, deviceCopy);
    complicationFactory = v11->_complicationFactory;
    v11->_complicationFactory = v14;

    objc_msgSend_setAlpha_faceView_(v11->_complicationFactory, v16, v11, 1.0);
    objc_msgSend_setComplicationFactory_(v11, v17, v11->_complicationFactory);
    objc_msgSend_setFaceView_(v11->_complicationFactory, v18, v11);
  }

  return v11;
}

- (void)_loadSnapshotContentViews
{
  v5.receiver = self;
  v5.super_class = NTKUnity2025FaceView;
  [(NTKAnalogFaceView *)&v5 _loadSnapshotContentViews];
  objc_msgSend__setUpMetalView(self, v3, v4);
}

- (void)_unloadSnapshotContentViews
{
  v5.receiver = self;
  v5.super_class = NTKUnity2025FaceView;
  [(NTKAnalogFaceView *)&v5 _unloadSnapshotContentViews];
  objc_msgSend__tearDownMetalView(self, v3, v4);
}

- (void)_applyFrozen
{
  v2.receiver = self;
  v2.super_class = NTKUnity2025FaceView;
  [(NTKUnity2025FaceView *)&v2 _applyFrozen];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v8.receiver = self;
  v8.super_class = NTKUnity2025FaceView;
  dateCopy = date;
  [(NTKUnity2025FaceView *)&v8 setOverrideDate:dateCopy duration:duration];
  objc_msgSend_setOverrideDate_duration_(self->_quad, v7, dateCopy, duration, v8.receiver, v8.super_class);
}

- (void)_reorderSwitcherSnapshotView
{
  v4 = objc_msgSend_switcherSnapshotView(self, a2, v2);

  if (v4)
  {
    v8 = objc_msgSend_switcherSnapshotView(self, v5, v6);
    objc_msgSend_bringSubviewToFront_(self, v7, v8);
  }
}

- (void)_setUpMetalView
{
  v4 = MEMORY[0x277CFA790];
  objc_msgSend_screenBounds(self->_device, a2, v2);
  v6 = objc_msgSend_quadViewWithFrame_identifier_options_colorSpace_(v4, v5, @"UT25", 41, 0);
  quadView = self->_quadView;
  self->_quadView = v6;

  objc_msgSend_setUserInteractionEnabled_(self->_quadView, v8, 0);
  objc_msgSend_setOpaque_(self->_quadView, v9, 1);
  v10 = [NTKUnity2025Quad alloc];
  v12 = objc_msgSend_initWithDevice_(v10, v11, self->_device);
  quad = self->_quad;
  self->_quad = v12;

  objc_msgSend_addQuad_(self->_quadView, v14, self->_quad);
  v17 = objc_msgSend_contentView(self, v15, v16);
  objc_msgSend_addSubview_(v17, v18, self->_quadView);

  objc_msgSend_bounds(self, v19, v20);
  objc_msgSend_setFrame_(self->_quadView, v21, v22);
  v23 = self->_quadView;
  objc_msgSend_deviceFPS(self->_quad, v24, v25);
  objc_msgSend_setPreferredFramesPerSecond_(v23, v27, v26);
  v28 = self->_quadView;

  MEMORY[0x2821F9670](v28, sel_setPaused_, 1);
}

- (void)_tearDownMetalView
{
  objc_msgSend_setDelegate_(self->_quadView, a2, 0);
  objc_msgSend_removeQuad_(self->_quadView, v3, self->_quad);
  quad = self->_quad;
  self->_quad = 0;

  objc_msgSend_removeFromSuperview(self->_quadView, v5, v6);
  quadView = self->_quadView;
  self->_quadView = 0;
}

- (void)_renderSynchronouslyWithImageQueueDiscard:(BOOL)discard inGroup:(id)group
{
  discardCopy = discard;
  v8.receiver = self;
  v8.super_class = NTKUnity2025FaceView;
  groupCopy = group;
  [(NTKUnity2025FaceView *)&v8 _renderSynchronouslyWithImageQueueDiscard:discardCopy inGroup:groupCopy];
  objc_msgSend_renderSynchronouslyWithImageQueueDiscard_inGroup_(self->_quadView, v7, discardCopy, groupCopy, v8.receiver, v8.super_class);
}

- (void)_configureForEditMode:(int64_t)mode
{
  v6.receiver = self;
  v6.super_class = NTKUnity2025FaceView;
  [(NTKAnalogFaceView *)&v6 _configureForEditMode:?];
  if (mode == 10)
  {
    objc_msgSend_setState_(self->_quad, v5, 4);
  }

  else if (!mode)
  {
    objc_msgSend_setState_(self->_quad, v5, 0);
  }
}

- (id)createFaceColorPalette
{
  v2 = [NTKUnity2025ColorPalette alloc];
  v3 = objc_opt_class();
  v5 = objc_msgSend_initWithFaceClass_(v2, v4, v3);

  return v5;
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v14.receiver = self;
  v14.super_class = NTKUnity2025FaceView;
  [NTKAnalogFaceView _configureForTransitionFraction:sel__configureForTransitionFraction_fromEditMode_toEditMode_ fromEditMode:? toEditMode:?];
  v11 = *MEMORY[0x277D2BF18];
  if (mode == 1)
  {
    v12 = *MEMORY[0x277D2BF18];
  }

  else
  {
    v12 = 1.0;
  }

  if (editMode != 1)
  {
    v11 = 1.0;
  }

  fractionCopy = fraction;
  objc_msgSend_setAlpha_(self->_quadView, v9, v10, fminf(fmaxf(v12, v11), v12 + ((v11 - v12) * fractionCopy)));
}

- (void)_forceUpdateComplicationColor
{
  objc_msgSend_complicationForegroundColor(self->_quad, a2, v2);
  v14 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v7, v8, v6, v4, v5, 1.0);
  objc_msgSend_setComplicationColor_(self, v9, v14);
  objc_msgSend_setInterpolatedComplicationColor_(self, v10, v14);
  v11 = NTKColorByBrightening();
  objc_msgSend_setAlternateComplicationColor_(self, v12, v11);
  objc_msgSend_enumerateComplicationDisplayWrappersWithBlock_(self, v13, &unk_284EDCAC0);
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    v31 = v12;
    v32 = v10;
    v33 = v9;
    v34 = v8;
    v35 = v7;
    toOptionCopy = toOption;
    v20 = objc_msgSend_effectiveOptionName(option, v18, v19);
    v21 = NTKUnity2025SettingIndexFromColorwayName(v20);

    v24 = objc_msgSend_effectiveOptionName(toOptionCopy, v22, v23);

    v25 = NTKUnity2025SettingIndexFromColorwayName(v24);
    if (v21 == v25)
    {
      objc_msgSend_setState_(self->_quad, v26, 0, v13, v31, v32, v33, v34, v35);
    }

    else
    {
      objc_msgSend_setState_(self->_quad, v26, 5, v13, v31, v32, v33, v34, v35);
    }

    *&v28 = fraction;
    objc_msgSend_morphBetweenColorways_index1_index2_(self->_quad, v27, v21, v25, v28);

    objc_msgSend__forceUpdateComplicationColor(self, v29, v30);
  }
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v20.receiver = self;
  v20.super_class = NTKUnity2025FaceView;
  [(NTKUnity2025FaceView *)&v20 _applyOption:optionCopy forCustomEditMode:mode slot:slot];
  if (mode == 10)
  {
    v11 = objc_msgSend_effectiveOptionName(optionCopy, v9, v10);
    v12 = NTKUnity2025SettingIndexFromColorwayName(v11);

    v15 = objc_msgSend_state(self->_quad, v13, v14);
    objc_msgSend_morphBetweenColorways_index1_index2_(self->_quad, v16, v12, v12, 0.0);
    objc_msgSend_setState_(self->_quad, v17, v15);
    objc_msgSend__forceUpdateComplicationColor(self, v18, v19);
  }
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v11.receiver = self;
  v11.super_class = NTKUnity2025FaceView;
  [(NTKUnity2025FaceView *)&v11 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode == 10)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v10, 0, sizeof(v10));
    CGAffineTransformMakeScale(&v10, v7, v7);
    v9 = v10;
    objc_msgSend_setTransform_(self, v8, &v9);
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v22.receiver = self;
  v22.super_class = NTKUnity2025FaceView;
  [(NTKUnity2025FaceView *)&v22 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode == 10)
  {
    NTKScaleForRubberBandingFraction();
    v8 = v7;
    NTKAlphaForRubberBandingFraction();
    v10 = v9;
    v13 = objc_msgSend_rootContainerView(self, v11, v12);
    CGAffineTransformMakeScale(&v20, v8, v8);
    CGAffineTransformTranslate(&v21, &v20, 0.0, 1.0);
    objc_msgSend_setTransform_(v13, v14, &v21);

    v17 = objc_msgSend_rootContainerView(self, v15, v16);
    objc_msgSend_setAlpha_(v17, v18, v19, v10);
  }
}

- (void)_cleanupAfterEditing
{
  v8.receiver = self;
  v8.super_class = NTKUnity2025FaceView;
  [(NTKAnalogFaceView *)&v8 _cleanupAfterEditing];
  v5 = objc_msgSend_complicationContainerView(self, v3, v4);
  objc_msgSend_setAlpha_(v5, v6, v7, 1.0);
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  v18.receiver = self;
  v18.super_class = NTKUnity2025FaceView;
  [(NTKUnity2025FaceView *)&v18 _configureComplicationView:viewCopy forSlot:slot];
  if (objc_msgSend_conformsToProtocol_(viewCopy, v7, &unk_284EFC1E0))
  {
    v8 = viewCopy;
    v11 = objc_msgSend_clearColor(MEMORY[0x277D75348], v9, v10);
    objc_msgSend_setPlatterColor_(v8, v12, v11);

    if (objc_opt_respondsToSelector())
    {
      v14 = objc_msgSend_effectWithStyle_(MEMORY[0x277D75210], v13, 16);
      objc_msgSend_setPlatterVisualEffect_(v8, v15, v14);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_transitionToMonochromeWithFraction_(viewCopy, v16, v17, 1.0);
  }
}

@end