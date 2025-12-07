@interface VoicemailDelegateDecorator
- (_TtC9IntentsUI26VoicemailDelegateDecorator)init;
- (void)greetingDidChangeByCarrier:(id)carrier;
- (void)voicemailsDidChangeInitial:(BOOL)initial added:(id)added deleted:(id)deleted updated:(id)updated;
@end

@implementation VoicemailDelegateDecorator

- (void)greetingDidChangeByCarrier:(id)carrier
{
  v4 = sub_10007AE28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v9 = self + OBJC_IVAR____TtC9IntentsUI26VoicemailDelegateDecorator_lastTask;
  selfCopy = self;
  os_unfair_lock_lock(v9);
  sub_10002FE4C(v9 + 1, selfCopy, v8);
  os_unfair_lock_unlock(v9);

  (*(v5 + 8))(v8, v4);
}

- (_TtC9IntentsUI26VoicemailDelegateDecorator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)voicemailsDidChangeInitial:(BOOL)initial added:(id)added deleted:(id)deleted updated:(id)updated
{
  v6 = self + OBJC_IVAR____TtC9IntentsUI26VoicemailDelegateDecorator_lastTask;
  selfCopy = self;
  os_unfair_lock_lock(v6);
  sub_10003078C(v6 + 1, selfCopy, v7, "VoicemailDelegateDecorator: received voicemailsDidChange", &unk_1000B25B8, &unk_1000A14D8);
  os_unfair_lock_unlock(v6);
}

@end