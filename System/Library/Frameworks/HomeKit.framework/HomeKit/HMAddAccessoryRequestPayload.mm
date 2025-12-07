@interface HMAddAccessoryRequestPayload
- (BOOL)setupCodeDeferred;
- (BOOL)shouldRetrySetup;
- (HMAddAccessoryRequestPayload)init;
- (HMSetupAccessoryDescription)accessoryDescription;
- (NSString)accessoryPairingPassword;
- (NSUUID)accessoryPeerIdentifier;
- (NSUUID)accessoryUUID;
- (id)makeMessagePayloadWithError:(id *)error;
- (void)setAccessoryDescription:(id)description;
- (void)setAccessoryPairingPassword:(id)password;
- (void)setAccessoryPeerIdentifier:(id)identifier;
- (void)setAccessoryUUID:(id)d;
- (void)setSetupCodeDeferred:(BOOL)deferred;
- (void)setShouldRetrySetup:(BOOL)setup;
@end

@implementation HMAddAccessoryRequestPayload

- (id)makeMessagePayloadWithError:(id *)error
{
  v4 = type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(&self->super.isa + OBJC_IVAR___HMAddAccessoryRequestPayload_payload);
  v8 = OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  swift_beginAccess();
  sub_19BB54B20(v7 + v8, v6);
  HMAccessory.AddAccessoryRequestMessage.RequestPayload.messagePayload.getter();
  sub_19BB54B84(v6, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
  v10 = sub_19BE0DF2C();

  return v10;
}

- (NSUUID)accessoryUUID
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83D0, &unk_19BE37520);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = *(&self->super.isa + OBJC_IVAR___HMAddAccessoryRequestPayload_payload);
  v7 = OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  swift_beginAccess();
  sub_19BB54CB8(v6 + v7, v5);
  v8 = sub_19BE0DE8C();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v5, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_19BE0DE5C();
    (*(v9 + 8))(v5, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setAccessoryUUID:(id)d
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83D0, &unk_19BE37520);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  if (d)
  {
    sub_19BE0DE6C();
    v8 = sub_19BE0DE8C();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_19BE0DE8C();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = *(&self->super.isa + OBJC_IVAR___HMAddAccessoryRequestPayload_payload);
  v11 = OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  swift_beginAccess();
  selfCopy = self;
  sub_19BB54BE0(v7, v10 + v11);
  swift_endAccess();
  sub_19BB54C50(v7);
}

- (NSUUID)accessoryPeerIdentifier
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83D0, &unk_19BE37520);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = *(&self->super.isa + OBJC_IVAR___HMAddAccessoryRequestPayload_payload) + OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  swift_beginAccess();
  v7 = type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload(0);
  sub_19BB54CB8(&v6[*(v7 + 20)], v5);
  v8 = sub_19BE0DE8C();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v5, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_19BE0DE5C();
    (*(v9 + 8))(v5, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setAccessoryPeerIdentifier:(id)identifier
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83D0, &unk_19BE37520);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  if (identifier)
  {
    sub_19BE0DE6C();
    v8 = sub_19BE0DE8C();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_19BE0DE8C();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = *(&self->super.isa + OBJC_IVAR___HMAddAccessoryRequestPayload_payload) + OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  swift_beginAccess();
  v11 = *(type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload(0) + 20);
  selfCopy = self;
  sub_19BB54BE0(v7, &v10[v11]);
  swift_endAccess();
  sub_19BB54C50(v7);
}

- (NSString)accessoryPairingPassword
{
  v2 = *(&self->super.isa + OBJC_IVAR___HMAddAccessoryRequestPayload_payload) + OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  swift_beginAccess();
  if (*&v2[*(type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload(0) + 24) + 8])
  {

    v3 = sub_19BE0DF9C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAccessoryPairingPassword:(id)password
{
  if (password)
  {
    v4 = sub_19BE0DFAC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = *(&self->super.isa + OBJC_IVAR___HMAddAccessoryRequestPayload_payload) + OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  swift_beginAccess();
  v8 = &v7[*(type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload(0) + 24)];
  *v8 = v4;
  v8[1] = v6;
}

- (HMSetupAccessoryDescription)accessoryDescription
{
  selfCopy = self;
  v4 = sub_19BB54308(selfCopy, v3);

  return v4;
}

- (void)setAccessoryDescription:(id)description
{
  descriptionCopy = description;
  selfCopy = self;
  sub_19BB54A58(description);
}

- (BOOL)setupCodeDeferred
{
  v2 = *(&self->super.isa + OBJC_IVAR___HMAddAccessoryRequestPayload_payload) + OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  swift_beginAccess();
  return v2[*(type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload(0) + 32)];
}

- (void)setSetupCodeDeferred:(BOOL)deferred
{
  v4 = *(&self->super.isa + OBJC_IVAR___HMAddAccessoryRequestPayload_payload) + OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  swift_beginAccess();
  v4[*(type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload(0) + 32)] = deferred;
}

- (BOOL)shouldRetrySetup
{
  v2 = *(&self->super.isa + OBJC_IVAR___HMAddAccessoryRequestPayload_payload) + OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  swift_beginAccess();
  return v2[*(type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload(0) + 36)];
}

- (void)setShouldRetrySetup:(BOOL)setup
{
  v4 = *(&self->super.isa + OBJC_IVAR___HMAddAccessoryRequestPayload_payload) + OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  swift_beginAccess();
  v4[*(type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload(0) + 36)] = setup;
}

- (HMAddAccessoryRequestPayload)init
{
  v3 = OBJC_IVAR___HMAddAccessoryRequestPayload_payload;
  _s7WrapperCMa(0);
  v4 = swift_allocObject();
  v5 = v4 + OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  v6 = sub_19BE0DE8C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  v8 = type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload(0);
  v7(&v5[v8[5]], 1, 1, v6);
  v9 = &v5[v8[6]];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v5[v8[7]] = xmmword_19BE36670;
  v5[v8[8]] = 0;
  v5[v8[9]] = 0;
  *(&self->super.isa + v3) = v4;
  v11.receiver = self;
  v11.super_class = HMAddAccessoryRequestPayload;
  return [(HMAddAccessoryRequestPayload *)&v11 init];
}

@end