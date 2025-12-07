@interface NTKParmesanFaceViewComplicationFactory
+ ($F24F406B2B787EFB06265DBA3D28CBD5)transitionFadeInRange;
+ ($F24F406B2B787EFB06265DBA3D28CBD5)transitionFadeOutRange;
+ (int64_t)parmesanSlotForSlot:(id)slot alignment:(int64_t)alignment;
- (CGSize)_edgeGapForState:(int64_t)state;
- (NTKFaceView)faceView;
- (NTKParmesanFaceViewComplicationFactory)initWithFaceView:(id)view device:(id)device;
- (double)_keylinePaddingForState:(int64_t)state;
- (id)_slotForParmesanSlot:(int64_t)slot;
- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)newViewForComplication:(id)complication family:(int64_t)family forSlot:(id)slot;
- (void)_applyAlignmentForLayout:(id)layout;
- (void)_setPlacementforComplicationView:(id)view;
- (void)configureComplicationLayout:(id)layout forParmesanSlot:(int64_t)slot withBounds:(CGRect)bounds forState:(int64_t)state;
- (void)configureComplicationView:(id)view forSlot:(id)slot;
- (void)loadLayoutRules;
- (void)transitioningFromParmesanTimeLayout:(id)layout toParmesanTimeLayout:(id)timeLayout withProgress:(double)progress;
@end

@implementation NTKParmesanFaceViewComplicationFactory

- (NTKParmesanFaceViewComplicationFactory)initWithFaceView:(id)view device:(id)device
{
  v17[2] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  deviceCopy = device;
  v16.receiver = self;
  v16.super_class = NTKParmesanFaceViewComplicationFactory;
  v8 = [(NTKFaceViewComplicationFactory *)&v16 initForDevice:deviceCopy];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_setFaceView_(v8, v9, viewCopy);
    objc_storeStrong(&v10->_device, device);
    v11 = *MEMORY[0x277D2BED0];
    v17[0] = *MEMORY[0x277D2BF00];
    v17[1] = v11;
    v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, v17, 2);
    objc_msgSend_setSupportedComplicationSlots_(v10, v14, v13);

    v10->_alignment = 0;
  }

  return v10;
}

- (void)configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = MEMORY[0x277D74410];
  if (isKindOfClass)
  {
    v8 = viewCopy;
    objc_msgSend__setPlacementforComplicationView_(self, v9, v8);
    v12 = objc_msgSend_device(self, v10, v11);
    NTKUtilityComplicationFontSize();
    objc_msgSend_setFontSize_(v8, v13, v14);

    v17 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v15, v16);
    objc_msgSend_setForegroundColor_(v8, v18, v17);

    objc_msgSend_setForegroundAlpha_(v8, v19, v20, 1.0);
    objc_msgSend_setFontWeight_(v8, v21, v22, *v7);
    objc_msgSend_setUseRoundedFontDesign_(v8, v23, 0);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = viewCopy;
    objc_msgSend_setTextLayoutStyle_(v24, v25, 0);
    v28 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v26, v27);
    objc_msgSend_setTextColor_(v24, v29, v28);

    v32 = objc_msgSend_device(self, v30, v31);
    NTKUtilityComplicationFontSize();
    objc_msgSend_setFontSize_(v24, v33, v34);

    objc_msgSend_setFontWeight_(v24, v35, v36, *v7);
    if (CLKLayoutIsRTL())
    {
      objc_msgSend_setImagePlacement_(v24, v37, 2);
    }

    else
    {
      objc_msgSend_setImagePlacement_(v24, v37, 1);
    }

    v40 = objc_msgSend_device(self, v38, v39);
    NTKUtilityComplicationLabelImagePadding();
    objc_msgSend_setImagePadding_(v24, v41, v42);

    v45 = objc_msgSend_device(self, v43, v44);
    _UtilitarianFlatImageSizeForDevice();

    objc_msgSend_setImageMaxSize_(v24, v46, v47, 0.0, 0.0);
    alignment = self->_alignment;
    if (alignment <= 2)
    {
      objc_msgSend_setTextAlignment_(v24, v48, qword_23C0010E0[alignment]);
    }
  }
}

