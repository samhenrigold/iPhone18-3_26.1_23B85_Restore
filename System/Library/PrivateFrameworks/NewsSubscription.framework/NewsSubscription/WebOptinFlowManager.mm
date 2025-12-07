@interface WebOptinFlowManager
- (_TtC16NewsSubscription19WebOptinFlowManager)init;
- (void)handledAction:(id)action state:(unint64_t)state;
@end

@implementation WebOptinFlowManager

- (_TtC16NewsSubscription19WebOptinFlowManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handledAction:(id)action state:(unint64_t)state
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postUpsellAction);
  if (v4)
  {
    v5 = *&self->appConfigurationManager[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postUpsellAction];
    selfCopy = self;
    v7 = sub_1D776AC18(v4, v5);
    v4(v7);

    sub_1D7744A7C(v4, v5);
  }
}

@end