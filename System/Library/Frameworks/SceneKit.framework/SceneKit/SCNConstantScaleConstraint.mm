@interface SCNConstantScaleConstraint
+ (id)constantScaleConstraint;
- (SCNConstantScaleConstraint)init;
- (SCNConstantScaleConstraint)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setScale:(float)scale;
- (void)setScreenSpace:(BOOL)space;
@end

@implementation SCNConstantScaleConstraint

- (SCNConstantScaleConstraint)init
{
  v7.receiver = self;
  v7.super_class = SCNConstantScaleConstraint;
  v2 = [(SCNConstraint *)&v7 init];
  v4 = v2;
  if (v2)
  {
    ConstantScale = C3DConstraintCreateConstantScale(v2, v3);
    v4->_scale = 1.0;
    v4->super._constraintRef = ConstantScale;
    v4->_screenSpace = 1;
  }

  return v4;
}

+ (id)constantScaleConstraint
{
  v2 = objc_alloc_init(SCNConstantScaleConstraint);

  return v2;
}

- (void)setScale:(float)scale
{
  self->_scale = scale;
  sceneRef = [(SCNConstraint *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__SCNConstantScaleConstraint_setScale___block_invoke;
  v6[3] = &unk_2782FF898;
  v6[4] = self;
  scaleCopy = scale;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (void)setScreenSpace:(BOOL)space
{
  self->_screenSpace = space;
  sceneRef = [(SCNConstraint *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__SCNConstantScaleConstraint_setScreenSpace___block_invoke;
  v6[3] = &unk_2782FB7F8;
  v6[4] = self;
  spaceCopy = space;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [(SCNConstraint *)self copyTo:v4];
  v4[14] = LODWORD(self->_scale);
  *(v4 + 60) = self->_screenSpace;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SCNConstantScaleConstraint;
  [(SCNConstraint *)&v6 encodeWithCoder:?];
  [coder encodeBool:self->_screenSpace forKey:@"screenSpace"];
  *&v5 = self->_scale;
  [coder encodeFloat:@"scale" forKey:v5];
}

- (SCNConstantScaleConstraint)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = SCNConstantScaleConstraint;
  v4 = [(SCNConstraint *)&v9 initWithCoder:?];
  v6 = v4;
  if (v4)
  {
    v4->super._constraintRef = C3DConstraintCreateConstantScale(v4, v5);
    v7 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    -[SCNConstantScaleConstraint setScreenSpace:](v6, "setScreenSpace:", [coder decodeBoolForKey:@"screenSpace"]);
    [coder decodeFloatForKey:@"scale"];
    [(SCNConstantScaleConstraint *)v6 setScale:?];
    [SCNTransaction setImmediateMode:v7];
  }

  return v6;
}

@end