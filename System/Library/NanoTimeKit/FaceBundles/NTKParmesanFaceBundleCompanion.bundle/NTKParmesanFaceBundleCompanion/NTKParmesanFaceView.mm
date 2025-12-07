@interface NTKParmesanFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (BOOL)_allowsEditingSliderEditableColorsForSlot:(id)slot;
- (BOOL)_validateEditOption:(id)option forMode:(int64_t)mode;
- (BOOL)isPartiallySupportedNumeralSelected;
- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)mode slot:(id)slot;
- (CGRect)_timeKeylineFrameForFrame:(CGRect)frame;
- (NTKParmesanFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_contentViewAlphaForEditMode:(int64_t)mode;
- (id)_bottomComplication;
- (id)_colorStyleKeylineViewWithEditOption:(id)option slot:(id)slot;
- (id)_compositionKeyForCurrentCompositionWithTimeOption:(int64_t)option numerals:(unint64_t)numerals;
- (id)_galleryViewWithComposition:(id)composition timeOption:(int64_t)option typeface:(int64_t)typeface numerals:(unint64_t)numerals timePalette:(id)palette contentEffect:(id)effect;
- (id)_keylineViewForCustomEditMode:(int64_t)mode slot:(id)slot selectedSlot:(id)selectedSlot;
- (id)_paletteForStyle:(unint64_t)style;
- (id)_storedPlaceholderName;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options refreshHandler:(id)handler;
- (id)_swatchKeyForStyle:(int64_t)style stylePalette:(id)palette timePalette:(id)timePalette typeface:(int64_t)typeface numerals:(unint64_t)numerals time:(int64_t)time compositionSwatchKey:(id)key;
- (id)_swatchKeyForTypeface:(int64_t)typeface numerals:(unint64_t)numerals palette:(id)palette;
- (id)_timeLabelWithTypeface:(int64_t)typeface numerals:(unint64_t)numerals palette:(id)palette;
- (id)_topComplication;
- (id)createFaceColorPalette;
- (unint64_t)_complicationVisibilityForEditMode:(int64_t)mode;
- (unint64_t)_currentComplicationVisibility;
- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)complicationVisibilityWithTopComplication:(id)complication bottomComplication:(id)bottomComplication;
- (void)_applyBreathingAndRubberbanding;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyContentEffectColorTransitionFraction:(double)fraction;
- (void)_applyDataMode;
- (void)_applyFaceState;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyShowContentForUnadornedSnapshot;
- (void)_applyTimeEffectStyle;
- (void)_applyTimeEffectStyleTransitionFraction:(double)fraction;
- (void)_applyTransitionFraction:(double)fraction fromComplication:(id)complication toComplication:(id)toComplication slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_cleanupAfterTransitionComplicationSlot:(id)slot selectedComplication:(id)complication;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_createStylePaletteIfNeeded;
- (void)_createTimePaletteIfNeeded;
- (void)_faceLibraryDismissed;
- (void)_invalidateComplicationViews;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_reloadComplicationAppearance;
- (void)_setupGallery;
- (void)_setupLibraryDismissedNotification;
- (void)_setupSwatchRefreshHandlerManagerIfNeeded;
- (void)_setupTimeFormatterIfNeeded;
- (void)_setupTimeView;
- (void)_teardownGallery;
- (void)_teardownLibraryDismissedNotification;
- (void)_transitionContentEffectFromStyle:(int64_t)style toStyle:(int64_t)toStyle progress:(double)progress;
- (void)_unloadSnapshotContentViews;
- (void)_updateContentEffectWithStyle:(int64_t)style;
- (void)_updateContents;
- (void)_updateForResourceDirectoryChange:(id)change;
- (void)layoutSubviews;
@end

@implementation NTKParmesanFaceView

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  slotCopy = slot;
  v9 = objc_msgSend_parmesanComplicationFactory(self, v7, v8);
  objc_msgSend_configureComplicationView_forSlot_(v9, v10, viewCopy, slotCopy);

  if (objc_msgSend_isEqualToString_(slotCopy, v11, *MEMORY[0x277D2BF00]))
  {
    if (!objc_msgSend_isHidden(viewCopy, v12, v13) || (objc_msgSend_topComplicationVisible(self, v14, v15) & 1) == 0) && ((objc_msgSend_isHidden(viewCopy, v14, v15) & 1) != 0 || (objc_msgSend_topComplicationVisible(self, v16, v17)))
    {
      goto LABEL_15;
    }

    isHidden = objc_msgSend_isHidden(viewCopy, v14, v15);
    objc_msgSend_setTopComplicationVisible_(self, v19, isHidden ^ 1u);
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(slotCopy, v12, *MEMORY[0x277D2BED0]) || (!objc_msgSend_isHidden(viewCopy, v22, v23) || (objc_msgSend_bottomComplicationVisible(self, v24, v25) & 1) == 0) && ((objc_msgSend_isHidden(viewCopy, v24, v25) & 1) != 0 || (objc_msgSend_bottomComplicationVisible(self, v26, v27) & 1) != 0))
    {
      goto LABEL_15;
    }

    v28 = objc_msgSend_isHidden(viewCopy, v24, v25);
    objc_msgSend_setBottomComplicationVisible_(self, v29, v28 ^ 1u);
  }

  if ((objc_msgSend_editing(self, v20, v21) & 1) == 0)
  {
    objc_msgSend__reloadComplicationAppearance(self, v30, v31);
  }

LABEL_15:
}

- (void)_invalidateComplicationViews
{
  v4.receiver = self;
  v4.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v4 reconfigureComplicationViews];
  v3.receiver = self;
  v3.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v3 invalidateComplicationLayout];
}

- (void)_reloadComplicationAppearance
{
  v4 = objc_msgSend__currentComplicationVisibility(self, a2, v2);
  v8 = objc_msgSend_controller(self, v5, v6);
  objc_msgSend_setComplicationVisibility_(v8, v7, v4);
}

- (void)_applyTransitionFraction:(double)fraction fromComplication:(id)complication toComplication:(id)toComplication slot:(id)slot
{
  toComplicationCopy = toComplication;
  slotCopy = slot;
  v30.receiver = self;
  v30.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v30 _applyTransitionFraction:complication fromComplication:toComplicationCopy toComplication:slotCopy slot:fraction];
  if (objc_msgSend_isEqualToString_(slotCopy, v12, *MEMORY[0x277D2BF00]))
  {
    v15 = toComplicationCopy;
  }

  else
  {
    v15 = objc_msgSend__topComplication(self, v13, v14);
  }

  v17 = v15;
  if (objc_msgSend_isEqualToString_(slotCopy, v16, *MEMORY[0x277D2BED0]))
  {
    v20 = toComplicationCopy;
  }

  else
  {
    v20 = objc_msgSend__bottomComplication(self, v18, v19);
  }

  v23 = v20;
  if ((objc_msgSend_editing(self, v21, v22) & 1) == 0)
  {
    v25 = objc_msgSend_complicationVisibilityWithTopComplication_bottomComplication_(self, v24, v17, v23);
    v28 = objc_msgSend_controller(self, v26, v27);
    objc_msgSend_setComplicationVisibility_(v28, v29, v25);
  }
}

