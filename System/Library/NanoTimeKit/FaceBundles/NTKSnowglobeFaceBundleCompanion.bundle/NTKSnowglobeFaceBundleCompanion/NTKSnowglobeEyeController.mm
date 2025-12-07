@interface NTKSnowglobeEyeController
- ($599F175E452E455E49EC8439362DB023)_weightForState:(SEL)state;
- (NTKSnowglobeEyeController)initWithLeftNode:(id)node rightNode:(id)rightNode digitProfile:(id)profile;
- (void)_decideNextSquintChange:(double)change;
- (void)_updateIdleStateForTime:(double)time;
- (void)_updateWeights;
- (void)transitionToState:(unint64_t)state withDuration:(double)duration;
- (void)transitionToState:(unint64_t)state withFraction:(double)fraction;
- (void)updateAtTime:(double)time;
@end

@implementation NTKSnowglobeEyeController

- (NTKSnowglobeEyeController)initWithLeftNode:(id)node rightNode:(id)rightNode digitProfile:(id)profile
{
  nodeCopy = node;
  rightNodeCopy = rightNode;
  profileCopy = profile;
  v15.receiver = self;
  v15.super_class = NTKSnowglobeEyeController;
  v12 = [(NTKSnowglobeEyeController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_leftEyeNode, node);
    objc_storeStrong(&v13->_rightEyeNode, rightNode);
    v13->_state = 0;
    v13->_idleState.nextBlink = 0.0;
    v13->_idleState.squint = arc4random() / 4294967300.0 < 0.5;
    objc_storeStrong(&v13->_profile, profile);
  }

  return v13;
}

- (void)transitionToState:(unint64_t)state withDuration:(double)duration
{
  if (self->_state != state && (self->_transitionState != state || self->_transitionFraction <= 0.0))
  {
    self->_transitionAutomatic = 1;
    self->_transitionState = state;
    self->_transitionFraction = 0.0;
    self->_transitionDuration = duration;
  }
}

- (void)transitionToState:(unint64_t)state withFraction:(double)fraction
{
  if (self->_state != state)
  {
    self->_transitionAutomatic = 0;
    self->_transitionFraction = fraction;
    self->_transitionState = state;
    MEMORY[0x2821F9670](self, sel__updateWeights);
  }
}

- (void)updateAtTime:(double)time
{
  if (!self->_state || !self->_transitionState)
  {
    [(NTKSnowglobeEyeController *)self _updateIdleStateForTime:time];
  }

  if (self->_transitionAutomatic)
  {
    self->_transitionFraction = self->_transitionFraction + 0.0333333333 / self->_transitionDuration;
  }

  MEMORY[0x2821F9670](self, sel__updateWeights);
}

- (void)_updateWeights
{
  transitionFraction = self->_transitionFraction;
  if (transitionFraction >= 1.0)
  {
    transitionState = self->_transitionState;
    self->_state = transitionState;
    self->_transitionFraction = 0.0;
    self->_transitionAutomatic = 0;
    objc_msgSend__weightForState_(self, a2, transitionState);
  }

  else
  {
    if (transitionFraction > 0.0)
    {
      objc_msgSend__weightForState_(self, a2, self->_state);
      objc_msgSend__weightForState_(self, 0, 0, 0);
      CLKInterpolateBetweenFloatsClipped();
      CLKInterpolateBetweenFloatsClipped();
      v5 = v4;
      CLKInterpolateBetweenFloatsClipped();
      v7 = v6;
      CLKInterpolateBetweenFloatsClipped();
      v9 = v8;
      CLKInterpolateBetweenFloatsClipped();
      v11 = v10;
      goto LABEL_7;
    }

    objc_msgSend__weightForState_(self, a2, self->_state);
  }

  v5 = v30;
  v9 = v32;
  v7 = v31;
  v11 = v33;
LABEL_7:
  v13 = v11 * 2.0 + -1.0;
  v14 = 1.0 - fabs(v13);
  if (v14 >= 0.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0.0;
  }

  if (v13 >= 0.0)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0.0;
  }

  morpher = [(SCNNode *)self->_leftEyeNode morpher];
  v18 = v7;
  [morpher setWeight:@"eyeContent_LShape" forTargetNamed:v18];

  morpher2 = [(SCNNode *)self->_leftEyeNode morpher];
  v20 = v5;
  [morpher2 setWeight:@"eyeAngry_LShape" forTargetNamed:v20];

  morpher3 = [(SCNNode *)self->_leftEyeNode morpher];
  v22 = v9;
  [morpher3 setWeight:@"eyeFullBlink_LShape" forTargetNamed:v22];

  morpher4 = [(SCNNode *)self->_leftEyeNode morpher];
  [morpher4 setWeight:@"eyeHalfSquint_LShape" forTargetNamed:v15];

  morpher5 = [(SCNNode *)self->_leftEyeNode morpher];
  [morpher5 setWeight:@"eyeSquint_LShape" forTargetNamed:v16];

  morpher6 = [(SCNNode *)self->_rightEyeNode morpher];
  [morpher6 setWeight:@"eyeContent_RShape" forTargetNamed:v18];

  morpher7 = [(SCNNode *)self->_rightEyeNode morpher];
  [morpher7 setWeight:@"eyeAngry_RShape" forTargetNamed:v20];

  morpher8 = [(SCNNode *)self->_rightEyeNode morpher];
  [morpher8 setWeight:@"eyeFullBlink_RShape" forTargetNamed:v22];

  morpher9 = [(SCNNode *)self->_rightEyeNode morpher];
  [morpher9 setWeight:@"eyeHalfSquint_RShape" forTargetNamed:v15];

  morpher10 = [(SCNNode *)self->_rightEyeNode morpher];
  [morpher10 setWeight:@"eyeSquint_RShape" forTargetNamed:v16];
}

