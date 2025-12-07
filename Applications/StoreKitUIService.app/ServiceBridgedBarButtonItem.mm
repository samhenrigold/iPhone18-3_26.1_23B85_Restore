@interface ServiceBridgedBarButtonItem
+ (id)itemFromItem:(id)item;
- (ServiceBridgedNavigationItemProxy)proxyHandler;
- (void)setEnabled:(BOOL)enabled;
- (void)setTitle:(id)title;
@end

@implementation ServiceBridgedBarButtonItem

+ (id)itemFromItem:(id)item
{
  itemCopy = item;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4[1];
  v4[1] = itemCopy;

  return v4;
}

- (void)setEnabled:(BOOL)enabled
{
  [(UIBarButtonItem *)self->_underlyingBarButtonItem setEnabled:enabled];
  proxyHandler = [(ServiceBridgedBarButtonItem *)self proxyHandler];
  [proxyHandler navigationItemUpdated];
}

- (void)setTitle:(id)title
{
  [(UIBarButtonItem *)self->_underlyingBarButtonItem setTitle:title];
  proxyHandler = [(ServiceBridgedBarButtonItem *)self proxyHandler];
  [proxyHandler navigationItemUpdated];
}

- (ServiceBridgedNavigationItemProxy)proxyHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyHandler);

  return WeakRetained;
}

@end