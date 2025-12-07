@interface NSString(XPCObject)
- (char)_cs_xpcObject;
- (id)_cs_initWithXPCObject:()XPCObject;
@end

@implementation NSString(XPCObject)

- (char)_cs_xpcObject
{
  uTF8String = [self UTF8String];
  if (uTF8String)
  {
    uTF8String = xpc_string_create(uTF8String);
  }

  return uTF8String;
}

- (id)_cs_initWithXPCObject:()XPCObject
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_4;
  }

  if (MEMORY[0x1E12BAC70](v4) != MEMORY[0x1E69E9F10])
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
LABEL_4:
      v7 = 0;
      goto LABEL_5;
    }

    v11 = 136315138;
    v12 = "[NSString(XPCObject) _cs_initWithXPCObject:]";
    v10 = "%s xpc object should be XPC_TYPE_STRING";
LABEL_13:
    _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, v10, &v11, 0xCu);
    goto LABEL_4;
  }

  string_ptr = xpc_string_get_string_ptr(v5);
  if (!string_ptr)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v11 = 136315138;
    v12 = "[NSString(XPCObject) _cs_initWithXPCObject:]";
    v10 = "%s xpc object string return nil";
    goto LABEL_13;
  }

  v7 = [self initWithUTF8String:string_ptr];
LABEL_5:

  return v7;
}

@end