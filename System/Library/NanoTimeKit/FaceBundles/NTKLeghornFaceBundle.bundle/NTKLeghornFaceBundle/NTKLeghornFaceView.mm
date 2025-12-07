@interface NTKLeghornFaceView
+ (id)_snapshotImageForTimeStyle:(id)style hiVizStyle:(id)vizStyle colorPalette:(id)palette poiFilterEditOption:(id)option withSelectedOptions:(id)options forDevice:(id)device;
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
+ (void)_applyComplicationsLayoutForDevice:(id)device size:(CGSize)size fromHiVizStyle:(unint64_t)style toHiVizStyle:(unint64_t)vizStyle progress:(double)progress block:(id)block;
+ (void)_drawComplicationsSnapshotInContext:(CGContext *)context hiVizStyle:(unint64_t)style forDevice:(id)device;
- (BOOL)_fadesComplicationSlot:(id)slot inEditMode:(int64_t)mode;
- (BOOL)_hiVizComplicationContainsPoint:(CGPoint)point;
- (CGAffineTransform)_transformForBreathingFraction:(SEL)fraction;
- (CGAffineTransform)_transformForRubberBandingFraction:(SEL)fraction;
- (CGRect)_relativeKeylineFrameForPOIFilterView;
- (NTKLeghornFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_alphaForComplicationSlot:(id)slot inEditOption:(id)option ofEditMode:(int64_t)mode;
- (double)_currentWaypointRadius;
- (double)_keylineCornerRadiusForComplicationSlot:(id)slot;
- (id)_complicationSlotsHiddenByCurrentConfiguration;
- (id)_currentPOIFilter;
- (id)_multiPalette;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (int64_t)_keylineStyleForComplicationSlot:(id)slot;
- (unint64_t)_currentHiVizStyle;
- (unint64_t)_currentNightModePolicy;
- (unint64_t)_effectiveNightModeForEditMode:(int64_t)mode;
- (unint64_t)_hiVizComplicationStyleForDisplayMode:(unint64_t)mode;
- (void)_applyComplicationColor:(id)color withPalette:(id)palette slot:(id)slot;
- (void)_applyComplicationFont:(id)font;
- (void)_applyComplicationLayoutRuleForDevice:(id)device frame:(CGRect)frame transform:(CGAffineTransform *)transform slot:(id)slot states:(id)states;
- (void)_applyComplicationsAlphaForTransitionFraction:(double)fraction fromHiVizStyle:(unint64_t)style toHiVizStyle:(unint64_t)vizStyle liveDisplayModeFraction:(double)modeFraction fromLiveDisplayMode:(unint64_t)mode toLiveDisplayMode:(unint64_t)displayMode editMode:(int64_t)editMode;
- (void)_applyComplicationsAlphaForTransitionFraction:(double)fraction fromLiveDisplayMode:(unint64_t)mode toLiveDisplayMode:(unint64_t)displayMode;
- (void)_applyComplicationsLayoutForComplicationsEditing;
- (void)_applyComplicationsLayoutForHiVizPosition:(unint64_t)position states:(id)states;
- (void)_applyComplicationsLayoutFromHiVizStyle:(unint64_t)style toHiVizStyle:(unint64_t)vizStyle progress:(double)progress;
- (void)_applyDataMode;
- (void)_applyHiVizStyleTransitionFraction:(double)fraction fromDisplayMode:(unint64_t)mode toDisplayMode:(unint64_t)displayMode editMode:(int64_t)editMode;
- (void)_applyMultiPaletteFractions;
- (void)_applyNightModeFraction:(double)fraction;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyPaletteToComplications:(id)complications;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromColor:(id)color toColor:(id)toColor;
- (void)_applyTransitionFraction:(double)fraction fromHiVizStyle:(unint64_t)style toHiVizStyle:(unint64_t)vizStyle editMode:(int64_t)mode;
- (void)_applyTransitionFraction:(double)fraction fromNightMode:(unint64_t)mode toNightMode:(unint64_t)nightMode;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_checkTransforms;
- (void)_checkTransformsForView:(id)view;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_fixLayoutStyle;
- (void)_fixTransforms;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_prepareComplicationsForSnapshotting;
- (void)_prepareForEditing;
- (void)_reorderSwitcherSnapshotView;
- (void)_setLive:(int64_t)live;
- (void)_stopDataSource;
- (void)_tearDownPOIFilterView;
- (void)_unloadSnapshotContentViews;
- (void)_updateStatusBarColorForNightModeFraction:(double)fraction;
- (void)_updateViewColorsWithMultiPalette;
- (void)_updateViewColorsWithPalette:(id)palette;
- (void)dealloc;
- (void)poiFilterEditorView:(id)view didChangePOIFilter:(id)filter;
- (void)populateFaceViewEditOptionsFromFace:(id)face;
- (void)setDataMode:(int64_t)mode;
- (void)setNightMode:(unint64_t)mode;
@end

@implementation NTKLeghornFaceView

- (void)poiFilterEditorView:(id)view didChangePOIFilter:(id)filter
{
  filterCopy = filter;
  v18 = objc_msgSend_delegate(self, v6, v7);
  v10 = objc_msgSend_face(v18, v8, v9);
  v13 = objc_msgSend_device(self, v11, v12);
  v15 = objc_msgSend_optionWithPOIFilter_forDevice_(NTKLeghornPOIFilterEditOption, v14, filterCopy, v13);

  objc_msgSend_selectOption_forCustomEditMode_slot_(v10, v16, v15, 16, 0);
  objc_msgSend_cleanupAfterTransitionToOption_forCustomEditMode_slot_(self, v17, v15, 16, 0);
}

- (void)_tearDownPOIFilterView
{
  v4 = objc_msgSend__poiFilterView(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = v4;
    v4 = objc_msgSend__removeFaceEditViewSubview_(self, v4, v4);
    v7 = v8;
  }

  MEMORY[0x2821F96F8](v4, v7, v5, v6);
}

- (CGRect)_relativeKeylineFrameForPOIFilterView
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (NTKLeghornFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  v36[4] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v35.receiver = self;
  v35.super_class = NTKLeghornFaceView;
  v9 = [(NTKLeghornFaceView *)&v35 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    memset(v30, 0, sizeof(v30));
    sub_23BED6564(deviceCopy, v30);
    v10 = *&v31 + *&v31;
    v11 = objc_alloc_init(MEMORY[0x277D2BFC8]);
    v12 = objc_alloc(MEMORY[0x277D2C138]);
    v14 = objc_msgSend_initWithFaceView_dialDiameter_device_(v12, v13, v9, deviceCopy, v10);
    whistlerComplicationFactory = v9->_whistlerComplicationFactory;
    v9->_whistlerComplicationFactory = v14;

    v16 = v9->_whistlerComplicationFactory;
    v17 = *MEMORY[0x277D2BF10];
    v36[0] = *MEMORY[0x277D2BF08];
    v36[1] = v17;
    v18 = *MEMORY[0x277D2BEE8];
    v36[2] = *MEMORY[0x277D2BEE0];
    v36[3] = v18;
    v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v36, 4);
    objc_msgSend_registerFactory_forSlots_(v11, v21, v16, v20);

    objc_msgSend_setComplicationFactory_(v9, v22, v11);
    v23 = objc_alloc(MEMORY[0x277D2C080]);
    v25 = objc_msgSend_initWithDevice_(v23, v24, deviceCopy);
    complicationsFilterProvider = v9->_complicationsFilterProvider;
    v9->_complicationsFilterProvider = v25;

    v9->_statusIndicatorPolicy = objc_msgSend_statusIndicatorMove(NTKFoghornPreferences, v27, v28) ^ 1;
  }

  return v9;
}

