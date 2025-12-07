@interface ScheduledMessageMembershipObserver
- (_TtC12IMDaemonCore34ScheduledMessageMembershipObserver)init;
- (void)dealloc;
- (void)handleChatParticipantsDidChange:(id)change;
@end

@implementation ScheduledMessageMembershipObserver

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy name:@"__kIMDChatParticipantsDidChangeNotification" object:0];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for ScheduledMessageMembershipObserver();
  [(ScheduledMessageMembershipObserver *)&v6 dealloc];
}

- (void)handleChatParticipantsDidChange:(id)change
{
  v4 = sub_22B7DA688();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B7DA658();
  selfCopy = self;
  sub_22B78C58C();

  (*(v5 + 8))(v7, v4);
}

- (_TtC12IMDaemonCore34ScheduledMessageMembershipObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end