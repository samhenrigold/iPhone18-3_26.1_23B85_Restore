@interface DBAudioNotificationViewController
- (_TtC9DashBoard33DBAudioNotificationViewController)initWithCoder:(id)coder;
- (_TtC9DashBoard33DBAudioNotificationViewController)initWithEnvironment:(id)environment;
- (_TtC9DashBoard33DBAudioNotificationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)hideNotification;
- (void)loadView;
- (void)updateForService:(id)service;
- (void)viewDidLoad;
@end

@implementation DBAudioNotificationViewController

- (_TtC9DashBoard33DBAudioNotificationViewController)initWithEnvironment:(id)environment
{
  swift_unknownObjectRetain();
  v4 = sub_248270210(environment);
  swift_unknownObjectRelease();
  return v4;
}

- (_TtC9DashBoard33DBAudioNotificationViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_volumeSlider;
  type metadata accessor for DBVolumeSlider();
  *(&self->super.super.super.isa + v4) = sub_248294EFC();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_currentVolumeService) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_currentTimer) = 0;
  result = sub_248384580();
  __break(1u);
  return result;
}

- (void)loadView
{
  type metadata accessor for DBAudioView();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  selfCopy = self;
  v4 = [v3 init];
  [(DBAudioNotificationViewController *)selfCopy setView:v4];
}

- (void)viewDidLoad
{
  selfCopy = self;
  DBAudioNotificationViewController.viewDidLoad()();
}

- (void)updateForService:(id)service
{
  serviceCopy = service;
  selfCopy = self;
  DBAudioNotificationViewController.updateFor(service:)(serviceCopy);
}

- (void)hideNotification
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_volumeSlider);
  selfCopy = self;
  [v2 alpha];
  if (v3 > 0.0)
  {
    v4 = sub_248383DC0();
    sub_24814FB28(0, &qword_27EE90950, 0x277D86200);
    v5 = sub_2483841B0();
    sub_248382A40(v4, &dword_248146000, v5, "Audio notification hidden because of assertion.", 47, 2, MEMORY[0x277D84F90]);

    sub_24826EE70(0);
  }
}

- (_TtC9DashBoard33DBAudioNotificationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end