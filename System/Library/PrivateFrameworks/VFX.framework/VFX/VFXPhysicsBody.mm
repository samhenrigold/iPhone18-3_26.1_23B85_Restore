@interface VFXPhysicsBody
+ (VFXPhysicsBody)bodyWithType:(int64_t)type shape:(id)shape;
+ (id)_generateDefaultShapeForNode:(id)node;
+ (id)dynamicBody;
+ (id)kinematicBody;
+ (id)staticBody;
- (BOOL)isResting;
- (VFXPhysicsBody)init;
- (VFXPhysicsBody)initWithCoder:(id)coder;
- (VFXPhysicsBody)initWithType:(int64_t)type shape:(id)shape;
- (VFXPhysicsShape)physicsShape;
- (__n128)velocity;
- (id)angularVelocityFactorValue;
- (id)angularVelocityValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)momentOfInertiaValue;
- (id)valueForKey:(id)key;
- (id)velocityFactorValue;
- (id)velocityValue;
- (int8x16_t)angularVelocity;
- (uint64_t)moveToTransform:(float32x4_t)transform;
- (void)_activate;
- (void)_createBody;
- (void)_removeOwner;
- (void)_setBtShape:(id)shape;
- (void)_setOwner:(id)owner;
- (void)_setPhysicsShape:(id)shape;
- (void)_updateCollisionShape;
- (void)applyForce:(BOOL)force impulse:;
- (void)applyForce:(VFXPhysicsBody *)self atPosition:(SEL)position impulse:(BOOL)impulse;
- (void)applyForceValue:(id)value atPosition:(id)position impulse:(BOOL)impulse;
- (void)applyForceValue:(id)value impulse:(BOOL)impulse;
- (void)applyTorque:(BOOL)torque impulse:;
- (void)applyTorqueValue:(id)value impulse:(BOOL)impulse;
- (void)cleanCollisionCache;
- (void)clearAllForces;
- (void)commonInit;
- (void)copyTo:(id)to withContext:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidateShape;
- (void)moveToPosition:(VFXPhysicsBody *)self;
- (void)resetToTransform:(__n128)transform;
- (void)resetTransform;
- (void)rotateToAxisAngle:(VFXPhysicsBody *)self;
- (void)setAffectedByGravity:(BOOL)gravity;
- (void)setAllowsResting:(BOOL)resting;
- (void)setAngularDamping:(float)damping;
- (void)setAngularRestingThreshold:(float)threshold;
- (void)setAngularVelocity:(VFXPhysicsBody *)self;
- (void)setAngularVelocityFactor:(VFXPhysicsBody *)self;
- (void)setAngularVelocityFactorValue:(id)value;
- (void)setAngularVelocityValue:(id)value;
- (void)setCategoryBitMask:(unint64_t)mask;
- (void)setCenterOfMassOffset:(VFXPhysicsBody *)self;
- (void)setCharge:(float)charge;
- (void)setCollisionBitMask:(unint64_t)mask;
- (void)setContactTestBitMask:(unint64_t)mask;
- (void)setContinuousCollisionDetectionThreshold:(float)threshold;
- (void)setDamping:(float)damping;
- (void)setFriction:(float)friction;
- (void)setLinearRestingThreshold:(float)threshold;
- (void)setMass:(float)mass;
- (void)setMomentOfInertia:(VFXPhysicsBody *)self;
- (void)setMomentOfInertiaValue:(id)value;
- (void)setPhysicsShape:(id)DefaultShapeForNode;
- (void)setResting:(BOOL)resting;
- (void)setRestitution:(float)restitution;
- (void)setRollingFriction:(float)friction;
- (void)setType:(int64_t)type;
- (void)setUsesDefaultMomentOfInertia:(BOOL)inertia;
- (void)setValue:(id)value forKey:(id)key;
- (void)setVelocity:(VFXPhysicsBody *)self;
- (void)setVelocityFactor:(VFXPhysicsBody *)self;
- (void)setVelocityFactorValue:(id)value;
- (void)setVelocityValue:(id)value;
- (void)updateDefaultShape;
- (void)updateGlobalScale:(double)scale;
@end

@implementation VFXPhysicsBody

- (id)momentOfInertiaValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_momentOfInertia(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_momentOfInertia(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_momentOfInertia(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

- (void)setMomentOfInertiaValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v21 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(value, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v20 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);

  objc_msgSend_setMomentOfInertia_(self, v18, v19, COERCE_DOUBLE(__PAIR64__(v20, v21)));
}

- (id)velocityValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_velocity(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_velocity(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_velocity(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

- (void)setVelocityValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v21 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(value, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v20 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);

  objc_msgSend_setVelocity_(self, v18, v19, COERCE_DOUBLE(__PAIR64__(v20, v21)));
}

- (id)angularVelocityValue
{
  v29[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_angularVelocity(self, a2, v2);
  v29[0] = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v7 = MEMORY[0x1E696AD98];
  objc_msgSend_angularVelocity(self, v8, v9);
  LODWORD(v10) = HIDWORD(v10);
  v29[1] = objc_msgSend_numberWithFloat_(v7, v11, v12, v10);
  v13 = MEMORY[0x1E696AD98];
  objc_msgSend_angularVelocity(self, v14, v15);
  LODWORD(v17) = v16;
  v29[2] = objc_msgSend_numberWithFloat_(v13, v18, v19, v17);
  v20 = MEMORY[0x1E696AD98];
  objc_msgSend_angularVelocity(self, v21, v22);
  LODWORD(v24) = v23;
  v29[3] = objc_msgSend_numberWithFloat_(v20, v25, v26, v24);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 4);
}

- (void)setAngularVelocityValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v25 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(value, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v24 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);
  v19 = objc_msgSend_objectAtIndexedSubscript_(value, v18, 3);
  objc_msgSend_floatValue(v19, v20, v21);

  objc_msgSend_setAngularVelocity_(self, v22, v23, COERCE_DOUBLE(__PAIR64__(v24, v25)));
}

- (id)velocityFactorValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_velocityFactor(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_velocityFactor(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_velocityFactor(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

- (void)setVelocityFactorValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v21 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(value, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v20 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);

  objc_msgSend_setVelocityFactor_(self, v18, v19, COERCE_DOUBLE(__PAIR64__(v20, v21)));
}

- (id)angularVelocityFactorValue
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_angularVelocityFactor(self, a2, v2);
  v7 = objc_msgSend_numberWithFloat_(v4, v5, v6);
  v8 = MEMORY[0x1E696AD98];
  objc_msgSend_angularVelocityFactor(self, v9, v10, v7);
  LODWORD(v11) = HIDWORD(v11);
  v23[1] = objc_msgSend_numberWithFloat_(v8, v12, v13, v11);
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_angularVelocityFactor(self, v15, v16);
  LODWORD(v18) = v17;
  v23[2] = objc_msgSend_numberWithFloat_(v14, v19, v20, v18);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v23, 3);
}

- (void)setAngularVelocityFactorValue:(id)value
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v21 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(value, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v20 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);

  objc_msgSend_setAngularVelocityFactor_(self, v18, v19, COERCE_DOUBLE(__PAIR64__(v20, v21)));
}

- (void)applyForceValue:(id)value impulse:(BOOL)impulse
{
  impulseCopy = impulse;
  v7 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v7, v8, v9);
  v11 = objc_msgSend_objectAtIndexedSubscript_(value, v10, 1);
  objc_msgSend_floatValue(v11, v12, v13);
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);

  MEMORY[0x1EEE66B58](self, sel_applyForce_impulse_, impulseCopy);
}

