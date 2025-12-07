@interface XPCClient
- (void)receiveEvent:(int64_t)event data:(id)data;
- (void)receiveRequest:(int64_t)request data:(id)data completion:(id)completion;
@end

@implementation XPCClient

- (void)receiveRequest:(int64_t)request data:(id)data completion:(id)completion
{
  v8 = _Block_copy(completion);

  if (data)
  {
    dataCopy = data;
    data = sub_1B4F64894();
    v11 = v10;
  }

  else
  {
    v11 = 0xF000000000000000;
  }

  v12 = *self->dispatchService;
  _Block_copy(v8);
  sub_1B4F63484(request, data, v11, v12, v8);
  _Block_release(v8);
  _Block_release(v8);
  sub_1B4DD2B5C(data, v11);
}

- (void)receiveEvent:(int64_t)event data:(id)data
{
  dataCopy = data;
  if (data)
  {

    v6 = dataCopy;
    dataCopy = sub_1B4F64894();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  TransportDispatchService.dispatchEvent(_:data:)(event, dataCopy, v8);
  sub_1B4DD2B5C(dataCopy, v8);
}

@end