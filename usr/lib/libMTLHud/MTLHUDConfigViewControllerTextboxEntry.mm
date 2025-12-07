@interface MTLHUDConfigViewControllerTextboxEntry
- (MTLHUDConfigViewControllerTextboxEntry)initWithTitle:(id)title envVar:(id)var enabled:(BOOL)enabled defaultValue:(id)value placeholder:(id)placeholder numbersOnly:(BOOL)only didChange:(id)change;
@end

@implementation MTLHUDConfigViewControllerTextboxEntry

- (MTLHUDConfigViewControllerTextboxEntry)initWithTitle:(id)title envVar:(id)var enabled:(BOOL)enabled defaultValue:(id)value placeholder:(id)placeholder numbersOnly:(BOOL)only didChange:(id)change
{
  enabledCopy = enabled;
  valueCopy = value;
  v19.receiver = self;
  v19.super_class = MTLHUDConfigViewControllerTextboxEntry;
  v16 = [(MTLHUDConfigViewControllerEntry *)&v19 initWithTitle:title envVar:var enabled:enabledCopy representedObject:0 type:8 didChange:change];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_defaultValue, value);
    v17->_numberOnly = only;
  }

  return v17;
}

@end