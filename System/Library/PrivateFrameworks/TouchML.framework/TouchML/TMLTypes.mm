@interface TMLTypes
+ (id)convertOffset:(UIOffset)offset;
+ (id)convertPoint:(CGPoint)point;
+ (id)convertRange:(_NSRange)range;
+ (id)convertRect:(CGRect)rect;
+ (id)convertSize:(CGSize)size;
@end

@implementation TMLTypes

+ (id)convertSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = [TMLValue alloc];
  v6 = [MEMORY[0x277CCAE60] valueWithCGSize:{width, height}];
  v7 = [(TMLValue *)v5 initWithValue:v6 valueType:8];
  v8 = [TMLJSEnvironment convertTmlValue:v7];

  return v8;
}

+ (id)convertPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v5 = [TMLValue alloc];
  v6 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x, y}];
  v7 = [(TMLValue *)v5 initWithValue:v6 valueType:10];
  v8 = [TMLJSEnvironment convertTmlValue:v7];

  return v8;
}

+ (id)convertRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v5 = [TMLValue alloc];
  v6 = [MEMORY[0x277CCAE60] valueWithRange:{location, length}];
  v7 = [(TMLValue *)v5 initWithValue:v6 valueType:14];
  v8 = [TMLJSEnvironment convertTmlValue:v7];

  return v8;
}

+ (id)convertRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = [TMLValue alloc];
  v8 = [MEMORY[0x277CCAE60] valueWithCGRect:{x, y, width, height}];
  v9 = [(TMLValue *)v7 initWithValue:v8 valueType:9];
  v10 = [TMLJSEnvironment convertTmlValue:v9];

  return v10;
}

+ (id)convertOffset:(UIOffset)offset
{
  vertical = offset.vertical;
  horizontal = offset.horizontal;
  v5 = [TMLValue alloc];
  v6 = [MEMORY[0x277CCAE60] valueWithUIOffset:{horizontal, vertical}];
  v7 = [(TMLValue *)v5 initWithValue:v6 valueType:29];
  v8 = [TMLJSEnvironment convertTmlValue:v7];

  return v8;
}

@end