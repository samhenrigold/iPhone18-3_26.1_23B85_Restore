@interface RWIProtocolRuntimeBasicBlock
- (BOOL)hasExecuted;
- (RWIProtocolRuntimeBasicBlock)initWithStartOffset:(int)offset endOffset:(int)endOffset hasExecuted:(BOOL)executed executionCount:(int)count;
- (int)endOffset;
- (int)executionCount;
- (int)startOffset;
- (void)setEndOffset:(int)offset;
- (void)setExecutionCount:(int)count;
- (void)setHasExecuted:(BOOL)executed;
- (void)setStartOffset:(int)offset;
@end

@implementation RWIProtocolRuntimeBasicBlock

- (RWIProtocolRuntimeBasicBlock)initWithStartOffset:(int)offset endOffset:(int)endOffset hasExecuted:(BOOL)executed executionCount:(int)count
{
  v6 = *&count;
  executedCopy = executed;
  v8 = *&endOffset;
  v9 = *&offset;
  v14.receiver = self;
  v14.super_class = RWIProtocolRuntimeBasicBlock;
  v10 = [(RWIProtocolJSONObject *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(RWIProtocolRuntimeBasicBlock *)v10 setStartOffset:v9];
    [(RWIProtocolRuntimeBasicBlock *)v11 setEndOffset:v8];
    [(RWIProtocolRuntimeBasicBlock *)v11 setHasExecuted:executedCopy];
    [(RWIProtocolRuntimeBasicBlock *)v11 setExecutionCount:v6];
    v12 = v11;
  }

  return v11;
}

- (void)setStartOffset:(int)offset
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeBasicBlock;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&offset forKey:@"startOffset"];
}

- (int)startOffset
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeBasicBlock;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"startOffset"];
}

- (void)setEndOffset:(int)offset
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeBasicBlock;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&offset forKey:@"endOffset"];
}

- (int)endOffset
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeBasicBlock;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"endOffset"];
}

- (void)setHasExecuted:(BOOL)executed
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeBasicBlock;
  [(RWIProtocolJSONObject *)&v3 setBool:executed forKey:@"hasExecuted"];
}

- (BOOL)hasExecuted
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeBasicBlock;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"hasExecuted"];
}

- (void)setExecutionCount:(int)count
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeBasicBlock;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&count forKey:@"executionCount"];
}

- (int)executionCount
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeBasicBlock;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"executionCount"];
}

@end