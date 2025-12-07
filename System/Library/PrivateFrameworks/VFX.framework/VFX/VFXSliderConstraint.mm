@interface VFXSliderConstraint
+ (id)sliderConstraint;
- (VFXSliderConstraint)init;
- (VFXSliderConstraint)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)valueForKey:(id)key;
- (void)encodeWithCoder:(id)coder;
- (void)setCollisionCategoryBitMask:(unint64_t)mask;
- (void)setOffset:(VFXSliderConstraint *)self;
- (void)setRadius:(float)radius;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation VFXSliderConstraint

- (VFXSliderConstraint)init
{
  v9.receiver = self;
  v9.super_class = VFXSliderConstraint;
  v2 = [(VFXConstraint *)&v9 init];
  v4 = v2;
  if (v2)
  {
    v5 = sub_1AF157008(v2, v3);
    v4->_categoryBitMask = 0;
    v4->super._constraintRef = v5;
    v4->_radius = 1.0;
    objc_msgSend_didInitConstraintRef(v4, v6, v7);
  }

  return v4;
}

+ (id)sliderConstraint
{
  v2 = objc_alloc_init(VFXSliderConstraint);

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v7 = objc_msgSend_collisionCategoryBitMask(self, v5, v6);
  objc_msgSend_setCollisionCategoryBitMask_(v4, v8, v7);
  objc_msgSend_offset(self, v9, v10);
  objc_msgSend_setOffset_(v4, v11, v12);
  objc_msgSend_radius(self, v13, v14);
  objc_msgSend_setRadius_(v4, v15, v16);
  objc_msgSend_copyTo_(self, v17, v4);
  return v4;
}

- (void)setCollisionCategoryBitMask:(unint64_t)mask
{
  self->_categoryBitMask = mask;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BBBC8;
  v3[3] = &unk_1E7A7E248;
  v3[4] = self;
  v3[5] = mask;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)setRadius:(float)radius
{
  self->_radius = radius;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BBC74;
  v3[3] = &unk_1E7A7E270;
  v3[4] = self;
  *&v4 = radius;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"radius", v3);
}

- (void)setOffset:(VFXSliderConstraint *)self
{
  *self->_offset = v2;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BBD24;
  v3[3] = &unk_1E7A7E1D0;
  v3[4] = self;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"offset", v3);
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"offset"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_offset(self, v5, v6);

    return objc_msgSend_valueWithVFXFloat3_(v7, v8, v9);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = VFXSliderConstraint;
    return [(VFXSliderConstraint *)&v11 valueForKey:key];
  }
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"offset"))
  {
    objc_msgSend_VFXFloat3Value(value, v7, v8);

    objc_msgSend_setOffset_(self, v9, v10);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = VFXSliderConstraint;
    [(VFXSliderConstraint *)&v11 setValue:value forKey:key];
  }
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = VFXSliderConstraint;
  [(VFXConstraint *)&v8 encodeWithCoder:?];
  objc_msgSend_encodeInteger_forKey_(coder, v5, self->_categoryBitMask, @"collisionCategoryBitMask");
  *&v6 = self->_radius;
  objc_msgSend_encodeFloat_forKey_(coder, v7, @"radius", v6);
  sub_1AF371A8C(coder, @"offset", *self->_offset);
}

- (VFXSliderConstraint)initWithCoder:(id)coder
{
  v23.receiver = self;
  v23.super_class = VFXSliderConstraint;
  v6 = [(VFXConstraint *)&v23 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    v9 = objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    v6->super._constraintRef = sub_1AF157008(v9, v10);
    objc_msgSend_finalizeDecodeConstraint_(v6, v11, coder);
    v13 = objc_msgSend_decodeIntegerForKey_(coder, v12, @"collisionCategoryBitMask");
    objc_msgSend_setCollisionCategoryBitMask_(v6, v14, v13);
    objc_msgSend_decodeFloatForKey_(coder, v15, @"radius");
    objc_msgSend_setRadius_(v6, v16, v17);
    v18 = sub_1AF371BC4(coder, @"offset");
    objc_msgSend_setOffset_(v6, v19, v20, v18);
    objc_msgSend_setImmediateMode_(VFXTransaction, v21, v7);
  }

  return v6;
}

@end