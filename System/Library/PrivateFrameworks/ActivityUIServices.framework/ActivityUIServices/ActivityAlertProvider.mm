@interface ActivityAlertProvider
- (ACAlertPresentationOptions)presentationOptions;
- (NSString)identifier;
- (TLAlertConfiguration)configuration;
- (_TtC18ActivityUIServices21ActivityAlertProvider)init;
- (_TtC18ActivityUIServices21ActivityAlertProvider)initWithIdentifier:(id)identifier action:(int64_t)action presentationOptions:(id)options payload:(id)payload;
@end

@implementation ActivityAlertProvider

- (NSString)identifier
{

  v2 = sub_18E65F8F0();

  return v2;
}

- (TLAlertConfiguration)configuration
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_configuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (ACAlertPresentationOptions)presentationOptions
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_presentationOptions;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (_TtC18ActivityUIServices21ActivityAlertProvider)initWithIdentifier:(id)identifier action:(int64_t)action presentationOptions:(id)options payload:(id)payload
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D08, &qword_18E663F30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_18E65F900();
  v14 = v13;
  if (payload)
  {
    v15 = sub_18E65F5D0();
    sub_18E624678();
    sub_18E65F670();
    (*(*(v15 - 8) + 56))(v11, 0, 1, v15);
  }

  else
  {
    v16 = sub_18E65F5D0();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  }

  optionsCopy = options;
  v18 = sub_18E611A08(v12, v14, action, options, v11);

  return v18;
}

- (_TtC18ActivityUIServices21ActivityAlertProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end