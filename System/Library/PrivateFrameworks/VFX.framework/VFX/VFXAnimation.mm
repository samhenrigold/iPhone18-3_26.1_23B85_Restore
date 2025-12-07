@interface VFXAnimation
+ (id)animationFromWorld:(id)world;
+ (id)animationNamed:(id)named;
+ (id)animationWithCAAnimation:(id)animation;
+ (id)animationWithCFXAnimation:(__CFXAnimation *)animation;
+ (id)animationWithContentsOfURL:(id)l;
+ (id)animationWithMDLTransform:(id)transform;
+ (int64_t)componentCountAtKeyPath:(id)path target:(id)target;
- (CAAnimation)caAnimation;
- (NSString)description;
- (VFXAnimation)initWithCAAnimation:(id)animation;
- (VFXAnimation)initWithCFXAnimation:(__CFXAnimation *)animation;
- (VFXAnimation)initWithCoder:(id)coder;
- (float)repeatDuration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decodeAnimation:(id)animation;
- (id)encodeAnimation:(id)animation;
- (id)subAnimations;
- (id)userAnimation;
- (id)valueForUndefinedKey:(id)key;
- (void)_optimizeKeyframesWithTarget:(id)target;
- (void)_setAnimationRef:(__CFXAnimation *)ref;
- (void)_updateModelFromPresentation;
- (void)_updatePresentationFromModel;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)prepareWithTarget:(id)target implicitDuration:(double)duration;
- (void)setAdditive:(BOOL)additive;
- (void)setAnimationDidStart:(id)start;
- (void)setAnimationDidStop:(id)stop;
- (void)setAnimationEvents:(id)events;
- (void)setAppliedOnCompletion:(BOOL)completion;
- (void)setAutoreverses:(BOOL)autoreverses;
- (void)setBeginTime:(double)time;
- (void)setBlendInDuration:(double)duration;
- (void)setBlendOutDuration:(double)duration;
- (void)setCumulative:(BOOL)cumulative;
- (void)setDuration:(double)duration;
- (void)setFillsBackward:(BOOL)backward;
- (void)setFillsForward:(BOOL)forward;
- (void)setKeyPath:(id)path;
- (void)setRemovedOnCompletion:(BOOL)completion;
- (void)setRepeatCount:(float)count;
- (void)setRepeatDuration:(float)duration;
- (void)setTimeOffset:(double)offset;
- (void)setTimingFunction:(id)function;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation VFXAnimation

- (void)dealloc
{
  animationRef = self->_animationRef;
  if (animationRef)
  {
    sub_1AF16CDFC(animationRef, 0);
  }

  animationDidStart = self->_animationDidStart;
  if (animationDidStart)
  {
    _Block_release(animationDidStart);
  }

  animationDidStop = self->_animationDidStop;
  if (animationDidStop)
  {
    _Block_release(animationDidStop);
  }

  v6 = self->_animationRef;
  if (v6)
  {
    CFRelease(v6);
    self->_animationRef = 0;
  }

  v7.receiver = self;
  v7.super_class = VFXAnimation;
  [(VFXAnimation *)&v7 dealloc];
}

- (VFXAnimation)initWithCFXAnimation:(__CFXAnimation *)animation
{
  v10.receiver = self;
  v10.super_class = VFXAnimation;
  v4 = [(VFXAnimation *)&v10 init];
  v6 = v4;
  if (v4)
  {
    v4->_userInfoLock._os_unfair_lock_opaque = 0;
    objc_msgSend__setAnimationRef_(v4, v5, animation);
    objc_msgSend__updateModelFromPresentation(v6, v7, v8);
    v6->_didMutate = 0;
  }

  return v6;
}

- (VFXAnimation)initWithCAAnimation:(id)animation
{
  v56.receiver = self;
  v56.super_class = VFXAnimation;
  v4 = [(VFXAnimation *)&v56 init];
  v7 = v4;
  if (v4)
  {
    v4->_userInfoLock._os_unfair_lock_opaque = 0;
    v4->_userAnimation = objc_msgSend_copy(animation, v5, v6);
    objc_msgSend_duration(animation, v8, v9);
    v7->_duration = v10;
    objc_msgSend_repeatCount(animation, v11, v12);
    v7->_repeatCount = v13;
    v7->_autoreverses = objc_msgSend_autoreverses(animation, v14, v15);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7->_additive = objc_msgSend_isAdditive(animation, v16, v17);
      v7->_cumulative = objc_msgSend_isCumulative(animation, v18, v19);
      v22 = objc_msgSend_keyPath(animation, v20, v21);
      v7->_keyPath = objc_msgSend_copy(v22, v23, v24);
    }

    v7->_removedOnCompletion = objc_msgSend_isRemovedOnCompletion(animation, v16, v17);
    objc_msgSend_beginTime(animation, v25, v26);
    v7->_beginTime = v27;
    objc_msgSend_timeOffset(animation, v28, v29);
    v7->_timeOffset = v30;
    v33 = objc_msgSend_fillMode(animation, v31, v32);
    v36 = *MEMORY[0x1E69797E0];
    v37 = v33 == *MEMORY[0x1E69797E0] || objc_msgSend_fillMode(animation, v34, v35) == *MEMORY[0x1E69797E8];
    v7->_fillForward = v37;
    v38 = objc_msgSend_fillMode(animation, v34, v35);
    if (v38 == v36)
    {
      v41 = 1;
    }

    else
    {
      v38 = objc_msgSend_fillMode(animation, v39, v40);
      v41 = v38 == *MEMORY[0x1E69797D8];
    }

    v7->_fillBackward = v41;
    if (v7->_animationEvents)
    {
      v42 = sub_1AF0D5194(v38, v39);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF42E0(v42, v39, v40, v43, v44, v45, v46, v47);
      }
    }

    v48 = objc_msgSend_animationEvents(animation, v39, v40);
    v7->_animationEvents = objc_msgSend_copy(v48, v49, v50);
    v53 = objc_msgSend_timingFunction(animation, v51, v52);
    v7->_timingFunction = objc_msgSend_functionWithCAMediaTimingFunction_(VFXTimingFunction, v54, v53);
    v7->_didMutate = 0;
  }

  return v7;
}

