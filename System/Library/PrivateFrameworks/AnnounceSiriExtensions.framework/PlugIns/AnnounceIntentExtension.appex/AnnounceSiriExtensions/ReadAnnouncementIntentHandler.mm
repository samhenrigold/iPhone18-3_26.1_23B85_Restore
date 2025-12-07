@interface ReadAnnouncementIntentHandler
- (_TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler)init;
- (void)confirmReadAnnouncement:(INReadAnnouncementIntent *)announcement completion:(id)completion;
- (void)connectionInvalidated;
- (void)dealloc;
- (void)handleReadAnnouncement:(INReadAnnouncementIntent *)announcement completion:(id)completion;
@end

@implementation ReadAnnouncementIntentHandler

- (void)dealloc
{
  selfCopy = self;
  sub_1000065E4();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for ReadAnnouncementIntentHandler(0);
  [(ReadAnnouncementIntentHandler *)&v3 dealloc];
}

- (void)confirmReadAnnouncement:(INReadAnnouncementIntent *)announcement completion:(id)completion
{
  v7 = sub_1000029F0(&unk_100021660, &qword_1000176F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = announcement;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1000164C4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000175D8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000175E0;
  v14[5] = v13;
  announcementCopy = announcement;
  selfCopy = self;
  sub_100014D80(0, 0, v9, &unk_1000175E8, v14);
}

- (void)handleReadAnnouncement:(INReadAnnouncementIntent *)announcement completion:(id)completion
{
  v7 = sub_1000029F0(&unk_100021660, &qword_1000176F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = announcement;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1000164C4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000175B8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000175C0;
  v14[5] = v13;
  announcementCopy = announcement;
  selfCopy = self;
  sub_100014D80(0, 0, v9, &unk_100017710, v14);
}

- (_TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_playbackOptions) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_announce) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_localPlaybackSession) = 0;
  v3 = OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_endpointIdentifier;
  v4 = sub_100016374();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler____lazy_storage___logger;
  v6 = sub_100016394();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v8.receiver = self;
  v8.super_class = type metadata accessor for ReadAnnouncementIntentHandler(0);
  return [(ReadAnnouncementIntentHandler *)&v8 init];
}

- (void)connectionInvalidated
{
  selfCopy = self;
  sub_1000065E4();
}

@end