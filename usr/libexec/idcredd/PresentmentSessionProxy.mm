@interface PresentmentSessionProxy
- (_TtC7idcredd23PresentmentSessionProxy)init;
- (void)buildCredentialResponseFor:(DCPresentmentSelection *)for completionHandler:(id)handler;
- (void)buildErrorResponseWith:(unint64_t)with completionHandler:(id)handler;
- (void)buildGenericDataResponse:(NSData *)response completionHandler:(id)handler;
- (void)buildResponseFor:(DCPresentmentSelection *)for completionHandler:(id)handler;
- (void)configureWithPartitions:(NSArray *)partitions presentmentType:(unint64_t)type options:(DCPresentmentSessionOptions *)options completionHandler:(id)handler;
- (void)generateTransportKeyFor:(unint64_t)for completionHandler:(id)handler;
- (void)interpretCredentialRequest:(_TtC10CoreIDCred31XPCCredentialPresentmentRequest *)request completionHandler:(id)handler;
- (void)interpretGenericDataRequest:(NSData *)request completionHandler:(id)handler;
- (void)interpretRequest:(DCPresentmentRequest *)request completionHandler:(id)handler;
@end

@implementation PresentmentSessionProxy

- (void)configureWithPartitions:(NSArray *)partitions presentmentType:(unint64_t)type options:(DCPresentmentSessionOptions *)options completionHandler:(id)handler
{
  v11 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = partitions;
  v15[3] = type;
  v15[4] = options;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001ACBB0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1001ACBB8;
  v18[5] = v17;
  partitionsCopy = partitions;
  optionsCopy = options;
  selfCopy = self;
  sub_100093C54(0, 0, v13, &unk_1001ACBC0, v18);
}

- (void)generateTransportKeyFor:(unint64_t)for completionHandler:(id)handler
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001ACB88;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001ACB90;
  v14[5] = v13;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001ACB98, v14);
}

- (void)interpretRequest:(DCPresentmentRequest *)request completionHandler:(id)handler
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = request;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001ACB68;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001ACB70;
  v14[5] = v13;
  requestCopy = request;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001ACB78, v14);
}

- (void)interpretCredentialRequest:(_TtC10CoreIDCred31XPCCredentialPresentmentRequest *)request completionHandler:(id)handler
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = request;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001ACB48;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001ACB50;
  v14[5] = v13;
  requestCopy = request;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001ACB58, v14);
}

- (void)buildResponseFor:(DCPresentmentSelection *)for completionHandler:(id)handler
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001ACB28;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001ACB30;
  v14[5] = v13;
  forCopy = for;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001ACB38, v14);
}

- (void)buildCredentialResponseFor:(DCPresentmentSelection *)for completionHandler:(id)handler
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001ACB08;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001ACB10;
  v14[5] = v13;
  forCopy = for;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001ACB18, v14);
}

- (void)buildErrorResponseWith:(unint64_t)with completionHandler:(id)handler
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = with;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001ACAE8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001ACAF0;
  v14[5] = v13;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001ACAF8, v14);
}

- (void)interpretGenericDataRequest:(NSData *)request completionHandler:(id)handler
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = request;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001ACAC8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001ACAD0;
  v14[5] = v13;
  requestCopy = request;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001ACAD8, v14);
}

- (void)buildGenericDataResponse:(NSData *)response completionHandler:(id)handler
{
  v7 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = response;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001ACA80;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001AC130;
  v14[5] = v13;
  responseCopy = response;
  selfCopy = self;
  sub_100093C54(0, 0, v9, &unk_1001AC570, v14);
}

- (_TtC7idcredd23PresentmentSessionProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end