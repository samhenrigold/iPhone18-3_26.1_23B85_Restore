@interface RWIProtocolRuntimeErrorRange
- (RWIProtocolRuntimeErrorRange)initWithStartOffset:(int)offset endOffset:(int)endOffset;
- (int)endOffset;
- (int)startOffset;
- (void)setEndOffset:(int)offset;
- (void)setStartOffset:(int)offset;
@end

@implementation RWIProtocolRuntimeErrorRange

- (RWIProtocolRuntimeErrorRange)initWithStartOffset:(int)offset endOffset:(int)endOffset
{
  v4 = *&endOffset;
  v5 = *&offset;
  v10.receiver = self;
  v10.super_class = RWIProtocolRuntimeErrorRange;
  v6 = [(RWIProtocolJSONObject *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(RWIProtocolRuntimeErrorRange *)v6 setStartOffset:v5];
    [(RWIProtocolRuntimeErrorRange *)v7 setEndOffset:v4];
    v8 = v7;
  }

  return v7;
}

- (void)setStartOffset:(int)offset
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeErrorRange;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&offset forKey:@"startOffset"];
}

- (int)startOffset
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeErrorRange;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"startOffset"];
}

- (void)setEndOffset:(int)offset
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeErrorRange;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&offset forKey:@"endOffset"];
}

- (int)endOffset
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeErrorRange;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"endOffset"];
}

@end