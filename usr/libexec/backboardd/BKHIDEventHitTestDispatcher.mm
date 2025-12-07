@interface BKHIDEventHitTestDispatcher
- (void)sendEvent:(__IOHIDEvent *)event toClientTaskPort:(unsigned int)port;
@end

@implementation BKHIDEventHitTestDispatcher

- (void)sendEvent:(__IOHIDEvent *)event toClientTaskPort:(unsigned int)port
{
  if (port - 1 > 0xFFFFFFFD)
  {
    v5 = BKLogMousePointer();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67109120;
      v6[1] = port;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "can't dispatch pointer event to invalid client port 0x%X", v6, 8u);
    }
  }

  else
  {

    _BKSendHIDEventToClientWithTaskPort(event, *&port);
  }
}

@end