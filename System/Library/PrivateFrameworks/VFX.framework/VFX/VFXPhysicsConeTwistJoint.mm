@interface VFXPhysicsConeTwistJoint
+ (id)jointWithBody:(double)body frame:(double)frame;
+ (id)jointWithBodyA:(double)a frameA:(double)frameA bodyB:(double)b frameB:(double)frameB;
- (VFXPhysicsConeTwistJoint)init;
- (VFXPhysicsConeTwistJoint)initWithBodyA:(__n128)a frameA:(__n128)frameA bodyB:(__n128)b frameB:(__n128)frameB;
- (VFXPhysicsConeTwistJoint)initWithCoder:(id)coder;
- (__n128)initWithBody:(__n128)body frame:(__n128)frame;
- (btTypedConstraint)_createConstraint;
- (id)valueForKey:(id)key;
- (void)copyFrom:(id)from;
- (void)encodeWithCoder:(id)coder;
- (void)setFrameA:(__n128)a;
- (void)setFrameB:(__n128)b;
- (void)setMaximumAngularLimit1:(float)limit1;
- (void)setMaximumAngularLimit2:(float)limit2;
- (void)setMaximumTwistAngle:(float)angle;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation VFXPhysicsConeTwistJoint

- (VFXPhysicsConeTwistJoint)init
{
  v3.receiver = self;
  v3.super_class = VFXPhysicsConeTwistJoint;
  result = [(VFXPhysicsConeTwistJoint *)&v3 init];
  if (result)
  {
    *&result->_definition.maximumAngularLimit1 = xmmword_1AFE20150;
    *&result[1].super.super.isa = xmmword_1AFE20160;
    *&result[1].super._constraint = xmmword_1AFE20180;
    *&result[1].super._bodyB = xmmword_1AFE201A0;
    *&result[1]._definition.maximumAngularLimit1 = xmmword_1AFE20150;
    *&result[2].super.super.isa = xmmword_1AFE20160;
    *&result[2].super._constraint = xmmword_1AFE20180;
    *&result[2].super._bodyB = xmmword_1AFE201A0;
    *&result[2]._definition.maximumAngularLimit1 = vdup_n_s32(0x3F490FDBu);
    result[2]._definition.maximumTwistAngle = 0.7854;
  }

  return result;
}

- (VFXPhysicsConeTwistJoint)initWithBodyA:(__n128)a frameA:(__n128)frameA bodyB:(__n128)b frameB:(__n128)frameB
{
  v27.receiver = self;
  v27.super_class = VFXPhysicsConeTwistJoint;
  v14 = [(VFXPhysicsConeTwistJoint *)&v27 init];
  v16 = v14;
  if (v14)
  {
    objc_msgSend_setBodyA_(v14, v15, a11);
    *&v16->_definition.maximumAngularLimit1 = a2;
    *&v16[1].super.super.isa = a;
    *&v16[1].super._constraint = frameA;
    *&v16[1].super._bodyB = b;
    objc_msgSend_setBodyB_(v16, v17, a12);
    *&v16[1]._definition.maximumAngularLimit1 = frameB;
    *&v16[2].super.super.isa = a7;
    *&v16[2].super._constraint = a8;
    *&v16[2].super._bodyB = a9;
    *&v16[2]._definition.maximumAngularLimit1 = vdup_n_s32(0x3F490FDBu);
    v16[2]._definition.maximumTwistAngle = 0.7854;
  }

  return v16;
}

- (__n128)initWithBody:(__n128)body frame:(__n128)frame
{
  v16.receiver = self;
  v16.super_class = VFXPhysicsConeTwistJoint;
  v8 = [(VFXPhysicsConeTwistJoint *)&v16 init];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_setBodyA_(v8, v9, a7);
    v10[3] = a2;
    v10[4] = body;
    v10[5] = frame;
    v10[6] = a5;
  }

  return v10;
}

+ (id)jointWithBodyA:(double)a frameA:(double)frameA bodyB:(double)b frameB:(double)frameB
{
  v14 = [self alloc];
  v16 = objc_msgSend_initWithBodyA_frameA_bodyB_frameB_(v14, v15, a11, a12, a2, a, frameA, b, frameB, a7, a8, a9);

  return v16;
}

+ (id)jointWithBody:(double)body frame:(double)frame
{
  v8 = [self alloc];
  v10 = objc_msgSend_initWithBody_frame_(v8, v9, a7, a2, body, frame, a5);

  return v10;
}

- (void)copyFrom:(id)from
{
  *&self->_definition.maximumAngularLimit1 = *(from + 3);
  v3 = *(from + 7);
  v5 = *(from + 4);
  v4 = *(from + 5);
  *&self[1].super._bodyB = *(from + 6);
  *&self[1]._definition.maximumAngularLimit1 = v3;
  *&self[1].super.super.isa = v5;
  *&self[1].super._constraint = v4;
  v6 = *(from + 11);
  v8 = *(from + 8);
  v7 = *(from + 9);
  *&self[2].super._bodyB = *(from + 10);
  *&self[2]._definition.maximumAngularLimit1 = v6;
  *&self[2].super.super.isa = v8;
  *&self[2].super._constraint = v7;
}

- (void)setFrameA:(__n128)a
{
  self[3] = a2;
  self[4] = a;
  self[5] = a4;
  self[6] = a5;
  v8 = objc_msgSend_physicsWorld(self, v5, v6);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1AF35A81C;
  v15[3] = &unk_1E7A7E578;
  selfCopy = self;
  v16 = a2;
  aCopy = a;
  v18 = a4;
  v19 = a5;
  return objc_msgSend__postCommandWithBlock_(v8, v9, v15);
}