- (void)applyForceValue:(id)value atPosition:(id)position impulse:(BOOL)impulse
{
  impulseCopy = impulse;
  v9 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v9, v10, v11);
  v13 = objc_msgSend_objectAtIndexedSubscript_(value, v12, 1);
  objc_msgSend_floatValue(v13, v14, v15);
  v17 = objc_msgSend_objectAtIndexedSubscript_(value, v16, 2);
  objc_msgSend_floatValue(v17, v18, v19);
  v21 = objc_msgSend_objectAtIndexedSubscript_(position, v20, 0);
  objc_msgSend_floatValue(v21, v22, v23);
  v25 = objc_msgSend_objectAtIndexedSubscript_(position, v24, 1);
  objc_msgSend_floatValue(v25, v26, v27);
  v29 = objc_msgSend_objectAtIndexedSubscript_(position, v28, 2);
  objc_msgSend_floatValue(v29, v30, v31);

  MEMORY[0x1EEE66B58](self, sel_applyForce_atPosition_impulse_, impulseCopy);
}

- (void)applyTorqueValue:(id)value impulse:(BOOL)impulse
{
  impulseCopy = impulse;
  v7 = objc_msgSend_objectAtIndexedSubscript_(value, a2, 0);
  objc_msgSend_floatValue(v7, v8, v9);
  v11 = objc_msgSend_objectAtIndexedSubscript_(value, v10, 1);
  objc_msgSend_floatValue(v11, v12, v13);
  v15 = objc_msgSend_objectAtIndexedSubscript_(value, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);
  v19 = objc_msgSend_objectAtIndexedSubscript_(value, v18, 3);
  objc_msgSend_floatValue(v19, v20, v21);

  MEMORY[0x1EEE66B58](self, sel_applyTorque_impulse_, impulseCopy);
}

- (void)commonInit
{
  *&self->_friction = 0x3F0000003F000000;
  self->_rollingFriction = 0.0;
  self->_damping = 0.1;
  __asm { FMOV            V0.4S, #1.0 }

  *self->_velocityFactor = _Q0;
  *self->_angularVelocityFactor = _Q0;
  self->_angularDamping = 0.1;
  *&self->_linearRestingThreshold = vdup_n_s32(0x3DCCCCCDu);
  self->_allowsResting = 1;
  self->_ignoreGravity = 0;
  self->_contactTestBitMask = 0;
}

- (VFXPhysicsBody)init
{
  v7.receiver = self;
  v7.super_class = VFXPhysicsBody;
  v2 = [(VFXPhysicsBody *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_commonInit(v2, v3, v4);
  }

  return v5;
}

- (VFXPhysicsBody)initWithType:(int64_t)type shape:(id)shape
{
  v18.receiver = self;
  v18.super_class = VFXPhysicsBody;
  v6 = [(VFXPhysicsBody *)&v18 init];
  v9 = v6;
  if (v6)
  {
    v6->_type = type;
    if (shape)
    {
      v6->_defaultShape = 0;
      shapeCopy = shape;
      *(v9 + 48) = shapeCopy;
      objc_msgSend_didAddToPhysicsBody_(shapeCopy, v11, v9);
    }

    else
    {
      v6->_defaultShape = 1;
    }

    v12 = 0.0;
    if (type == 1)
    {
      v12 = 1.0;
    }

    *(v9 + 16) = v12;
    v13 = vdup_n_s32(type == 0);
    v14.i64[0] = v13.u32[0];
    v14.i64[1] = v13.u32[1];
    *(v9 + 208) = vbslq_s8(vcltzq_s64(vshlq_n_s64(v14, 0x3FuLL)), xmmword_1AFE47BA0, xmmword_1AFE47B90);
    objc_msgSend_commonInit(v9, v7, v8);
    *(v9 + 240) = objc_msgSend__createBody(v9, v15, v16);
  }

  return v9;
}

- (void)dealloc
{
  body = self->_body;
  if (body)
  {
    v4 = body[67];
    if (!v4 || ((*(*v4 + 8))(body[67], a2), (body = self->_body) != 0))
    {
      (*(*body + 16))(body, a2);
    }
  }

  objc_msgSend_didRemoveFromPhysicsBody_(self->_physicsShape, a2, self);

  v5.receiver = self;
  v5.super_class = VFXPhysicsBody;
  [(VFXPhysicsBody *)&v5 dealloc];
}

+ (VFXPhysicsBody)bodyWithType:(int64_t)type shape:(id)shape
{
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithType_shape_(v6, v7, type, shape);

  return v8;
}

+ (id)staticBody
{
  v2 = objc_opt_class();

  return objc_msgSend_bodyWithType_shape_(v2, v3, 0, 0);
}

+ (id)dynamicBody
{
  v2 = objc_opt_class();

  return objc_msgSend_bodyWithType_shape_(v2, v3, 1, 0);
}

+ (id)kinematicBody
{
  v2 = objc_opt_class();

  return objc_msgSend_bodyWithType_shape_(v2, v3, 2, 0);
}

- (void)setType:(int64_t)type
{
  self->_type = type;
  v4 = vmovn_s64(vceqq_s64(vdupq_n_s64(type), xmmword_1AFE22A20));
  v11 = v4.i8[0];
  v5 = vdup_lane_s32(v4, 1);
  v6.i64[0] = v5.i32[0];
  v6.i64[1] = v5.i32[1];
  *&self->_categoryBitMask = vbslq_s8(v6, xmmword_1AFE47BA0, xmmword_1AFE47B90);
  node = self->_node;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1AF35667C;
  v12[3] = &unk_1E7A7E248;
  v12[4] = self;
  v12[5] = type;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v12);
  v10 = 0.0;
  if (v11)
  {
    *&v10 = 1.0;
  }

  objc_msgSend_setMass_(self, v8, v9, v10);
}

- (void)setMass:(float)mass
{
  v8 = *MEMORY[0x1E69E9840];
  self->_mass = mass;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3020000000;
  v7 = *&self->_momentOfInertia[3];
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF356800;
  v4[3] = &unk_1E7A7F730;
  massCopy = mass;
  v4[4] = self;
  v4[5] = v6;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
  _Block_object_dispose(v6, 8);
}

- (void)setMomentOfInertia:(VFXPhysicsBody *)self
{
  v7 = *MEMORY[0x1E69E9840];
  *&self->_momentOfInertia[3] = v2;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3020000000;
  v6 = v2;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF356938;
  v4[3] = &unk_1E7A7F758;
  v4[4] = self;
  v4[5] = v5;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
  _Block_object_dispose(v5, 8);
}

- (void)setCenterOfMassOffset:(VFXPhysicsBody *)self
{
  *&self->_centerOfMassOffset[3] = v2;
  mass = self->_mass;
  v4 = *&self->_momentOfInertia[3];
  explicitMomentOfInertia = self->_explicitMomentOfInertia;
  node = self->_node;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1AF356A18;
  v7[3] = &unk_1E7A7F780;
  selfCopy = self;
  v11 = mass;
  v12 = explicitMomentOfInertia;
  v8 = v2;
  v9 = v4;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v7);
}

