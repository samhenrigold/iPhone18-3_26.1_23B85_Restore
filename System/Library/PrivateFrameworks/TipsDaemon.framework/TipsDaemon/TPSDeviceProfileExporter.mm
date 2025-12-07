@interface TPSDeviceProfileExporter
+ (void)updateDeviceProfileWithDataSource:(TPSDeviceProfileDataSource *)source completionHandler:(id)handler;
- (TPSDeviceProfileExporter)init;
@end

@implementation TPSDeviceProfileExporter

+ (void)updateDeviceProfileWithDataSource:(TPSDeviceProfileDataSource *)source completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = source;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_232E016B0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_232E07030;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_232E07ED0;
  v14[5] = v13;
  swift_unknownObjectRetain();
  sub_232DF3F0C(0, 0, v9, &unk_232E07040, v14);
}

- (TPSDeviceProfileExporter)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TPSDeviceProfileExporter *)&v3 init];
}

@end