@interface IMDBatchMessageSimulator
- (IMDBatchMessageSimulator)init;
- (IMDBatchMessageSimulator)initWithMessages:(id)messages configuration:(id)configuration;
- (void)runWithCompletion:(id)completion;
@end

@implementation IMDBatchMessageSimulator

- (IMDBatchMessageSimulator)initWithMessages:(id)messages configuration:(id)configuration
{
  sub_22B4D01A0(0, &unk_28141F1F8, 0x277D1AC48);
  *(&self->super.isa + OBJC_IVAR___IMDBatchMessageSimulator_messages) = sub_22B7DB918();
  configurationCopy = configuration;
  if (!configuration)
  {
    configurationCopy = [objc_allocWithZone(MEMORY[0x277D1AC50]) init];
  }

  v7 = (&self->super.isa + OBJC_IVAR___IMDBatchMessageSimulator_batch);
  *v7 = configurationCopy;
  v7[1] = 0;
  v8 = MEMORY[0x277D84F90];
  v7[2] = 0;
  v7[3] = v8;
  v11.receiver = self;
  v11.super_class = IMDBatchMessageSimulator;
  configurationCopy2 = configuration;
  return [(IMDBatchMessageSimulator *)&v11 init];
}

- (void)runWithCompletion:(id)completion
{
  v5 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22B7DBA58();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22B7FA680;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B7F8D08;
  v12[5] = v11;
  selfCopy = self;
  sub_22B7C0EFC(0, 0, v7, &unk_22B7F8D10, v12);
}

- (IMDBatchMessageSimulator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end