- ($599F175E452E455E49EC8439362DB023)_weightForState:(SEL)state
{
  if (a4 <= 1)
  {
    if (!a4)
    {
      var2 = self->var2;
      var1 = self[1].var1;
      retstr->var0 = (1.0 - var2) * (1.0 - var1);
      retstr->var1 = 0.0;
      retstr->var2 = 0.0;
      retstr->var3 = var2 * (1.0 - var1);
      retstr->var4 = (1.0 - var2) * var1;
      return self;
    }

    if (a4 != 1)
    {
      return self;
    }

LABEL_7:
    *&retstr->var0 = 0;
    *&retstr->var2 = 0;
    retstr->var4 = 0.0;
    retstr->var2 = 1.0;
    return self;
  }

  if (a4 == 2)
  {
    *&retstr->var0 = 0;
    *&retstr->var2 = 0;
    retstr->var4 = 0.0;
    retstr->var1 = 1.0;
    return self;
  }

  if (a4 == 3)
  {
    goto LABEL_7;
  }

  return self;
}

- (void)_updateIdleStateForTime:(double)time
{
  if (self->_idleState.nextBlink == 0.0)
  {
    [(NTKSnowglobeEyeController *)self _decideNextBlink:time];
  }

  if (self->_animationEnabled)
  {
    nextBlink = self->_idleState.nextBlink;
    v6 = 0.0;
    if (nextBlink < time)
    {
      v7 = time - nextBlink;
      [(NTKSnowglobeDigitProfile *)self->_profile blinkDuration];
      v9 = v7 / v8;
      if (v9 >= 1.0)
      {
        [(NTKSnowglobeEyeController *)self _decideNextBlink:time];
      }

      else
      {
        v10 = 1.0 - fabs(v9 * 2.0 + -1.0);
        if (v10 < 0.0)
        {
          v10 = 0.0;
        }

        v6 = v10;
      }
    }

    self->_idleState.blinkProgress = v6;
    if (self->_idleState.nextSquintChange >= time)
    {
      squintChange = self->_idleState.squintChange;
      squint = self->_idleState.squint;
    }

    else
    {
      [(NTKSnowglobeEyeController *)self _decideNextSquintChange:time];
      self->_idleState.squintChange = time;
      squint = !self->_idleState.squint;
      self->_idleState.squint = squint;
      squintChange = time;
    }

    v14 = fmin((time - squintChange) / 0.2, 1.0);
    if (!squint)
    {
      v14 = 1.0 - v14;
    }

    v11 = v14;
  }

  else
  {
    self->_idleState.blinkProgress = 0.0;
    v11 = 0.0;
  }

  self->_idleState.squintProgress = v11;
}

- (void)_decideNextSquintChange:(double)change
{
  [(NTKSnowglobeDigitProfile *)self->_profile squintRatio];
  v6 = v5;
  v7 = arc4random();
  if (self->_idleState.squint)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = v6;
  }

  v9 = 1.0 / v6;
  if (!self->_idleState.squint)
  {
    v9 = 1.0;
  }

  if (v6 < 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  self->_idleState.nextSquintChange = change + (v7 / 4294967300.0 * 2.0 + 1.0) * v10;
}

@end