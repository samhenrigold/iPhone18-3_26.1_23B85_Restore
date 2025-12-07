@interface TPSAppIntentsHelper
- (TPSAppIntentsHelper)init;
- (void)fetchReturnValueFromEntityNamed:(NSString *)named inBundleId:(NSString *)id withParameters:(NSDictionary *)parameters completionHandler:(id)handler;
- (void)fetchReturnValueFromIntentNamed:(NSString *)named inBundleId:(NSString *)id withParameters:(NSDictionary *)parameters completionHandler:(id)handler;
@end

@implementation TPSAppIntentsHelper

- (void)fetchReturnValueFromIntentNamed:(NSString *)named inBundleId:(NSString *)id withParameters:(NSDictionary *)parameters completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = named;
  v15[3] = id;
  v15[4] = parameters;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_232E016B0();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_232E07F08;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_232E07F10;
  v18[5] = v17;
  namedCopy = named;
  idCopy = id;
  parametersCopy = parameters;
  selfCopy = self;
  sub_232DF3F0C(0, 0, v13, &unk_232E07F18, v18);
}

- (void)fetchReturnValueFromEntityNamed:(NSString *)named inBundleId:(NSString *)id withParameters:(NSDictionary *)parameters completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = named;
  v15[3] = id;
  v15[4] = parameters;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_232E016B0();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_232E07EC8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_232E07ED0;
  v18[5] = v17;
  namedCopy = named;
  idCopy = id;
  parametersCopy = parameters;
  selfCopy = self;
  sub_232DF3F0C(0, 0, v13, &unk_232E07040, v18);
}

- (TPSAppIntentsHelper)init
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super.isa + OBJC_IVAR___TPSAppIntentsHelper_clientLabel);
  *v4 = 0xD000000000000019;
  v4[1] = 0x8000000232E0E3A0;
  *(&self->super.isa + OBJC_IVAR___TPSAppIntentsHelper_source) = 3;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(TPSAppIntentsHelper *)&v6 init];
}

@end