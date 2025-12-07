@interface MSDServerRequest
- (NSString)getName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)parseResponseForError:(id)error andPayload:(id)payload;
@end

@implementation MSDServerRequest

- (NSString)getName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)parseResponseForError:(id)error andPayload:(id)payload
{
  errorCopy = error;
  payloadCopy = payload;
  [(MSDServerRequest *)self getResponseClass];
  v8 = objc_opt_new();
  v9 = v8;
  if (errorCopy)
  {
    v10 = sub_100063A54(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5D38(self, errorCopy, v10);
    }
  }

  else
  {
    v11 = [payloadCopy objectForKey:@"data"];
    [v9 setData:v11];
  }

  [v9 setError:errorCopy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setSavePath:self->_savePath];
  [v4 setCompletion:self->_completion];
  return v4;
}

@end