+ (id)animationWithCFXAnimation:(__CFXAnimation *)animation
{
  v4 = [VFXAnimation alloc];
  v6 = objc_msgSend_initWithCFXAnimation_(v4, v5, animation);

  return v6;
}

- (void)_setAnimationRef:(__CFXAnimation *)ref
{
  animationRef = self->_animationRef;
  if (animationRef != ref)
  {
    if (animationRef)
    {
      CFRelease(animationRef);
      self->_animationRef = 0;
    }

    if (ref)
    {
      v6 = CFRetain(ref);
    }

    else
    {
      v6 = 0;
    }

    self->_animationRef = v6;
  }

  if (ref)
  {

    sub_1AF16CDFC(ref, self);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  v5[26] = 0;
  animationRef = self->_animationRef;
  if (animationRef)
  {
    v7 = sub_1AF113C58(animationRef, v4);
    objc_msgSend__setAnimationRef_(v5, v8, v7);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  *(v5 + 8) = self->_timingFunction;
  *(v5 + 9) = self->_animationEvents;
  animationDidStart = self->_animationDidStart;
  if (animationDidStart)
  {
    *(v5 + 10) = _Block_copy(animationDidStart);
  }

  animationDidStop = self->_animationDidStop;
  if (animationDidStop)
  {
    *(v5 + 11) = _Block_copy(animationDidStop);
  }

  *(v5 + 3) = *&self->_duration;
  v5[8] = LODWORD(self->_repeatCount);
  *(v5 + 5) = *&self->_timeOffset;
  *(v5 + 6) = *&self->_beginTime;
  *(v5 + 56) = self->_autoreverses;
  *(v5 + 57) = self->_removedOnCompletion;
  *(v5 + 58) = self->_applyOnCompletion;
  *(v5 + 59) = self->_additive;
  *(v5 + 60) = self->_cumulative;
  *(v5 + 61) = self->_fillForward;
  *(v5 + 62) = self->_fillBackward;
  *(v5 + 15) = objc_msgSend_copy(self->_userAnimation, v9, v10);
  *(v5 + 128) = self->_didMutate;
  return v5;
}

- (void)_updateModelFromPresentation
{
  v3 = sub_1AF112998(self->_animationRef);
  v5 = objc_msgSend_componentsJoinedByString_(v3, v4, @".");

  self->_keyPath = v5;
  self->_duration = sub_1AF112A24(self->_animationRef, v6);
  self->_repeatCount = sub_1AF112B54(self->_animationRef, v7);
  self->_autoreverses = sub_1AF112BFC(self->_animationRef, v8);
  self->_beginTime = sub_1AF113034(self->_animationRef, v9);
  self->_timeOffset = sub_1AF1130D0(self->_animationRef, v10);
  self->_removedOnCompletion = sub_1AF112E80(self->_animationRef, v11);
  v13 = sub_1AF1135C8(self->_animationRef, v12);
  self->_fillForward = v13 & 1;
  self->_fillBackward = (v13 & 2) != 0;
  v15 = sub_1AF113448(self->_animationRef, v14);
  v17 = sub_1AF290934(v15, v16);
  animationEvents = self->_animationEvents;
  if (animationEvents != v17)
  {
    v20 = v17;

    self->_animationEvents = v20;
  }

  v21 = sub_1AF112CC8(self->_animationRef, v18);
  if (v21)
  {
    v23 = v21;

    v24 = [VFXTimingFunction alloc];
    self->_timingFunction = objc_msgSend_initWithTimingFunctionRef_(v24, v25, v23);
  }

  self->_applyOnCompletion = sub_1AF113270(self->_animationRef, v22);
  self->_additive = sub_1AF112E34(self->_animationRef, v26);
  self->_cumulative = sub_1AF112D7C(self->_animationRef, v27);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF293900;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (id)encodeAnimation:(id)animation
{
  v163 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = MEMORY[0x1E696AD98];
  objc_msgSend_duration(animation, v7, v8);
  v11 = objc_msgSend_numberWithDouble_(v6, v9, v10);
  objc_msgSend_setValue_forKey_(v5, v12, v11, @"duration");
  v15 = objc_msgSend_timingFunction(animation, v13, v14);
  objc_msgSend_setValue_forKey_(v5, v16, v15, @"timingFunction");
  v19 = objc_msgSend_fillMode(animation, v17, v18);
  objc_msgSend_setValue_forKey_(v5, v20, v19, @"fillMode");
  v21 = MEMORY[0x1E696AD98];
  isRemovedOnCompletion = objc_msgSend_isRemovedOnCompletion(animation, v22, v23);
  v26 = objc_msgSend_numberWithBool_(v21, v25, isRemovedOnCompletion);
  objc_msgSend_setValue_forKey_(v5, v27, v26, @"removedOnCompletion");
  v28 = MEMORY[0x1E696AD98];
  v31 = objc_msgSend_autoreverses(animation, v29, v30);
  v33 = objc_msgSend_numberWithBool_(v28, v32, v31);
  objc_msgSend_setValue_forKey_(v5, v34, v33, @"autoreverses");
  v35 = MEMORY[0x1E696AD98];
  objc_msgSend_speed(animation, v36, v37);
  v40 = objc_msgSend_numberWithFloat_(v35, v38, v39);
  objc_msgSend_setValue_forKey_(v5, v41, v40, @"speed");
  v42 = MEMORY[0x1E696AD98];
  objc_msgSend_timeOffset(animation, v43, v44);
  v47 = objc_msgSend_numberWithDouble_(v42, v45, v46);
  objc_msgSend_setValue_forKey_(v5, v48, v47, @"timeOffset");
  v49 = MEMORY[0x1E696AD98];
  objc_msgSend_repeatCount(animation, v50, v51);
  v54 = objc_msgSend_numberWithFloat_(v49, v52, v53);
  objc_msgSend_setValue_forKey_(v5, v55, v54, @"repeatCount");
  v56 = MEMORY[0x1E696AD98];
  objc_msgSend_beginTime(animation, v57, v58);
  v61 = objc_msgSend_numberWithDouble_(v56, v59, v60);
  objc_msgSend_setValue_forKey_(v5, v62, v61, @"beginTime");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v65 = objc_msgSend_keyPath(animation, v63, v64);
    objc_msgSend_setValue_forKey_(v5, v66, v65, @"keyPath");
    v67 = MEMORY[0x1E696AD98];
    isCumulative = objc_msgSend_isCumulative(animation, v68, v69);
    v72 = objc_msgSend_numberWithBool_(v67, v71, isCumulative);
    objc_msgSend_setValue_forKey_(v5, v73, v72, @"cumulative");
    v74 = MEMORY[0x1E696AD98];
    isAdditive = objc_msgSend_isAdditive(animation, v75, v76);
    v79 = objc_msgSend_numberWithBool_(v74, v78, isAdditive);
    objc_msgSend_setValue_forKey_(v5, v80, v79, @"additive");
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v83 = objc_msgSend_fromValue(animation, v81, v82);
    v85 = VFXDataFromValue(v83, 1, v84);
    objc_msgSend_setValue_forKey_(v5, v86, v85, @"from");
    v89 = objc_msgSend_toValue(animation, v87, v88);
    v91 = VFXDataFromValue(v89, 1, v90);
    objc_msgSend_setValue_forKey_(v5, v92, v91, @"to");
    v95 = objc_msgSend_byValue(animation, v93, v94);
    v97 = VFXDataFromValue(v95, 1, v96);
    objc_msgSend_setValue_forKey_(v5, v98, v97, @"by");
    objc_msgSend_setValue_forKey_(v5, v99, @"basic", @"type");
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v102 = objc_msgSend_values(animation, v100, v101);
    v105 = VFXDataFromArrayOfValues(v102, v103, v104);
    objc_msgSend_setValue_forKey_(v5, v106, v105, @"values");
    v109 = objc_msgSend_keyTimes(animation, v107, v108);
    objc_msgSend_setValue_forKey_(v5, v110, v109, @"keyTimes");
    v113 = objc_msgSend_timingFunctions(animation, v111, v112);
    objc_msgSend_setValue_forKey_(v5, v114, v113, @"timingFunctions");
    v117 = objc_msgSend_tensionValues(animation, v115, v116);
    objc_msgSend_setValue_forKey_(v5, v118, v117, @"tensionValues");
    v121 = objc_msgSend_continuityValues(animation, v119, v120);
    objc_msgSend_setValue_forKey_(v5, v122, v121, @"continuityValues");
    v125 = objc_msgSend_biasValues(animation, v123, v124);
    objc_msgSend_setValue_forKey_(v5, v126, v125, @"biasValues");
    v129 = objc_msgSend_calculationMode(animation, v127, v128);
    objc_msgSend_setValue_forKey_(v5, v130, v129, @"calculationMode");
    v133 = objc_msgSend_rotationMode(animation, v131, v132);
    objc_msgSend_setValue_forKey_(v5, v134, v133, @"rotationMode");
    objc_msgSend_setValue_forKey_(v5, v135, @"keyframe", @"type");
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v136 = objc_alloc(MEMORY[0x1E695DF70]);
    v139 = objc_msgSend_animations(animation, v137, v138);
    v142 = objc_msgSend_count(v139, v140, v141);
    v144 = objc_msgSend_initWithCapacity_(v136, v143, v142);
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v147 = objc_msgSend_animations(animation, v145, v146, 0);
    v149 = objc_msgSend_countByEnumeratingWithState_objects_count_(v147, v148, &v158, v162, 16);
    if (v149)
    {
      v151 = v149;
      v152 = *v159;
      do
      {
        v153 = 0;
        do
        {
          if (*v159 != v152)
          {
            objc_enumerationMutation(v147);
          }

          v154 = objc_msgSend_encodeAnimation_(self, v150, *(*(&v158 + 1) + 8 * v153));
          objc_msgSend_addObject_(v144, v155, v154);
          ++v153;
        }

        while (v151 != v153);
        v151 = objc_msgSend_countByEnumeratingWithState_objects_count_(v147, v150, &v158, v162, 16);
      }

      while (v151);
    }

    objc_msgSend_setValue_forKey_(v5, v150, v144, @"animations");
    objc_msgSend_setValue_forKey_(v5, v156, @"group", @"type");
  }

  return v5;
}

- (id)decodeAnimation:(id)animation
{
  v142 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_valueForKey_(animation, a2, @"type");
  v7 = objc_msgSend_valueForKey_(animation, v6, @"keyPath");
  if (objc_msgSend_isEqualToString_(v5, v8, @"basic"))
  {
    v10 = objc_msgSend_animationWithKeyPath_(MEMORY[0x1E6979318], v9, v7);
    v12 = objc_msgSend_valueForKey_(animation, v11, @"from");
    v15 = VFXValueFromData(v12, v13, v14);
    objc_msgSend_setFromValue_(v10, v16, v15);
    v18 = objc_msgSend_valueForKey_(animation, v17, @"to");
    v21 = VFXValueFromData(v18, v19, v20);
    objc_msgSend_setToValue_(v10, v22, v21);
    v24 = objc_msgSend_valueForKey_(animation, v23, @"by");
    v27 = VFXValueFromData(v24, v25, v26);
    objc_msgSend_setByValue_(v10, v28, v27);
  }

  else if (objc_msgSend_isEqualToString_(v5, v9, @"keyframe"))
  {
    v10 = objc_msgSend_animationWithKeyPath_(MEMORY[0x1E6979390], v30, v7);
    v32 = objc_msgSend_valueForKey_(animation, v31, @"values");
    v35 = VFXArrayOfValueFromData(v32, v33, v34);
    objc_msgSend_setValues_(v10, v36, v35);
    v38 = objc_msgSend_valueForKey_(animation, v37, @"keyTimes");
    objc_msgSend_setKeyTimes_(v10, v39, v38);
    v41 = objc_msgSend_valueForKey_(animation, v40, @"timingFunctions");
    objc_msgSend_setTimingFunctions_(v10, v42, v41);
    v44 = objc_msgSend_valueForKey_(animation, v43, @"tensionValues");
    objc_msgSend_setTensionValues_(v10, v45, v44);
    v47 = objc_msgSend_valueForKey_(animation, v46, @"continuityValues");
    objc_msgSend_setContinuityValues_(v10, v48, v47);
    v50 = objc_msgSend_valueForKey_(animation, v49, @"biasValues");
    objc_msgSend_setBiasValues_(v10, v51, v50);
    v53 = objc_msgSend_valueForKey_(animation, v52, @"calculationMode");
    objc_msgSend_setCalculationMode_(v10, v54, v53);
    v56 = objc_msgSend_valueForKey_(animation, v55, @"rotationMode");
    objc_msgSend_setRotationMode_(v10, v57, v56);
  }

  else if (objc_msgSend_isEqualToString_(v5, v30, @"group"))
  {
    v10 = objc_msgSend_animation(MEMORY[0x1E6979308], v29, v58);
    v60 = objc_msgSend_valueForKey_(animation, v59, @"animations");
    v61 = objc_alloc(MEMORY[0x1E695DF70]);
    v64 = objc_msgSend_count(v60, v62, v63);
    v66 = objc_msgSend_initWithCapacity_(v61, v65, v64);
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v67, &v137, v141, 16);
    if (v68)
    {
      v70 = v68;
      v71 = *v138;
      do
      {
        v72 = 0;
        do
        {
          if (*v138 != v71)
          {
            objc_enumerationMutation(v60);
          }

          v73 = objc_msgSend_decodeAnimation_(self, v69, *(*(&v137 + 1) + 8 * v72));
          objc_msgSend_addObject_(v66, v74, v73);
          ++v72;
        }

        while (v70 != v72);
        v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v69, &v137, v141, 16);
      }

      while (v70);
    }

    objc_msgSend_setAnimations_(v10, v69, v66);
  }

  else
  {
    v10 = 0;
  }

  v75 = objc_msgSend_valueForKey_(animation, v29, @"duration");
  objc_msgSend_doubleValue(v75, v76, v77);
  objc_msgSend_setDuration_(v10, v78, v79);
  v81 = objc_msgSend_valueForKey_(animation, v80, @"timingFunction");
  objc_msgSend_setTimingFunction_(v10, v82, v81);
  v84 = objc_msgSend_valueForKey_(animation, v83, @"fillMode");
  objc_msgSend_setFillMode_(v10, v85, v84);
  v87 = objc_msgSend_valueForKey_(animation, v86, @"removedOnCompletion");
  v90 = objc_msgSend_BOOLValue(v87, v88, v89);
  objc_msgSend_setRemovedOnCompletion_(v10, v91, v90);
  v93 = objc_msgSend_valueForKey_(animation, v92, @"autoreverses");
  v96 = objc_msgSend_BOOLValue(v93, v94, v95);
  objc_msgSend_setAutoreverses_(v10, v97, v96);
  v99 = objc_msgSend_valueForKey_(animation, v98, @"speed");
  objc_msgSend_floatValue(v99, v100, v101);
  objc_msgSend_setSpeed_(v10, v102, v103);
  v105 = objc_msgSend_valueForKey_(animation, v104, @"timeOffset");
  objc_msgSend_floatValue(v105, v106, v107);
  objc_msgSend_setTimeOffset_(v10, v109, v110, v108);
  v112 = objc_msgSend_valueForKey_(animation, v111, @"repeatCount");
  objc_msgSend_floatValue(v112, v113, v114);
  objc_msgSend_setRepeatCount_(v10, v115, v116);
  v118 = objc_msgSend_valueForKey_(animation, v117, @"beginTime");
  objc_msgSend_floatValue(v118, v119, v120);
  objc_msgSend_setBeginTime_(v10, v122, v123, v121);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v125 = objc_msgSend_valueForKey_(animation, v124, @"cumulative");
    v128 = objc_msgSend_BOOLValue(v125, v126, v127);
    objc_msgSend_setCumulative_(v10, v129, v128);
    v131 = objc_msgSend_valueForKey_(animation, v130, @"additive");
    v134 = objc_msgSend_BOOLValue(v131, v132, v133);
    objc_msgSend_setAdditive_(v10, v135, v134);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = objc_msgSend_caAnimation(self, a2, coder);
  v7 = objc_msgSend_encodeAnimation_(self, v6, v5);
  sub_1AF37266C(coder, v7, @"animation");
  v10 = objc_msgSend_keyPath(self, v8, v9);
  objc_msgSend_encodeObject_forKey_(coder, v11, v10, @"keyPath");
  objc_msgSend_duration(self, v12, v13);
  objc_msgSend_encodeDouble_forKey_(coder, v14, @"duration");
  objc_msgSend_repeatCount(self, v15, v16);
  objc_msgSend_encodeDouble_forKey_(coder, v18, @"repeatCount", v17);
  objc_msgSend_timeOffset(self, v19, v20);
  objc_msgSend_encodeDouble_forKey_(coder, v21, @"timeOffset");
  objc_msgSend_beginTime(self, v22, v23);
  objc_msgSend_encodeDouble_forKey_(coder, v24, @"beginTime");
  v27 = objc_msgSend_autoreverses(self, v25, v26);
  objc_msgSend_encodeBool_forKey_(coder, v28, v27, @"autoreverses");
  isRemovedOnCompletion = objc_msgSend_isRemovedOnCompletion(self, v29, v30);
  objc_msgSend_encodeBool_forKey_(coder, v32, isRemovedOnCompletion, @"removedOnCompletion");
  isAppliedOnCompletion = objc_msgSend_isAppliedOnCompletion(self, v33, v34);
  objc_msgSend_encodeBool_forKey_(coder, v36, isAppliedOnCompletion, @"applyOnCompletion");
  isAdditive = objc_msgSend_isAdditive(self, v37, v38);
  objc_msgSend_encodeBool_forKey_(coder, v40, isAdditive, @"additive");
  isCumulative = objc_msgSend_isCumulative(self, v41, v42);
  objc_msgSend_encodeBool_forKey_(coder, v44, isCumulative, @"cumulative");
  v47 = objc_msgSend_fillsForward(self, v45, v46);
  objc_msgSend_encodeBool_forKey_(coder, v48, v47, @"fillForward");
  v51 = objc_msgSend_fillsBackward(self, v49, v50);
  objc_msgSend_encodeBool_forKey_(coder, v52, v51, @"fillBackward");
  v55 = objc_msgSend_timingFunction(self, v53, v54);
  objc_msgSend_encodeObject_forKey_(coder, v56, v55, @"timingFunction");
  if (self->_userInfo)
  {
    os_unfair_lock_lock(&self->_userInfoLock);
    objc_msgSend_encodeObject_forKey_(coder, v57, self->_userInfo, @"userInfo");

    os_unfair_lock_unlock(&self->_userInfoLock);
  }
}

