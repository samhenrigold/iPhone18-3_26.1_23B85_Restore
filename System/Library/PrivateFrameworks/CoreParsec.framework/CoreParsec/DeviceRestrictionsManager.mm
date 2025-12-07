@interface DeviceRestrictionsManager
- (void)accountsDidChange:(id)change;
- (void)updateDeviceRestrictions:(id)restrictions;
@end

@implementation DeviceRestrictionsManager

- (void)accountsDidChange:(id)change
{
  v4 = sub_100046184(&qword_100215AA8, &unk_100199CA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  if (change)
  {
    static Notification._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = type metadata accessor for Notification();
    v8 = 0;
  }

  else
  {
    v7 = type metadata accessor for Notification();
    v8 = 1;
  }

  sub_1000051C0(v6, v8, 1, v7);

  sub_100064740(v6);

  sub_10000F94C(v6, &qword_100215AA8, &unk_100199CA0);
}

- (void)updateDeviceRestrictions:(id)restrictions
{
  v4 = sub_100046184(&qword_100215AA8, &unk_100199CA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  if (restrictions)
  {
    static Notification._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = type metadata accessor for Notification();
    v8 = 0;
  }

  else
  {
    v7 = type metadata accessor for Notification();
    v8 = 1;
  }

  sub_1000051C0(v6, v8, 1, v7);

  sub_100038368();

  sub_10000F94C(v6, &qword_100215AA8, &unk_100199CA0);
}

@end