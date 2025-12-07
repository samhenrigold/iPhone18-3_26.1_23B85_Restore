@interface VFXLookAtConstraint
+ (id)lookAtConstraintWithTarget:(id)target;
- (VFXLookAtConstraint)initWithCoder:(id)coder;
- (VFXLookAtConstraint)initWithTarget:(id)target;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localFrontValue;
- (id)targetOffsetValue;
- (id)upVectorValue;
- (id)valueForKey:(id)key;
- (void)_customDecodingOfVFXLookAtConstraint:(id)constraint;
- (void)_customEncodingOfVFXLookAtConstraint:(id)constraint;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)setGimbalLockEnabled:(BOOL)enabled;
- (void)setLocalFront:(VFXLookAtConstraint *)self;
- (void)setLocalFrontValue:(id)value;
- (void)setTarget:(id)target;
- (void)setTargetOffset:(VFXLookAtConstraint *)self;
- (void)setTargetOffsetValue:(id)value;
- (void)setUpVectorValue:(id)value;
- (void)setValue:(id)value forKey:(id)key;
- (void)setWorldUp:(VFXLookAtConstraint *)self;
@end

@implementation VFXLookAtConstraint

- (VFXLookAtConstraint)initWithTarget:(id)target
{
  v11.receiver = self;
  v11.super_class = VFXLookAtConstraint;
  v4 = [(VFXConstraint *)&v11 init];
  if (v4)
  {
    targetCopy = target;
    v4->_target = targetCopy;
    if (targetCopy)
    {
      targetCopy = objc_msgSend_nodeRef(targetCopy, v6, v7);
    }

    v4->_gimbalLockEnabled = 0;
    *v4->_targetOffset = 0u;
    *v4->_localFront = xmmword_1AFE206C0;
    *v4->_upVector = xmmword_1AFE20160;
    v4->super._constraintRef = sub_1AF14F61C(targetCopy);
    objc_msgSend_didInitConstraintRef(v4, v8, v9);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXLookAtConstraint;
  [(VFXConstraint *)&v3 dealloc];
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
      v6[2] = sub_1AF2B9628;
      v6[3] = &unk_1E7A7C0C8;
      v6[4] = self;
      (*(block + 2))(block, target, 1, v6);
    }
  }

  objc_msgSend_enumerateAnimationReferencesUsingBlock_(self, target, block);
}

+ (id)lookAtConstraintWithTarget:(id)target
{
  v4 = [VFXLookAtConstraint alloc];
  v6 = objc_msgSend_initWithTarget_(v4, v5, target);

  return v6;
}

- (void)setGimbalLockEnabled:(BOOL)enabled
{
  self->_gimbalLockEnabled = enabled;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2B9714;
  v3[3] = &unk_1E7A7E298;
  v3[4] = self;
  enabledCopy = enabled;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v3);
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
    v9[2] = sub_1AF2B97F4;
    v9[3] = &unk_1E7A7E248;
    v9[4] = self;
    v9[5] = targetCopy;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v9);
  }
}

- (void)setTargetOffset:(VFXLookAtConstraint *)self
{
  *self->_targetOffset = v2;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2B98A0;
  v3[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v4 = v2;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"targetOffset", v3);
}

- (void)setWorldUp:(VFXLookAtConstraint *)self
{
  *self->_upVector = v2;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2B9954;
  v3[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v4 = v2;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"worldUp", v3);
}

- (void)setLocalFront:(VFXLookAtConstraint *)self
{
  *self->_localFront = v2;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2B9A10;
  v3[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v4 = v2;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"localFront", v3);
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"targetOffset"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_targetOffset(self, v5, v6);
  }

  else if (objc_msgSend_isEqualToString_(key, v5, @"localFront"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_localFront(self, v10, v11);
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(key, v10, @"worldUp"))
    {
      v15.receiver = self;
      v15.super_class = VFXLookAtConstraint;
      return [(VFXLookAtConstraint *)&v15 valueForKey:key];
    }

    v7 = MEMORY[0x1E696B098];
    objc_msgSend_worldUp(self, v12, v13);
  }

  return objc_msgSend_valueWithVFXFloat3_(v7, v8, v9);
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"targetOffset"))
  {
    objc_msgSend_VFXFloat3Value(value, v7, v8);

    objc_msgSend_setTargetOffset_(self, v9, v10);
  }

  else if (objc_msgSend_isEqualToString_(key, v7, @"localFront"))
  {
    objc_msgSend_VFXFloat3Value(value, v11, v12);

    objc_msgSend_setLocalFront_(self, v13, v14);
  }

  else if (objc_msgSend_isEqualToString_(key, v11, @"worldUp"))
  {
    objc_msgSend_VFXFloat3Value(value, v15, v16);

    MEMORY[0x1EEE66B58](self, sel_setWorldUp_, v17);
  }

  else
  {
    v18.receiver = self;
    v18.super_class = VFXLookAtConstraint;
    [(VFXLookAtConstraint *)&v18 setValue:value forKey:key];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithTarget_(v4, v5, self->_target);
  v9 = objc_msgSend_gimbalLockEnabled(self, v7, v8);
  objc_msgSend_setGimbalLockEnabled_(v6, v10, v9);
  objc_msgSend_targetOffset(self, v11, v12);
  objc_msgSend_setTargetOffset_(v6, v13, v14);
  objc_msgSend_upVector(self, v15, v16);
  objc_msgSend_setUpVector_(v6, v17, v18);
  objc_msgSend_localFront(self, v19, v20);
  objc_msgSend_setLocalFront_(v6, v21, v22);
  objc_msgSend_copyTo_(self, v23, v6);
  return v6;
}

