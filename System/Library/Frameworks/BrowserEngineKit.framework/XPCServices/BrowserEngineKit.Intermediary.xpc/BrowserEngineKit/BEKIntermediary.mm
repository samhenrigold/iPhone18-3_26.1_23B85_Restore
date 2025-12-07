@interface BEKIntermediary
- (void)createPlaceholderWithFilename:(NSString *)filename completionHandler:(id)handler;
- (void)isEligibleForContext:(int64_t)context completionHandler:(id)handler;
- (void)replacePlaceholderWithPlaceholderFileWrapper:(NSSecurityScopedURLWrapper *)wrapper downloadedFileWrapper:(NSSecurityScopedURLWrapper *)fileWrapper completionHandler:(id)handler;
@end

@implementation BEKIntermediary

- (void)createPlaceholderWithFilename:(NSString *)filename completionHandler:(id)handler
{
  v7 = sub_100002084(&qword_1000106D8, &qword_100007DF8);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = filename;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_10000752C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100007E70;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100007E78;
  v14[5] = v13;
  filenameCopy = filename;

  sub_100006458(0, 0, v9, &unk_100007E80, v14);
}

- (void)replacePlaceholderWithPlaceholderFileWrapper:(NSSecurityScopedURLWrapper *)wrapper downloadedFileWrapper:(NSSecurityScopedURLWrapper *)fileWrapper completionHandler:(id)handler
{
  v9 = sub_100002084(&qword_1000106D8, &qword_100007DF8);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = wrapper;
  v13[3] = fileWrapper;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_10000752C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100007E50;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100007E58;
  v16[5] = v15;
  wrapperCopy = wrapper;
  fileWrapperCopy = fileWrapper;

  sub_100006458(0, 0, v11, &unk_100007E60, v16);
}

- (void)isEligibleForContext:(int64_t)context completionHandler:(id)handler
{
  v7 = sub_100002084(&qword_1000106D8, &qword_100007DF8);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_10000752C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100007E08;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100007E18;
  v14[5] = v13;

  sub_100006458(0, 0, v9, &unk_100007E28, v14);
}

@end