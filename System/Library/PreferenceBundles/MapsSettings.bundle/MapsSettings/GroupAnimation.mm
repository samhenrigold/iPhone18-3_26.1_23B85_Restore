@interface GroupAnimation
+ (id)animation;
+ (id)animationForAnimatedFlag:(BOOL)flag;
+ (id)animationForImplicitAnimationState;
- (BOOL)isEmpty;
- (GroupAnimation)init;
- (id)addCompletionWaitBlockWithReason:(id)reason;
- (void)_childAnimationsDidComplete;
- (void)_enterCompletionWaitDispatchGroupWithReason:(id)reason;
- (void)_leaveCompletionWaitDispatchGroupWithReason:(id)reason;
- (void)addChildAnimation:(id)animation;
- (void)addPreparation:(id)preparation animations:(id)animations completion:(id)completion;
- (void)animate;
- (void)complete:(BOOL)complete;
- (void)dealloc;
- (void)prepare;
- (void)runInCurrentContext;
- (void)runWithCurrentOptions;
- (void)runWithDefaultOptions;
- (void)runWithDelay:(double)delay initialVelocity:(double)velocity options:(unint64_t)options;
- (void)runWithDuration:(double)duration delay:(double)delay options:(unint64_t)options;
- (void)runWithDuration:(double)duration delay:(double)delay springDamping:(double)damping initialVelocity:(double)velocity options:(unint64_t)options;
- (void)runWithoutAnimation;
@end

@implementation GroupAnimation

