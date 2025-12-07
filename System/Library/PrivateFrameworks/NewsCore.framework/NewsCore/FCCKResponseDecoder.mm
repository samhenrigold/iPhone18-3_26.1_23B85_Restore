@interface FCCKResponseDecoder
+ (void)processResponseWithPayload:(id)payload operationHandler:(id)handler recordHandler:(id)recordHandler completionHandler:(id)completionHandler;
- (FCCKResponseDecoder)init;
@end

@implementation FCCKResponseDecoder

+ (void)processResponseWithPayload:(id)payload operationHandler:(id)handler recordHandler:(id)recordHandler completionHandler:(id)completionHandler
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  v13 = _Block_copy(handler);
  v14 = _Block_copy(recordHandler);
  v15 = _Block_copy(completionHandler);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  v19 = sub_1B67D993C();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = sub_1B644DBF4;
  v20[5] = v17;
  v20[6] = sub_1B648C670;
  v20[7] = v16;
  v20[8] = payload;
  v20[9] = sub_1B648C6AC;
  v20[10] = v18;
  payloadCopy = payload;
  sub_1B644BCA8(0, 0, v12, &unk_1B68131F0, v20);
}

- (FCCKResponseDecoder)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(FCCKResponseDecoder *)&v3 init];
}

@end