- (VFXAnimation)initWithCoder:(id)coder
{
  v74[1] = *MEMORY[0x1E69E9840];
  v73.receiver = self;
  v73.super_class = VFXAnimation;
  v4 = [(VFXAnimation *)&v73 init];
  v6 = v4;
  if (v4)
  {
    v4->_userInfoLock._os_unfair_lock_opaque = 0;
    v7 = sub_1AF373844(v4, v5);
    v74[0] = objc_opt_class();
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v74, 1);
    v11 = objc_msgSend_setByAddingObjectsFromArray_(v7, v10, v9);
    v12 = sub_1AF3726E8(coder, @"animation", v11);
    if (v12)
    {
      v15 = v12;
      v16 = objc_msgSend_immediateMode(VFXTransaction, v13, v14);
      objc_msgSend_setImmediateMode_(VFXTransaction, v17, 1);
      v6->_userAnimation = objc_msgSend_decodeAnimation_(v6, v18, v15);
      v19 = objc_opt_class();
      v21 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v20, v19, @"keyPath");
      objc_msgSend_setKeyPath_(v6, v22, v21);
      objc_msgSend_decodeDoubleForKey_(coder, v23, @"duration");
      objc_msgSend_setDuration_(v6, v24, v25);
      objc_msgSend_decodeDoubleForKey_(coder, v26, @"repeatCount");
      *&v27 = v27;
      objc_msgSend_setRepeatCount_(v6, v28, v29, v27);
      objc_msgSend_decodeDoubleForKey_(coder, v30, @"timeOffset");
      objc_msgSend_setTimeOffset_(v6, v31, v32);
      objc_msgSend_decodeDoubleForKey_(coder, v33, @"beginTime");
      objc_msgSend_setBeginTime_(v6, v34, v35);
      objc_msgSend_beginTime(v6, v36, v37);
      objc_msgSend_setBeginTime_(v6->_userAnimation, v38, v39);
      v41 = objc_msgSend_decodeBoolForKey_(coder, v40, @"autoreverses");
      objc_msgSend_setAutoreverses_(v6, v42, v41);
      v44 = objc_msgSend_decodeBoolForKey_(coder, v43, @"appliedOnCompletion");
      objc_msgSend_setAppliedOnCompletion_(v6, v45, v44);
      v47 = objc_msgSend_decodeBoolForKey_(coder, v46, @"removedOnCompletion");
      objc_msgSend_setRemovedOnCompletion_(v6, v48, v47);
      v50 = objc_msgSend_decodeBoolForKey_(coder, v49, @"additive");
      objc_msgSend_setAdditive_(v6, v51, v50);
      v53 = objc_msgSend_decodeBoolForKey_(coder, v52, @"cumulative");
      objc_msgSend_setCumulative_(v6, v54, v53);
      v56 = objc_msgSend_decodeBoolForKey_(coder, v55, @"fillForward");
      objc_msgSend_setFillsForward_(v6, v57, v56);
      v59 = objc_msgSend_decodeBoolForKey_(coder, v58, @"fillBackward");
      objc_msgSend_setFillsBackward_(v6, v60, v59);
      v61 = objc_opt_class();
      v63 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v62, v61, @"timingFunction");
      v65 = objc_msgSend_setTimingFunction_(v6, v64, v63);
      v67 = sub_1AF37287C(v65, v66);
      v69 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v68, v67, @"userInfo");
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6->_userInfo = objc_msgSend_mutableCopy(v69, v70, v71);
      }

      v6->_didMutate = 0;
      objc_msgSend_setImmediateMode_(VFXTransaction, v70, v16);
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