- (void)loadLayoutRules
{
  v3 = objc_msgSend_faceView(self, a2, v2);
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    NTKEnumerateComplicationStates();
  }

  else
  {
    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF715C(v5);
    }
  }
}

- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  v8 = MEMORY[0x277D2C120];
  slotCopy = slot;
  complicationCopy = complication;
  v13 = objc_msgSend_complicationType(complicationCopy, v11, v12);
  v15 = objc_msgSend_smallComplicationViewForType_(v8, v14, v13);
  v17 = objc_msgSend_newViewForComplication_family_forSlot_(self, v16, complicationCopy, family, slotCopy);

  return v17;
}

- (id)newViewForComplication:(id)complication family:(int64_t)family forSlot:(id)slot
{
  complicationCopy = complication;
  slotCopy = slot;
  if (objc_msgSend_complicationType(complicationCopy, v10, v11) == 56)
  {
    v14 = objc_alloc(MEMORY[0x277D2C150]);
    v16 = objc_msgSend_initWithFamily_(v14, v15, family);
    objc_msgSend_configureComplicationView_forSlot_(self, v17, v16, slotCopy);
  }

  else
  {
    v18 = MEMORY[0x277D2C120];
    v19 = objc_msgSend_complicationType(complicationCopy, v12, v13);
    v16 = objc_msgSend_smallComplicationViewForType_(v18, v20, v19);
  }

  return v16;
}

- (id)_slotForParmesanSlot:(int64_t)slot
{
  if (slot > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_278BA6CD0 + slot);
  }

  return v4;
}

- (void)configureComplicationLayout:(id)layout forParmesanSlot:(int64_t)slot withBounds:(CGRect)bounds forState:(int64_t)state
{
  height = bounds.size.height;
  width = bounds.size.width;
  v12 = objc_msgSend_faceView(self, a2, layout, bounds.origin.x, bounds.origin.y);
  if (v12)
  {
    objc_msgSend__keylinePaddingForState_(self, v11, state);
    v14 = v13;
    objc_msgSend__edgeGapForState_(self, v15, state);
    v17 = v14 + v16;
    v19 = v14 + v18;
    sub_23BF1D5AC(self->_device, v38);
    v20 = v39;
    sub_23BF1D5AC(self->_device, v38);
    v21 = v40;
    sub_23BF1D5AC(self->_device, v38);
    v24 = 0;
    v25 = height - v21;
    v26 = width - v20;
    v27 = 0.0;
    if (slot > 2)
    {
      if (slot == 3)
      {
        v27 = v25 - v19;
        v17 = v26 - v17;
      }

      else
      {
        if (slot == 4)
        {
          v27 = v19 + v41;
          goto LABEL_19;
        }

        v28 = 0.0;
        if (slot != 5)
        {
          goto LABEL_21;
        }

        v27 = v25 - v19;
      }
    }

    else
    {
      if (!slot)
      {
        v27 = v19 + v41;
        v17 = v26 * 0.5;
        goto LABEL_19;
      }

      if (slot != 1)
      {
        v28 = 0.0;
        if (slot == 2)
        {
          v27 = v19 + v41;
          v17 = v26 - v17;
LABEL_19:
          v30 = MEMORY[0x277D2BF00];
          goto LABEL_20;
        }

LABEL_21:
        v31 = MEMORY[0x277D2BFC0];
        v32 = objc_msgSend_device(self, v22, v23);
        v34 = objc_msgSend_layoutRuleForDevice_withReferenceFrame_horizontalLayout_verticalLayout_keylinePadding_clip_(v31, v33, v32, 3, 3, 1, v28, v27, v20, v21, v14, v14, v14, v14);

        v36 = objc_msgSend_complicationLayoutforSlot_(v12, v35, v24);
        objc_msgSend_setDefaultLayoutRule_forState_(v36, v37, v34, state);

        goto LABEL_22;
      }

      v27 = v25 - v19;
      v17 = v26 * 0.5;
    }

    v30 = MEMORY[0x277D2BED0];
LABEL_20:
    v24 = *v30;
    v28 = v17;
    goto LABEL_21;
  }

  v29 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    sub_23BFF71A0(v29);
  }

LABEL_22:
}

