@interface VFXKeyframeAnimation
- (BOOL)autoreverses;
- (BOOL)isAdditive;
- (BOOL)isCumulative;
- (BOOL)isRemovedOnCompletion;
- (double)duration;
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
- (void)_clearCFXCache;
- (void)_convertToCA;
- (void)dealloc;
- (void)setAdditive:(BOOL)additive;
- (void)setAnimationEvents:(id)events;
- (void)setAutoreverses:(BOOL)autoreverses;
- (void)setBiasValues:(id)values;
- (void)setCfxAnimation:(__CFXKeyframedAnimation *)animation;
- (void)setContinuityValues:(id)values;
- (void)setCumulative:(BOOL)cumulative;
- (void)setDuration:(double)duration;
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
- (void)setValues:(id)values;
@end

@implementation VFXKeyframeAnimation

- (void)dealloc
{
  cfxAnimation = self->_cfxAnimation;
  if (cfxAnimation)
  {
    CFRelease(cfxAnimation);
    self->_cfxAnimation = 0;
  }

  v4.receiver = self;
  v4.super_class = VFXKeyframeAnimation;
  [(VFXKeyframeAnimation *)&v4 dealloc];
}

- (void)_convertToCA
{
  v75 = *MEMORY[0x1E69E9840];
  self->_caReady = 1;
  cfxAnimation = self->_cfxAnimation;
  if (cfxAnimation)
  {
    selfCopy = self;
    v71 = CFRetain(cfxAnimation);
    v5 = sub_1AF11D8C8(v71, v4);
    v70 = sub_1AF11CA18(v5, v6);
    v8 = sub_1AF11C9D0(v5, v7);
    v9 = v8;
    v11 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v10, v8);
    v13 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v12, v8);
    v14 = sub_1AF11D654(v5);
    if (v8)
    {
      v15 = !v14;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = 0;
      do
      {
        v17 = sub_1AF11D674(v5, v16);
        v18 = sub_1AF11D680(v5, v16);
        v19 = sub_1AF11D68C(v5, v16);
        v22 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v20, v21, v17);
        objc_msgSend_addObject_(0, v23, v22);
        v26 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v24, v25, v18);
        objc_msgSend_addObject_(0, v27, v26);
        v30 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v28, v29, v19);
        objc_msgSend_addObject_(0, v31, v30);
        ++v16;
      }

      while (v9 != v16);
    }

    memset(__dst, 0, sizeof(__dst));
    v32 = sub_1AF11D698(v5);
    if (v9 && v32)
    {
      v34 = 0;
      v35 = 0.0;
      v36 = 1;
      do
      {
        v73 = v35;
        v37 = sub_1AF11D6CC(v5, v34);
        v39 = sub_1AF11D6B8(v5, v34);
        if ((v36 & 1) == 0)
        {
          LODWORD(v40) = HIDWORD(v73);
          LODWORD(v41) = HIDWORD(*v37);
          v42 = objc_msgSend_functionWithControlPoints__::(MEMORY[0x1E69793D0], v33, v38, v73, v40, *v37, v41);
          objc_msgSend_addObject_(0, v43, v42);
        }

        v36 = 0;
        v35 = *v39;
        ++v34;
      }

      while (v9 != v34);
    }

    *&v45 = sub_1AF112A24(v71, v33);
    if (v9)
    {
      v46 = 0;
      if (*&v45 == 0.0)
      {
        *&v45 = 1.0;
      }

      v47 = *&v45;
      while (1)
      {
        v48 = sub_1AF11CA60(v5, v46);
        sub_1AF11CAD0(v5, v46, __dst);
        v51 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v49, v50, v48 / v47);
        objc_msgSend_addObject_(v11, v52, v51);
        v54 = sub_1AF376790(__dst, v70, v53);
        if (!v54)
        {
          break;
        }

        objc_msgSend_addObject_(v13, v55, v54);
        v46 = (v46 + 1);
        if (v9 == v46)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_29;
    }

