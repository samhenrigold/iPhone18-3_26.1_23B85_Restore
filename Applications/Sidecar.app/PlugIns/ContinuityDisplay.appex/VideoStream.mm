@interface VideoStream
- (void)qosMonitor:(id)monitor didReceiveReport:(id)report streamToken:(int64_t)token;
- (void)stream:(id)stream didPause:(BOOL)pause error:(id)error;
- (void)stream:(id)stream didResume:(BOOL)resume error:(id)error;
- (void)stream:(id)stream didStart:(BOOL)start error:(id)error;
- (void)stream:(id)stream didUpdateVideoConfiguration:(BOOL)configuration error:(id)error;
- (void)streamDidRTCPTimeOut:(id)out;
- (void)streamDidRTPTimeOut:(id)out;
- (void)streamDidServerDie:(id)die;
- (void)streamDidStop:(id)stop;
@end

@implementation VideoStream

- (void)qosMonitor:(id)monitor didReceiveReport:(id)report streamToken:(int64_t)token
{
  v7 = sub_1000579B0();
  monitorCopy = monitor;
  selfCopy = self;
  VideoStream.qosMonitor(_:didReceiveReport:streamToken:)(selfCopy, v7);
}

- (void)stream:(id)stream didStart:(BOOL)start error:(id)error
{
  startCopy = start;
  streamCopy = stream;
  selfCopy = self;
  errorCopy = error;
  VideoStream.stream(_:didStart:error:)(streamCopy, startCopy, error);
}

- (void)streamDidStop:(id)stop
{
  stopCopy = stop;
  selfCopy = self;
  VideoStream.streamDidStop(_:)(stopCopy, selfCopy);
}

- (void)streamDidServerDie:(id)die
{
  dieCopy = die;
  selfCopy = self;
  VideoStream.streamDidServerDie(_:)(dieCopy, selfCopy);
}

- (void)stream:(id)stream didPause:(BOOL)pause error:(id)error
{
  pauseCopy = pause;
  streamCopy = stream;
  selfCopy = self;
  errorCopy = error;
  VideoStream.stream(_:didPause:error:)(streamCopy, pauseCopy, error);
}

- (void)stream:(id)stream didResume:(BOOL)resume error:(id)error
{
  resumeCopy = resume;
  streamCopy = stream;
  selfCopy = self;
  errorCopy = error;
  VideoStream.stream(_:didResume:error:)(streamCopy, resumeCopy, error);
}

- (void)stream:(id)stream didUpdateVideoConfiguration:(BOOL)configuration error:(id)error
{
  configurationCopy = configuration;
  streamCopy = stream;
  selfCopy = self;
  errorCopy = error;
  VideoStream.stream(_:didUpdateVideoConfiguration:error:)(streamCopy, configurationCopy, error);
}

- (void)streamDidRTPTimeOut:(id)out
{
  outCopy = out;
  selfCopy = self;
  VideoStream.streamDidRTPTimeOut(_:)(outCopy, selfCopy);
}

- (void)streamDidRTCPTimeOut:(id)out
{
  outCopy = out;
  selfCopy = self;
  VideoStream.streamDidRTCPTimeOut(_:)(outCopy, selfCopy);
}

@end