@interface RadioMutableTrackHistorySectionInfo
- (void)setIndexTitle:(id)title;
- (void)setName:(id)name;
- (void)setObjects:(id)objects;
@end

@implementation RadioMutableTrackHistorySectionInfo

- (void)setObjects:(id)objects
{
  self->super._objects = [objects copy];

  MEMORY[0x2821F96F8]();
}

- (void)setName:(id)name
{
  self->super._name = [name copy];

  MEMORY[0x2821F96F8]();
}

- (void)setIndexTitle:(id)title
{
  self->super._indexTitle = [title copy];

  MEMORY[0x2821F96F8]();
}

@end