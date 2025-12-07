@interface GEOMessage
- (void)_endSignpost;
@end

@implementation GEOMessage

- (void)_endSignpost
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_signpostId != -1)
  {
    v3 = GEOGetGEODaemonLog();
    v4 = v3;
    signpostId = self->_signpostId;
    if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      bundleIdentifier = [(GEOPeer *)self->_peer bundleIdentifier];
      messageName = self->_messageName;
      v8 = 138412546;
      v9 = bundleIdentifier;
      v10 = 2112;
      v11 = messageName;
      _os_signpost_emit_with_name_impl(&dword_18660C000, v4, OS_SIGNPOST_INTERVAL_END, signpostId, "HandleRequest", "type=geo_message,peer=%@,message=%@", &v8, 0x16u);
    }
  }
}

@end