+ (id)animationNamed:(id)named
{
  v5 = VFXGetResourceBundle(self, a2, named);
  v8 = objc_msgSend_pathExtension(named, v6, v7);
  v12 = objc_msgSend_stringByDeletingPathExtension(named, v9, v10);
  if (v8)
  {
    result = objc_msgSend_URLForResource_withExtension_(v5, v11, v12, v8);
  }

  else
  {
    result = objc_msgSend_URLForResource_withExtension_(v5, v11, v12, @"vfx-anim");
  }

  if (result)
  {

    return MEMORY[0x1EEE66B58](self, sel_animationWithContentsOfURL_, result);
  }

  return result;
}

+ (id)animationFromWorld:(id)world
{
  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, world);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v7 = objc_msgSend_rootNode(world, v5, v6);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1AF294B48;
  v25[3] = &unk_1E7A7E1F8;
  v25[4] = v4;
  v25[5] = &v26;
  objc_msgSend_enumerateHierarchyUsingBlock_(v7, v8, v25);
  if (objc_msgSend_count(v4, v9, v10))
  {
    if (objc_msgSend_count(v4, v11, v12) == 1)
    {
      v15 = objc_msgSend_objectAtIndexedSubscript_(v4, v13, 0);
      v17 = objc_msgSend_animationWithCAAnimation_(VFXAnimation, v16, v15);
    }

    else
    {
      v19 = objc_msgSend_animation(MEMORY[0x1E6979308], v13, v14);
      objc_msgSend_setAnimations_(v19, v20, v4);
      objc_msgSend_setDuration_(v19, v21, v22, v27[3]);
      v17 = objc_msgSend_animationWithCAAnimation_(VFXAnimation, v23, v19);
    }

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v26, 8);
  return v18;
}

