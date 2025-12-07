@interface UIKeyboardCandidateSceneHostingController.UIKeyboardCandidateSceneSpecification
- (_TtCE5UIKitCSo41UIKeyboardCandidateSceneHostingController37UIKeyboardCandidateSceneSpecification)init;
- (id)userActivity;
@end

@implementation UIKeyboardCandidateSceneHostingController.UIKeyboardCandidateSceneSpecification

- (id)userActivity
{
  v2 = objc_allocWithZone(MEMORY[0x1E696B090]);
  v3 = sub_18A4A7258();
  initWithActivityType_ = [v2 initWithActivityType_];

  return initWithActivityType_;
}

- (_TtCE5UIKitCSo41UIKeyboardCandidateSceneHostingController37UIKeyboardCandidateSceneSpecification)init
{
  v3 = _s37UIKeyboardCandidateSceneSpecificationCMa();
  v6.receiver = self;
  v6.super_class = v4;
  return [(UIKeyboardCandidateSceneHostingController.UIKeyboardCandidateSceneSpecification *)&v6 init];
}

@end