@interface PSMutablePointerHoverRegion
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setAccessories:(id)accessories;
- (void)setContentMatchMoveSource:(id)source;
- (void)setContentSlipValue:(id)value;
- (void)setPointerPortalSourceCollection:(id)collection;
- (void)setPointerShape:(id)shape;
- (void)setPointerSlipValue:(id)value;
@end

@implementation PSMutablePointerHoverRegion

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(PSPointerHoverRegion *)self _copyWithClass:v4];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(PSPointerHoverRegion *)self _copyWithClass:v4];
}

- (void)setContentMatchMoveSource:(id)source
{
  self->super._contentMatchMoveSource = [source copy];

  MEMORY[0x2821F96F8]();
}

- (void)setContentSlipValue:(id)value
{
  self->super._contentSlipValue = [value copy];

  MEMORY[0x2821F96F8]();
}

- (void)setPointerPortalSourceCollection:(id)collection
{
  self->super._pointerPortalSourceCollection = [collection copy];

  MEMORY[0x2821F96F8]();
}

- (void)setPointerShape:(id)shape
{
  self->super._pointerShape = [shape copy];

  MEMORY[0x2821F96F8]();
}

- (void)setPointerSlipValue:(id)value
{
  self->super._pointerSlipValue = [value copy];

  MEMORY[0x2821F96F8]();
}

- (void)setAccessories:(id)accessories
{
  self->super._accessories = [accessories copy];

  MEMORY[0x2821F96F8]();
}

@end