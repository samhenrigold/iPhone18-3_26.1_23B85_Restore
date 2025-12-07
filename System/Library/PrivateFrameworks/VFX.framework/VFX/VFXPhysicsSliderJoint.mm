@interface VFXPhysicsSliderJoint
+ (id)jointWithBody:(id)body axis:(SEL)axis anchor:(id)anchor;
+ (id)jointWithBodyA:(id)a axisA:(id)axisA anchorA:bodyB:axisB:anchorB:;
+ (id)sliderWithBody:(id)body axis:(id)axis anchor:(id)anchor;
+ (id)sliderWithBodyA:(id)a axisA:(id)axisA anchorA:(id)anchorA bodyB:(id)b axisB:(id)axisB anchorB:(id)anchorB;
- (VFXPhysicsSliderJoint)init;
- (VFXPhysicsSliderJoint)initWithBodyA:(id)a axisA:(id)axisA anchorA:bodyB:axisB:anchorB:;
- (VFXPhysicsSliderJoint)initWithCoder:(id)coder;
- (btTypedConstraint)_createConstraint;
- (id)anchorAValue;
- (id)anchorBValue;
- (id)axisAValue;
- (id)axisBValue;
- (id)valueForKey:(id)key;
- (void)copyFrom:(id)from;
- (void)encodeWithCoder:(id)coder;
- (void)setAnchorA:(VFXPhysicsSliderJoint *)self;
- (void)setAnchorAValue:(id)value;
- (void)setAnchorB:(VFXPhysicsSliderJoint *)self;
- (void)setAnchorBValue:(id)value;
- (void)setAxisA:(VFXPhysicsSliderJoint *)self;
- (void)setAxisAValue:(id)value;
- (void)setAxisB:(VFXPhysicsSliderJoint *)self;
- (void)setAxisBValue:(id)value;
- (void)setMaximumAngularLimit:(float)limit;
- (void)setMaximumLinearLimit:(float)limit;
- (void)setMinimumAngularLimit:(float)limit;
- (void)setMinimumLinearLimit:(float)limit;
- (void)setMotorMaximumForce:(float)force;
- (void)setMotorMaximumTorque:(float)torque;
- (void)setMotorTargetAngularVelocity:(float)velocity;
- (void)setMotorTargetLinearVelocity:(float)velocity;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation VFXPhysicsSliderJoint

+ (id)sliderWithBodyA:(id)a axisA:(id)axisA anchorA:(id)anchorA bodyB:(id)b axisB:(id)axisB anchorB:(id)anchorB
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

+ (id)sliderWithBody:(id)body axis:(id)axis anchor:(id)anchor
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

- (VFXPhysicsSliderJoint)init
{
  v3.receiver = self;
  v3.super_class = VFXPhysicsSliderJoint;
  result = [(VFXPhysicsSliderJoint *)&v3 init];
  if (result)
  {
    *&result[1].super.super.isa = xmmword_1AFE20180;
    *&result[1].super._bodyB = xmmword_1AFE20180;
    *&result[2].super._constraint = xmmword_1AFE47CC0;
    *&result[2]._anon_28[4] = 1065353216;
    HIDWORD(result[2].super._bodyB) = 1065353216;
  }

  return result;
}

