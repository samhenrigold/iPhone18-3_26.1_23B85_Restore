@interface ReportAConcernObjCBridge
+ (void)evaluateWithInteraction:(id)interaction action:(int64_t)action showFeedbackForm:(BOOL)form associateWithAppleAccount:(BOOL)account sceneID:(id)d presentingBundleId:(id)id completion:(id)completion;
+ (void)presentedWithInteraction:(id)interaction completion:(id)completion;
- (_TtC15FeedbackService24ReportAConcernObjCBridge)init;
@end

@implementation ReportAConcernObjCBridge

+ (void)evaluateWithInteraction:(id)interaction action:(int64_t)action showFeedbackForm:(BOOL)form associateWithAppleAccount:(BOOL)account sceneID:(id)d presentingBundleId:(id)id completion:(id)completion
{
  accountCopy = account;
  formCopy = form;
  actionCopy = action;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4100, &qword_1B01511B0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &actionCopy - v13;
  v15 = _Block_copy(completion);
  if (!d)
  {
    v17 = 0;
    if (id)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = 0;
    v20 = 0;
    goto LABEL_6;
  }

  d = sub_1B014CC1C();
  v17 = v16;
  if (!id)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = sub_1B014CC1C();
  v20 = v19;
LABEL_6:
  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  type metadata accessor for FBKSInteraction(0);
  interactionCopy = interaction;
  v24 = sub_1B00F76D4(interactionCopy);
  v25 = sub_1B014CEAC();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v27 = actionCopy;
  *(v26 + 32) = ObjCClassMetadata;
  *(v26 + 40) = v27;
  *(v26 + 48) = v24;
  *(v26 + 56) = d;
  *(v26 + 64) = v17;
  *(v26 + 72) = v18;
  *(v26 + 80) = v20;
  LOBYTE(v27) = formCopy;
  *(v26 + 88) = accountCopy;
  *(v26 + 89) = v27;
  *(v26 + 96) = sub_1B00F9900;
  *(v26 + 104) = v21;
  v28 = v24;
  sub_1B00F8B5C(0, 0, v14, &unk_1B0151210, v26);
}

+ (void)presentedWithInteraction:(id)interaction completion:(id)completion
{
  v5 = _Block_copy(completion);
  type metadata accessor for FBKSInteraction(0);
  _Block_copy(v5);
  interactionCopy = interaction;
  v6 = sub_1B00F76D4(interactionCopy);
  sub_1B011B80C(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (_TtC15FeedbackService24ReportAConcernObjCBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ReportAConcernObjCBridge();
  return [(ReportAConcernObjCBridge *)&v3 init];
}

@end