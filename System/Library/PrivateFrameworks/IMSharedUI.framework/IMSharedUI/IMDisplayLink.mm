@interface IMDisplayLink
+ (id)displayLinkWithTarget:(id)target selector:(SEL)selector;
- (IMDisplayLink)initWithTarget:(id)target selector:(SEL)selector;
- (NSRunLoop)runLoop;
- (SEL)selector;
- (UIScreen)screen;
- (id)target;
- (void)_displayLinkCallback;
- (void)dealloc;
@end

@implementation IMDisplayLink

- (IMDisplayLink)initWithTarget:(id)target selector:(SEL)selector
{
  targetCopy = target;
  v11.receiver = self;
  v11.super_class = IMDisplayLink;
  v7 = [(IMDisplayLink *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_target, targetCopy);
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v8->_selector = selectorCopy;
  }

  return v8;
}

- (void)dealloc
{
  objc_msgSend_invalidate(self, a2, v2, v4, v3);
  v6.receiver = self;
  v6.super_class = IMDisplayLink;
  [(IMDisplayLink *)&v6 dealloc];
}

- (void)_displayLinkCallback
{
  WeakRetained = objc_loadWeakRetained(&self->_target);
  if (WeakRetained)
  {
    p_selector = &self->_selector;
    if (self->_selector)
    {

      v9 = objc_loadWeakRetained(&self->_target);
      if (*p_selector)
      {
        v12 = *p_selector;
      }

      else
      {
        v12 = 0;
      }

      v13 = v9;
      objc_msgSend_performSelector_withObject_(v9, v10, v12, v11, self);

      return;
    }
  }

  objc_msgSend_invalidate(self, v4, v5, v7, v6);
}

+ (id)displayLinkWithTarget:(id)target selector:(SEL)selector
{
  targetCopy = target;
  v11 = objc_alloc(objc_msgSend__displayLinkClass(self, v7, v8, v10, v9));
  v14 = objc_msgSend_initWithTarget_selector_(v11, v12, targetCopy, v13, selector);

  return v14;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (NSRunLoop)runLoop
{
  WeakRetained = objc_loadWeakRetained(&self->_runLoop);

  return WeakRetained;
}

- (UIScreen)screen
{
  WeakRetained = objc_loadWeakRetained(&self->_screen);

  return WeakRetained;
}

@end