+ (id)animation
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (GroupAnimation)init
{
  v7.receiver = self;
  v7.super_class = GroupAnimation;
  v2 = [(GroupAnimation *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = sub_2DD54(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v9 = v3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    [objc_opt_class() defaultAnimationDuration];
    v3->_duration = v5;
    v3->_animated = 1;
  }

  return v3;
}

- (void)dealloc
{
  v3 = sub_2DD54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  waitBlock = self->_waitBlock;
  if (waitBlock)
  {
    v5 = objc_retainBlock(waitBlock);
    v6 = self->_waitBlock;
    self->_waitBlock = 0;

    self->_initiatingWaitBlock = 0;
    v5[2](v5, 0);
  }

  v7.receiver = self;
  v7.super_class = GroupAnimation;
  [(GroupAnimation *)&v7 dealloc];
}

- (BOOL)isEmpty
{
  if (self->_preparations)
  {
    return 0;
  }

  if ([(NSMutableArray *)self->_animations count])
  {
    return 0;
  }

  return [(NSMutableArray *)self->_completions count]== 0;
}

- (void)addPreparation:(id)preparation animations:(id)animations completion:(id)completion
{
  preparationCopy = preparation;
  animationsCopy = animations;
  completionCopy = completion;
  v11 = sub_2DD54(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v25 = 134349314;
    selfCopy = self;
    v27 = 2080;
    v28 = "[GroupAnimation addPreparation:animations:completion:]";
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "[%{public}p] %s", &v25, 0x16u);
  }

  if (preparationCopy)
  {
    if (self->_didPrepare)
    {
      sub_3B69C(v12);
    }

    if (!self->_didPrepare)
    {
      preparations = self->_preparations;
      if (!preparations)
      {
        v14 = objc_alloc_init(NSMutableArray);
        v15 = self->_preparations;
        self->_preparations = v14;

        preparations = self->_preparations;
      }

      v16 = [preparationCopy copy];
      [(NSMutableArray *)preparations addObject:v16];
    }
  }

  if (animationsCopy)
  {
    if (self->_didAnimate)
    {
      sub_3B7CC(v12);
    }

    animations = self->_animations;
    if (!animations)
    {
      v18 = objc_alloc_init(NSMutableArray);
      v19 = self->_animations;
      self->_animations = v18;

      animations = self->_animations;
    }

    v20 = [animationsCopy copy];
    [(NSMutableArray *)animations addObject:v20];
  }

  if (completionCopy)
  {
    if (self->_didComplete)
    {
      sub_3B8FC(v12);
    }

    completions = self->_completions;
    if (!completions)
    {
      v22 = objc_alloc_init(NSMutableArray);
      v23 = self->_completions;
      self->_completions = v22;

      completions = self->_completions;
    }

    v24 = [completionCopy copy];
    [(NSMutableArray *)completions addObject:v24];
  }
}

- (void)addChildAnimation:(id)animation
{
  animationCopy = animation;
  v5 = sub_2DD54(animationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349570;
    selfCopy = self;
    v16 = 2080;
    v17 = "[GroupAnimation addChildAnimation:]";
    v18 = 2112;
    v19 = animationCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[%{public}p] %s:%@", buf, 0x20u);
  }

  if (animationCopy)
  {
    v6 = animationCopy;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_9;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_9:

    v12 = [NSString stringWithFormat:@"waiting for child animation %@", v11];
    v13 = [(GroupAnimation *)self addCompletionWaitBlockWithReason:v12];
    [v6 addCompletion:v13];
  }
}

- (id)addCompletionWaitBlockWithReason:(id)reason
{
  reasonCopy = reason;
  [(GroupAnimation *)self _enterCompletionWaitDispatchGroupWithReason:reasonCopy];
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_2E418;
  v9[3] = &unk_80160;
  objc_copyWeak(&v11, &location);
  v10 = reasonCopy;
  v5 = reasonCopy;
  v6 = objc_retainBlock(v9);
  v7 = objc_retainBlock(v6);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

- (void)_enterCompletionWaitDispatchGroupWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = sub_2DD54(reasonCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    selfCopy2 = self;
    v24 = 2112;
    v25 = reasonCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[%{public}p] entering completion wait group for reason: %@", buf, 0x16u);
  }

  childAnimationCompletionGroup = self->_childAnimationCompletionGroup;
  if (childAnimationCompletionGroup)
  {
    dispatch_group_enter(childAnimationCompletionGroup);
    goto LABEL_14;
  }

  v7 = sub_2DD54(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy2 = self;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "[%{public}p] creating child completion animation group", buf, 0xCu);
  }

  v8 = dispatch_group_create();
  v9 = self->_childAnimationCompletionGroup;
  self->_childAnimationCompletionGroup = v8;

  dispatch_group_enter(self->_childAnimationCompletionGroup);
  v10 = self->_childAnimationCompletionGroup;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2E71C;
  block[3] = &unk_69228;
  block[4] = self;
  dispatch_group_notify(v10, &_dispatch_main_q, block);
  if (!self->_initiatingWaitBlock)
  {
    self->_initiatingWaitBlock = 1;
    selfCopy3 = self;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [(GroupAnimation *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v13, selfCopy3, v15];

        goto LABEL_13;
      }
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v13, selfCopy3];
LABEL_13:

    v17 = [NSString stringWithFormat:@"%@: blocking on our own complete method call", selfCopy3];
    v18 = [(GroupAnimation *)selfCopy3 addCompletionWaitBlockWithReason:v17];
    v19 = [v18 copy];
    waitBlock = selfCopy3->_waitBlock;
    selfCopy3->_waitBlock = v19;
  }

LABEL_14:
}

- (void)_leaveCompletionWaitDispatchGroupWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = reasonCopy;
  if (self->_childAnimationCompletionGroup || (reasonCopy = sub_3BA2C(self, &self->_childAnimationCompletionGroup), (reasonCopy & 1) == 0))
  {
    v6 = sub_2DD54(reasonCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 134349314;
      selfCopy = self;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "[%{public}p] leaving completion wait group for reason: %@", &v7, 0x16u);
    }

    dispatch_group_leave(self->_childAnimationCompletionGroup);
  }
}

