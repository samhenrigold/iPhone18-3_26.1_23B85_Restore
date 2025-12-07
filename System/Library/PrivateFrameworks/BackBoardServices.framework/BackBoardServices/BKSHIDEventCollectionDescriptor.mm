@interface BKSHIDEventCollectionDescriptor
+ (id)descriptorWithPage:(unsigned int)page usage:(unsigned int)usage;
- (BKSHIDEventCollectionDescriptor)init;
@end

@implementation BKSHIDEventCollectionDescriptor

- (BKSHIDEventCollectionDescriptor)init
{
  v3.receiver = self;
  v3.super_class = BKSHIDEventCollectionDescriptor;
  return [(BKSHIDEventDescriptor *)&v3 _initWithEventType:37];
}

+ (id)descriptorWithPage:(unsigned int)page usage:(unsigned int)usage
{
  v4 = [[self alloc] _initWithPage:? usage:? eventType:?];

  return v4;
}

@end