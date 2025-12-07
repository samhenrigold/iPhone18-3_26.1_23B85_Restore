@interface MPVoicemailAccountManagerWithDelegateDecorator
- (BOOL)isAnyAccountSubscribed;
- (BOOL)isMessageWaiting;
- (BOOL)isOnline;
- (BOOL)isTranscriptionEnabled;
- (MPVoicemailAccountManagerWithDelegateDecorator)initWithVMD:(id)d;
- (NSArray)accounts;
- (NSProgress)transcriptionProgress;
- (double)maximumGreetingDurationForAccountUUID:(id)d;
- (id)listenForChangesWithHandler:(id)handler;
- (int64_t)estimatedAccountCount;
- (unint64_t)storageUsage;
- (void)greetingForAccountUUID:(id)d completion:(id)completion;
- (void)setGreeting:(id)greeting forAccountUUID:(id)d completion:(id)completion;
- (void)setPasscode:(id)passcode forAccountUUID:(id)d completion:(id)completion;
@end

@implementation MPVoicemailAccountManagerWithDelegateDecorator

- (BOOL)isAnyAccountSubscribed
{
  selfCopy = self;
  sub_1001E9D44("VMD(%s) isSubscribed: %{BOOL}d");
  v4 = v3;

  return v4 & 1;
}

- (BOOL)isOnline
{
  selfCopy = self;
  sub_1001E9BB0();
  v4 = v3;

  return v4 & 1;
}

- (BOOL)isMessageWaiting
{
  selfCopy = self;
  sub_1001E9D44("VMD(%s) isMessageWaiting: %{BOOL}d");
  v4 = v3;

  return v4 & 1;
}

- (unint64_t)storageUsage
{
  selfCopy = self;
  sub_1001E9EF0();
  v4 = v3;

  return v4;
}

- (int64_t)estimatedAccountCount
{
  selfCopy = self;
  sub_1001EA06C();
  v4 = v3;

  return v4;
}

- (NSArray)accounts
{
  selfCopy = self;
  sub_1001EA234();

  type metadata accessor for VoicemailAccount(0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)isTranscriptionEnabled
{
  selfCopy = self;
  v3 = sub_1001EA698();

  return v3 & 1;
}

- (NSProgress)transcriptionProgress
{
  selfCopy = self;
  v3 = sub_1001EA720();

  return v3;
}

- (MPVoicemailAccountManagerWithDelegateDecorator)initWithVMD:(id)d
{
  v3 = _Block_copy(d);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return sub_1001EA764(sub_1001EBE6C, v4);
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
  sub_1001EAC74(v12, v14, v10, sub_1001B79E0, v15);

  (*(v8 + 8))(v10, v7);
}

- (double)maximumGreetingDurationForAccountUUID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v9 = sub_1001EAE70();

  (*(v5 + 8))(v7, v4);
  return v9;
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
  sub_1001EAFC8(v9, sub_1001B7714, v11);

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
  sub_1001EB180(greetingCopy, v11, sub_1001B6018, v13);

  (*(v9 + 8))(v11, v8);
}

- (id)listenForChangesWithHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  selfCopy = self;
  v8 = sub_1001EB35C(sub_1001B5EE0, v6);

  _Block_release(handler);

  return v8;
}

@end