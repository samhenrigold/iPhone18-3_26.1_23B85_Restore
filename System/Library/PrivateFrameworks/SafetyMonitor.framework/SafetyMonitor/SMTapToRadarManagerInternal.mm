@interface SMTapToRadarManagerInternal
+ (void)fileRadarWithError:(NSError *)error conversationIdentifier:(NSString *)identifier completionHandler:(id)handler;
+ (void)fileRadarWithTitle:(NSString *)title description:(NSString *)description conversationIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (_TtC13SafetyMonitor27SMTapToRadarManagerInternal)init;
@end

@implementation SMTapToRadarManagerInternal

+ (void)fileRadarWithError:(NSError *)error conversationIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72828, &qword_2645D9630);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = error;
  v13[3] = identifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_2645D3ACC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2645DA628;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2645DA630;
  v16[5] = v15;
  errorCopy = error;
  identifierCopy = identifier;
  sub_26457A174(0, 0, v11, &unk_2645DA638, v16);
}

+ (void)fileRadarWithTitle:(NSString *)title description:(NSString *)description conversationIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72828, &qword_2645D9630);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = title;
  v15[3] = description;
  v15[4] = identifier;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_2645D3ACC();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2645DA5E0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_2645DA5F0;
  v18[5] = v17;
  titleCopy = title;
  descriptionCopy = description;
  identifierCopy = identifier;
  sub_26457A174(0, 0, v13, &unk_2645DA600, v18);
}

- (_TtC13SafetyMonitor27SMTapToRadarManagerInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end