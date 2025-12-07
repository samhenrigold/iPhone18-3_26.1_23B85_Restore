@interface VFXDistanceConstraint
+ (id)distanceConstraint;
+ (id)distanceConstraintWithTarget:(id)target;
- (VFXDistanceConstraint)init;
- (VFXDistanceConstraint)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_customDecodingOfVFXDistanceConstraint:(id)constraint;
- (void)_customEncodingOfVFXDistanceConstraint:(id)constraint;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)setKeepTargetDirection:(BOOL)direction;
- (void)setMaximumDistance:(float)distance;
- (void)setMinimumDistance:(float)distance;
- (void)setTarget:(id)target;
- (void)setTargetDirection:(VFXDistanceConstraint *)self;
@end

@implementation VFXDistanceConstraint

- (VFXDistanceConstraint)init
{
  v13.receiver = self;
  v13.super_class = VFXDistanceConstraint;
  v2 = [(VFXConstraint *)&v13 init];
  v4 = v2;
  if (v2)
  {
    *&v5 = sub_1AF153BCC(v2, v3);
    v4->_maximumDistance = 3.4028e38;
    v4->super._constraintRef = v6;
    v4->_minimumDistance = 0.0;
    LODWORD(v4[1].super.super.isa) = 1135869952;
    objc_msgSend_localFront(VFXNode, v7, v8, v5);
    *&v4->_targetDirection[7] = v9;
    objc_msgSend_didInitConstraintRef(v4, v10, v11);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXDistanceConstraint;
  [(VFXConstraint *)&v3 dealloc];
}

+ (id)distanceConstraint
{
  v2 = objc_alloc_init(VFXDistanceConstraint);

  return v2;
}

+ (id)distanceConstraintWithTarget:(id)target
{
  v4 = objc_alloc_init(VFXDistanceConstraint);
  objc_msgSend_setTarget_(v4, v5, target);
  return v4;
}

- (void)setTarget:(id)target
{
  target = self->_target;
  if (target != target)
  {

    targetCopy = target;
    self->_target = targetCopy;
    if (targetCopy)
    {
      targetCopy = objc_msgSend_nodeRef(targetCopy, v7, v8);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF2BA1F0;
    v9[3] = &unk_1E7A7E248;
    v9[4] = self;
    v9[5] = targetCopy;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v9);
  }
}

- (void)setTargetDirection:(VFXDistanceConstraint *)self
{
  *&self->_targetDirection[7] = v2;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BA29C;
  v3[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v4 = v2;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"targetDirection", v3);
}

- (void)setKeepTargetDirection:(BOOL)direction
{
  self->_keepTargetDirection = direction;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BA34C;
  v3[3] = &unk_1E7A7E298;
  v3[4] = self;
  directionCopy = direction;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)setMinimumDistance:(float)distance
{
  self->_minimumDistance = distance;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BA400;
  v3[3] = &unk_1E7A7E270;
  v3[4] = self;
  *&v4 = distance;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"minimumDistance", v3);
}

- (void)setMaximumDistance:(float)distance
{
  self->_maximumDistance = distance;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BA4B4;
  v3[3] = &unk_1E7A7E270;
  v3[4] = self;
  *&v4 = distance;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"maximumDistance", v3);
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  if (!operation)
  {
    target = self->_target;
    if (target)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = sub_1AF2BA574;
      v6[3] = &unk_1E7A7C0C8;
      v6[4] = self;
      (*(block + 2))(block, target, 1, v6);
    }
  }

  objc_msgSend_enumerateAnimationReferencesUsingBlock_(self, target, block);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v7 = objc_msgSend_target(self, v5, v6);
  objc_msgSend_setTarget_(v4, v8, v7);
  objc_msgSend_maximumDistance(self, v9, v10);
  objc_msgSend_setMaximumDistance_(v4, v11, v12);
  objc_msgSend_minimumDistance(self, v13, v14);
  objc_msgSend_setMinimumDistance_(v4, v15, v16);
  objc_msgSend_copyTo_(self, v17, v4);
  return v4;
}

- (void)_customEncodingOfVFXDistanceConstraint:(id)constraint
{
  target = self->_target;
  if (target)
  {
    objc_msgSend_encodeObject_forKey_(constraint, a2, target, @"target");
  }
}

- (void)_customDecodingOfVFXDistanceConstraint:(id)constraint
{
  sub_1AF153BCC(self, a2);
  self->super._constraintRef = v5;
  v6 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(constraint, v7, v6, @"target");
  objc_msgSend_setTarget_(self, v9, v8);

  objc_msgSend_finalizeDecodeConstraint_(self, v10, constraint);
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = VFXDistanceConstraint;
  [(VFXConstraint *)&v10 encodeWithCoder:?];
  objc_msgSend__customEncodingOfVFXDistanceConstraint_(self, v5, coder);
  *&v6 = self->_minimumDistance;
  objc_msgSend_encodeFloat_forKey_(coder, v7, @"minimumDistance", v6);
  *&v8 = self->_maximumDistance;
  objc_msgSend_encodeFloat_forKey_(coder, v9, @"maximumDistance", v8);
}

- (VFXDistanceConstraint)initWithCoder:(id)coder
{
  v18.receiver = self;
  v18.super_class = VFXDistanceConstraint;
  v6 = [(VFXConstraint *)&v18 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    objc_msgSend__customDecodingOfVFXDistanceConstraint_(v6, v9, coder);
    objc_msgSend_decodeFloatForKey_(coder, v10, @"minimumDistance");
    objc_msgSend_setMinimumDistance_(v6, v11, v12);
    objc_msgSend_decodeFloatForKey_(coder, v13, @"maximumDistance");
    objc_msgSend_setMaximumDistance_(v6, v14, v15);
    objc_msgSend_setImmediateMode_(VFXTransaction, v16, v7);
  }

  return v6;
}

@end