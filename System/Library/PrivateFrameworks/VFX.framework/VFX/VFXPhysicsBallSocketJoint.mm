@interface VFXPhysicsBallSocketJoint
+ (id)ballSocketWithBody:(id)body anchor:(id)anchor;
+ (id)ballSocketWithBodyA:(id)a anchorA:(id)anchorA bodyB:(id)b anchorB:(id)anchorB;
+ (id)jointWithBody:(id)body anchor:;
+ (id)jointWithBodyA:(id)a anchorA:(SEL)anchorA bodyB:(id)b anchorB:(id)anchorB;
- (VFXPhysicsBallSocketJoint)init;
- (VFXPhysicsBallSocketJoint)initWithBody:(id)body anchor:;
- (VFXPhysicsBallSocketJoint)initWithBodyA:(VFXPhysicsBallSocketJoint *)self anchorA:(SEL)a bodyB:(id)b anchorB:(id)anchorB;
- (VFXPhysicsBallSocketJoint)initWithCoder:(id)coder;
- (btTypedConstraint)_createConstraint;
- (id)anchorAValue;
- (id)anchorBValue;
- (id)valueForKey:(id)key;
- (void)copyFrom:(id)from;
- (void)encodeWithCoder:(id)coder;
- (void)setAnchorA:(VFXPhysicsBallSocketJoint *)self;
- (void)setAnchorAValue:(id)value;
- (void)setAnchorB:(VFXPhysicsBallSocketJoint *)self;
- (void)setAnchorBValue:(id)value;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation VFXPhysicsBallSocketJoint