- (void)dealloc
{
  objc_msgSend__setLive_(self, a2, 0);
  v3.receiver = self;
  v3.super_class = NTKLeghornFaceView;
  [(NTKLeghornFaceView *)&v3 dealloc];
}

- (void)setDataMode:(int64_t)mode
{
  v12.receiver = self;
  v12.super_class = NTKLeghornFaceView;
  dataMode = [(NTKLeghornFaceView *)&v12 dataMode];
  v8 = dataMode;
  if (mode == 1 && dataMode == 3)
  {
    objc_msgSend__updateAveragePixelLuminance(self, v6, v7);
  }

  v11.receiver = self;
  v11.super_class = NTKLeghornFaceView;
  [(NTKLeghornFaceView *)&v11 setDataMode:mode];
  if (mode == 1 && v8 != 1)
  {
    objc_msgSend__refreshBezelFromDataSource(self, v9, v10);
  }
}

- (void)_applyDataMode
{
  v7.receiver = self;
  v7.super_class = NTKLeghornFaceView;
  [(NTKLeghornFaceView *)&v7 _applyDataMode];
  v5 = objc_msgSend_dataMode(self, v3, v4);
  objc_msgSend__setLive_(self, v6, v5);
}

- (void)_loadSnapshotContentViews
{
  v81.receiver = self;
  v81.super_class = NTKLeghornFaceView;
  [(NTKLeghornFaceView *)&v81 _loadSnapshotContentViews];
  v3 = [NTKCircularBezelView alloc];
  objc_msgSend_bounds(self, v4, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v16 = objc_msgSend_device(self, v14, v15);
  v18 = objc_msgSend_initWithFrame_forDevice_(v3, v17, v16, v7, v9, v11, v13);
  bezelView = self->_bezelView;
  self->_bezelView = v18;

  v22 = objc_msgSend_contentView(self, v20, v21);
  objc_msgSend_addSubview_(v22, v23, self->_bezelView);

  v24 = [NTKLeghornTimeView alloc];
  objc_msgSend_bounds(self, v25, v26);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v37 = objc_msgSend_device(self, v35, v36);
  v39 = objc_msgSend_initWithFrame_forDevice_(v24, v38, v37, v28, v30, v32, v34);

  objc_msgSend_setTimeView_(self, v40, v39);
  v43 = objc_msgSend_timeView(self, v41, v42);
  objc_msgSend_addSubview_(self, v44, v43);

  v45 = objc_alloc(MEMORY[0x277D2C0E0]);
  objc_msgSend_bounds(self, v46, v47);
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v58 = objc_msgSend_device(self, v56, v57);
  v60 = objc_msgSend_initWithFrame_forDeviceCornerRadius_(v45, v59, v58, v49, v51, v53, v55);
  cornerView = self->_cornerView;
  self->_cornerView = v60;

  v64 = objc_msgSend_contentView(self, v62, v63);
  objc_msgSend_addSubview_(v64, v65, self->_cornerView);

  v68 = objc_msgSend_rootContainerView(self, v66, v67);
  objc_msgSend_bringSubviewToFront_(self, v69, v68);

  v72 = objc_msgSend_rootContainerView(self, v70, v71);
  v75 = objc_msgSend_complicationContainerView(self, v73, v74);
  objc_msgSend_bringSubviewToFront_(v72, v76, v75);

  v79 = objc_msgSend_timeView(self, v77, v78);
  objc_msgSend_bringSubviewToFront_(self, v80, v79);
}

- (void)_unloadSnapshotContentViews
{
  v14.receiver = self;
  v14.super_class = NTKLeghornFaceView;
  [(NTKLeghornFaceView *)&v14 _unloadSnapshotContentViews];
  bezelView = self->_bezelView;
  if (bezelView)
  {
    objc_msgSend_removeFromSuperview(bezelView, v3, v4);
    v6 = self->_bezelView;
    self->_bezelView = 0;
  }

  v7 = objc_msgSend_timeView(self, v3, v4);

  if (v7)
  {
    v10 = objc_msgSend_timeView(self, v8, v9);
    objc_msgSend_removeFromSuperview(v10, v11, v12);

    objc_msgSend_setTimeView_(self, v13, 0);
  }
}

- (void)_prepareForEditing
{
  v7.receiver = self;
  v7.super_class = NTKLeghornFaceView;
  [(NTKLeghornFaceView *)&v7 _prepareForEditing];
  objc_msgSend__setupPOIFilterView(self, v3, v4);
  objc_msgSend__updateFromPreferences(self, v5, v6);
}

- (void)_checkTransformsForView:(id)view
{
  v16 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v6 = viewCopy;
  v7 = 0;
  memset(&v14[1], 0, sizeof(CGAffineTransformComponents));
  if (viewCopy)
  {
    objc_msgSend_transform(viewCopy, v4, v5);
    v7 = 0;
  }

  *&v14[0].horizontalShear = v7;
  v14[0].translation = v7;
  v14[0].scale = v7;
  transform = v14[1];
  v8 = CGAffineTransformDecompose(v14, &transform);
  if (v14[0].scale.width != 1.0 || v14[0].scale.height != 1.0)
  {
    v11 = NTKFoghornFaceBundleLogObject(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      LODWORD(transform.a) = 138412802;
      *(&transform.a + 4) = v12;
      WORD2(transform.b) = 2048;
      *(&transform.b + 6) = v14[0].scale.width;
      HIWORD(transform.c) = 2048;
      transform.d = v14[0].scale.height;
      v13 = v12;
      _os_log_error_impl(&dword_23BEB1000, v11, OS_LOG_TYPE_ERROR, "%@.transform bad scale = %f, %f", &transform, 0x20u);
    }
  }
}

- (void)_checkTransforms
{
  objc_msgSend__checkTransformsForView_(self, a2, self);
  objc_msgSend__checkTransformsForView_(self, v3, self->_bezelView);
  v7 = objc_msgSend_timeView(self, v4, v5);
  objc_msgSend__checkTransformsForView_(self, v6, v7);
}

- (void)_fixTransforms
{
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  v12 = *MEMORY[0x277CBF2C0];
  v11 = v12;
  v13 = v10;
  v14 = *(MEMORY[0x277CBF2C0] + 32);
  v9 = v14;
  objc_msgSend_setTransform_(self, a2, &v12);
  bezelView = self->_bezelView;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend_setTransform_(bezelView, v4, &v12);
  v7 = objc_msgSend_timeView(self, v5, v6);
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend_setTransform_(v7, v8, &v12);
}

- (void)_fixLayoutStyle
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend__currentHiVizStyle(self, a2, v2);
  v7 = objc_msgSend_hiVizComplicationStyle(self->_bezelView, v5, v6);
  if (v7 != v4)
  {
    v9 = v7;
    v10 = NTKFoghornFaceBundleLogObject(v7, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NTKLeghornHiVizComplicationStyleString(v9);
      v12 = NTKLeghornHiVizComplicationStyleString(v4);
      v14 = 136315650;
      v15 = "[NTKLeghornFaceView _fixLayoutStyle]";
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_23BEB1000, v10, OS_LOG_TYPE_DEFAULT, "%s: force resetting STYLE from %@ to %@", &v14, 0x20u);
    }
  }

  objc_msgSend__applyComplicationsLayoutFromHiVizStyle_toHiVizStyle_progress_(self, v8, v4, v4, 1.0);
  objc_msgSend__applyComplicationsAlphaForHiVizStyle_editMode_(self, v13, v4, 0);
}

