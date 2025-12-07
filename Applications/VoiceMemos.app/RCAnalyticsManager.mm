@interface RCAnalyticsManager
- (_TtC10VoiceMemos18RCAnalyticsManager)init;
- (void)appWillTerminate;
- (void)sceneDidEnterBackground;
- (void)setupSessionManagerWithCompletionHandler:(id)handler;
- (void)updateSessionProperties;
- (void)userCapturedSecondLayer;
- (void)userEditedStudioVoiceSlider;
- (void)userEnabledSecondLayer;
- (void)userEnabledStudioVoice;
- (void)userPlayedVoiceMemo;
- (void)userViewedTranscription;
@end

@implementation RCAnalyticsManager

- (void)setupSessionManagerWithCompletionHandler:(id)handler
{
  v5 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100243530;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100243D40;
  v12[5] = v11;
  selfCopy = self;
  sub_1001A8E50(0, 0, v7, &unk_100243540, v12);
}

- (void)sceneDidEnterBackground
{
  selfCopy = self;
  sub_1000EDEC8();
}

- (void)appWillTerminate
{
  selfCopy = self;
  sub_1000EE2C0();
}

- (void)updateSessionProperties
{
  selfCopy = self;
  sub_1000EE478();
}

- (_TtC10VoiceMemos18RCAnalyticsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)userEnabledStudioVoice
{
  selfCopy = self;
  sub_1000EEA28();
}

- (void)userEditedStudioVoiceSlider
{
  selfCopy = self;
  sub_1000EEB40();
}

- (void)userCapturedSecondLayer
{
  selfCopy = self;
  sub_1000EECB8(sub_1000EF130);
}

- (void)userEnabledSecondLayer
{
  selfCopy = self;
  sub_1000EECB8(sub_1000EF12C);
}

- (void)userViewedTranscription
{
  selfCopy = self;
  sub_1000EEE10();
}

- (void)userPlayedVoiceMemo
{
  selfCopy = self;
  sub_1000EEF28();
}

@end