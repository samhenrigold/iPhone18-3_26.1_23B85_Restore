@interface VFXReplicatorConstraint
+ (id)replicatorConstraint;
+ (id)replicatorConstraintWithTarget:(id)target;
- (VFXReplicatorConstraint)init;
- (VFXReplicatorConstraint)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)valueForKey:(id)key;
- (void)_customDecodingOfVFXReplicatorConstraint:(id)constraint;
- (void)_customEncodingOfVFXReplicatorConstraint:(id)constraint;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)setOrientationOffset:(__n128 *)offset;
- (void)setPositionOffset:(VFXReplicatorConstraint *)self;
- (void)setReplicatesOrientation:(BOOL)orientation;
- (void)setReplicatesPosition:(BOOL)position;
- (void)setReplicatesScale:(BOOL)scale;
- (void)setScaleOffset:(VFXReplicatorConstraint *)self;
- (void)setTarget:(id)target;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation VFXReplicatorConstraint

- (VFXReplicatorConstraint)init
{
  v14.receiver = self;
  v14.super_class = VFXReplicatorConstraint;
  v2 = [(VFXConstraint *)&v14 init];
  v4 = v2;
  if (v2)
  {
    sub_1AF155220(v2, v3);
    v4->super._constraintRef = v5;
    v4->_replicateOrientation = 1;
    v4->_replicatePosition = 1;
    v4->_replicateScale = 1;
    *v4->_anon_60 = xmmword_1AFE201A0;
    *v4->_positionOffset = 0u;
    __asm { FMOV            V0.4S, #1.0 }

    *v4->_scaleOffset = _Q0;
    objc_msgSend_didInitConstraintRef(v4, v11, v12);
  }

  return v4;
}

+ (id)replicatorConstraint
{
  v2 = objc_alloc_init(VFXReplicatorConstraint);

  return v2;
}

+ (id)replicatorConstraintWithTarget:(id)target
{
  v4 = objc_msgSend_replicatorConstraint(self, a2, target);
  objc_msgSend_setTarget_(v4, v5, target);
  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v7 = objc_msgSend_target(self, v5, v6);
  objc_msgSend_setTarget_(v4, v8, v7);
  v11 = objc_msgSend_replicatesOrientation(self, v9, v10);
  objc_msgSend_setReplicatesOrientation_(v4, v12, v11);
  v15 = objc_msgSend_replicatesPosition(self, v13, v14);
  objc_msgSend_setReplicatesPosition_(v4, v16, v15);
  v19 = objc_msgSend_replicatesScale(self, v17, v18);
  objc_msgSend_setReplicatesScale_(v4, v20, v19);
  objc_msgSend_orientationOffset(self, v21, v22);
  objc_msgSend_setOrientationOffset_(v4, v23, v24);
  objc_msgSend_positionOffset(self, v25, v26);
  objc_msgSend_setPositionOffset_(v4, v27, v28);
  objc_msgSend_scaleOffset(self, v29, v30);
  objc_msgSend_setScaleOffset_(v4, v31, v32);
  objc_msgSend_copyTo_(self, v33, v4);
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
    v9[2] = sub_1AF2BAA6C;
    v9[3] = &unk_1E7A7E248;
    v9[4] = self;
    v9[5] = targetCopy;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v9);
  }
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
      v6[2] = sub_1AF2BAB34;
      v6[3] = &unk_1E7A7C0C8;
      v6[4] = self;
      (*(block + 2))(block, target, 1, v6);
    }
  }

  objc_msgSend_enumerateAnimationReferencesUsingBlock_(self, target, block);
}

- (void)setReplicatesOrientation:(BOOL)orientation
{
  self->_replicateOrientation = orientation;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BABCC;
  v3[3] = &unk_1E7A7E298;
  v3[4] = self;
  orientationCopy = orientation;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)setReplicatesPosition:(BOOL)position
{
  self->_replicatePosition = position;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BAC7C;
  v3[3] = &unk_1E7A7E298;
  v3[4] = self;
  positionCopy = position;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)setReplicatesScale:(BOOL)scale
{
  self->_replicateScale = scale;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BAD2C;
  v3[3] = &unk_1E7A7E298;
  v3[4] = self;
  scaleCopy = scale;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
}

- (void)setOrientationOffset:(__n128 *)offset
{
  offset[6] = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF2BADE0;
  v4[3] = &unk_1E7A7E5C8;
  offsetCopy = offset;
  v5 = a2;
  return objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, v2, offset, @"orientationOffset", v4);
}

- (void)setPositionOffset:(VFXReplicatorConstraint *)self
{
  *self->_positionOffset = v2;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BAE94;
  v3[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v4 = v2;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"positionOffset", v3);
}

