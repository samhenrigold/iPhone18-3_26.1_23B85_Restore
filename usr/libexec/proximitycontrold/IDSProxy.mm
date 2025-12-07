@interface IDSProxy
- (_TtC17proximitycontrold8IDSProxy)init;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
@end

@implementation IDSProxy

- (_TtC17proximitycontrold8IDSProxy)init
{
  v3 = OBJC_IVAR____TtC17proximitycontrold8IDSProxy_devices;
  KeyPath = swift_getKeyPath();
  sub_100035D04(&unk_100348F80, &qword_1002833E0);
  swift_allocObject();
  v5 = sub_10006D7D4(KeyPath, 0);

  *(&self->super.isa + v3) = v5;
  v6 = OBJC_IVAR____TtC17proximitycontrold8IDSProxy_dispatchQueue;
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v7 = qword_10038B5B8;
  *(&self->super.isa + v6) = qword_10038B5B8;
  *(&self->super.isa + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_service) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_tasks) = &_swiftEmptySetSingleton;
  v10.receiver = self;
  v10.super_class = type metadata accessor for IDSProxy();
  v8 = v7;
  return [(IDSProxy *)&v10 init];
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  if (changed)
  {
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  serviceCopy = service;
  selfCopy = self;
  sub_10017ABB4(v6);
}

- (void)service:(id)service devicesChanged:(id)changed
{
  if (changed)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  serviceCopy = service;
  selfCopy = self;
  sub_10017AE1C(v6);
}

@end