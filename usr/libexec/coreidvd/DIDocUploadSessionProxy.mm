@interface DIDocUploadSessionProxy
- (_TtC8coreidvd23DIDocUploadSessionProxy)init;
- (void)cancelUploads;
- (void)uploadDocData:(NSArray *)data uploadSettings:(DIDocUploadSettings *)settings completion:(id)completion;
@end

@implementation DIDocUploadSessionProxy

- (void)uploadDocData:(NSArray *)data uploadSettings:(DIDocUploadSettings *)settings completion:(id)completion
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = data;
  v13[3] = settings;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E5710;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006D9180;
  v16[5] = v15;
  dataCopy = data;
  settingsCopy = settings;
  selfCopy = self;
  sub_100500D54(0, 0, v11, &unk_1006E13D0, v16);
}

- (void)cancelUploads
{
  selfCopy = self;
  sub_10047DDB4();
}

- (_TtC8coreidvd23DIDocUploadSessionProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end