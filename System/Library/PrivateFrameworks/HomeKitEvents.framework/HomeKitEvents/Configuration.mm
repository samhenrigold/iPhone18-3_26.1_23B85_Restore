@interface Configuration
+ (CKContainerID)containerID;
+ (id)zoneNameForZoneUUID:(id)d;
+ (id)zoneUUIDForHomeIdentifier:(id)identifier;
+ (void)resetWithCompletion:(id)completion;
- (_TtC13HomeKitEvents13Configuration)init;
@end

@implementation Configuration

- (_TtC13HomeKitEvents13Configuration)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Configuration();
  return [(Configuration *)&v3 init];
}

+ (CKContainerID)containerID
{
  swift_getObjCClassMetadata();
  v2 = sub_2541BC5E0();
  v3 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v4 = sub_25424DCA8();
  v5 = [v3 initWithContainerIdentifier:v4 environment:v2];

  return v5;
}

+ (id)zoneUUIDForHomeIdentifier:(id)identifier
{
  v3 = sub_25424D948();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  sub_25424D908();
  static Configuration.zoneUUID(forHomeIdentifier:)(v7, v9);
  v10 = *(v4 + 8);
  v10(v7, v3);
  v11 = sub_25424D8E8();
  v10(v9, v3);

  return v11;
}

+ (id)zoneNameForZoneUUID:(id)d
{
  v3 = sub_25424D948();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424D908();
  v13 = sub_25424D8D8();
  v14 = v7;
  v11 = 0x2D73746E657665;
  v12 = 0xE700000000000000;
  v11 = sub_25424DE78();
  v12 = v8;
  sub_25424DDD8();
  (*(v4 + 8))(v6, v3);

  v9 = sub_25424DCA8();

  return v9;
}

+ (void)resetWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  swift_getObjCClassMetadata();
  static Configuration.reset(completion:)(sub_2541BE3FC, v4);
}

@end