@interface VFXConstantScaleConstraint
+ (id)constantScaleConstraint;
- (VFXConstantScaleConstraint)init;
- (VFXConstantScaleConstraint)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setScale:(float)scale;
- (void)setScreenSpace:(BOOL)space;
@end

@implementation VFXConstantScaleConstraint

- (VFXConstantScaleConstraint)init
{
  v9.receiver = self;
  v9.super_class = VFXConstantScaleConstraint;
  v2 = [(VFXConstraint *)&v9 init];
  v4 = v2;
  if (v2)
  {
    v5 = sub_1AF151568(v2, v3);
    v4->_scale = 1.0;
    v4->super._constraintRef = v5;
    v4->_screenSpace = 1;
    objc_msgSend_didInitConstraintRef(v4, v6, v7);
  }

  return v4;
}

+ (id)constantScaleConstraint
{
  v2 = objc_alloc_init(VFXConstantScaleConstraint);

  return v2;
}

- (void)setScale:(float)scale
{
  self->_scale = scale;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BCE44;
  v3[3] = &unk_1E7A7E270;
  v3[4] = self;
  *&v4 = scale;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)setScreenSpace:(BOOL)space
{
  self->_screenSpace = space;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BCEF4;
  v3[3] = &unk_1E7A7E298;
  v3[4] = self;
  spaceCopy = space;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyTo_(self, v5, v4);
  v4[18] = LODWORD(self->_scale);
  *(v4 + 76) = self->_screenSpace;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = VFXConstantScaleConstraint;
  [(VFXConstraint *)&v8 encodeWithCoder:?];
  objc_msgSend_encodeBool_forKey_(coder, v5, self->_screenSpace, @"screenSpace");
  *&v6 = self->_scale;
  objc_msgSend_encodeFloat_forKey_(coder, v7, @"scale", v6);
}

- (VFXConstantScaleConstraint)initWithCoder:(id)coder
{
  v19.receiver = self;
  v19.super_class = VFXConstantScaleConstraint;
  v4 = [(VFXConstraint *)&v19 initWithCoder:?];
  v6 = v4;
  if (v4)
  {
    v4->super._constraintRef = sub_1AF151568(v4, v5);
    v9 = objc_msgSend_immediateMode(VFXTransaction, v7, v8);
    objc_msgSend_setImmediateMode_(VFXTransaction, v10, 1);
    v12 = objc_msgSend_decodeBoolForKey_(coder, v11, @"screenSpace");
    objc_msgSend_setScreenSpace_(v6, v13, v12);
    objc_msgSend_decodeFloatForKey_(coder, v14, @"scale");
    objc_msgSend_setScale_(v6, v15, v16);
    objc_msgSend_setImmediateMode_(VFXTransaction, v17, v9);
  }

  return v6;
}

@end