+ (id)animationWithContentsOfURL:(id)l
{
  v22[3] = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_dataWithContentsOfURL_(MEMORY[0x1E695DEF0], a2, l);
  v21 = 0;
  v6 = MEMORY[0x1E696ACD0];
  v7 = MEMORY[0x1E695DFD8];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v22[2] = objc_opt_class();
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v22, 3);
  v11 = objc_msgSend_setWithArray_(v7, v10, v9);
  v13 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v6, v12, v11, v5, &v21);
  v15 = v13;
  if (v21 && (v16 = sub_1AF0D5194(v13, v14), os_log_type_enabled(v16, OS_LOG_TYPE_ERROR)))
  {
    sub_1AFDF4358(l, &v21, v16);
    if (!v15)
    {
      return v15;
    }
  }

  else if (!v15)
  {
    return v15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return objc_msgSend_animationFromWorld_(self, v17, v15);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return objc_msgSend_animationWithCAAnimation_(VFXAnimation, v19, v15);
  }

  return v15;
}

+ (id)animationWithCAAnimation:(id)animation
{
  v4 = [VFXAnimation alloc];
  v6 = objc_msgSend_initWithCAAnimation_(v4, v5, animation);

  return v6;
}

- (void)prepareWithTarget:(id)target implicitDuration:(double)duration
{
  if (self->_animationRef || (v12 = objc_msgSend_caAnimation(self, a2, target)) == 0)
  {
LABEL_2:
    v6 = objc_msgSend_duration(self, a2, target);
    if (v9 == 0.0)
    {
      if (duration == 0.0)
      {
        v10 = sub_1AF0D5194(v6, v7);
        duration = 0.25;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 0;
          _os_log_impl(&dword_1AF0CE000, v10, OS_LOG_TYPE_DEFAULT, "Warning: default duration is zero - using default transaction duration", v24, 2u);
        }
      }

      objc_msgSend_setDuration_(self, v7, v8, duration);
    }

    return;
  }

  v13 = sub_1AF2919D4(v12, target);
  if (v13)
  {
    v16 = v13;
    v17 = objc_msgSend_timingFunction(self, v14, v15);
    if (v17)
    {
      v20 = objc_msgSend_cfxTimingFunction(v17, v18, v19);
      sub_1AF112C48(v16, v20);
    }

    objc_msgSend__setAnimationRef_(self, v18, v16);
    objc_msgSend__updateModelFromPresentation(self, v21, v22);
    goto LABEL_2;
  }

  v23 = sub_1AF0D5194(0, v14);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF43F0();
  }
}