- (void)_cleanupAfterEditing
{
  v11.receiver = self;
  v11.super_class = NTKLeghornFaceView;
  [(NTKLeghornFaceView *)&v11 _cleanupAfterEditing];
  objc_msgSend__tearDownPOIFilterView(self, v3, v4);
  objc_msgSend__checkTransforms(self, v5, v6);
  objc_msgSend__fixTransforms(self, v7, v8);
  objc_msgSend__fixLayoutStyle(self, v9, v10);
}

- (void)setNightMode:(unint64_t)mode
{
  self->_nightMode = mode;
  v3 = 0.0;
  if (mode == 1)
  {
    v3 = 1.0;
  }

  self->_nightModeFraction = v3;
  MEMORY[0x2821F9670](self, sel__applyMultiPaletteFractions, mode);
}

- (void)_applyNightModeFraction:(double)fraction
{
  if (self->_nightModeFraction != fraction)
  {
    self->_nightModeFraction = fraction;
    if (fraction == 0.0 || fraction == 1.0)
    {
      objc_msgSend__updateAveragePixelLuminance(self, a2, v3);
    }

    MEMORY[0x2821F9670](self, sel__applyMultiPaletteFractions, v3);
  }
}

- (void)_applyTransitionFraction:(double)fraction fromNightMode:(unint64_t)mode toNightMode:(unint64_t)nightMode
{
  if (mode != 2 && nightMode != 2)
  {
    objc_msgSend__nightModeActiveFor_(self, a2, mode);
    objc_msgSend__nightModeActiveFor_(self, v7, nightMode);

    MEMORY[0x2821F9670](self, sel__applyNightModeFraction_, v8);
  }
}

- (void)_updateStatusBarColorForNightModeFraction:(double)fraction
{
  if (fraction <= 0.5)
  {
    fractionCopy = fabs(fraction);
    if (fractionCopy >= 0.00000011920929)
    {
      v6 = objc_msgSend_blackColor(MEMORY[0x277D75348], a2, v3);
      v18 = objc_msgSend_colorWithAlphaComponent_(v6, v16, v17, fraction + fraction);
      statusBarOverrideColor = self->_statusBarOverrideColor;
      self->_statusBarOverrideColor = v18;
    }

    else
    {
      v6 = self->_statusBarOverrideColor;
      self->_statusBarOverrideColor = 0;
    }
  }

  else
  {
    v6 = objc_msgSend_leghornFaceColorPalette(self, a2, v3);
    v9 = objc_msgSend_nightModeStatusBarColor(v6, v7, v8);
    v12 = objc_msgSend_blackColor(MEMORY[0x277D75348], v10, v11);
    v13 = MEMORY[0x23EEC10C0](v12, v9, fraction + -0.5 + fraction + -0.5);
    v14 = self->_statusBarOverrideColor;
    self->_statusBarOverrideColor = v13;

    fractionCopy = fraction;
  }

  v23 = objc_msgSend_delegate(self, v20, v21);
  objc_msgSend_faceViewDidChangeStatusBarOverrideColor_(v23, v22, fmin(fractionCopy, fabs(fraction + -1.0)) < 0.00000011920929);
}

- (void)_applyComplicationsLayoutForComplicationsEditing
{
  v5 = objc_msgSend__currentHiVizStyle(self, a2, v2);

  objc_msgSend__applyComplicationsLayoutForHiVizPosition_states_(self, v4, v5, &unk_284EB72B8);
}

- (void)_applyComplicationLayoutRuleForDevice:(id)device frame:(CGRect)frame transform:(CGAffineTransform *)transform slot:(id)slot states:(id)states
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v48 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  slotCopy = slot;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = states;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v43, v47, 16);
  if (v18)
  {
    v21 = v18;
    v22 = *v44;
    v39 = *(MEMORY[0x277D768C8] + 8);
    v40 = *MEMORY[0x277D768C8];
    v23 = *(MEMORY[0x277D768C8] + 16);
    v24 = *(MEMORY[0x277D768C8] + 24);
    do
    {
      v25 = 0;
      do
      {
        if (*v44 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v26 = objc_msgSend_integerValue(*(*(&v43 + 1) + 8 * v25), v19, v20);
        v27 = objc_opt_class();
        if (objc_msgSend__isHiVizComplicationSlot_(v27, v28, slotCopy))
        {
          CDGraphicExtraLargeComplicationContentDiameter();
          v30 = v29;
          v49.origin.x = x;
          v49.origin.y = y;
          v49.size.width = width;
          v49.size.height = height;
          MidX = CGRectGetMidX(v49);
          v50.origin.x = x;
          v50.origin.y = y;
          v50.size.width = width;
          v50.size.height = height;
          MidY = CGRectGetMidY(v50);
          v33 = *&transform->c;
          v42[0] = *&transform->a;
          v42[1] = v33;
          v42[2] = *&transform->tx;
          v35 = objc_msgSend_layoutRuleForDevice_withReferenceFrame_horizontalLayout_verticalLayout_keylinePadding_clip_contentTransform_(MEMORY[0x277D2BFC0], v34, deviceCopy, 3, 3, 0, v42, MidX - v30 * 0.5, MidY - v30 * 0.5, v30, v30, v40, v39, v23, v24);
          v37 = objc_msgSend_complicationLayoutforSlot_(self, v36, slotCopy);
          objc_msgSend_setDefaultLayoutRule_forState_(v37, v38, v35, v26);
        }

        ++v25;
      }

      while (v21 != v25);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v43, v47, 16);
    }

    while (v21);
  }
}

- (BOOL)_hiVizComplicationContainsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v7 = objc_msgSend__currentHiVizStyle(self, a2, v3);
  if (v7)
  {
    v10 = v7;
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v11 = objc_msgSend_device(self, v8, v9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    sub_23BED6564(v11, &v20);

    objc_msgSend_bounds(self, v12, v13);
    v15 = v14;
    v17 = v16;
    v18 = v22;
    v26 = 0.0;
    v27 = 0.0;
    v25 = 0.0;
    NTKCircularBezelViewHiVizComplicationCenterAndScaleFromHiVizStyleToHiVizStyle(v10, v10, &v26, &v25, *(&v21 + 1), *&v22, 1.0);
    LOBYTE(v7) = sqrt((v17 * 0.5 - v27 - y) * (v17 * 0.5 - v27 - y) + (v15 * 0.5 + v26 - x) * (v15 * 0.5 + v26 - x)) <= *(&v18 + 1) * v25;
  }

  return v7;
}