LABEL_20:
    objc_msgSend_setKeyTimes_(selfCopy, v44, v11, v45);
    objc_msgSend_setValues_(selfCopy, v56, v13);
    objc_msgSend_setContinuityValues_(selfCopy, v57, 0);
    objc_msgSend_setTensionValues_(selfCopy, v58, 0);
    objc_msgSend_setBiasValues_(selfCopy, v59, 0);
    objc_msgSend_setTimingFunctions_(selfCopy, v60, 0);
    v62 = sub_1AF11CFA4(v5, v61);
    if (sub_1AF11CEF0(v5, v63) == 1)
    {
      v65 = MEMORY[0x1E69795B8];
      if (v62 == 2)
      {
        v65 = MEMORY[0x1E6979598];
      }
    }

    else
    {
      if (v62 > 2)
      {
LABEL_27:
        v66 = sub_1AF11C79C(v5, v64);
        objc_msgSend_setDuration_(selfCopy, v67, v68, v66);
        sub_1AF298E6C(selfCopy, v71);
LABEL_29:
        objc_msgSend_setCfxAnimation_(selfCopy, v69, v71);
        CFRelease(v71);
        return;
      }

      v65 = qword_1E7A7E490[v62];
    }

    objc_msgSend_setCalculationMode_(selfCopy, v64, *v65);
    goto LABEL_27;
  }
}

- (void)_clearCFXCache
{
  if (!self->_caReady)
  {
    objc_msgSend__convertToCA(self, a2, v2);
  }

  cfxAnimation = self->_cfxAnimation;
  if (cfxAnimation)
  {
    CFRelease(cfxAnimation);
  }

  self->_cfxAnimation = 0;
}

- (id)values
{
  if (!self->_caReady)
  {
    objc_msgSend__convertToCA(self, a2, v2);
  }

  v5.receiver = self;
  v5.super_class = VFXKeyframeAnimation;
  return [(VFXKeyframeAnimation *)&v5 values];
}

- (void)setValues:(id)values
{
  if (self->_cfxAnimation)
  {
    objc_msgSend__clearCFXCache(self, a2, values);
  }

  v5.receiver = self;
  v5.super_class = VFXKeyframeAnimation;
  [(VFXKeyframeAnimation *)&v5 setValues:values];
}

- (id)keyTimes
{
  if (!self->_caReady)
  {
    objc_msgSend__convertToCA(self, a2, v2);
  }

  v5.receiver = self;
  v5.super_class = VFXKeyframeAnimation;
  return [(VFXKeyframeAnimation *)&v5 keyTimes];
}

- (void)setKeyTimes:(id)times
{
  if (self->_cfxAnimation)
  {
    objc_msgSend__clearCFXCache(self, a2, times);
  }

  v5.receiver = self;
  v5.super_class = VFXKeyframeAnimation;
  [(VFXKeyframeAnimation *)&v5 setKeyTimes:times];
}

- (id)timingFunctions
{
  if (!self->_caReady)
  {
    objc_msgSend__convertToCA(self, a2, v2);
  }

  v5.receiver = self;
  v5.super_class = VFXKeyframeAnimation;
  return [(VFXKeyframeAnimation *)&v5 timingFunctions];
}

- (void)setTimingFunctions:(id)functions
{
  if (self->_cfxAnimation)
  {
    objc_msgSend__clearCFXCache(self, a2, functions);
  }

  v5.receiver = self;
  v5.super_class = VFXKeyframeAnimation;
  [(VFXKeyframeAnimation *)&v5 setTimingFunctions:functions];
}

- (id)tensionValues
{
  if (!self->_caReady)
  {
    objc_msgSend__convertToCA(self, a2, v2);
  }

  v5.receiver = self;
  v5.super_class = VFXKeyframeAnimation;
  return [(VFXKeyframeAnimation *)&v5 tensionValues];
}