- (id)userAnimation
{
  if (*(self + 15))
  {
    return *(self + 15);
  }

  return self;
}

- (CAAnimation)caAnimation
{
  didMutate = self->_didMutate;
  self->_didMutate = 0;
  userAnimation = self->_userAnimation;
  if (didMutate || userAnimation == 0)
  {
    objc_sync_enter(self);
    userAnimation = self->_caAnimationCache;
    objc_sync_exit(self);
    if (didMutate || !userAnimation)
    {
      animationRef = self->_animationRef;
      if (animationRef)
      {
        userAnimation = sub_1AF291C18(animationRef);
LABEL_18:
        objc_sync_enter(self);

        self->_caAnimationCache = userAnimation;
        objc_sync_exit(self);
        return userAnimation;
      }

      v9 = self->_userAnimation;
      if (v9)
      {
        userAnimation = objc_msgSend_copy(v9, v6, v7);
        objc_msgSend_duration(self, v10, v11);
        objc_msgSend_setDuration_(userAnimation, v12, v13);
        objc_msgSend_repeatCount(self, v14, v15);
        objc_msgSend_setRepeatCount_(userAnimation, v16, v17);
        v20 = objc_msgSend_autoreverses(self, v18, v19);
        objc_msgSend_setAutoreverses_(userAnimation, v21, v20);
        objc_msgSend_beginTime(self, v22, v23);
        objc_msgSend_setBeginTime_(userAnimation, v24, v25);
        objc_msgSend_timeOffset(self, v26, v27);
        objc_msgSend_setTimeOffset_(userAnimation, v28, v29);
        isRemovedOnCompletion = objc_msgSend_isRemovedOnCompletion(self, v30, v31);
        objc_msgSend_setRemovedOnCompletion_(userAnimation, v33, isRemovedOnCompletion);
        v36 = objc_msgSend_fillsForward(self, v34, v35);
        v39 = objc_msgSend_fillsBackward(self, v37, v38);
        v41 = MEMORY[0x1E69797E0];
        if (!v36)
        {
          v41 = MEMORY[0x1E69797D8];
        }

        v42 = MEMORY[0x1E69797E8];
        if (!v36)
        {
          v42 = MEMORY[0x1E69797F0];
        }

        if (!v39)
        {
          v41 = v42;
        }

        objc_msgSend_setFillMode_(userAnimation, v40, *v41);
        v45 = objc_msgSend_animationEvents(self, v43, v44);
        objc_msgSend_setAnimationEvents_(userAnimation, v46, v45);
        goto LABEL_18;
      }

      v48 = sub_1AF0D5194(0, v6);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF442C();
      }

      return 0;
    }
  }

  return userAnimation;
}

