@interface VFXPhysicsHingeJoint
+ (id)hingeWithBody:(id)body axis:(id)axis anchor:(id)anchor;
+ (id)hingeWithBodyA:(id)a axisA:(id)axisA anchorA:(id)anchorA bodyB:(id)b axisB:(id)axisB anchorB:(id)anchorB;
+ (id)jointWithBody:(id)body axis:(SEL)axis anchor:(id)anchor;
+ (id)jointWithBodyA:(id)a axisA:(id)axisA anchorA:bodyB:axisB:anchorB:;
- (VFXPhysicsHingeJoint)init;
- (VFXPhysicsHingeJoint)initWithBodyA:(id)a axisA:(id)axisA anchorA:bodyB:axisB:anchorB:;
- (VFXPhysicsHingeJoint)initWithCoder:(id)coder;
- (btTypedConstraint)_createConstraint;
- (id)anchorAValue;
- (id)anchorBValue;
- (id)axisAValue;
- (id)axisBValue;
- (id)valueForKey:(id)key;
- (void)copyFrom:(id)from;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAnchorA:(VFXPhysicsHingeJoint *)self;
- (void)setAnchorAValue:(id)value;
- (void)setAnchorB:(VFXPhysicsHingeJoint *)self;
- (void)setAnchorBValue:(id)value;
- (void)setAxisA:(VFXPhysicsHingeJoint *)self;
- (void)setAxisAValue:(id)value;
- (void)setAxisB:(VFXPhysicsHingeJoint *)self;
- (void)setAxisBValue:(id)value;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation VFXPhysicsHingeJoint

+ (id)hingeWithBodyA:(id)a axisA:(id)axisA anchorA:(id)anchorA bodyB:(id)b axisB:(id)axisB anchorB:(id)anchorB
{
  v14 = objc_msgSend_objectAtIndexedSubscript_(axisA, a2, 0);
  objc_msgSend_floatValue(v14, v15, v16);
  v18 = objc_msgSend_objectAtIndexedSubscript_(axisA, v17, 1);
  objc_msgSend_floatValue(v18, v19, v20);
  v22 = objc_msgSend_objectAtIndexedSubscript_(axisA, v21, 2);
  objc_msgSend_floatValue(v22, v23, v24);
  v26 = objc_msgSend_objectAtIndexedSubscript_(anchorA, v25, 0);
  objc_msgSend_floatValue(v26, v27, v28);
  v30 = objc_msgSend_objectAtIndexedSubscript_(anchorA, v29, 1);
  objc_msgSend_floatValue(v30, v31, v32);
  v34 = objc_msgSend_objectAtIndexedSubscript_(anchorA, v33, 2);
  objc_msgSend_floatValue(v34, v35, v36);
  v38 = objc_msgSend_objectAtIndexedSubscript_(axisB, v37, 0);
  objc_msgSend_floatValue(v38, v39, v40);
  v42 = objc_msgSend_objectAtIndexedSubscript_(axisB, v41, 1);
  objc_msgSend_floatValue(v42, v43, v44);
  v46 = objc_msgSend_objectAtIndexedSubscript_(axisB, v45, 2);
  objc_msgSend_floatValue(v46, v47, v48);
  v50 = objc_msgSend_objectAtIndexedSubscript_(anchorB, v49, 0);
  objc_msgSend_floatValue(v50, v51, v52);
  v54 = objc_msgSend_objectAtIndexedSubscript_(anchorB, v53, 1);
  objc_msgSend_floatValue(v54, v55, v56);
  v58 = objc_msgSend_objectAtIndexedSubscript_(anchorB, v57, 2);
  objc_msgSend_floatValue(v58, v59, v60);

  return MEMORY[0x1EEE66B58](self, sel_jointWithBodyA_axisA_anchorA_bodyB_axisB_anchorB_, a);
}

+ (id)hingeWithBody:(id)body axis:(id)axis anchor:(id)anchor
{
  v9 = objc_msgSend_objectAtIndexedSubscript_(axis, a2, 0);
  objc_msgSend_floatValue(v9, v10, v11);
  v13 = objc_msgSend_objectAtIndexedSubscript_(axis, v12, 1);
  objc_msgSend_floatValue(v13, v14, v15);
  v17 = objc_msgSend_objectAtIndexedSubscript_(axis, v16, 2);
  objc_msgSend_floatValue(v17, v18, v19);
  v21 = objc_msgSend_objectAtIndexedSubscript_(anchor, v20, 0);
  objc_msgSend_floatValue(v21, v22, v23);
  v25 = objc_msgSend_objectAtIndexedSubscript_(anchor, v24, 1);
  objc_msgSend_floatValue(v25, v26, v27);
  v29 = objc_msgSend_objectAtIndexedSubscript_(anchor, v28, 2);
  objc_msgSend_floatValue(v29, v30, v31);

  return MEMORY[0x1EEE66B58](self, sel_jointWithBody_axis_anchor_, body);
}

