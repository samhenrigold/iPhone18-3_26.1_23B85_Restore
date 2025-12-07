@interface ASCABLEAuthenticator
- (_TtC26AuthenticationServicesCore20ASCABLEAuthenticator)init;
- (_TtC26AuthenticationServicesCore20ASCABLEAuthenticator)initWithCaBLEURL:(id)l error:(id *)error;
- (_TtP26AuthenticationServicesCore28ASCABLEAuthenticatorDelegate_)delegate;
- (void)dealloc;
- (void)finishTransactionWithCredential:(id)credential error:(id)error;
- (void)sendExcludedCredentialMatchError;
- (void)startWithCompletionHandler:(id)handler;
@end

@implementation ASCABLEAuthenticator

- (_TtC26AuthenticationServicesCore20ASCABLEAuthenticator)initWithCaBLEURL:(id)l error:(id *)error
{
  v4 = sub_1C2170024();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-v9];
  sub_1C216FFD4();
  (*(v5 + 16))(v8, v10, v4);
  v11 = [objc_allocWithZone(MEMORY[0x1E695D250]) init];
  v12 = objc_allocWithZone(type metadata accessor for ASCABLEAuthenticator(0));
  sub_1C20E0E34(v8, v11);
  v14 = v13;
  (*(v5 + 8))(v10, v4);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v14;
}

- (void)startWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_completionHandler);
  v7 = *(self + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_completionHandler);
  v8 = *(self + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_completionHandler + 8);
  *v6 = sub_1C20EB1A4;
  v6[1] = v5;
  selfCopy = self;

  sub_1C20B0080(v7, v8);
  sub_1C20E19CC(0);
  [*(selfCopy + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_powerLogger) logAuthenticationStartedEventIfNeeded];
}

- (void)sendExcludedCredentialMatchError
{
  selfCopy = self;
  sub_1C20DF13C();
}

- (void)finishTransactionWithCredential:(id)credential error:(id)error
{
  swift_unknownObjectRetain();
  selfCopy = self;
  errorCopy = error;
  sub_1C20DF4F8(credential, error);
  swift_unknownObjectRelease();
}

- (_TtP26AuthenticationServicesCore28ASCABLEAuthenticatorDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)dealloc
{
  v2 = *(self + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_bluetoothAdvertiser);
  selfCopy = self;
  [v2 invalidate];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for ASCABLEAuthenticator(0);
  [(ASCABLEAuthenticator *)&v4 dealloc];
}

- (_TtC26AuthenticationServicesCore20ASCABLEAuthenticator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end