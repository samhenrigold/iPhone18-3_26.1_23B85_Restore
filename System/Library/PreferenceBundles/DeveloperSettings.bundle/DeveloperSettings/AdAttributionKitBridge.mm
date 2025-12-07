@interface AdAttributionKitBridge
+ (void)getDeveloperModeEnabledWithCompletion:(id)completion;
+ (void)setDeveloperModeEnabled:(BOOL)enabled completion:(id)completion;
- (_TtC17DeveloperSettings22AdAttributionKitBridge)init;
@end

@implementation AdAttributionKitBridge

+ (void)getDeveloperModeEnabledWithCompletion:(id)completion
{
  sub_214DC(&qword_49BF8, &qword_2EB50);
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = sub_26F74();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = sub_225CC;
  v9[5] = v7;
  sub_21964(0, 0, v5, &unk_2EBC0, v9);
}

+ (void)setDeveloperModeEnabled:(BOOL)enabled completion:(id)completion
{
  sub_214DC(&qword_49BF8, &qword_2EB50);
  __chkstk_darwin();
  v7 = &v12 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = sub_26F74();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = enabled;
  *(v11 + 40) = sub_22540;
  *(v11 + 48) = v9;
  sub_21964(0, 0, v7, &unk_2EBB8, v11);
}

- (_TtC17DeveloperSettings22AdAttributionKitBridge)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(AdAttributionKitBridge *)&v3 init];
}

@end