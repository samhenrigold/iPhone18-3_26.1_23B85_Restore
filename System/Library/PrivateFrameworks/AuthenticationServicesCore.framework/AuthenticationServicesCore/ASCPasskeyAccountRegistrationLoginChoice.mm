@interface ASCPasskeyAccountRegistrationLoginChoice
- (_TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice)init;
- (void)contactIdentifierValueWithCompletionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCPasskeyAccountRegistrationLoginChoice

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1C20DAA7C(coderCopy);
}

- (void)contactIdentifierValueWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1C2170BE4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1C21768A0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1C21799C0;
  v12[5] = v11;
  selfCopy = self;
  sub_1C2166D88(0, 0, v7, &unk_1C21768B0, v12);
}

- (_TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end