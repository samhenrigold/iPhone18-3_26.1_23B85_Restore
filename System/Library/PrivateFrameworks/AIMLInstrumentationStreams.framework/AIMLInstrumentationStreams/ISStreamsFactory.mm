@interface ISStreamsFactory
+ (void)constructWithFilter:(ISEventFilter *)filter startTime:(double)time endTime:(double)endTime maxEvents:(int64_t)events lastN:(int64_t)n completionHandler:(id)handler;
+ (void)constructWithFilter:(ISEventFilter *)filter startTime:(double)time endTime:(double)endTime maxEvents:(int64_t)events lastN:(int64_t)n storageURL:(NSURL *)l completionHandler:(id)handler;
+ (void)constructWithFilter:(ISEventFilter *)filter startTimeRelativeToNow:(double)now completionHandler:(id)handler;
+ (void)constructWithFilter:(ISEventFilter *)filter startTimeRelativeToNow:(double)now storageURL:(NSURL *)l completionHandler:(id)handler;
- (ISStreamsFactory)init;
@end

@implementation ISStreamsFactory

+ (void)constructWithFilter:(ISEventFilter *)filter startTime:(double)time endTime:(double)endTime maxEvents:(int64_t)events lastN:(int64_t)n completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF78, &qword_23C87D268);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v24 - v16;
  v18 = _Block_copy(handler);
  v19 = swift_allocObject();
  *(v19 + 16) = filter;
  *(v19 + 24) = time;
  *(v19 + 32) = endTime;
  *(v19 + 40) = events;
  *(v19 + 48) = n;
  *(v19 + 56) = v18;
  *(v19 + 64) = self;
  v20 = sub_23C8719A4();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_23C87D2D8;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_23C87D2E0;
  v22[5] = v21;
  filterCopy = filter;
  sub_23C664E14(0, 0, v17, &unk_23C87D2E8, v22);
}

+ (void)constructWithFilter:(ISEventFilter *)filter startTime:(double)time endTime:(double)endTime maxEvents:(int64_t)events lastN:(int64_t)n storageURL:(NSURL *)l completionHandler:(id)handler
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF78, &qword_23C87D268);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v27 - v18;
  v20 = _Block_copy(handler);
  v21 = swift_allocObject();
  *(v21 + 16) = filter;
  *(v21 + 24) = time;
  *(v21 + 32) = endTime;
  *(v21 + 40) = events;
  *(v21 + 48) = n;
  *(v21 + 56) = l;
  *(v21 + 64) = v20;
  *(v21 + 72) = self;
  v22 = sub_23C8719A4();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_23C87D2B8;
  v23[5] = v21;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_23C87D2C0;
  v24[5] = v23;
  filterCopy = filter;
  lCopy = l;
  sub_23C664E14(0, 0, v19, &unk_23C87D2C8, v24);
}

+ (void)constructWithFilter:(ISEventFilter *)filter startTimeRelativeToNow:(double)now completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF78, &qword_23C87D268);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = filter;
  *(v13 + 24) = now;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_23C8719A4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23C87D298;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23C87D2A0;
  v16[5] = v15;
  filterCopy = filter;
  sub_23C664E14(0, 0, v11, &unk_23C87D2A8, v16);
}

+ (void)constructWithFilter:(ISEventFilter *)filter startTimeRelativeToNow:(double)now storageURL:(NSURL *)l completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF78, &qword_23C87D268);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  *(v15 + 16) = filter;
  *(v15 + 24) = now;
  *(v15 + 32) = l;
  *(v15 + 40) = v14;
  *(v15 + 48) = self;
  v16 = sub_23C8719A4();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23C87D278;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_23C87D280;
  v18[5] = v17;
  filterCopy = filter;
  lCopy = l;
  sub_23C664E14(0, 0, v13, &unk_23C87D288, v18);
}

- (ISStreamsFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for InstrumentationStreamsFactoryBridge();
  return [(ISStreamsFactory *)&v3 init];
}

@end