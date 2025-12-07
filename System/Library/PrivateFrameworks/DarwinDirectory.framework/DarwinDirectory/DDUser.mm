@interface DDUser
+ (id)userWithName:(id)name fullName:(id)fullName primaryGroup:(id)group;
- (DDGroup)primaryGroup;
- (DDUser)init;
- (DDUser)userWithName:(id)name fullName:(id)fullName primaryGroup:(id)group;
- (NSSet)aliases;
- (NSSet)memberships;
- (NSString)homeDirectory;
- (NSString)shell;
- (int64_t)hash;
- (void)setAliases:(id)aliases;
- (void)setHomeDirectory:(id)directory;
- (void)setPrimaryGroup:(id)group;
- (void)setShell:(id)shell;
@end

@implementation DDUser

- (NSString)homeDirectory
{
  v3 = type metadata accessor for User(0);
  MEMORY[0x28223BE20](v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = OBJC_IVAR___DDUser__user;
  swift_beginAccess();
  sub_2480D1F28(self + v6, v10);
  swift_dynamicCast();

  sub_2480D8A88(v5, type metadata accessor for User);
  v7 = sub_2480DCA7C();

  return v7;
}

- (void)setHomeDirectory:(id)directory
{
  v4 = type metadata accessor for User(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2480DCA8C();
  v9 = v8;
  v10 = OBJC_IVAR___DDUser__user;
  swift_beginAccess();
  sub_2480D1F28(self + v10, &v15);
  selfCopy = self;
  swift_dynamicCast();
  v12 = &v6[*(v4 + 36)];
  *v12 = v7;
  v12[1] = v9;

  v16 = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v15);
  sub_2480D8AE8(v6, boxed_opaque_existential_0, type metadata accessor for User);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((&self->super.isa + v10));
  sub_2480D899C(&v15, (self + v10));
  swift_endAccess();
}

- (DDGroup)primaryGroup
{
  selfCopy = self;
  v3 = sub_2480D06AC();

  return v3;
}

- (void)setPrimaryGroup:(id)group
{
  groupCopy = group;
  selfCopy = self;
  sub_2480D0918(groupCopy, selfCopy);
}

- (NSString)shell
{
  v3 = type metadata accessor for User(0);
  MEMORY[0x28223BE20](v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = OBJC_IVAR___DDUser__user;
  swift_beginAccess();
  sub_2480D1F28(self + v6, v10);
  swift_dynamicCast();

  sub_2480D8A88(v5, type metadata accessor for User);
  v7 = sub_2480DCA7C();

  return v7;
}

- (void)setShell:(id)shell
{
  v4 = type metadata accessor for User(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2480DCA8C();
  v9 = v8;
  v10 = OBJC_IVAR___DDUser__user;
  swift_beginAccess();
  sub_2480D1F28(self + v10, &v15);
  selfCopy = self;
  swift_dynamicCast();
  v12 = &v6[*(v4 + 40)];
  *v12 = v7;
  v12[1] = v9;

  v16 = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v15);
  sub_2480D8AE8(v6, boxed_opaque_existential_0, type metadata accessor for User);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((&self->super.isa + v10));
  sub_2480D899C(&v15, (self + v10));
  swift_endAccess();
}

- (NSSet)aliases
{
  v3 = type metadata accessor for User(0);
  MEMORY[0x28223BE20](v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = OBJC_IVAR___DDUser__user;
  swift_beginAccess();
  sub_2480D1F28(self + v6, v10);
  swift_dynamicCast();

  sub_2480D8A88(v5, type metadata accessor for User);
  v7 = sub_2480DCABC();

  return v7;
}

- (void)setAliases:(id)aliases
{
  v4 = type metadata accessor for User(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2480DCACC();
  v8 = OBJC_IVAR___DDUser__user;
  swift_beginAccess();
  sub_2480D1F28(self + v8, &v12);
  selfCopy = self;
  swift_dynamicCast();
  *&v6[*(v4 + 48)] = v7;

  v13 = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  sub_2480D8AE8(v6, boxed_opaque_existential_0, type metadata accessor for User);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((&self->super.isa + v8));
  sub_2480D899C(&v12, (self + v8));
  swift_endAccess();
}

- (NSSet)memberships
{
  v3 = type metadata accessor for User(0);
  MEMORY[0x28223BE20](v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = OBJC_IVAR___DDUser__user;
  swift_beginAccess();
  sub_2480D1F28(self + v6, v15);
  selfCopy = self;
  swift_dynamicCast();

  v9 = sub_2480D1304(v8);

  sub_2480D8A88(v5, type metadata accessor for User);
  sub_2480D8168(v9);

  type metadata accessor for DDGroup(v10);
  sub_2480D8908(&qword_27EE87380, v11, type metadata accessor for DDGroup, MEMORY[0x277D85378]);
  v12 = sub_2480DCABC();

  return v12;
}

- (DDUser)userWithName:(id)name fullName:(id)fullName primaryGroup:(id)group
{
  result = sub_2480DCC8C();
  __break(1u);
  return result;
}

- (DDUser)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)userWithName:(id)name fullName:(id)fullName primaryGroup:(id)group
{
  v6 = sub_2480DCA8C();
  v8 = v7;
  v9 = sub_2480DCA8C();
  v11 = v10;
  groupCopy = group;
  v13 = sub_2480D8458(v6, v8, v9, v11, groupCopy);

  return v13;
}

- (int64_t)hash
{
  v3 = type metadata accessor for User(0);
  MEMORY[0x28223BE20](v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___DDUser__user;
  swift_beginAccess();
  sub_2480D1F28(self + v6, v10);
  selfCopy = self;
  swift_dynamicCast();
  sub_2480DCCCC();
  User.hash(into:)(v10);
  v8 = sub_2480DCD0C();

  sub_2480D8A88(v5, type metadata accessor for User);
  return v8;
}

@end