- (void)setKeyPath:(id)path
{
  self->_keyPath = objc_msgSend_copy(path, v5, v6);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_setKeyPath_(self->_userAnimation, v7, self->_keyPath);
  }

  if (self->_animationRef)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF295218;
    v8[3] = &unk_1E7A7E220;
    v8[4] = path;
    v8[5] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
  }
}

- (void)setDuration:(double)duration
{
  if (self->_duration != duration)
  {
    self->_duration = duration;
    objc_msgSend__didMutate(self, a2, v3);
    if (self->_animationRef)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_1AF295344;
      v7[3] = &unk_1E7A7E248;
      v7[4] = self;
      *&v7[5] = duration;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v7);
    }
  }
}

- (void)setRepeatCount:(float)count
{
  if (self->_repeatCount != count)
  {
    self->_repeatCount = count;
    objc_msgSend__didMutate(self, a2, v3);
    if (self->_animationRef)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_1AF295414;
      v7[3] = &unk_1E7A7E270;
      v7[4] = self;
      countCopy = count;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v7);
    }
  }
}

- (float)repeatDuration
{
  objc_msgSend_duration(self, a2, v2);
  v5 = v4;
  objc_msgSend_repeatCount(self, v6, v7);
  result = v5 * v8;
  if (self->_autoreverses)
  {
    return result + result;
  }

  return result;
}

- (void)setRepeatDuration:(float)duration
{
  if (duration != 0.0)
  {
    duration = self->_duration;
    if (duration != 0.0)
    {
      v5 = duration / duration;
      *&v5 = v5;
      if (self->_autoreverses)
      {
        *&v5 = *&v5 * 0.5;
      }

      objc_msgSend_setRepeatCount_(self, a2, v3, v5);
    }
  }
}

- (void)setTimeOffset:(double)offset
{
  if (self->_timeOffset != offset)
  {
    self->_timeOffset = offset;
    objc_msgSend__didMutate(self, a2, v3);
    if (self->_animationRef)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_1AF295570;
      v7[3] = &unk_1E7A7E248;
      v7[4] = self;
      *&v7[5] = offset;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v7);
    }
  }
}

- (void)setBeginTime:(double)time
{
  if (self->_beginTime != time)
  {
    self->_beginTime = time;
    objc_msgSend__didMutate(self, a2, v3);
    if (self->_animationRef)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_1AF29563C;
      v7[3] = &unk_1E7A7E248;
      v7[4] = self;
      *&v7[5] = time;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v7);
    }
  }
}

- (void)setAutoreverses:(BOOL)autoreverses
{
  if (self->_autoreverses != autoreverses)
  {
    v10 = v3;
    v11 = v4;
    self->_autoreverses = autoreverses;
    objc_msgSend__didMutate(self, a2, autoreverses);
    if (self->_animationRef)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF295704;
      v8[3] = &unk_1E7A7E298;
      v8[4] = self;
      autoreversesCopy = autoreverses;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
    }
  }
}

- (void)setFillsForward:(BOOL)forward
{
  if (self->_fillForward != forward)
  {
    v10 = v3;
    v11 = v4;
    self->_fillForward = forward;
    objc_msgSend__didMutate(self, a2, forward);
    if (self->_animationRef)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2957CC;
      v8[3] = &unk_1E7A7E298;
      v8[4] = self;
      forwardCopy = forward;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
    }
  }
}

- (void)setFillsBackward:(BOOL)backward
{
  if (self->_fillBackward != backward)
  {
    v10 = v3;
    v11 = v4;
    self->_fillBackward = backward;
    objc_msgSend__didMutate(self, a2, backward);
    if (self->_animationRef)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2958D0;
      v8[3] = &unk_1E7A7E298;
      v8[4] = self;
      backwardCopy = backward;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
    }
  }
}

- (void)setTimingFunction:(id)function
{
  timingFunction = self->_timingFunction;
  if (timingFunction != function)
  {
    v11[8] = v3;
    v11[9] = v4;

    self->_timingFunction = function;
    objc_msgSend__didMutate(self, v8, v9);
    if (self->_animationRef)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF2959E8;
      v11[3] = &unk_1E7A7E220;
      v11[4] = function;
      v11[5] = self;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
    }
  }
}

- (void)setRemovedOnCompletion:(BOOL)completion
{
  if (self->_removedOnCompletion != completion)
  {
    v10 = v3;
    v11 = v4;
    self->_removedOnCompletion = completion;
    objc_msgSend__didMutate(self, a2, completion);
    if (self->_animationRef)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF295AE0;
      v8[3] = &unk_1E7A7E298;
      v8[4] = self;
      completionCopy = completion;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
    }
  }
}

- (void)setAppliedOnCompletion:(BOOL)completion
{
  if (self->_applyOnCompletion != completion)
  {
    v10 = v3;
    v11 = v4;
    self->_applyOnCompletion = completion;
    objc_msgSend__didMutate(self, a2, completion);
    if (self->_animationRef)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF295BA8;
      v8[3] = &unk_1E7A7E298;
      v8[4] = self;
      completionCopy = completion;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
    }
  }
}

