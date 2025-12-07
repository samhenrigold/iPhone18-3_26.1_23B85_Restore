@interface RecommendationFlowControllerRepresentable.FlowControllerDelegate
- (_TtCV21CloudRecommendationUI41RecommendationFlowControllerRepresentable22FlowControllerDelegate)init;
- (void)userDidCancelAction;
- (void)userDidCompleteAction:(id)action;
@end

@implementation RecommendationFlowControllerRepresentable.FlowControllerDelegate

- (void)userDidCompleteAction:(id)action
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCV21CloudRecommendationUI41RecommendationFlowControllerRepresentable22FlowControllerDelegate_completion);
  actionCopy = action;
  selfCopy = self;

  v4(actionCopy);
}

- (void)userDidCancelAction
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtCV21CloudRecommendationUI41RecommendationFlowControllerRepresentable22FlowControllerDelegate_cancellation);
  selfCopy = self;

  v2(v3);
}

- (_TtCV21CloudRecommendationUI41RecommendationFlowControllerRepresentable22FlowControllerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end