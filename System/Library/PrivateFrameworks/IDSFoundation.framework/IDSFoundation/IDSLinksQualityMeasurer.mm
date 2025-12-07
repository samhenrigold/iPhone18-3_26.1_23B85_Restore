@interface IDSLinksQualityMeasurer
- (IDSLinksQualityMeasurer)init;
- (IDSLinksQualityMeasurer)initWithTimeFn:(id)fn;
- (void)addLink:(IDSTestableLinkWithScheduler *)link uniqueID:(NSUUID *)d completionHandler:(id)handler;
- (void)deltaSince:(IDSLinksQualityMeasurerSyncToken *)since completionHandler:(id)handler;
- (void)generateReportWithCompletionHandler:(id)handler;
- (void)importDelta:(IDSLinksQualityMeasurerDelta *)delta sourceName:(NSString *)name completionHandler:(id)handler;
- (void)removeAllLinksWithCompletionHandler:(id)handler;
- (void)removeLink:(IDSTestableLinkWithScheduler *)link completionHandler:(id)handler;
- (void)startCapturingBasicStats:(BOOL)stats sendBursts:(BOOL)bursts completionHandler:(id)handler;
- (void)stopWithCompletionHandler:(id)handler;
@end

@implementation IDSLinksQualityMeasurer

- (IDSLinksQualityMeasurer)initWithTimeFn:(id)fn
{
  v4 = _Block_copy(fn);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  type metadata accessor for _IDSLinksQualityMeasurer(0);
  swift_allocObject();

  *(&self->super.isa + OBJC_IVAR___IDSLinksQualityMeasurer_measurer) = _IDSLinksQualityMeasurer.init(timeFn:)(sub_1A7D53CC8, v5);
  v8.receiver = self;
  v8.super_class = IDSLinksQualityMeasurer;
  v6 = [(IDSLinksQualityMeasurer *)&v8 init];

  return v6;
}

- (void)addLink:(IDSTestableLinkWithScheduler *)link uniqueID:(NSUUID *)d completionHandler:(id)handler
{
  v9 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = link;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1A7E226D0();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A7E49C38;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A7E49C40;
  v16[5] = v15;
  linkCopy = link;
  dCopy = d;
  selfCopy = self;
  sub_1A7DE5274(0, 0, v11, &unk_1A7E49C48, v16);
}

- (void)removeLink:(IDSTestableLinkWithScheduler *)link completionHandler:(id)handler
{
  v7 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = link;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1A7E226D0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A7E49C10;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A7E49C18;
  v14[5] = v13;
  linkCopy = link;
  selfCopy = self;
  sub_1A7DE5274(0, 0, v9, &unk_1A7E49C20, v14);
}

- (void)removeAllLinksWithCompletionHandler:(id)handler
{
  v5 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1A7E226D0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1A7E49BE8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1A7E49BF0;
  v12[5] = v11;
  selfCopy = self;
  sub_1A7DE5274(0, 0, v7, &unk_1A7E49BF8, v12);
}

- (void)startCapturingBasicStats:(BOOL)stats sendBursts:(BOOL)bursts completionHandler:(id)handler
{
  v9 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = stats;
  *(v13 + 17) = bursts;
  *(v13 + 24) = v12;
  *(v13 + 32) = self;
  v14 = sub_1A7E226D0();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A7E49BC8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A7E49BD0;
  v16[5] = v15;
  selfCopy = self;
  sub_1A7DE5274(0, 0, v11, &unk_1A7E49BD8, v16);
}

- (void)stopWithCompletionHandler:(id)handler
{
  v5 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1A7E226D0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1A7E49BA8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1A7E49BB0;
  v12[5] = v11;
  selfCopy = self;
  sub_1A7DE5274(0, 0, v7, &unk_1A7E49BB8, v12);
}

- (void)generateReportWithCompletionHandler:(id)handler
{
  v5 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1A7E226D0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1A7E49B80;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1A7E49B88;
  v12[5] = v11;
  selfCopy = self;
  sub_1A7DE5274(0, 0, v7, &unk_1A7E49B90, v12);
}

- (void)deltaSince:(IDSLinksQualityMeasurerSyncToken *)since completionHandler:(id)handler
{
  v7 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = since;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1A7E226D0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A7E49B58;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A7E49B60;
  v14[5] = v13;
  sinceCopy = since;
  selfCopy = self;
  sub_1A7DE5274(0, 0, v9, &unk_1A7E49B68, v14);
}

- (void)importDelta:(IDSLinksQualityMeasurerDelta *)delta sourceName:(NSString *)name completionHandler:(id)handler
{
  v9 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = delta;
  v13[3] = name;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1A7E226D0();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A7E49B48;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A7E48E60;
  v16[5] = v15;
  deltaCopy = delta;
  nameCopy = name;
  selfCopy = self;
  sub_1A7DE5274(0, 0, v11, &unk_1A7E45700, v16);
}

- (IDSLinksQualityMeasurer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end