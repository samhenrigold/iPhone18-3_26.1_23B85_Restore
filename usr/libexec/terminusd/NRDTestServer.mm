@interface NRDTestServer
- (void)dealloc;
@end

@implementation NRDTestServer

- (void)dealloc
{
  if (qword_100228FD0 != -1)
  {
    dispatch_once(&qword_100228FD0, &stru_1001FADB0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FD0 != -1)
    {
      dispatch_once(&qword_100228FD0, &stru_1001FADB0);
    }

    _NRLogWithArgs(qword_100228FC8, 1, "%s%.30s:%-4d Dealloc: %@", ", "[NRDTestServer dealloc]"", 237, self);
  }

  if (self)
  {
    udpInputSource = self->_udpInputSource;
    if (udpInputSource)
    {
      dispatch_source_cancel(udpInputSource);
      v4 = self->_udpInputSource;
      self->_udpInputSource = 0;
    }

    udpInputSourceCloud = self->_udpInputSourceCloud;
    if (udpInputSourceCloud)
    {
      dispatch_source_cancel(udpInputSourceCloud);
      v6 = self->_udpInputSourceCloud;
      self->_udpInputSourceCloud = 0;
    }
  }

  v7.receiver = self;
  v7.super_class = NRDTestServer;
  [(NRDTestServer *)&v7 dealloc];
}

@end