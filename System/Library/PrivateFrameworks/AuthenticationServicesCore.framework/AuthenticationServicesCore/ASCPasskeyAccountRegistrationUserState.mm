@interface ASCPasskeyAccountRegistrationUserState
- (NSPersonNameComponents)name;
- (_TtC26AuthenticationServicesCore14ASCPhoneNumber)phoneNumber;
- (_TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState)init;
- (void)encodeWithCoder:(id)coder;
- (void)setEmailAddress:(id)address;
- (void)setName:(id)name;
- (void)setPhoneNumber:(id)number;
- (void)setSelectedCredentialProviderExtensionIdentifier:(id)identifier;
@end

@implementation ASCPasskeyAccountRegistrationUserState

- (NSPersonNameComponents)name
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_name;
  swift_beginAccess();
  sub_1C20EB3E8(self + v6, v5, &unk_1EBF23420, &unk_1C2176820);
  v7 = sub_1C216FF04();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1C216FEE4();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)setName:(id)name
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  if (name)
  {
    sub_1C216FEF4();
    v8 = sub_1C216FF04();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_1C216FF04();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  selfCopy = self;
  sub_1C210C1D0(v7);
}

- (void)setEmailAddress:(id)address
{
  if (address)
  {
    v4 = sub_1C2170914();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddress);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
  selfCopy = self;

  sub_1C210CFEC();
}

- (_TtC26AuthenticationServicesCore14ASCPhoneNumber)phoneNumber
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumber;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPhoneNumber:(id)number
{
  numberCopy = number;
  selfCopy = self;
  sub_1C210D3C4(number);
}

- (void)setSelectedCredentialProviderExtensionIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_1C2170914();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1C210D748(v4, v6);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1C2113480(coderCopy);
}

- (_TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end