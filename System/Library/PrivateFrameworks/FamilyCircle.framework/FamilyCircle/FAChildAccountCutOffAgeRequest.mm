@interface FAChildAccountCutOffAgeRequest
- (FAChildAccountCutOffAgeRequest)init;
- (FAChildAccountCutOffAgeRequest)initWithUrlProvider:(id)provider urlSession:(id)session;
- (void)fetchWithCompletionHandler:(id)handler;
@end

@implementation FAChildAccountCutOffAgeRequest

- (FAChildAccountCutOffAgeRequest)initWithUrlProvider:(id)provider urlSession:(id)session
{
  *(&self->super.isa + OBJC_IVAR___FAChildAccountCutOffAgeRequest_urlProvider) = provider;
  *(&self->super.isa + OBJC_IVAR___FAChildAccountCutOffAgeRequest_urlSession) = session;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FAChildAccountCutOffAgeRequest();
  swift_unknownObjectRetain();
  sessionCopy = session;
  return [(FAChildAccountCutOffAgeRequest *)&v7 init];
}

- (void)fetchWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9833F8, &qword_1B7164C30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1B715E450();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1B7166250;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B7164A30;
  v12[5] = v11;
  selfCopy = self;
  sub_1B7105F20(0, 0, v7, &unk_1B7166270, v12);
}

- (FAChildAccountCutOffAgeRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end