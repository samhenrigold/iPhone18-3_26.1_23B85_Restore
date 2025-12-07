@interface SelectorStringThread
+ (void)detachNewThreadSelector:(SEL)selector toTarget:(id)target withObject:(id)object;
@end

@implementation SelectorStringThread

+ (void)detachNewThreadSelector:(SEL)selector toTarget:(id)target withObject:(id)object
{
  v8 = objc_allocWithZone(MEMORY[0x277CCACC8]);
  v10 = objc_msgSend_initWithTarget_selector_object_(v8, v9, target, selector, object);
  v11 = NSStringFromSelector(selector);
  objc_msgSend_setName_(v10, v12, v11, v13);

  objc_msgSend_start(v10, v14, v15, v16);
}

@end