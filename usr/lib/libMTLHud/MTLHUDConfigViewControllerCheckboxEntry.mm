@interface MTLHUDConfigViewControllerCheckboxEntry
- (MTLHUDConfigViewControllerCheckboxEntry)initWithTitle:(id)title envVar:(id)var enabled:(BOOL)enabled checked:(id)checked representedObject:(id)object didChange:(id)change;
- (void)checkChecked;
@end

@implementation MTLHUDConfigViewControllerCheckboxEntry

- (MTLHUDConfigViewControllerCheckboxEntry)initWithTitle:(id)title envVar:(id)var enabled:(BOOL)enabled checked:(id)checked representedObject:(id)object didChange:(id)change
{
  enabledCopy = enabled;
  checkedCopy = checked;
  v20.receiver = self;
  v20.super_class = MTLHUDConfigViewControllerCheckboxEntry;
  v15 = [(MTLHUDConfigViewControllerEntry *)&v20 initWithTitle:title envVar:var enabled:enabledCopy representedObject:object type:2 didChange:change];
  if (v15)
  {
    v16 = [checkedCopy copy];
    checkedCallback = v15->_checkedCallback;
    v15->_checkedCallback = v16;

    v18 = v15->_checkedCallback;
    if (v18)
    {
      LOBYTE(v18) = v18[2]();
    }

    v15->_checked = v18;
  }

  return v15;
}

- (void)checkChecked
{
  checkedCallback = self->_checkedCallback;
  if (checkedCallback)
  {
    LOBYTE(checkedCallback) = checkedCallback[2](checkedCallback, a2);
  }

  self->_checked = checkedCallback;
}

@end