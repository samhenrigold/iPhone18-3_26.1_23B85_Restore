@interface MTLHUDConfigViewControllerButtonEntry
- (MTLHUDConfigViewControllerButtonEntry)initWithTitle:(id)title envVar:(id)var enabled:(BOOL)enabled representedObject:(id)object didChange:(id)change;
@end

@implementation MTLHUDConfigViewControllerButtonEntry

- (MTLHUDConfigViewControllerButtonEntry)initWithTitle:(id)title envVar:(id)var enabled:(BOOL)enabled representedObject:(id)object didChange:(id)change
{
  v8.receiver = self;
  v8.super_class = MTLHUDConfigViewControllerButtonEntry;
  return [(MTLHUDConfigViewControllerEntry *)&v8 initWithTitle:title envVar:var enabled:enabled representedObject:object type:7 didChange:change];
}

@end