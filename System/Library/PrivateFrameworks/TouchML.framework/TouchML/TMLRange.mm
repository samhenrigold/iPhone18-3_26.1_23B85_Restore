@interface TMLRange
+ (void)initializeJSContext:(id)context;
- (TMLRange)initWithRange:(_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TMLRange

- (TMLRange)initWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6.receiver = self;
  v6.super_class = TMLRange;
  result = [(TMLRange *)&v6 init];
  if (result)
  {
    result->_range.location = location;
    result->_range.length = length;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  location = self->_range.location;
  length = self->_range.length;

  return [v4 initWithRange:{location, length}];
}

+ (void)initializeJSContext:(id)context
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_26F19C188;
  v5[3] = &unk_279DC5A00;
  v5[4] = self;
  contextCopy = context;
  v4 = MEMORY[0x27438BB60](v5);
  [contextCopy setObject:v4 forKeyedSubscript:@"range"];
  [contextCopy setObject:v4 forKeyedSubscript:@"NSMakeRange"];
}

@end