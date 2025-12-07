@interface CFXBinding
- (void)dealloc;
@end

@implementation CFXBinding

- (void)dealloc
{
  objc_msgSend_setSourceObject_(self, a2, 0);
  objc_msgSend_setKeyPathSrc_(self, v3, 0);
  objc_msgSend_setKeyPathDst_(self, v4, 0);
  objc_msgSend_setOptions_(self, v5, 0);
  v6.receiver = self;
  v6.super_class = CFXBinding;
  [(CFXBinding *)&v6 dealloc];
}

@end