- (void)setScaleOffset:(VFXReplicatorConstraint *)self
{
  *self->_scaleOffset = v2;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BAF48;
  v3[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v4 = v2;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"scaleOffset", v3);
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"positionOffset"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_positionOffset(self, v5, v6);
LABEL_3:

    return objc_msgSend_valueWithVFXFloat3_(v7, v8, v9);
  }

  if (!objc_msgSend_isEqualToString_(key, v5, @"orientationOffset"))
  {
    if (!objc_msgSend_isEqualToString_(key, v11, @"scaleOffset"))
    {
      v18.receiver = self;
      v18.super_class = VFXReplicatorConstraint;
      return [(VFXReplicatorConstraint *)&v18 valueForKey:key];
    }

    v7 = MEMORY[0x1E696B098];
    objc_msgSend_scaleOffset(self, v16, v17);
    goto LABEL_3;
  }

  v13 = MEMORY[0x1E696B098];
  objc_msgSend_orientationOffset(self, v11, v12);

  return objc_msgSend_valueWithVFXFloat4_(v13, v14, v15);
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"positionOffset"))
  {
    objc_msgSend_VFXFloat3Value(value, v7, v8);

    objc_msgSend_setPositionOffset_(self, v9, v10);
  }

  else if (objc_msgSend_isEqualToString_(key, v7, @"orientationOffset"))
  {
    objc_msgSend_VFXFloat4Value(value, v11, v12);

    objc_msgSend_setOrientationOffset_(self, v13, v14);
  }

  else if (objc_msgSend_isEqualToString_(key, v11, @"scaleOffset"))
  {
    objc_msgSend_VFXFloat3Value(value, v15, v16);

    objc_msgSend_setScaleOffset_(self, v17, v18);
  }

  else
  {
    v19.receiver = self;
    v19.super_class = VFXReplicatorConstraint;
    [(VFXReplicatorConstraint *)&v19 setValue:value forKey:key];
  }
}

- (void)_customEncodingOfVFXReplicatorConstraint:(id)constraint
{
  target = self->_target;
  if (target)
  {
    objc_msgSend_encodeObject_forKey_(constraint, a2, target, @"target");
  }
}

- (void)_customDecodingOfVFXReplicatorConstraint:(id)constraint
{
  sub_1AF155220(self, a2);
  self->super._constraintRef = v5;
  v6 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(constraint, v7, v6, @"target");
  objc_msgSend_setTarget_(self, v9, v8);

  objc_msgSend_finalizeDecodeConstraint_(self, v10, constraint);
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = VFXReplicatorConstraint;
  [(VFXConstraint *)&v9 encodeWithCoder:?];
  objc_msgSend__customEncodingOfVFXReplicatorConstraint_(self, v5, coder);
  objc_msgSend_encodeBool_forKey_(coder, v6, self->_replicateOrientation, @"replicatesOrientation");
  objc_msgSend_encodeBool_forKey_(coder, v7, self->_replicateScale, @"replicatesScale");
  objc_msgSend_encodeBool_forKey_(coder, v8, self->_replicatePosition, @"replicatesPosition");
  sub_1AF371AF4(coder, @"orientationOffset", *self->_anon_60);
  sub_1AF371A8C(coder, @"positionOffset", *self->_positionOffset);
  sub_1AF371A8C(coder, @"scaleOffset", *self->_scaleOffset);
}

- (VFXReplicatorConstraint)initWithCoder:(id)coder
{
  v30.receiver = self;
  v30.super_class = VFXReplicatorConstraint;
  v6 = [(VFXConstraint *)&v30 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    objc_msgSend__customDecodingOfVFXReplicatorConstraint_(v6, v9, coder);
    v11 = objc_msgSend_decodeBoolForKey_(coder, v10, @"replicatesOrientation");
    objc_msgSend_setReplicatesOrientation_(v6, v12, v11);
    v14 = objc_msgSend_decodeBoolForKey_(coder, v13, @"replicatesScale");
    objc_msgSend_setReplicatesScale_(v6, v15, v14);
    v17 = objc_msgSend_decodeBoolForKey_(coder, v16, @"replicatesPosition");
    objc_msgSend_setReplicatesPosition_(v6, v18, v17);
    *&v19 = sub_1AF371C0C(coder, @"orientationOffset").n128_u64[0];
    objc_msgSend_setOrientationOffset_(v6, v20, v21, v19);
    v22 = sub_1AF371BC4(coder, @"positionOffset");
    objc_msgSend_setPositionOffset_(v6, v23, v24, v22);
    v25 = sub_1AF371BC4(coder, @"scaleOffset");
    objc_msgSend_setScaleOffset_(v6, v26, v27, v25);
    objc_msgSend_setImmediateMode_(VFXTransaction, v28, v7);
  }

  return v6;
}

@end