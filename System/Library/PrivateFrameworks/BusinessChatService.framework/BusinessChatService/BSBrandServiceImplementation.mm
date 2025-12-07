@interface BSBrandServiceImplementation
- (BSBrandServiceImplementation)init;
- (void)assetDataForBrandURI:(NSString *)i URL:(NSURL *)l type:(int64_t)type usingSim:(NSString *)sim cachingEnabled:(BOOL)enabled completion:(id)completion;
- (void)brandAssetWithIdentifier:(NSString *)identifier forService:(NSString *)service completion:(id)completion;
- (void)brandDataWithIdentifier:(NSString *)identifier forService:(NSString *)service completion:(id)completion;
- (void)clearCachedAssetsForBrandURI:(NSString *)i completion:(id)completion;
- (void)clearUnusedCachedLogos:(id)logos;
- (void)fetchAssetWithURL:(NSURL *)l assetType:(int64_t)type completion:(id)completion;
- (void)isBrandRegisteredWithIdentifier:(NSString *)identifier forService:(NSString *)service completion:(id)completion;
- (void)isBrandRegisteredWithIdentifier:(NSString *)identifier forService:(NSString *)service timeout:(double)timeout completion:(id)completion;
- (void)logoFileURLForBrandURI:(id)i remoteURL:(id)l completion:(id)completion;
@end

@implementation BSBrandServiceImplementation

- (void)assetDataForBrandURI:(NSString *)i URL:(NSURL *)l type:(int64_t)type usingSim:(NSString *)sim cachingEnabled:(BOOL)enabled completion:(id)completion
{
  v15 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v27 - v16;
  v18 = _Block_copy(completion);
  v19 = swift_allocObject();
  *(v19 + 16) = i;
  *(v19 + 24) = l;
  *(v19 + 32) = type;
  *(v19 + 40) = sim;
  *(v19 + 48) = enabled;
  *(v19 + 56) = v18;
  *(v19 + 64) = self;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_100020C68;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_100020C70;
  v22[5] = v21;
  iCopy = i;
  lCopy = l;
  simCopy = sim;
  selfCopy = self;
  sub_10000DDC4(0, 0, v17, &unk_100020C78, v22);
}

- (void)logoFileURLForBrandURI:(id)i remoteURL:(id)l completion:(id)completion
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);
  selfCopy = self;
  sub_1000115CC(v12, v14, v10, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v8 + 8))(v10, v7);
}

- (void)fetchAssetWithURL:(NSURL *)l assetType:(int64_t)type completion:(id)completion
{
  v9 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = l;
  v13[3] = type;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100020C40;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100020C48;
  v16[5] = v15;
  lCopy = l;
  selfCopy = self;
  sub_10000DDC4(0, 0, v11, &unk_100020C50, v16);
}

- (void)clearCachedAssetsForBrandURI:(NSString *)i completion:(id)completion
{
  v7 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = i;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100020C20;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100020C28;
  v14[5] = v13;
  iCopy = i;
  selfCopy = self;
  sub_10000DDC4(0, 0, v9, &unk_100020C30, v14);
}

- (void)clearUnusedCachedLogos:(id)logos
{
  v5 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(logos);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100020C00;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100020C08;
  v12[5] = v11;
  selfCopy = self;
  sub_10000DDC4(0, 0, v7, &unk_100020C10, v12);
}

- (void)isBrandRegisteredWithIdentifier:(NSString *)identifier forService:(NSString *)service completion:(id)completion
{
  v9 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = identifier;
  v13[3] = service;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100020BE0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100020BE8;
  v16[5] = v15;
  identifierCopy = identifier;
  serviceCopy = service;
  selfCopy = self;
  sub_10000DDC4(0, 0, v11, &unk_100020BF0, v16);
}

- (void)isBrandRegisteredWithIdentifier:(NSString *)identifier forService:(NSString *)service timeout:(double)timeout completion:(id)completion
{
  v11 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  *(v15 + 16) = identifier;
  *(v15 + 24) = service;
  *(v15 + 32) = timeout;
  *(v15 + 40) = v14;
  *(v15 + 48) = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100020BC0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100020BC8;
  v18[5] = v17;
  identifierCopy = identifier;
  serviceCopy = service;
  selfCopy = self;
  sub_10000DDC4(0, 0, v13, &unk_100020BD0, v18);
}

- (void)brandDataWithIdentifier:(NSString *)identifier forService:(NSString *)service completion:(id)completion
{
  v9 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = identifier;
  v13[3] = service;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100020BA0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100020BA8;
  v16[5] = v15;
  identifierCopy = identifier;
  serviceCopy = service;
  selfCopy = self;
  sub_10000DDC4(0, 0, v11, &unk_100020BB0, v16);
}

- (void)brandAssetWithIdentifier:(NSString *)identifier forService:(NSString *)service completion:(id)completion
{
  v9 = sub_100001DC4(&qword_10002E178, &unk_1000209B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = identifier;
  v13[3] = service;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100020B58;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100020B68;
  v16[5] = v15;
  identifierCopy = identifier;
  serviceCopy = service;
  selfCopy = self;
  sub_10000DDC4(0, 0, v11, &unk_100020B78, v16);
}

- (BSBrandServiceImplementation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end