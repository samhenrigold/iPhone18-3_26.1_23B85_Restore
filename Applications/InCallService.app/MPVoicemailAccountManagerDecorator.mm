@interface MPVoicemailAccountManagerDecorator
- (BOOL)isAnyAccountSubscribed;
- (BOOL)isMessageWaiting;
- (BOOL)isTranscriptionEnabled;
- (NSArray)accounts;
- (NSProgress)transcriptionProgress;
- (double)maximumGreetingDurationForAccountUUID:(id)d;
- (id)listenForChangesWithHandler:(id)handler;
- (void)greetingForAccountUUID:(id)d completion:(id)completion;
- (void)setGreeting:(id)greeting forAccountUUID:(id)d completion:(id)completion;
- (void)setPasscode:(id)passcode forAccountUUID:(id)d completion:(id)completion;
@end

@implementation MPVoicemailAccountManagerDecorator

- (BOOL)isAnyAccountSubscribed
{
  selfCopy = self;
  sub_1001F9A60("VMD(%s) isSubscribed: %{BOOL}d", v3, v4, v5, v6, v7, v8);
  v10 = v9;

  return v10 & 1;
}

- (BOOL)isMessageWaiting
{
  selfCopy = self;
  sub_1001F9A60("VMD(%s) isMessageWaiting: %{BOOL}d", v3, v4, v5, v6, v7, v8);
  v10 = v9;

  return v10 & 1;
}

- (NSArray)accounts
{
  selfCopy = self;
  sub_1001F9F60();

  type metadata accessor for VoicemailAccount(0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)isTranscriptionEnabled
{
  selfCopy = self;
  v3 = sub_1001FA38C();

  return v3 & 1;
}

- (NSProgress)transcriptionProgress
{
  selfCopy = self;
  v3 = sub_1001FA414();

  return v3;
}

- (void)setPasscode:(id)passcode forAccountUUID:(id)d completion:(id)completion
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  selfCopy = self;
  sub_1001FAB1C(v12, v14, v10, sub_1001B79E0, v15);

  (*(v8 + 8))(v10, v7);
}

- (double)maximumGreetingDurationForAccountUUID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1001FAD0C();
  v10 = v9;

  (*(v5 + 8))(v7, v4);
  return v10;
}

- (void)greetingForAccountUUID:(id)d completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  selfCopy = self;
  sub_1001FAE50(v9, sub_1001B7714, v11);

  (*(v7 + 8))(v9, v6);
}

- (void)setGreeting:(id)greeting forAccountUUID:(id)d completion:(id)completion
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  greetingCopy = greeting;
  selfCopy = self;
  sub_1001FAFFC(greetingCopy, v11, sub_1001B6018, v13);

  (*(v9 + 8))(v11, v8);
}

- (id)listenForChangesWithHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  selfCopy = self;
  v8 = sub_1001FB1CC(sub_1001B5EE0, v6);

  _Block_release(handler);

  return v8;
}

@end