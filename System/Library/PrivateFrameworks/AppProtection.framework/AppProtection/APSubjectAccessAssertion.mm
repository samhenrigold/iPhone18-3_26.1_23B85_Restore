@interface APSubjectAccessAssertion
+ (void)acquireForSubject:(id)subject completion:(id)completion;
+ (void)acquireForSubject:(id)subject onBehalfOfProcessWithAuditToken:(id *)token accessGrantReason:(int64_t)reason completion:(id)completion;
- (APSubjectAccessAssertion)init;
- (APSubjectAccessAssertion)initWithSubject:(id)subject uuid:(id)uuid;
- (NSString)description;
- (void)invalidate;
@end

@implementation APSubjectAccessAssertion

- (APSubjectAccessAssertion)initWithSubject:(id)subject uuid:(id)uuid
{
  v7 = OBJC_IVAR___APSubjectAccessAssertion_invalidated;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD1E8, &unk_185B6D2D0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(&self->super.isa + v7) = v8;
  *(&self->super.isa + OBJC_IVAR___APSubjectAccessAssertion_subject) = subject;
  *(&self->super.isa + OBJC_IVAR___APSubjectAccessAssertion_uuid) = uuid;
  v12.receiver = self;
  v12.super_class = APSubjectAccessAssertion;
  subjectCopy = subject;
  uuidCopy = uuid;
  return [(APSubjectAccessAssertion *)&v12 init];
}

+ (void)acquireForSubject:(id)subject completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  subjectCopy = subject;
  v10 = APGetAuditTokenForSelf(subjectCopy, v9);
  if (v10)
  {
    v11 = v10[1];
    v17 = *v10;
    v18 = v11;
    v15 = sub_185B1265C;
    v16 = v7;
    *&v13 = MEMORY[0x1E69E9820];
    *(&v13 + 1) = 1107296256;
    *&v14 = sub_185B0E6C8;
    *(&v14 + 1) = &block_descriptor_50_0;
    v12 = _Block_copy(&v13);

    v13 = v17;
    v14 = v18;
    [self acquireForSubject:subjectCopy onBehalfOfProcessWithAuditToken:&v13 accessGrantReason:0x7FFFFFFFFFFFFFFFLL completion:v12];

    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

+ (void)acquireForSubject:(id)subject onBehalfOfProcessWithAuditToken:(id *)token accessGrantReason:(int64_t)reason completion:(id)completion
{
  v8 = *token->var0;
  v9 = *&token->var0[2];
  v10 = *&token->var0[4];
  v11 = *&token->var0[6];
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  subjectCopy = subject;
  sub_185B11D40(subjectCopy, v8, v9, v10, v11, reason, sub_185B06F6C, v13);
}

- (NSString)description
{
  selfCopy = self;
  APSubjectAccessAssertion.description.getter();

  v3 = sub_185B67E1C();

  return v3;
}

- (void)invalidate
{
  selfCopy = self;
  sub_185B0F4C4();
}

- (APSubjectAccessAssertion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end