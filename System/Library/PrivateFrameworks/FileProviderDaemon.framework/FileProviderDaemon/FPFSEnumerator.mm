@interface FPFSEnumerator
- (NSString)description;
- (_TtC18FileProviderDaemon14FPFSEnumerator)init;
- (void)currentSyncAnchorWithCompletion:(id)completion;
- (void)dealloc;
- (void)enumerateChangesFromToken:(id)token suggestedBatchSize:(int64_t)size reply:(id)reply;
- (void)enumerateItemsFromPage:(id)page suggestedPageSize:(int64_t)size reply:(id)reply;
- (void)enumerateItemsFromPage:(id)page suggestedPageSize:(int64_t)size upTo:(int64_t)to reply:(id)reply;
- (void)invalidate;
- (void)keepAliveConnectionForRegisteredObserver:(id)observer;
@end

@implementation FPFSEnumerator

- (void)dealloc
{
  selfCopy = self;
  sub_1CF7AD590();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for FPFSEnumerator(0);
  [(FPFSEnumerator *)&v3 dealloc];
}

- (void)invalidate
{
  selfCopy = self;
  sub_1CF7AD590();
}

- (void)currentSyncAnchorWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_1CF7B88B0(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)enumerateItemsFromPage:(id)page suggestedPageSize:(int64_t)size reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = _Block_copy(reply);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  _Block_copy(v12);
  pageCopy = page;
  selfCopy = self;
  sub_1CF7B8B00(pageCopy, v11, size, selfCopy, v12);
  _Block_release(v12);

  _Block_release(v12);
  sub_1CEFCCC44(v11, &qword_1EC4C1B40, &unk_1CF9FCB70);
}

- (void)enumerateItemsFromPage:(id)page suggestedPageSize:(int64_t)size upTo:(int64_t)to reply:(id)reply
{
  v6 = _Block_copy(reply);
  v8 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
  v7 = sub_1CF9E57E8();
  v6[2](v6, 0, v7);

  _Block_release(v6);
}

- (void)enumerateChangesFromToken:(id)token suggestedBatchSize:(int64_t)size reply:(id)reply
{
  v8 = _Block_copy(reply);
  tokenCopy = token;
  selfCopy = self;
  v10 = sub_1CF9E5B88();
  v12 = v11;

  _Block_copy(v8);
  sub_1CF7B9C10(v10, v12, size, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
  sub_1CEFE4714(v10, v12);
}

- (void)keepAliveConnectionForRegisteredObserver:(id)observer
{
  v4 = _Block_copy(observer);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_keepAlive);
  v7 = *(&self->super.isa + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_keepAlive);
  v8 = *&self->observer[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_keepAlive];
  *v6 = sub_1CF744650;
  v6[1] = v5;
  selfCopy = self;
  sub_1CF045404(v7, v8);
}

- (NSString)description
{
  selfCopy = self;
  sub_1CF7B7568();
  v4 = v3;

  v5 = sub_1CF9E6888();
  v4, v6, v7, v8, v9, v10, v11, v12;

  return v5;
}

- (_TtC18FileProviderDaemon14FPFSEnumerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end