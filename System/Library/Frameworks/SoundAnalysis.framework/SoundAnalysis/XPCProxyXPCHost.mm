@interface XPCProxyXPCHost
- (void)xpcUnsafeSendMessageWithData:(id)data proxy:(id)proxy completionHandler:(id)handler;
@end

@implementation XPCProxyXPCHost

- (void)xpcUnsafeSendMessageWithData:(id)data proxy:(id)proxy completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  swift_unknownObjectRetain();
  selfCopy = self;
  if (data)
  {
    dataCopy = data;
    data = sub_1C9A91618();
    v10 = v9;
  }

  else
  {
    v10 = 0xF000000000000000;
  }

  *(swift_allocObject() + 16) = v6;
  sub_1C9828C34();

  sub_1C97AA780(data, v10);
  swift_unknownObjectRelease();
}

@end