- (void)setUsesDefaultMomentOfInertia:(BOOL)inertia
{
  v7 = *MEMORY[0x1E69E9840];
  self->_explicitMomentOfInertia = !inertia;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3020000000;
  v6 = *&self->_momentOfInertia[3];
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF356BD0;
  v4[3] = &unk_1E7A7F758;
  v4[4] = self;
  v4[5] = v5;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
  _Block_object_dispose(v5, 8);
}

- (void)setCharge:(float)charge
{
  self->_charge = charge;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF356CA4;
  v4[3] = &unk_1E7A7E270;
  v4[4] = self;
  chargeCopy = charge;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (BOOL)isResting
{
  body = self->_body;
  if (!body)
  {
    return 0;
  }

  v3 = body[61];
  return v3 == 2 || v3 == 5;
}

- (void)updateGlobalScale:(double)scale
{
  v3 = *(self->_body + 67);
  if (v3)
  {
    scaleCopy = scale;
    *(v3 + 64) = scaleCopy;
  }
}

- (void)setAllowsResting:(BOOL)resting
{
  self->_allowsResting = resting;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF356DFC;
  v4[3] = &unk_1E7A7E298;
  v4[4] = self;
  restingCopy = resting;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (void)setFriction:(float)friction
{
  self->_friction = friction;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF356EE8;
  v4[3] = &unk_1E7A7E270;
  v4[4] = self;
  frictionCopy = friction;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (void)setRestitution:(float)restitution
{
  self->_restitution = restitution;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF356F8C;
  v4[3] = &unk_1E7A7E270;
  v4[4] = self;
  restitutionCopy = restitution;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (void)setRollingFriction:(float)friction
{
  self->_rollingFriction = friction;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF357030;
  v4[3] = &unk_1E7A7E270;
  v4[4] = self;
  frictionCopy = friction;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (void)setDamping:(float)damping
{
  self->_damping = damping;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF3570D4;
  v4[3] = &unk_1E7A7E270;
  v4[4] = self;
  dampingCopy = damping;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (void)setAngularDamping:(float)damping
{
  self->_angularDamping = damping;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF357180;
  v4[3] = &unk_1E7A7E270;
  v4[4] = self;
  dampingCopy = damping;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (void)setLinearRestingThreshold:(float)threshold
{
  self->_linearRestingThreshold = threshold;
  angularRestingThreshold = self->_angularRestingThreshold;
  node = self->_node;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF357230;
  v5[3] = &unk_1E7A7E248;
  v5[4] = self;
  thresholdCopy = threshold;
  v7 = angularRestingThreshold;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v5);
}

- (void)setAngularRestingThreshold:(float)threshold
{
  self->_angularRestingThreshold = threshold;
  linearRestingThreshold = self->_linearRestingThreshold;
  node = self->_node;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF3572DC;
  v5[3] = &unk_1E7A7E248;
  v5[4] = self;
  v6 = linearRestingThreshold;
  thresholdCopy = threshold;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v5);
}

- (void)_setBtShape:(id)shape
{
  btShapeWrapper = self->_btShapeWrapper;
  if (btShapeWrapper != shape)
  {

    self->_btShapeWrapper = shape;
  }
}

- (void)cleanCollisionCache
{
  v4 = objc_msgSend_world(self->_node, a2, v2);
  v7 = objc_msgSend_physicsWorld(v4, v5, v6);
  v10 = objc_msgSend__handle(v7, v8, v9);
  if (v10)
  {
    v11 = *(v10 + 40);
    v12 = (*(**(v10 + 96) + 72))(*(v10 + 96));
    (*(*v12 + 80))(v12, *(self->_body + 25), v11);
    v13 = (*(*v12 + 56))(v12);
    v14 = *(v13 + 4);
    if (v14 >= 1)
    {
      v15 = v13;
      v16 = 0;
      for (i = 0; i < v14; ++i)
      {
        v18 = *(v15 + 16);
        v19 = **(v18 + v16);
        if (v19 == self->_body)
        {
          v19 = **(v18 + v16 + 8);
        }

        if (v19[61] != 4)
        {
          sub_1AFD73C3C(v19, 1);
          v14 = *(v15 + 4);
        }

        v16 += 32;
      }
    }
  }
}

- (void)invalidateShape
{
  objc_msgSend__updateCollisionShape(self, a2, v2);

  objc_msgSend_cleanCollisionCache(self, v4, v5);
}

- (void)_updateCollisionShape
{
  physicsShape = self->_physicsShape;
  mass = self->_mass;
  explicitMomentOfInertia = self->_explicitMomentOfInertia;
  v11 = *&self->_centerOfMassOffset[3];
  v12 = *&self->_momentOfInertia[3];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = objc_msgSend_nodeRef(self->_node, a2, v2);
  v8 = v22[3];
  if (v8)
  {
    CFRetain(v8);
  }

  v9 = v11;
  HIDWORD(v9) = 0;
  node = self->_node;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3321888768;
  v13[2] = sub_1AF3575D0;
  v13[3] = &unk_1F24EC450;
  selfCopy = self;
  v17 = physicsShape;
  v18 = &v21;
  v19 = mass;
  v20 = explicitMomentOfInertia;
  v14 = v12;
  v15 = v9;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, node, v13);
  _Block_object_dispose(&v21, 8);
}

- (void)setPhysicsShape:(id)DefaultShapeForNode
{
  if (self->_physicsShape != DefaultShapeForNode)
  {
    if (DefaultShapeForNode)
    {
      v5 = 0;
    }

    else
    {
      DefaultShapeForNode = objc_msgSend__generateDefaultShapeForNode_(VFXPhysicsBody, a2, self->_node);
      v5 = 1;
    }

    self->_defaultShape = v5;

    MEMORY[0x1EEE66B58](self, sel__setPhysicsShape_, DefaultShapeForNode);
  }
}

- (VFXPhysicsShape)physicsShape
{
  if (self->_defaultShape)
  {
    return 0;
  }

  else
  {
    return self->_physicsShape;
  }
}

- (void)updateDefaultShape
{
  DefaultShapeForNode = objc_msgSend__generateDefaultShapeForNode_(VFXPhysicsBody, a2, self->_node);

  MEMORY[0x1EEE66B58](self, sel__setPhysicsShape_, DefaultShapeForNode);
}

- (void)setCategoryBitMask:(unint64_t)mask
{
  self->_categoryBitMask = mask;
  collisionBitMask = self->_collisionBitMask;
  contactTestBitMask = self->_contactTestBitMask;
  v7 = objc_msgSend_world(self->_node, a2, mask);
  IfNeeded = objc_msgSend__physicsWorldCreateIfNeeded_(v7, v8, 0);
  if (IfNeeded)
  {
    node = self->_node;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1AF357974;
    v12[3] = &unk_1E7A7F7A8;
    v12[4] = self;
    v12[5] = IfNeeded;
    v12[6] = mask;
    v12[7] = collisionBitMask;
    v12[8] = contactTestBitMask;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, node, v12);
  }
}

- (void)setCollisionBitMask:(unint64_t)mask
{
  self->_collisionBitMask = mask;
  categoryBitMask = self->_categoryBitMask;
  contactTestBitMask = self->_contactTestBitMask;
  v7 = objc_msgSend_world(self->_node, a2, mask);
  IfNeeded = objc_msgSend__physicsWorldCreateIfNeeded_(v7, v8, 0);
  if (IfNeeded)
  {
    node = self->_node;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1AF357AB0;
    v12[3] = &unk_1E7A7F7A8;
    v12[4] = self;
    v12[5] = IfNeeded;
    v12[6] = mask;
    v12[7] = categoryBitMask;
    v12[8] = contactTestBitMask;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, node, v12);
  }
}

- (void)setContactTestBitMask:(unint64_t)mask
{
  self->_contactTestBitMask = mask;
  categoryBitMask = self->_categoryBitMask;
  collisionBitMask = self->_collisionBitMask;
  v7 = objc_msgSend_world(self->_node, a2, mask);
  IfNeeded = objc_msgSend__physicsWorldCreateIfNeeded_(v7, v8, 0);
  if (IfNeeded)
  {
    node = self->_node;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1AF357BE8;
    v12[3] = &unk_1E7A7F7A8;
    v12[4] = self;
    v12[5] = IfNeeded;
    v12[6] = mask;
    v12[7] = collisionBitMask;
    v12[8] = categoryBitMask;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, node, v12);
  }
}

- (void)setContinuousCollisionDetectionThreshold:(float)threshold
{
  self->_continuousCollisionDetectionThreshold = threshold;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF357CE4;
  v4[3] = &unk_1E7A7E270;
  v4[4] = self;
  thresholdCopy = threshold;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (void)setVelocity:(VFXPhysicsBody *)self
{
  *self->_velocity = v2;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF357D94;
  v4[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v5 = v2;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (__n128)velocity
{
  if (objc_msgSend_immediateMode(VFXTransaction, a2, a3) && (v5 = self[15].n128_u64[0]) != 0)
  {
    result.n128_u64[0] = *(v5 + 352);
  }

  else
  {
    return self[9];
  }

  return result;
}

- (void)setAffectedByGravity:(BOOL)gravity
{
  self->_ignoreGravity = !gravity;
  node = self->_node;
  if (node)
  {
    v6 = objc_msgSend_world(node, a2, gravity);
    node = objc_msgSend__physicsWorldCreateIfNeeded_(v6, v7, 0);
    v8 = self->_node;
  }

  else
  {
    v8 = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF357EDC;
  v9[3] = &unk_1E7A7F7D0;
  gravityCopy = gravity;
  v9[4] = self;
  v9[5] = node;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, v8, v9);
}

- (void)setAngularVelocity:(VFXPhysicsBody *)self
{
  *self->_angularVelocity = v2;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF358004;
  v4[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v5 = v2;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (int8x16_t)angularVelocity
{
  if (objc_msgSend_immediateMode(VFXTransaction, a2, a3) && (v4 = self[15].i64[0]) != 0)
  {
    v5 = *(v4 + 368);
    result = vmulq_f32(v5, v5);
    v6 = sqrtf(vadd_f32(vpadd_f32(*result.i8, *result.i8), *&vextq_s8(result, result, 8uLL)).f32[0]);
    result.i64[0] = 0;
    if (v6 > 0.0)
    {
      result.i64[0] = vmulq_n_f32(v5, 1.0 / v6).u64[0];
    }
  }

  else
  {
    return self[5];
  }

  return result;
}

- (void)setVelocityFactor:(VFXPhysicsBody *)self
{
  *self->_velocityFactor = v2;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF35811C;
  v4[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v5 = v2;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (void)setAngularVelocityFactor:(VFXPhysicsBody *)self
{
  *self->_angularVelocityFactor = v2;
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF3581D4;
  v4[3] = &unk_1E7A7E5C8;
  selfCopy = self;
  v5 = v2;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (void)applyForce:(BOOL)force impulse:
{
  node = self->_node;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF358280;
  v5[3] = &unk_1E7A7F7F8;
  selfCopy = self;
  forceCopy = force;
  v6 = v3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v5);
}

- (void)applyForce:(VFXPhysicsBody *)self atPosition:(SEL)position impulse:(BOOL)impulse
{
  node = self->_node;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF3583A8;
  v6[3] = &unk_1E7A7F820;
  selfCopy = self;
  impulseCopy = impulse;
  v7 = v3;
  v8 = v4;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, position, node, v6);
}

- (void)applyTorque:(BOOL)torque impulse:
{
  node = self->_node;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF3585E8;
  v5[3] = &unk_1E7A7F7F8;
  selfCopy = self;
  v6 = v3;
  torqueCopy = torque;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v5);
}

- (void)_activate
{
  body = self->_body;
  if (body)
  {
    sub_1AFD73C5C(body, 0);
  }
}

- (void)clearAllForces
{
  node = self->_node;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF358758;
  v3[3] = &unk_1E7A7E1D0;
  v3[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v3);
}

- (void)setResting:(BOOL)resting
{
  node = self->_node;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF358848;
  v4[3] = &unk_1E7A7E298;
  v4[4] = self;
  restingCopy = resting;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, node, v4);
}

- (void)resetToTransform:(__n128)transform
{
  v6 = *(self + 8);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF3588FC;
  v8[3] = &unk_1E7A7E578;
  selfCopy = self;
  v9 = a2;
  transformCopy = transform;
  v11 = a4;
  v12 = a5;
  return objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v5, v6, v8);
}

- (void)resetTransform
{
  node = self->_node;
  if (node)
  {
    objc_msgSend_worldTransform(node, a2, v2);
    v5 = self->_node;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF3589A8;
    v11[3] = &unk_1E7A7E578;
    selfCopy = self;
    v12 = v6;
    v13 = v7;
    v14 = v8;
    v15 = v9;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, v5, v11);
  }
}

- (void)moveToPosition:(VFXPhysicsBody *)self
{
  v4 = objc_msgSend_presentationNode(self->_node, a2, v2);
  objc_msgSend_worldTransform(v4, v5, v6);

  MEMORY[0x1EEE66B58](self, sel_moveToTransform_, v7);
}

- (void)rotateToAxisAngle:(VFXPhysicsBody *)self
{
  v50 = v3;
  v5 = objc_msgSend_presentationNode(self->_node, a2, v2);
  objc_msgSend_worldTransform(v5, v6, v7);
  v53 = v8;
  v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), vnegq_f32(v10)), v9, vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL));
  v13 = vmulq_f32(v12, vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));
  v14 = vmulq_f32(v12, v12);
  v15 = vmulq_f32(v10, v10);
  *v11.i8 = vadd_f32(vzip1_s32(*v14.i8, *v15.i8), vzip2_s32(*v14.i8, *v15.i8));
  v17 = vextq_s8(v14, v14, 8uLL);
  *v17.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v17.f32, *&vextq_s8(v15, v15, 8uLL)), *v11.i8));
  v16 = vmulq_f32(v9, v9);
  v17.i32[2] = sqrtf(v16.f32[2] + vaddv_f32(*v16.f32));
  if ((v13.f32[2] + vaddv_f32(*v13.f32)) >= 0.0)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = -1.0;
  }

  v52 = vmulq_n_f32(v17, v18);
  v19 = v50.f32[3];
  v20 = vmulq_f32(v50, v50);
  v20.f32[0] = v20.f32[2] + vaddv_f32(*v20.f32);
  v21 = vdupq_lane_s32(*v20.f32, 0);
  v21.i32[3] = 0;
  v22 = vrsqrteq_f32(v21);
  v23 = vmulq_f32(v22, vrsqrtsq_f32(v21, vmulq_f32(v22, v22)));
  v24 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v20.f32[0] != 0.0)), 0x1FuLL));
  v24.i32[3] = 0;
  v51 = vbslq_s8(vcltzq_s32(v24), vmulq_f32(vmulq_f32(v23, vrsqrtsq_f32(v21, vmulq_f32(v23, v23))), v50), v50);
  v26 = __sincosf_stret(v19);
  v27 = 0;
  v28 = v51;
  v29 = vmulq_f32(v28, v28);
  __asm { FMOV            V2.4S, #1.0 }

  v35 = vmlaq_n_f32(v29, vsubq_f32(_Q2, v29), v26.__cosval);
  v36 = (1.0 - v26.__cosval) * vmuls_lane_f32(v28.f32[0], *v28.f32, 1);
  v37 = (1.0 - v26.__cosval) * vmuls_lane_f32(v28.f32[0], v28, 2);
  _Q2.f32[0] = (1.0 - v26.__cosval) * vmuls_lane_f32(v51.f32[1], v51, 2);
  v38 = vmulq_n_f32(v51, -v26.__sinval);
  *&v39 = v37 + v38.f32[1];
  v40.f32[0] = v37 - v38.f32[1];
  v40.f32[1] = _Q2.f32[0] + v38.f32[0];
  v40.i64[1] = v35.u32[2];
  v42.i32[0] = v35.i32[0];
  *&v41 = _Q2.f32[0] - v38.f32[0];
  v42.f32[1] = v36 - v38.f32[2];
  v42.i64[1] = v39;
  v43.f32[0] = v36 + v38.f32[2];
  v43.i32[1] = v35.i32[1];
  v43.i64[1] = v41;
  v44 = vabsq_f32(v52);
  v44.i32[3] = 0;
  *&v45 = 0;
  v46.i64[0] = 0x8000000080000000;
  v46.i64[1] = 0x8000000080000000;
  v47 = vorrq_s8(vandq_s8(v52, v46), vabsq_f32(vmaxnmq_f32(v44, xmmword_1AFE20A30)));
  v38.i32[0] = 0;
  v38.i32[1] = v47.i32[1];
  *(&v45 + 1) = v47.u32[2];
  v54 = v47.u32[0];
  v55 = v38.u64[0];
  v56 = v45;
  v57 = xmmword_1AFE201A0;
  do
  {
    v58[v27 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v42, COERCE_FLOAT(*(&v54 + v27))), v43, *(&v54 + v27), 1), v40, *(&v54 + v27), 2), xmmword_1AFE201A0, *(&v54 + v27), 3);
    v27 += 16;
  }

  while (v27 != 64);
  v48 = 0;
  v49 = v53;
  v49.i32[3] = 1.0;
  v54 = v58[0];
  v55 = v58[1];
  v56 = v58[2];
  v57 = v58[3];
  do
  {
    v58[v48 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(&v54 + v48))), xmmword_1AFE20160, *(&v54 + v48), 1), xmmword_1AFE20180, *(&v54 + v48), 2), v49, *(&v54 + v48), 3);
    v48 += 16;
  }

  while (v48 != 64);

  (MEMORY[0x1EEE66B58])(self, sel_moveToTransform_, v25);
}