- (unint64_t)complicationVisibilityWithTopComplication:(id)complication bottomComplication:(id)bottomComplication
{
  bottomComplicationCopy = bottomComplication;
  isVisible = objc_msgSend_isVisible(complication, v6, v7);
  v11 = objc_msgSend_isVisible(bottomComplicationCopy, v9, v10);

  if (isVisible && (v11 & 1) != 0)
  {
    return 3;
  }

  if ((isVisible ^ 1 | v11))
  {
    return (isVisible ^ 1) & v11;
  }

  return 2;
}

- (unint64_t)_currentComplicationVisibility
{
  v4 = objc_msgSend__topComplication(self, a2, v2);
  v7 = objc_msgSend__bottomComplication(self, v5, v6);
  v9 = objc_msgSend_complicationVisibilityWithTopComplication_bottomComplication_(self, v8, v4, v7);

  return v9;
}

- (id)_topComplication
{
  v3 = objc_msgSend_delegate(self, a2, v2);
  v5 = objc_msgSend_faceViewComplicationForSlot_(v3, v4, *MEMORY[0x277D2BF00]);

  return v5;
}

- (id)_bottomComplication
{
  v3 = objc_msgSend_delegate(self, a2, v2);
  v5 = objc_msgSend_faceViewComplicationForSlot_(v3, v4, *MEMORY[0x277D2BED0]);

  return v5;
}

- (void)_prepareForEditing
{
  v12.receiver = self;
  v12.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v12 _prepareForEditing];
  v5 = objc_msgSend_controller(self, v3, v4);
  objc_msgSend_prepareForEditing(v5, v6, v7);

  v10 = objc_msgSend_delegate(self, v8, v9);
  objc_msgSend_faceViewWantsCustomKeylineFramesReloadedForEditMode_(v10, v11, 10);
}

- (void)_cleanupAfterEditing
{
  v8.receiver = self;
  v8.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v8 _cleanupAfterEditing];
  v5 = objc_msgSend_controller(self, v3, v4);
  objc_msgSend_cleanupAfterEditing(v5, v6, v7);
}

- (void)_configureForEditMode:(int64_t)mode
{
  v17.receiver = self;
  v17.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v17 _configureForEditMode:?];
  v7 = objc_msgSend_contentView(self, v5, v6);
  objc_msgSend__contentViewAlphaForEditMode_(self, v8, mode);
  objc_msgSend_setAlpha_(v7, v9, v10);

  v12 = objc_msgSend__complicationVisibilityForEditMode_(self, v11, mode);
  v15 = objc_msgSend_controller(self, v13, v14);
  objc_msgSend_setComplicationVisibility_(v15, v16, v12);
}

- (unint64_t)_complicationVisibilityForEditMode:(int64_t)mode
{
  if (mode == 1)
  {
    return 3;
  }

  else
  {
    return objc_msgSend__currentComplicationVisibility(self, a2, mode);
  }
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v29.receiver = self;
  v29.super_class = NTKParmesanFaceView;
  [NTKParmesanFaceView _configureForTransitionFraction:sel__configureForTransitionFraction_fromEditMode_toEditMode_ fromEditMode:? toEditMode:?];
  v10 = objc_msgSend__complicationVisibilityForEditMode_(self, v9, mode);
  v12 = objc_msgSend__complicationVisibilityForEditMode_(self, v11, editMode);
  v15 = objc_msgSend_controller(self, v13, v14);
  objc_msgSend_transitionFromComplicationVisibility_toComplicationVisibility_progress_(v15, v16, v10, v12, fraction);

  objc_msgSend__contentViewAlphaForEditMode_(self, v17, mode);
  v19 = v18;
  objc_msgSend__contentViewAlphaForEditMode_(self, v20, editMode);
  v24 = v23;
  if (v19 != v23)
  {
    sub_23BFF9200();
    v24 = v25;
  }

  v26 = objc_msgSend_contentView(self, v21, v22);
  objc_msgSend_setAlpha_(v26, v27, v28, v24);
}

- (void)_cleanupAfterTransitionComplicationSlot:(id)slot selectedComplication:(id)complication
{
  v9.receiver = self;
  v9.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v9 _cleanupAfterTransitionComplicationSlot:slot selectedComplication:complication];
  v7 = objc_msgSend_delegate(self, v5, v6);
  objc_msgSend_faceViewWantsCustomKeylineFramesReloadedForEditMode_(v7, v8, 10);
}

- (double)_contentViewAlphaForEditMode:(int64_t)mode
{
  if ((mode - 13) >= 2)
  {
    result = 1.0;
    if (mode == 1)
    {
      return *MEMORY[0x277D2BF18];
    }
  }

  else
  {
    isPartiallySupportedNumeralSelected = objc_msgSend_isPartiallySupportedNumeralSelected(self, a2, mode);
    result = *MEMORY[0x277D2BF18];
    if (!isPartiallySupportedNumeralSelected)
    {
      return 1.0;
    }
  }

  return result;
}

