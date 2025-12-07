@interface _UICompositingEffectViewEntry
- (BOOL)isSameTypeOfEffect:(id)effect;
- (id)description;
- (void)addEffectToView:(id)view;
- (void)removeEffectFromView:(id)view;
@end

@implementation _UICompositingEffectViewEntry

- (void)addEffectToView:(id)view
{
  filterType = self->_filterType;
  layer = [view layer];
  [layer setCompositingFilter:filterType];
}

- (void)removeEffectFromView:(id)view
{
  layer = [view layer];
  [layer setCompositingFilter:0];
}

- (BOOL)isSameTypeOfEffect:(id)effect
{
  effectCopy = effect;
  v9.receiver = self;
  v9.super_class = _UICompositingEffectViewEntry;
  if ([(_UIVisualEffectViewEntry *)&v9 isSameTypeOfEffect:effectCopy])
  {
    filterType = self->_filterType;
    filterType = [effectCopy filterType];
    isEqualToString = objc_msgSend_isEqualToString_(filterType);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UICompositingEffectViewEntry;
  v3 = [(_UIVisualEffectViewEntry *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" compositingMode=%@", self->_filterType];

  return v4;
}

@end