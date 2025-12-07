@interface GEOXPCReply
- (OS_xpc_object)replyDictionary;
- (void)send;
@end

@implementation GEOXPCReply

- (void)send
{
  v18 = *MEMORY[0x1E69E9840];
  if ((self->_flags & 2) != 0 && [(GEOXPCReply *)self conformsToProtocol:&unk_1EFA2BE98]&& [(GEOXPCReply *)self isValid])
  {
    replyDictionary = [(GEOXPCReply *)self replyDictionary];
    if (replyDictionary)
    {
      GEOEncodeModernXPCMessage(self, replyDictionary);
      v4 = xpc_dictionary_get_remote_connection(replyDictionary);
      v5 = v4;
      if (v4)
      {
        xpc_connection_send_message(v4, replyDictionary);
        if (self->_signpostId != -1)
        {
          v6 = GEOGetGEODaemonLog();
          v7 = v6;
          signpostId = self->_signpostId;
          if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
          {
            peerBundleId = self->_peerBundleId;
            serviceName = self->_serviceName;
            methodName = self->_methodName;
            v12 = 138412802;
            v13 = peerBundleId;
            v14 = 2112;
            v15 = serviceName;
            v16 = 2112;
            v17 = methodName;
            _os_signpost_emit_with_name_impl(&dword_18660C000, v7, OS_SIGNPOST_INTERVAL_END, signpostId, "HandleRequest", "type=xpc_message,peer=%@,message=%@.%@", &v12, 0x20u);
          }
        }
      }
    }
  }
}

- (OS_xpc_object)replyDictionary
{
  if ((self->_flags & 2) != 0)
  {
    v3 = self->_object;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end