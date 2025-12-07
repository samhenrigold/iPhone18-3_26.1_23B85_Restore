@interface CSFGMAnalyticsProvider
- (void)sendAction:(int64_t)action completionHandler:(id)handler;
@end

@implementation CSFGMAnalyticsProvider

- (void)sendAction:(int64_t)action completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = action;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1DF564B44();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1DF56A6F0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1DF5692D0;
  v14[5] = v13;
  selfCopy = self;
  sub_1DF51CC08(0, 0, v9, &unk_1DF56A700, v14);
}

@end