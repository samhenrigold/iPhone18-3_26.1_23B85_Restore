@interface NEIKEv2Payload
- (BOOL)generatePayloadData;
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)data;
- (NEIKEv2Payload)init;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (uint64_t)isValid;
- (void)setPayloadSubHeader:(uint64_t)header;
@end

@implementation NEIKEv2Payload

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  typeDescription = [(NEIKEv2Payload *)self typeDescription];
  [v7 appendPrettyObject:typeDescription withName:@"Payload Type" andIndent:v5 options:options];

  return v7;
}

- (BOOL)parsePayloadData:(id)data
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "Cannot parse payload data for %@", &v6, 0xCu);
  }

  return 0;
}

- (BOOL)generatePayloadData
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "Cannot generate payload data for %@", &v5, 0xCu);
  }

  return 0;
}

- (BOOL)hasRequiredFields
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "Cannot check for required fields on generic payload %@", &v5, 0xCu);
  }

  return 0;
}

- (NEIKEv2Payload)init
{
  v8.receiver = self;
  v8.super_class = NEIKEv2Payload;
  v2 = [(NEIKEv2Payload *)&v8 init];
  if (!v2)
  {
    v3 = ne_log_obj();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *v7 = 0;
    v6 = "[super init] failed";
    goto LABEL_8;
  }

  if (![(NEIKEv2Payload *)v2 isMemberOfClass:objc_opt_class()])
  {
    v4 = v2;
    goto LABEL_6;
  }

  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *v7 = 0;
    v6 = "Must use a subclass of NEIKEv2Payload to create payloads";
LABEL_8:
    _os_log_fault_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_FAULT, v6, v7, 2u);
  }

LABEL_4:

  v4 = 0;
LABEL_6:

  return v4;
}

- (void)setPayloadSubHeader:(uint64_t)header
{
  if (header)
  {
    objc_storeStrong((header + 16), a2);
  }
}

- (uint64_t)isValid
{
  v5 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (*(result + 8) == 1)
    {
      if ([result hasRequiredFields])
      {
        return 1;
      }
    }

    else if ([result generatePayloadData])
    {
      return 1;
    }

    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 138412290;
      v4 = v1;
      _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "Failed to validate %@", &v3, 0xCu);
    }

    return 0;
  }

  return result;
}

@end