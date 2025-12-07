@interface SCN_CAKeyframeAnimation
- (BOOL)autoreverses;
- (BOOL)commitsOnCompletion;
- (BOOL)isAdditive;
- (BOOL)isCumulative;
- (BOOL)isRemovedOnCompletion;
- (BOOL)usesSceneTimeBase;
- (SCN_CAKeyframeAnimation)initWithCoder:(id)coder;
- (double)duration;
- (double)fadeInDuration;
- (double)fadeOutDuration;
- (double)repeatDuration;
- (double)timeOffset;
- (float)repeatCount;
- (float)speed;
- (id)animationEvents;
- (id)biasValues;
- (id)continuityValues;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)fillMode;
- (id)keyPath;
- (id)keyTimes;
- (id)tensionValues;
- (id)timingFunction;
- (id)timingFunctions;
- (id)values;
- (void)_clearC3DCache;
- (void)_convertToCA;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAdditive:(BOOL)additive;
- (void)setAnimationEvents:(id)events;
- (void)setAutoreverses:(BOOL)autoreverses;
- (void)setBiasValues:(id)values;
- (void)setC3dAnimation:(__C3DKeyframedAnimation *)animation;
- (void)setCommitsOnCompletion:(BOOL)completion;
- (void)setContinuityValues:(id)values;
- (void)setCumulative:(BOOL)cumulative;
- (void)setDuration:(double)duration;
- (void)setFadeInDuration:(double)duration;
- (void)setFadeOutDuration:(double)duration;
- (void)setFillMode:(id)mode;
- (void)setKeyPath:(id)path;
- (void)setKeyTimes:(id)times;
- (void)setRemovedOnCompletion:(BOOL)completion;
- (void)setRepeatCount:(float)count;
- (void)setRepeatDuration:(double)duration;
- (void)setSpeed:(float)speed;
- (void)setTensionValues:(id)values;
- (void)setTimeOffset:(double)offset;
- (void)setTimingFunction:(id)function;
- (void)setTimingFunctions:(id)functions;
- (void)setUsesSceneTimeBase:(BOOL)base;
- (void)setValues:(id)values;
@end

@implementation SCN_CAKeyframeAnimation

- (void)dealloc
{
  c3dAnimation = self->_c3dAnimation;
  if (c3dAnimation)
  {
    CFRelease(c3dAnimation);
    self->_c3dAnimation = 0;
  }

  v4.receiver = self;
  v4.super_class = SCN_CAKeyframeAnimation;
  [(SCN_CAKeyframeAnimation *)&v4 dealloc];
}

