@interface VFXIKConstraint
+ (id)inverseKinematicsConstraintWithChainRootNode:(id)node;
- (VFXIKConstraint)init;
- (VFXIKConstraint)initWithChainRootNode:(id)node;
- (VFXIKConstraint)initWithCoder:(id)coder;
- (float)maxAllowedRotationAngleForJoint:(id)joint;
- (id)copyWithZone:(_NSZone *)zone;
- (id)jointForNode:(id)node;
- (id)targetPositionValue;
- (void)_customDecodingOfVFXIKConstraint:(id)constraint;
- (void)_customEncodingOfVFXIKConstraint:(id)constraint;
- (void)_didDecodeVFXIKConstraint:(id)constraint;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)setChainRootNode:(id)node;
- (void)setMaxAllowedRotationAngle:(float)angle forJoint:(id)joint;
- (void)setTargetPosition:(VFXIKConstraint *)self;
- (void)setTargetPositionValue:(id)value;
@end

@implementation VFXIKConstraint

- (VFXIKConstraint)init
{
  v10.receiver = self;
  v10.super_class = VFXIKConstraint;
  v2 = [(VFXConstraint *)&v10 init];
  v4 = v2;
  if (v2)
  {
    v2->super._constraintRef = sub_1AF1525A8(v2, v3);
    v4->_jointsPerNode = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v5, v6);
    objc_msgSend_didInitConstraintRef(v4, v7, v8);
  }

  return v4;
}

- (void)dealloc
{
  self->_chainRootNode = 0;

  v3.receiver = self;
  v3.super_class = VFXIKConstraint;
  [(VFXConstraint *)&v3 dealloc];
}

+ (id)inverseKinematicsConstraintWithChainRootNode:(id)node
{
  v4 = [self alloc];
  v6 = objc_msgSend_initWithChainRootNode_(v4, v5, node);

  return v6;
}

- (VFXIKConstraint)initWithChainRootNode:(id)node
{
  v4 = objc_msgSend_init(self, a2, node);
  v6 = v4;
  if (v4)
  {
    objc_msgSend_setChainRootNode_(v4, v5, node);
  }

  return v6;
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  if (!operation)
  {
    chainRootNode = self->_chainRootNode;
    if (chainRootNode)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = sub_1AF2BE358;
      v6[3] = &unk_1E7A7C0C8;
      v6[4] = self;
      (*(block + 2))(block, chainRootNode, 1, v6);
    }
  }

  objc_msgSend_enumerateAnimationReferencesUsingBlock_(self, chainRootNode, block);
}

- (void)setChainRootNode:(id)node
{
  if (self->_chainRootNode != node)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_chainRootNode = node;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2BE40C;
    v5[3] = &unk_1E7A7E220;
    v5[4] = self;
    v5[5] = node;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (void)setTargetPosition:(VFXIKConstraint *)self
{
  *self->_ikTarget = v2;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF2BE4EC;
  v3[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v4 = v2;
  objc_msgSend_postCommandWithObject_key_applyBlock_(VFXTransaction, a2, self, @"targetPosition", v3);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_targetPosition(self, v5, v6);
  objc_msgSend_setTargetPosition_(v4, v7, v8);
  v11 = objc_msgSend_chainRootNode(self, v9, v10);
  objc_msgSend_setChainRootNode_(v4, v12, v11);
  objc_msgSend_copyTo_(self, v13, v4);
  return v4;
}

- (id)jointForNode:(id)node
{
  v5 = objc_msgSend_valueWithPointer_(MEMORY[0x1E696B098], a2, node);
  v7 = objc_msgSend_objectForKey_(self->_jointsPerNode, v6, v5);
  if (!v7)
  {
    v7 = objc_alloc_init(VFXIKJoint);
    objc_msgSend_setJoint_(v7, v8, node);
    LODWORD(v9) = 1127481344;
    objc_msgSend_setMaxAllowedRotationAngle_(v7, v10, v11, v9);
    objc_msgSend_setObject_forKey_(self->_jointsPerNode, v12, v7, v5);
  }

  return v7;
}

- (void)setMaxAllowedRotationAngle:(float)angle forJoint:(id)joint
{
  v7 = objc_msgSend_jointForNode_(self, a2, joint);
  *&v8 = angle;
  objc_msgSend_setMaxAllowedRotationAngle_(v7, v9, v10, v8);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1AF2BE6A4;
  v12[3] = &unk_1E7A7E660;
  angleCopy = angle;
  v12[4] = self;
  v12[5] = joint;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v11, self, v12);
}

- (float)maxAllowedRotationAngleForJoint:(id)joint
{
  v3 = objc_msgSend_jointForNode_(self, a2, joint);
  if (!v3)
  {
    return 180.0;
  }

  objc_msgSend_maxAllowedRotationAngle(v3, v4, v5);
  return result;
}

- (void)_didDecodeVFXIKConstraint:(id)constraint
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, @"node%d", 0);
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(constraint, v8, v5, v7);
  if (v9)
  {
    v11 = v9;
    do
    {
      v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, @"angle%d", 0);
      objc_msgSend_decodeFloatForKey_(constraint, v13, v12);
      objc_msgSend_setMaxAllowedRotationAngle_forJoint_(self, v14, v11);
      v15 = objc_opt_class();
      v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v16, @"node%d", 0);
      v11 = objc_msgSend_decodeObjectOfClass_forKey_(constraint, v18, v15, v17);
    }

    while (v11);
  }
}

