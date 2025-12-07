@interface VFXAccelerationConstraint
+ (id)accelerationConstraint;
- (VFXAccelerationConstraint)init;
- (VFXAccelerationConstraint)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setDamping:(float)damping;
- (void)setDecelerationDistance:(float)distance;
- (void)setMaximumLinearAcceleration:(float)acceleration;
- (void)setMaximumLinearVelocity:(float)velocity;
@end

@implementation VFXAccelerationConstraint

- (VFXAccelerationConstraint)init
{
  v10.receiver = self;
  v10.super_class = VFXAccelerationConstraint;
  v2 = [(VFXConstraint *)&v10 init];
  v4 = v2;
  if (v2)
  {
    v5 = sub_1AF154184(v2, v3);
    v4->_maximumLinearAcceleration = 3.4028e38;
    v4->_maximumLinearVelocity = 3.4028e38;
    v4->super._constraintRef = v6;
    v4->_damping = 0.1;
    objc_msgSend_didInitConstraintRef(v4, v7, v8, v5);
  }

  return v4;
}

+ (id)accelerationConstraint
{
  v2 = objc_alloc_init(VFXAccelerationConstraint);

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_maximumLinearVelocity(self, v5, v6);
  objc_msgSend_setMaximumLinearVelocity_(v4, v7, v8);
  objc_msgSend_maximumLinearAcceleration(self, v9, v10);
  objc_msgSend_setMaximumLinearAcceleration_(v4, v11, v12);
  objc_msgSend_decelerationDistance(self, v13, v14);
  objc_msgSend_setDecelerationDistance_(v4, v15, v16);
  objc_msgSend_damping(self, v17, v18);
  objc_msgSend_setDamping_(v4, v19, v20);
  objc_msgSend_copyTo_(self, v21, v4);
  return v4;
}

- (void)setMaximumLinearVelocity:(float)velocity
{
  self->_maximumLinearVelocity = velocity;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BB634;
  v3[3] = &unk_1E7A7E270;
  v3[4] = self;
  *&v4 = velocity;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"maximumLinearVelocity", v3);
}

- (void)setMaximumLinearAcceleration:(float)acceleration
{
  self->_maximumLinearAcceleration = acceleration;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BB6E8;
  v3[3] = &unk_1E7A7E270;
  v3[4] = self;
  *&v4 = acceleration;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"maximumLinearAcceleration", v3);
}

- (void)setDecelerationDistance:(float)distance
{
  self->_decelerationDistance = distance;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BB78C;
  v3[3] = &unk_1E7A7E270;
  v3[4] = self;
  *&v4 = distance;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"decelerationDistance", v3);
}

- (void)setDamping:(float)damping
{
  self->_damping = damping;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BB850;
  v3[3] = &unk_1E7A7E270;
  v3[4] = self;
  *&v4 = damping;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"damping", v3);
}

- (void)encodeWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = VFXAccelerationConstraint;
  [(VFXConstraint *)&v13 encodeWithCoder:?];
  *&v5 = self->_maximumLinearVelocity;
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"maximumLinearVelocity", v5);
  *&v7 = self->_maximumLinearAcceleration;
  objc_msgSend_encodeFloat_forKey_(coder, v8, @"maximumLinearAcceleration", v7);
  *&v9 = self->_decelerationDistance;
  objc_msgSend_encodeFloat_forKey_(coder, v10, @"decelerationDistance", v9);
  *&v11 = self->_damping;
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"damping", v11);
}

- (VFXAccelerationConstraint)initWithCoder:(id)coder
{
  v28.receiver = self;
  v28.super_class = VFXAccelerationConstraint;
  v6 = [(VFXConstraint *)&v28 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    v9 = objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    v11 = sub_1AF154184(v9, v10);
    v6->super._constraintRef = v12;
    objc_msgSend_finalizeDecodeConstraint_(v6, v13, coder, v11);
    objc_msgSend_decodeFloatForKey_(coder, v14, @"maximumLinearVelocity");
    objc_msgSend_setMaximumLinearVelocity_(v6, v15, v16);
    objc_msgSend_decodeFloatForKey_(coder, v17, @"maximumLinearAcceleration");
    objc_msgSend_setMaximumLinearAcceleration_(v6, v18, v19);
    objc_msgSend_decodeFloatForKey_(coder, v20, @"decelerationDistance");
    objc_msgSend_setDecelerationDistance_(v6, v21, v22);
    objc_msgSend_decodeFloatForKey_(coder, v23, @"damping");
    objc_msgSend_setDamping_(v6, v24, v25);
    objc_msgSend_setImmediateMode_(VFXTransaction, v26, v7);
  }

  return v6;
}

@end