@interface _LTTranslationToolKit
+ (void)launchAppWithCompletionHandler:(id)handler;
+ (void)startPersonalTranslationSession:(id)session;
- (_LTTranslationToolKit)init;
@end

@implementation _LTTranslationToolKit

+ (void)startPersonalTranslationSession:(id)session
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC5960, &qword_23AB4D400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = _Block_copy(session);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v10 = sub_23AB46DC8();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = ObjCClassMetadata;
  v11[5] = sub_23AB3A344;
  v11[6] = v8;
  sub_23AB375D4(0, 0, v6, &unk_23AB4D4E8, v11);
}

+ (void)launchAppWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC5960, &qword_23AB4D400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_23AB46DC8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23AB4D410;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23AB4D420;
  v12[5] = v11;
  sub_23AB3869C(0, 0, v7, &unk_23AB4D430, v12);
}

- (_LTTranslationToolKit)init
{
  v3.receiver = self;
  v3.super_class = _LTTranslationToolKit;
  return [(_LTTranslationToolKit *)&v3 init];
}

@end