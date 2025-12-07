@interface DDGroup
+ (DDGroup)groupWithName:(id)name fullName:(id)fullName;
- (DDGroup)groupWithName:(id)name fullName:(id)fullName;
- (DDGroup)init;
- (NSSet)aliases;
- (NSSet)nestedGroups;
- (int64_t)hash;
- (void)setAliases:(id)aliases;
@end

@implementation DDGroup

- (NSSet)aliases
{
  v3 = type metadata accessor for Group(0);
  MEMORY[0x28223BE20](v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = OBJC_IVAR___DDGroup__group;
  swift_beginAccess();
  sub_2480D1F28(self + v6, v10);
  swift_dynamicCast();

  sub_2480D8A88(v5, type metadata accessor for Group);
  v7 = sub_2480DCABC();

  return v7;
}

- (void)setAliases:(id)aliases
{
  v4 = type metadata accessor for Group(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2480DCACC();
  v8 = OBJC_IVAR___DDGroup__group;
  swift_beginAccess();
  sub_2480D1F28(self + v8, &v12);
  selfCopy = self;
  swift_dynamicCast();
  *&v6[*(v4 + 32)] = v7;

  v13 = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  sub_2480D8AE8(v6, boxed_opaque_existential_0, type metadata accessor for Group);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((&self->super.isa + v8));
  sub_2480D899C(&v12, (self + v8));
  swift_endAccess();
}

- (NSSet)nestedGroups
{
  v3 = type metadata accessor for Group(0);
  MEMORY[0x28223BE20](v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = OBJC_IVAR___DDGroup__group;
  swift_beginAccess();
  sub_2480D1F28(self + v6, v15);
  selfCopy = self;
  swift_dynamicCast();

  v9 = sub_2480D1304(v8);

  sub_2480D8A88(v5, type metadata accessor for Group);
  sub_2480D8168(v9);

  type metadata accessor for DDGroup(v10);
  sub_2480D8908(&qword_27EE87380, v11, type metadata accessor for DDGroup, MEMORY[0x277D85378]);
  v12 = sub_2480DCABC();

  return v12;
}

- (DDGroup)groupWithName:(id)name fullName:(id)fullName
{
  result = sub_2480DCC8C();
  __break(1u);
  return result;
}

- (DDGroup)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (DDGroup)groupWithName:(id)name fullName:(id)fullName
{
  v4 = sub_2480DCA8C();
  v6 = v5;
  v7 = sub_2480DCA8C();
  v9 = sub_2480D8704(v4, v6, v7, v8);

  return v9;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = DDGroup.hash.getter();

  return v3;
}

@end