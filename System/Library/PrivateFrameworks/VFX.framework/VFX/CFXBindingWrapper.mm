@interface CFXBindingWrapper
- (void)dealloc;
@end

@implementation CFXBindingWrapper

- (void)dealloc
{
  objc_msgSend_setBinding_(self, a2, 0);
  v3.receiver = self;
  v3.super_class = CFXBindingWrapper;
  [(CFXBindingWrapper *)&v3 dealloc];
}

@end