- (BOOL)isPartiallySupportedNumeralSelected
{
  v2 = objc_msgSend_optionForCustomEditMode_slot_(self, a2, 19, 0);
  v5 = objc_msgSend_numeralOption(v2, v3, v4);

  v7 = MEMORY[0x277D2C090];

  return objc_msgSend_isPartiallySupported_(v7, v6, v5);
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  v11 = slotCopy;
  if (mode > 13)
  {
    if (mode == 14)
    {
      v23 = objc_msgSend_time(optionCopy, v9, v10);
      v26 = objc_msgSend_controller(self, v24, v25);
      objc_msgSend_setTimeOption_(v26, v27, v23);

      v30 = objc_msgSend_delegate(self, v28, v29);
      objc_msgSend_faceViewWantsCustomKeylineFramesReloadedForEditMode_(v30, v31, 10);

      goto LABEL_18;
    }

    if (mode != 15)
    {
      if (mode != 19)
      {
        goto LABEL_18;
      }

      v17 = objc_msgSend_numeralOption(optionCopy, v9, v10);
      v15 = objc_msgSend_controller(self, v18, v19);
      objc_msgSend_setNumerals_(v15, v20, v17);
      goto LABEL_14;
    }

    v36 = objc_msgSend_style(optionCopy, v9, v10);
    objc_msgSend__updateContentEffectWithStyle_(self, v37, v36);
  }

  else
  {
    if (mode != 10)
    {
      if (mode == 12)
      {
        v32 = objc_msgSend_content(optionCopy, v9, v10);
        v15 = objc_msgSend_controller(self, v33, v34);
        objc_msgSend_setContentOption_(v15, v35, v32);
      }

      else
      {
        if (mode != 13)
        {
          goto LABEL_18;
        }

        v12 = objc_msgSend_typeface(optionCopy, v9, v10);
        v15 = objc_msgSend_controller(self, v13, v14);
        objc_msgSend_setTypeface_(v15, v16, v12);
      }

LABEL_14:

      goto LABEL_18;
    }

    if (objc_msgSend_isEqualToString_(slotCopy, v9, @"time-color"))
    {
      objc_msgSend__applyTimeEffectStyle(self, v21, v22);
    }

    else if (objc_msgSend_isEqualToString_(v11, v21, @"style-color"))
    {
      v38 = objc_msgSend_optionForCustomEditMode_slot_(self, v9, 15, 0);
      v41 = objc_msgSend_style(v38, v39, v40);

      objc_msgSend__updateContentEffectWithStyle_(self, v42, v41);
    }
  }

LABEL_18:
  objc_msgSend__reloadComplicationAppearance(self, v9, v10);
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  v16 = slotCopy;
  if (mode <= 13)
  {
    if (mode != 10)
    {
      if (mode != 13)
      {
        goto LABEL_16;
      }

      v25 = objc_msgSend_typeface(optionCopy, v14, v15);
      v28 = objc_msgSend_typeface(toOptionCopy, v26, v27);
      v23 = objc_msgSend_controller(self, v29, v30);
      objc_msgSend_transitionFromTypeface_toTypeface_progress_(v23, v31, v25, v28, fraction);
      goto LABEL_10;
    }

    if (objc_msgSend_isEqualToString_(slotCopy, v14, @"time-color"))
    {
      v45 = objc_opt_class();
      v47 = objc_msgSend_pigmentFromOption_(v45, v46, optionCopy);
      v50 = objc_msgSend_interpolatedTimePalette(self, v48, v49);
      v53 = objc_msgSend_fromPalette(v50, v51, v52);
      objc_msgSend_setPigmentEditOption_(v53, v54, v47);

      v55 = objc_opt_class();
      v57 = objc_msgSend_pigmentFromOption_(v55, v56, toOptionCopy);
      v60 = objc_msgSend_interpolatedTimePalette(self, v58, v59);
      v63 = objc_msgSend_toPalette(v60, v61, v62);
      objc_msgSend_setPigmentEditOption_(v63, v64, v57);

      objc_msgSend__applyTimeEffectStyleTransitionFraction_(self, v65, v66, fraction);
    }

    else if (objc_msgSend_isEqualToString_(v16, v44, @"style-color"))
    {
      v67 = objc_opt_class();
      v69 = objc_msgSend_pigmentFromOption_(v67, v68, optionCopy);
      v72 = objc_msgSend_interpolatedStylePalette(self, v70, v71);
      v75 = objc_msgSend_fromPalette(v72, v73, v74);
      objc_msgSend_setPigmentEditOption_(v75, v76, v69);

      v77 = objc_opt_class();
      v79 = objc_msgSend_pigmentFromOption_(v77, v78, toOptionCopy);
      v82 = objc_msgSend_interpolatedStylePalette(self, v80, v81);
      v85 = objc_msgSend_toPalette(v82, v83, v84);
      objc_msgSend_setPigmentEditOption_(v85, v86, v79);

      objc_msgSend__applyContentEffectColorTransitionFraction_(self, v87, v88, fraction);
    }
  }

  else
  {
    if (mode == 19)
    {
      v32 = objc_msgSend_numeralOption(optionCopy, v14, v15);
      v35 = objc_msgSend_numeralOption(toOptionCopy, v33, v34);
      v23 = objc_msgSend_controller(self, v36, v37);
      objc_msgSend_transitionFromNumerals_toNumerals_progress_(v23, v38, v32, v35, fraction);
LABEL_10:

      goto LABEL_16;
    }

    if (mode != 15)
    {
      if (mode != 14)
      {
        goto LABEL_16;
      }

      v17 = objc_msgSend_time(optionCopy, v14, v15);
      v20 = objc_msgSend_time(toOptionCopy, v18, v19);
      v23 = objc_msgSend_controller(self, v21, v22);
      objc_msgSend_transitionFromTimeOption_toTimeOption_progress_(v23, v24, v17, v20, fraction);
      goto LABEL_10;
    }

    v39 = objc_msgSend_style(optionCopy, v14, v15);
    v42 = objc_msgSend_style(toOptionCopy, v40, v41);
    objc_msgSend__transitionContentEffectFromStyle_toStyle_progress_(self, v43, v39, v42, fraction);
  }

LABEL_16:
}

- (CGRect)_timeKeylineFrameForFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = objc_msgSend_controller(self, a2, v3);
  v11 = objc_msgSend_galleryView(v8, v9, v10);
  objc_msgSend_normalizedKeylineRect(v11, v12, v13);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = x + v15 * width;
  v23 = y + v17 * height;
  v24 = width * v19;
  v25 = height * v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  v8 = slotCopy;
  if (mode != 10)
  {
    goto LABEL_7;
  }

  if (!objc_msgSend_isEqualToString_(slotCopy, v7, @"time-color"))
  {
    if (objc_msgSend_isEqualToString_(v8, v9, @"style-color"))
    {
      NTKFaceEditingFullscreenKeylineMargin();
      v22 = v21;
      NTKKeylineWidth();
      v24 = -v23;
      objc_msgSend_bounds(self, v25, v26);
      v20 = -(v24 + v22 * 2.0);
      goto LABEL_6;
    }

LABEL_7:
    v35.receiver = self;
    v35.super_class = NTKParmesanFaceView;
    [(NTKParmesanFaceView *)&v35 _relativeKeylineFrameForCustomEditMode:mode slot:v8];
    goto LABEL_8;
  }

  NTKFaceEditingFullscreenKeylineMargin();
  v11 = v10;
  objc_msgSend_bounds(self, v12, v13);
  objc_msgSend__timeKeylineFrameForFrame_(self, v14, v15);
  v20 = v11 * -0.5;
LABEL_6:
  v36 = CGRectInset(*&v16, v20, v20);
