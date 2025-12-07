@interface VFXPhysicsJoint
+ (id)joint;
- (VFXPhysicsJoint)initWithCoder:(id)coder;
- (btTypedConstraint)_createConstraint;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_addToPhysicsWorld:(id)world;
- (void)_removeConstraint;
- (void)_updateContraintAndAddToWorld:(id)world;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)setBodyA:(id)a;
- (void)setBodyB:(id)b;
@end

@implementation VFXPhysicsJoint

+ (id)joint
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  bodyA = self->_bodyA;
  if (bodyA)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF35C894;
    v9[3] = &unk_1E7A7C0C8;
    v9[4] = self;
    (*(block + 2))(block, bodyA, 1, v9);
  }

  bodyB = self->_bodyB;
  if (bodyB)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF35C8A0;
    v8[3] = &unk_1E7A7C0C8;
    v8[4] = self;
    (*(block + 2))(block, bodyB, 1, v8);
  }
}

- (btTypedConstraint)_createConstraint
{
  v3 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDFA7E4(self, v3);
  }

  return 0;
}

- (void)dealloc
{
  if (self->_constraint)
  {
    v5 = sub_1AF0D5194(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA85C(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13.receiver = self;
  v13.super_class = VFXPhysicsJoint;
  [(VFXPhysicsJoint *)&v13 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v7 = objc_msgSend_bodyA(self, v5, v6);
  objc_msgSend_setBodyA_(v4, v8, v7);
  v11 = objc_msgSend_bodyB(self, v9, v10);
  objc_msgSend_setBodyB_(v4, v12, v11);
  objc_msgSend_copyFrom_(v4, v13, self);
  return v4;
}

- (void)setBodyA:(id)a
{
  bodyA = self->_bodyA;
  if (bodyA != a)
  {
    v13[7] = v3;
    v13[8] = v4;

    self->_bodyA = a;
    physicsWorld = self->_physicsWorld;
    if (physicsWorld)
    {
      v11 = objc_msgSend_world(physicsWorld, v8, v9);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1AF35CA8C;
      v13[3] = &unk_1E7A7E1D0;
      v13[4] = self;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, v11, v13);
    }
  }
}

- (void)setBodyB:(id)b
{
  bodyB = self->_bodyB;
  if (bodyB != b)
  {
    v13[7] = v3;
    v13[8] = v4;

    self->_bodyB = b;
    physicsWorld = self->_physicsWorld;
    if (physicsWorld)
    {
      v11 = objc_msgSend_world(physicsWorld, v8, v9);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1AF35CB4C;
      v13[3] = &unk_1E7A7E1D0;
      v13[4] = self;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v12, v11, v13);
    }
  }
}

- (void)_addToPhysicsWorld:(id)world
{
  selfCopy = self;
  if (self->_physicsWorld)
  {
    v5 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA894(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    self = objc_msgSend__removeConstraint(selfCopy, v6, v7);
  }

  if (selfCopy->_constraint)
  {
    v13 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFA8CC(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  else
  {
    selfCopy->_physicsWorld = world;
    objc_msgSend__updateContraintAndAddToWorld_(selfCopy, a2, world);
  }
}

- (void)_updateContraintAndAddToWorld:(id)world
{
  if (self->_physicsWorld)
  {
    objc_msgSend__removeConstraint(self, a2, world);
    Constraint = objc_msgSend__createConstraint(self, v5, v6);
    self->_constraint = Constraint;
    if (Constraint)
    {
      v10 = *(*objc_msgSend__handle(world, v8, v9) + 112);

      v10();
    }
  }
}

- (void)_removeConstraint
{
  if (self->_constraint)
  {
    v4 = objc_msgSend__handle(self->_physicsWorld, a2, v2);
    if (v4)
    {
      (*(*v4 + 120))(v4, self->_constraint);
    }

    constraint = self->_constraint;
    if (constraint)
    {
      (*(constraint->var0 + 1))(constraint);
    }

    self->_constraint = 0;
  }
}

- (void)encodeWithCoder:(id)coder
{
  bodyA = self->_bodyA;
  if (bodyA)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, bodyA, @"bodyA");
  }

  bodyB = self->_bodyB;
  if (bodyB)
  {

    objc_msgSend_encodeObject_forKey_(coder, a2, bodyB, @"bodyB");
  }
}

- (VFXPhysicsJoint)initWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = VFXPhysicsJoint;
  v6 = [(VFXPhysicsJoint *)&v15 init];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    v9 = objc_opt_class();
    v6->_bodyA = objc_msgSend_decodeObjectOfClass_forKey_(coder, v10, v9, @"bodyA");
    v11 = objc_opt_class();
    v6->_bodyB = objc_msgSend_decodeObjectOfClass_forKey_(coder, v12, v11, @"bodyB");
    objc_msgSend_setImmediateMode_(VFXTransaction, v13, v7);
  }

  return v6;
}

@end