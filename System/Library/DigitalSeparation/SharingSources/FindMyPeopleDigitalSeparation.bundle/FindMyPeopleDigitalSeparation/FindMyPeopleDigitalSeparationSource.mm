@interface FindMyPeopleDigitalSeparationSource
- (_TtC29FindMyPeopleDigitalSeparation35FindMyPeopleDigitalSeparationSource)init;
- (void)fetchSharedResourcesWithCompletion:(id)completion;
- (void)stopAllSharingWithCompletion:(id)completion;
- (void)stopSharing:(DSSharedResource *)sharing withCompletion:(id)completion;
- (void)stopSharingWithParticipant:(DSParticipation *)participant completion:(id)completion;
@end

@implementation FindMyPeopleDigitalSeparationSource

- (void)fetchSharedResourcesWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1DD8(sub_7B78, v5);
}

- (void)stopSharing:(DSSharedResource *)sharing withCompletion:(id)completion
{
  sub_5BC4(&qword_11990, &qword_9458);
  __chkstk_darwin();
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  v10[2] = sharing;
  v10[3] = v9;
  v10[4] = self;
  v11 = sub_8044();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_9500;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_9508;
  v13[5] = v12;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_60F8(0, 0, v8, &unk_9510, v13);
}

- (void)stopSharingWithParticipant:(DSParticipation *)participant completion:(id)completion
{
  sub_5BC4(&qword_11990, &qword_9458);
  __chkstk_darwin();
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  v10[2] = participant;
  v10[3] = v9;
  v10[4] = self;
  v11 = sub_8044();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_94E0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_94E8;
  v13[5] = v12;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_60F8(0, 0, v8, &unk_94F0, v13);
}

- (void)stopAllSharingWithCompletion:(id)completion
{
  sub_5BC4(&qword_11990, &qword_9458);
  __chkstk_darwin();
  v6 = &v13 - v5;
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = self;
  v9 = sub_8044();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_9498;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_94A8;
  v11[5] = v10;
  selfCopy = self;
  sub_60F8(0, 0, v6, &unk_94B8, v11);
}

- (_TtC29FindMyPeopleDigitalSeparation35FindMyPeopleDigitalSeparationSource)init
{
  v3 = sub_7E54();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7E64();
  __chkstk_darwin();
  v7 = DSSourceNameFindMy;
  *(&self->super.isa + OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation35FindMyPeopleDigitalSeparationSource_name) = DSSourceNameFindMy;
  v8 = OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation35FindMyPeopleDigitalSeparationSource_session;
  (*(v4 + 104))(v6, enum case for ClientOrigin.other(_:), v3);
  v9 = v7;
  sub_7E74();
  sub_7F04();
  swift_allocObject();
  v10 = sub_7F14();
  *(&self->super.isa + v8) = v10;
  MyPeopleDigitalSeparationSource = type metadata accessor for FindMyPeopleDigitalSeparationSource(v10, v11);
  v14.receiver = self;
  v14.super_class = MyPeopleDigitalSeparationSource;
  return [(FindMyPeopleDigitalSeparationSource *)&v14 init];
}

@end