@interface SCNBillboardConstraint
+ (SCNBillboardConstraint)billboardConstraint;
- (SCNBillboardConstraint)init;
- (SCNBillboardConstraint)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setFreeAxes:(SCNBillboardAxis)freeAxes;
- (void)setPreserveScale:(BOOL)scale;
@end

@implementation SCNBillboardConstraint

- (SCNBillboardConstraint)init
{
  v6.receiver = self;
  v6.super_class = SCNBillboardConstraint;
  v2 = [(SCNConstraint *)&v6 init];
  v4 = v2;
  if (v2)
  {
    v2->super._constraintRef = C3DConstraintCreateBillboard(v2, v3);
    [(SCNBillboardConstraint *)v4 setFreeAxes:7];
    v4->_preserveScale = C3DConstraintBillboardGetPreserveScale(v4->super._constraintRef);
  }

  return v4;
}

+ (SCNBillboardConstraint)billboardConstraint
{
  v2 = objc_alloc_init(SCNBillboardConstraint);

  return v2;
}

- (void)setFreeAxes:(SCNBillboardAxis)freeAxes
{
  self->_freeAxes = freeAxes;
  sceneRef = [(SCNConstraint *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__SCNBillboardConstraint_setFreeAxes___block_invoke;
  v6[3] = &unk_2782FB7D0;
  v6[4] = self;
  v6[5] = freeAxes;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (void)setPreserveScale:(BOOL)scale
{
  self->_preserveScale = scale;
  sceneRef = [(SCNConstraint *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__SCNBillboardConstraint_setPreserveScale___block_invoke;
  v6[3] = &unk_2782FB7F8;
  v6[4] = self;
  scaleCopy = scale;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [(SCNConstraint *)self copyTo:v4];
  [v4 setFreeAxes:{-[SCNBillboardConstraint freeAxes](self, "freeAxes")}];
  [v4 setPreserveScale:{-[SCNBillboardConstraint preserveScale](self, "preserveScale")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SCNBillboardConstraint;
  [(SCNConstraint *)&v5 encodeWithCoder:?];
  [coder encodeInteger:self->_freeAxes forKey:@"freeAxes"];
  [coder encodeBool:self->_preserveScale forKey:@"preserveScale"];
}

- (SCNBillboardConstraint)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = SCNBillboardConstraint;
  v4 = [(SCNConstraint *)&v9 initWithCoder:?];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    v6 = [SCNTransaction setImmediateMode:1];
    v4->super._constraintRef = C3DConstraintCreateBillboard(v6, v7);
    -[SCNBillboardConstraint setFreeAxes:](v4, "setFreeAxes:", [coder decodeIntegerForKey:@"freeAxes"]);
    -[SCNBillboardConstraint setPreserveScale:](v4, "setPreserveScale:", [coder decodeBoolForKey:@"preserveScale"]);
    [(SCNConstraint *)v4 finalizeDecodeConstraint:coder];
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

@end