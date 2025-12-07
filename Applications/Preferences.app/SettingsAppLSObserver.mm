@interface SettingsAppLSObserver
- (_TtC11SettingsApp21SettingsAppLSObserver)init;
- (void)observerDidObserveDatabaseChange:(id)change;
@end

@implementation SettingsAppLSObserver

- (_TtC11SettingsApp21SettingsAppLSObserver)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC11SettingsApp21SettingsAppLSObserver_callback);
  v4 = type metadata accessor for SettingsAppLSObserver();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(SettingsAppLSObserver *)&v6 init];
}

- (void)observerDidObserveDatabaseChange:(id)change
{
  v4 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  selfCopy = self;
  static TaskPriority.userInitiated.getter();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  sub_100094AF4(0, 0, v6, &unk_100114378, v10);
}

@end