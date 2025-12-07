@interface DIPHTTPSession
- (NSString)description;
- (_TtC17CoreODIEssentials14DIPHTTPSession)init;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity;
@end

@implementation DIPHTTPSession

- (NSString)description
{
  selfCopy = self;
  sub_1DAFA9614();

  v3 = sub_1DB09D6B4();

  return v3;
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EAF8, &unk_1DB0A9580);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = sub_1DB09CBF4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _Block_copy(handler);
  sub_1DB09CBA4();
  (*(v15 + 56))(v13, 1, 1, v14);
  sub_1DAFB3B74(v13, v11);
  v19 = 0;
  if ((*(v15 + 48))(v11, 1, v14) != 1)
  {
    v19 = sub_1DB09CB84();
    (*(v15 + 8))(v11, v14);
  }

  v18[2](v18, v19);

  _Block_release(v18);
  sub_1DAF40AEC(v13, &qword_1ECC0EAF8, &unk_1DB0A9580);
  (*(v15 + 8))(v17, v14);
}

- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity
{
  sessionCopy = session;
  connectivityCopy = connectivity;
  selfCopy = self;
  sub_1DAFB34A0(connectivityCopy);
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  sessionCopy = session;
  selfCopy = self;
  errorCopy = error;
  sub_1DAFB3854(error);
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  sessionCopy = session;
  challengeCopy = challenge;
  selfCopy = self;
  sub_1DAFB39E4(challengeCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (_TtC17CoreODIEssentials14DIPHTTPSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end