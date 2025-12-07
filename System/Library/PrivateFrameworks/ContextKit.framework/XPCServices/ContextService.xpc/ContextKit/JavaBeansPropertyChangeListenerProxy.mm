@interface JavaBeansPropertyChangeListenerProxy
- (JavaBeansPropertyChangeListenerProxy)initWithNSString:(id)string withJavaBeansPropertyChangeListener:(id)listener;
- (void)dealloc;
- (void)propertyChangeWithJavaBeansPropertyChangeEvent:(id)event;
@end

@implementation JavaBeansPropertyChangeListenerProxy

- (JavaBeansPropertyChangeListenerProxy)initWithNSString:(id)string withJavaBeansPropertyChangeListener:(id)listener
{
  JavaUtilEventListenerProxy_initWithJavaUtilEventListener_(self, listener);
  JreStrongAssign(&self->propertyName_, string);
  return self;
}

- (void)propertyChangeWithJavaBeansPropertyChangeEvent:(id)event
{
  getListener = [(JavaUtilEventListenerProxy *)self getListener];
  v6 = JavaBeansPropertyChangeListener_class_(getListener, v5);
  if (!getListener)
  {
    JreThrowNullPointerException();
  }

  if (([v6 isInstance:getListener] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  [getListener propertyChangeWithJavaBeansPropertyChangeEvent:event];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaBeansPropertyChangeListenerProxy;
  [(JavaUtilEventListenerProxy *)&v3 dealloc];
}

@end