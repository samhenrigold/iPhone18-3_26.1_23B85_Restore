@interface SCROBrailleEvent
+ (id)eventWithType:(int)type data:(id)data data2:(id)data2 data3:(id)data3;
- (SCROBrailleEvent)initWithType:(int)type data:(id)data data2:(id)data2 data3:(id)data3;
- (id)description;
@end

@implementation SCROBrailleEvent

+ (id)eventWithType:(int)type data:(id)data data2:(id)data2 data3:(id)data3
{
  v8 = *&type;
  data3Copy = data3;
  data2Copy = data2;
  dataCopy = data;
  v12 = [objc_alloc(objc_opt_class()) initWithType:v8 data:dataCopy data2:data2Copy data3:data3Copy];

  return v12;
}

- (SCROBrailleEvent)initWithType:(int)type data:(id)data data2:(id)data2 data3:(id)data3
{
  dataCopy = data;
  data2Copy = data2;
  data3Copy = data3;
  v17.receiver = self;
  v17.super_class = SCROBrailleEvent;
  v14 = [(SCROBrailleEvent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = type;
    objc_storeStrong(&v14->_data, data);
    objc_storeStrong(&v15->_data2, data2);
    objc_storeStrong(&v15->_data3, data3);
    v15->_shouldDisplay = 1;
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SCROBrailleEvent;
  v4 = [(SCROBrailleEvent *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ : [%ld], %@, %@, %@", v4, self->_type, self->_data, self->_data2, self->_data3];

  return v5;
}

@end