- (void)setTensionValues:(id)values
{
  if (self->_cfxAnimation)
  {
    objc_msgSend__clearCFXCache(self, a2, values);
  }

  v5.receiver = self;
  v5.super_class = VFXKeyframeAnimation;
  [(VFXKeyframeAnimation *)&v5 setTensionValues:values];
}

- (id)continuityValues
{
  if (!self->_caReady)
  {
    objc_msgSend__convertToCA(self, a2, v2);
  }

  v5.receiver = self;
  v5.super_class = VFXKeyframeAnimation;
  return [(VFXKeyframeAnimation *)&v5 continuityValues];
}

- (void)setContinuityValues:(id)values
{
  if (self->_cfxAnimation)
  {
    objc_msgSend__clearCFXCache(self, a2, values);
  }

  v5.receiver = self;
  v5.super_class = VFXKeyframeAnimation;
  [(VFXKeyframeAnimation *)&v5 setContinuityValues:values];
}

- (id)biasValues
{
  if (!self->_caReady)
  {
    objc_msgSend__convertToCA(self, a2, v2);
  }

  v5.receiver = self;
  v5.super_class = VFXKeyframeAnimation;
  return [(VFXKeyframeAnimation *)&v5 biasValues];
}

- (void)setBiasValues:(id)values
{
  if (self->_cfxAnimation)
  {
    objc_msgSend__clearCFXCache(self, a2, values);
  }

  v5.receiver = self;
  v5.super_class = VFXKeyframeAnimation;
  [(VFXKeyframeAnimation *)&v5 setBiasValues:values];
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (self->_caReady || !self->_cfxAnimation)
  {
    v17.receiver = self;
    v17.super_class = VFXKeyframeAnimation;
    return [(VFXKeyframeAnimation *)&v17 copyWithZone:zone];
  }

  else
  {
    v4 = objc_alloc_init(objc_opt_class());
    v6 = sub_1AF113C58(self->_cfxAnimation, v5);
    objc_msgSend_setCfxAnimation_(v4, v7, v6);
    CFRelease(v6);
    v10 = objc_msgSend_keyPath(self, v8, v9);
    objc_msgSend_setKeyPath_(v4, v11, v10);
    v14 = objc_msgSend_delegate(self, v12, v13);
    objc_msgSend_setDelegate_(v4, v15, v14);
  }

  return v4;
}

- (id)description
{
  if (self->_caReady)
  {
    v12.receiver = self;
    v12.super_class = VFXKeyframeAnimation;
    return [(VFXKeyframeAnimation *)&v12 description];
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    objc_msgSend_duration(self, a2, v2);
    v7 = v6;
    v10 = objc_msgSend_keyPath(self, v8, v9);
    return objc_msgSend_stringWithFormat_(v5, v11, @"VFXKeyframeAnimation %p (duration=%f, keyPath:%@)", self, v7, v10);
  }
}

- (void)setCfxAnimation:(__CFXKeyframedAnimation *)animation
{
  cfxAnimation = self->_cfxAnimation;
  if (cfxAnimation != animation)
  {
    if (cfxAnimation)
    {
      CFRelease(cfxAnimation);
      self->_cfxAnimation = 0;
    }

    if (animation)
    {
      v6 = CFRetain(animation);
    }

    else
    {
      v6 = 0;
    }

    self->_cfxAnimation = v6;
  }
}

- (void)setDuration:(double)duration
{
  caReady = self->_caReady;
  cfxAnimation = self->_cfxAnimation;
  if (caReady)
  {
    if (cfxAnimation)
    {
      durationCopy = duration;
      sub_1AF1129D0(cfxAnimation, a2, durationCopy);
    }

    goto LABEL_8;
  }

  if (!cfxAnimation)
  {
LABEL_8:
    v9.receiver = self;
    v9.super_class = VFXKeyframeAnimation;
    [(VFXKeyframeAnimation *)&v9 setDuration:duration];
    return;
  }

  durationCopy2 = duration;

  sub_1AF1129D0(cfxAnimation, a2, durationCopy2);
}

