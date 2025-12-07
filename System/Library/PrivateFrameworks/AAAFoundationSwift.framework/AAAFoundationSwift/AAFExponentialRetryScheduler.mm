@interface AAFExponentialRetryScheduler
- (AAFExponentialRetryScheduler)init;
- (AAFExponentialRetryScheduler)initWithMaxRetries:(int64_t)retries power:(double)power;
- (void)scheduleTask:(AAFExponentialRetryScheduler *)self shouldRetry:(SEL)retry completionHandler:(id)handler;
@end

@implementation AAFExponentialRetryScheduler

- (AAFExponentialRetryScheduler)initWithMaxRetries:(int64_t)retries power:(double)power
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v6 = objc_allocWithZone(swift_getObjectType());
  v7 = ExponentialRetryScheduler.init(maxRetries:power:schedulerDelay:)(retries, v9, power);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

- (void)scheduleTask:(AAFExponentialRetryScheduler *)self shouldRetry:(SEL)retry completionHandler:(id)handler
{
  v5 = v4;
  v6 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = _Block_copy(v6);
  v14 = _Block_copy(v5);
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v13;
  v15[4] = v14;
  v15[5] = self;
  v16 = sub_1B99F3EC4();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1B99F8800;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1B99F8810;
  v18[5] = v17;
  selfCopy = self;
  sub_1B99DF280(0, 0, v11, &unk_1B99F8820, v18);
}

- (AAFExponentialRetryScheduler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end