@interface PrivacyValidationProvider
- (_TtC13NewsAnalytics25PrivacyValidationProvider)init;
- (void)configurationManager:(id)manager appConfigurationDidChange:(id)change;
@end

@implementation PrivacyValidationProvider

- (_TtC13NewsAnalytics25PrivacyValidationProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)configurationManager:(id)manager appConfigurationDidChange:(id)change
{
  v6 = sub_217D8844C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v14 - v11);
  swift_unknownObjectRetain_n();
  selfCopy = self;
  sub_217A4A520(change, v12);
  swift_beginAccess();
  (*(v7 + 16))(v10, v12, v6);

  sub_217D88D9C();
  swift_unknownObjectRelease();

  (*(v7 + 8))(v12, v6);
}

@end