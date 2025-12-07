@interface VFXAvoidOccluderConstraint
+ (id)avoidOccluderConstraint;
+ (id)avoidOccluderConstraintWithTarget:(id)target;
- (VFXAvoidOccluderConstraint)init;
- (VFXAvoidOccluderConstraint)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_customDecodingOfVFXAvoidOccluderConstraint:(id)constraint;
- (void)_customEncodingOfVFXAvoidOccluderConstraint:(id)constraint;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)setBias:(float)bias;
- (void)setDelegate:(id)delegate;
- (void)setOccluderCategoryBitMask:(unint64_t)mask;
- (void)setTarget:(id)target;
@end

@implementation VFXAvoidOccluderConstraint

- (VFXAvoidOccluderConstraint)init
{
  v9.receiver = self;
  v9.super_class = VFXAvoidOccluderConstraint;
  v2 = [(VFXConstraint *)&v9 init];
  v4 = v2;
  if (v2)
  {
    v5 = sub_1AF157E28(v2, v3);
    v4->_categoryBitMask = 1;
    v4->super._constraintRef = v5;
    v4->_offset = 0.00001;
    objc_msgSend_didInitConstraintRef(v4, v6, v7);
  }

  return v4;
}

- (void)dealloc
{
  if (self->_delegate)
  {
    v4 = objc_msgSend_worldRef(self->_target, a2, v2);
    if (v4)
    {
      v6 = v4;
      sub_1AF1CEA20(v4, v5);
      sub_1AF157274(self->super._constraintRef, 0);
      sub_1AF1CEA9C(v6, v7);
    }

    else
    {
      sub_1AF157274(self->super._constraintRef, 0);
    }
  }

  v8.receiver = self;
  v8.super_class = VFXAvoidOccluderConstraint;
  [(VFXConstraint *)&v8 dealloc];
}

+ (id)avoidOccluderConstraint
{
  v2 = objc_alloc_init(VFXAvoidOccluderConstraint);

  return v2;
}

+ (id)avoidOccluderConstraintWithTarget:(id)target
{
  v4 = objc_alloc_init(VFXAvoidOccluderConstraint);
  objc_msgSend_setTarget_(v4, v5, target);
  return v4;
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
      v6[2] = sub_1AF2BC224;
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
  v11 = objc_msgSend_occluderCategoryBitMask(self, v9, v10);
  objc_msgSend_setOccluderCategoryBitMask_(v4, v12, v11);
  objc_msgSend_bias(self, v13, v14);
  objc_msgSend_setBias_(v4, v15, v16);
  objc_msgSend_copyTo_(self, v17, v4);
  return v4;
}

- (void)setDelegate:(id)delegate
{
  if (self->_delegate != delegate)
  {
    self->_delegate = delegate;
    if (delegate)
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = sub_1AF2BC418;
      }

      else
      {
        v4 = 0;
      }

      v5 = (objc_opt_respondsToSelector() & 1) == 0;
      v7 = nullsub_187;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1AF2BC4A4;
      v13[3] = &unk_1E7A7E5F0;
      if (v5)
      {
        v7 = 0;
      }

      v13[4] = self;
      v13[5] = v4;
      v13[6] = v7;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v13);
    }

    else
    {
      v8 = objc_msgSend_worldRef(self->_target, a2, 0);
      if (v8)
      {
        v10 = v8;
        sub_1AF1CEA20(v8, v9);
        sub_1AF157274(self->super._constraintRef, 0);

        sub_1AF1CEA9C(v10, v11);
      }

      else
      {
        constraintRef = self->super._constraintRef;

        sub_1AF157274(constraintRef, 0);
      }
    }
  }
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
    v9[2] = sub_1AF2BC5C4;
    v9[3] = &unk_1E7A7E248;
    v9[4] = self;
    v9[5] = targetCopy;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v9);
  }
}

- (void)setOccluderCategoryBitMask:(unint64_t)mask
{
  self->_categoryBitMask = mask;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BC668;
  v3[3] = &unk_1E7A7E248;
  v3[4] = self;
  v3[5] = mask;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)setBias:(float)bias
{
  self->_offset = bias;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BC70C;
  v3[3] = &unk_1E7A7E270;
  v3[4] = self;
  *&v4 = bias;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)_customEncodingOfVFXAvoidOccluderConstraint:(id)constraint
{
  target = self->_target;
  if (target)
  {
    objc_msgSend_encodeObject_forKey_(constraint, a2, target, @"target");
  }
}

- (void)_customDecodingOfVFXAvoidOccluderConstraint:(id)constraint
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(constraint, v6, v5, @"target");
  self->_target = v7;
  v9 = sub_1AF157E28(v7, v8);
  self->super._constraintRef = v9;
  v12 = objc_msgSend_nodeRef(self->_target, v10, v11);
  sub_1AF15001C(v9, v12);

  objc_msgSend_finalizeDecodeConstraint_(self, v13, constraint);
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = VFXAvoidOccluderConstraint;
  [(VFXConstraint *)&v9 encodeWithCoder:?];
  objc_msgSend__customEncodingOfVFXAvoidOccluderConstraint_(self, v5, coder);
  objc_msgSend_encodeInteger_forKey_(coder, v6, self->_categoryBitMask, @"categoryBitMask");
  *&v7 = self->_offset;
  objc_msgSend_encodeFloat_forKey_(coder, v8, @"bias", v7);
}

- (VFXAvoidOccluderConstraint)initWithCoder:(id)coder
{
  v18.receiver = self;
  v18.super_class = VFXAvoidOccluderConstraint;
  v6 = [(VFXConstraint *)&v18 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    objc_msgSend__customDecodingOfVFXAvoidOccluderConstraint_(v6, v9, coder);
    v11 = objc_msgSend_decodeIntegerForKey_(coder, v10, @"categoryBitMask");
    objc_msgSend_setOccluderCategoryBitMask_(v6, v12, v11);
    objc_msgSend_decodeFloatForKey_(coder, v13, @"bias");
    objc_msgSend_setBias_(v6, v14, v15);
    objc_msgSend_setImmediateMode_(VFXTransaction, v16, v7);
  }

  return v6;
}

@end