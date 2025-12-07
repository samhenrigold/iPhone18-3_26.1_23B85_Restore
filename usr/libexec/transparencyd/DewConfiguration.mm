@interface DewConfiguration
- (_TtC13transparencyd16DewConfiguration)init;
- (_TtC13transparencyd16DewConfiguration)initWithSettings:(id)settings;
@end

@implementation DewConfiguration

- (_TtC13transparencyd16DewConfiguration)initWithSettings:(id)settings
{
  ObjectType = swift_getObjectType();
  type metadata accessor for DewGlobalOverrides();
  v5 = swift_allocObject();
  swift_unknownObjectRetain();
  *(v5 + 16) = sub_1000031DC(_swiftEmptyArrayStorage);
  *(v5 + 24) = 0;
  v6 = (*(ObjectType + 104))(v5, settings);
  swift_deallocPartialClassInstance();
  return v6;
}

- (_TtC13transparencyd16DewConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end