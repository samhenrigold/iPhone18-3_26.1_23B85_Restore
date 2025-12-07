@interface BidirectionalStreamingURLSessionDelegate
- (_TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate)init;
- (void)URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)task didReceiveResponse:(NSURLResponse *)response completionHandler:(id)handler;
- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task needNewBodyStream:(id)stream;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
@end

@implementation BidirectionalStreamingURLSessionDelegate

- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task needNewBodyStream:(id)stream
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE780, "6\v");
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(stream);
  v13 = swift_allocObject();
  v13[2] = session;
  v13[3] = task;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_25DDDCF98();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_25DDDE880;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_25DDDE888;
  v16[5] = v15;
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  sub_25DDCC680(0, 0, v11, &unk_25DDDE890, v16);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  taskCopy = task;
  dataCopy = data;
  selfCopy = self;
  v10 = sub_25DDDCAE8();
  v12 = v11;

  v13 = *(&selfCopy->super.isa + OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_callbackLock);
  v14[2] = v10;
  v14[3] = v12;
  v14[4] = selfCopy;
  v14[5] = taskCopy;
  sub_25DDC99B0(sub_25DDCD5A8, v14, v13);
  sub_25DDCCDA4(v10, v12);
}

- (void)URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)task didReceiveResponse:(NSURLResponse *)response completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE780, "6\v");
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = session;
  v15[3] = task;
  v15[4] = response;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_25DDDCF98();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_25DDDE838;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_25DDDE848;
  v18[5] = v17;
  sessionCopy = session;
  taskCopy = task;
  responseCopy = response;
  selfCopy = self;
  sub_25DDCC680(0, 0, v13, &unk_25DDDE858, v18);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_callbackLock);
  v9[2] = error;
  v9[3] = self;
  selfCopy = self;
  errorCopy = error;
  sub_25DDC99B0(sub_25DDCD5C0, v9, v6);
}

- (_TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end