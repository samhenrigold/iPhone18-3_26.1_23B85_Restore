@interface PlayAnnouncementSoundIntentHandler
- (_TtC23AnnounceIntentExtension34PlayAnnouncementSoundIntentHandler)init;
- (void)handlePlayAnnouncementSound:(INPlayAnnouncementSoundIntent *)sound completion:(id)completion;
@end

@implementation PlayAnnouncementSoundIntentHandler

- (void)handlePlayAnnouncementSound:(INPlayAnnouncementSoundIntent *)sound completion:(id)completion
{
  v7 = sub_1000029F0(&unk_100021660, &qword_1000176F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = sound;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1000164C4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100017798;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000175C0;
  v14[5] = v13;
  soundCopy = sound;
  selfCopy = self;
  sub_100014D80(0, 0, v9, &unk_100017710, v14);
}

- (_TtC23AnnounceIntentExtension34PlayAnnouncementSoundIntentHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PlayAnnouncementSoundIntentHandler();
  return [(PlayAnnouncementSoundIntentHandler *)&v3 init];
}

@end