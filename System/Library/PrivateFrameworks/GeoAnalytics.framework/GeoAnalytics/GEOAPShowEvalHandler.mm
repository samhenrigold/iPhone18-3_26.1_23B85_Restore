@interface GEOAPShowEvalHandler
- (void)endEvalData;
- (void)evalData:(id)data ofType:(unint64_t)type createTime:(id)time;
@end

@implementation GEOAPShowEvalHandler

- (void)endEvalData
{
  dispatch_semaphore_signal(self->_wait);
  [(NSXPCConnection *)self->_xpcConn invalidate];
  xpcConn = self->_xpcConn;
  self->_xpcConn = 0;
}

- (void)evalData:(id)data ofType:(unint64_t)type createTime:(id)time
{
  v12 = *MEMORY[0x1E69E9840];
  timeCopy = time;
  dataCopy = data;
  v9 = GEOGetGEOAPShowEvalHandlerAnalyticsLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315138;
    v11 = "[GEOAPShowEvalHandler evalData:ofType:createTime:]";
    _os_log_impl(&dword_1AB634000, v9, OS_LOG_TYPE_DEBUG, "%s", &v10, 0xCu);
  }

  (*(self->_visitorBlock + 2))();
}

@end