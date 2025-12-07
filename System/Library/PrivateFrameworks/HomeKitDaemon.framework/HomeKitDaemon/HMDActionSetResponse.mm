@interface HMDActionSetResponse
+ (id)responsesFromSerializedResponses:(id)responses;
+ (id)serializeWithResponses:(id)responses;
- (HMDActionSetResponse)init;
- (HMDActionSetResponse)initWithActionSetUUID:(id)d state:(BOOL)state;
- (NSUUID)actionSetUUID;
- (id)serialize;
@end

@implementation HMDActionSetResponse

- (NSUUID)actionSetUUID
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_229609A64(self + OBJC_IVAR___HMDActionSetResponse_internalActionSetUUID, v9);
  if (v10)
  {
    sub_229543C58(v9, v11);
    swift_dynamicCast();
    v8 = sub_22A4DB77C();
    (*(v4 + 8))(v6, v3);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (HMDActionSetResponse)initWithActionSetUUID:(id)d state:(BOOL)state
{
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  v10 = (self + OBJC_IVAR___HMDActionSetResponse_internalActionSetUUID);
  v10[3] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(v7 + 16))(boxed_opaque_existential_1, v9, v6);
  *(&self->super.super.isa + OBJC_IVAR___HMDActionSetResponse_state) = state;
  v14.receiver = self;
  v14.super_class = HMDActionSetResponse;
  v12 = [(HMDActionSetResponse *)&v14 init];
  (*(v7 + 8))(v9, v6);
  return v12;
}

+ (id)responsesFromSerializedResponses:(id)responses
{
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  v3 = sub_22A4DD49C();
  sub_229609AD4(v3);

  type metadata accessor for HMDActionSetResponse(v4);
  v5 = sub_22A4DD81C();

  return v5;
}

+ (id)serializeWithResponses:(id)responses
{
  type metadata accessor for HMDActionSetResponse(self);
  v3 = sub_22A4DD83C();
  sub_229609E08(v3);

  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  v4 = sub_22A4DD47C();

  return v4;
}

- (id)serialize
{
  selfCopy = self;
  sub_229609760();

  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  v3 = sub_22A4DD47C();

  return v3;
}

- (HMDActionSetResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end