+ (void)_applyComplicationsLayoutForDevice:(id)device size:(CGSize)size fromHiVizStyle:(unint64_t)style toHiVizStyle:(unint64_t)vizStyle progress:(double)progress block:(id)block
{
  height = size.height;
  width = size.width;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  memset(v24, 0, sizeof(v24));
  blockCopy = block;
  sub_23BED6564(device, v24);
  v16 = v26;
  v15 = *&v27;
  v23.a = 0.0;
  v23.b = 0.0;
  v22.a = 0.0;
  NTKCircularBezelViewHiVizComplicationCenterAndScaleFromHiVizStyleToHiVizStyle(style, vizStyle, &v23.a, &v22.a, *(&v25 + 1), *&v26, progress);
  v17 = width * 0.5 + v23.a - *(&v16 + 1) * v22.a;
  v18 = height * 0.5 - v23.b - *(&v16 + 1) * v22.a;
  v19 = *(&v16 + 1) * v22.a + *(&v16 + 1) * v22.a;
  memset(&v23, 0, sizeof(v23));
  CGAffineTransformMakeScale(&v23, v15 * v22.a, v15 * v22.a);
  v20 = *MEMORY[0x277D2BEF0];
  v21 = blockCopy[2];
  v22 = v23;
  v21(blockCopy, v20, &v22, v17, v18, v19, v19);
}

- (void)_applyComplicationsLayoutFromHiVizStyle:(unint64_t)style toHiVizStyle:(unint64_t)vizStyle progress:(double)progress
{
  v9 = objc_msgSend_device(self, a2, style);
  objc_msgSend_bounds(self, v10, v11);
  v13 = v12;
  v15 = v14;
  v16 = objc_opt_class();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23BED3BAC;
  v19[3] = &unk_278BA1360;
  v19[4] = self;
  v20 = v9;
  v21 = &unk_284EB72D0;
  v17 = v9;
  objc_msgSend__applyComplicationsLayoutForDevice_size_fromHiVizStyle_toHiVizStyle_progress_block_(v16, v18, v17, style, vizStyle, v19, v13, v15, progress);
}

- (void)_applyComplicationsLayoutForHiVizPosition:(unint64_t)position states:(id)states
{
  statesCopy = states;
  v9 = objc_msgSend_device(self, v7, v8);
  objc_msgSend_bounds(self, v10, v11);
  v13 = v12;
  v15 = v14;
  v16 = objc_opt_class();
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_23BED3D04;
  v20[3] = &unk_278BA1360;
  v20[4] = self;
  v21 = v9;
  v22 = statesCopy;
  v17 = statesCopy;
  v18 = v9;
  objc_msgSend__applyComplicationsLayoutForDevice_size_fromHiVizStyle_toHiVizStyle_progress_block_(v16, v19, v18, position, position, v20, v13, v15, 1.0);
}

- (void)_loadLayoutRules
{
  v7.receiver = self;
  v7.super_class = NTKLeghornFaceView;
  [(NTKLeghornFaceView *)&v7 _loadLayoutRules];
  v5 = objc_msgSend__currentHiVizStyle(self, v3, v4);
  objc_msgSend__applyComplicationsLayoutForHiVizPosition_states_(self, v6, v5, &unk_284EB72E8);
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  v6.receiver = self;
  v6.super_class = NTKLeghornFaceView;
  return [(NTKLeghornFaceView *)&v6 _newLegacyViewForComplication:complication family:family slot:slot];
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  v13.receiver = self;
  v13.super_class = NTKLeghornFaceView;
  slotCopy = slot;
  viewCopy = view;
  [(NTKLeghornFaceView *)&v13 _configureComplicationView:viewCopy forSlot:slotCopy];
  objc_msgSend__applyComplicationFont_(self, v8, viewCopy, v13.receiver, v13.super_class);
  v11 = objc_msgSend__multiPalette(self, v9, v10);
  objc_msgSend__applyComplicationColor_withPalette_slot_(self, v12, viewCopy, v11, slotCopy);
}

- (int64_t)_keylineStyleForComplicationSlot:(id)slot
{
  slotCopy = slot;
  v5 = objc_opt_class();
  if (objc_msgSend__isHiVizComplicationSlot_(v5, v6, slotCopy))
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NTKLeghornFaceView;
    v7 = [(NTKLeghornFaceView *)&v9 _keylineStyleForComplicationSlot:slotCopy];
  }

  return v7;
}

- (double)_keylineCornerRadiusForComplicationSlot:(id)slot
{
  slotCopy = slot;
  v5 = objc_opt_class();
  if (objc_msgSend__isHiVizComplicationSlot_(v5, v6, slotCopy))
  {
    v9 = MEMORY[0x277D2C078];
    v10 = objc_msgSend_device(self, v7, v8);
    objc_msgSend_cornerRadiusForComplicationFamily_forDevice_(v9, v11, 1, v10);
    v13 = v12;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = NTKLeghornFaceView;
    [(NTKLeghornFaceView *)&v16 _keylineCornerRadiusForComplicationSlot:slotCopy];
    v13 = v14;
  }

  return v13;
}

- (void)populateFaceViewEditOptionsFromFace:(id)face
{
  objc_storeStrong(&self->_face, face);
  faceCopy = face;
  v6.receiver = self;
  v6.super_class = NTKLeghornFaceView;
  [(NTKLeghornFaceView *)&v6 populateFaceViewEditOptionsFromFace:faceCopy];
}

- (void)_applyComplicationFont:(id)font
{
  fontCopy = font;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_display(fontCopy, v4, v5);
    objc_msgSend__applyComplicationFont_(self, v7, v6);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_setFontStyle_(fontCopy, v8, 3);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = MEMORY[0x277CBBB08];
        v10 = fontCopy;
        v13 = objc_msgSend_font(v10, v11, v12);
        objc_msgSend_pointSize(v13, v14, v15);
        v18 = objc_msgSend_foghornSimpleComplicationFontOfSize_(v9, v16, v17);
        v21 = objc_msgSend_CLKFontWithAlternativePunctuation(v18, v19, v20);
        objc_msgSend_setFont_(v10, v22, v21);
      }
    }
  }
}

