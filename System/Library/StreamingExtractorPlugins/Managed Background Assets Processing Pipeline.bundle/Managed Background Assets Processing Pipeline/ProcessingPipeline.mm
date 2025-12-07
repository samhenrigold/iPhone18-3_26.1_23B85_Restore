@interface ProcessingPipeline
- (_TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline)init;
- (_TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline)initWithOptions:(id)options delegate:(id)delegate;
- (void)finishStreamWithCompletionBlock:(id)block;
- (void)prepareForExtractionToPath:(NSString *)path withCompletionBlock:(id)block;
- (void)supplyBytes:(NSData *)bytes withCompletionBlock:(id)block;
- (void)suspendStreamWithCompletionBlock:(id)block;
- (void)terminateStreamWithError:(NSError *)error completionBlock:(id)block;
@end

@implementation ProcessingPipeline

- (_TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline)initWithOptions:(id)options delegate:(id)delegate
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
  return sub_D008(v5, delegate);
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
  v13[4] = &unk_15E18;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_15E20;
  v14[5] = v13;
  pathCopy = path;
  selfCopy = self;
  sub_11540(0, 0, v9, &unk_15E28, v14);
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
  v13[4] = &unk_15DE0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_15DE8;
  v14[5] = v13;
  bytesCopy = bytes;
  selfCopy = self;
  sub_11540(0, 0, v9, &unk_15DF0, v14);
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
  v11[4] = &unk_15DB8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_15DC0;
  v12[5] = v11;
  selfCopy = self;
  sub_11540(0, 0, v7, &unk_15DC8, v12);
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
  v11[4] = &unk_15D80;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_15D88;
  v12[5] = v11;
  selfCopy = self;
  sub_11540(0, 0, v7, &unk_15D90, v12);
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
  v13[4] = &unk_15D20;
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

- (_TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end