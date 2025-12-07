@interface PPSFeatureFlagReaderHelper
- (id)createXPCConnection;
- (id)getFeatureFlags;
- (void)closeXPCConnection;
@end

@implementation PPSFeatureFlagReaderHelper

- (id)getFeatureFlags
{
  v3 = logPPSFeatureFlagReaderHelper(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000020D8();
  }

  v4 = +[NSDate date];
  createXPCConnection = [(PPSFeatureFlagReaderHelper *)self createXPCConnection];
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = sub_100001B3C;
  v16[3] = sub_100001B4C;
  v17 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100001B54;
  v14[3] = &unk_100004300;
  v14[4] = &v15;
  v6 = logPPSFeatureFlagReaderHelper([createXPCConnection getFeatureFlags:v14]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10000210C(v16, v6);
  }

  [(PPSFeatureFlagReaderHelper *)self closeXPCConnection];
  v7 = +[NSDate date];
  v8 = [v7 timeIntervalSinceDate:v4];
  v10 = v9;
  v11 = logPPSFeatureFlagReaderHelper(v8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v19 = v10;
    v20 = 2112;
    v21 = v4;
    v22 = 2112;
    v23 = v7;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[PPSFeatureFlagReader] Time for getting getFeatureFlags reading to run: %f, %@, %@", buf, 0x20u);
  }

  v12 = *(v16[0] + 40);
  _Block_object_dispose(&v15, 8);

  return v12;
}

- (id)createXPCConnection
{
  v3 = logPPSFeatureFlagReaderHelper(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000218C();
  }

  v4 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.PPSFeatureFlagReader"];
  connectionToServer = self->_connectionToServer;
  self->_connectionToServer = v4;

  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PPSFeatureFlagReaderProtocol];
  [(NSXPCConnection *)self->_connectionToServer setRemoteObjectInterface:v6];

  [(NSXPCConnection *)self->_connectionToServer setInterruptionHandler:&stru_100004320];
  [(NSXPCConnection *)self->_connectionToServer setInvalidationHandler:&stru_100004340];
  v7 = logPPSFeatureFlagReaderHelper([(NSXPCConnection *)self->_connectionToServer resume]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000021C0();
  }

  v8 = [(NSXPCConnection *)self->_connectionToServer synchronousRemoteObjectProxyWithErrorHandler:&stru_100004380];

  return v8;
}

- (void)closeXPCConnection
{
  v3 = logPPSFeatureFlagReaderHelper(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000230C();
  }

  [(NSXPCConnection *)self->_connectionToServer invalidate];
}

@end