- (void)_convertToCA
{
  v44 = *MEMORY[0x277D85DE8];
  self->_caReady = 1;
  c3dAnimation = self->_c3dAnimation;
  if (c3dAnimation)
  {
    v4 = CFRetain(c3dAnimation);
    Controller = C3DKeyframedAnimationGetController(v4, v5);
    ValueType = C3DKeyframeControllerGetValueType(Controller, v7);
    KeyCount = C3DKeyframeControllerGetKeyCount(Controller, v9);
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:KeyCount];
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:KeyCount];
    HasTCB = C3DKeyframeControllerHasTCB(Controller);
    if (KeyCount)
    {
      v14 = !HasTCB;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      v15 = 0;
      do
      {
        TensionAtIndex = C3DKeyframeControllerGetTensionAtIndex(Controller, v15);
        ContinuityAtIndex = C3DKeyframeControllerGetContinuityAtIndex(Controller, v15);
        BiasAtIndex = C3DKeyframeControllerGetBiasAtIndex(Controller, v15);
        [0 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", TensionAtIndex)}];
        [0 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", ContinuityAtIndex)}];
        [0 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", BiasAtIndex)}];
        ++v15;
      }

      while (KeyCount != v15);
    }

    v42 = 0u;
    v43 = 0u;
    __dst = 0u;
    v41 = 0u;
    if (C3DKeyframeControllerHasTimingFunctions(Controller))
    {
      v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:KeyCount - 1];
      if (KeyCount == 1)
      {
        *&v28 = C3DAnimationGetDuration(v4, v20);
        goto LABEL_17;
      }

      v38 = v4;
      selfCopy = self;
      v22 = 0;
      do
      {
        TimingFunctionAtIndex = C3DKeyframeControllerGetTimingFunctionAtIndex(Controller, v22);
        LODWORD(v24) = *TimingFunctionAtIndex;
        LODWORD(v25) = TimingFunctionAtIndex[1];
        LODWORD(v26) = TimingFunctionAtIndex[2];
        LODWORD(v27) = TimingFunctionAtIndex[3];
        [v21 addObject:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithControlPoints::::", v24, v25, v26, v27)}];
        ++v22;
      }

      while (KeyCount - 1 != v22);
      v4 = v38;
    }

    else
    {
      v21 = 0;
    }

    *&v28 = C3DAnimationGetDuration(v4, v19);
    if (!KeyCount)
    {
LABEL_22:
      [(SCN_CAKeyframeAnimation *)self setKeyTimes:v11, v28, v38, selfCopy, __dst, v41, v42, v43];
      [(SCN_CAKeyframeAnimation *)self setValues:v12];
      [(SCN_CAKeyframeAnimation *)self setContinuityValues:0];
      [(SCN_CAKeyframeAnimation *)self setTensionValues:0];
      [(SCN_CAKeyframeAnimation *)self setBiasValues:0];
      [(SCN_CAKeyframeAnimation *)self setTimingFunctions:v21];
      [(SCN_CAKeyframeAnimation *)self setDuration:C3DKeyframeControllerGetDuration(Controller, v37)];
      CAPropertyAnimationSetupWithSCNAnimation(self, v4);
LABEL_24:
      [(SCN_CAKeyframeAnimation *)self setC3dAnimation:v4, v38, selfCopy];
      CFRelease(v4);
      return;
    }

LABEL_17:
    v29 = 0;
    if (*&v28 == 0.0)
    {
      *&v28 = 1.0;
    }

    v30 = *&v28;
    while (1)
    {
      KeyTimeAtIndex = C3DKeyframeControllerGetKeyTimeAtIndex(Controller, v29);
      C3DKeyframeControllerGetValueAtIndex(Controller, v29, &__dst);
      [v11 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", KeyTimeAtIndex / v30)}];
      v36 = SCNNSValueFromTypedBytes(&__dst, ValueType, v32, v33, v34, v35);
      if (!v36)
      {
        break;
      }

      [v12 addObject:v36];
      v29 = (v29 + 1);
      if (KeyCount == v29)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_24;
  }
}

- (void)_clearC3DCache
{
  if (!self->_caReady)
  {
    [(SCN_CAKeyframeAnimation *)self _convertToCA];
  }

  c3dAnimation = self->_c3dAnimation;
  if (c3dAnimation)
  {
    CFRelease(c3dAnimation);
  }

  self->_c3dAnimation = 0;
}

- (id)values
{
  if (!self->_caReady)
  {
    [(SCN_CAKeyframeAnimation *)self _convertToCA];
  }

  v4.receiver = self;
  v4.super_class = SCN_CAKeyframeAnimation;
  return [(SCN_CAKeyframeAnimation *)&v4 values];
}

- (void)setValues:(id)values
{
  if (self->_c3dAnimation)
  {
    [(SCN_CAKeyframeAnimation *)self _clearC3DCache];
  }

  v5.receiver = self;
  v5.super_class = SCN_CAKeyframeAnimation;
  [(SCN_CAKeyframeAnimation *)&v5 setValues:values];
}

- (id)keyTimes
{
  if (!self->_caReady)
  {
    [(SCN_CAKeyframeAnimation *)self _convertToCA];
  }

  v4.receiver = self;
  v4.super_class = SCN_CAKeyframeAnimation;
  return [(SCN_CAKeyframeAnimation *)&v4 keyTimes];
}

- (void)setKeyTimes:(id)times
{
  if (self->_c3dAnimation)
  {
    [(SCN_CAKeyframeAnimation *)self _clearC3DCache];
  }

  v5.receiver = self;
  v5.super_class = SCN_CAKeyframeAnimation;
  [(SCN_CAKeyframeAnimation *)&v5 setKeyTimes:times];
}

- (id)timingFunctions
{
  if (!self->_caReady)
  {
    [(SCN_CAKeyframeAnimation *)self _convertToCA];
  }

  v4.receiver = self;
  v4.super_class = SCN_CAKeyframeAnimation;
  return [(SCN_CAKeyframeAnimation *)&v4 timingFunctions];
}

- (void)setTimingFunctions:(id)functions
{
  if (self->_c3dAnimation)
  {
    [(SCN_CAKeyframeAnimation *)self _clearC3DCache];
  }

  v5.receiver = self;
  v5.super_class = SCN_CAKeyframeAnimation;
  [(SCN_CAKeyframeAnimation *)&v5 setTimingFunctions:functions];
}

- (id)tensionValues
{
  if (!self->_caReady)
  {
    [(SCN_CAKeyframeAnimation *)self _convertToCA];
  }

  v4.receiver = self;
  v4.super_class = SCN_CAKeyframeAnimation;
  return [(SCN_CAKeyframeAnimation *)&v4 tensionValues];
}

- (void)setTensionValues:(id)values
{
  if (self->_c3dAnimation)
  {
    [(SCN_CAKeyframeAnimation *)self _clearC3DCache];
  }

  v5.receiver = self;
  v5.super_class = SCN_CAKeyframeAnimation;
  [(SCN_CAKeyframeAnimation *)&v5 setTensionValues:values];
}

- (id)continuityValues
{
  if (!self->_caReady)
  {
    [(SCN_CAKeyframeAnimation *)self _convertToCA];
  }

  v4.receiver = self;
  v4.super_class = SCN_CAKeyframeAnimation;
  return [(SCN_CAKeyframeAnimation *)&v4 continuityValues];
}

- (void)setContinuityValues:(id)values
{
  if (self->_c3dAnimation)
  {
    [(SCN_CAKeyframeAnimation *)self _clearC3DCache];
  }

  v5.receiver = self;
  v5.super_class = SCN_CAKeyframeAnimation;
  [(SCN_CAKeyframeAnimation *)&v5 setContinuityValues:values];
}

- (id)biasValues
{
  if (!self->_caReady)
  {
    [(SCN_CAKeyframeAnimation *)self _convertToCA];
  }

  v4.receiver = self;
  v4.super_class = SCN_CAKeyframeAnimation;
  return [(SCN_CAKeyframeAnimation *)&v4 biasValues];
}

- (void)setBiasValues:(id)values
{
  if (self->_c3dAnimation)
  {
    [(SCN_CAKeyframeAnimation *)self _clearC3DCache];
  }

  v5.receiver = self;
  v5.super_class = SCN_CAKeyframeAnimation;
  [(SCN_CAKeyframeAnimation *)&v5 setBiasValues:values];
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (self->_caReady || !self->_c3dAnimation)
  {
    v8.receiver = self;
    v8.super_class = SCN_CAKeyframeAnimation;
    return [(SCN_CAKeyframeAnimation *)&v8 copyWithZone:zone];
  }

  else
  {
    v4 = objc_alloc_init(objc_opt_class());
    Copy = C3DAnimationCreateCopy(self->_c3dAnimation, v5);
    [v4 setC3dAnimation:Copy];
    CFRelease(Copy);
    [v4 setKeyPath:{-[SCN_CAKeyframeAnimation keyPath](self, "keyPath")}];
    [v4 setDelegate:{-[SCN_CAKeyframeAnimation delegate](self, "delegate")}];
  }

  return v4;
}

- (id)description
{
  if (self->_caReady)
  {
    v6.receiver = self;
    v6.super_class = SCN_CAKeyframeAnimation;
    return [(SCN_CAKeyframeAnimation *)&v6 description];
  }

  else
  {
    v4 = MEMORY[0x277CCACA8];
    [(SCN_CAKeyframeAnimation *)self duration];
    return [v4 stringWithFormat:@"SCN_CAKeyframeAnimation %p (duration=%f, keyPath:%@)", self, v5, -[SCN_CAKeyframeAnimation keyPath](self, "keyPath")];
  }
}

- (void)setC3dAnimation:(__C3DKeyframedAnimation *)animation
{
  c3dAnimation = self->_c3dAnimation;
  if (c3dAnimation != animation)
  {
    if (c3dAnimation)
    {
      CFRelease(c3dAnimation);
      self->_c3dAnimation = 0;
    }

    if (animation)
    {
      v6 = CFRetain(animation);
    }

    else
    {
      v6 = 0;
    }

    self->_c3dAnimation = v6;
  }
}

- (void)setDuration:(double)duration
{
  caReady = self->_caReady;
  c3dAnimation = self->_c3dAnimation;
  if (caReady)
  {
    if (c3dAnimation)
    {
      durationCopy = duration;
      C3DAnimationSetDuration(c3dAnimation, a2, durationCopy);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v9.receiver = self;
    v9.super_class = SCN_CAKeyframeAnimation;
    [(SCN_CAKeyframeAnimation *)&v9 setDuration:duration];
    return;
  }

  durationCopy2 = duration;

  C3DAnimationSetDuration(c3dAnimation, a2, durationCopy2);
}

- (double)duration
{
  if (self->_c3dAnimation)
  {
    return C3DAnimationGetDuration(self->_c3dAnimation, a2);
  }

  v3.receiver = self;
  v3.super_class = SCN_CAKeyframeAnimation;
  [(SCN_CAKeyframeAnimation *)&v3 duration];
  return result;
}

- (void)setKeyPath:(id)path
{
  if (!self->_c3dAnimation)
  {
    goto LABEL_5;
  }

  v5 = C3DCreatePathComponentsFromString(path);
  C3DAnimationSetKeyPath(self->_c3dAnimation, v5);
  if (v5)
  {
    CFRelease(v5);
  }

  if (self->_caReady)
  {
LABEL_5:
    v6.receiver = self;
    v6.super_class = SCN_CAKeyframeAnimation;
    [(SCN_CAKeyframeAnimation *)&v6 setKeyPath:path];
  }
}

- (id)keyPath
{
  c3dAnimation = self->_c3dAnimation;
  if (c3dAnimation && (KeyPath = C3DAnimationGetKeyPath(c3dAnimation)) != 0)
  {
    v5 = C3DCreatePathFromComponents(KeyPath);

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SCN_CAKeyframeAnimation;
    return [(SCN_CAKeyframeAnimation *)&v7 keyPath];
  }
}

- (void)setRepeatCount:(float)count
{
  c3dAnimation = self->_c3dAnimation;
  if (c3dAnimation)
  {
    C3DAnimationSetRepeatCount(c3dAnimation, a2, count);
  }

  if (self->_caReady)
  {
    v7.receiver = self;
    v7.super_class = SCN_CAKeyframeAnimation;
    *&v6 = count;
    [(SCN_CAKeyframeAnimation *)&v7 setRepeatCount:v6];
  }
}

- (float)repeatCount
{
  if (self->_c3dAnimation)
  {
    c3dAnimation = self->_c3dAnimation;

    return C3DAnimationGetRepeatCount(c3dAnimation, a2);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SCN_CAKeyframeAnimation;
    [(SCN_CAKeyframeAnimation *)&v6 repeatCount];
  }

  return result;
}

- (void)setRepeatDuration:(double)duration
{
  if (self->_c3dAnimation)
  {
    [(SCN_CAKeyframeAnimation *)self _clearC3DCache];
  }

  v5.receiver = self;
  v5.super_class = SCN_CAKeyframeAnimation;
  [(SCN_CAKeyframeAnimation *)&v5 setRepeatDuration:duration];
}

- (double)repeatDuration
{
  if (!self->_caReady)
  {
    [(SCN_CAKeyframeAnimation *)self _convertToCA];
  }

  v4.receiver = self;
  v4.super_class = SCN_CAKeyframeAnimation;
  [(SCN_CAKeyframeAnimation *)&v4 repeatDuration];
  return result;
}

- (void)setAutoreverses:(BOOL)autoreverses
{
  autoreversesCopy = autoreverses;
  caReady = self->_caReady;
  c3dAnimation = self->_c3dAnimation;
  if (caReady)
  {
    if (c3dAnimation)
    {
      C3DAnimationSetAutoreverses(c3dAnimation, autoreverses);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v7.receiver = self;
    v7.super_class = SCN_CAKeyframeAnimation;
    [(SCN_CAKeyframeAnimation *)&v7 setAutoreverses:autoreversesCopy];
    return;
  }

  C3DAnimationSetAutoreverses(c3dAnimation, autoreverses);
}

- (BOOL)autoreverses
{
  if (self->_c3dAnimation)
  {
    c3dAnimation = self->_c3dAnimation;

    return C3DAnimationGetAutoreverses(c3dAnimation, a2);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SCN_CAKeyframeAnimation;
    return [(SCN_CAKeyframeAnimation *)&v6 autoreverses];
  }
}

- (void)setTimeOffset:(double)offset
{
  caReady = self->_caReady;
  c3dAnimation = self->_c3dAnimation;
  if (caReady)
  {
    if (c3dAnimation)
    {
      C3DAnimationSetTimeOffset(c3dAnimation, a2, offset);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v7.receiver = self;
    v7.super_class = SCN_CAKeyframeAnimation;
    [(SCN_CAKeyframeAnimation *)&v7 setTimeOffset:offset];
    return;
  }

  C3DAnimationSetTimeOffset(c3dAnimation, a2, offset);
}

- (double)timeOffset
{
  if (self->_c3dAnimation)
  {
    c3dAnimation = self->_c3dAnimation;

    return C3DAnimationGetTimeOffset(c3dAnimation, a2);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SCN_CAKeyframeAnimation;
    [(SCN_CAKeyframeAnimation *)&v6 timeOffset];
  }

  return result;
}

- (void)setSpeed:(float)speed
{
  caReady = self->_caReady;
  c3dAnimation = self->_c3dAnimation;
  if (caReady)
  {
    if (c3dAnimation)
    {
      C3DAnimationSetSpeed(c3dAnimation, a2, speed);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v8.receiver = self;
    v8.super_class = SCN_CAKeyframeAnimation;
    *&v7 = speed;
    [(SCN_CAKeyframeAnimation *)&v8 setSpeed:v7];
    return;
  }

  C3DAnimationSetSpeed(c3dAnimation, a2, speed);
}

- (float)speed
{
  if (self->_c3dAnimation)
  {
    c3dAnimation = self->_c3dAnimation;

    return C3DAnimationGetSpeed(c3dAnimation, a2);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SCN_CAKeyframeAnimation;
    [(SCN_CAKeyframeAnimation *)&v6 speed];
  }

  return result;
}

- (void)setFadeInDuration:(double)duration
{
  caReady = self->_caReady;
  c3dAnimation = self->_c3dAnimation;
  if (caReady)
  {
    if (c3dAnimation)
    {
      durationCopy = duration;
      C3DAnimationSetFadeInDuration(c3dAnimation, a2, durationCopy);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v9.receiver = self;
    v9.super_class = SCN_CAKeyframeAnimation;
    [(CAAnimation *)&v9 setFadeInDuration:duration];
    return;
  }

  durationCopy2 = duration;

  C3DAnimationSetFadeInDuration(c3dAnimation, a2, durationCopy2);
}

- (double)fadeInDuration
{
  if (self->_c3dAnimation)
  {
    return C3DAnimationGetFadeInDuration(self->_c3dAnimation, a2);
  }

  v3.receiver = self;
  v3.super_class = SCN_CAKeyframeAnimation;
  [(CAAnimation *)&v3 fadeInDuration];
  return result;
}

- (void)setFadeOutDuration:(double)duration
{
  caReady = self->_caReady;
  c3dAnimation = self->_c3dAnimation;
  if (caReady)
  {
    if (c3dAnimation)
    {
      durationCopy = duration;
      C3DAnimationSetFadeOutDuration(c3dAnimation, a2, durationCopy);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v9.receiver = self;
    v9.super_class = SCN_CAKeyframeAnimation;
    [(CAAnimation *)&v9 setFadeOutDuration:duration];
    return;
  }

  durationCopy2 = duration;

  C3DAnimationSetFadeOutDuration(c3dAnimation, a2, durationCopy2);
}

- (double)fadeOutDuration
{
  if (self->_c3dAnimation)
  {
    return C3DAnimationGetFadeOutDuration(self->_c3dAnimation, a2);
  }

  v3.receiver = self;
  v3.super_class = SCN_CAKeyframeAnimation;
  [(CAAnimation *)&v3 fadeOutDuration];
  return result;
}

- (void)setRemovedOnCompletion:(BOOL)completion
{
  completionCopy = completion;
  caReady = self->_caReady;
  c3dAnimation = self->_c3dAnimation;
  if (caReady)
  {
    if (c3dAnimation)
    {
      C3DAnimationSetRemoveOnCompletion(c3dAnimation, completion);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v7.receiver = self;
    v7.super_class = SCN_CAKeyframeAnimation;
    [(SCN_CAKeyframeAnimation *)&v7 setRemovedOnCompletion:completionCopy];
    return;
  }

  C3DAnimationSetRemoveOnCompletion(c3dAnimation, completion);
}

- (BOOL)isRemovedOnCompletion
{
  if (self->_c3dAnimation)
  {
    c3dAnimation = self->_c3dAnimation;

    return C3DAnimationGetRemoveOnCompletion(c3dAnimation, a2);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SCN_CAKeyframeAnimation;
    return [(SCN_CAKeyframeAnimation *)&v6 isRemovedOnCompletion];
  }
}

- (void)setCommitsOnCompletion:(BOOL)completion
{
  completionCopy = completion;
  caReady = self->_caReady;
  c3dAnimation = self->_c3dAnimation;
  if (caReady)
  {
    if (c3dAnimation)
    {
      C3DAnimationSetCommitWhenDone(c3dAnimation, completion);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v7.receiver = self;
    v7.super_class = SCN_CAKeyframeAnimation;
    [(CAAnimation *)&v7 setCommitsOnCompletion:completionCopy];
    return;
  }

  C3DAnimationSetCommitWhenDone(c3dAnimation, completion);
}

- (BOOL)commitsOnCompletion
{
  if (self->_c3dAnimation)
  {
    c3dAnimation = self->_c3dAnimation;

    return C3DAnimationGetCommitWhenDone(c3dAnimation, a2);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SCN_CAKeyframeAnimation;
    return [(CAAnimation *)&v6 commitsOnCompletion];
  }
}

- (void)setUsesSceneTimeBase:(BOOL)base
{
  baseCopy = base;
  caReady = self->_caReady;
  c3dAnimation = self->_c3dAnimation;
  if (caReady)
  {
    if (c3dAnimation)
    {
      C3DAnimationSetIsSceneTimeBased(c3dAnimation, base);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v7.receiver = self;
    v7.super_class = SCN_CAKeyframeAnimation;
    [(CAAnimation *)&v7 setUsesSceneTimeBase:baseCopy];
    return;
  }

  C3DAnimationSetIsSceneTimeBased(c3dAnimation, base);
}

- (BOOL)usesSceneTimeBase
{
  if (self->_c3dAnimation)
  {
    c3dAnimation = self->_c3dAnimation;

    return C3DAnimationGetIsSceneTimeBased(c3dAnimation, a2);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SCN_CAKeyframeAnimation;
    return [(CAAnimation *)&v6 usesSceneTimeBase];
  }
}

- (void)setFillMode:(id)mode
{
  c3dAnimation = self->_c3dAnimation;
  if (self->_caReady)
  {
    if (c3dAnimation)
    {
      v6 = _CAToC3DFillMode(mode, a2);
      C3DAnimationSetFillModeMask(c3dAnimation, v6);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v8.receiver = self;
    v8.super_class = SCN_CAKeyframeAnimation;
    [(SCN_CAKeyframeAnimation *)&v8 setFillMode:mode];
    return;
  }

  v7 = _CAToC3DFillMode(mode, a2);

  C3DAnimationSetFillModeMask(c3dAnimation, v7);
}

- (id)fillMode
{
  if (self->_c3dAnimation)
  {
    FillModeMask = C3DAnimationGetFillModeMask(self->_c3dAnimation, a2);

    return _C3DToCAFillMode(FillModeMask, v3);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SCN_CAKeyframeAnimation;
    return [(SCN_CAKeyframeAnimation *)&v5 fillMode];
  }
}

- (void)setAnimationEvents:(id)events
{
  c3dAnimation = self->_c3dAnimation;
  if (self->_caReady)
  {
    if (c3dAnimation)
    {
      v6 = _CAToC3DAnimationEvents(events);
      C3DAnimationSetAnimationEvents(c3dAnimation, v6);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v8 = [events copy];
    v9.receiver = self;
    v9.super_class = SCN_CAKeyframeAnimation;
    [(CAAnimation *)&v9 setAnimationEvents:v8];

    return;
  }

  v7 = _CAToC3DAnimationEvents(events);

  C3DAnimationSetAnimationEvents(c3dAnimation, v7);
}

- (id)animationEvents
{
  if (self->_c3dAnimation)
  {
    AnimationEvents = C3DAnimationGetAnimationEvents(self->_c3dAnimation, a2);

    return _C3DToCAAnimationEvents(AnimationEvents, v3);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SCN_CAKeyframeAnimation;
    return [(CAAnimation *)&v5 animationEvents];
  }
}

- (void)setTimingFunction:(id)function
{
  c3dAnimation = self->_c3dAnimation;
  if (self->_caReady)
  {
    if (c3dAnimation)
    {
      v6 = C3DTimingFunctionFromCAMediaTimingFunction(function);
      C3DAnimationSetTimingFunction(c3dAnimation, v6);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v8.receiver = self;
    v8.super_class = SCN_CAKeyframeAnimation;
    [(SCN_CAKeyframeAnimation *)&v8 setTimingFunction:function];
    return;
  }

  v7 = C3DTimingFunctionFromCAMediaTimingFunction(function);

  C3DAnimationSetTimingFunction(c3dAnimation, v7);
}

- (id)timingFunction
{
  if (self->_c3dAnimation)
  {
    result = C3DAnimationGetTimingFunction(self->_c3dAnimation, a2);
    if (result)
    {

      return CAMediaTimingFunctionFromC3DTimingFunction(result, v3);
    }
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SCN_CAKeyframeAnimation;
    return [(SCN_CAKeyframeAnimation *)&v4 timingFunction];
  }

  return result;
}

- (void)setAdditive:(BOOL)additive
{
  additiveCopy = additive;
  caReady = self->_caReady;
  c3dAnimation = self->_c3dAnimation;
  if (caReady)
  {
    if (c3dAnimation)
    {
      C3DAnimationSetAdditive(c3dAnimation, additive);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v7.receiver = self;
    v7.super_class = SCN_CAKeyframeAnimation;
    [(SCN_CAKeyframeAnimation *)&v7 setAdditive:additiveCopy];
    return;
  }

  C3DAnimationSetAdditive(c3dAnimation, additive);
}

- (BOOL)isAdditive
{
  if (self->_c3dAnimation)
  {
    c3dAnimation = self->_c3dAnimation;

    return C3DAnimationGetAdditive(c3dAnimation, a2);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SCN_CAKeyframeAnimation;
    return [(SCN_CAKeyframeAnimation *)&v6 isAdditive];
  }
}

- (void)setCumulative:(BOOL)cumulative
{
  cumulativeCopy = cumulative;
  caReady = self->_caReady;
  c3dAnimation = self->_c3dAnimation;
  if (caReady)
  {
    if (c3dAnimation)
    {
      C3DAnimationSetCumulative(c3dAnimation, cumulative);
    }

    goto LABEL_8;
  }

  if (!c3dAnimation)
  {
LABEL_8:
    v7.receiver = self;
    v7.super_class = SCN_CAKeyframeAnimation;
    [(SCN_CAKeyframeAnimation *)&v7 setCumulative:cumulativeCopy];
    return;
  }

  C3DAnimationSetCumulative(c3dAnimation, cumulative);
}

- (BOOL)isCumulative
{
  if (self->_c3dAnimation)
  {
    c3dAnimation = self->_c3dAnimation;

    return C3DAnimationGetCumulative(c3dAnimation, a2);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SCN_CAKeyframeAnimation;
    return [(SCN_CAKeyframeAnimation *)&v6 isCumulative];
  }
}

- (void)encodeWithCoder:(id)coder
{
  c3dAnimation = self->_c3dAnimation;
  if (c3dAnimation || (c3dAnimation = CAAnimationToC3DAnimation(self, 0)) != 0)
  {
    v6 = C3DCopyPropertyList(c3dAnimation, 0, 0, 0);
    [coder encodeObject:v6 forKey:@"c3dAnimation"];
  }

  [(SCN_CAKeyframeAnimation *)self duration];
  [coder encodeDouble:@"duration" forKey:?];
  [coder encodeObject:-[SCN_CAKeyframeAnimation keyPath](self forKey:{"keyPath"), @"keyPath"}];
  [coder encodeBool:-[SCN_CAKeyframeAnimation isCumulative](self forKey:{"isCumulative"), @"cumulative"}];
  [coder encodeBool:-[SCN_CAKeyframeAnimation isAdditive](self forKey:{"isAdditive"), @"additive"}];
  [coder encodeObject:-[SCN_CAKeyframeAnimation timingFunction](self forKey:{"timingFunction"), @"timingFunction"}];
  [coder encodeObject:-[SCN_CAKeyframeAnimation fillMode](self forKey:{"fillMode"), @"fillMode"}];
  [coder encodeBool:-[SCN_CAKeyframeAnimation usesSceneTimeBase](self forKey:{"usesSceneTimeBase"), @"usesSceneTimeBase"}];
  [coder encodeBool:-[SCN_CAKeyframeAnimation commitsOnCompletion](self forKey:{"commitsOnCompletion"), @"commitsOnCompletion"}];
  [coder encodeBool:-[SCN_CAKeyframeAnimation isRemovedOnCompletion](self forKey:{"isRemovedOnCompletion"), @"removedOnCompletion"}];
  [coder encodeBool:-[SCN_CAKeyframeAnimation autoreverses](self forKey:{"autoreverses"), @"autoreverses"}];
  [(SCN_CAKeyframeAnimation *)self fadeInDuration];
  [coder encodeDouble:@"fadeInDuration" forKey:?];
  [(SCN_CAKeyframeAnimation *)self fadeOutDuration];
  [coder encodeDouble:@"fadeOutDuration" forKey:?];
  [(SCN_CAKeyframeAnimation *)self speed];
  [coder encodeDouble:@"speed" forKey:v7];
  [(SCN_CAKeyframeAnimation *)self timeOffset];
  [coder encodeDouble:@"timeOffset" forKey:?];
  [(SCN_CAKeyframeAnimation *)self repeatCount];
  v9 = v8;

  [coder encodeDouble:@"repeatCount" forKey:v9];
}

- (SCN_CAKeyframeAnimation)initWithCoder:(id)coder
{
  v14.receiver = self;
  v14.super_class = SCN_CAKeyframeAnimation;
  v4 = [(SCN_CAKeyframeAnimation *)&v14 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    v6 = [SCNTransaction setImmediateMode:1];
    v8 = [coder decodeObjectOfClasses:SCNPlistClasses(v6 forKey:{v7), @"c3dAnimation"}];
    v10 = C3DKeyframedAnimationCreate(v8, v9);
    if (C3DInitWithPropertyList(v10, v8, 0, 0))
    {
      [(SCN_CAKeyframeAnimation *)v4 setC3dAnimation:v10];
      if (v10)
      {
        CFRelease(v10);
      }

      -[SCN_CAKeyframeAnimation setKeyPath:](v4, "setKeyPath:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"keyPath"]);
      [coder decodeDoubleForKey:@"duration"];
      [(SCN_CAKeyframeAnimation *)v4 setDuration:?];
      -[SCN_CAKeyframeAnimation setCumulative:](v4, "setCumulative:", [coder decodeBoolForKey:@"cumulative"]);
      -[SCN_CAKeyframeAnimation setAdditive:](v4, "setAdditive:", [coder decodeBoolForKey:@"additive"]);
      -[SCN_CAKeyframeAnimation setTimingFunction:](v4, "setTimingFunction:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"timingFunction"]);
      -[SCN_CAKeyframeAnimation setFillMode:](v4, "setFillMode:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"fillMode"]);
      -[SCN_CAKeyframeAnimation setUsesSceneTimeBase:](v4, "setUsesSceneTimeBase:", [coder decodeBoolForKey:@"usesSceneTimeBase"]);
      -[SCN_CAKeyframeAnimation setCommitsOnCompletion:](v4, "setCommitsOnCompletion:", [coder decodeBoolForKey:@"commitsOnCompletion"]);
      -[SCN_CAKeyframeAnimation setRemovedOnCompletion:](v4, "setRemovedOnCompletion:", [coder decodeBoolForKey:@"removedOnCompletion"]);
      -[SCN_CAKeyframeAnimation setAutoreverses:](v4, "setAutoreverses:", [coder decodeBoolForKey:@"autoreverses"]);
      [coder decodeDoubleForKey:@"fadeInDuration"];
      [(SCN_CAKeyframeAnimation *)v4 setFadeInDuration:?];
      [coder decodeDoubleForKey:@"fadeOutDuration"];
      [(SCN_CAKeyframeAnimation *)v4 setFadeOutDuration:?];
      [coder decodeDoubleForKey:@"speed"];
      *&v11 = v11;
      [(SCN_CAKeyframeAnimation *)v4 setSpeed:v11];
      [coder decodeDoubleForKey:@"timeOffset"];
      [(SCN_CAKeyframeAnimation *)v4 setTimeOffset:?];
      [coder decodeDoubleForKey:@"repeatCount"];
      *&v12 = v12;
      [(SCN_CAKeyframeAnimation *)v4 setRepeatCount:v12];
      [SCNTransaction setImmediateMode:v5];
    }

    else
    {
      if (v10)
      {
        CFRelease(v10);
      }

      return 0;
    }
  }

  return v4;
}

@end