- (uint64_t)moveToTransform:(float32x4_t)transform
{
  result = self[30];
  if (result)
  {
    v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a4, a4), a4, 0xCuLL), vnegq_f32(transform)), a4, vextq_s8(vuzp1q_s32(transform, transform), transform, 0xCuLL));
    v12 = vmulq_f32(a2, vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));
    v13 = (v12.f32[2] + vaddv_f32(*v12.f32)) >= 0.0 ? 1.0 : -1.0;
    v14 = vmulq_f32(a2, a2);
    v15 = vmulq_f32(transform, transform);
    v16 = vadd_f32(vzip1_s32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v15, v15, 8uLL)), vadd_f32(vzip1_s32(*v14.i8, *v15.i8), vzip2_s32(*v14.i8, *v15.i8)));
    *a9.f32 = vsqrt_f32(v16);
    v17 = vmulq_f32(a4, a4);
    v18 = v17.f32[2] + vaddv_f32(*v17.f32);
    a9.i32[2] = sqrtf(v18);
    v19 = vmulq_n_f32(a9, v13);
    if (v19.f32[0] != 0.0 && v19.f32[1] != 0.0)
    {
      v20 = v19.i32[2];
      if (v19.f32[2] != 0.0)
      {
        v40 = v19;
        v21 = vrsqrte_f32(v16.u32[0]);
        v22 = vmul_f32(v21, vrsqrts_f32(v16.u32[0], vmul_f32(v21, v21)));
        v23 = vmulq_n_f32(a2, vmul_f32(v22, vrsqrts_f32(v16.u32[0], vmul_f32(v22, v22))).f32[0]);
        v24 = v16.u32[1];
        v25 = vrsqrte_f32(v16.u32[1]);
        v26 = vmul_f32(v25, vrsqrts_f32(v24, vmul_f32(v25, v25)));
        v27 = vmulq_n_f32(transform, vmul_f32(v26, vrsqrts_f32(v24, vmul_f32(v26, v26))).f32[0]);
        v28 = LODWORD(v18);
        v29 = vrsqrte_f32(LODWORD(v18));
        v30 = vmul_f32(v29, vrsqrts_f32(v28, vmul_f32(v29, v29)));
        v41 = vzip1_s32(*v23.i8, *v27.i8);
        v31 = vmulq_n_f32(a4, vmul_f32(v30, vrsqrts_f32(v28, vmul_f32(v30, v30))).f32[0]);
        v42 = v31.i32[0];
        v43 = 0;
        v44 = vzip2_s32(*v23.i8, *v27.i8);
        v45 = v31.i32[1];
        v46 = 0;
        v47 = vzip2q_s32(v23, v27).u64[0];
        v48 = v31.i32[2];
        v49 = 0;
        v50 = a5.n128_u64[0];
        v51 = a5.n128_u32[2];
        v52 = 0;
        sub_1AFDA6AC0(result, &v41);
        v34 = self[30];
        v35 = *(v34 + 536);
        if (v35)
        {
          v36 = vmvnq_s8(vceqq_f32(v35[1], v40));
          v36.i32[3] = v36.i32[2];
          if ((vmaxvq_u32(v36) & 0x80000000) != 0)
          {
            v35[1] = v40;
            v37 = self[6];
            if (v37)
            {
              objc_msgSend__setNodeScale_(v37, v32, v33);
            }

            else
            {
              v38 = self[31];
              if (v38)
              {
                v39 = objc_msgSend_btShape(v38, v32, v33);
                v41 = *v40.f32;
                v42 = v20;
                v43 = 0;
                (*(*v39 + 48))(v39, &v41);
              }
            }
          }

          else if (self[7] == 2)
          {
            goto LABEL_17;
          }

          objc_msgSend_cleanCollisionCache(self, v32, v33, *&v40);
          v34 = self[30];
        }

LABEL_17:
        sub_1AF3561F8(v34);
        return sub_1AFD73C5C(self[30], 1);
      }
    }
  }

  return result;
}

