@interface VoicemailDelegateDecorator
- (_TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator)init;
- (void)greetingDidChangeByCarrier:(id)carrier;
- (void)voicemailsDidChangeInitial:(BOOL)initial added:(id)added deleted:(id)deleted updated:(id)updated;
@end

@implementation VoicemailDelegateDecorator

- (void)greetingDidChangeByCarrier:(id)carrier
{
  v4 = sub_10006036C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006035C();
  v9 = self + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator_lastTask;
  selfCopy = self;
  os_unfair_lock_lock(v9);
  sub_1000326E0(v9 + 1, selfCopy, v8);
  os_unfair_lock_unlock(v9);

  (*(v5 + 8))(v8, v4);
}

- (_TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)voicemailsDidChangeInitial:(BOOL)initial added:(id)added deleted:(id)deleted updated:(id)updated
{
  v6 = self + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator_lastTask;
  selfCopy = self;
  os_unfair_lock_lock(v6);
  sub_100032FA0(v6 + 1, selfCopy, v7, "VoicemailDelegateDecorator: received voicemailsDidChange", &unk_10008A708, &unk_100079ED8);
  os_unfair_lock_unlock(v6);
}

@end