- (void)prepare
{
  if (self->_didPrepare || self->_didAnimate || self->_didComplete)
  {
    sub_3BBC4(self);
  }

  v3 = sub_2DD54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134349056;
    *(&buf + 4) = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%{public}p] preparing", &buf, 0xCu);
  }

  if (!self->_waitBlock && !self->_initiatingWaitBlock)
  {
    self->_initiatingWaitBlock = 1;
    selfCopy = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(GroupAnimation *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_13;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_13:

    v10 = [NSString stringWithFormat:@"%@: blocking on our own complete method call", selfCopy];
    v11 = [(GroupAnimation *)selfCopy addCompletionWaitBlockWithReason:v10];
    v12 = [v11 copy];
    waitBlock = self->_waitBlock;
    self->_waitBlock = v12;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = sub_2EC5C;
  v24 = sub_2EC6C;
  v25 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_2EC74;
  v20[3] = &unk_80188;
  v20[4] = &buf;
  v14 = objc_retainBlock(v20);
  while (1)
  {
    v15 = [(NSMutableArray *)self->_preparations count];
    preparations = self->_preparations;
    if (!v15)
    {
      break;
    }

    v17 = [(NSMutableArray *)preparations copy];
    v18 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v17;

    v19 = self->_preparations;
    self->_preparations = 0;

    if ([(GroupAnimation *)self preventsAnimationDuringPreparation])
    {
      [UIView performWithoutAnimation:v14];
    }

    else
    {
      (v14[2])(v14);
    }
  }

  self->_preparations = 0;

  self->_didPrepare = 1;
  _Block_object_dispose(&buf, 8);
}

- (void)animate
{
  _hasPrepared = [(GroupAnimation *)self _hasPrepared];
  if (!_hasPrepared || self->_didAnimate)
  {
    sub_3BCF8(_hasPrepared);
  }

  v4 = sub_2DD54(_hasPrepared);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "[%{public}p] animating", buf, 0xCu);
  }

  while (1)
  {

    if (![(NSMutableArray *)self->_animations count])
    {
      break;
    }

    v5 = [(NSMutableArray *)self->_animations copy];
    animations = self->_animations;
    self->_animations = 0;

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v5;
    v7 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v12 + 1) + 8 * v10) + 16))();
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11 = self->_animations;
  self->_animations = 0;

  self->_didAnimate = 1;
}

- (void)_childAnimationsDidComplete
{
  v3 = sub_2DD54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 134349314;
    selfCopy2 = self;
    v8 = 2080;
    v9 = "[GroupAnimation _childAnimationsDidComplete]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%{public}p] %s", &v6, 0x16u);
  }

  if (self->_readyToComplete)
  {
    [(GroupAnimation *)self complete:1];
  }

  else
  {
    v5 = sub_2DD54(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349056;
      selfCopy2 = self;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Not ready to complete yet", &v6, 0xCu);
    }
  }
}

- (void)complete:(BOOL)complete
{
  completeCopy = complete;
  selfCopy = self;
  _hasPrepared = [(GroupAnimation *)self _hasPrepared];
  if (!_hasPrepared || !selfCopy->_didAnimate || selfCopy->_didComplete)
  {
    sub_3BE28(_hasPrepared);
  }

  v6 = sub_2DD54(_hasPrepared);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134349570;
    v35 = selfCopy;
    v36 = 2080;
    v37 = "[GroupAnimation complete:]";
    v38 = 1024;
    v39 = completeCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "[%{public}p] %s:%d", buf, 0x1Cu);
  }

  selfCopy->_readyToComplete = 1;
  if (selfCopy->_waitBlock)
  {
    v8 = sub_2DD54(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v35 = selfCopy;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "[%{public}p] waiting for _waitBlock", buf, 0xCu);
    }

    v9 = objc_retainBlock(selfCopy->_waitBlock);
    waitBlock = selfCopy->_waitBlock;
    selfCopy->_waitBlock = 0;

    selfCopy->_initiatingWaitBlock = 0;
    (*(v9 + 16))(v9, completeCopy);
