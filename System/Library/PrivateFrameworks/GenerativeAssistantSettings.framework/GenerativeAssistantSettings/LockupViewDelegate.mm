@interface LockupViewDelegate
- (_TtC27GenerativeAssistantSettings18LockupViewDelegate)init;
- (void)lockupView:(id)view didFailRequestWithError:(id)error;
- (void)lockupViewDidFinishRequest:(id)request;
@end

@implementation LockupViewDelegate

- (_TtC27GenerativeAssistantSettings18LockupViewDelegate)init
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0557D0, &qword_2230C5860);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  v11 = 0;
  sub_2230C39A4();
  (*(v5 + 32))(self + OBJC_IVAR____TtC27GenerativeAssistantSettings18LockupViewDelegate__hideLockup, v7, v4);
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(LockupViewDelegate *)&v10 init];
}

- (void)lockupView:(id)view didFailRequestWithError:(id)error
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D8, &qword_2230C4D30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_2230C3E84();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  selfCopy = self;
  sub_2230BEA64(0, 0, v7, &unk_2230C64A0, v9);
}

- (void)lockupViewDidFinishRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_2230BFCB4();
}

@end