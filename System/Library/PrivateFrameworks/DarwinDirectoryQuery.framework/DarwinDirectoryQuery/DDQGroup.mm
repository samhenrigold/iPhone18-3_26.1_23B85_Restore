@interface DDQGroup
+ (NSSet)mutableGroups;
+ (id)groupWithGID:(unsigned int)d;
+ (id)groupWithName:(id)name;
+ (id)groupWithUUID:(id)d;
- (DDQGroup)groupWithGID:(unsigned int)d;
- (DDQGroup)groupWithName:(id)name;
- (DDQGroup)init;
- (NSSet)members;
- (int64_t)hash;
@end

@implementation DDQGroup

+ (NSSet)mutableGroups
{
  v2 = _s20DarwinDirectoryQuery5GroupV13mutableGroupsShyACGvgZ_0();
  v3 = sub_248134B30(v2);

  sub_248142F2C(v3);

  type metadata accessor for DDQGroup(v4);
  sub_248137EF8(&qword_27EE8AEC8, v5, type metadata accessor for DDQGroup, MEMORY[0x277D85378]);
  v6 = sub_248143B90();

  return v6;
}

- (NSSet)members
{
  v3 = type metadata accessor for Group(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_248135858(self + OBJC_IVAR___DDQGroup__group, v14);
  selfCopy = self;
  swift_dynamicCast();
  v7 = *&v5[*(v3 + 28)];

  sub_248138234(v5, type metadata accessor for Group);
  v8 = sub_2481347B4(v7);

  sub_248142D94(v8);

  type metadata accessor for DDQUser(v9);
  sub_248137EF8(&qword_27EE8AEC0, v10, type metadata accessor for DDQUser, MEMORY[0x277D85378]);
  v11 = sub_248143B90();

  return v11;
}

- (DDQGroup)groupWithGID:(unsigned int)d
{
  result = sub_248143D00();
  __break(1u);
  return result;
}

- (DDQGroup)groupWithName:(id)name
{
  result = sub_248143D00();
  __break(1u);
  return result;
}

- (DDQGroup)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)groupWithUUID:(id)d
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AEB8, &qword_2481444D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_248143B30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248143B00();
  static Group.with(uuid:)(v9, v5);
  v10 = sub_248137C1C(v5);
  (*(v7 + 8))(v9, v6);

  return v10;
}

+ (id)groupWithGID:(unsigned int)d
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AEB8, &qword_2481444D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  static Group.with(gid:)(d, &v9 - v5);
  v7 = sub_248137C1C(v6);

  return v7;
}

+ (id)groupWithName:(id)name
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AEB8, &qword_2481444D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_248143B60();
  static Group.with(name:)(v6, v7, v5);

  v8 = sub_248137C1C(v5);

  return v8;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = DDQGroup.hash.getter();

  return v3;
}

@end