- (void)_customEncodingOfVFXIKConstraint:(id)constraint
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = objc_msgSend_allKeys(self->_jointsPerNode, a2, constraint);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v28, v32, 16);
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = *v29;
    do
    {
      v11 = 0;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = objc_msgSend_objectForKey_(self->_jointsPerNode, v7, *(*(&v28 + 1) + 8 * v11));
        objc_msgSend_maxAllowedRotationAngle(v12, v13, v14);
        v16 = v15;
        v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, @"angle%d", v9);
        LODWORD(v19) = v16;
        objc_msgSend_encodeFloat_forKey_(constraint, v20, v18, v19);
        v23 = objc_msgSend_joint(v12, v21, v22);
        v25 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v24, @"node%d", v9);
        objc_msgSend_encodeObject_forKey_(constraint, v26, v23, v25);
        v9 = (v9 + 1);
        ++v11;
      }

      while (v8 != v11);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v28, v32, 16);
    }

    while (v8);
  }

  sub_1AF371A8C(constraint, @"ikTarget", *self->_ikTarget);
}

- (void)_customDecodingOfVFXIKConstraint:(id)constraint
{
  self->super._constraintRef = sub_1AF1525A8(self, a2);
  v5 = sub_1AF371BC4(constraint, @"ikTarget");
  objc_msgSend_setTargetPosition_(self, v6, v7, v5);

  objc_msgSend_finalizeDecodeConstraint_(self, v8, constraint);
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = VFXIKConstraint;
  [(VFXConstraint *)&v8 encodeWithCoder:?];
  objc_msgSend__customEncodingOfVFXIKConstraint_(self, v5, coder);
  chainRootNode = self->_chainRootNode;
  if (chainRootNode)
  {
    objc_msgSend_encodeObject_forKey_(coder, v6, chainRootNode, @"chainRootNode");
  }
}

- (VFXIKConstraint)initWithCoder:(id)coder
{
  v17.receiver = self;
  v17.super_class = VFXIKConstraint;
  v6 = [(VFXConstraint *)&v17 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    objc_msgSend__customDecodingOfVFXIKConstraint_(v6, v9, coder);
    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"chainRootNode");
    objc_msgSend_setChainRootNode_(v6, v13, v12);
    objc_msgSend__didDecodeVFXIKConstraint_(v6, v14, coder);
    objc_msgSend_setImmediateMode_(VFXTransaction, v15, v7);
  }

  return v6;
}

- (id)targetPositionValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_targetPosition(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_targetPosition(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_targetPosition(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

- (void)setTargetPositionValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v21 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(value, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v20 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);

  objc_msgSend_setTargetPosition_(self, v18, v19, COERCE_DOUBLE(__PAIR64__(v20, v21)));
}

@end