LABEL_10:

    return;
  }

  childAnimationCompletionGroup = selfCopy->_childAnimationCompletionGroup;
  v9 = sub_2DD54(v7);
  v12 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (childAnimationCompletionGroup)
  {
    if (v12)
    {
      *buf = 134349056;
      v35 = selfCopy;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "[%{public}p] ready to complete, but waiting on child animations", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if (v12)
  {
    *buf = 134349312;
    v35 = selfCopy;
    v36 = 1024;
    LODWORD(v37) = completeCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "[%{public}p] complete:%d", buf, 0x12u);
  }

  for (i = [(NSMutableArray *)selfCopy->_completions count]; i; i = [(NSMutableArray *)v18->_completions count])
  {
    v14 = sub_2DD54(i);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [(NSMutableArray *)selfCopy->_completions count];
      *buf = 134349312;
      v35 = selfCopy;
      v36 = 2048;
      v37 = v15;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "[%{public}p] will execute %lu completions", buf, 0x16u);
    }

    v16 = [(NSMutableArray *)selfCopy->_completions copy];
    completions = selfCopy->_completions;
    v18 = selfCopy;
    selfCopy->_completions = 0;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v30;
      do
      {
        v23 = 0;
        do
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v29 + 1) + 8 * v23);
          v25 = sub_2DD54(v20);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v26 = objc_retainBlock(v24);
            *buf = 134349314;
            v35 = v18;
            v36 = 2112;
            v37 = v26;
            _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "[%{public}p] executing completion block: %@", buf, 0x16u);
          }

          v20 = v24[2](v24, completeCopy);
          v23 = v23 + 1;
        }

        while (v21 != v23);
        v20 = [v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
        v21 = v20;
      }

      while (v20);
    }

    selfCopy = v18;
  }

  v27 = sub_2DD54(i);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v35 = selfCopy;
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "[%{public}p] executed all completion blocks", buf, 0xCu);
  }

  v28 = selfCopy->_completions;
  selfCopy->_completions = 0;

  selfCopy->_didComplete = 1;
}

- (void)runWithDefaultOptions
{
  [objc_opt_class() defaultAnimationDuration];

  [GroupAnimation runWithDuration:"runWithDuration:delay:options:" delay:0 options:?];
}

- (void)runWithCurrentOptions
{
  [(GroupAnimation *)self springDamping];
  if (v3 <= 0.0)
  {
    [(GroupAnimation *)self initialVelocity];
    if (v9 <= 0.0)
    {
      [(GroupAnimation *)self duration];
      v16 = v15;
      [(GroupAnimation *)self delay];
      v18 = v17;
      options = [(GroupAnimation *)self options];

      [(GroupAnimation *)self runWithDuration:options delay:v16 options:v18];
    }

    else
    {
      [(GroupAnimation *)self delay];
      v11 = v10;
      [(GroupAnimation *)self initialVelocity];
      v13 = v12;
      options2 = [(GroupAnimation *)self options];

      [(GroupAnimation *)self runWithDelay:options2 initialVelocity:v11 options:v13];
    }
  }

  else
  {
    [(GroupAnimation *)self duration];
    v5 = v4;
    [(GroupAnimation *)self delay];
    v7 = v6;
    [(GroupAnimation *)self springDamping];
    [(GroupAnimation *)self initialVelocity];
    options3 = [(GroupAnimation *)self options];

    [GroupAnimation runWithDuration:"runWithDuration:delay:springDamping:initialVelocity:options:" delay:options3 springDamping:v5 initialVelocity:v7 options:?];
  }
}

- (void)runWithDuration:(double)duration delay:(double)delay options:(unint64_t)options
{
  isAnimated = [(GroupAnimation *)self isAnimated];
  if (isAnimated)
  {
    v10 = sub_2DD54(isAnimated);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 134349824;
      selfCopy = self;
      v15 = 2048;
      durationCopy = duration;
      v17 = 2048;
      delayCopy = delay;
      v19 = 2048;
      optionsCopy = options;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "[%{public}p] runWithDuration:%#.1lf delay:%#.1lfs options:%lu", buf, 0x2Au);
    }

    [(GroupAnimation *)self prepare];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_2F80C;
    v12[3] = &unk_69228;
    v12[4] = self;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_2F814;
    v11[3] = &unk_7FC30;
    v11[4] = self;
    [UIView animateWithDuration:options delay:v12 options:v11 animations:duration completion:delay];
  }

  else
  {

    [(GroupAnimation *)self runWithoutAnimation];
  }
}

