@interface GAXSBCoverSheetSlidingViewControllerOverride
- (void)_finishTransitionToPresented:(BOOL)presented animated:(BOOL)animated withCompletion:(id)completion;
@end

@implementation GAXSBCoverSheetSlidingViewControllerOverride

- (void)_finishTransitionToPresented:(BOOL)presented animated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  presentedCopy = presented;
  completionCopy = completion;
  if (!presentedCopy)
  {
    v9 = +[GAXSpringboard sharedInstance];
    isEnabled = [v9 isEnabled];

    if (isEnabled)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_92D0;
      v14[3] = &unk_2C720;
      v15 = objc_retainBlock(completionCopy);
      v11 = v15;
      v12 = objc_retainBlock(v14);

      completionCopy = v12;
    }
  }

  v13.receiver = self;
  v13.super_class = GAXSBCoverSheetSlidingViewControllerOverride;
  [(GAXSBCoverSheetSlidingViewControllerOverride *)&v13 _finishTransitionToPresented:presentedCopy animated:animatedCopy withCompletion:completionCopy];
}

@end