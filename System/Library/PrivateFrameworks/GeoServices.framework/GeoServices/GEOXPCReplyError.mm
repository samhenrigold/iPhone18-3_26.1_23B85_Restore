@interface GEOXPCReplyError
- (BOOL)isValid;
- (void)send;
@end

@implementation GEOXPCReplyError

- (void)send
{
  if ((self->_flags & 2) != 0)
  {
    if ([(GEOXPCReplyError *)self isValid])
    {
      object = self->_object;
      if (object)
      {
        if (self->_mode == 1)
        {
          GEOEncodeModernXPCMessage(self, object);
        }

        else
        {
          [(GEOXPCReplyError *)self encodeToXPCDictionary:self->_object];
        }

        v4 = xpc_dictionary_get_remote_connection(self->_object);
        if (v4)
        {
          v5 = v4;
          xpc_connection_send_message(v4, self->_object);
          v4 = v5;
        }
      }
    }
  }
}

- (BOOL)isValid
{
  error = [(GEOXPCReplyError *)self error];
  v3 = error != 0;

  return v3;
}

@end