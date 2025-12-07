@interface GradientTranscriptBackgroundPosterDelegate
- (_TtC33GradientBackgroundPosterExtension42GradientTranscriptBackgroundPosterDelegate)init;
- (void)updateDescriptors:(NSDictionary *)descriptors withSessionInfo:(PRUpdatingSessionInfo *)info completion:(id)completion;
@end

@implementation GradientTranscriptBackgroundPosterDelegate

- (void)updateDescriptors:(NSDictionary *)descriptors withSessionInfo:(PRUpdatingSessionInfo *)info completion:(id)completion
{
  v9 = sub_1000054B8(&qword_10005D9A0, &qword_100044440);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = descriptors;
  v13[3] = info;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_100041A0C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100044450;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100044460;
  v16[5] = v15;
  descriptorsCopy = descriptors;
  infoCopy = info;
  selfCopy = self;
  sub_10000DA88(0, 0, v11, &unk_100044470, v16);
}

- (_TtC33GradientBackgroundPosterExtension42GradientTranscriptBackgroundPosterDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end