@interface _CFXProgressDebugger
+ (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation _CFXProgressDebugger

+ (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_fractionCompleted(object, v11, v12);
    if (v13 > 1.0)
    {
      NSLog(&cfstr_VfxCfxprogress.isa);
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = &OBJC_METACLASS____CFXProgressDebugger;
    objc_msgSendSuper2(&v14, sel_observeValueForKeyPath_ofObject_change_context_, path, object, change, context);
  }
}

@end