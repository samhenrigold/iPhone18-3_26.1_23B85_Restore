@interface DRFlockAnimator
- (void)_runAnimatableWithBarelyBouncyAnimation:(id)animation;
- (void)_runAnimatableWithBouncyAnimation:(id)animation;
- (void)_runAnimatableWithBouncyAnimation:(id)animation response:(double)response;
- (void)_runAnimatableWithOneToOneTracking:(id)tracking;
- (void)_runAnimatableWithOneToOneTracking:(id)tracking response:(double)response;
- (void)_runBadgeLayout:(id)layout oneToOneTrack:(BOOL)track bouncy:(BOOL)bouncy slowOffset:(BOOL)offset;
- (void)_runWithoutRetargeting:(id)retargeting;
- (void)animateFlockLayoutOutput:(id)output;
@end

@implementation DRFlockAnimator

- (void)animateFlockLayoutOutput:(id)output
{
  outputCopy = output;
  lastLayout = [(DRFlockAnimator *)self lastLayout];
  if (!lastLayout)
  {
    v7 = 0;
    goto LABEL_5;
  }

  touchesCount = [outputCopy touchesCount];
  v7 = touchesCount != [lastLayout touchesCount];
  badgeLayout = [outputCopy badgeLayout];
  justBecameVisible = [badgeLayout justBecameVisible];

  if (justBecameVisible)
  {
LABEL_5:
    badgeLayout2 = [outputCopy badgeLayout];
    position = [badgeLayout2 position];
    [(DRFlockAnimator *)self _runWithoutRetargeting:position];

    badgeLayout3 = [outputCopy badgeLayout];
    offset = [badgeLayout3 offset];
    [(DRFlockAnimator *)self _runWithoutRetargeting:offset];

    badgeLayout4 = [outputCopy badgeLayout];
    alpha = [badgeLayout4 alpha];
    [(DRFlockAnimator *)self _runWithoutRetargeting:alpha];
  }

  itemLayouts = [outputCopy itemLayouts];
  v17 = [itemLayouts count] - 1;

  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  itemLayouts2 = [outputCopy itemLayouts];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10001FCF4;
  v26[3] = &unk_100055AB8;
  v30 = v7;
  v26[4] = self;
  v20 = lastLayout;
  v27 = v20;
  v29 = v17;
  v31 = IsReduceMotionEnabled;
  v21 = outputCopy;
  v28 = v21;
  [itemLayouts2 enumerateObjectsUsingBlock:v26];

  badgeLayout5 = [v21 badgeLayout];
  if (badgeLayout5)
  {
    if (lastLayout)
    {
      itemLayouts3 = [v21 itemLayouts];
      v24 = [itemLayouts3 count];
      itemLayouts4 = [v20 itemLayouts];
      lastLayout = v24 > [itemLayouts4 count];
    }

    -[DRFlockAnimator _runBadgeLayout:oneToOneTrack:bouncy:slowOffset:](self, "_runBadgeLayout:oneToOneTrack:bouncy:slowOffset:", badgeLayout5, [v21 reduceBadgeAnimationSpring], v7, lastLayout);
  }

  [(DRFlockAnimator *)self setLastLayout:v21];
}

