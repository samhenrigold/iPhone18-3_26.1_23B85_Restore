@interface MTLHUDConfigViewControllerPopupEntry
- (MTLHUDConfigViewControllerPopupEntry)initWithTitle:(id)title envVar:(id)var enabled:(BOOL)enabled values:(id)values value:(id)value representedObject:(id)object didChange:(id)change;
@end

@implementation MTLHUDConfigViewControllerPopupEntry

- (MTLHUDConfigViewControllerPopupEntry)initWithTitle:(id)title envVar:(id)var enabled:(BOOL)enabled values:(id)values value:(id)value representedObject:(id)object didChange:(id)change
{
  enabledCopy = enabled;
  valuesCopy = values;
  valueCopy = value;
  v21.receiver = self;
  v21.super_class = MTLHUDConfigViewControllerPopupEntry;
  v18 = [(MTLHUDConfigViewControllerEntry *)&v21 initWithTitle:title envVar:var enabled:enabledCopy representedObject:object type:4 didChange:change];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_value, value);
    objc_storeStrong(&v19->_values, values);
  }

  return v19;
}

@end