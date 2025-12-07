@interface Dispatcher
- (_TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher)init;
- (_TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher)initWithOptions:(id)options delegate:(id)delegate;
- (int64_t)extractionMemoryFootprint;
- (void)finishStreamWithCompletionBlock:(id)block;
- (void)prepareForExtractionToPath:(NSString *)path withCompletionBlock:(id)block;
- (void)supplyBytes:(NSData *)bytes withCompletionBlock:(id)block;
- (void)suspendStreamWithCompletionBlock:(id)block;
- (void)terminateStreamWithError:(NSError *)error completionBlock:(id)block;
@end

@implementation Dispatcher

- (int64_t)extractionMemoryFootprint
{
  selfCopy = self;
  v3 = sub_1428();

  return v3;
}

- (_TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher)initWithOptions:(id)options delegate:(id)delegate
{
  if (options)
  {
    v5 = sub_14E18();
  }

  else
  {
    v5 = 0;
  }

  swift_unknownObjectRetain();
  v6 = sub_8B28(v5, delegate);
  swift_unknownObjectRelease();
  return v6;
}

- (void)prepareForExtractionToPath:(NSString *)path withCompletionBlock:(id)block
{
  v7 = sub_75AC(&qword_20A08, &qword_15A20);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(block);
  v11 = swift_allocObject();
  v11[2] = path;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_14F08();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_15AF0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_15AF8;
  v14[5] = v13;
  pathCopy = path;
  selfCopy = self;
  sub_11540(0, 0, v9, &unk_15B00, v14);
}

- (void)supplyBytes:(NSData *)bytes withCompletionBlock:(id)block
{
  v7 = sub_75AC(&qword_20A08, &qword_15A20);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(block);
  v11 = swift_allocObject();
  v11[2] = bytes;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_14F08();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_15AC8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_15AD0;
  v14[5] = v13;
  bytesCopy = bytes;
  selfCopy = self;
  sub_11540(0, 0, v9, &unk_15AD8, v14);
}

- (void)suspendStreamWithCompletionBlock:(id)block
{
  v5 = sub_75AC(&qword_20A08, &qword_15A20);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(block);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_14F08();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_15AA0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_15AA8;
  v12[5] = v11;
  selfCopy = self;
  sub_11540(0, 0, v7, &unk_15AB0, v12);
}

- (void)finishStreamWithCompletionBlock:(id)block
{
  v5 = sub_75AC(&qword_20A08, &qword_15A20);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(block);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_14F08();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_15A78;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_15A80;
  v12[5] = v11;
  selfCopy = self;
  sub_11540(0, 0, v7, &unk_15A88, v12);
}

- (void)terminateStreamWithError:(NSError *)error completionBlock:(id)block
{
  v7 = sub_75AC(&qword_20A08, &qword_15A20);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(block);
  v11 = swift_allocObject();
  v11[2] = error;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_14F08();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_15A30;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_15D30;
  v14[5] = v13;
  errorCopy = error;
  selfCopy = self;
  sub_11540(0, 0, v9, &unk_15A40, v14);
}

- (_TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end