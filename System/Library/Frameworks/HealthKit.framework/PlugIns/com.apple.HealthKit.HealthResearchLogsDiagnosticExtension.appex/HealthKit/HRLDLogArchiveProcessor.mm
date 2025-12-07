@interface HRLDLogArchiveProcessor
- (BOOL)writeLogsToDiskFrom:(id)from error:(id *)error progressHandler:(id)handler;
- (HRLDLogArchiveProcessor)init;
- (HRLDLogArchiveProcessor)initWithArchiveStartDate:(id)date deviceName:(id)name logArchiveURL:(id)l outputFileURL:(id)rL redactedToken:(id)token windowSize:(double)size error:(id *)error;
@end

@implementation HRLDLogArchiveProcessor

- (HRLDLogArchiveProcessor)initWithArchiveStartDate:(id)date deviceName:(id)name logArchiveURL:(id)l outputFileURL:(id)rL redactedToken:(id)token windowSize:(double)size error:(id *)error
{
  v10 = sub_100007738();
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v25[-v14];
  v16 = sub_1000077E8();
  __chkstk_darwin(v16 - 8);
  v18 = &v25[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000077C8();
  v19 = sub_100007808();
  v21 = v20;
  sub_100007718();
  sub_100007718();
  v22 = sub_100007808();
  return sub_100001E10(v18, v19, v21, v15, v13, v22, v23, size);
}

- (BOOL)writeLogsToDiskFrom:(id)from error:(id *)error progressHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_1000078B8();
  _Block_copy(v6);
  selfCopy = self;
  sub_100002704(v7, selfCopy, v6);

  _Block_release(v6);

  return 1;
}

- (HRLDLogArchiveProcessor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end