- (double)duration
{
  if (self->_cfxAnimation)
  {
    return sub_1AF112A24(self->_cfxAnimation, a2);
  }

  v3.receiver = self;
  v3.super_class = VFXKeyframeAnimation;
  [(VFXKeyframeAnimation *)&v3 duration];
  return result;
}

- (void)setKeyPath:(id)path
{
  if (!self->_cfxAnimation)
  {
    goto LABEL_5;
  }

  v5 = sub_1AF28A40C(path);
  sub_1AF112944(self->_cfxAnimation, v5);
  if (v5)
  {
    CFRelease(v5);
  }

  if (self->_caReady)
  {
LABEL_5:
    v6.receiver = self;
    v6.super_class = VFXKeyframeAnimation;
    [(VFXKeyframeAnimation *)&v6 setKeyPath:path];
  }
}

- (id)keyPath
{
  cfxAnimation = self->_cfxAnimation;
  if (cfxAnimation && (v4 = sub_1AF112998(cfxAnimation)) != 0)
  {
    v5 = sub_1AF28A428(v4);

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = VFXKeyframeAnimation;
    return [(VFXKeyframeAnimation *)&v7 keyPath];
  }
}

- (void)setRepeatCount:(float)count
{
  cfxAnimation = self->_cfxAnimation;
  if (cfxAnimation)
  {
    sub_1AF112B00(cfxAnimation, a2, count);
  }

  if (self->_caReady)
  {
    v7.receiver = self;
    v7.super_class = VFXKeyframeAnimation;
    *&v6 = count;
    [(VFXKeyframeAnimation *)&v7 setRepeatCount:v6];
  }
}

- (float)repeatCount
{
  if (self->_cfxAnimation)
  {
    cfxAnimation = self->_cfxAnimation;

    return sub_1AF112B54(cfxAnimation, a2);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = VFXKeyframeAnimation;
    [(VFXKeyframeAnimation *)&v6 repeatCount];
  }

  return result;
}

- (void)setRepeatDuration:(double)duration
{
  if (self->_cfxAnimation)
  {
    objc_msgSend__clearCFXCache(self, a2, v3);
  }

  v6.receiver = self;
  v6.super_class = VFXKeyframeAnimation;
  [(VFXKeyframeAnimation *)&v6 setRepeatDuration:duration];
}

- (double)repeatDuration
{
  if (!self->_caReady)
  {
    objc_msgSend__convertToCA(self, a2, v2);
  }

  v5.receiver = self;
  v5.super_class = VFXKeyframeAnimation;
  [(VFXKeyframeAnimation *)&v5 repeatDuration];
  return result;
}

- (void)setAutoreverses:(BOOL)autoreverses
{
  autoreversesCopy = autoreverses;
  caReady = self->_caReady;
  cfxAnimation = self->_cfxAnimation;
  if (caReady)
  {
    if (cfxAnimation)
    {
      sub_1AF112B9C(cfxAnimation, autoreverses);
    }

    goto LABEL_8;
  }

  if (!cfxAnimation)
  {
LABEL_8:
    v7.receiver = self;
    v7.super_class = VFXKeyframeAnimation;
    [(VFXKeyframeAnimation *)&v7 setAutoreverses:autoreversesCopy];
    return;
  }

  sub_1AF112B9C(cfxAnimation, autoreverses);
}

- (BOOL)autoreverses
{
  if (self->_cfxAnimation)
  {
    cfxAnimation = self->_cfxAnimation;

    return sub_1AF112BFC(cfxAnimation, a2);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = VFXKeyframeAnimation;
    return [(VFXKeyframeAnimation *)&v6 autoreverses];
  }
}