- (void)copyTo:(id)to withContext:(id)context
{
  objc_msgSend_begin(VFXTransaction, a2, to);
  objc_msgSend_setImmediateMode_(VFXTransaction, v7, 1);
  v10 = objc_msgSend_type(self, v8, v9);
  objc_msgSend_setType_(to, v11, v10);
  v14 = objc_msgSend_physicsShape(self, v12, v13);
  v15 = sub_1AF2BED30(v14, context);
  objc_msgSend_setPhysicsShape_(to, v16, v15);
  objc_msgSend_mass(self, v17, v18);
  objc_msgSend_setMass_(to, v19, v20);
  objc_msgSend_charge(self, v21, v22);
  objc_msgSend_setCharge_(to, v23, v24);
  objc_msgSend_friction(self, v25, v26);
  objc_msgSend_setFriction_(to, v27, v28);
  objc_msgSend_restitution(self, v29, v30);
  objc_msgSend_setRestitution_(to, v31, v32);
  objc_msgSend_rollingFriction(self, v33, v34);
  objc_msgSend_setRollingFriction_(to, v35, v36);
  objc_msgSend_damping(self, v37, v38);
  objc_msgSend_setDamping_(to, v39, v40);
  objc_msgSend_angularVelocity(self, v41, v42);
  objc_msgSend_setAngularVelocity_(to, v43, v44);
  objc_msgSend_angularDamping(self, v45, v46);
  objc_msgSend_setAngularDamping_(to, v47, v48);
  objc_msgSend_linearRestingThreshold(self, v49, v50);
  objc_msgSend_setLinearRestingThreshold_(to, v51, v52);
  objc_msgSend_angularRestingThreshold(self, v53, v54);
  objc_msgSend_setAngularRestingThreshold_(to, v55, v56);
  objc_msgSend_velocityFactor(self, v57, v58);
  objc_msgSend_setVelocityFactor_(to, v59, v60);
  objc_msgSend_angularVelocityFactor(self, v61, v62);
  objc_msgSend_setAngularVelocityFactor_(to, v63, v64);
  objc_msgSend_velocity(self, v65, v66);
  objc_msgSend_setVelocity_(to, v67, v68);
  v71 = objc_msgSend_categoryBitMask(self, v69, v70);
  objc_msgSend_setCategoryBitMask_(to, v72, v71);
  v75 = objc_msgSend_collisionBitMask(self, v73, v74);
  objc_msgSend_setCollisionBitMask_(to, v76, v75);
  v79 = objc_msgSend_contactTestBitMask(self, v77, v78);
  objc_msgSend_setContactTestBitMask_(to, v80, v79);
  v83 = objc_msgSend_allowsResting(self, v81, v82);
  objc_msgSend_setAllowsResting_(to, v84, v83);
  objc_msgSend_angularVelocity(self, v85, v86);
  objc_msgSend_setAngularVelocity_(to, v87, v88);
  isAffectedByGravity = objc_msgSend_isAffectedByGravity(self, v89, v90);
  objc_msgSend_setAffectedByGravity_(to, v92, isAffectedByGravity);
  v95 = objc_msgSend_usesDefaultMomentOfInertia(self, v93, v94);
  objc_msgSend_setUsesDefaultMomentOfInertia_(to, v96, v95);
  objc_msgSend_momentOfInertia(self, v97, v98);
  objc_msgSend_setMomentOfInertia_(to, v99, v100);
  objc_msgSend_centerOfMassOffset(self, v101, v102);
  objc_msgSend_setCenterOfMassOffset_(to, v103, v104);
  objc_msgSend_continuousCollisionDetectionThreshold(self, v105, v106);
  objc_msgSend_setContinuousCollisionDetectionThreshold_(to, v107, v108);
  *(to + 30) = objc_msgSend__createBody(to, v109, v110);

  objc_msgSend_commitImmediate(VFXTransaction, v111, v112);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyTo_withContext_(self, v5, v4, 0);
  return v4;
}

