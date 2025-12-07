@interface VFXBillboardConstraint
+ (id)billboardConstraint;
- (VFXBillboardConstraint)init;
- (VFXBillboardConstraint)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setFreeAxes:(unint64_t)axes;
- (void)setPreserveScale:(BOOL)scale;
@end

@implementation VFXBillboardConstraint

- (VFXBillboardConstraint)init
{
  v9.receiver = self;
  v9.super_class = VFXBillboardConstraint;
  v2 = [(VFXConstraint *)&v9 init];
  v4 = v2;
  if (v2)
  {
    v2->super._constraintRef = sub_1AF1501E8(v2, v3);
    objc_msgSend_setFreeAxes_(v4, v5, 7);
    v4->_preserveScale = sub_1AF151464(v4->super._constraintRef);
    objc_msgSend_didInitConstraintRef(v4, v6, v7);
  }

  return v4;
}

+ (id)billboardConstraint
{
  v2 = objc_alloc_init(VFXBillboardConstraint);

  return v2;
}

- (void)setFreeAxes:(unint64_t)axes
{
  self->_freeAxes = axes;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BCA84;
  v3[3] = &unk_1E7A7E248;
  v3[4] = self;
  v3[5] = axes;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)setPreserveScale:(BOOL)scale
{
  self->_preserveScale = scale;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BCB24;
  v3[3] = &unk_1E7A7E298;
  v3[4] = self;
  scaleCopy = scale;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyTo_(self, v5, v4);
  v8 = objc_msgSend_freeAxes(self, v6, v7);
  objc_msgSend_setFreeAxes_(v4, v9, v8);
  v12 = objc_msgSend_preserveScale(self, v10, v11);
  objc_msgSend_setPreserveScale_(v4, v13, v12);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = VFXBillboardConstraint;
  [(VFXConstraint *)&v7 encodeWithCoder:?];
  objc_msgSend_encodeInteger_forKey_(coder, v5, self->_freeAxes, @"freeAxes");
  objc_msgSend_encodeBool_forKey_(coder, v6, self->_preserveScale, @"preserveScale");
}

- (VFXBillboardConstraint)initWithCoder:(id)coder
{
  v20.receiver = self;
  v20.super_class = VFXBillboardConstraint;
  v6 = [(VFXConstraint *)&v20 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    v9 = objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    v6->super._constraintRef = sub_1AF1501E8(v9, v10);
    v12 = objc_msgSend_decodeIntegerForKey_(coder, v11, @"freeAxes");
    objc_msgSend_setFreeAxes_(v6, v13, v12);
    v15 = objc_msgSend_decodeBoolForKey_(coder, v14, @"preserveScale");
    objc_msgSend_setPreserveScale_(v6, v16, v15);
    objc_msgSend_finalizeDecodeConstraint_(v6, v17, coder);
    objc_msgSend_setImmediateMode_(VFXTransaction, v18, v7);
  }

  return v6;
}

@end