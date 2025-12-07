@interface DisplayLinkManager
- (_TtC23SetupAssistantSupportUI18DisplayLinkManager)init;
- (void)frameWithDisplayLink:(id)link;
@end

@implementation DisplayLinkManager

- (void)frameWithDisplayLink:(id)link
{
  linkCopy = link;
  selfCopy = self;
  [linkCopy targetTimestamp];
  v6 = v5;
  [linkCopy timestamp];
  v8 = *(&selfCopy->super.isa + OBJC_IVAR____TtC23SetupAssistantSupportUI18DisplayLinkManager_frameUpdateBlock);
  if (v8)
  {
    v9 = *&selfCopy->displayLink[OBJC_IVAR____TtC23SetupAssistantSupportUI18DisplayLinkManager_frameUpdateBlock];
    v10 = v6 - v7;

    v8(v11, v10);

    sub_265A56D6C(v8, v9);
  }

  else
  {
  }
}

- (_TtC23SetupAssistantSupportUI18DisplayLinkManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end