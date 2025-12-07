@interface _SEContentProcess
- (_SEContentProcess)init;
- (id)createVisibilityPropagationInteraction;
@end

@implementation _SEContentProcess

- (id)createVisibilityPropagationInteraction
{
  v3 = type metadata accessor for _ContentProcess(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &atoken - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265747104(self + OBJC_IVAR____SEContentProcess_inner, v5, type metadata accessor for _ContentProcess);
  selfCopy = self;
  *atoken.val = _s17ServiceExtensions11_GPUProcessV10auditTokenSo0D8_token_tavg_0();
  atoken.val[2] = v7;
  atoken.val[3] = v8;
  atoken.val[4] = v9;
  atoken.val[5] = v10;
  atoken.val[6] = v11;
  atoken.val[7] = v12;
  v13 = audit_token_to_pid(&atoken);
  v14 = sub_2657501B8();
  v15 = [objc_opt_self() interactionWithPID:v13 environmentIdentifier:v14];

  sub_26574716C(v5, type metadata accessor for _ContentProcess);

  return v15;
}

- (_SEContentProcess)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end