- (VFXPhysicsSliderJoint)initWithBodyA:(id)a axisA:(id)axisA anchorA:bodyB:axisB:anchorB:
{
  v17 = v6;
  v18 = v7;
  v15 = v4;
  v16 = v5;
  v19.receiver = self;
  v19.super_class = VFXPhysicsSliderJoint;
  v10 = [(VFXPhysicsSliderJoint *)&v19 init];
  v12 = v10;
  if (v10)
  {
    objc_msgSend_setBodyA_(v10, v11, a);
    *&v12[1].super.super.isa = v15;
    *&v12[1].super._constraint = v16;
    objc_msgSend_setBodyB_(v12, v13, axisA);
    *&v12[1].super._bodyB = v17;
    *&v12[2].super.super.isa = v18;
    *&v12[2].super._constraint = xmmword_1AFE47CC0;
    *&v12[2]._anon_28[4] = 1065353216;
    HIDWORD(v12[2].super._bodyB) = 1065353216;
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

- (void)copyFrom:(id)from
{
  v3 = *(from + 4);
  *&self[1].super.super.isa = *(from + 3);
  *&self[1].super._constraint = v3;
  v4 = *(from + 8);
  v6 = *(from + 5);
  v5 = *(from + 6);
  *&self[2].super._constraint = *(from + 7);
  *&self[2].super._bodyB = v4;
  *&self[1].super._bodyB = v6;
  *&self[2].super.super.isa = v5;
}

- (void)setAxisA:(VFXPhysicsSliderJoint *)self
{
  v7 = v3;
  *&self[1].super.super.isa = v3;
  v5 = objc_msgSend_physicsWorld(self, a2, v2);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF360DCC;
  v8[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v9 = v7;
  objc_msgSend__postCommandWithBlock_(v5, v6, v8);
}

- (void)setAxisB:(VFXPhysicsSliderJoint *)self
{
  v7 = v3;
  *&self[1].super._bodyB = v3;
  v5 = objc_msgSend_physicsWorld(self, a2, v2);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF360FB4;
  v8[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v9 = v7;
  objc_msgSend__postCommandWithBlock_(v5, v6, v8);
}

- (void)setAnchorA:(VFXPhysicsSliderJoint *)self
{
  v7 = v3;
  *&self[1].super._constraint = v3;
  v5 = objc_msgSend_physicsWorld(self, a2, v2);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF36119C;
  v8[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v9 = v7;
  objc_msgSend__postCommandWithBlock_(v5, v6, v8);
}

- (void)setAnchorB:(VFXPhysicsSliderJoint *)self
{
  v7 = v3;
  *&self[2].super.super.isa = v3;
  v5 = objc_msgSend_physicsWorld(self, a2, v2);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF3612D4;
  v8[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v9 = v7;
  objc_msgSend__postCommandWithBlock_(v5, v6, v8);
}

- (void)setMinimumLinearLimit:(float)limit
{
  *&self[2].super._constraint = limit;
  v6 = objc_msgSend_physicsWorld(self, a2, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF361410;
  v8[3] = &unk_1E7A7E270;
  v8[4] = self;
  limitCopy = limit;
  objc_msgSend__postCommandWithBlock_(v6, v7, v8);
}

- (void)setMaximumLinearLimit:(float)limit
{
  *(&self[2].super._constraint + 1) = limit;
  v6 = objc_msgSend_physicsWorld(self, a2, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF3614F4;
  v8[3] = &unk_1E7A7E270;
  v8[4] = self;
  limitCopy = limit;
  objc_msgSend__postCommandWithBlock_(v6, v7, v8);
}

- (void)setMinimumAngularLimit:(float)limit
{
  *&self[2].super._bodyA = limit;
  v6 = objc_msgSend_physicsWorld(self, a2, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF3615D8;
  v8[3] = &unk_1E7A7E270;
  v8[4] = self;
  limitCopy = limit;
  objc_msgSend__postCommandWithBlock_(v6, v7, v8);
}

- (void)setMaximumAngularLimit:(float)limit
{
  *(&self[2].super._bodyA + 1) = limit;
  v6 = objc_msgSend_physicsWorld(self, a2, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF36170C;
  v8[3] = &unk_1E7A7E270;
  v8[4] = self;
  limitCopy = limit;
  objc_msgSend__postCommandWithBlock_(v6, v7, v8);
}

- (void)setMotorTargetLinearVelocity:(float)velocity
{
  *&self[2].super._bodyB = velocity;
  v6 = objc_msgSend_physicsWorld(self, a2, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF361840;
  v8[3] = &unk_1E7A7E270;
  v8[4] = self;
  velocityCopy = velocity;
  objc_msgSend__postCommandWithBlock_(v6, v7, v8);
}

- (void)setMotorMaximumForce:(float)force
{
  *(&self[2].super._bodyB + 1) = force;
  v6 = objc_msgSend_physicsWorld(self, a2, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF361930;
  v8[3] = &unk_1E7A7E270;
  v8[4] = self;
  forceCopy = force;
  objc_msgSend__postCommandWithBlock_(v6, v7, v8);
}

- (void)setMotorTargetAngularVelocity:(float)velocity
{
  *self[2]._anon_28 = velocity;
  v6 = objc_msgSend_physicsWorld(self, a2, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF361A14;
  v8[3] = &unk_1E7A7E270;
  v8[4] = self;
  velocityCopy = velocity;
  objc_msgSend__postCommandWithBlock_(v6, v7, v8);
}

- (void)setMotorMaximumTorque:(float)torque
{
  *&self[2]._anon_28[4] = torque;
  v6 = objc_msgSend_physicsWorld(self, a2, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF361B04;
  v8[3] = &unk_1E7A7E270;
  v8[4] = self;
  torqueCopy = torque;
  objc_msgSend__postCommandWithBlock_(v6, v7, v8);
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
  v13 = *&self[1].super.super.isa;
  v12 = *&self[1].super._constraint;
  HIDWORD(v12) = 0;
  v69 = v12;
  v14 = *(&v13 + 1);
  v15 = fabsf(*(&v13 + 2)) <= 0.70711;
  *&v12 = (v14 * v14) + (*&v13 * *&v13);
  v16 = 1.0 / sqrtf(*&v12);
  v17 = -(*(&v13 + 1) * v16);
  v18 = *&v13 * v16;
  v19 = -(*(&v13 + 2) * (*&v13 * v16));
  v20 = *(&v13 + 2) * v17;
  v21 = *&v12 * v16;
  v22 = 0.0;
  v23 = (*(&v13 + 2) * *(&v13 + 2)) + (v14 * v14);
  v24 = 1.0 / sqrtf(v23);
  v25 = -(*(&v13 + 2) * v24);
  v26 = *(&v13 + 1) * v24;
  v27 = v23 * v24;
  v28 = -(*&v13 * (*(&v13 + 1) * v24));
  v29 = *&v13 * v25;
  if (v15)
  {
    v30 = 0.0;
  }

  else
  {
    v18 = v25;
    v17 = 0.0;
    v30 = v26;
  }

  if (!v15)
  {
    v21 = v29;
    v20 = v28;
    v19 = v27;
  }

  v64.i64[0] = __PAIR64__(LODWORD(v17), v13);
  v64.i64[1] = LODWORD(v19);
  v65 = __PAIR64__(LODWORD(v18), DWORD1(v13));
  v66 = LODWORD(v20);
  v67 = __PAIR64__(LODWORD(v30), DWORD2(v13));
  v68 = LODWORD(v21);
  v32 = *&self[1].super._bodyB;
  v31 = *&self[2].super.super.isa;
  HIDWORD(v31) = 0;
  v63 = v31;
  LODWORD(v31) = DWORD1(v32);
  v33 = fabsf(*(&v32 + 2)) <= 0.70711;
  v34 = (*&v31 * *&v31) + (*&v32 * *&v32);
  v35 = 1.0 / sqrtf(v34);
  v36 = -(*(&v32 + 1) * v35);
  v37 = *&v32 * v35;
  v38 = -(*(&v32 + 2) * (*&v32 * v35));
  v39 = *(&v32 + 2) * v36;
  v40 = v34 * v35;
  v41 = (*(&v32 + 2) * *(&v32 + 2)) + (*&v31 * *&v31);
  v42 = 1.0 / sqrtf(v41);
  v43 = -(*(&v32 + 2) * v42);
  v44 = *(&v32 + 1) * v42;
  v45 = v41 * v42;
  v46 = -(*&v32 * (*(&v32 + 1) * v42));
  if (v33)
  {
    v45 = v38;
  }

  else
  {
    v37 = v43;
    v36 = 0.0;
  }

  *&v59 = __PAIR64__(LODWORD(v36), v32);
  *(&v59 + 1) = LODWORD(v45);
  v60 = __PAIR64__(LODWORD(v37), DWORD1(v32));
  v47 = *&v32 * v43;
  if (v33)
  {
    *&v32 = v39;
  }

  else
  {
    v22 = v44;
    *&v32 = v46;
  }

  v61 = v32;
  v62 = __PAIR64__(LODWORD(v22), DWORD2(v32));
  if (v33)
  {
    v48 = v40;
  }

  else
  {
    v48 = v47;
  }

  v51 = objc_msgSend__handle(v4, v8, v9, v59, *(&v59 + 1), v60, v61, v62, LODWORD(v48), v63, v64.i64[0], v64.i64[1], v65, v66, v67, v68, v69);
  if (v10)
  {
    v52 = objc_msgSend__handle(v10, v49, v50);
    v53 = sub_1AFDA7294(1248, 16);
    sub_1AFDA0598(v53, v51, v52, &v64, &v59, 1);
  }

  else
  {
    v53 = sub_1AFDA7294(1248, 16);
    sub_1AFDA06B0(v53, v51, &v64, 1);
  }

  *(v53 + 212) = v11[1].super._constraint;
  v54 = fmodf(*&v11[1].super._bodyA, 6.2832);
  if (v54 >= -3.1416)
  {
    if (v54 > 3.1416)
    {
      v54 = v54 + -6.2832;
    }
  }

  else
  {
    v54 = v54 + 6.2832;
  }

  *(v53 + 220) = v54;
  v55 = fmodf(*(&v11[1].super._bodyA + 1), 6.2832);
  if (v55 >= -3.1416)
  {
    if (v55 > 3.1416)
    {
      v55 = v55 + -6.2832;
    }
  }

  else
  {
    v55 = v55 + 6.2832;
  }

  *(v53 + 224) = v55;
  v56 = *&v11[1].super._bodyB;
  if (v56 != 0.0)
  {
    *(v53 + 1216) = 1;
    *(v53 + 1220) = v56;
    *(v53 + 1224) = HIDWORD(v11[1].super._bodyB);
  }

  v57 = *v11[1]._anon_28;
  if (v57 != 0.0)
  {
    *(v53 + 1232) = 1;
    *(v53 + 1236) = v57;
    *(v53 + 1240) = *&v11[1]._anon_28[4];
  }

  return v53;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  v13.receiver = self;
  v13.super_class = VFXPhysicsSliderJoint;
  [(VFXPhysicsJoint *)&v13 encodeWithCoder:?];
  selfCopy += 3;
  sub_1AF371A8C(coder, @"axisA", *selfCopy);
  sub_1AF371A8C(coder, @"axisB", selfCopy[2]);
  sub_1AF371A8C(coder, @"anchorA", selfCopy[1]);
  sub_1AF371A8C(coder, @"anchorB", selfCopy[3]);
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"minLinearLimit", selfCopy[4].n128_f32[0]);
  objc_msgSend_encodeDouble_forKey_(coder, v6, @"maxLinearLimit", selfCopy[4].n128_f32[1]);
  objc_msgSend_encodeDouble_forKey_(coder, v7, @"minAngularLimit", selfCopy[4].n128_f32[2]);
  objc_msgSend_encodeDouble_forKey_(coder, v8, @"maxAngularLimit", selfCopy[4].n128_f32[3]);
  objc_msgSend_encodeDouble_forKey_(coder, v9, @"motorTargetLinearVelocity", selfCopy[5].n128_f32[0]);
  objc_msgSend_encodeDouble_forKey_(coder, v10, @"motorMaximumForce", selfCopy[5].n128_f32[1]);
  objc_msgSend_encodeDouble_forKey_(coder, v11, @"motorTargetAngularVelocity", selfCopy[5].n128_f32[2]);
  objc_msgSend_encodeDouble_forKey_(coder, v12, @"motorMaximumTorque", selfCopy[5].n128_f32[3]);
}

- (VFXPhysicsSliderJoint)initWithCoder:(id)coder
{
  v31.receiver = self;
  v31.super_class = VFXPhysicsSliderJoint;
  v6 = [(VFXPhysicsJoint *)&v31 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    *&v9 = sub_1AF371BC4(coder, @"axisA");
    *&v6[1].super.super.isa = v9;
    *&v10 = sub_1AF371BC4(coder, @"axisB");
    *&v6[1].super._bodyB = v10;
    *&v11 = sub_1AF371BC4(coder, @"anchorA");
    *&v6[1].super._constraint = v11;
    *&v12 = sub_1AF371BC4(coder, @"anchorB");
    *&v6[2].super.super.isa = v12;
    objc_msgSend_decodeDoubleForKey_(coder, v13, @"minLinearLimit");
    *&v14 = v14;
    LODWORD(v6[2].super._constraint) = LODWORD(v14);
    objc_msgSend_decodeDoubleForKey_(coder, v15, @"maxLinearLimit");
    *&v16 = v16;
    HIDWORD(v6[2].super._constraint) = LODWORD(v16);
    objc_msgSend_decodeDoubleForKey_(coder, v17, @"minAngularLimit");
    *&v18 = v18;
    LODWORD(v6[2].super._bodyA) = LODWORD(v18);
    objc_msgSend_decodeDoubleForKey_(coder, v19, @"maxAngularLimit");
    *&v20 = v20;
    HIDWORD(v6[2].super._bodyA) = LODWORD(v20);
    objc_msgSend_decodeDoubleForKey_(coder, v21, @"motorTargetLinearVelocity");
    *&v22 = v22;
    LODWORD(v6[2].super._bodyB) = LODWORD(v22);
    objc_msgSend_decodeDoubleForKey_(coder, v23, @"motorMaximumForce");
    *&v24 = v24;
    HIDWORD(v6[2].super._bodyB) = LODWORD(v24);
    objc_msgSend_decodeDoubleForKey_(coder, v25, @"motorTargetAngularVelocity");
    *&v26 = v26;
    *v6[2]._anon_28 = LODWORD(v26);
    objc_msgSend_decodeDoubleForKey_(coder, v27, @"motorMaximumTorque");
    *&v28 = v28;
    *&v6[2]._anon_28[4] = LODWORD(v28);
    objc_msgSend_setImmediateMode_(VFXTransaction, v29, v7);
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
      v17.super_class = VFXPhysicsSliderJoint;
      return [(VFXPhysicsSliderJoint *)&v17 valueForKey:key];
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
    v19.super_class = VFXPhysicsSliderJoint;
    [(VFXPhysicsSliderJoint *)&v19 setValue:value forKey:key];
  }
}

@end