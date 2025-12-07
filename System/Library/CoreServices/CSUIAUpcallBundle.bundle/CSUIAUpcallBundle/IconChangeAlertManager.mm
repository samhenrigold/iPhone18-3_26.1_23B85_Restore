@interface IconChangeAlertManager
- (_TtC17CSUIAUpcallBundle22IconChangeAlertManager)init;
- (_TtC17CSUIAUpcallBundle22IconChangeAlertManager)initWithIdentity:(id)identity;
- (void)showAlertWithCompletion:(id)completion;
@end

@implementation IconChangeAlertManager

- (_TtC17CSUIAUpcallBundle22IconChangeAlertManager)initWithIdentity:(id)identity
{
  *(&self->super.isa + OBJC_IVAR____TtC17CSUIAUpcallBundle22IconChangeAlertManager_identity) = identity;
  v6.receiver = self;
  v6.super_class = type metadata accessor for IconChangeAlertManager();
  identityCopy = identity;
  return [(IconChangeAlertManager *)&v6 init];
}

- (void)showAlertWithCompletion:(id)completion
{
  v5 = sub_1C70(&qword_19388, &qword_ECC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = sub_D8E4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = sub_C0AC;
  v11[6] = v9;
  selfCopy = self;
  sub_1F6C(0, 0, v7, &unk_EFE8, v11);
}

- (_TtC17CSUIAUpcallBundle22IconChangeAlertManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end