- (void)_applyComplicationColor:(id)color withPalette:(id)palette slot:(id)slot
{
  colorCopy = color;
  paletteCopy = palette;
  slotCopy = slot;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = objc_msgSend_display(colorCopy, v10, v11);
    objc_msgSend__applyComplicationColor_withPalette_slot_(self, v13, v12, paletteCopy, slotCopy);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = objc_msgSend_complicationAccentColor(paletteCopy, v14, v15);
      objc_msgSend_setAccentColor_(self->_complicationsFilterProvider, v17, v16);

      v20 = objc_msgSend_complicationNonAccentColor(paletteCopy, v18, v19);
      objc_msgSend_setNonAccentColor_(self->_complicationsFilterProvider, v21, v20);

      v12 = colorCopy;
      if (objc_msgSend_conformsToProtocol_(v12, v22, &unk_28AA14B10))
      {
        v25 = v12;
        v28 = objc_msgSend_isFullScreen(paletteCopy, v26, v27);
        objc_msgSend_doubleValue(v28, v29, v30);
        v32 = v31;

        if (v32 <= 0.5)
        {
          nightModeFraction = self->_nightModeFraction;
          v51 = fmin(nightModeFraction / 0.4, 1.0);
          v52 = fmax(nightModeFraction + -0.4, 0.0) / 0.6;
          v37 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v33, v34, 0.188235294, 0.0470588235, 0.0352941176, 1.0);
          v55 = objc_msgSend_clearColor(MEMORY[0x277D75348], v53, v54);
          v56 = MEMORY[0x23EEC10C0](v55, v37, v52);

          objc_msgSend_setTintedFraction_(v25, v57, v58, v51);
          objc_msgSend_setTintedPlatterColor_(v25, v59, v56);
        }

        else
        {
          objc_msgSend_setTintedFraction_(v25, v33, v34, 1.0);
          v37 = objc_msgSend_clearColor(MEMORY[0x277D75348], v35, v36);
          objc_msgSend_setTintedPlatterColor_(v25, v38, v37);
        }
      }

      v60 = objc_msgSend_isNightModeF(paletteCopy, v23, v24);
      objc_msgSend_floatValue(v60, v61, v62);
      v64 = v63;

      v67 = objc_msgSend_isMulticolorF(paletteCopy, v65, v66);
      objc_msgSend_floatValue(v67, v68, v69);
      v71 = 1.0 - v70;

      v74 = v64;
      if (v71 > v64)
      {
        v74 = v71;
      }

      if (v74 == 1.0)
      {
        objc_msgSend_updateMonochromeColor(v12, v72, v73);
      }

      else
      {
        objc_msgSend_transitionToMonochromeWithFraction_(v12, v72, v73);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v39 = colorCopy;
        v12 = objc_msgSend_simpleTextComplicationColor(paletteCopy, v40, v41);
        v44 = objc_msgSend_label(v39, v42, v43);

        objc_msgSend_setTextColor_(v44, v45, v12);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_19;
        }

        v46 = colorCopy;
        v12 = objc_msgSend_simpleTextComplicationColor(paletteCopy, v47, v48);
        objc_msgSend_setTextColor_(v46, v49, v12);
      }
    }
  }

LABEL_19:
}

- (void)_applyPaletteToComplications:(id)complications
{
  complicationsCopy = complications;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23BED4578;
  v7[3] = &unk_278BA1388;
  v7[4] = self;
  v8 = complicationsCopy;
  v5 = complicationsCopy;
  objc_msgSend_enumerateComplicationDisplayWrappersWithBlock_(self, v6, v7);
}

- (void)_updateViewColorsWithMultiPalette
{
  v5 = objc_msgSend__multiPalette(self, a2, v2);
  objc_msgSend__updateViewColorsWithPalette_(self, v4, v5);
}

- (void)_updateViewColorsWithPalette:(id)palette
{
  paletteCopy = palette;
  objc_msgSend__applyPaletteToComplications_(self, v5, paletteCopy);
  objc_msgSend_activate(MEMORY[0x277CD9FF0], v6, v7);
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v8, v9);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v10, 1);
  v21 = objc_msgSend_timeView(self, v11, v12);
  objc_msgSend_setPalette_(v21, v13, paletteCopy);
  objc_msgSend_setNeedsDisplay(v21, v14, v15);
  objc_msgSend_setColorPalette_(self->_bezelView, v16, paletteCopy);

  objc_msgSend__updateStatusBarColorForNightModeFraction_(self, v17, v18, self->_nightModeFraction);
  objc_msgSend_commit(MEMORY[0x277CD9FF0], v19, v20);
}

- (void)_applyTransitionFraction:(double)fraction fromColor:(id)color toColor:(id)toColor
{
  v10 = objc_msgSend_interpolatedColorPalette(self, a2, color, toColor);
  objc_msgSend_setTransitionFraction_(v10, v7, v8, fraction);
  objc_msgSend__updateViewColorsWithPalette_(self, v9, v10);
}

- (void)_applyMultiPaletteFractions
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, v2, self->_tritiumFraction);
  v16[0] = v4;
  v7 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v5, v6, self->_nightModeFraction);
  v16[1] = v7;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v16, 2);

  v12 = objc_msgSend__multiPalette(self, v10, v11);
  objc_msgSend_setTransitionFractions_(v12, v13, v9);

  objc_msgSend__updateViewColorsWithMultiPalette(self, v14, v15);
}

- (void)_applyComplicationsAlphaForTransitionFraction:(double)fraction fromHiVizStyle:(unint64_t)style toHiVizStyle:(unint64_t)vizStyle liveDisplayModeFraction:(double)modeFraction fromLiveDisplayMode:(unint64_t)mode toLiveDisplayMode:(unint64_t)displayMode editMode:(int64_t)editMode
{
  if ((editMode - 14) >= 3)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = *MEMORY[0x277D2BF18];
  }

  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;
  CLKInterpolateBetweenFloatsClipped();
  v14 = v13;
  CLKInterpolateBetweenFloatsClipped();
  v16 = v15;
  CLKInterpolateBetweenFloatsClipped();
  v19 = v18 < 1.0;
  v20 = v12 * v18;
  v21 = v14 * v18;
  v22 = v16 * v18;
  if (v18 >= 1.0)
  {
    v21 = v14;
  }

  v25[0] = MEMORY[0x277D85DD0];
  v23 = v10 * v18;
  if (!v19)
  {
    v22 = v16;
    v20 = v12;
  }

  v25[1] = 3221225472;
  v25[2] = sub_23BED4994;
  v25[3] = &unk_278BA13B0;
  v25[4] = self;
  *&v25[5] = v20;
  *&v25[6] = v21;
  if (!v19)
  {
    v23 = v10;
  }

  *&v25[7] = v22;
  *&v25[8] = v23;
  objc_msgSend_enumerateComplicationDisplayWrappersWithBlock_(self, v17, v25, *&modeFraction);
}

- (void)_applyComplicationsAlphaForTransitionFraction:(double)fraction fromLiveDisplayMode:(unint64_t)mode toLiveDisplayMode:(unint64_t)displayMode
{
  v6 = objc_msgSend__currentHiVizStyle(self, a2, mode);

  MEMORY[0x2821F9670](self, sel__applyComplicationsAlphaForTransitionFraction_fromHiVizStyle_toHiVizStyle_liveDisplayModeFraction_fromLiveDisplayMode_toLiveDisplayMode_editMode_, v6);
}

