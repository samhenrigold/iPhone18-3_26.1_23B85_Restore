@interface XavierEventProcessor
- (_TtC19NewsPersonalization20XavierEventProcessor)init;
- (void)configurationManager:(id)manager appConfigurationDidChange:(id)change;
@end

@implementation XavierEventProcessor

- (_TtC19NewsPersonalization20XavierEventProcessor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)configurationManager:(id)manager appConfigurationDidChange:(id)change
{
  v6 = sub_1C6D76A40();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v17 - v13;
  swift_unknownObjectRetain();
  selfCopy = self;
  personalizationTreatment = [change personalizationTreatment];
  sub_1C6B7A268();

  (*(v7 + 16))(v10, v14, v6);

  sub_1C6D78240();
  swift_unknownObjectRelease();

  (*(v7 + 8))(v14, v6);
}

@end