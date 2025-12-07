@interface TranscriptionModelAssetService
+ (_TtC10VoiceMemos30TranscriptionModelAssetService)sharedInstance;
- (_TtC10VoiceMemos30TranscriptionModelAssetService)init;
- (void)assetIsInstalledForCurrentLanguageWithCompletionHandler:(id)handler;
- (void)downloadAsset;
- (void)isAvailableWithCompletionHandler:(id)handler;
@end

@implementation TranscriptionModelAssetService

- (_TtC10VoiceMemos30TranscriptionModelAssetService)init
{
  v3 = OBJC_IVAR____TtC10VoiceMemos30TranscriptionModelAssetService__downloadStateValueSubject;
  v6 = 0;
  v7 = 0x80;
  sub_1000C773C(&unk_1002D4150, &qword_10024CA10);
  swift_allocObject();
  *(&self->super.isa + v3) = CurrentValueSubject.init(_:)();
  v5.receiver = self;
  v5.super_class = type metadata accessor for TranscriptionModelAssetService();
  return [(TranscriptionModelAssetService *)&v5 init];
}

+ (_TtC10VoiceMemos30TranscriptionModelAssetService)sharedInstance
{
  if (qword_1002CDF50 != -1)
  {
    swift_once();
  }

  v3 = qword_1002E90D0;

  return v3;
}

- (void)isAvailableWithCompletionHandler:(id)handler
{
  v5 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10024C9E8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100243D40;
  v12[5] = v11;
  selfCopy = self;
  sub_1001A8E50(0, 0, v7, &unk_100243540, v12);
}

- (void)assetIsInstalledForCurrentLanguageWithCompletionHandler:(id)handler
{
  v5 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10024C9F8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10024CA00;
  v12[5] = v11;
  selfCopy = self;
  sub_1001A8E50(0, 0, v7, &unk_10024CA08, v12);
}

- (void)downloadAsset
{
  v3 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  selfCopy = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = selfCopy;
  sub_100179578(0, 0, v5, &unk_10024C9A0, v9);
}

@end