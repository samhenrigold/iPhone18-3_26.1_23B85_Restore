@interface NoOpPreReqVerifier
- (void)verifyAllPreReqsWithRequireEnablement:(BOOL)enablement completionHandler:(id)handler;
@end

@implementation NoOpPreReqVerifier

- (void)verifyAllPreReqsWithRequireEnablement:(BOOL)enablement completionHandler:(id)handler
{
  v7 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = enablement;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_22BA1030C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22BA1AD38;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22BA18590;
  v14[5] = v13;

  sub_22BA04B0C(0, 0, v9, &unk_22BA18598, v14);
}

@end