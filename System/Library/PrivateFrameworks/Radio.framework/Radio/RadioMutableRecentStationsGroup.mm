@interface RadioMutableRecentStationsGroup
- (id)copyWithZone:(_NSZone *)zone;
- (void)setLocalizedTitle:(id)title;
- (void)setStations:(id)stations;
@end

@implementation RadioMutableRecentStationsGroup

- (void)setStations:(id)stations
{
  if (self->super._stations != stations)
  {
    self->super._stations = [stations copy];

    MEMORY[0x2821F96F8]();
  }
}

- (void)setLocalizedTitle:(id)title
{
  if (self->super._localizedTitle != title)
  {
    self->super._localizedTitle = [title copy];

    MEMORY[0x2821F96F8]();
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(RadioRecentStationsGroup *)self _copyWithRecentStationsGroupClass:v4];
}

@end