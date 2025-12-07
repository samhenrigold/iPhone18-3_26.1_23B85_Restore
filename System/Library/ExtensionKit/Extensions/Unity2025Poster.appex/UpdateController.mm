@interface UpdateController
- (_TtC15Unity2025Poster16UpdateController)init;
- (void)updateDescriptors:(NSDictionary *)descriptors withSessionInfo:(PRUpdatingSessionInfo *)info completion:(id)completion;
@end

@implementation UpdateController

- (void)updateDescriptors:(NSDictionary *)descriptors withSessionInfo:(PRUpdatingSessionInfo *)info completion:(id)completion
{
  v9 = sub_100004698(&qword_100023A88, &qword_100015088);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = descriptors;
  v13[3] = info;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1000130D4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100015098;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000150A8;
  v16[5] = v15;
  descriptorsCopy = descriptors;
  infoCopy = info;
  selfCopy = self;
  sub_100011B44(0, 0, v11, &unk_1000150B8, v16);
}

- (_TtC15Unity2025Poster16UpdateController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UpdateController();
  return [(UpdateController *)&v3 init];
}

@end