- (void)setTimeOffset:(double)offset
{
  caReady = self->_caReady;
  cfxAnimation = self->_cfxAnimation;
  if (caReady)
  {
    if (cfxAnimation)
    {
      sub_1AF11307C(cfxAnimation, a2, offset);
    }

    goto LABEL_8;
  }

  if (!cfxAnimation)
  {
LABEL_8:
    v7.receiver = self;
    v7.super_class = VFXKeyframeAnimation;
    [(VFXKeyframeAnimation *)&v7 setTimeOffset:offset];
    return;
  }

  sub_1AF11307C(cfxAnimation, a2, offset);
}

- (double)timeOffset
{
  if (self->_cfxAnimation)
  {
    cfxAnimation = self->_cfxAnimation;

    return sub_1AF1130D0(cfxAnimation, a2);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = VFXKeyframeAnimation;
    [(VFXKeyframeAnimation *)&v6 timeOffset];
  }

  return result;
}

- (void)setSpeed:(float)speed
{
  caReady = self->_caReady;
  cfxAnimation = self->_cfxAnimation;
  if (caReady)
  {
    if (cfxAnimation)
    {
      sub_1AF113118(cfxAnimation, a2, speed);
    }

    goto LABEL_8;
  }

  if (!cfxAnimation)
  {
LABEL_8:
    v8.receiver = self;
    v8.super_class = VFXKeyframeAnimation;
    *&v7 = speed;
    [(VFXKeyframeAnimation *)&v8 setSpeed:v7];
    return;
  }

  sub_1AF113118(cfxAnimation, a2, speed);
}

- (float)speed
{
  if (self->_cfxAnimation)
  {
    cfxAnimation = self->_cfxAnimation;

    return sub_1AF11316C(cfxAnimation, a2);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = VFXKeyframeAnimation;
    [(VFXKeyframeAnimation *)&v6 speed];
  }

  return result;
}

- (void)setRemovedOnCompletion:(BOOL)completion
{
  completionCopy = completion;
  caReady = self->_caReady;
  cfxAnimation = self->_cfxAnimation;
  if (caReady)
  {
    if (cfxAnimation)
    {
      sub_1AF112ECC(cfxAnimation, completion);
    }

    goto LABEL_8;
  }

  if (!cfxAnimation)
  {
LABEL_8:
    v7.receiver = self;
    v7.super_class = VFXKeyframeAnimation;
    [(VFXKeyframeAnimation *)&v7 setRemovedOnCompletion:completionCopy];
    return;
  }

  sub_1AF112ECC(cfxAnimation, completion);
}

- (BOOL)isRemovedOnCompletion
{
  if (self->_cfxAnimation)
  {
    cfxAnimation = self->_cfxAnimation;

    return sub_1AF112E80(cfxAnimation, a2);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = VFXKeyframeAnimation;
    return [(VFXKeyframeAnimation *)&v6 isRemovedOnCompletion];
  }
}

- (void)setFillMode:(id)mode
{
  cfxAnimation = self->_cfxAnimation;
  if (self->_caReady)
  {
    if (cfxAnimation)
    {
      v6 = sub_1AF290524(mode, a2);
      sub_1AF113614(cfxAnimation, v6);
    }

    goto LABEL_8;
  }

  if (!cfxAnimation)
  {
LABEL_8:
    v8.receiver = self;
    v8.super_class = VFXKeyframeAnimation;
    [(VFXKeyframeAnimation *)&v8 setFillMode:mode];
    return;
  }

  v7 = sub_1AF290524(mode, a2);

  sub_1AF113614(cfxAnimation, v7);
}

- (id)fillMode
{
  if (self->_cfxAnimation)
  {
    v2 = sub_1AF1135C8(self->_cfxAnimation, a2);

    return sub_1AF290614(v2, v3);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = VFXKeyframeAnimation;
    return [(VFXKeyframeAnimation *)&v5 fillMode];
  }
}