LABEL_8:
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;

  v31 = x;
  v32 = y;
  v33 = width;
  v34 = height;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (id)_keylineViewForCustomEditMode:(int64_t)mode slot:(id)slot selectedSlot:(id)selectedSlot
{
  slotCopy = slot;
  selectedSlotCopy = selectedSlot;
  if (mode != 10)
  {
LABEL_6:
    v18.receiver = self;
    v18.super_class = NTKParmesanFaceView;
    v12 = [(NTKParmesanFaceView *)&v18 _keylineViewForCustomEditMode:mode slot:slotCopy selectedSlot:selectedSlotCopy];
    goto LABEL_7;
  }

  if (!objc_msgSend_isEqualToString_(slotCopy, v9, @"time-color"))
  {
    if (objc_msgSend_isEqualToString_(slotCopy, v11, @"style-color"))
    {
      v14 = objc_msgSend_optionForCustomEditMode_slot_(self, v13, 10, selectedSlotCopy);
      v16 = objc_msgSend__colorStyleKeylineViewWithEditOption_slot_(self, v15, v14, slotCopy);

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  NTKKeylineCornerRadiusLarge();
  v12 = NTKKeylineViewWithContinuousCurveCornerRadius();
LABEL_7:
  v16 = v12;
LABEL_8:

  return v16;
}

- (id)_colorStyleKeylineViewWithEditOption:(id)option slot:(id)slot
{
  v29.receiver = self;
  v29.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v29 _faceViewFrameForEditMode:10 option:option slot:slot];
  objc_msgSend__timeKeylineFrameForFrame_(self, v5, v6, 0.0, 0.0);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = MEMORY[0x277D75208];
  NTKKeylineCornerRadiusLarge();
  v19 = objc_msgSend_bezierPathWithRoundedRect_cornerRadius_(v15, v16, v17, v8, v10, v12, v14, v18);
  v20 = NTKKeylineViewWithFullScreenContinuousCurves();
  v21 = MEMORY[0x277D2C068];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_23BF1B2C8;
  v27[3] = &unk_278BA6C10;
  v28 = v19;
  v22 = v19;
  v24 = objc_msgSend_touchableWithHandler_(v21, v23, v27);
  objc_msgSend_setTouchable_(v20, v25, v24);

  return v20;
}

- (void)_createTimePaletteIfNeeded
{
  v4 = objc_msgSend_timePalette(self, a2, v2);

  if (!v4)
  {
    v7 = objc_msgSend_parmesanPalette(self, v5, v6);
    v10 = objc_msgSend_copy(v7, v8, v9);
    objc_msgSend_setTimePalette_(self, v11, v10);
  }

  v12 = objc_msgSend_interpolatedTimePalette(self, v5, v6);

  if (!v12)
  {
    v13 = objc_alloc(MEMORY[0x277D2C060]);
    v19 = objc_msgSend_timePalette(self, v14, v15);
    v17 = objc_msgSend_initWithColorPalette_(v13, v16, v19);
    objc_msgSend_setInterpolatedTimePalette_(self, v18, v17);
  }
}

- (void)_applyTimeEffectStyle
{
  objc_msgSend__createTimePaletteIfNeeded(self, a2, v2);
  v14 = objc_msgSend_optionForCustomEditMode_slot_(self, v4, 10, @"time-color");
  if (v14)
  {
    v7 = objc_msgSend_timePalette(self, v5, v6);
    objc_msgSend_setPigmentEditOption_(v7, v8, v14);
  }

  v9 = objc_msgSend_controller(self, v5, v6);
  v12 = objc_msgSend_timePalette(self, v10, v11);
  objc_msgSend_updateTimeEffectStyleWithPalette_(v9, v13, v12);
}

- (void)_applyTimeEffectStyleTransitionFraction:(double)fraction
{
  v19 = objc_msgSend_controller(self, a2, v3);
  v8 = objc_msgSend_interpolatedTimePalette(self, v6, v7);
  v11 = objc_msgSend_fromPalette(v8, v9, v10);
  v14 = objc_msgSend_interpolatedTimePalette(self, v12, v13);
  v17 = objc_msgSend_toPalette(v14, v15, v16);
  objc_msgSend_transitionTimeEffectFromPalette_toPalette_progress_(v19, v18, v11, v17, fraction);
}

- (void)_createStylePaletteIfNeeded
{
  v4 = objc_msgSend_stylePalette(self, a2, v2);

  if (!v4)
  {
    v7 = objc_msgSend_parmesanPalette(self, v5, v6);
    v10 = objc_msgSend_copy(v7, v8, v9);
    objc_msgSend_setStylePalette_(self, v11, v10);
  }

  v12 = objc_msgSend_interpolatedStylePalette(self, v5, v6);

  if (!v12)
  {
    v13 = objc_alloc(MEMORY[0x277D2C060]);
    v19 = objc_msgSend_stylePalette(self, v14, v15);
    v17 = objc_msgSend_initWithColorPalette_(v13, v16, v19);
    objc_msgSend_setInterpolatedStylePalette_(self, v18, v17);
  }
}

- (void)_updateContentEffectWithStyle:(int64_t)style
{
  objc_msgSend__createStylePaletteIfNeeded(self, a2, style);
  v20 = objc_msgSend_optionForCustomEditMode_slot_(self, v5, 10, @"style-color");
  if (v20)
  {
    v8 = objc_msgSend_stylePalette(self, v6, v7);
    objc_msgSend_setPigmentEditOption_(v8, v9, v20);
  }

  v10 = [NTKParmesanGalleryContentEffect alloc];
  v13 = objc_msgSend_stylePalette(self, v11, v12);
  v15 = objc_msgSend_initWithStyleOption_palette_(v10, v14, style, v13);
  v18 = objc_msgSend_controller(self, v16, v17);
  objc_msgSend_setContentEffect_(v18, v19, v15);
}

- (void)_applyContentEffectColorTransitionFraction:(double)fraction
{
  v5 = objc_msgSend_optionForCustomEditMode_slot_(self, a2, 15, 0);
  v8 = objc_msgSend_style(v5, v6, v7);

  v11 = objc_msgSend_interpolatedStylePalette(self, v9, v10);
  v30 = objc_msgSend_fromPalette(v11, v12, v13);

  v14 = [NTKParmesanGalleryContentEffect alloc];
  v16 = objc_msgSend_initWithStyleOption_palette_(v14, v15, v8, v30);
  v19 = objc_msgSend_interpolatedStylePalette(self, v17, v18);
  v22 = objc_msgSend_toPalette(v19, v20, v21);

  v23 = [NTKParmesanGalleryContentEffect alloc];
  v25 = objc_msgSend_initWithStyleOption_palette_(v23, v24, v8, v22);
  v28 = objc_msgSend_controller(self, v26, v27);
  objc_msgSend_transitionContentEffectFromEffect_toEffect_progress_(v28, v29, v16, v25, fraction);
}

- (void)_transitionContentEffectFromStyle:(int64_t)style toStyle:(int64_t)toStyle progress:(double)progress
{
  v21 = objc_msgSend__paletteForStyle_(self, a2, style);
  v9 = [NTKParmesanGalleryContentEffect alloc];
  v11 = objc_msgSend_initWithStyleOption_palette_(v9, v10, style, v21);
  v13 = objc_msgSend__paletteForStyle_(self, v12, toStyle);
  v14 = [NTKParmesanGalleryContentEffect alloc];
  v16 = objc_msgSend_initWithStyleOption_palette_(v14, v15, toStyle, v13);
  v19 = objc_msgSend_controller(self, v17, v18);
  objc_msgSend_transitionContentEffectFromEffect_toEffect_progress_(v19, v20, v11, v16, progress);
}

- (BOOL)_allowsEditingSliderEditableColorsForSlot:(id)slot
{
  slotCopy = slot;
  if (objc_msgSend_isEqualToString_(slotCopy, v5, @"style-color") && (objc_msgSend_optionForCustomEditMode_slot_(self, v6, 15, 0), v7 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend_style(v7, v8, v9), v7, (v10 & 0xFFFFFFFFFFFFFFFELL) == 2))
  {
    v11 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = NTKParmesanFaceView;
    v11 = [(NTKParmesanFaceView *)&v13 _allowsEditingSliderEditableColorsForSlot:slotCopy];
  }

  return v11;
}

- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  v8 = slotCopy;
  if (mode != 10 || !objc_msgSend_isEqualToString_(slotCopy, v7, @"time-color"))
  {
    goto LABEL_6;
  }

  v11 = objc_msgSend_controller(self, v9, v10);
  v14 = objc_msgSend_galleryView(v11, v12, v13);
  v17 = objc_msgSend_timeTextAlignment(v14, v15, v16);

  if (v17 == 2)
  {
    v18 = 392;
    goto LABEL_7;
  }

  if (!v17)
  {
    v18 = 416;
  }

  else
  {
LABEL_6:
    v20.receiver = self;
    v20.super_class = NTKParmesanFaceView;
    v18 = [(NTKParmesanFaceView *)&v20 _keylineLabelAlignmentForCustomEditMode:mode slot:v8];
  }

LABEL_7:

  return v18;
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v12.receiver = self;
  v12.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v12 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode > 0xF || ((1 << mode) & 0x8401) == 0)
  {
    objc_msgSend_setBreathingFraction_(self, v8, v9, fraction);
    objc_msgSend__applyBreathingAndRubberbanding(self, v10, v11);
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v14.receiver = self;
  v14.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v14 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode > 0xF || ((1 << mode) & 0x8401) == 0)
  {
    NTKAlphaForRubberBandingFraction();
    objc_msgSend_setAlpha_(self, v8, v9);
    objc_msgSend_setRubberbandingFraction_(self, v10, v11, fraction);
    objc_msgSend__applyBreathingAndRubberbanding(self, v12, v13);
  }
}

