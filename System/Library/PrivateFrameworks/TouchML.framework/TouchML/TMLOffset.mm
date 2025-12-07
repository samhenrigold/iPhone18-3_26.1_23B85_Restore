@interface TMLOffset
+ (void)initializeJSContext:(id)context;
- (TMLOffset)initWithOffset:(UIOffset)offset;
- (UIOffset)offset;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TMLOffset

- (TMLOffset)initWithOffset:(UIOffset)offset
{
  vertical = offset.vertical;
  horizontal = offset.horizontal;
  v6.receiver = self;
  v6.super_class = TMLOffset;
  result = [(TMLOffset *)&v6 init];
  if (result)
  {
    result->_offset.horizontal = horizontal;
    result->_offset.vertical = vertical;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  horizontal = self->_offset.horizontal;
  vertical = self->_offset.vertical;

  return [v4 initWithOffset:{horizontal, vertical}];
}

+ (void)initializeJSContext:(id)context
{
  contextCopy = context;
  v5 = [self alloc];
  v6 = [v5 initWithOffset:{*MEMORY[0x277D76DA8], *(MEMORY[0x277D76DA8] + 8)}];
  [contextCopy setObject:v6 forKeyedSubscript:@"UIOffsetZero"];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_26F1CD9D4;
  v8[3] = &unk_279DC8208;
  v8[4] = self;
  v7 = MEMORY[0x27438BB60](v8);
  [contextCopy setObject:v7 forKeyedSubscript:@"offset"];
  [contextCopy setObject:v7 forKeyedSubscript:@"UIOffsetMake"];
}

- (UIOffset)offset
{
  horizontal = self->_offset.horizontal;
  vertical = self->_offset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

@end