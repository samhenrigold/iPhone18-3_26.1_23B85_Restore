@interface SpeakScreenUIManager
- (_TtC9SpeakThis20SpeakScreenUIManager)init;
- (void)beginActivity;
- (void)endActivity;
- (void)hideUI;
- (void)showUI;
@end

@implementation SpeakScreenUIManager

- (void)showUI
{
  selfCopy = self;
  sub_18380();
}

- (void)beginActivity
{
  v2 = sub_1A724(&qword_38390, &qword_23330);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  v5 = sub_1BF44();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_19868(0, 0, v4, &unk_23340, v6);
}

- (void)hideUI
{
  selfCopy = self;
  sub_19C18();
}

- (_TtC9SpeakThis20SpeakScreenUIManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC9SpeakThis20SpeakScreenUIManager_activeViewController) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC9SpeakThis20SpeakScreenUIManager____lazy_storage___displayManager) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SpeakScreenUIManager();
  return [(SpeakScreenUIManager *)&v3 init];
}

- (void)endActivity
{
  v0 = sub_1BEA4();
  __chkstk_darwin(v0);
  if (AXDeviceHasJindo())
  {
    sub_1BDC4();
    v1 = sub_1BDB4();
    v4._object = 0x80000000000297B0;
    v4._countAndFlagsBits = 0xD000000000000013;
    v2 = v1;
    sub_1BD94(v4);
  }
}

@end