- (unint64_t)_currentHiVizStyle
{
  v2 = objc_msgSend_optionForCustomEditMode_slot_(self, a2, 14, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_msgSend_hiVizStyle(v2, v3, v4);
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

- (unint64_t)_currentNightModePolicy
{
  v2 = objc_msgSend_optionForCustomEditMode_slot_(self, a2, 18, 0);
  objc_opt_class();
  v5 = 0;
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_msgSend_nightMode(v2, v3, v4);
  }

  return v5;
}

- (id)_currentPOIFilter
{
  v2 = objc_msgSend_optionForCustomEditMode_slot_(self, a2, 16, 0);
  objc_opt_class();
  v5 = 0;
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_msgSend_poiFilter(v2, v3, v4);
  }

  return v5;
}

- (double)_currentWaypointRadius
{
  objc_msgSend_waypointRadius(self->_face, a2, v2);
  if (result < 50.0)
  {

    objc_msgSend_defaultWaypointRadius(NTKLeghornFace, v3, v4);
  }

  return result;
}

- (void)_applyTransitionFraction:(double)fraction fromHiVizStyle:(unint64_t)style toHiVizStyle:(unint64_t)vizStyle editMode:(int64_t)mode
{
  objc_msgSend_setFromHiVizComplicationStyle_toHiVizComplicationStyle_fraction_(self->_bezelView, a2, style);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v13 = objc_msgSend_device(self, v11, v12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  sub_23BED6564(v13, &v29);

  objc_msgSend_bounds(self, v14, v15);
  v17 = v16;
  v19 = v18;
  v20 = v31;
  v35 = 0.0;
  v36 = 0.0;
  v34 = 0.0;
  NTKCircularBezelViewHiVizComplicationCenterAndScaleFromHiVizStyleToHiVizStyle(style, vizStyle, &v35, &v34, *(&v30 + 1), *&v31, fraction);
  v21 = v17 * 0.5 + v35 - *(&v20 + 1) * v34;
  v22 = v19 * 0.5 - v36 - *(&v20 + 1) * v34;
  v23 = *(&v20 + 1) * v34 + *(&v20 + 1) * v34;
  v25 = objc_msgSend_normalComplicationDisplayWrapperForSlot_(self, v24, *MEMORY[0x277D2BEF0]);
  objc_msgSend_setFrame_(v25, v26, v27, v21, v22, v23, v23);
  if (fabs(fraction) < 2.22044605e-16 || fabs(fraction + -1.0) < 2.22044605e-16)
  {
    objc_msgSend__applyComplicationsLayoutFromHiVizStyle_toHiVizStyle_progress_(self, v28, style, vizStyle, fraction);
  }

  objc_msgSend__applyComplicationsAlphaForTransitionFraction_fromHiVizStyle_toHiVizStyle_editMode_(self, v28, style, vizStyle, mode, fraction);
}

- (unint64_t)_hiVizComplicationStyleForDisplayMode:(unint64_t)mode
{
  if (mode != 3 && mode)
  {
    return 0;
  }

  else
  {
    return objc_msgSend__currentHiVizStyle(self, a2, mode);
  }
}

- (void)_applyHiVizStyleTransitionFraction:(double)fraction fromDisplayMode:(unint64_t)mode toDisplayMode:(unint64_t)displayMode editMode:(int64_t)editMode
{
  v10 = objc_msgSend__hiVizComplicationStyleForDisplayMode_(self, a2, mode);
  v13 = objc_msgSend__hiVizComplicationStyleForDisplayMode_(self, v11, displayMode);

  objc_msgSend__applyTransitionFraction_fromHiVizStyle_toHiVizStyle_editMode_(self, v12, v10, v13, editMode, fraction);
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v53 = *MEMORY[0x277D85DE8];
  optionCopy = option;
  toOptionCopy = toOption;
  v14 = NTKFoghornFaceBundleLogObject(toOptionCopy, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v41 = objc_msgSend_localizedName(optionCopy, v15, v16);
    v44 = objc_msgSend_localizedName(toOptionCopy, v42, v43);
    v45 = 136315906;
    v46 = "[NTKLeghornFaceView _applyTransitionFraction:fromOption:toOption:forCustomEditMode:slot:]";
    v47 = 2048;
    fractionCopy = fraction;
    v49 = 2112;
    v50 = v41;
    v51 = 2112;
    v52 = v44;
    _os_log_debug_impl(&dword_23BEB1000, v14, OS_LOG_TYPE_DEBUG, "%s: fraction = %f fromOption = %@ toOption = %@", &v45, 0x2Au);
  }

  if (mode > 14)
  {
    if (mode == 18)
    {
      v36 = objc_msgSend_nightMode(optionCopy, v17, v18);
      v39 = objc_msgSend_nightMode(toOptionCopy, v37, v38);
      objc_msgSend__applyTransitionFraction_fromNightMode_toNightMode_(self, v40, v36, v39, fraction);
    }

    else if (mode == 15)
    {
      v27 = objc_msgSend_timeView(self, v17, v18);
      v28 = toOptionCopy;
      v31 = objc_msgSend_timeStyle(optionCopy, v29, v30);
      v34 = objc_msgSend_timeStyle(v28, v32, v33);

      objc_msgSend_applyTransitionFraction_fromStyle_toStyle_(v27, v35, v31, v34, fraction);
    }
  }

  else if (mode == 10)
  {
    objc_msgSend__applyTransitionFraction_fromColor_toColor_(self, v17, optionCopy, toOptionCopy, fraction);
  }

  else if (mode == 14)
  {
    v19 = toOptionCopy;
    v22 = objc_msgSend_hiVizStyle(optionCopy, v20, v21);
    v25 = objc_msgSend_hiVizStyle(v19, v23, v24);

    objc_msgSend__applyTransitionFraction_fromHiVizStyle_toHiVizStyle_editMode_(self, v26, v22, v25, 14, fraction);
  }
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v52 = *MEMORY[0x277D85DE8];
  optionCopy = option;
  v9 = NTKFoghornFaceBundleLogObject(optionCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v38 = objc_msgSend_dataMode(self, v10, v11);
    v41 = objc_msgSend_localizedName(optionCopy, v39, v40);
    v42 = 136316162;
    v43 = "[NTKLeghornFaceView _applyOption:forCustomEditMode:slot:]";
    v44 = 2048;
    selfCopy = self;
    v46 = 2048;
    v47 = v38;
    v48 = 2112;
    v49 = v41;
    v50 = 1024;
    modeCopy = mode;
    _os_log_debug_impl(&dword_23BEB1000, v9, OS_LOG_TYPE_DEBUG, "%s(%p): dataMode = %ld option = %@ mode = %u", &v42, 0x30u);
  }

  if (mode <= 14)
  {
    if (mode == 10)
    {
      v32 = objc_msgSend_interpolatedColorPalette(self, v12, v13);
      objc_msgSend_setTransitionFraction_(v32, v33, v34, 1.0);

      multiPalette = self->_multiPalette;
      self->_multiPalette = 0;

      objc_msgSend__updateViewColorsWithMultiPalette(self, v36, v37);
    }

    else if (mode == 14)
    {
      v19 = objc_msgSend_hiVizStyle(optionCopy, v12, v13);
      objc_msgSend__applyTransitionFraction_fromHiVizStyle_toHiVizStyle_editMode_(self, v20, v19, v19, 14, 1.0);
    }
  }

  else
  {
    switch(mode)
    {
      case 18:
        v21 = objc_msgSend_nightMode(optionCopy, v12, v13);
        objc_msgSend_setNightMode_(self, v22, v21);
        v25 = objc_msgSend__currentHiVizStyle(self, v23, v24);
        objc_msgSend__applyComplicationsAlphaForHiVizStyle_editMode_(self, v26, v25, 18);
        break;
      case 16:
        v27 = objc_msgSend_poiFilter(optionCopy, v12, v13);
        v30 = objc_msgSend__poiFilterView(self, v28, v29);
        objc_msgSend_setPoiFilter_(v30, v31, v27);

        break;
      case 15:
        v14 = objc_msgSend_timeView(self, v12, v13);
        v17 = objc_msgSend_timeStyle(optionCopy, v15, v16);
        objc_msgSend_setTimeStyle_(v14, v18, v17);

        break;
    }
  }
}

- (unint64_t)_effectiveNightModeForEditMode:(int64_t)mode
{
  result = 0;
  if (mode != 1 && mode != 10)
  {
    return objc_msgSend__nightModeActive(self, a2, mode);
  }

  return result;
}

- (double)_alphaForComplicationSlot:(id)slot inEditOption:(id)option ofEditMode:(int64_t)mode
{
  slotCopy = slot;
  v10 = objc_msgSend__currentHiVizStyle(self, v8, v9);
  v11 = objc_opt_class();
  if (objc_msgSend__isHiVizComplicationSlot_(v11, v12, slotCopy))
  {
    v13 = *MEMORY[0x277D2BF18];
    if ((mode - 15) >= 2)
    {
      v13 = 1.0;
    }

    v14 = v10 == 0;
LABEL_13:
    if (v14)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = v13;
    }

    goto LABEL_16;
  }

  v15 = objc_opt_class();
  if (objc_msgSend__isLowerRightComplicationSlot_(v15, v16, slotCopy))
  {
    v13 = *MEMORY[0x277D2BF18];
    if ((mode - 14) >= 3)
    {
      v13 = 1.0;
    }

    v14 = v10 == 2;
    goto LABEL_13;
  }

  v17 = objc_opt_class();
  isLowerLeftComplicationSlot = objc_msgSend__isLowerLeftComplicationSlot_(v17, v18, slotCopy);
  v13 = *MEMORY[0x277D2BF18];
  if (isLowerLeftComplicationSlot)
  {
    if ((mode - 14) >= 3)
    {
      v13 = 1.0;
    }

    v14 = v10 == 1;
    goto LABEL_13;
  }

  if ((mode - 14) >= 3)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = *MEMORY[0x277D2BF18];
  }

