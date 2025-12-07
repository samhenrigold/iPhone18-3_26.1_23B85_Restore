@interface VFXLOD
+ (id)levelOfDetailWithModel:(id)model screenSpaceRadius:(float)radius;
+ (id)levelOfDetailWithModel:(id)model worldSpaceDistance:(float)distance;
- (VFXLOD)initWithCoder:(id)coder;
- (VFXLOD)initWithModel:(id)model thresholdMode:(int64_t)mode lod:(__CFXLOD *)lod;
- (VFXLOD)initWithModel:(id)model thresholdMode:(int64_t)mode thresholdValue:(id)value;
- (float)screenSpaceRadius;
- (float)worldSpaceDistance;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)thresholdValue;
- (void)_customEncodingOfVFXLOD:(id)d;
- (void)_didDecodeVFXLOD:(id)d;
- (void)_setupWithModel:(id)model thresholdMode:(int64_t)mode value:(float)value;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VFXLOD

- (void)dealloc
{
  lod = self->_lod;
  if (lod)
  {
    CFRelease(lod);
    self->_lod = 0;
  }

  v4.receiver = self;
  v4.super_class = VFXLOD;
  [(VFXLOD *)&v4 dealloc];
}

- (void)_setupWithModel:(id)model thresholdMode:(int64_t)mode value:(float)value
{
  model = self->_model;
  if (model != model)
  {

    self->_model = model;
  }

  self->_mode = mode;
  v10 = objc_msgSend___CFObject(model, a2, model);
  self->_lod = sub_1AF1A0910(v10, mode, value);
}

- (VFXLOD)initWithModel:(id)model thresholdMode:(int64_t)mode lod:(__CFXLOD *)lod
{
  v10.receiver = self;
  v10.super_class = VFXLOD;
  v7 = [(VFXLOD *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_mode = mode;
    if (lod)
    {
      v7->_lod = CFRetain(lod);
    }

    v8->_mode = mode;
  }

  return v8;
}

- (VFXLOD)initWithModel:(id)model thresholdMode:(int64_t)mode thresholdValue:(id)value
{
  v14.receiver = self;
  v14.super_class = VFXLOD;
  v10 = [(VFXLOD *)&v14 init];
  if (v10)
  {
    objc_msgSend_doubleValue(value, v8, v9);
    *&v11 = v11;
    objc_msgSend__setupWithModel_thresholdMode_value_(v10, v12, model, mode, v11);
  }

  return v10;
}

+ (id)levelOfDetailWithModel:(id)model screenSpaceRadius:(float)radius
{
  v6 = objc_alloc_init(VFXLOD);
  *&v7 = radius;
  objc_msgSend__setupWithModel_thresholdMode_value_(v6, v8, model, 1, v7);

  return v6;
}

+ (id)levelOfDetailWithModel:(id)model worldSpaceDistance:(float)distance
{
  v6 = objc_alloc_init(VFXLOD);
  *&v7 = distance;
  objc_msgSend__setupWithModel_thresholdMode_value_(v6, v8, model, 0, v7);

  return v6;
}

- (id)thresholdValue
{
  v4 = sub_1AF1A0A40(self->_lod, a2);
  v5 = MEMORY[0x1E696AD98];
  v6 = v4;

  return objc_msgSend_numberWithDouble_(v5, v2, v3, v6);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  model = self->_model;

  return MEMORY[0x1EEE66B58](v4, sel_initWithModel_thresholdMode_lod_, model);
}

- (float)screenSpaceRadius
{
  if (self->_mode == 1)
  {
    return sub_1AF1A0A40(self->_lod, a2);
  }

  else
  {
    return 0.0;
  }
}

- (float)worldSpaceDistance
{
  if (self->_mode)
  {
    return 0.0;
  }

  else
  {
    return sub_1AF1A0A40(self->_lod, a2);
  }
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_model(self, a2, v2);
  v7 = sub_1AF1A0A40(self->_lod, v6);
  return objc_msgSend_stringWithFormat_(v4, v8, @"levelOfDetail <%p>: model:%@ threshold:%f useDistance:%d", self, v5, *&v7, self->_mode == 0);
}

- (void)_customEncodingOfVFXLOD:(id)d
{
  v4 = MEMORY[0x1E696AD98];
  v5 = sub_1AF1A0A40(self->_lod, a2);
  v9 = objc_msgSend_numberWithDouble_(v4, v6, v7, v5);

  objc_msgSend_encodeObject_forKey_(d, v8, v9, @"threshold");
}

- (void)_didDecodeVFXLOD:(id)d
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(d, v6, v5, @"threshold");
  objc_msgSend_doubleValue(v7, v8, v9);
  *&v11 = v11;
  mode = self->_mode;
  model = self->_model;

  objc_msgSend__setupWithModel_thresholdMode_value_(self, v10, model, mode, v11);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend__customEncodingOfVFXLOD_(self, a2, coder);
  objc_msgSend_encodeInteger_forKey_(coder, v5, self->_mode, @"mode");
  model = self->_model;
  if (model)
  {

    objc_msgSend_encodeObject_forKey_(coder, v6, model, @"model");
  }
}

- (VFXLOD)initWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = VFXLOD;
  v6 = [(VFXLOD *)&v15 init];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    v6->_mode = objc_msgSend_decodeIntegerForKey_(coder, v9, @"mode");
    v10 = objc_opt_class();
    v6->_model = objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"model");
    objc_msgSend__didDecodeVFXLOD_(v6, v12, coder);
    objc_msgSend_setImmediateMode_(VFXTransaction, v13, v7);
  }

  return v6;
}

@end