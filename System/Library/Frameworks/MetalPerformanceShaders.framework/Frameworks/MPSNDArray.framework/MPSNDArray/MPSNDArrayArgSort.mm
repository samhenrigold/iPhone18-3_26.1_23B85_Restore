@interface MPSNDArrayArgSort
- (MPSNDArrayArgSort)initWithDevice:(id)device axis:(unint64_t)axis descending:(BOOL)descending;
@end

@implementation MPSNDArrayArgSort

- (MPSNDArrayArgSort)initWithDevice:(id)device axis:(unint64_t)axis descending:(BOOL)descending
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayArgSort;
  result = [(MPSNDArraySort *)&v6 initWithDevice:device axis:axis descending:descending];
  if (result)
  {
    result->super.super.super._encode = EncodeArgSort;
  }

  return result;
}

@end