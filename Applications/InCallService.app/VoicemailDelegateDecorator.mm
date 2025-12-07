@interface VoicemailDelegateDecorator
- (void)accountsDidChange;
- (void)capabilitiesDidChange;
- (void)greetingDidChangeByCarrier:(id)carrier;
- (void)managerStorageUsageDidChange;
- (void)onlineStatusDidChange;
- (void)subscriptionStateStatusDidChange;
- (void)syncInProgresDidChange;
- (void)transcribingStatusDidChange;
- (void)voicemailsDidChangeInitial:(BOOL)initial added:(id)added deleted:(id)deleted updated:(id)updated;
@end

@implementation VoicemailDelegateDecorator

- (void)onlineStatusDidChange
{
  selfCopy = self;
  sub_100159378("VoicemailDelegateDecorator: received onlineStatusDidChange", &unk_10035B338, &unk_1002FAE40);
}

- (void)capabilitiesDidChange
{
  selfCopy = self;
  sub_100159378("VoicemailDelegateDecorator: received capabilitiesDidChange", &unk_10035B310, &unk_1002FAE30);
}

- (void)subscriptionStateStatusDidChange
{
  selfCopy = self;
  sub_100159378("VoicemailDelegateDecorator: received subscriptionStateStatusDidChange", &unk_10035B2E8, &unk_1002FAE20);
}

- (void)syncInProgresDidChange
{
  selfCopy = self;
  sub_100159378("VoicemailDelegateDecorator: received syncInProgresDidChange", &unk_10035B2C0, &unk_1002FAE10);
}

- (void)managerStorageUsageDidChange
{
  selfCopy = self;
  sub_100159378("VoicemailDelegateDecorator: received managerStorageUsageDidChange", &unk_10035B298, &unk_1002FAE00);
}

- (void)transcribingStatusDidChange
{
  selfCopy = self;
  sub_100159378("VoicemailDelegateDecorator: received transcribingStatusDidChange", &unk_10035B270, &unk_1002FADF0);
}

- (void)accountsDidChange
{
  selfCopy = self;
  sub_100159378("VoicemailDelegateDecorator: received accountsDidChange", &unk_10035B248, &unk_1002FADE0);
}

- (void)greetingDidChangeByCarrier:(id)carrier
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10015A1F0(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)voicemailsDidChangeInitial:(BOOL)initial added:(id)added deleted:(id)deleted updated:(id)updated
{
  if (added)
  {
    sub_1001538EC();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (deleted)
  {
    sub_1001538EC();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (updated)
  {
    sub_1001538EC();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  sub_10015AA90();
}

@end