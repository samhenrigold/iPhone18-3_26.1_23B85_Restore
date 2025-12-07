@interface PBBridgeIDSMessageInstance
+ (id)newMessageInstanceOfType:(unsigned __int16)type retryCount:(int64_t)count retryInterval:(double)interval withAction:(id)action;
- (PBBridgeIDSMessageInstance)init;
- (id)description;
@end

@implementation PBBridgeIDSMessageInstance

+ (id)newMessageInstanceOfType:(unsigned __int16)type retryCount:(int64_t)count retryInterval:(double)interval withAction:(id)action
{
  typeCopy = type;
  actionCopy = action;
  v10 = objc_alloc_init(PBBridgeIDSMessageInstance);
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent()];
  [(PBBridgeIDSMessageInstance *)v10 setSentAbsoluteTime:v11];

  [(PBBridgeIDSMessageInstance *)v10 setTypeID:typeCopy];
  [(PBBridgeIDSMessageInstance *)v10 setRetryAction:actionCopy];

  [(PBBridgeIDSMessageInstance *)v10 setRetryCount:count];
  [(PBBridgeIDSMessageInstance *)v10 setRetryInterval:interval];
  return v10;
}

- (PBBridgeIDSMessageInstance)init
{
  v3.receiver = self;
  v3.super_class = PBBridgeIDSMessageInstance;
  result = [(PBBridgeIDSMessageInstance *)&v3 init];
  if (result)
  {
    result->_typeID = -1;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = PBBridgeIDSMessageInstance;
  v4 = [(PBBridgeIDSMessageInstance *)&v10 description];
  retryCount = self->_retryCount;
  retryInterval = self->_retryInterval;
  v7 = MEMORY[0x25F8A6750](self->_retryAction);
  v8 = [v3 stringWithFormat:@"(%@) Retries: %d Interval: %f Action: %@", v4, retryCount, *&retryInterval, v7];

  return v8;
}

@end