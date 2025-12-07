@interface MXRoutingPrewarmingChannel
- (MXRoutingPrewarmingChannel)initWithRoutingContextUUID:(id)d endpoint:(OpaqueFigEndpoint *)endpoint previousRouteDescriptors:(id)descriptors;
- (void)closeChannel;
- (void)dealloc;
- (void)persistChannel;
@end

@implementation MXRoutingPrewarmingChannel

- (MXRoutingPrewarmingChannel)initWithRoutingContextUUID:(id)d endpoint:(OpaqueFigEndpoint *)endpoint previousRouteDescriptors:(id)descriptors
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = MXRoutingPrewarmingChannel;
  v8 = [(MXRoutingPrewarmingChannel *)&v12 init];
  if (endpoint)
  {
    v9 = CFRetain(endpoint);
  }

  else
  {
    v9 = 0;
  }

  v8->_endpoint = v9;
  v8->_routingContextUUID = d;
  v8->_previousRouteDescriptors = descriptors;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v8;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    v7 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  endpoint = self->_endpoint;
  if (endpoint)
  {
    CFRelease(endpoint);
    self->_endpoint = 0;
  }

  v5.receiver = self;
  v5.super_class = MXRoutingPrewarmingChannel;
  [(MXRoutingPrewarmingChannel *)&v5 dealloc];
}

- (void)closeChannel
{
  closeChannelBlock = [(MXRoutingPrewarmingChannel *)self closeChannelBlock];
  if (closeChannelBlock)
  {
    v3 = closeChannelBlock[2];

    v3();
  }
}

- (void)persistChannel
{
  persistPrewarmingBlock = [(MXRoutingPrewarmingChannel *)self persistPrewarmingBlock];
  if (persistPrewarmingBlock)
  {
    v3 = persistPrewarmingBlock[2];

    v3();
  }
}

@end