@interface AAFAnalyticsReporter
+ (id)analyticsReporterWithTransport:(id)transport;
- (AAFAnalyticsReporter)initWithTransport:(id)transport;
- (void)sendEvent:(id)event;
@end

@implementation AAFAnalyticsReporter

- (AAFAnalyticsReporter)initWithTransport:(id)transport
{
  transportCopy = transport;
  v9.receiver = self;
  v9.super_class = AAFAnalyticsReporter;
  v6 = [(AAFAnalyticsReporter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transport, transport);
  }

  return v7;
}

+ (id)analyticsReporterWithTransport:(id)transport
{
  transportCopy = transport;
  v5 = [[self alloc] initWithTransport:transportCopy];

  return v5;
}

- (void)sendEvent:(id)event
{
  v18 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = _AAFLogSystemAnalytics([eventCopy completeEvent]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [eventCopy debugDescription];
    v9 = [(AAFAnalyticsTransport *)self->_transport debugDescription];
    v10 = 138413058;
    v11 = v6;
    v12 = 2048;
    selfCopy = self;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_1C8644000, v5, OS_LOG_TYPE_DEFAULT, "<%@: %p> Sending event: [%@] with transport: [%@]", &v10, 0x2Au);
  }

  [(AAFAnalyticsReporter *)self _sendEvent:eventCopy];
}

@end