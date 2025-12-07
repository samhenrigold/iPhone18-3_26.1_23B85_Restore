@interface NSBlockInvocation
- (SEL)selector;
- (void)invoke;
@end

@implementation NSBlockInvocation

- (void)invoke
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = NSBlockInvocation;
  [(NSInvocation *)&v2 invoke];
}

- (SEL)selector
{
  result = [self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

@end