LABEL_16:

  return v20;
}

- (BOOL)_fadesComplicationSlot:(id)slot inEditMode:(int64_t)mode
{
  if (mode == 15)
  {
    return 1;
  }

  if (mode != 14)
  {
    return 0;
  }

  slotCopy = slot;
  v5 = objc_opt_class();
  isHiVizComplicationSlot = objc_msgSend__isHiVizComplicationSlot_(v5, v6, slotCopy);

  return isHiVizComplicationSlot ^ 1;
}

- (id)_complicationSlotsHiddenByCurrentConfiguration
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend__currentHiVizStyle(self, a2, v2);
  if (v4 == 2)
  {
    v6 = MEMORY[0x277CBEB98];
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, &v10, 1, *MEMORY[0x277D2BEE8], v11, v12[0]);
  }

  else if (v4 == 1)
  {
    v6 = MEMORY[0x277CBEB98];
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, &v11, 1, v10, *MEMORY[0x277D2BEE0], v12[0]);
  }

  else
  {
    if (v4)
    {
      goto LABEL_8;
    }

    v6 = MEMORY[0x277CBEB98];
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v12, 1, v10, v11, *MEMORY[0x277D2BEF0]);
  }
  v7 = ;
  v3 = objc_msgSend_setWithArray_(v6, v8, v7);

LABEL_8:

  return v3;
}

- (void)_prepareComplicationsForSnapshotting
{
  v4 = objc_msgSend__currentHiVizStyle(self, a2, v2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23BED5654;
  v6[3] = &unk_278BA13D8;
  v6[4] = self;
  v6[5] = v4;
  objc_msgSend_enumerateComplicationDisplayWrappersWithBlock_(self, v5, v6);
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v14.receiver = self;
  v14.super_class = NTKLeghornFaceView;
  [(NTKLeghornFaceView *)&v14 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode)
  {
    objc_msgSend__transformForRubberBandingFraction_(self, v8, v9, fraction);
    objc_msgSend_setTransform_(self, v10, &v13);
    NTKAlphaForRubberBandingFraction();
    objc_msgSend_setAlpha_(self, v11, v12);
  }
}

- (CGAffineTransform)_transformForBreathingFraction:(SEL)fraction
{
  NTKLargeElementScaleForBreathingFraction();

  return CGAffineTransformMakeScale(retstr, v5, v5);
}

- (CGAffineTransform)_transformForRubberBandingFraction:(SEL)fraction
{
  NTKScaleForRubberBandingFraction();

  return CGAffineTransformMakeScale(retstr, v5, v5);
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if ((options - 10) > 8)
  {
    return 0;
  }

  else
  {
    return qword_278BA1440[options - 10];
  }
}

+ (void)_drawComplicationsSnapshotInContext:(CGContext *)context hiVizStyle:(unint64_t)style forDevice:(id)device
{
  deviceCopy = device;
  CGContextSaveGState(context);
  v11 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v9, v10, 0.9, 0.05);
  v12 = v11;
  v15 = objc_msgSend_CGColor(v12, v13, v14);
  CGContextSetFillColorWithColor(context, v15);

  objc_msgSend_screenBounds(deviceCopy, v16, v17);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23BED5944;
  v21[3] = &unk_278BA13F8;
  v21[4] = self;
  v21[5] = style;
  v21[6] = context;
  objc_msgSend__applyComplicationsLayoutForDevice_size_fromHiVizStyle_toHiVizStyle_progress_block_(self, v18, deviceCopy, style, style, v21, v19, v20, 1.0);

  CGContextRestoreGState(context);
}