- (void)_applyBreathingAndRubberbanding
{
  objc_msgSend_breathingFraction(self, a2, v2);
  NTKLargeElementScaleForBreathingFraction();
  v5 = v4;
  objc_msgSend_rubberbandingFraction(self, v6, v7);
  NTKScaleForRubberBandingFraction();
  CGAffineTransformMakeScale(&v11, v5 * v8, v5 * v8);
  v10 = v11;
  objc_msgSend_setTransform_(self, v9, &v10);
}

- (NTKParmesanFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v16.receiver = self;
  v16.super_class = NTKParmesanFaceView;
  v9 = [(NTKParmesanFaceView *)&v16 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    v10 = [NTKParmesanFaceViewComplicationFactory alloc];
    v12 = objc_msgSend_initWithFaceView_device_(v10, v11, v9, deviceCopy);
    v13 = *(v9 + 110);
    *(v9 + 110) = v12;

    objc_msgSend_setComplicationFactory_(v9, v14, *(v9 + 110));
  }

  return v9;
}

- (void)_loadSnapshotContentViews
{
  v20.receiver = self;
  v20.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v20 _loadSnapshotContentViews];
  v5 = objc_msgSend_blackColor(MEMORY[0x277D75348], v3, v4);
  objc_msgSend_setBackgroundColor_(self, v6, v5);

  objc_msgSend__setupGallery(self, v7, v8);
  objc_msgSend__setupTimeView(self, v9, v10);
  objc_msgSend__setupTapControl(self, v11, v12);
  objc_msgSend__setupLibraryDismissedNotification(self, v13, v14);
  objc_msgSend__updateContents(self, v15, v16);
  v19.receiver = self;
  v19.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v19 invalidateComplicationLayout];
  objc_msgSend_layoutIfNeeded(self, v17, v18);
}

- (void)_unloadSnapshotContentViews
{
  v11.receiver = self;
  v11.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v11 _unloadSnapshotContentViews];
  objc_msgSend__teardownLibraryDismissedNotification(self, v3, v4);
  objc_msgSend__teardownTapControl(self, v5, v6);
  objc_msgSend__teardownTimeView(self, v7, v8);
  objc_msgSend__teardownGallery(self, v9, v10);
}

- (void)_setupGallery
{
  v4 = objc_msgSend_currentFaceState(self, a2, v2);
  previousFaceState = self->_previousFaceState;
  self->_previousFaceState = v4;

  v6 = [NTKParmesanGalleryContentEffect alloc];
  v9 = objc_msgSend_parmesanPalette(self, v7, v8);
  v65 = objc_msgSend_initWithStyleOption_palette_(v6, v10, 0, v9);

  v11 = [NTKParmesanGalleryController alloc];
  objc_msgSend_bounds(self, v12, v13);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v24 = objc_msgSend_device(self, v22, v23);
  v26 = objc_msgSend_initWithFrame_device_faceState_contentEffect_(v11, v25, v24, self->_previousFaceState, v65, v15, v17, v19, v21);
  controller = self->_controller;
  self->_controller = v26;

  v32 = objc_msgSend__storedPlaceholderName(self, v28, v29);
  if (v32)
  {
    objc_msgSend_setPlaceholderName_(self->_controller, v30, v32);
  }

  v33 = objc_msgSend_contentView(self, v30, v31);
  v36 = objc_msgSend_galleryView(self->_controller, v34, v35);
  objc_msgSend_addSubview_(v33, v37, v36);

  parmesanComplicationFactory = self->_parmesanComplicationFactory;
  v41 = objc_msgSend_galleryView(self->_controller, v39, v40);
  objc_msgSend_setTransitionDelegate_(v41, v42, parmesanComplicationFactory);

  v45 = objc_msgSend_complicationContainerView(self, v43, v44);
  objc_msgSend_removeFromSuperview(v45, v46, v47);
  v50 = objc_msgSend_galleryView(self->_controller, v48, v49);
  v53 = objc_msgSend_complicationVibrantEffectView(v50, v51, v52);
  objc_msgSend_addMaskingSubview_(v53, v54, v45);

  v57 = objc_msgSend_rootContainerView(self, v55, v56);
  v60 = objc_msgSend_galleryView(self->_controller, v58, v59);
  v63 = objc_msgSend_complicationVibrantEffectView(v60, v61, v62);
  objc_msgSend_addSubview_(v57, v64, v63);
}

- (void)_teardownGallery
{
  v4 = objc_msgSend_galleryView(self->_controller, a2, v2);
  objc_msgSend_removeFromSuperview(v4, v5, v6);

  controller = self->_controller;
  self->_controller = 0;
}

- (void)_setupTimeView
{
  v8 = objc_msgSend_galleryView(self->_controller, a2, v2);
  v6 = objc_msgSend_face_timeView(v8, v4, v5);
  objc_msgSend_setTimeView_(self, v7, v6);
}

- (void)_setupLibraryDismissedNotification
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_addObserver_selector_name_object_(v5, v4, self, sel__faceLibraryDismissed, *MEMORY[0x277D2BF38], 0);
}

- (void)_teardownLibraryDismissedNotification
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_removeObserver_(v5, v4, self);
}

- (void)_applyShowContentForUnadornedSnapshot
{
  v10.receiver = self;
  v10.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v10 _applyShowContentForUnadornedSnapshot];
  v5 = objc_msgSend_timeView(self, v3, v4);
  v8 = objc_msgSend_showContentForUnadornedSnapshot(self, v6, v7);
  objc_msgSend_setHidden_(v5, v9, v8);
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v2 layoutSubviews];
}