- (void)runWithDelay:(double)delay initialVelocity:(double)velocity options:(unint64_t)options
{
  isAnimated = [(GroupAnimation *)self isAnimated];
  if (isAnimated)
  {
    v10 = sub_2DD54(isAnimated);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 134349824;
      selfCopy = self;
      v15 = 2048;
      delayCopy = delay;
      v17 = 2048;
      velocityCopy = velocity;
      v19 = 2048;
      optionsCopy = options;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "[%{public}p] runWithDelay:%#.1lf initialVelocity:%lf options:%lu", buf, 0x2Au);
    }

    [(GroupAnimation *)self prepare];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_2F9F8;
    v12[3] = &unk_69228;
    v12[4] = self;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_2FA00;
    v11[3] = &unk_7FC30;
    v11[4] = self;
    [UIView _animateUsingDefaultDampedSpringWithDelay:options initialSpringVelocity:v12 options:v11 animations:delay completion:velocity];
  }

  else
  {

    [(GroupAnimation *)self runWithoutAnimation];
  }
}

- (void)runWithDuration:(double)duration delay:(double)delay springDamping:(double)damping initialVelocity:(double)velocity options:(unint64_t)options
{
  isAnimated = [(GroupAnimation *)self isAnimated];
  if (isAnimated)
  {
    v14 = sub_2DD54(isAnimated);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 134350336;
      selfCopy = self;
      v19 = 2048;
      durationCopy = duration;
      v21 = 2048;
      delayCopy = delay;
      v23 = 2048;
      dampingCopy = damping;
      v25 = 2048;
      velocityCopy = velocity;
      v27 = 2048;
      optionsCopy = options;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "[%{public}p] runWithDuration:%#.1lfs delay:%#.1lfs springDamping:%lf initialVelocity:%lf options:%lu", buf, 0x3Eu);
    }

    [(GroupAnimation *)self prepare];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_2FC10;
    v16[3] = &unk_69228;
    v16[4] = self;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_2FC18;
    v15[3] = &unk_7FC30;
    v15[4] = self;
    [UIView animateWithDuration:options delay:v16 usingSpringWithDamping:v15 initialSpringVelocity:duration options:delay animations:damping completion:velocity];
  }

  else
  {

    [(GroupAnimation *)self runWithoutAnimation];
  }
}

- (void)runWithoutAnimation
{
  v3 = sub_2DD54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    selfCopy = self;
    v7 = 2080;
    v8 = "[GroupAnimation runWithoutAnimation]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%{public}p] %s", buf, 0x16u);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_2FD34;
  v4[3] = &unk_69228;
  v4[4] = self;
  [UIView performWithoutAnimation:v4];
}

- (void)runInCurrentContext
{
  v3 = sub_2DD54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 134349314;
    selfCopy = self;
    v6 = 2080;
    v7 = "[GroupAnimation runInCurrentContext]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%{public}p] %s", &v4, 0x16u);
  }

  [(GroupAnimation *)self prepare];
  [(GroupAnimation *)self animate];
  [(GroupAnimation *)self complete:1];
}

+ (id)animationForAnimatedFlag:(BOOL)flag
{
  flagCopy = flag;
  v4 = objc_alloc_init(self);
  [v4 setAnimated:flagCopy];

  return v4;
}

+ (id)animationForImplicitAnimationState
{
  v2 = [self animationForAnimatedFlag:{+[UIView _maps_shouldAdoptImplicitAnimationParameters](UIView, "_maps_shouldAdoptImplicitAnimationParameters")}];
  [v2 setPreventsAnimationDuringPreparation:1];

  return v2;
}

@end