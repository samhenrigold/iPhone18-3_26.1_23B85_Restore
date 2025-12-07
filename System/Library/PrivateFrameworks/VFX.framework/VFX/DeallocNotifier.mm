@interface DeallocNotifier
- (void)dealloc;
@end

@implementation DeallocNotifier

- (void)dealloc
{
  v4 = objc_msgSend_onDealloc(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_onDealloc(self, v5, v6);
    v7[2]();
  }

  v8.receiver = self;
  v8.super_class = DeallocNotifier;
  [(DeallocNotifier *)&v8 dealloc];
}

@end