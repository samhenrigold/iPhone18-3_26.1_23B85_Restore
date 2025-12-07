@interface MTLHUDConfigViewControllerSliderEntry
- (MTLHUDConfigViewControllerSliderEntry)initWithTitle:(id)title envVar:(id)var enabled:(BOOL)enabled minValue:(double)value maxValue:(double)maxValue initialValue:(double)initialValue representedObject:(id)object didChange:(id)self0;
@end

@implementation MTLHUDConfigViewControllerSliderEntry

- (MTLHUDConfigViewControllerSliderEntry)initWithTitle:(id)title envVar:(id)var enabled:(BOOL)enabled minValue:(double)value maxValue:(double)maxValue initialValue:(double)initialValue representedObject:(id)object didChange:(id)self0
{
  v14.receiver = self;
  v14.super_class = MTLHUDConfigViewControllerSliderEntry;
  result = [(MTLHUDConfigViewControllerEntry *)&v14 initWithTitle:title envVar:var enabled:enabled representedObject:object type:3 didChange:change];
  if (result)
  {
    result->_value = initialValue;
    result->_maxValue = maxValue;
    result->_minValue = value;
  }

  return result;
}

@end