@interface VoidConductor
- (_TtC11MobileTimer13VoidConductor)init;
- (void)registerReplyPublisherWithTimeOut:(double)out completion:(id)completion;
- (void)send;
@end

@implementation VoidConductor

- (void)registerReplyPublisherWithTimeOut:(double)out completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  sub_1B209E14C(sub_1B20A062C, v7, out);
}

- (void)send
{
  v2 = *(**(&self->super.isa + OBJC_IVAR____TtC11MobileTimer13VoidConductor_conductor) + 136);
  selfCopy = self;
  v2();
}

- (_TtC11MobileTimer13VoidConductor)init
{
  v3 = OBJC_IVAR____TtC11MobileTimer13VoidConductor_conductor;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F830, &qword_1B20B99B0);
  v4 = swift_allocObject();
  v10 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F838, &qword_1B20B99B8);
  swift_allocObject();
  v5 = sub_1B20A9964();
  v6 = MEMORY[0x1E69E7CD0];
  *(v4 + 2) = v5;
  *(v4 + 3) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F458, &qword_1B20B8EB0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v4 + 4) = v7;
  *(&self->super.isa + v3) = v4;
  v9.receiver = self;
  v9.super_class = type metadata accessor for VoidConductor();
  return [(VoidConductor *)&v9 init];
}

@end