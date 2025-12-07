@interface NTKUnity2025FaceViewComplicationFactory
- (BOOL)_convertCircularSlot:(id)slot toPosition:(int64_t *)position;
- (CGPoint)_circularComplicationCenterForSlot:(id)slot inFaceBounds:(CGRect)bounds;
- (CGPoint)circularComplicationDistanceFromCenter;
- (NTKFaceView)faceView;
- (id)initForDevice:(id)device;
- (id)keylineViewForComplicationSlot:(id)slot;
- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot faceView:(id)view;
- (int64_t)legacyLayoutOverrideforComplicationType:(unint64_t)type slot:(id)slot;
- (void)configureComplicationView:(id)view forSlot:(id)slot;
- (void)configureComplicationView:(id)view forSlot:(id)slot faceView:(id)faceView;
- (void)loadLayoutRules;
- (void)loadLayoutRulesForFaceView:(id)view;
@end

@implementation NTKUnity2025FaceViewComplicationFactory

- (id)initForDevice:(id)device
{
  v11.receiver = self;
  v11.super_class = NTKUnity2025FaceViewComplicationFactory;
  v3 = [(NTKFaceViewComplicationFactory *)&v11 initForDevice:device];
  v6 = v3;
  if (v3)
  {
    v7 = v3 + 10;
    v8 = objc_msgSend_device(v3, v4, v5);
    *v7 = sub_23C09C5B4(v8, v8);
    *(v6 + 11) = v9;
  }

  return v6;
}

- (id)keylineViewForComplicationSlot:(id)slot
{
  v3 = MEMORY[0x277D2C0D0];
  v4 = objc_msgSend_device(self, a2, slot);
  v6 = objc_msgSend_keylineViewForDevice_wide_expanded_(v3, v5, v4, 0, 1);

  return v6;
}

- (void)loadLayoutRulesForFaceView:(id)view
{
  viewCopy = view;
  objc_msgSend_bounds(viewCopy, v5, v6);
  objc_msgSend_device(self, v7, v8);
  v12 = v11 = viewCopy;
  v9 = v12;
  v10 = viewCopy;
  NTKEnumerateComplicationStates();
}

- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot faceView:(id)view
{
  v8 = MEMORY[0x277D2C0D0];
  viewCopy = view;
  slotCopy = slot;
  v13 = objc_msgSend_complicationType(complication, v11, v12);
  v15 = objc_msgSend_viewWithLegacyComplicationType_(v8, v14, v13);
  objc_msgSend__configureComplicationView_forSlot_(viewCopy, v16, v15, slotCopy);

  return v15;
}

- (void)configureComplicationView:(id)view forSlot:(id)slot faceView:(id)faceView
{
  viewCopy = view;
  slotCopy = slot;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = viewCopy;
    v15 = 0;
    if (objc_msgSend__convertCircularSlot_toPosition_(self, v10, slotCopy, &v15))
    {
      objc_msgSend_setPosition_(v9, v11, v15);
    }

    objc_msgSend_alpha(self, v11, v12);
    objc_msgSend_setAlpha_(v9, v13, v14);
  }
}

- (void)configureComplicationView:(id)view forSlot:(id)slot
{
  slotCopy = slot;
  viewCopy = view;
  v11 = objc_msgSend_faceView(self, v8, v9);
  objc_msgSend_configureComplicationView_forSlot_faceView_(self, v10, viewCopy, slotCopy, v11);
}

- (int64_t)legacyLayoutOverrideforComplicationType:(unint64_t)type slot:(id)slot
{
  slotCopy = slot;
  v9 = objc_msgSend_faceView(self, v7, v8);
  v11 = objc_msgSend_legacyLayoutOverrideforComplicationType_slot_faceView_(self, v10, type, slotCopy, v9);

  return v11;
}

- (void)loadLayoutRules
{
  v5 = objc_msgSend_faceView(self, a2, v2);
  objc_msgSend_loadLayoutRulesForFaceView_(self, v4, v5);
}

- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  slotCopy = slot;
  complicationCopy = complication;
  v12 = objc_msgSend_faceView(self, v10, v11);
  v14 = objc_msgSend_newLegacyViewForComplication_family_slot_faceView_(self, v13, complicationCopy, family, slotCopy, v12);

  return v14;
}

- (CGPoint)_circularComplicationCenterForSlot:(id)slot inFaceBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  slotCopy = slot;
  v10 = MEMORY[0x23EEC6400](x, y, width, height);
  v12 = v11;
  if (objc_msgSend_isEqualToString_(slotCopy, v13, *MEMORY[0x277D2BF08]))
  {
    v10 = v10 - self->_circularComplicationDistanceFromCenter.x;
    v12 = v12 - self->_circularComplicationDistanceFromCenter.y;
  }

  else if (objc_msgSend_isEqualToString_(slotCopy, v14, *MEMORY[0x277D2BEE8]))
  {
    v10 = v10 + self->_circularComplicationDistanceFromCenter.x;
    v12 = v12 + self->_circularComplicationDistanceFromCenter.y;
  }

  v15 = v10;
  v16 = v12;
  result.y = v16;
  result.x = v15;
  return result;
}

- (BOOL)_convertCircularSlot:(id)slot toPosition:(int64_t *)position
{
  slotCopy = slot;
  if (objc_msgSend_isEqualToString_(slotCopy, v6, *MEMORY[0x277D2BF08]))
  {
    v8 = 0;
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(slotCopy, v7, *MEMORY[0x277D2BEE8]))
    {
      v9 = 0;
      goto LABEL_7;
    }

    v8 = 1;
  }

  *position = v8;
  v9 = 1;
LABEL_7:

  return v9;
}

- (CGPoint)circularComplicationDistanceFromCenter
{
  x = self->_circularComplicationDistanceFromCenter.x;
  y = self->_circularComplicationDistanceFromCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (NTKFaceView)faceView
{
  WeakRetained = objc_loadWeakRetained(&self->_faceView);

  return WeakRetained;
}

@end