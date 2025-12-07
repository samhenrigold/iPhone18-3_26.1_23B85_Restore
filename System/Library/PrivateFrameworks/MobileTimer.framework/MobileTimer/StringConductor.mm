@interface StringConductor
- (_TtC11MobileTimer15StringConductor)init;
- (void)registerReplyPublisherWithId:(id)id timeOut:(double)out completion:(id)completion;
- (void)send:(id)send;
@end

@implementation StringConductor

- (void)registerReplyPublisherWithId:(id)id timeOut:(double)out completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_1B20A9A74();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  selfCopy = self;
  sub_1B209CB40(v8, v10, sub_1B20A083C, v11, out);
}

- (void)send:(id)send
{
  v4 = sub_1B20A9A74();
  v5 = *(&self->super.isa + OBJC_IVAR____TtC11MobileTimer15StringConductor_conductor);
  v9[0] = v4;
  v9[1] = v6;
  v7 = *(*v5 + 136);
  selfCopy = self;
  v7(v9);
}

- (_TtC11MobileTimer15StringConductor)init
{
  v3 = OBJC_IVAR____TtC11MobileTimer15StringConductor_conductor;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F810, &qword_1B20B9990);
  v4 = swift_allocObject();
  v10 = 0;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F818, &unk_1B20B9998);
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
  v9.super_class = type metadata accessor for StringConductor();
  return [(StringConductor *)&v9 init];
}

@end