- (id)_storedPlaceholderName
{
  v4 = objc_msgSend_placeholderCustomDataKey(NTKParmesanGalleryPlaceholderDataSource, a2, v2);
  v7 = objc_msgSend_delegate(self, v5, v6);
  v9 = objc_msgSend_faceViewDidRequestCustomDataForKey_(v7, v8, v4);

  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_updateForResourceDirectoryChange:(id)change
{
  v22 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v17.receiver = self;
  v17.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v17 _updateForResourceDirectoryChange:changeCopy];
  v7 = objc_msgSend_resourceDirectory(self, v5, v6);
  v8 = NTKEqualStrings();

  if ((v8 & 1) == 0)
  {
    v11 = objc_msgSend_logObject(NTKParmesanFaceBundle, v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_msgSend_resourceDirectory(self, v12, v13);
      *buf = 138412546;
      v19 = changeCopy;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_23BF0C000, v11, OS_LOG_TYPE_DEFAULT, "_updateForResourceDirectoryChange: change resource directory from %@ to %@", buf, 0x16u);
    }

    objc_msgSend__updateContents(self, v15, v16);
  }
}

- (void)_updateContents
{
  controller = self->_controller;
  if (controller)
  {
    v5 = objc_msgSend_resourceDirectory(self, a2, v2);
    objc_msgSend_setResourceDirectory_(controller, v6, v5);

    v8 = self->_controller;

    MEMORY[0x2821F9670](v8, sel_loadCurrentComposition, v7);
  }
}

- (void)_applyDataMode
{
  v5.receiver = self;
  v5.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v5 _applyDataMode];
  objc_msgSend__applyFaceState(self, v3, v4);
}

- (void)_applyFaceState
{
  obj = objc_msgSend_currentFaceState(self, a2, v2);
  if ((objc_msgSend_isEqual_(self->_previousFaceState, v4, obj) & 1) == 0)
  {
    objc_msgSend_setFaceState_(self->_controller, v5, obj);
    objc_msgSend_dataMode(self, v6, v7);
    objc_storeStrong(&self->_previousFaceState, obj);
  }
}

- (void)_faceLibraryDismissed
{
  if (objc_msgSend_dataMode(self, a2, v2) == 1)
  {
    v8 = objc_msgSend_galleryView(self->_controller, v4, v5);
    objc_msgSend_enableTimeChangeAnimations(v8, v6, v7);
  }
}

- (id)createFaceColorPalette
{
  v2 = objc_alloc_init(NTKParmesanColorPalette);

  return v2;
}