- (id)anchorAValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_anchorA(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_anchorA(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_anchorA(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

- (void)setAnchorAValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v9 = objc_msgSend_objectAtIndexedSubscript_(value, v8, 1);
  objc_msgSend_floatValue(v9, v10, v11);
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v12, 2);
  objc_msgSend_floatValue(v13, v14, v15);

  MEMORY[0x1EEE66B58](self, sel_setAnchorA_, v16);
}

- (id)anchorBValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_anchorB(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_anchorB(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_anchorB(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

- (void)setAnchorBValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v9 = objc_msgSend_objectAtIndexedSubscript_(value, v8, 1);
  objc_msgSend_floatValue(v9, v10, v11);
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v12, 2);
  objc_msgSend_floatValue(v13, v14, v15);

  MEMORY[0x1EEE66B58](self, sel_setAnchorB_, v16);
}

+ (id)ballSocketWithBodyA:(id)a anchorA:(id)anchorA bodyB:(id)b anchorB:(id)anchorB
{
  v9 = objc_msgSend_objectAtIndexedSubscript_(anchorA, a2, 0);
  objc_msgSend_floatValue(v9, v10, v11);
  v13 = objc_msgSend_objectAtIndexedSubscript_(anchorA, v12, 1);
  objc_msgSend_floatValue(v13, v14, v15);
  v17 = objc_msgSend_objectAtIndexedSubscript_(anchorA, v16, 2);
  objc_msgSend_floatValue(v17, v18, v19);
  v21 = objc_msgSend_objectAtIndexedSubscript_(anchorB, v20, 0);
  objc_msgSend_floatValue(v21, v22, v23);
  v25 = objc_msgSend_objectAtIndexedSubscript_(anchorB, v24, 1);
  objc_msgSend_floatValue(v25, v26, v27);
  v29 = objc_msgSend_objectAtIndexedSubscript_(anchorB, v28, 2);
  objc_msgSend_floatValue(v29, v30, v31);

  return MEMORY[0x1EEE66B58](VFXPhysicsBallSocketJoint, sel_jointWithBodyA_anchorA_bodyB_anchorB_, a);
}

+ (id)ballSocketWithBody:(id)body anchor:(id)anchor
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(anchor, a2, 0);
  objc_msgSend_floatValue(v6, v7, v8);
  v10 = objc_msgSend_objectAtIndexedSubscript_(anchor, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v14 = objc_msgSend_objectAtIndexedSubscript_(anchor, v13, 2);
  objc_msgSend_floatValue(v14, v15, v16);

  return MEMORY[0x1EEE66B58](VFXPhysicsBallSocketJoint, sel_jointWithBody_anchor_, body);
}

- (VFXPhysicsBallSocketJoint)init
{
  v3.receiver = self;
  v3.super_class = VFXPhysicsBallSocketJoint;
  return [(VFXPhysicsBallSocketJoint *)&v3 init];
}

- (VFXPhysicsBallSocketJoint)initWithBodyA:(VFXPhysicsBallSocketJoint *)self anchorA:(SEL)a bodyB:(id)b anchorB:(id)anchorB
{
  v13 = v4;
  v14 = v5;
  v15.receiver = self;
  v15.super_class = VFXPhysicsBallSocketJoint;
  v8 = [(VFXPhysicsBallSocketJoint *)&v15 init];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_setBodyA_(v8, v9, b);
    *&v10[1].super.super.isa = v13;
    objc_msgSend_setBodyB_(v10, v11, anchorB);
    *&v10[1].super._constraint = v14;
  }

  return v10;
}

- (VFXPhysicsBallSocketJoint)initWithBody:(id)body anchor:
{
  v9 = v3;
  v10.receiver = self;
  v10.super_class = VFXPhysicsBallSocketJoint;
  v5 = [(VFXPhysicsBallSocketJoint *)&v10 init];
  v7 = v5;
  if (v5)
  {
    objc_msgSend_setBodyA_(v5, v6, body);
    *&v7[1].super.super.isa = v9;
  }

  return v7;
}

+ (id)jointWithBodyA:(id)a anchorA:(SEL)anchorA bodyB:(id)b anchorB:(id)anchorB
{
  v12 = v4;
  v13 = v5;
  v8 = [a alloc];
  v10 = objc_msgSend_initWithBodyA_anchorA_bodyB_anchorB_(v8, v9, b, anchorB, v12, v13);

  return v10;
}

+ (id)jointWithBody:(id)body anchor:
{
  v9 = v3;
  v5 = [self alloc];
  v7 = objc_msgSend_initWithBody_anchor_(v5, v6, body, v9);

  return v7;
}

- (void)copyFrom:(id)from
{
  v3 = *(from + 4);
  *&self[1].super.super.isa = *(from + 3);
  *&self[1].super._constraint = v3;
}

- (void)setAnchorA:(VFXPhysicsBallSocketJoint *)self
{
  v7 = v3;
  *&self[1].super.super.isa = v3;
  v5 = objc_msgSend_physicsWorld(self, a2, v2);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF355704;
  v8[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v9 = v7;
  objc_msgSend__postCommandWithBlock_(v5, v6, v8);
}

- (void)setAnchorB:(VFXPhysicsBallSocketJoint *)self
{
  v7 = v3;
  *&self[1].super._constraint = v3;
  v5 = objc_msgSend_physicsWorld(self, a2, v2);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF3557E8;
  v8[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v9 = v7;
  objc_msgSend__postCommandWithBlock_(v5, v6, v8);
}

- (btTypedConstraint)_createConstraint
{
  v4 = objc_msgSend_bodyA(self, a2, v2);
  v7 = objc_msgSend_bodyB(self, v5, v6);

  return sub_1AF355360(&self[1], v4, v7);
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  v5.receiver = self;
  v5.super_class = VFXPhysicsBallSocketJoint;
  [(VFXPhysicsJoint *)&v5 encodeWithCoder:?];
  selfCopy += 3;
  sub_1AF371A8C(coder, @"anchorA", *selfCopy);
  sub_1AF371A8C(coder, @"anchorB", selfCopy[1]);
}

- (VFXPhysicsBallSocketJoint)initWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = VFXPhysicsBallSocketJoint;
  v6 = [(VFXPhysicsJoint *)&v13 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    *&v9 = sub_1AF371BC4(coder, @"anchorA");
    *&v6[1].super.super.isa = v9;
    *&v10 = sub_1AF371BC4(coder, @"anchorB");
    *&v6[1].super._constraint = v10;
    objc_msgSend_setImmediateMode_(VFXTransaction, v11, v7);
  }

  return v6;
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"anchorA"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_anchorA(self, v5, v6);
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(key, v5, @"anchorB"))
    {
      v13.receiver = self;
      v13.super_class = VFXPhysicsBallSocketJoint;
      return [(VFXPhysicsBallSocketJoint *)&v13 valueForKey:key];
    }

    v7 = MEMORY[0x1E696B098];
    objc_msgSend_anchorB(self, v10, v11);
  }

  return objc_msgSend_valueWithVFXFloat3_(v7, v8, v9);
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"anchorA"))
  {
    objc_msgSend_VFXFloat3Value(value, v7, v8);

    MEMORY[0x1EEE66B58](self, sel_setAnchorA_, v9);
  }

  else if (objc_msgSend_isEqualToString_(key, v7, @"anchorB"))
  {
    objc_msgSend_VFXFloat3Value(value, v10, v11);

    MEMORY[0x1EEE66B58](self, sel_setAnchorB_, v12);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VFXPhysicsBallSocketJoint;
    [(VFXPhysicsBallSocketJoint *)&v13 setValue:value forKey:key];
  }
}

@end