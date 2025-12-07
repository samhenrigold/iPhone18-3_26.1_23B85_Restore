@interface ChangeHistoryProcessor
- (_TtC14CopresenceCore22ChangeHistoryProcessor)init;
- (void)visitDeleteContactEvent:(id)event;
@end

@implementation ChangeHistoryProcessor

- (void)visitDeleteContactEvent:(id)event
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14CopresenceCore22ChangeHistoryProcessor_onContactDeleted);
  eventCopy = event;
  selfCopy = self;
  contactIdentifier = [eventCopy contactIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v4(v7, v9);
}

- (_TtC14CopresenceCore22ChangeHistoryProcessor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end