- (void)_createBody
{
  mass = self->_mass;
  v14 = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v28 = 0;
  v29 = xmmword_1AFE47BB0;
  v15 = xmmword_1AFE20150;
  v16 = xmmword_1AFE20160;
  v17 = xmmword_1AFE20180;
  v18 = 0;
  angularDamping = self->_angularDamping;
  damping = self->_damping;
  v24 = angularDamping;
  v27 = *&self->_linearRestingThreshold;
  friction = self->_friction;
  v26 = vrev64_s32(*&self->_restitution);
  v4 = sub_1AFDA7294(704, 16);
  sub_1AFDA6574(v4, &mass);
  sub_1AF356184(v4, self->_type);
  v5 = *self->_velocity;
  HIDWORD(v5) = 0;
  *(v4 + 352) = v5;
  v6 = *self->_angularVelocity;
  HIDWORD(v6) = 0;
  *(v4 + 368) = v6;
  v7 = *self->_velocityFactor;
  v8 = vmulq_n_f32(v7, *(v4 + 384));
  v7.i32[3] = 0;
  *(v4 + 400) = v7;
  v8.i32[3] = 0;
  *(v4 + 640) = v8;
  v9 = *self->_angularVelocityFactor;
  HIDWORD(v9) = 0;
  *(v4 + 624) = v9;
  if (self->_allowsResting)
  {
    v10 = 1;
  }

  else
  {
    v10 = 4;
  }

  sub_1AFD73C3C(v4, v10);
  *(v4 + 532) = self->_charge;
  *(v4 + 288) = self->_continuousCollisionDetectionThreshold;
  if (self->_ignoreGravity)
  {
    *(v4 + 576) = 1;
    v12 = 0uLL;
    sub_1AFDA68D8(v4, &v12);
  }

  return v4;
}

- (void)_removeOwner
{
  node = self->_node;
  v5 = objc_msgSend_world(node, a2, v2);
  v8 = objc_msgSend_physicsWorld(v5, v6, v7);
  self->_node = 0;
  body = self->_body;
  if (body)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF3593B4;
    v11[3] = &unk_1E7A7E310;
    v11[4] = node;
    v11[5] = v8;
    v11[6] = self;
    v11[7] = body;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, node, v11);
  }
}