- (id)_paletteForStyle:(unint64_t)style
{
  v5 = objc_msgSend_stylePalette(self, a2, style);
  v8 = objc_msgSend_copy(v5, v6, v7);

  v11 = objc_msgSend_delegate(self, v9, v10);
  v13 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v12, style);
  v16 = objc_msgSend_stringValue(v13, v14, v15);
  v18 = objc_msgSend_faceViewDidRequestCustomDataForKey_(v11, v17, v16);

  if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_msgSend_pigmentNamed_(MEMORY[0x277D2C0B0], v19, v18), (v21 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v22 = [NTKParmesanPigmentProviderCoordinator alloc];
    v24 = objc_msgSend_initWithSelectedStyle_(v22, v23, style);
    v21 = objc_msgSend_defaultColorOptionForSlot_(v24, v25, @"style-color");
    v28 = objc_msgSend_JSONObjectRepresentation(v21, v26, v27);
    v31 = objc_msgSend_delegate(self, v29, v30);
    v33 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v32, style);
    v36 = objc_msgSend_stringValue(v33, v34, v35);
    objc_msgSend_faceViewDidUpdateCustomData_forKey_(v31, v37, v28, v36);
  }

  objc_msgSend_setPigmentEditOption_(v8, v20, v21);

  return v8;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if ((options - 12) > 7)
  {
    return 0;
  }

  else
  {
    return qword_278BA7568[options - 12];
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options refreshHandler:(id)handler
{
  optionCopy = option;
  optionsCopy = options;
  handlerCopy = handler;
  if ((objc_msgSend__needCustomSwatchImageForEditMode_(self, v13, mode) & 1) == 0)
  {
    v262.receiver = self;
    v262.super_class = NTKParmesanFaceView;
    v51 = [(NTKParmesanFaceView *)&v262 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
LABEL_12:
    v52 = v51;
    goto LABEL_53;
  }

  objc_msgSend__setupSwatchRefreshHandlerManagerIfNeeded(self, v14, v15);
  objc_msgSend__setupTimeFormatterIfNeeded(self, v16, v17);
  if ((objc_msgSend__validateEditOption_forMode_(self, v18, optionCopy, mode) & 1) == 0)
  {
    v261.receiver = self;
    v261.super_class = NTKParmesanFaceView;
    v51 = [(NTKParmesanFaceView *)&v261 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy refreshHandler:handlerCopy];
    goto LABEL_12;
  }

  v21 = 0;
  if (mode > 14)
  {
    if (mode == 15)
    {
      v77 = objc_msgSend_controller(self, v19, v20);
      v250 = objc_msgSend_typeface(v77, v78, v79);

      v82 = objc_msgSend_controller(self, v80, v81);
      v85 = objc_msgSend_numerals(v82, v83, v84);

      v246 = objc_msgSend_style(optionCopy, v86, v87);
      v40 = objc_msgSend__paletteForStyle_(self, v88, v246);
      v91 = objc_msgSend_controller(self, v89, v90);
      v94 = objc_msgSend_timeOption(v91, v92, v93);

      v96 = objc_msgSend__compositionKeyForCurrentCompositionWithTimeOption_numerals_(self, v95, v94, v85);
      v99 = objc_msgSend_timePalette(self, v97, v98);
      v21 = objc_msgSend__swatchKeyForStyle_stylePalette_timePalette_typeface_numerals_time_compositionSwatchKey_(self, v100, v246, v40, v99, v250, v85, v94, v96);

      goto LABEL_25;
    }

    if (mode != 19)
    {
      goto LABEL_26;
    }

    v53 = objc_msgSend_controller(self, v19, v20);
    v56 = objc_msgSend_typeface(v53, v54, v55);

    v59 = objc_msgSend_numeralOption(optionCopy, v57, v58);
    if (objc_msgSend_isPartiallySupported_(NTKParmesanNumeralsEditOption, v60, v59))
    {
      v63 = 0;
    }

    else
    {
      v63 = v56;
    }

    v40 = objc_msgSend_timePalette(self, v61, v62);
    objc_msgSend__swatchKeyForTypeface_numerals_palette_(self, v64, v63, v59, v40);
  }

  else
  {
    if (mode != 13)
    {
      if (mode != 14)
      {
        goto LABEL_26;
      }

      v22 = objc_msgSend_controller(self, v19, v20);
      v249 = objc_msgSend_typeface(v22, v23, v24);

      v27 = objc_msgSend_controller(self, v25, v26);
      v30 = objc_msgSend_numerals(v27, v28, v29);

      v33 = objc_msgSend_controller(self, v31, v32);
      v36 = objc_msgSend_contentEffect(v33, v34, v35);
      v245 = objc_msgSend_styleOption(v36, v37, v38);

      v40 = objc_msgSend__paletteForStyle_(self, v39, v245);
      v43 = objc_msgSend_time(optionCopy, v41, v42);
      if (objc_msgSend_isPartiallySupported_(NTKParmesanNumeralsEditOption, v44, v30))
      {
        v30 = 0;
        objc_msgSend__compositionKeyForCurrentCompositionWithTimeOption_numerals_(self, v45, v43, 0);
      }

      else
      {
        objc_msgSend__compositionKeyForCurrentCompositionWithTimeOption_numerals_(self, v45, v43, v30);
      }
      v46 = ;
      v49 = objc_msgSend_timePalette(self, v47, v48);
      v21 = objc_msgSend__swatchKeyForStyle_stylePalette_timePalette_typeface_numerals_time_compositionSwatchKey_(self, v50, v245, v40, v49, v249, v30, v43, v46);

      goto LABEL_25;
    }

    v65 = objc_msgSend_controller(self, v19, v20);
    v68 = objc_msgSend_numerals(v65, v66, v67);

    v71 = objc_msgSend_typeface(optionCopy, v69, v70);
    if (objc_msgSend_isPartiallySupported_(NTKParmesanNumeralsEditOption, v72, v68))
    {
      v75 = 0;
    }

    else
    {
      v75 = v68;
    }

    v40 = objc_msgSend_timePalette(self, v73, v74);
    objc_msgSend__swatchKeyForTypeface_numerals_palette_(self, v76, v71, v75, v40);
  }
  v21 = ;
LABEL_25:

LABEL_26:
  v101 = objc_msgSend_swatchRefreshHandlerManager(self, v19, v20);
  v104 = objc_msgSend_copy(handlerCopy, v102, v103);
  objc_msgSend_setHandler_forKey_(v101, v105, v104, v21);

  v107 = objc_msgSend_cachedSwatchForKey_(MEMORY[0x277D2C108], v106, v21);
  v52 = v107;
  if (!v107)
  {
    objc_msgSend_sizeForSwatchStyle_(MEMORY[0x277D2BFE8], v108, 3);
    if (mode > 14)
    {
      if (mode == 15)
      {
        v248 = optionCopy;
        v190 = objc_msgSend_style(v248, v188, v189);
        v244 = objc_msgSend__paletteForStyle_(self, v191, v190);
        v194 = objc_msgSend_controller(self, v192, v193);
        v241 = objc_msgSend_numerals(v194, v195, v196);

        v199 = objc_msgSend_controller(self, v197, v198);
        v202 = objc_msgSend_timeOption(v199, v200, v201);

        v203 = [NTKParmesanGalleryContentEffect alloc];
        v252 = objc_msgSend_initWithStyleOption_palette_(v203, v204, v190, v244);
        isPartiallySupported = objc_msgSend_isPartiallySupported_(NTKParmesanNumeralsEditOption, v205, v241);
        v209 = 3;
        if (!isPartiallySupported)
        {
          v209 = v202;
        }

        v238 = v209;
        v242 = objc_msgSend_controller(self, v207, v208);
        v236 = objc_msgSend_currentComposition(v242, v210, v211);
        v239 = objc_msgSend_controller(self, v212, v213);
        v235 = objc_msgSend_typeface(v239, v214, v215);
        v218 = objc_msgSend_controller(self, v216, v217);
        v221 = objc_msgSend_numerals(v218, v219, v220);
        v224 = objc_msgSend_timePalette(self, v222, v223);
        v139 = objc_msgSend__galleryViewWithComposition_timeOption_typeface_numerals_timePalette_contentEffect_(self, v225, v236, v238, v235, v221, v224, v252);

        v226 = MEMORY[0x277D2BFE8];
        v229 = objc_msgSend_swatchStyle(v248, v227, v228);

        objc_msgSend_sizeForSwatchStyle_(v226, v230, v229);
        v146 = v231;
        v148 = v232;

        v149 = v244;
LABEL_49:

        v187 = 0;
LABEL_50:
        if (v139)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_23BF35F2C;
          block[3] = &unk_278BA7548;
          v258 = v146;
          v259 = v148;
          v254 = v139;
          selfCopy = self;
          v256 = v21;
          v260 = v187;
          v257 = handlerCopy;
          v233 = v139;
          dispatch_async(MEMORY[0x277D85CD0], block);
        }

        goto LABEL_52;
      }

      if (mode != 19)
      {
        goto LABEL_52;
      }

      v150 = optionCopy;
      v153 = objc_msgSend_numeralOption(v150, v151, v152);
      v156 = objc_msgSend_controller(self, v154, v155);
      v159 = objc_msgSend_typeface(v156, v157, v158);

      if (objc_msgSend_isPartiallySupported_(NTKParmesanNumeralsEditOption, v160, v153))
      {
        v163 = 0;
      }

      else
      {
        v163 = v159;
      }

      v164 = objc_msgSend_timePalette(self, v161, v162);
      objc_msgSend__timeLabelWithTypeface_numerals_palette_(self, v165, v163, v153, v164);
    }

    else
    {
      if (mode != 13)
      {
        if (mode != 14)
        {
          goto LABEL_52;
        }

        v251 = optionCopy;
        v112 = objc_msgSend_time(v251, v110, v111);
        v115 = objc_msgSend_controller(self, v113, v114);
        v118 = objc_msgSend_numerals(v115, v116, v117);

        if (objc_msgSend_isPartiallySupported_(NTKParmesanNumeralsEditOption, v119, v118))
        {
          v122 = 0;
        }

        else
        {
          v122 = v118;
        }

        v240 = v122;
        v123 = objc_msgSend_controller(self, v120, v121);
        v247 = objc_msgSend_compositionForCurrentAssetWithTimeOption_numerals_(v123, v124, v112, v122);

        v243 = objc_msgSend_controller(self, v125, v126);
        v237 = objc_msgSend_typeface(v243, v127, v128);
        v131 = objc_msgSend_timePalette(self, v129, v130);
        v134 = objc_msgSend_controller(self, v132, v133);
        v137 = objc_msgSend_contentEffect(v134, v135, v136);
        v139 = objc_msgSend__galleryViewWithComposition_timeOption_typeface_numerals_timePalette_contentEffect_(self, v138, v247, v112, v237, v240, v131, v137);

        v140 = MEMORY[0x277D2BFE8];
        v143 = objc_msgSend_swatchStyle(v251, v141, v142);

        objc_msgSend_sizeForSwatchStyle_(v140, v144, v143);
        v146 = v145;
        v148 = v147;
        v149 = v247;
        goto LABEL_49;
      }

      v150 = optionCopy;
      v168 = objc_msgSend_typeface(v150, v166, v167);
      v171 = objc_msgSend_controller(self, v169, v170);
      v174 = objc_msgSend_numerals(v171, v172, v173);

      if (objc_msgSend_isPartiallySupported_(NTKParmesanNumeralsEditOption, v175, v174))
      {
        v178 = 0;
      }

      else
      {
        v178 = v174;
      }

      v164 = objc_msgSend_timePalette(self, v176, v177);
      objc_msgSend__timeLabelWithTypeface_numerals_palette_(self, v179, v168, v178, v164);
    }
    v139 = ;

    v180 = MEMORY[0x277D2BFE8];
    v183 = objc_msgSend_swatchStyle(v150, v181, v182);

    objc_msgSend_sizeForSwatchStyle_(v180, v184, v183);
    v146 = v185;
    v148 = v186;
    v187 = 1;
    goto LABEL_50;
  }

  v109 = v107;
LABEL_52:

LABEL_53:

  return v52;
}

- (id)_compositionKeyForCurrentCompositionWithTimeOption:(int64_t)option numerals:(unint64_t)numerals
{
  v6 = objc_msgSend_controller(self, a2, option);
  v8 = objc_msgSend_compositionForCurrentAssetWithTimeOption_numerals_(v6, v7, option, numerals);

  if (v8)
  {
    v11 = objc_msgSend_swatchKey(v8, v9, v10);
  }

  else
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v9, option);
    v11 = objc_msgSend_stringWithFormat_(v12, v14, @"empty-composition-%@", v13);
  }

  return v11;
}

