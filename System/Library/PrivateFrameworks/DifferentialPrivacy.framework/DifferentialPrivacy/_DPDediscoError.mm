@interface _DPDediscoError
+ (id)errorWithCode:(int64_t)code description:(id)description;
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error description:(id)description;
- (BOOL)logAndStoreInError:(id *)error;
- (_DPDediscoError)initWithCode:(int64_t)code description:(id)description;
- (_DPDediscoError)initWithCode:(int64_t)code underlyingError:(id)error description:(id)description;
@end

@implementation _DPDediscoError

- (_DPDediscoError)initWithCode:(int64_t)code description:(id)description
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = description;
  v6 = MEMORY[0x277CBEAC0];
  descriptionCopy = description;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11.receiver = self;
  v11.super_class = _DPDediscoError;
  v9 = [(_DPDediscoError *)&v11 initWithDomain:@"com.apple.DPDedisco" code:code userInfo:v8];

  return v9;
}

- (_DPDediscoError)initWithCode:(int64_t)code underlyingError:(id)error description:(id)description
{
  v27[2] = *MEMORY[0x277D85DE8];
  if (error)
  {
    v9 = *MEMORY[0x277CCA7E8];
    v26[0] = *MEMORY[0x277CCA450];
    v26[1] = v9;
    v27[0] = description;
    v27[1] = error;
    v10 = MEMORY[0x277CBEAC0];
    descriptionCopy = description;
    errorCopy = error;
    v13 = v27;
    v14 = v26;
    v15 = v10;
    v16 = 2;
  }

  else
  {
    v24 = *MEMORY[0x277CCA450];
    descriptionCopy2 = description;
    v17 = MEMORY[0x277CBEAC0];
    descriptionCopy3 = description;
    v19 = 0;
    v13 = &descriptionCopy2;
    v14 = &v24;
    v15 = v17;
    v16 = 1;
  }

  v20 = [v15 dictionaryWithObjects:v13 forKeys:v14 count:v16];
  v23.receiver = self;
  v23.super_class = _DPDediscoError;
  v21 = [(_DPDediscoError *)&v23 initWithDomain:@"com.apple.DPDedisco" code:code userInfo:v20];

  return v21;
}

+ (id)errorWithCode:(int64_t)code description:(id)description
{
  descriptionCopy = description;
  v6 = [objc_alloc(objc_opt_class()) initWithCode:code description:descriptionCopy];

  return v6;
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error description:(id)description
{
  descriptionCopy = description;
  errorCopy = error;
  v9 = [objc_alloc(objc_opt_class()) initWithCode:code underlyingError:errorCopy description:descriptionCopy];

  return v9;
}

- (BOOL)logAndStoreInError:(id *)error
{
  v5 = +[_DPLog service];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_DPSemanticVersion initWithString:v5 error:?];
  }

  if (error)
  {
    selfCopy = self;
    *error = self;
  }

  return 1;
}

@end