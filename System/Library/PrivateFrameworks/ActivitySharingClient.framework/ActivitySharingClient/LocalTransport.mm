@interface LocalTransport
- (_TtC21ActivitySharingClient14LocalTransport)init;
- (void)transportRequest:(int64_t)request data:(id)data completion:(id)completion;
@end

@implementation LocalTransport

- (_TtC21ActivitySharingClient14LocalTransport)init
{
  v3 = OBJC_IVAR____TtC21ActivitySharingClient14LocalTransport_transportDispatchService;
  type metadata accessor for TransportDispatchService();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 14) = MEMORY[0x277D84F98];
  *(&self->super.isa + v3) = v4;
  *(&self->super.isa + OBJC_IVAR____TtC21ActivitySharingClient14LocalTransport_proxy) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for LocalTransport();
  return [(LocalTransport *)&v6 init];
}

- (void)transportRequest:(int64_t)request data:(id)data completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = _Block_copy(completion);
  selfCopy = self;
  if (data)
  {
    dataCopy = data;
    data = sub_23E5C8BB0();
    v16 = v15;
  }

  else
  {
    v16 = 0xF000000000000000;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v18 = sub_23E5C8EB0();
  __swift_project_value_buffer(v18, qword_280C09128);
  sub_23E560890(0xD000000000000071, 0x800000023E5D01E0, 0xD000000000000024, 0x800000023E5D0260);
  v19 = sub_23E5C9110();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = self;
  v20[5] = request;
  v20[6] = data;
  v20[7] = v16;
  v20[8] = sub_23E56117C;
  v20[9] = v17;
  sub_23E59D0CC(0, 0, v11, &unk_23E5CCB90, v20);
}

@end