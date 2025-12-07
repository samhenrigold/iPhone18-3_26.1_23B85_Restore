@interface SendAnnouncementIntentHandler
- (_TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler)init;
- (void)dealloc;
- (void)handleSendAnnouncement:(INSendAnnouncementIntent *)announcement completion:(id)completion;
- (void)resolveAnnouncementForSendAnnouncement:(INSendAnnouncementIntent *)announcement withCompletion:(id)completion;
- (void)resolveRecipientsForSendAnnouncement:(INSendAnnouncementIntent *)announcement withCompletion:(id)completion;
@end

@implementation SendAnnouncementIntentHandler

- (_TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler_announce) = 0;
  v3 = OBJC_IVAR____TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler____lazy_storage___logger;
  v4 = sub_100016394();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v6.receiver = self;
  v6.super_class = type metadata accessor for SendAnnouncementIntentHandler(0);
  return [(SendAnnouncementIntentHandler *)&v6 init];
}

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler_announce;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler_announce);
  selfCopy = self;
  if (v4)
  {
    [v4 setDelegate:0];
    v6 = *(&self->super.super.isa + v3);
  }

  else
  {
    v6 = 0;
  }

  *(&self->super.super.isa + v3) = 0;

  v7.receiver = self;
  v7.super_class = type metadata accessor for SendAnnouncementIntentHandler(0);
  [(SendAnnouncementIntentHandler *)&v7 dealloc];
}

- (void)resolveAnnouncementForSendAnnouncement:(INSendAnnouncementIntent *)announcement withCompletion:(id)completion
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
  v13[4] = &unk_100017740;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100017748;
  v14[5] = v13;
  announcementCopy = announcement;
  selfCopy = self;
  sub_100014D80(0, 0, v9, &unk_100017750, v14);
}

- (void)resolveRecipientsForSendAnnouncement:(INSendAnnouncementIntent *)announcement withCompletion:(id)completion
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
  v13[4] = &unk_100017720;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100017728;
  v14[5] = v13;
  announcementCopy = announcement;
  selfCopy = self;
  sub_100014D80(0, 0, v9, &unk_100017730, v14);
}

- (void)handleSendAnnouncement:(INSendAnnouncementIntent *)announcement completion:(id)completion
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
  v13[4] = &unk_100017700;
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

@end