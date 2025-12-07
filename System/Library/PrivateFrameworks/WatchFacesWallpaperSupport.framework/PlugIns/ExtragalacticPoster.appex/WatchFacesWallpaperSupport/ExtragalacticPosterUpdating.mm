@interface ExtragalacticPosterUpdating
- (_TtC19ExtragalacticPoster27ExtragalacticPosterUpdating)init;
- (void)updateConfiguration:(PRPosterConfiguration *)configuration withSessionInfo:(PRUpdatingSessionInfo *)info completion:(id)completion;
- (void)updateDescriptors:(NSDictionary *)descriptors withSessionInfo:(PRUpdatingSessionInfo *)info completion:(id)completion;
@end

@implementation ExtragalacticPosterUpdating

- (_TtC19ExtragalacticPoster27ExtragalacticPosterUpdating)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ExtragalacticPosterUpdating();
  return [(ExtragalacticPosterUpdating *)&v3 init];
}

- (void)updateDescriptors:(NSDictionary *)descriptors withSessionInfo:(PRUpdatingSessionInfo *)info completion:(id)completion
{
  v9 = sub_100002504(&qword_1000234E8, &qword_100016170);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = descriptors;
  v13[3] = info;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1000139C8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000161C8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000161D0;
  v16[5] = v15;
  descriptorsCopy = descriptors;
  infoCopy = info;
  selfCopy = self;
  sub_10000A330(0, 0, v11, &unk_1000161D8, v16);
}

- (void)updateConfiguration:(PRPosterConfiguration *)configuration withSessionInfo:(PRUpdatingSessionInfo *)info completion:(id)completion
{
  v9 = sub_100002504(&qword_1000234E8, &qword_100016170);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = configuration;
  v13[3] = info;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1000139C8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100016180;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100016190;
  v16[5] = v15;
  configurationCopy = configuration;
  infoCopy = info;
  selfCopy = self;
  sub_10000A330(0, 0, v11, &unk_1000161A0, v16);
}

@end