- (void)_runBadgeLayout:(id)layout oneToOneTrack:(BOOL)track bouncy:(BOOL)bouncy slowOffset:(BOOL)offset
{
  offsetCopy = offset;
  bouncyCopy = bouncy;
  trackCopy = track;
  layoutCopy = layout;
  v22 = layoutCopy;
  if (bouncyCopy)
  {
    position = [layoutCopy position];
    [(DRFlockAnimator *)self _runAnimatableWithBouncyAnimation:position];
  }

  else
  {
    offsetAdjustment = [layoutCopy offsetAdjustment];

    if (offsetAdjustment)
    {
      offsetAdjustment2 = [v22 offsetAdjustment];
      [(DRFlockAnimator *)self _runWithoutRetargeting:offsetAdjustment2];
    }

    badgeAppeared = [(DRFlockAnimator *)self badgeAppeared];
    position = [v22 position];
    if (!badgeAppeared)
    {
      [(DRFlockAnimator *)self _runAnimatableWithBouncyAnimation:position];

      v18 = [v22 size];
      [(DRFlockAnimator *)self _runWithoutRetargeting:v18];

      [(DRFlockAnimator *)self setBadgeAppeared:1];
      if (offsetCopy)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (trackCopy)
      {
        offsetAdjustment3 = [v22 offsetAdjustment];

        offset = [v22 offset];
        if (offsetAdjustment3)
        {
          [(DRFlockAnimator *)self _runAnimatableWithOneToOneTracking:offset];
        }

        else
        {
          [(DRFlockAnimator *)self _runWithoutRetargeting:offset];
        }
      }

      else
      {
        offset = [v22 offset];
        [(DRFlockAnimator *)self _runAnimatableWithBouncyAnimation:offset];
      }

      goto LABEL_19;
    }

    [(DRFlockAnimator *)self _runAnimatableWithOneToOneTracking:position];
  }

  if (!offsetCopy)
  {
    goto LABEL_14;
  }

LABEL_8:
  offset2 = [v22 offset];
  offset = offset2;
  if (qword_100063678 != -1)
  {
    sub_100030F90();
  }

  if (byte_100063680 == 1)
  {
    v17 = sub_100020AA4(offset2);
  }

  else
  {
    v17 = 0.35;
  }

  [(DRFlockAnimator *)self _runAnimatableWithBouncyAnimation:offset response:v17];
LABEL_19:

  v20 = [v22 size];
  [(DRFlockAnimator *)self _runAnimatableWithBouncyAnimation:v20];

  alpha = [v22 alpha];
  [(DRFlockAnimator *)self _runAnimatableWithBouncyAnimation:alpha];
}

- (void)_runAnimatableWithBouncyAnimation:(id)animation
{
  animationCopy = animation;
  v7 = animationCopy;
  if (qword_100063678 == -1)
  {
    v5 = animationCopy;
  }

  else
  {
    sub_100030FA4();
    v5 = v7;
  }

  if (byte_100063680 == 1)
  {
    v6 = sub_100020C4C(animationCopy);
    v5 = v7;
  }

  else
  {
    v6 = 0.0015;
  }

  [(DRFlockAnimator *)self _runAnimatableWithBouncyAnimation:v5 response:v6];
}

