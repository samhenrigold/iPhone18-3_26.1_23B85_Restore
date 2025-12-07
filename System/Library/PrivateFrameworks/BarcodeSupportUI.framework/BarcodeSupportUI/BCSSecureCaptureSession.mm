@interface BCSSecureCaptureSession
+ (void)authenticateWithUserActivity:(NSUserActivity *)activity completionHandler:(id)handler;
- (BCSSecureCaptureSession)init;
@end

@implementation BCSSecureCaptureSession

+ (void)authenticateWithUserActivity:(NSUserActivity *)activity completionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E551F30, &qword_241A06718);
  MEMORY[0x28223BE20]();
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  v10[2] = activity;
  v10[3] = v9;
  v10[4] = self;
  v11 = sub_241A043D0();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_241A06728;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_241A06738;
  v13[5] = v12;
  activityCopy = activity;
  sub_241A02B9C(0, 0, v8, &unk_241A06748, v13);
}

- (BCSSecureCaptureSession)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BCSSecureCaptureSession();
  return [(BCSSecureCaptureSession *)&v3 init];
}

@end