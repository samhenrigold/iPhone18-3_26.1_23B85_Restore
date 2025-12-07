@interface IntentDispatcher
- (_TtC12SeymourMedia16IntentDispatcher)init;
- (id)handlerForIntent:(id)intent;
@end

@implementation IntentDispatcher

- (_TtC12SeymourMedia16IntentDispatcher)init
{
  sub_20C4B3570();
  v3 = sub_20C5A08EC();
  sub_20C4744A8(v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4958, qword_20C5A51A0);
  sub_20C59D9EC();

  sub_20C4780E8(&v6, self + OBJC_IVAR____TtC12SeymourMedia16IntentDispatcher_sessionClient);
  v5.receiver = self;
  v5.super_class = type metadata accessor for IntentDispatcher();
  return [(IntentDispatcher *)&v5 init];
}

- (id)handlerForIntent:(id)intent
{
  intentCopy = intent;
  selfCopy = self;
  IntentDispatcher.handler(for:)(intentCopy, v14);

  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x28223BE20](v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_20C5A0E8C();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end