- (id)axisAValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_axisA(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_axisA(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_axisA(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

- (void)setAxisAValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v9 = objc_msgSend_objectAtIndexedSubscript_(value, v8, 1);
  objc_msgSend_floatValue(v9, v10, v11);
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v12, 2);
  objc_msgSend_floatValue(v13, v14, v15);

  MEMORY[0x1EEE66B58](self, sel_setAxisA_, v16);
}

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

- (id)axisBValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_axisB(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_axisB(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_axisB(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

- (void)setAxisBValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v9 = objc_msgSend_objectAtIndexedSubscript_(value, v8, 1);
  objc_msgSend_floatValue(v9, v10, v11);
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v12, 2);
  objc_msgSend_floatValue(v13, v14, v15);

  MEMORY[0x1EEE66B58](self, sel_setAxisB_, v16);
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

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = VFXPhysicsHingeJoint;
  [(VFXPhysicsJoint *)&v2 dealloc];
}

- (VFXPhysicsHingeJoint)init
{
  v3.receiver = self;
  v3.super_class = VFXPhysicsHingeJoint;
  result = [(VFXPhysicsHingeJoint *)&v3 init];
  if (result)
  {
    *&result[1].super._bodyB = xmmword_1AFE20180;
    *&result[2].super.super.isa = xmmword_1AFE20180;
    *&result[1].super.super.isa = 0u;
    *&result[1].super._constraint = 0u;
  }

  return result;
}

- (void)copyFrom:(id)from
{
  v3 = *(from + 6);
  v5 = *(from + 3);
  v4 = *(from + 4);
  *&self[1].super._bodyB = *(from + 5);
  *&self[2].super.super.isa = v3;
  *&self[1].super.super.isa = v5;
  *&self[1].super._constraint = v4;
}

- (VFXPhysicsHingeJoint)initWithBodyA:(id)a axisA:(id)axisA anchorA:bodyB:axisB:anchorB:
{
  v17 = v6;
  v18 = v7;
  v15 = v4;
  v16 = v5;
  v19.receiver = self;
  v19.super_class = VFXPhysicsHingeJoint;
  v10 = [(VFXPhysicsHingeJoint *)&v19 init];
  v12 = v10;
  if (v10)
  {
    objc_msgSend_setBodyA_(v10, v11, a);
    *&v12[1].super._bodyB = v15;
    *&v12[1].super.super.isa = v16;
    objc_msgSend_setBodyB_(v12, v13, axisA);
    *&v12[2].super.super.isa = v17;
    *&v12[1].super._constraint = v18;
  }

  return v12;
}

+ (id)jointWithBodyA:(id)a axisA:(id)axisA anchorA:bodyB:axisB:anchorB:
{
  v17 = v7;
  v15 = v5;
  v16 = v6;
  v14 = v4;
  v10 = [self alloc];
  v12 = objc_msgSend_initWithBodyA_axisA_anchorA_bodyB_axisB_anchorB_(v10, v11, a, axisA, v14, v15, v16, v17);

  return v12;
}

+ (id)jointWithBody:(id)body axis:(SEL)axis anchor:(id)anchor
{
  v10 = v3;
  v11 = v4;
  v6 = [body alloc];
  v8 = objc_msgSend_initWithBody_axis_anchor_(v6, v7, anchor, v10, v11);

  return v8;
}

- (void)setAxisA:(VFXPhysicsHingeJoint *)self
{
  v7 = v3;
  *&self[1].super._bodyB = v3;
  v5 = objc_msgSend_physicsWorld(self, a2, v2);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF35B96C;
  v8[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v9 = v7;
  objc_msgSend__postCommandWithBlock_(v5, v6, v8);
}

- (void)setAxisB:(VFXPhysicsHingeJoint *)self
{
  v7 = v3;
  *&self[2].super.super.isa = v3;
  v5 = objc_msgSend_physicsWorld(self, a2, v2);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF35BF70;
  v8[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v9 = v7;
  objc_msgSend__postCommandWithBlock_(v5, v6, v8);
}

- (void)setAnchorA:(VFXPhysicsHingeJoint *)self
{
  v7 = v3;
  *&self[1].super.super.isa = v3;
  v5 = objc_msgSend_physicsWorld(self, a2, v2);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF35C068;
  v8[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v9 = v7;
  objc_msgSend__postCommandWithBlock_(v5, v6, v8);
}

- (void)setAnchorB:(VFXPhysicsHingeJoint *)self
{
  v7 = v3;
  *&self[1].super._constraint = v3;
  v5 = objc_msgSend_physicsWorld(self, a2, v2);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF35C17C;
  v8[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v9 = v7;
  objc_msgSend__postCommandWithBlock_(v5, v6, v8);
}

- (btTypedConstraint)_createConstraint
{
  v4 = objc_msgSend_bodyA(self, a2, v2);
  v7 = objc_msgSend_bodyB(self, v5, v6);
  if (!v4)
  {
    return 0;
  }

  v10 = v7;
  v11 = self + 1;
  v14 = objc_msgSend__handle(v4, v8, v9);
  v15 = *&v11->super._bodyB;
  v25.i64[0] = v11->super._bodyB;
  v25.i64[1] = DWORD2(v15);
  v16 = *&v11->super.super.isa;
  v24.i64[0] = v11->super.super.isa;
  v24.i64[1] = DWORD2(v16);
  if (v10)
  {
    v17 = objc_msgSend__handle(v10, v12, v13);
    v18 = *&v11[1].super.super.isa;
    v23.i64[0] = v11[1].super.super.isa;
    v23.i64[1] = DWORD2(v18);
    v19 = *&v11->super._constraint;
    *&v22 = v11->super._constraint;
    *(&v22 + 1) = DWORD2(v19);
    v20 = sub_1AFDA7294(880, 16);
    sub_1AFD99E1C(v20, v14, v17, &v24, &v22, &v25, &v23, 0, v22, *(&v22 + 1), v23.i64[0], v23.i64[1]);
  }

  else
  {
    v20 = sub_1AFDA7294(880, 16);
    sub_1AFD9A22C(v20, v14, &v24, &v25, 0);
  }

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  v5.receiver = self;
  v5.super_class = VFXPhysicsHingeJoint;
  [(VFXPhysicsJoint *)&v5 encodeWithCoder:?];
  selfCopy += 3;
  sub_1AF371A8C(coder, @"axisA", selfCopy[2]);
  sub_1AF371A8C(coder, @"axisB", selfCopy[3]);
  sub_1AF371A8C(coder, @"anchorA", *selfCopy);
  sub_1AF371A8C(coder, @"anchorB", selfCopy[1]);
}

- (VFXPhysicsHingeJoint)initWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = VFXPhysicsHingeJoint;
  v6 = [(VFXPhysicsJoint *)&v15 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    *&v9 = sub_1AF371BC4(coder, @"axisA");
    *&v6[1].super._bodyB = v9;
    *&v10 = sub_1AF371BC4(coder, @"axisB");
    *&v6[2].super.super.isa = v10;
    *&v11 = sub_1AF371BC4(coder, @"anchorA");
    *&v6[1].super.super.isa = v11;
    *&v12 = sub_1AF371BC4(coder, @"anchorB");
    *&v6[1].super._constraint = v12;
    objc_msgSend_setImmediateMode_(VFXTransaction, v13, v7);
  }

  return v6;
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"axisA"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_axisA(self, v5, v6);
  }

  else if (objc_msgSend_isEqualToString_(key, v5, @"axisB"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_axisB(self, v10, v11);
  }

  else if (objc_msgSend_isEqualToString_(key, v10, @"anchorA"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_anchorA(self, v12, v13);
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(key, v12, @"anchorB"))
    {
      v17.receiver = self;
      v17.super_class = VFXPhysicsHingeJoint;
      return [(VFXPhysicsHingeJoint *)&v17 valueForKey:key];
    }

    v7 = MEMORY[0x1E696B098];
    objc_msgSend_anchorB(self, v14, v15);
  }

  return objc_msgSend_valueWithVFXFloat3_(v7, v8, v9);
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"axisA"))
  {
    objc_msgSend_VFXFloat3Value(value, v7, v8);

    MEMORY[0x1EEE66B58](self, sel_setAxisA_, v9);
  }

  else if (objc_msgSend_isEqualToString_(key, v7, @"axisB"))
  {
    objc_msgSend_VFXFloat3Value(value, v10, v11);

    MEMORY[0x1EEE66B58](self, sel_setAxisB_, v12);
  }

  else if (objc_msgSend_isEqualToString_(key, v10, @"anchorA"))
  {
    objc_msgSend_VFXFloat3Value(value, v13, v14);

    MEMORY[0x1EEE66B58](self, sel_setAnchorA_, v15);
  }

  else if (objc_msgSend_isEqualToString_(key, v13, @"anchorB"))
  {
    objc_msgSend_VFXFloat3Value(value, v16, v17);

    MEMORY[0x1EEE66B58](self, sel_setAnchorB_, v18);
  }

  else
  {
    v19.receiver = self;
    v19.super_class = VFXPhysicsHingeJoint;
    [(VFXPhysicsHingeJoint *)&v19 setValue:value forKey:key];
  }
}

@end