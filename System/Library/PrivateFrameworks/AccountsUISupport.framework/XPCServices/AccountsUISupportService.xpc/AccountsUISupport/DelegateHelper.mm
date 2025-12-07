@interface DelegateHelper
- (_TtC27AccountsUISupportServiceLib14DelegateHelper)init;
- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(id)handler;
- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task willPerformHTTPRedirection:(NSHTTPURLResponse *)redirection newRequest:(NSURLRequest *)request completionHandler:(id)handler;
@end

@implementation DelegateHelper

- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task willPerformHTTPRedirection:(NSHTTPURLResponse *)redirection newRequest:(NSURLRequest *)request completionHandler:(id)handler
{
  v13 = sub_100003288(&qword_100054CF8, "\n;");
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = session;
  v17[3] = task;
  v17[4] = redirection;
  v17[5] = request;
  v17[6] = v16;
  v17[7] = self;
  v18 = sub_100042764();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100044760;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_100044768;
  v20[5] = v19;
  sessionCopy = session;
  taskCopy = task;
  redirectionCopy = redirection;
  requestCopy = request;
  selfCopy = self;
  sub_10000EDB8(0, 0, v15, &unk_100044770, v20);
}

- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(id)handler
{
  v11 = sub_100003288(&qword_100054CF8, "\n;");
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = session;
  v15[3] = task;
  v15[4] = challenge;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_100042764();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100044710;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100044720;
  v18[5] = v17;
  sessionCopy = session;
  taskCopy = task;
  challengeCopy = challenge;
  selfCopy = self;
  sub_10000EDB8(0, 0, v13, &unk_100044730, v18);
}

- (_TtC27AccountsUISupportServiceLib14DelegateHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end