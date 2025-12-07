@interface ASDTChangeRequest
+ (id)withIndex:(unsigned int)index andBlock:(id)block;
- (ASDTChangeRequest)initWithIndex:(unsigned int)index andBlock:(id)block;
@end

@implementation ASDTChangeRequest

- (ASDTChangeRequest)initWithIndex:(unsigned int)index andBlock:(id)block
{
  v4 = *&index;
  blockCopy = block;
  v10.receiver = self;
  v10.super_class = ASDTChangeRequest;
  v7 = [(ASDTChangeRequest *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ASDTChangeRequest *)v7 setIndex:v4];
    [(ASDTChangeRequest *)v8 setBlock:blockCopy];
  }

  return v8;
}

+ (id)withIndex:(unsigned int)index andBlock:(id)block
{
  v4 = *&index;
  blockCopy = block;
  v6 = [[ASDTChangeRequest alloc] initWithIndex:v4 andBlock:blockCopy];

  return v6;
}

@end