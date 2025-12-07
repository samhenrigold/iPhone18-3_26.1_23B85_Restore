@interface JavaUtilEventObject
- (void)dealloc;
@end

@implementation JavaUtilEventObject

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilEventObject;
  [(JavaUtilEventObject *)&v3 dealloc];
}

@end