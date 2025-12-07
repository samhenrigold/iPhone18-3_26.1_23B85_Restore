@interface SceneLevelExtension.HostComponent
- (_TtCC13ShellSceneKit19SceneLevelExtension13HostComponent)init;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)setScene:(id)scene;
@end

@implementation SceneLevelExtension.HostComponent

- (void)setScene:(id)scene
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_265FEADFC(scene);
  swift_unknownObjectRelease();
}

- (_TtCC13ShellSceneKit19SceneLevelExtension13HostComponent)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtCC13ShellSceneKit19SceneLevelExtension13HostComponent_scene) = 0;
  *(&self->super.isa + OBJC_IVAR____TtCC13ShellSceneKit19SceneLevelExtension13HostComponent____lazy_storage___diffInspector) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(SceneLevelExtension.HostComponent *)&v5 init];
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  selfCopy = self;
  sub_265FEB138(sceneCopy, settingsCopy);
}

@end