- (void)setAnimationEvents:(id)events
{
  cfxAnimation = self->_cfxAnimation;
  if (self->_caReady)
  {
    if (cfxAnimation)
    {
      v6 = sub_1AF290784(events, a2, events);
      sub_1AF113490(cfxAnimation, v6);
    }

    goto LABEL_8;
  }

  if (!cfxAnimation)
  {
LABEL_8:
    v8 = objc_msgSend_copy(events, a2, events);
    v9.receiver = self;
    v9.super_class = VFXKeyframeAnimation;
    [(CAAnimation *)&v9 setAnimationEvents:v8];

    return;
  }

  v7 = sub_1AF290784(events, a2, events);

  sub_1AF113490(cfxAnimation, v7);
}

- (id)animationEvents
{
  if (self->_cfxAnimation)
  {
    v2 = sub_1AF113448(self->_cfxAnimation, a2);

    return sub_1AF290934(v2, v3);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = VFXKeyframeAnimation;
    return [(CAAnimation *)&v5 animationEvents];
  }
}

- (void)setTimingFunction:(id)function
{
  cfxAnimation = self->_cfxAnimation;
  if (self->_caReady)
  {
    if (cfxAnimation)
    {
      v6 = sub_1AF36FC84(function, a2);
      sub_1AF112C48(cfxAnimation, v6);
    }

    goto LABEL_8;
  }

  if (!cfxAnimation)
  {
LABEL_8:
    v8.receiver = self;
    v8.super_class = VFXKeyframeAnimation;
    [(VFXKeyframeAnimation *)&v8 setTimingFunction:function];
    return;
  }

  v7 = sub_1AF36FC84(function, a2);

  sub_1AF112C48(cfxAnimation, v7);
}

- (id)timingFunction
{
  if (self->_cfxAnimation)
  {
    result = sub_1AF112CC8(self->_cfxAnimation, a2);
    if (result)
    {

      return sub_1AF36FD0C(result, v3);
    }
  }

  else
  {
    v4.receiver = self;
    v4.super_class = VFXKeyframeAnimation;
    return [(VFXKeyframeAnimation *)&v4 timingFunction];
  }

  return result;
}

- (void)setAdditive:(BOOL)additive
{
  additiveCopy = additive;
  caReady = self->_caReady;
  cfxAnimation = self->_cfxAnimation;
  if (caReady)
  {
    if (cfxAnimation)
    {
      sub_1AF112D10(cfxAnimation, additive);
    }

    goto LABEL_8;
  }

  if (!cfxAnimation)
  {
LABEL_8:
    v7.receiver = self;
    v7.super_class = VFXKeyframeAnimation;
    [(VFXKeyframeAnimation *)&v7 setAdditive:additiveCopy];
    return;
  }

  sub_1AF112D10(cfxAnimation, additive);
}

- (BOOL)isAdditive
{
  if (self->_cfxAnimation)
  {
    cfxAnimation = self->_cfxAnimation;

    return sub_1AF112E34(cfxAnimation, a2);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = VFXKeyframeAnimation;
    return [(VFXKeyframeAnimation *)&v6 isAdditive];
  }
}

- (void)setCumulative:(BOOL)cumulative
{
  cumulativeCopy = cumulative;
  caReady = self->_caReady;
  cfxAnimation = self->_cfxAnimation;
  if (caReady)
  {
    if (cfxAnimation)
    {
      sub_1AF112DC8(cfxAnimation, cumulative);
    }

    goto LABEL_8;
  }

  if (!cfxAnimation)
  {
LABEL_8:
    v7.receiver = self;
    v7.super_class = VFXKeyframeAnimation;
    [(VFXKeyframeAnimation *)&v7 setCumulative:cumulativeCopy];
    return;
  }

  sub_1AF112DC8(cfxAnimation, cumulative);
}

- (BOOL)isCumulative
{
  if (self->_cfxAnimation)
  {
    cfxAnimation = self->_cfxAnimation;

    return sub_1AF112D7C(cfxAnimation, a2);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = VFXKeyframeAnimation;
    return [(VFXKeyframeAnimation *)&v6 isCumulative];
  }
}

@end