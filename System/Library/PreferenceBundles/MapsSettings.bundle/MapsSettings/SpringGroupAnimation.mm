@interface SpringGroupAnimation
- (SpringGroupAnimation)init;
- (void)dealloc;
- (void)runWithDuration:(double)duration delay:(double)delay options:(unint64_t)options mass:(double)mass stiffness:(double)stiffness damping:(double)damping initialVelocity:(double)velocity;
@end

@implementation SpringGroupAnimation

- (SpringGroupAnimation)init
{
  v12.receiver = self;
  v12.super_class = SpringGroupAnimation;
  v2 = [(GroupAnimation *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v4 = sub_2DD54(v2);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      return v3;
    }

    v5 = v3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(SpringGroupAnimation *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_8;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_8:

    *buf = 138543362;
    v14 = v10;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "[%{public}@] Initializing", buf, 0xCu);

    goto LABEL_9;
  }

  return v3;
}

- (void)dealloc
{
  v3 = sub_2DD54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(SpringGroupAnimation *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v12 = selfCopy;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%{public}@] Deallocating", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = SpringGroupAnimation;
  [(GroupAnimation *)&v10 dealloc];
}

- (void)runWithDuration:(double)duration delay:(double)delay options:(unint64_t)options mass:(double)mass stiffness:(double)stiffness damping:(double)damping initialVelocity:(double)velocity
{
  isAnimated = [(GroupAnimation *)self isAnimated];
  v18 = isAnimated;
  v19 = sub_2DD54(isAnimated);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
  if (v18)
  {
    if (!v20)
    {
LABEL_20:

      [(GroupAnimation *)self prepare];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_30720;
      v35[3] = &unk_69228;
      v35[4] = self;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_30728;
      v34[3] = &unk_7FC30;
      v34[4] = self;
      [UIView _animateUsingSpringWithDuration:options delay:v35 options:v34 mass:duration stiffness:delay damping:mass initialVelocity:stiffness animations:damping completion:velocity];
      return;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_19;
    }

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [(SpringGroupAnimation *)selfCopy performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ![v24 isEqualToString:v23])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v23, selfCopy, v25];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v23, selfCopy];
LABEL_9:

LABEL_19:
    *buf = 138545154;
    v37 = selfCopy;
    v38 = 2048;
    durationCopy = duration;
    v40 = 2048;
    delayCopy = delay;
    v42 = 2048;
    optionsCopy = options;
    v44 = 2048;
    massCopy = mass;
    v46 = 2048;
    stiffnessCopy = stiffness;
    v48 = 2048;
    dampingCopy = damping;
    v50 = 2048;
    velocityCopy = velocity;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "[%{public}@] runWithDuration:%#.1lfs delay:%#.1lf options:%lu mass:%lf stiffness:%lf damping:%lf initialVelocity:%lf", buf, 0x52u);

    goto LABEL_20;
  }

  if (v20)
  {
    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_22;
    }

    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    if (objc_opt_respondsToSelector())
    {
      v30 = [(SpringGroupAnimation *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v31 = v30;
      if (v30 && ![v30 isEqualToString:v29])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v29, selfCopy2, v31];

        goto LABEL_17;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v29, selfCopy2];
LABEL_17:

LABEL_22:
    *buf = 138543362;
    v37 = selfCopy2;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "[%{public}@] runWithoutAnimation", buf, 0xCu);
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_30734;
  v33[3] = &unk_69228;
  v33[4] = self;
  [UIView performWithoutAnimation:v33];
}

@end