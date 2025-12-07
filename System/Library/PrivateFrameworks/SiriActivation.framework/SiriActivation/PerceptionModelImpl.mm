@interface PerceptionModelImpl
- (void)performQuery:(int64_t)query completionHandler:(id)handler;
@end

@implementation PerceptionModelImpl

- (void)performQuery:(int64_t)query completionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2989A8, &qword_1C818FE08);
  MEMORY[0x1EEE9AC00]();
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  v10[2] = query;
  v10[3] = v9;
  v10[4] = self;
  v11 = sub_1C81889FC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1C818FE18;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1C818FE28;
  v13[5] = v12;

  sub_1C8184A70(0, 0, v8, &unk_1C818FE38, v13);
}

@end