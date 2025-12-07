@interface SRXPCListener
+ (void)handleCommand:(unint64_t)command info:(id)info reply:(id)reply error:(id *)error;
+ (void)handleMessage:(id)message error:(id *)error;
@end

@implementation SRXPCListener

+ (void)handleCommand:(unint64_t)command info:(id)info reply:(id)reply error:(id *)error
{
  infoCopy = info;
  replyCopy = reply;
  v11 = replyCopy;
  if (command == 1)
  {
    string = xpc_dictionary_get_string(infoCopy, "l");
    if (string)
    {
      v16 = string;
      v17 = xpc_dictionary_get_string(infoCopy, "d");
      if (v17)
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17];
        v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16];
        v20 = SRIsAssetAvailable(v18, v19, 0, 0, 0, 0);
      }

      else
      {
        v24 = MEMORY[0x1E695DF58];
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16];
        v19 = [v24 localeWithLocaleIdentifier:v18];
        v20 = SRAreAssetsAvailableForLocale(v19);
      }

      v25 = v20;

      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_uint64(empty, "av", v25);
      xpc_dictionary_set_value(v11, "i", empty);

      goto LABEL_23;
    }

    if (error)
    {
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SpotlightResourcesErrorDomain" code:-3 userInfo:0];
    }

    v22 = v11;
    v23 = -3;
LABEL_20:
    xpc_dictionary_set_int64(v22, "e", v23);
    goto LABEL_23;
  }

  if (command)
  {
    v21 = SRLogCategoryAssets(replyCopy);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [SRXPCListener handleCommand:command info:v21 reply:? error:?];
    }

    if (error)
    {
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SpotlightResourcesErrorDomain" code:-7 userInfo:0];
    }

    v22 = v11;
    v23 = -7;
    goto LABEL_20;
  }

  v12 = [[SRAssetBundleQuery alloc] initWithXPCObject:infoCopy isResult:0];
  v13 = +[SRAssetBundleCache sharedInstance];
  [v13 queryCache:v12 loading:0];

  xpcObject = [(SRAssetBundleQuery *)v12 xpcObject];
  if (xpcObject)
  {
    xpc_dictionary_set_value(v11, "i", xpcObject);
  }

  else
  {
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SpotlightResourcesErrorDomain" code:-4 userInfo:0];
    }

    xpc_dictionary_set_int64(v11, "e", -4);
  }

LABEL_23:
}

+ (void)handleMessage:(id)message error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v7 = messageCopy;
  if (messageCopy && MEMORY[0x1B2705140](messageCopy) == MEMORY[0x1E69E9E80])
  {
    v10 = xpc_dictionary_get_remote_connection(v7);
    reply = xpc_dictionary_create_reply(v7);
    uint64 = xpc_dictionary_get_uint64(v7, "c");
    v15 = xpc_dictionary_get_uint64(v7, "rid");
    v16 = xpc_dictionary_get_uint64(v7, "pid");
    v17 = xpc_dictionary_get_value(v7, "i");
    v18 = SRLogCategorySafety(v17);
    v19 = v18;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      v20 = 134218240;
      v21 = v16;
      v22 = 2048;
      v23 = qos_class_self();
      _os_signpost_emit_with_name_impl(&dword_1AE58E000, v19, OS_SIGNPOST_EVENT, v15, "HandleRequest", "pid:%llu, qos:%llu", &v20, 0x16u);
    }

    [self handleCommand:uint64 info:v17 reply:reply error:error];
    xpc_connection_send_message(v10, reply);
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SpotlightResourcesErrorDomain" code:-2 userInfo:0];
    *error = v8;
    v9 = SRLogCategorySafety(v8);
    v10 = v9;
    v11 = handleMessage_error__errorCount;
    v12 = ++handleMessage_error__errorCount;
    if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      LOWORD(v20) = 0;
      _os_signpost_emit_with_name_impl(&dword_1AE58E000, v10, OS_SIGNPOST_EVENT, v12, "HandleRequestError", &unk_1AE5BED9F, &v20, 2u);
    }
  }
}

+ (void)handleCommand:(uint64_t)a1 info:(NSObject *)a2 reply:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1AE58E000, a2, OS_LOG_TYPE_ERROR, "Invalid command %llu", &v2, 0xCu);
}

@end