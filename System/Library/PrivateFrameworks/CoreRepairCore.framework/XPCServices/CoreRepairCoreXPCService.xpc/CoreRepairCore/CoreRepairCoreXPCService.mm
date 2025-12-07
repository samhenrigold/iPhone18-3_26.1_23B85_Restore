@interface CoreRepairCoreXPCService
- (void)generateRepairReport:(id)report withReply:(id)reply;
- (void)getComponentState:(int)state withReply:(id)reply;
@end

@implementation CoreRepairCoreXPCService

- (void)generateRepairReport:(id)report withReply:(id)reply
{
  replyCopy = reply;
  v7 = [CRRepairReport generateReport:report error:0];
  (*(reply + 2))(replyCopy, v7);
}

- (void)getComponentState:(int)state withReply:(id)reply
{
  v4 = *&state;
  replyCopy = reply;
  v6 = handleForCategory();
  v7 = os_signpost_id_generate(v6);
  v8 = v6;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 67109120;
    v16 = v4;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "GetComponentState", "component %d", buf, 8u);
  }

  v14 = 0;
  v10 = [CRRepairReport getComponentState:v4 error:&v14];
  v11 = v14;
  replyCopy[2](replyCopy, v10, v11);

  v12 = v9;
  v13 = v12;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v7, "GetComponentState", &unk_10000152A, buf, 2u);
  }
}

@end