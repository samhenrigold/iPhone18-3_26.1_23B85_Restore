@interface PCKeepAliveState
- (PCKeepAliveState)initWithKeepAliveState:(unsigned __int8)state subState:(unsigned __int8)subState;
@end

@implementation PCKeepAliveState

- (PCKeepAliveState)initWithKeepAliveState:(unsigned __int8)state subState:(unsigned __int8)subState
{
  v6.receiver = self;
  v6.super_class = PCKeepAliveState;
  result = [(PCKeepAliveState *)&v6 init:state];
  if (result)
  {
    result->_state = state;
    result->_subState = state;
  }

  return result;
}

@end