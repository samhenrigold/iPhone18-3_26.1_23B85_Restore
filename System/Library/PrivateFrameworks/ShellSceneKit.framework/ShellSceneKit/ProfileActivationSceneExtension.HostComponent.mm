@interface ProfileActivationSceneExtension.HostComponent
- (_TtCC13ShellSceneKit31ProfileActivationSceneExtension13HostComponent)init;
- (void)setScene:(id)scene;
@end

@implementation ProfileActivationSceneExtension.HostComponent

- (void)setScene:(id)scene
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_265FE8358(scene);
  swift_unknownObjectRelease();
}

- (_TtCC13ShellSceneKit31ProfileActivationSceneExtension13HostComponent)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtCC13ShellSceneKit31ProfileActivationSceneExtension13HostComponent_scene) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(ProfileActivationSceneExtension.HostComponent *)&v5 init];
}

@end