@interface VAModelManagerAssertion
- (VAModelManagerAssertion)init;
- (void)acquireInPolicy:(NSString *)policy inDescription:(NSString *)description completionHandler:(id)handler;
- (void)invalidateWithCompletionHandler:(id)handler;
@end

@implementation VAModelManagerAssertion

- (void)acquireInPolicy:(NSString *)policy inDescription:(NSString *)description completionHandler:(id)handler
{
  v9 = sub_1D1138(&qword_6E48F8, &qword_516E88);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = policy;
  v13[3] = description;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_51349C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_517048;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_517050;
  v16[5] = v15;
  policyCopy = policy;
  descriptionCopy = description;

  sub_1D0460(0, 0, v11, &unk_517058, v16);
}

- (void)invalidateWithCompletionHandler:(id)handler
{
  v5 = sub_1D1138(&qword_6E48F8, &qword_516E88);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_51349C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_517000;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_517010;
  v12[5] = v11;

  sub_1D0460(0, 0, v7, &unk_517020, v12);
}

- (VAModelManagerAssertion)init
{
  swift_defaultActor_initialize();
  *&self[1].$defaultActor[8] = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for VAModelManagerAssertion();
  return [(VAModelManagerAssertion *)&v4 init];
}

@end