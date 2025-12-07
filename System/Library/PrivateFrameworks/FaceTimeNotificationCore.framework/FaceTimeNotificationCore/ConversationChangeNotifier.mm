@interface ConversationChangeNotifier
- (_TtC24FaceTimeNotificationCore26ConversationChangeNotifier)init;
- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation;
@end

@implementation ConversationChangeNotifier

- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation
{
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AE0, &qword_24AA00CD0);
  sub_24A9DC39C();
  sub_24A9FEAF0();
}

- (_TtC24FaceTimeNotificationCore26ConversationChangeNotifier)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC24FaceTimeNotificationCore26ConversationChangeNotifier_activeRemoteParticipantsChangedPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AE0, &qword_24AA00CD0);
  swift_allocObject();
  *(&self->super.isa + v4) = sub_24A9FEAD0();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ConversationChangeNotifier *)&v6 init];
}

@end