- (void)_runAnimatableWithBouncyAnimation:(id)animation response:(double)response
{
  animationCopy = animation;
  v6 = animationCopy;
  if (qword_100063678 != -1)
  {
    sub_100030FB8();
  }

  v7 = 1.0;
  if (byte_100063680 == 1)
  {
    v7 = sub_100020DF4(animationCopy);
    if (qword_100063678 != -1)
    {
      dispatch_once(&qword_100063678, &stru_100055BF8);
    }
  }

  if (byte_100063680 == 1)
  {
    v8 = sub_100020F98(animationCopy);
    if (qword_100063678 != -1)
    {
      dispatch_once(&qword_100063678, &stru_100055C58);
    }
  }

  else
  {
    v8 = 0.707106781;
  }

  if (byte_100063680 == 1)
  {
    v9 = sub_100021140(animationCopy);
    if (qword_100063678 != -1)
    {
      dispatch_once(&qword_100063678, &stru_100055CB8);
    }
  }

  else
  {
    v9 = 0.65;
  }

  v10 = 1.0;
  if (byte_100063680 == 1)
  {
    v10 = sub_1000212E8(animationCopy);
    if (qword_100063678 != -1)
    {
      dispatch_once(&qword_100063678, &stru_100055D18);
    }
  }

  v11 = 1.0;
  if (byte_100063680 == 1)
  {
    v11 = sub_10002148C(animationCopy);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100020394;
  v14[3] = &unk_100054B50;
  v15 = v6;
  v12 = v6;
  completionBlock = [v12 completionBlock];
  [UIView _animateUsingSpringWithDampingRatio:1 response:v14 tracking:completionBlock initialDampingRatio:v7 initialResponse:response dampingRatioSmoothing:v8 responseSmoothing:v9 targetSmoothing:v10 projectionDeceleration:v11 animations:0.0 completion:0.0];
}

- (void)_runAnimatableWithBarelyBouncyAnimation:(id)animation
{
  animationCopy = animation;
  v4 = animationCopy;
  if (qword_100063678 != -1)
  {
    sub_100030FCC();
  }

  if (byte_100063680 == 1)
  {
    v5 = sub_100021630(animationCopy);
    if (qword_100063678 != -1)
    {
      dispatch_once(&qword_100063678, &stru_100055DD8);
    }
  }

  else
  {
    v5 = 0.80835;
  }

  if (byte_100063680 == 1)
  {
    v6 = sub_1000217D8(animationCopy);
    if (qword_100063678 != -1)
    {
      dispatch_once(&qword_100063678, &stru_100055CB8);
    }
  }

  else
  {
    v6 = 0.2109;
  }

  v7 = 1.0;
  if (byte_100063680 == 1)
  {
    v7 = sub_1000212E8(animationCopy);
    if (qword_100063678 != -1)
    {
      dispatch_once(&qword_100063678, &stru_100055D18);
    }
  }

  v8 = 1.0;
  if (byte_100063680 == 1)
  {
    v8 = sub_10002148C(animationCopy);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100020614;
  v11[3] = &unk_100054B50;
  v12 = v4;
  v9 = v4;
  completionBlock = [v9 completionBlock];
  [UIView _animateUsingSpringWithDampingRatio:1 response:v11 tracking:completionBlock dampingRatioSmoothing:v5 responseSmoothing:v6 targetSmoothing:v7 projectionDeceleration:v8 animations:0.0 completion:0.0];
}

- (void)_runAnimatableWithOneToOneTracking:(id)tracking
{
  trackingCopy = tracking;
  v7 = trackingCopy;
  if (qword_100063678 == -1)
  {
    v5 = trackingCopy;
  }

  else
  {
    sub_100030FA4();
    v5 = v7;
  }

  if (byte_100063680 == 1)
  {
    v6 = sub_100020C4C(trackingCopy);
    v5 = v7;
  }

  else
  {
    v6 = 0.0015;
  }

  [(DRFlockAnimator *)self _runAnimatableWithOneToOneTracking:v5 response:v6];
}

- (void)_runAnimatableWithOneToOneTracking:(id)tracking response:(double)response
{
  trackingCopy = tracking;
  v6 = trackingCopy;
  if (qword_100063678 != -1)
  {
    sub_100030FB8();
  }

  v7 = 1.0;
  if (byte_100063680 == 1)
  {
    v7 = sub_100020DF4(trackingCopy);
    if (qword_100063678 != -1)
    {
      dispatch_once(&qword_100063678, &stru_100055CB8);
    }
  }

  v8 = 1.0;
  if (byte_100063680 == 1)
  {
    v8 = sub_1000212E8(trackingCopy);
    if (qword_100063678 != -1)
    {
      dispatch_once(&qword_100063678, &stru_100055D18);
    }
  }

  v9 = 1.0;
  if (byte_100063680 == 1)
  {
    v9 = sub_10002148C(trackingCopy);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000208E8;
  v12[3] = &unk_100054B50;
  v13 = v6;
  v10 = v6;
  completionBlock = [v10 completionBlock];
  [UIView _animateUsingSpringWithDampingRatio:1 response:v12 tracking:completionBlock dampingRatioSmoothing:v7 responseSmoothing:response targetSmoothing:v8 projectionDeceleration:v9 animations:0.0 completion:0.0];
}

- (void)_runWithoutRetargeting:(id)retargeting
{
  retargetingCopy = retargeting;
  animationBlock = [retargetingCopy animationBlock];

  if (animationBlock)
  {
    animationBlock2 = [retargetingCopy animationBlock];
    [UIView _performWithoutRetargetingAnimations:animationBlock2];
  }

  completionBlock = [retargetingCopy completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [retargetingCopy completionBlock];
    completionBlock2[2](completionBlock2, 1, 0);
  }
}

@end