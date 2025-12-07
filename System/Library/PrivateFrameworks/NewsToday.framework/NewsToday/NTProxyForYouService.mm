@interface NTProxyForYouService
- (NTProxyForYouService)init;
- (NTProxyForYouService)initWithFeedPersonalizer:(id)personalizer;
- (void)fetchForYouWithRequest:(NTForYouRequest *)request configuration:(FCNewsAppConfiguration *)configuration fetchDate:(NSDate *)date completionHandler:(id)handler;
@end

@implementation NTProxyForYouService

- (NTProxyForYouService)initWithFeedPersonalizer:(id)personalizer
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___NTProxyForYouService_feedPersonalizer) = personalizer;
  v7.receiver = self;
  v7.super_class = ObjectType;
  swift_unknownObjectRetain();
  return [(NTProxyForYouService *)&v7 init];
}

- (void)fetchForYouWithRequest:(NTForYouRequest *)request configuration:(FCNewsAppConfiguration *)configuration fetchDate:(NSDate *)date completionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED2C0, &qword_25BF73950);
  MEMORY[0x28223BE20]();
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = request;
  v14[3] = configuration;
  v14[4] = date;
  v14[5] = v13;
  v14[6] = self;
  v15 = sub_25BF6CB10();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_25BF73968;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_25BF73978;
  v17[5] = v16;
  requestCopy = request;
  swift_unknownObjectRetain();
  dateCopy = date;
  selfCopy = self;
  sub_25BF5381C(0, 0, v12, &unk_25BF73988, v17);
}

- (NTProxyForYouService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end