@interface BMInternalManager
- (BMInternalManager)init;
- (BMInternalManager)initWithConfiguration:(id)configuration;
- (void)dealloc;
- (void)onDidReceiveAppDidBackground:(id)background;
- (void)propertyDidChange:(id)change propertyConfiguration:(id)configuration;
- (void)submitEvent:(id)event;
@end

@implementation BMInternalManager

- (BMInternalManager)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = sub_1A79C(configurationCopy);

  return v4;
}

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR___BMInternalManager_scheduledUpdateWorkItem))
  {
    selfCopy = self;

    sub_31290();
  }

  else
  {
    selfCopy2 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for Manager();
  [(BMInternalManager *)&v5 dealloc];
}

- (void)submitEvent:(id)event
{
  v4 = sub_2294(&qword_42590, &unk_32ED0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  selfCopy = self;

  v9 = sub_E3E0(v8);
  v10 = sub_31480();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v9;
  *(v11 + 40) = xmmword_32EC0;
  *(v11 + 56) = sub_F33C;
  *(v11 + 64) = 0;
  sub_10C5C(0, 0, v6, &unk_33008, v11);
}

- (void)onDidReceiveAppDidBackground:(id)background
{
  v4 = sub_31060();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_31050();
  v8 = *(&self->super.isa + OBJC_IVAR___BMInternalManager_configuration);
  if (v8 && *(v8 + OBJC_IVAR___BMInternalManagerConfiguration_shouldPurgeOutdatedData) == 1)
  {
    selfCopy = self;
    v10 = v8;
    sub_EE58();
  }

  (*(v5 + 8))(v7, v4);
}

- (BMInternalManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)propertyDidChange:(id)change propertyConfiguration:(id)configuration
{
  swift_unknownObjectRetain();
  configurationCopy = configuration;
  selfCopy = self;
  Manager.propertyDidChange(_:propertyConfiguration:)(change, configurationCopy);
  swift_unknownObjectRelease();
}

@end