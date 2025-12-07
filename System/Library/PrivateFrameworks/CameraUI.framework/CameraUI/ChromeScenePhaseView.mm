@interface ChromeScenePhaseView
- (_TtC8CameraUI20ChromeScenePhaseView)initWithCoder:(id)coder;
- (_TtC8CameraUI20ChromeScenePhaseView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
@end

@implementation ChromeScenePhaseView

- (_TtC8CameraUI20ChromeScenePhaseView)initWithFrame:(CGRect)frame
{
  v4 = OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_scenePhaseModel;
  type metadata accessor for ChromeScenePhaseModel(0);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
  v7 = *MEMORY[0x1E697BE38];
  v8 = sub_1A3A2F540();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  sub_1A3A2F0B0();
  *(&self->super.super.super.isa + v4) = v5;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState) = 256;
  result = sub_1A3A32070("Fatal error", 11, 2, 0xD000000000000025, 0x80000001A3AA56E0, "CameraUI/ChromeScenePhaseView.swift", 35, 2, 29, 0);
  __break(1u);
  return result;
}

- (_TtC8CameraUI20ChromeScenePhaseView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_scenePhaseModel;
  type metadata accessor for ChromeScenePhaseModel(0);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC8CameraUI21ChromeScenePhaseModel___phase;
  v7 = *MEMORY[0x1E697BE38];
  v8 = sub_1A3A2F540();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  sub_1A3A2F0B0();
  *(&self->super.super.super.isa + v4) = v5;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8CameraUI20ChromeScenePhaseView_sceneState) = 256;
  result = sub_1A3A32070("Fatal error", 11, 2, 0xD000000000000025, 0x80000001A3AA4060, "CameraUI/ChromeScenePhaseView.swift", 35, 2, 33, 0);
  __break(1u);
  return result;
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_1A3966A4C(selfCopy, v2, v3);
}

@end