@interface RDStatusSharer
- (void)shareStatusWithEstimate:(RDEstimate *)estimate completionHandler:(id)handler;
- (void)shareStatusesWithEstimates:(NSArray *)estimates completionHandler:(id)handler;
@end

@implementation RDStatusSharer

- (void)shareStatusWithEstimate:(RDEstimate *)estimate completionHandler:(id)handler
{
  v7 = sub_100008DB0(&qword_100018FC0, &qword_10000FAE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = estimate;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_10000E504();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10000FB38;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10000FB40;
  v14[5] = v13;
  estimateCopy = estimate;
  selfCopy = self;
  sub_10000712C(0, 0, v9, &unk_10000FB48, v14);
}

- (void)shareStatusesWithEstimates:(NSArray *)estimates completionHandler:(id)handler
{
  v7 = sub_100008DB0(&qword_100018FC0, &qword_10000FAE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = estimates;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_10000E504();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10000FAF0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10000FB00;
  v14[5] = v13;
  estimatesCopy = estimates;
  selfCopy = self;
  sub_10000712C(0, 0, v9, &unk_10000FB10, v14);
}

@end