- (CGSize)_edgeGapForState:(int64_t)state
{
  if ((state - 2) >= 2)
  {
    if (state == 1)
    {
      v3 = objc_msgSend_device(self, a2, 1);
      sub_23BF1D5AC(v3, &v8);
      v4 = v10;
    }

    else
    {
      v3 = objc_msgSend_device(self, a2, state);
      sub_23BF1D5AC(v3, &v8);
      v4 = v9;
    }
  }

  else
  {
    v3 = objc_msgSend_device(self, a2, state);
    sub_23BF1D5AC(v3, &v8);
    v4 = v11;
  }

  v7 = v4;

  v6 = *(&v7 + 1);
  v5 = *&v7;
  result.height = v6;
  result.width = v5;
  return result;
}

- (double)_keylinePaddingForState:(int64_t)state
{
  v3 = 0.0;
  if ((state & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    NTKKeylineWidth();
    v6 = v5;
    v9 = objc_msgSend_device(self, v7, v8);
    sub_23BF1D5AC(v9, v11);
    v3 = v6 + *v11;
  }

  return v3;
}

- (void)_setPlacementforComplicationView:(id)view
{
  viewCopy = view;
  v7 = viewCopy;
  alignment = self->_alignment;
  if (alignment == 2)
  {
    objc_msgSend_setPlacement_(viewCopy, v5, 2);
  }

  else
  {
    objc_msgSend_setPlacement_(viewCopy, v5, 8 * (alignment == 1));
  }
}

+ ($F24F406B2B787EFB06265DBA3D28CBD5)transitionFadeOutRange
{
  v2 = 0.0;
  v3 = 0.5;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

+ ($F24F406B2B787EFB06265DBA3D28CBD5)transitionFadeInRange
{
  v2 = 0.5;
  v3 = 1.0;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)transitioningFromParmesanTimeLayout:(id)layout toParmesanTimeLayout:(id)timeLayout withProgress:(double)progress
{
  layoutCopy = layout;
  timeLayoutCopy = timeLayout;
  if (progress >= 0.5)
  {
    v9 = timeLayoutCopy;
  }

  else
  {
    v9 = layoutCopy;
  }

  v10 = v9;
  v13 = objc_msgSend__complicationAlignment(v10, v11, v12);
  if (v13 != objc_msgSend_alignment(self, v14, v15))
  {
    objc_msgSend__applyAlignmentForLayout_(self, v16, v10);
  }
}

- (void)_applyAlignmentForLayout:(id)layout
{
  v4 = objc_msgSend__complicationAlignment(layout, a2, layout);
  objc_msgSend_setAlignment_(self, v5, v4);
  v10 = objc_msgSend_faceView(self, v6, v7);
  objc_msgSend__invalidateComplicationViews(v10, v8, v9);
}

+ (int64_t)parmesanSlotForSlot:(id)slot alignment:(int64_t)alignment
{
  slotCopy = slot;
  v6 = *MEMORY[0x277D2BF00];
  isEqualToString = objc_msgSend_isEqualToString_(slotCopy, v7, *MEMORY[0x277D2BF00]);
  if (alignment || (isEqualToString & 1) == 0)
  {
    v11 = *MEMORY[0x277D2BED0];
    v12 = objc_msgSend_isEqualToString_(slotCopy, v9, *MEMORY[0x277D2BED0]);
    if (alignment || (v12 & 1) == 0)
    {
      v14 = objc_msgSend_isEqualToString_(slotCopy, v13, v6);
      if (alignment == 1 && (v14 & 1) != 0)
      {
        v10 = 2;
      }

      else
      {
        v16 = objc_msgSend_isEqualToString_(slotCopy, v15, v11);
        if (alignment == 1 && (v16 & 1) != 0)
        {
          v10 = 3;
        }

        else
        {
          v18 = objc_msgSend_isEqualToString_(slotCopy, v17, v6);
          if (alignment == 2 && (v18 & 1) != 0)
          {
            v10 = 4;
          }

          else if (((alignment == 2) & objc_msgSend_isEqualToString_(slotCopy, v19, v11)) != 0)
          {
            v10 = 5;
          }

          else
          {
            v10 = 0;
          }
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NTKFaceView)faceView
{
  WeakRetained = objc_loadWeakRetained(&self->_faceView);

  return WeakRetained;
}

@end