- (void)_customEncodingOfVFXLookAtConstraint:(id)constraint
{
  target = self->_target;
  if (target)
  {
    objc_msgSend_encodeObject_forKey_(constraint, a2, target, @"target");
  }
}

- (void)_customDecodingOfVFXLookAtConstraint:(id)constraint
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(constraint, v6, v5, @"target");
  self->_target = v7;
  v10 = objc_msgSend_nodeRef(v7, v8, v9);
  self->super._constraintRef = sub_1AF14F61C(v10);

  objc_msgSend_finalizeDecodeConstraint_(self, v11, constraint);
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = VFXLookAtConstraint;
  [(VFXConstraint *)&v7 encodeWithCoder:?];
  objc_msgSend__customEncodingOfVFXLookAtConstraint_(self, v5, coder);
  objc_msgSend_encodeBool_forKey_(coder, v6, self->_gimbalLockEnabled, @"gimbalLockEnabled");
  sub_1AF371A8C(coder, @"targetOffset", *self->_targetOffset);
  sub_1AF371A8C(coder, @"upVector", *self->_upVector);
  sub_1AF371A8C(coder, @"localFront", *self->_localFront);
}

- (VFXLookAtConstraint)initWithCoder:(id)coder
{
  v36.receiver = self;
  v36.super_class = VFXLookAtConstraint;
  v6 = [(VFXConstraint *)&v36 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    objc_msgSend__customDecodingOfVFXLookAtConstraint_(v6, v9, coder);
    v11 = objc_msgSend_decodeBoolForKey_(coder, v10, @"gimbalLockEnabled");
    objc_msgSend_setGimbalLockEnabled_(v6, v12, v11);
    if (objc_msgSend_containsValueForKey_(coder, v13, @"targetOffset"))
    {
      v15 = sub_1AF371BC4(coder, @"targetOffset");
      objc_msgSend_setTargetOffset_(v6, v16, v17, v15);
    }

    if (objc_msgSend_containsValueForKey_(coder, v14, @"upVector"))
    {
      v20 = sub_1AF371BC4(coder, @"upVector");
    }

    else
    {
      v20 = 0.0078125;
    }

    objc_msgSend_setUpVector_(v6, v18, v19, v20);
    if (objc_msgSend_containsValueForKey_(coder, v21, @"localFront"))
    {
      v24 = sub_1AF371BC4(coder, @"localFront");
      objc_msgSend_setLocalFront_(v6, v25, v26, v24);
    }

    else
    {
      objc_msgSend_setUpVector_(v6, v22, v23, 0.0);
    }

    objc_msgSend_upVector(v6, v27, v28);
    if (VFXVector3EqualToVector3(v29, 0))
    {
      objc_msgSend_setUpVector_(v6, v30, v31, 0.0078125);
    }

    objc_msgSend_localFront(v6, v30, v31);
    if (VFXVector3EqualToVector3(v32, 0))
    {
      objc_msgSend_setLocalFront_(v6, v33, v34, 0.0);
    }

    objc_msgSend_setImmediateMode_(VFXTransaction, v33, v7);
  }

  return v6;
}

- (id)targetOffsetValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_targetOffset(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_targetOffset(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_targetOffset(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

- (void)setTargetOffsetValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v21 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(value, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v20 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);

  objc_msgSend_setTargetOffset_(self, v18, v19, COERCE_DOUBLE(__PAIR64__(v20, v21)));
}

- (id)localFrontValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_localFront(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_localFront(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_localFront(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

- (void)setLocalFrontValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v21 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(value, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v20 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);

  objc_msgSend_setLocalFront_(self, v18, v19, COERCE_DOUBLE(__PAIR64__(v20, v21)));
}

- (id)upVectorValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_upVector(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_upVector(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_upVector(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

- (void)setUpVectorValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v21 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(value, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v20 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);

  objc_msgSend_setUpVector_(self, v18, v19, COERCE_DOUBLE(__PAIR64__(v20, v21)));
}

@end