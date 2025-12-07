@interface ASCPlatformPublicKeyAccountRegistration
- (_TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration)init;
- (_TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration)initWithEmailIdentifier:(id)identifier phoneIdentifier:(id)phoneIdentifier name:(id)name credentialRegistration:(id)registration;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCPlatformPublicKeyAccountRegistration

- (_TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration)initWithEmailIdentifier:(id)identifier phoneIdentifier:(id)phoneIdentifier name:(id)name credentialRegistration:(id)registration
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v28 - v12;
  if (identifier)
  {
    identifier = sub_1C2170914();
    v15 = v14;
    if (phoneIdentifier)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    if (name)
    {
      goto LABEL_4;
    }

LABEL_7:
    v21 = sub_1C216FF04();
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
    registrationCopy = registration;
    goto LABEL_8;
  }

  v15 = 0;
  if (!phoneIdentifier)
  {
    goto LABEL_6;
  }

LABEL_3:
  phoneIdentifier = sub_1C2170914();
  v17 = v16;
  if (!name)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1C216FEF4();
  v18 = sub_1C216FF04();
  v19 = *(*(v18 - 8) + 56);
  registrationCopy2 = registration;
  v19(v13, 0, 1, v18);
LABEL_8:
  v23 = (&self->super.isa + OBJC_IVAR____TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration_emailIdentifier);
  *v23 = identifier;
  v23[1] = v15;
  v24 = (&self->super.isa + OBJC_IVAR____TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration_phoneIdentifier);
  *v24 = phoneIdentifier;
  v24[1] = v17;
  sub_1C20DB900(v13, self + OBJC_IVAR____TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration_name);
  *(&self->super.isa + OBJC_IVAR____TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration_credentialRegistration) = registration;
  v25 = type metadata accessor for ASCPlatformPublicKeyAccountRegistration(0);
  v28.receiver = self;
  v28.super_class = v25;
  v26 = [(ASCPlatformPublicKeyAccountRegistration *)&v28 init];
  sub_1C20DB970(v13);
  return v26;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1C211D604(coderCopy);
}

- (_TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end