- (void)setFrameB:(__n128)b
{
  self[7] = a2;
  self[8] = b;
  self[9] = a4;
  self[10] = a5;
  v8 = objc_msgSend_physicsWorld(self, v5, v6);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1AF35AA04;
  v15[3] = &unk_1E7A7E578;
  selfCopy = self;
  v16 = a2;
  bCopy = b;
  v18 = a4;
  v19 = a5;
  return objc_msgSend__postCommandWithBlock_(v8, v9, v15);
}

- (void)setMaximumAngularLimit1:(float)limit1
{
  self[2]._definition.maximumAngularLimit1 = limit1;
  v6 = objc_msgSend_physicsWorld(self, a2, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF35ABDC;
  v8[3] = &unk_1E7A7E270;
  v8[4] = self;
  limit1Copy = limit1;
  objc_msgSend__postCommandWithBlock_(v6, v7, v8);
}

- (void)setMaximumAngularLimit2:(float)limit2
{
  self[2]._definition.maximumAngularLimit2 = limit2;
  v6 = objc_msgSend_physicsWorld(self, a2, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF35ACF0;
  v8[3] = &unk_1E7A7E270;
  v8[4] = self;
  limit2Copy = limit2;
  objc_msgSend__postCommandWithBlock_(v6, v7, v8);
}

- (void)setMaximumTwistAngle:(float)angle
{
  self[2]._definition.maximumTwistAngle = angle;
  v6 = objc_msgSend_physicsWorld(self, a2, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF35AE08;
  v8[3] = &unk_1E7A7E270;
  v8[4] = self;
  angleCopy = angle;
  objc_msgSend__postCommandWithBlock_(v6, v7, v8);
}

- (btTypedConstraint)_createConstraint
{
  v4 = objc_msgSend_bodyA(self, a2, v2);
  v7 = objc_msgSend_bodyB(self, v5, v6);

  return sub_1AF35A280(&self->_definition, v4, v7);
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  v11.receiver = self;
  v11.super_class = VFXPhysicsConeTwistJoint;
  [(VFXPhysicsJoint *)&v11 encodeWithCoder:?];
  selfCopy += 3;
  LODWORD(v5) = selfCopy[8].n128_u32[0];
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"maximumAngularLimit1", v5);
  LODWORD(v7) = selfCopy[8].n128_u32[1];
  objc_msgSend_encodeFloat_forKey_(coder, v8, @"maximumAngularLimit2", v7);
  LODWORD(v9) = selfCopy[8].n128_u32[2];
  objc_msgSend_encodeFloat_forKey_(coder, v10, @"maximumTwistAngle", v9);
  sub_1AF371B50(coder, @"frameA", *selfCopy, selfCopy[1], selfCopy[2], selfCopy[3]);
  sub_1AF371B50(coder, @"frameB", selfCopy[4], selfCopy[5], selfCopy[6], selfCopy[7]);
}

- (VFXPhysicsConeTwistJoint)initWithCoder:(id)coder
{
  v23.receiver = self;
  v23.super_class = VFXPhysicsConeTwistJoint;
  v6 = [(VFXPhysicsJoint *)&v23 initWithCoder:?];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    objc_msgSend_decodeFloatForKey_(coder, v9, @"maximumAngularLimit1");
    v6[2]._definition.maximumAngularLimit1 = v10;
    objc_msgSend_decodeFloatForKey_(coder, v11, @"maximumAngularLimit2");
    v6[2]._definition.maximumAngularLimit2 = v12;
    objc_msgSend_decodeFloatForKey_(coder, v13, @"maximumTwistAngle");
    v6[2]._definition.maximumTwistAngle = v14;
    *&v6->_definition.maximumAngularLimit1 = sub_1AF371C4C(coder, @"frameA");
    *&v6[1].super.super.isa = v15;
    *&v6[1].super._constraint = v16;
    *&v6[1].super._bodyB = v17;
    *&v6[1]._definition.maximumAngularLimit1 = sub_1AF371C4C(coder, @"frameB");
    *&v6[2].super.super.isa = v18;
    *&v6[2].super._constraint = v19;
    *&v6[2].super._bodyB = v20;
    objc_msgSend_setImmediateMode_(VFXTransaction, v21, v7);
  }

  return v6;
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"frameA"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_frameA(self, v5, v6);
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(key, v5, @"frameB"))
    {
      v13.receiver = self;
      v13.super_class = VFXPhysicsConeTwistJoint;
      return [(VFXPhysicsConeTwistJoint *)&v13 valueForKey:key];
    }

    v7 = MEMORY[0x1E696B098];
    objc_msgSend_frameB(self, v10, v11);
  }

  return objc_msgSend_valueWithVFXMatrix4_(v7, v8, v9);
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"frameA"))
  {
    objc_msgSend_VFXMatrix4Value(value, v7, v8);

    MEMORY[0x1EEE66B58](self, sel_setFrameA_, v9);
  }

  else if (objc_msgSend_isEqualToString_(key, v7, @"frameB"))
  {
    objc_msgSend_VFXMatrix4Value(value, v10, v11);

    MEMORY[0x1EEE66B58](self, sel_setFrameB_, v12);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VFXPhysicsConeTwistJoint;
    [(VFXPhysicsConeTwistJoint *)&v13 setValue:value forKey:key];
  }
}

@end