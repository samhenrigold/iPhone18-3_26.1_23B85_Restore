@interface MTPlayAudioIntentSupport
+ (void)donate:(NSArray *)donate completionHandler:(id)handler;
- (MTPlayAudioIntentSupport)init;
@end

@implementation MTPlayAudioIntentSupport

+ (void)donate:(NSArray *)donate completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = donate;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_E7324();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_F0778;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_F0788;
  v14[5] = v13;
  donateCopy = donate;
  sub_8E218(0, 0, v9, &unk_F0798, v14);
}

- (MTPlayAudioIntentSupport)init
{
  v3.receiver = self;
  v3.super_class = MTPlayAudioIntentSupport;
  return [(MTPlayAudioIntentSupport *)&v3 init];
}

@end