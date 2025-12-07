@interface SCNAvoidOccluderConstraint
+ (SCNAvoidOccluderConstraint)avoidOccluderConstraintWithTarget:(SCNNode *)target;
+ (id)avoidOccluderConstraint;
- (SCNAvoidOccluderConstraint)init;
- (SCNAvoidOccluderConstraint)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_customDecodingOfSCNAvoidOccluderConstraint:(id)constraint;
- (void)_customEncodingOfSCNAvoidOccluderConstraint:(id)constraint;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setBias:(CGFloat)bias;
- (void)setDelegate:(id)delegate;
- (void)setOccluderCategoryBitMask:(NSUInteger)occluderCategoryBitMask;
- (void)setTarget:(SCNNode *)target;
@end

@implementation SCNAvoidOccluderConstraint

- (SCNAvoidOccluderConstraint)init
{
  v7.receiver = self;
  v7.super_class = SCNAvoidOccluderConstraint;
  v2 = [(SCNConstraint *)&v7 init];
  v4 = v2;
  if (v2)
  {
    AvoidOccluder = C3DConstraintCreateAvoidOccluder(v2, v3);
    v4->_categoryBitMask = 1;
    v4->super._constraintRef = AvoidOccluder;
    v4->_offset = 0.00001;
  }

  return v4;
}

- (void)dealloc
{
  if (self->_delegate)
  {
    sceneRef = [(SCNNode *)self->_target sceneRef];
    if (sceneRef)
    {
      v5 = sceneRef;
      C3DSceneLock(sceneRef, v4);
      C3DConstraintAvoidOccluderSetDelegate(self->super._constraintRef, 0);
      C3DSceneUnlock(v5, v6);
    }

    else
    {
      C3DConstraintAvoidOccluderSetDelegate(self->super._constraintRef, 0);
    }
  }

  v7.receiver = self;
  v7.super_class = SCNAvoidOccluderConstraint;
  [(SCNConstraint *)&v7 dealloc];
}

+ (id)avoidOccluderConstraint
{
  v2 = objc_alloc_init(SCNAvoidOccluderConstraint);

  return v2;
}

+ (SCNAvoidOccluderConstraint)avoidOccluderConstraintWithTarget:(SCNNode *)target
{
  v4 = objc_alloc_init(SCNAvoidOccluderConstraint);
  [(SCNAvoidOccluderConstraint *)v4 setTarget:target];
  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setTarget:{-[SCNAvoidOccluderConstraint target](self, "target")}];
  [v4 setOccluderCategoryBitMask:{-[SCNAvoidOccluderConstraint occluderCategoryBitMask](self, "occluderCategoryBitMask")}];
  [(SCNAvoidOccluderConstraint *)self bias];
  [v4 setBias:?];
  [(SCNConstraint *)self copyTo:v4];
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
        v4 = __C3DAvoidOccluderConstraintDelegateShouldAvoidOccluderCallback;
      }

      else
      {
        v4 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        v5 = __C3DAvoidOccluderConstraintDelegateDidAvoidOccluderCallback;
      }

      else
      {
        v5 = 0;
      }

      sceneRef = [(SCNConstraint *)self sceneRef];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __42__SCNAvoidOccluderConstraint_setDelegate___block_invoke;
      v12[3] = &unk_2782FE238;
      v12[4] = self;
      v12[5] = v4;
      v12[6] = v5;
      [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v12];
    }

    else
    {
      sceneRef2 = [(SCNNode *)self->_target sceneRef];
      if (sceneRef2)
      {
        v9 = sceneRef2;
        C3DSceneLock(sceneRef2, v8);
        C3DConstraintAvoidOccluderSetDelegate(self->super._constraintRef, 0);

        C3DSceneUnlock(v9, v10);
      }

      else
      {
        constraintRef = self->super._constraintRef;

        C3DConstraintAvoidOccluderSetDelegate(constraintRef, 0);
      }
    }
  }
}

void __42__SCNAvoidOccluderConstraint_setDelegate___block_invoke(uint64_t *a1)
{
  v2 = C3DAvoidOccluderConstraintDelegateCreate(a1[4], a1[5], a1[6]);
  C3DConstraintAvoidOccluderSetDelegate(*(a1[4] + 8), v2);

  CFRelease(v2);
}

- (void)setTarget:(SCNNode *)target
{
  v5 = target;
  self->_target = v5;
  if (v5)
  {
    nodeRef = [(SCNNode *)v5 nodeRef];
  }

  else
  {
    nodeRef = 0;
  }

  sceneRef = [(SCNConstraint *)self sceneRef];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__SCNAvoidOccluderConstraint_setTarget___block_invoke;
  v8[3] = &unk_2782FB7D0;
  v8[4] = self;
  v8[5] = nodeRef;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
}

- (void)setOccluderCategoryBitMask:(NSUInteger)occluderCategoryBitMask
{
  self->_categoryBitMask = occluderCategoryBitMask;
  sceneRef = [(SCNConstraint *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__SCNAvoidOccluderConstraint_setOccluderCategoryBitMask___block_invoke;
  v6[3] = &unk_2782FB7D0;
  v6[4] = self;
  v6[5] = occluderCategoryBitMask;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (void)setBias:(CGFloat)bias
{
  v5 = bias;
  self->_offset = v5;
  sceneRef = [(SCNConstraint *)self sceneRef];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SCNAvoidOccluderConstraint_setBias___block_invoke;
  v7[3] = &unk_2782FB7D0;
  v7[4] = self;
  *&v7[5] = bias;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
}

float __38__SCNAvoidOccluderConstraint_setBias___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  C3DConstraintAvoidOccluderSetOffset(*(*(a1 + 32) + 8), a2, v2);
  return result;
}

- (void)_customEncodingOfSCNAvoidOccluderConstraint:(id)constraint
{
  target = self->_target;
  if (target)
  {
    [constraint encodeObject:target forKey:@"target"];
  }
}

- (void)_customDecodingOfSCNAvoidOccluderConstraint:(id)constraint
{
  v5 = [constraint decodeObjectOfClass:objc_opt_class() forKey:@"target"];
  self->_target = v5;
  AvoidOccluder = C3DConstraintCreateAvoidOccluder(v5, v6);
  self->super._constraintRef = AvoidOccluder;
  C3DConstraintAvoidOccluderSetTarget(AvoidOccluder, [(SCNNode *)self->_target nodeRef]);

  [(SCNConstraint *)self finalizeDecodeConstraint:constraint];
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SCNAvoidOccluderConstraint;
  [(SCNConstraint *)&v6 encodeWithCoder:?];
  [(SCNAvoidOccluderConstraint *)self _customEncodingOfSCNAvoidOccluderConstraint:coder];
  [coder encodeInteger:self->_categoryBitMask forKey:@"categoryBitMask"];
  *&v5 = self->_offset;
  [coder encodeFloat:@"bias" forKey:v5];
}

- (SCNAvoidOccluderConstraint)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = SCNAvoidOccluderConstraint;
  v4 = [(SCNConstraint *)&v8 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    [(SCNAvoidOccluderConstraint *)v4 _customDecodingOfSCNAvoidOccluderConstraint:coder];
    -[SCNAvoidOccluderConstraint setOccluderCategoryBitMask:](v4, "setOccluderCategoryBitMask:", [coder decodeIntegerForKey:@"categoryBitMask"]);
    [coder decodeFloatForKey:@"bias"];
    [(SCNAvoidOccluderConstraint *)v4 setBias:v6];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end