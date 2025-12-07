@interface NEProfilePayloadAOVPN
- (id)validatePayload;
@end

@implementation NEProfilePayloadAOVPN

- (id)validatePayload
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = ne_log_large_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    payloadAtom = [(NEProfilePayloadBase *)self payloadAtom];
    v6 = 138412290;
    v7 = payloadAtom;
    _os_log_debug_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEBUG, "NEProfilePayloadAOVPN validatePayload: To-Do. dict %@", &v6, 0xCu);
  }

  return 0;
}

@end