- (void)_setOwner:(id)owner
{
  if (self->_node)
  {
    if (self->_body)
    {
      v5 = sub_1AF0D5194(self, a2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDFA608(v5, a2, owner, v6, v7, v8, v9, v10);
      }
    }
  }

  self->_node = owner;
  v11 = objc_msgSend_nodeRef(owner, a2, owner);
  body = self->_body;
  v15 = objc_msgSend_categoryBitMask(self, v13, v14);
  v18 = objc_msgSend_collisionBitMask(self, v16, v17);
  v21 = objc_msgSend_contactTestBitMask(self, v19, v20);
  node = self->_node;
  if (node)
  {
    v24 = v21;
    mass = self->_mass;
    explicitMomentOfInertia = self->_explicitMomentOfInertia;
    v27 = *&self->_momentOfInertia[3];
    v28 = *&self->_centerOfMassOffset[3];
    HIDWORD(v28) = 0;
    if (!self->_physicsShape)
    {
      v32 = v28;
      v33 = *&self->_momentOfInertia[3];
      v29 = objc_msgSend__generateDefaultShapeForNode_(VFXPhysicsBody, v22, node);
      self->_physicsShape = v29;
      objc_msgSend_didAddToPhysicsBody_(v29, v30, self);
      v28 = v32;
      v27 = v33;
      node = self->_node;
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3321888768;
    v34[2] = sub_1AF3595B4;
    v34[3] = &unk_1F24EC488;
    ownerCopy = owner;
    selfCopy = self;
    v39 = v11;
    v40 = body;
    v44 = mass;
    v45 = explicitMomentOfInertia;
    v35 = v27;
    v36 = v28;
    v41 = v15;
    v42 = v18;
    v43 = v24;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v22, node, v34);
  }

  else
  {
    v31 = sub_1AF0D5194(v21, v22);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA680();
    }
  }
}

+ (id)_generateDefaultShapeForNode:(id)node
{
  if (objc_msgSend_model(node, a2, node))
  {

    return objc_msgSend_shapeWithModel_(VFXPhysicsShape, v4, 0);
  }

  else
  {

    return objc_msgSend_shapeWithNode_flattened_(VFXPhysicsShape, v4, node, 0);
  }
}

- (void)_setPhysicsShape:(id)shape
{
  selfCopy = self;
  if (!shape)
  {
    v5 = sub_1AF0D5194(self, a2);
    self = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);
    if (self)
    {
      sub_1AFDFA6F4(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  if (selfCopy->_physicsShape == shape)
  {
    v12 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFA76C(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  physicsShape = selfCopy->_physicsShape;
  selfCopy->_physicsShape = shape;
  objc_msgSend_didRemoveFromPhysicsBody_(physicsShape, v21, selfCopy);
  objc_msgSend_didAddToPhysicsBody_(selfCopy->_physicsShape, v22, selfCopy);

  objc_msgSend__updateCollisionShape(selfCopy, v23, v24);
}

- (id)valueForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"momentOfInertia"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_momentOfInertia(self, v5, v6);
LABEL_5:

    return objc_msgSend_valueWithVFXFloat3_(v7, v8, v9);
  }

  if (objc_msgSend_isEqualToString_(key, v5, @"velocity"))
  {
    v7 = MEMORY[0x1E696B098];
    objc_msgSend_velocity(self, v10, v11);
    goto LABEL_5;
  }

  if (!objc_msgSend_isEqualToString_(key, v10, @"angularVelocity"))
  {
    if (objc_msgSend_isEqualToString_(key, v13, @"velocityFactor"))
    {
      v7 = MEMORY[0x1E696B098];
      objc_msgSend_velocityFactor(self, v18, v19);
    }

    else if (objc_msgSend_isEqualToString_(key, v18, @"angularVelocityFactor"))
    {
      v7 = MEMORY[0x1E696B098];
      objc_msgSend_angularVelocityFactor(self, v20, v21);
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(key, v20, @"centerOfMassOffset"))
      {
        v24.receiver = self;
        v24.super_class = VFXPhysicsBody;
        return [(VFXPhysicsBody *)&v24 valueForKey:key];
      }

      v7 = MEMORY[0x1E696B098];
      objc_msgSend_centerOfMassOffset(self, v22, v23);
    }

    goto LABEL_5;
  }

  v15 = MEMORY[0x1E696B098];
  objc_msgSend_angularVelocity(self, v13, v14);

  return objc_msgSend_valueWithVFXFloat4_(v15, v16, v17);
}

- (void)setValue:(id)value forKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"momentOfInertia"))
  {
    objc_msgSend_VFXFloat3Value(value, v7, v8);

    objc_msgSend_setMomentOfInertia_(self, v9, v10);
  }

  else if (objc_msgSend_isEqualToString_(key, v7, @"velocity"))
  {
    objc_msgSend_VFXFloat3Value(value, v11, v12);

    objc_msgSend_setVelocity_(self, v13, v14);
  }

  else if (objc_msgSend_isEqualToString_(key, v11, @"angularVelocity"))
  {
    objc_msgSend_VFXFloat4Value(value, v15, v16);

    objc_msgSend_setAngularVelocity_(self, v17, v18);
  }

  else if (objc_msgSend_isEqualToString_(key, v15, @"velocityFactor"))
  {
    objc_msgSend_VFXFloat3Value(value, v19, v20);

    objc_msgSend_setVelocityFactor_(self, v21, v22);
  }

  else if (objc_msgSend_isEqualToString_(key, v19, @"angularVelocityFactor"))
  {
    objc_msgSend_VFXFloat3Value(value, v23, v24);

    objc_msgSend_setAngularVelocityFactor_(self, v25, v26);
  }

  else if (objc_msgSend_isEqualToString_(key, v23, @"centerOfMassOffset"))
  {
    objc_msgSend_VFXFloat3Value(value, v27, v28);

    objc_msgSend_setCenterOfMassOffset_(self, v29, v30);
  }

  else
  {
    v31.receiver = self;
    v31.super_class = VFXPhysicsBody;
    [(VFXPhysicsBody *)&v31 setValue:value forKey:key];
  }
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeDouble_forKey_(coder, a2, @"mass", self->_mass);
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"charge", self->_charge);
  objc_msgSend_encodeDouble_forKey_(coder, v6, @"friction", self->_friction);
  objc_msgSend_encodeDouble_forKey_(coder, v7, @"restitution", self->_restitution);
  objc_msgSend_encodeDouble_forKey_(coder, v8, @"rollingFriction", self->_rollingFriction);
  objc_msgSend_encodeDouble_forKey_(coder, v9, @"ccdThreshold", self->_continuousCollisionDetectionThreshold);
  if (!self->_defaultShape)
  {
    objc_msgSend_encodeObject_forKey_(coder, v10, self->_physicsShape, @"physicsShape");
  }

  objc_msgSend_encodeInteger_forKey_(coder, v10, self->_type, @"type");
  objc_msgSend_encodeDouble_forKey_(coder, v11, @"damping", self->_damping);
  sub_1AF371AF4(coder, @"angularVelocity", *self->_angularVelocity);
  objc_msgSend_encodeDouble_forKey_(coder, v12, @"angularDamping", self->_angularDamping);
  objc_msgSend_encodeDouble_forKey_(coder, v13, @"linearRestingThreshold", self->_linearRestingThreshold);
  objc_msgSend_encodeDouble_forKey_(coder, v14, @"angularRestingThreshold", self->_angularRestingThreshold);
  sub_1AF371A8C(coder, @"velocityFactor", *self->_velocityFactor);
  sub_1AF371A8C(coder, @"angularVelocityFactor", *self->_angularVelocityFactor);
  sub_1AF371A8C(coder, @"velocity", *self->_velocity);
  objc_msgSend_encodeBool_forKey_(coder, v15, self->_ignoreGravity, @"ignoreGravity");
  objc_msgSend_encodeBool_forKey_(coder, v16, self->_explicitMomentOfInertia, @"explicitMomentOfInertia");
  sub_1AF371A8C(coder, @"momentOfInertia", *&self->_momentOfInertia[3]);
  sub_1AF371A8C(coder, @"centerOfMassOffset", *&self->_centerOfMassOffset[3]);
  objc_msgSend_encodeInteger_forKey_(coder, v17, self->_categoryBitMask, @"categoryBitMask");
  objc_msgSend_encodeInteger_forKey_(coder, v18, self->_collisionBitMask, @"collisionBitMask");
  objc_msgSend_encodeInteger_forKey_(coder, v19, self->_contactTestBitMask, @"contactTestBitMask");
  objc_msgSend_encodeBool_forKey_(coder, v20, self->_allowsResting, @"allowsResting");
  defaultShape = self->_defaultShape;

  objc_msgSend_encodeBool_forKey_(coder, v21, defaultShape, @"defaultShape");
}