- (void)setAnimationDidStart:(id)start
{
  animationDidStart = self->_animationDidStart;
  if (animationDidStart)
  {
    _Block_release(animationDidStart);
  }

  self->_animationDidStart = 0;
  if (start)
  {
    self->_animationDidStart = _Block_copy(start);
  }

  if (self->_animationRef)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF295C74;
    v6[3] = &unk_1E7A7E1D0;
    v6[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (void)setAnimationDidStop:(id)stop
{
  animationDidStop = self->_animationDidStop;
  if (animationDidStop)
  {
    _Block_release(animationDidStop);
  }

  self->_animationDidStop = 0;
  if (stop)
  {
    self->_animationDidStop = _Block_copy(stop);
  }

  if (self->_animationRef)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF295E68;
    v6[3] = &unk_1E7A7E1D0;
    v6[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (void)setAnimationEvents:(id)events
{
  animationEvents = self->_animationEvents;
  if (animationEvents != events)
  {
    v11[8] = v3;
    v11[9] = v4;

    self->_animationEvents = events;
    objc_msgSend__didMutate(self, v8, v9);
    if (self->_animationRef)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF2962B4;
      v11[3] = &unk_1E7A7E220;
      v11[4] = self;
      v11[5] = events;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
    }
  }
}

- (void)setBlendInDuration:(double)duration
{
  v3 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF4468();
  }
}

- (void)setBlendOutDuration:(double)duration
{
  v3 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF44A4();
  }
}

- (void)setAdditive:(BOOL)additive
{
  if (self->_additive != additive)
  {
    v10 = v3;
    v11 = v4;
    self->_additive = additive;
    objc_msgSend__didMutate(self, a2, additive);
    if (self->_animationRef)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF296430;
      v8[3] = &unk_1E7A7E298;
      v8[4] = self;
      additiveCopy = additive;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
    }
  }
}

- (void)setCumulative:(BOOL)cumulative
{
  if (self->_cumulative != cumulative)
  {
    v10 = v3;
    v11 = v4;
    self->_cumulative = cumulative;
    objc_msgSend__didMutate(self, a2, cumulative);
    if (self->_animationRef)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF296550;
      v8[3] = &unk_1E7A7E298;
      v8[4] = self;
      cumulativeCopy = cumulative;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
    }
  }
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  os_unfair_lock_lock(&self->_userInfoLock);
  userInfo = self->_userInfo;
  if (!value || userInfo)
  {
    if (value)
    {
      objc_msgSend_setValue_forKey_(userInfo, v7, value, key);
    }

    else
    {
      objc_msgSend_removeObjectForKey_(userInfo, v7, key);
    }
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_userInfo = v9;
    objc_msgSend_setValue_forKey_(v9, v10, value, key);
  }

  os_unfair_lock_unlock(&self->_userInfoLock);
}

- (id)valueForUndefinedKey:(id)key
{
  os_unfair_lock_lock(&self->_userInfoLock);
  v6 = objc_msgSend_valueForKey_(self->_userInfo, v5, key);
  os_unfair_lock_unlock(&self->_userInfoLock);

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  duration = self->_duration;
  return objc_msgSend_stringWithFormat_(v3, v7, @"<%@: %p, keyPath=%@ duration=%f repeatCount=%f>", v5, self, self->_keyPath, duration, self->_repeatCount);
}

- (void)_optimizeKeyframesWithTarget:(id)target
{
  objc_msgSend_prepareWithTarget_implicitDuration_(self, a2, target, 0.0);
  animationRef = self->_animationRef;
  if (animationRef)
  {
    sub_1AF29679C(animationRef);
    self->_didMutate = 1;

    self->_userAnimation = 0;
  }

  else
  {
    v6 = sub_1AF0D5194(0, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1AF0CE000, v6, OS_LOG_TYPE_DEFAULT, "Warning: failed to optimize keyframes", v7, 2u);
    }
  }
}

- (id)subAnimations
{
  animationRef = self->_animationRef;
  if (!animationRef)
  {
    return 0;
  }

  v4 = CFGetTypeID(animationRef);
  v6 = sub_1AF1157BC(v4, v5);
  if (v4 == v6)
  {
    v8 = CFRetain(self->_animationRef);
  }

  else
  {
    if (v4 != sub_1AF1142BC(v6, v7))
    {
      return 0;
    }

    v8 = sub_1AF11447C(self->_animationRef, v10);
  }

  v11 = v8;
  if (!v8)
  {
    return 0;
  }

  v12 = sub_1AF115980(v8, v9);
  v14 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v13, v12);
  if (v12 >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      v16 = sub_1AF1159CC(v11, i);
      v18 = sub_1AF113C58(v16, v17);
      v20 = objc_msgSend_animationWithCFXAnimation_(VFXAnimation, v19, v18);
      objc_msgSend_addObject_(v14, v21, v20);
      CFRelease(v18);
    }
  }

  CFRelease(v11);
  return v14;
}

+ (int64_t)componentCountAtKeyPath:(id)path target:(id)target
{
  v5 = objc_msgSend___CFObject(target, a2, path);
  if (!v5)
  {
    return -1;
  }

  v6 = sub_1AF1DB6D0(v5, path, 1);
  if (!v6)
  {
    return -1;
  }

  v8 = v6;
  v9 = sub_1AF1DE538(v6, v7);
  v11 = sub_1AF2884B4(v9, v10);
  CFRelease(v8);
  return v11;
}

+ (id)animationWithMDLTransform:(id)transform
{
  v4 = objc_msgSend_transformAnimation(transform, a2, transform);

  return objc_msgSend_animationWithCAAnimation_(VFXAnimation, v3, v4);
}

@end