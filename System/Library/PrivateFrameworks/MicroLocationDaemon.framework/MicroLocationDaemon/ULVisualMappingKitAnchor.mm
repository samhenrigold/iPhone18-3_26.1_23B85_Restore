@interface ULVisualMappingKitAnchor
- (NSUUID)uniqueIdentifier;
- (_TtC19MicroLocationDaemon24ULVisualMappingKitAnchor)init;
- (_TtC19MicroLocationDaemon24ULVisualMappingKitAnchor)initWithUniqueIdentifier:(id)identifier location:(id)location;
@end

@implementation ULVisualMappingKitAnchor

- (NSUUID)uniqueIdentifier
{
  v3 = sub_2592121D0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_uniqueIdentifier, v3, v5);
  v8 = sub_259212170();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (_TtC19MicroLocationDaemon24ULVisualMappingKitAnchor)initWithUniqueIdentifier:(id)identifier location:(id)location
{
  ObjectType = swift_getObjectType();
  v7 = sub_2592121D0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_259212190();
  (*(v8 + 16))(self + OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_uniqueIdentifier, v10, v7);
  *(self + OBJC_IVAR____TtC19MicroLocationDaemon24ULVisualMappingKitAnchor_location) = location;
  v14.receiver = self;
  v14.super_class = ObjectType;
  locationCopy = location;
  v12 = [(ULVisualMappingKitAnchor *)&v14 init];
  (*(v8 + 8))(v10, v7);
  return v12;
}

- (_TtC19MicroLocationDaemon24ULVisualMappingKitAnchor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end