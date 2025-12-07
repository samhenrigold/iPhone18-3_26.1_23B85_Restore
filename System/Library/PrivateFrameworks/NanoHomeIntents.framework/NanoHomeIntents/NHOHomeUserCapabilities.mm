@interface NHOHomeUserCapabilities
- (BOOL)restrictedGuest;
- (BOOL)shouldShowElectricity;
- (NHOHomeUserCapabilities)init;
- (NHOHomeUserCapabilities)initWithHome:(id)home;
- (void)updateCapabilitiesWithCompletionHandler:(id)handler;
@end

@implementation NHOHomeUserCapabilities

- (BOOL)shouldShowElectricity
{
  if ((*(&self->super.isa + OBJC_IVAR___NHOHomeUserCapabilities_isOnboarded) & 1) != 0 || *(&self->super.isa + OBJC_IVAR___NHOHomeUserCapabilities_hasMockData) == 1)
  {
    v2 = 1;
  }

  else
  {
    selfCopy = self;
    v2 = sub_25B1494D8();
  }

  return v2 & 1;
}

- (BOOL)restrictedGuest
{
  selfCopy = self;
  v3 = sub_25B1494D8();

  return v3 & 1;
}

- (NHOHomeUserCapabilities)initWithHome:(id)home
{
  v4 = OBJC_IVAR___NHOHomeUserCapabilities_logger;
  v5 = qword_27FA39AF8;
  homeCopy = home;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_25B161A14();
  v8 = __swift_project_value_buffer(v7, qword_27FA3A070);
  (*(*(v7 - 8) + 16))(self + v4, v8, v7);
  *(&self->super.isa + OBJC_IVAR___NHOHomeUserCapabilities_isOnboarded) = 0;
  *(&self->super.isa + OBJC_IVAR___NHOHomeUserCapabilities_hasMockData) = 0;
  *(&self->super.isa + OBJC_IVAR___NHOHomeUserCapabilities_home) = homeCopy;
  v10.receiver = self;
  v10.super_class = type metadata accessor for NHOHomeUserCapabilities(0);
  return [(NHOHomeUserCapabilities *)&v10 init];
}

- (void)updateCapabilitiesWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A378, &qword_25B164A58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_25B161CF4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_25B1658C8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_25B1658D8;
  v12[5] = v11;
  selfCopy = self;
  sub_25B14A9D4(0, 0, v7, &unk_25B1658E8, v12);
}

- (NHOHomeUserCapabilities)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end