- (VFXPhysicsBody)initWithCoder:(id)coder
{
  v100.receiver = self;
  v100.super_class = VFXPhysicsBody;
  v6 = [(VFXPhysicsBody *)&v100 init];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    objc_msgSend_decodeDoubleForKey_(coder, v9, @"charge");
    *&v10 = v10;
    objc_msgSend_setCharge_(v6, v11, v12, v10);
    objc_msgSend_decodeDoubleForKey_(coder, v13, @"friction");
    *&v14 = v14;
    objc_msgSend_setFriction_(v6, v15, v16, v14);
    objc_msgSend_decodeDoubleForKey_(coder, v17, @"restitution");
    *&v18 = v18;
    objc_msgSend_setRestitution_(v6, v19, v20, v18);
    objc_msgSend_decodeDoubleForKey_(coder, v21, @"rollingFriction");
    *&v22 = v22;
    objc_msgSend_setRollingFriction_(v6, v23, v24, v22);
    if (objc_msgSend_containsValueForKey_(coder, v25, @"defaultShape"))
    {
      v6->_defaultShape = objc_msgSend_decodeBoolForKey_(coder, v26, @"defaultShape");
    }

    v27 = objc_opt_class();
    v29 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v28, v27, @"physicsShape");
    if (v29)
    {
      objc_msgSend_setPhysicsShape_(v6, v30, v29);
    }

    if (objc_msgSend_containsValueForKey_(coder, v30, @"ccdThreshold"))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v31, @"ccdThreshold");
      *&v32 = v32;
      objc_msgSend_setContinuousCollisionDetectionThreshold_(v6, v33, v34, v32);
    }

    v35 = objc_msgSend_decodeIntegerForKey_(coder, v31, @"type");
    objc_msgSend_setType_(v6, v36, v35);
    objc_msgSend_decodeDoubleForKey_(coder, v37, @"mass");
    *&v38 = v38;
    objc_msgSend_setMass_(v6, v39, v40, v38);
    objc_msgSend_decodeDoubleForKey_(coder, v41, @"damping");
    *&v42 = v42;
    objc_msgSend_setDamping_(v6, v43, v44, v42);
    *&v45 = sub_1AF371C0C(coder, @"angularVelocity").n128_u64[0];
    objc_msgSend_setAngularVelocity_(v6, v46, v47, v45);
    objc_msgSend_decodeDoubleForKey_(coder, v48, @"angularDamping");
    *&v49 = v49;
    objc_msgSend_setAngularDamping_(v6, v50, v51, v49);
    v52 = @"linearRestingThreshold";
    if ((objc_msgSend_containsValueForKey_(coder, v53, @"linearRestingThreshold") & 1) != 0 || (v52 = @"linearSleepingThreshold", objc_msgSend_containsValueForKey_(coder, v54, @"linearSleepingThreshold")))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v54, v52);
      *&v55 = v55;
      objc_msgSend_setLinearRestingThreshold_(v6, v56, v57, v55);
    }

    v58 = @"angularRestingThreshold";
    if ((objc_msgSend_containsValueForKey_(coder, v54, @"angularRestingThreshold") & 1) != 0 || (v58 = @"angularSleepingThreshold", objc_msgSend_containsValueForKey_(coder, v59, @"angularSleepingThreshold")))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v59, v58);
      *&v60 = v60;
      objc_msgSend_setAngularRestingThreshold_(v6, v61, v62, v60);
    }

    v63 = sub_1AF371BC4(coder, @"velocityFactor");
    objc_msgSend_setVelocityFactor_(v6, v64, v65, v63);
    v66 = sub_1AF371BC4(coder, @"angularVelocityFactor");
    objc_msgSend_setAngularVelocityFactor_(v6, v67, v68, v66);
    v69 = sub_1AF371BC4(coder, @"velocity");
    objc_msgSend_setVelocity_(v6, v70, v71, v69);
    v73 = objc_msgSend_decodeBoolForKey_(coder, v72, @"ignoreGravity");
    objc_msgSend_setAffectedByGravity_(v6, v74, v73 ^ 1u);
    v76 = objc_msgSend_decodeBoolForKey_(coder, v75, @"explicitMomentOfInertia");
    objc_msgSend_setUsesDefaultMomentOfInertia_(v6, v77, v76 ^ 1u);
    v78 = sub_1AF371BC4(coder, @"momentOfInertia");
    objc_msgSend_setMomentOfInertia_(v6, v79, v80, v78);
    v81 = sub_1AF371BC4(coder, @"centerOfMassOffset");
    objc_msgSend_setCenterOfMassOffset_(v6, v82, v83, v81);
    v85 = objc_msgSend_decodeIntegerForKey_(coder, v84, @"categoryBitMask");
    objc_msgSend_setCategoryBitMask_(v6, v86, v85);
    v88 = objc_msgSend_decodeIntegerForKey_(coder, v87, @"collisionBitMask");
    objc_msgSend_setCollisionBitMask_(v6, v89, v88);
    v91 = objc_msgSend_decodeIntegerForKey_(coder, v90, @"contactTestBitMask");
    objc_msgSend_setContactTestBitMask_(v6, v92, v91);
    v94 = objc_msgSend_decodeBoolForKey_(coder, v93, @"allowsResting");
    objc_msgSend_setAllowsResting_(v6, v95, v94);
    v6->_body = objc_msgSend__createBody(v6, v96, v97);
    objc_msgSend_setImmediateMode_(VFXTransaction, v98, v7);
  }

  return v6;
}

@end