- (id)_swatchKeyForTypeface:(int64_t)typeface numerals:(unint64_t)numerals palette:(id)palette
{
  v7 = MEMORY[0x277CCACA8];
  v8 = MEMORY[0x277CCABB0];
  paletteCopy = palette;
  v11 = objc_msgSend_numberWithInteger_(v8, v10, typeface);
  v13 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v12, numerals);
  v16 = objc_msgSend_identifier(paletteCopy, v14, v15);

  v18 = objc_msgSend_stringWithFormat_(v7, v17, @"parmesan-typeface-%@-numerals-%@-palette-%@", v11, v13, v16);

  return v18;
}

- (id)_swatchKeyForStyle:(int64_t)style stylePalette:(id)palette timePalette:(id)timePalette typeface:(int64_t)typeface numerals:(unint64_t)numerals time:(int64_t)time compositionSwatchKey:(id)key
{
  v36 = MEMORY[0x277CCACA8];
  v14 = MEMORY[0x277CCABB0];
  keyCopy = key;
  timePaletteCopy = timePalette;
  paletteCopy = palette;
  v19 = objc_msgSend_numberWithInteger_(v14, v18, style);
  v22 = objc_msgSend_identifier(paletteCopy, v20, v21);

  v25 = objc_msgSend_identifier(timePaletteCopy, v23, v24);

  v27 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v26, typeface);
  v29 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v28, numerals);
  v31 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v30, time);
  v33 = objc_msgSend_stringWithFormat_(v36, v32, @"parmesan-%@-%@-%@-%@-%@-%@-%@", v19, v22, v25, v27, v29, v31, keyCopy);

  return v33;
}

- (id)_timeLabelWithTypeface:(int64_t)typeface numerals:(unint64_t)numerals palette:(id)palette
{
  v8 = MEMORY[0x277D2BFE8];
  paletteCopy = palette;
  objc_msgSend_sizeForSwatchStyle_(v8, v10, 4);
  v12 = v11;
  v14 = v13;
  v15 = *MEMORY[0x277CBF348];
  v16 = *(MEMORY[0x277CBF348] + 8);
  v17 = CLKLocaleNumberSystemFromNumeralOption();
  v20 = objc_msgSend_swatchTimeFormatter(self, v18, v19);
  objc_msgSend_setForcedNumberSystem_(v20, v21, v17);

  v24 = objc_msgSend_swatchTimeFormatter(self, v22, v23);
  v25 = NTKIdealizedDate();
  objc_msgSend_setOverrideDate_(v24, v26, v25);

  v27 = [NTKParmesanSwatchTimeLabel alloc];
  v30 = objc_msgSend_initWithFrame_(v27, v28, v29, v15, v16, v12, v14);
  v31 = [NTKParmesanTimeLayout alloc];
  v33 = objc_msgSend_initWithAlignment_scale_(v31, v32, 0, 1);
  v36 = objc_msgSend_device(self, v34, v35);
  objc_msgSend_prepareForSwatchWithLayout_typeface_complicationVisibility_palette_numerals_device_(v30, v37, v33, typeface, 0, paletteCopy, numerals, v36);

  v40 = objc_msgSend_swatchTimeFormatter(self, v38, v39);
  v43 = objc_msgSend_timeText(v40, v41, v42);
  objc_msgSend_setText_(v30, v44, v43);

  objc_msgSend_setFrame_(v30, v45, v46, v15, v16, v12, v14);
  objc_msgSend_layoutIfNeeded(v30, v47, v48);
  objc_msgSend_setNeedsDisplay(v30, v49, v50);

  return v30;
}

- (id)_galleryViewWithComposition:(id)composition timeOption:(int64_t)option typeface:(int64_t)typeface numerals:(unint64_t)numerals timePalette:(id)palette contentEffect:(id)effect
{
  effectCopy = effect;
  paletteCopy = palette;
  compositionCopy = composition;
  v17 = [NTKParmesanGalleryView alloc];
  objc_msgSend_bounds(self, v18, v19);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v30 = objc_msgSend_device(self, v28, v29);
  v33 = objc_msgSend_timeLayout(compositionCopy, v31, v32);
  v35 = objc_msgSend_initWithFrame_device_typeface_numerals_timeOption_timeLayout_timePalette_(v17, v34, v30, typeface, numerals, option, v33, paletteCopy, v21, v23, v25, v27);

  objc_msgSend_setIsGeneratingSwatch_(v35, v36, 1);
  v39 = objc_msgSend_face_timeView(v35, v37, v38);
  v40 = NTKIdealizedDate();
  objc_msgSend_setOverrideDate_duration_(v39, v41, v40, 0.0);

  objc_msgSend_setComposition_(v35, v42, compositionCopy);
  objc_msgSend_setContentEffect_(v35, v43, effectCopy);

  objc_msgSend_setNeedsLayout(v35, v44, v45);
  objc_msgSend_setNeedsDisplay(v35, v46, v47);

  return v35;
}

- (void)_setupSwatchRefreshHandlerManagerIfNeeded
{
  v4 = objc_msgSend_swatchRefreshHandlerManager(self, a2, v2);

  if (!v4)
  {
    v6 = objc_alloc_init(MEMORY[0x277D2C100]);
    objc_msgSend_setSwatchRefreshHandlerManager_(self, v5, v6);
  }
}

- (void)_setupTimeFormatterIfNeeded
{
  v4 = objc_msgSend_swatchTimeFormatter(self, a2, v2);

  if (!v4)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBBBA8]);
    objc_msgSend_setSwatchTimeFormatter_(self, v5, v6);
  }
}

- (BOOL)_validateEditOption:(id)option forMode:(int64_t)mode
{
  optionCopy = option;
  if (mode - 13) <= 6 && ((0x47u >> (mode - 13)))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

@end