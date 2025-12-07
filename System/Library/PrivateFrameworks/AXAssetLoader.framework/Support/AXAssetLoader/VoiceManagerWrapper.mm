@interface VoiceManagerWrapper
+ (_TtC9axassetsd19VoiceManagerWrapper)shared;
+ (void)setShared:(id)shared;
- (_TtC9axassetsd19VoiceManagerWrapper)init;
- (void)handleDarwinNotification:(NSString *)notification completion:(id)completion;
- (void)run:(id)run;
@end

@implementation VoiceManagerWrapper

+ (_TtC9axassetsd19VoiceManagerWrapper)shared
{
  if (qword_10001DF18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static VoiceManagerWrapper.shared;
}

+ (void)setShared:(id)shared
{
  v3 = qword_10001DF18;
  sharedCopy = shared;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static VoiceManagerWrapper.shared;
  static VoiceManagerWrapper.shared = sharedCopy;
}

- (void)run:(id)run
{
  sub_10000854C(&qword_10001DF68, &qword_100010888);
  __chkstk_darwin();
  v6 = &v13 - v5;
  v7 = _Block_copy(run);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = self;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1000108E0;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000108E8;
  v11[5] = v10;
  selfCopy = self;
  sub_100009760(0, 0, v6, &unk_1000108F0, v11);
}

- (void)handleDarwinNotification:(NSString *)notification completion:(id)completion
{
  sub_10000854C(&qword_10001DF68, &qword_100010888);
  __chkstk_darwin();
  v8 = &v16 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  v10[2] = notification;
  v10[3] = v9;
  v10[4] = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100010898;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000108A8;
  v13[5] = v12;
  notificationCopy = notification;
  selfCopy = self;
  sub_100009760(0, 0, v8, &unk_1000108B8, v13);
}

- (_TtC9axassetsd19VoiceManagerWrapper)init
{
  v3 = OBJC_IVAR____TtC9axassetsd19VoiceManagerWrapper_daemon;
  sub_10000854C(&qword_10001DF28, &qword_100010840);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100010830;
  v5 = type metadata accessor for TTSVBVoiceLoader();
  v6 = TTSVBVoiceLoader.__allocating_init()();
  *(v4 + 56) = v5;
  *(v4 + 64) = sub_100008594();
  *(v4 + 32) = v6;
  type metadata accessor for VoiceDatabaseDaemon();
  swift_allocObject();
  *(&self->super.isa + v3) = VoiceDatabaseDaemon.init(startTransaction:endTransaction:additionalLoaders:)();
  v8.receiver = self;
  v8.super_class = type metadata accessor for VoiceManagerWrapper();
  return [(VoiceManagerWrapper *)&v8 init];
}

@end