+ (id)_snapshotImageForTimeStyle:(id)style hiVizStyle:(id)vizStyle colorPalette:(id)palette poiFilterEditOption:(id)option withSelectedOptions:(id)options forDevice:(id)device
{
  styleCopy = style;
  paletteCopy = palette;
  optionCopy = option;
  deviceCopy = device;
  v21 = objc_msgSend_hiVizStyle(vizStyle, v17, v18);
  if (optionCopy)
  {
    v22 = objc_msgSend_poiFilter(optionCopy, v19, v20);
  }

  else
  {
    v22 = 0;
  }

  v23 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v19, v20);
  objc_msgSend_scale(v23, v24, v25);
  v27 = v26;

  objc_msgSend_screenBounds(deviceCopy, v28, v29);
  v31 = v30;
  v33 = v32;
  v34 = objc_opt_new();
  objc_msgSend_setScale_(v34, v35, v36, v27);
  v37 = objc_alloc(MEMORY[0x277D75560]);
  v39 = objc_msgSend_initWithSize_format_(v37, v38, v34, v31, v33);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = sub_23BED5BE8;
  v47[3] = &unk_278BA1420;
  v52 = v31;
  v53 = v33;
  v48 = paletteCopy;
  v49 = v22;
  v50 = deviceCopy;
  v51 = styleCopy;
  v54 = v21;
  selfCopy = self;
  v40 = styleCopy;
  v41 = deviceCopy;
  v42 = v22;
  v43 = paletteCopy;
  v45 = objc_msgSend_imageWithActions_(v39, v44, v47);

  return v45;
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  v11 = 0;
  v43 = optionCopy;
  if (mode > 14)
  {
    if (mode == 15)
    {
      v16 = optionCopy;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      if (v16)
      {
        goto LABEL_23;
      }

      goto LABEL_14;
    }

    if (mode == 16)
    {
      v15 = 0;
      v11 = 0;
      v13 = 0;
      v14 = optionCopy;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      if (mode != 18)
      {
        goto LABEL_14;
      }

      v15 = 0;
      v13 = 0;
      v14 = 0;
      v11 = v43;
    }

    goto LABEL_13;
  }

  if (mode == 10)
  {
    v15 = 0;
    v11 = 0;
    v14 = 0;
    v13 = optionCopy;
    goto LABEL_13;
  }

  v15 = optionCopy;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  if (mode == 14)
  {
LABEL_13:
    v12 = v11;
    v17 = v43;
    v11 = v15;
  }

LABEL_14:
  v18 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v9, &unk_284EB7648);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v18;
  }

  else
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v12)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

LABEL_23:
  v20 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v9, &unk_284EB75D0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v20;
  }

  else
  {
    v11 = 0;
  }

  if (v12)
  {
LABEL_19:
    if (v13)
    {
      goto LABEL_20;
    }

    goto LABEL_31;
  }

LABEL_27:
  v21 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v9, &unk_284EB7618);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v21;
  }

  else
  {
    v12 = 0;
  }

  if (v13)
  {
LABEL_20:
    if (v14)
    {
      goto LABEL_21;
    }

LABEL_35:
    v23 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v9, &unk_284EB7630);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v23;
    }

    else
    {
      v14 = 0;
    }

    if (!v16)
    {
      goto LABEL_45;
    }

    goto LABEL_39;
  }

LABEL_31:
  v22 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v9, &unk_284EB7600);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v22;
  }

  else
  {
    v13 = 0;
  }

  if (!v14)
  {
    goto LABEL_35;
  }

LABEL_21:
  if (!v16)
  {
LABEL_45:
    v44.receiver = self;
    v44.super_class = NTKLeghornFaceView;
    v41 = v43;
    v40 = [(NTKLeghornFaceView *)&v44 _swatchImageForEditOption:v43 mode:mode withSelectedOptions:optionsCopy];
    goto LABEL_46;
  }

LABEL_39:
  if (!v11 || !v12 || !v13)
  {
    goto LABEL_45;
  }

  v24 = objc_msgSend_leghornFaceColorPalette(self, v9, v19);
  v27 = objc_msgSend_copy(v24, v25, v26);

  objc_msgSend_setPigmentEditOption_(v27, v28, v13);
  objc_msgSend_setBezelStyle_(v27, v29, 0);
  if (objc_msgSend_nightMode(v12, v30, v31) == 1)
  {
    v34 = objc_msgSend_nightModeColorPalette(v27, v32, v33);

    v27 = v34;
  }

  v35 = objc_opt_class();
  v38 = objc_msgSend_device(self, v36, v37);
  v40 = objc_msgSend__snapshotImageForTimeStyle_hiVizStyle_colorPalette_poiFilterEditOption_withSelectedOptions_forDevice_(v35, v39, v16, v11, v27, v14, optionsCopy, v38);

  v41 = v43;
LABEL_46:

  return v40;
}

- (void)_reorderSwitcherSnapshotView
{
  v10.receiver = self;
  v10.super_class = NTKLeghornFaceView;
  [(NTKLeghornFaceView *)&v10 _reorderSwitcherSnapshotView];
  v5 = objc_msgSend__currentHiVizStyle(self, v3, v4);
  v8 = objc_msgSend_toEditMode(self, v6, v7);
  objc_msgSend__applyComplicationsAlphaForHiVizStyle_editMode_(self, v9, v5, v8);
}

- (void)_stopDataSource
{
  objc_msgSend_stop(self->_dataSource, a2, v2);
  dataSource = self->_dataSource;
  self->_dataSource = 0;
}

- (void)_setLive:(int64_t)live
{
  v4 = live - 1;
  v5 = live != 1;
  v13 = objc_msgSend_timeView(self, a2, live);
  objc_msgSend_setFrozen_(v13, v6, v5);
  if (v4 > 1)
  {
    objc_msgSend__stopDataSource(self, v7, v8);
    v11 = objc_msgSend__currentPOIFilter(self, v9, v10);
    objc_msgSend_setToSnapshotValuesWithPOIFilter_(self->_bezelView, v12, v11);
  }

  else
  {
    objc_msgSend__ensureDataSource(self, v7, v8);
  }
}

- (id)createFaceColorPalette
{
  v2 = [NTKLeghornFaceColorPalette alloc];
  v3 = objc_opt_class();
  v5 = objc_msgSend_initWithFaceClass_(v2, v4, v3);

  return v5;
}

- (id)_multiPalette
{
  v45[4] = *MEMORY[0x277D85DE8];
  if (!self->_multiPalette)
  {
    v4 = objc_msgSend_leghornFaceColorPalette(self, a2, v2);
    v7 = objc_msgSend_nightModeColorPalette(v4, v5, v6);

    v8 = objc_alloc(MEMORY[0x277D2C088]);
    v11 = objc_msgSend_leghornFaceColorPalette(self, v9, v10);
    v45[0] = v11;
    v14 = objc_msgSend_leghornFaceColorPalette(self, v12, v13);
    v17 = objc_msgSend_tritiumPalette(v14, v15, v16);
    v45[1] = v17;
    v45[2] = v7;
    v20 = objc_msgSend_tritiumPalette(v7, v18, v19);
    v45[3] = v20;
    v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, v45, 4);
    v24 = objc_msgSend_initWithPalettes_(v8, v23, v22);
    multiPalette = self->_multiPalette;
    self->_multiPalette = v24;
  }

  v26 = objc_msgSend__nightModeInterpolator(self, a2, v2);
  v27 = MEMORY[0x23EEC15B0]();
  v30 = objc_msgSend_colorInterpolators(self->_multiPalette, v28, v29);
  objc_msgSend_setObject_atIndexedSubscript_(v30, v31, v27, 1);

  v34 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v32, v33, self->_tritiumFraction);
  v44[0] = v34;
  v37 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v35, v36, self->_nightModeFraction);
  v44[1] = v37;
  v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v38, v44, 2);

  objc_msgSend_setTransitionFractions_(self->_multiPalette, v40, v39);
  v41 = self->_multiPalette;
  v42 = v41;

  return v41;
}

@end