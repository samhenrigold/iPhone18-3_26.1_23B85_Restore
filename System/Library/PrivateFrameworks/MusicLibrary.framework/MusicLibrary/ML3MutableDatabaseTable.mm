@interface ML3MutableDatabaseTable
- (void)setColumns:(id)columns;
- (void)setForeignKeyConstraints:(id)constraints;
- (void)setName:(id)name;
@end

@implementation ML3MutableDatabaseTable

- (void)setForeignKeyConstraints:(id)constraints
{
  v4 = [constraints copy];
  foreignKeyConstraints = self->super._foreignKeyConstraints;
  self->super._foreignKeyConstraints = v4;

  MEMORY[0x2821F96F8](v4, foreignKeyConstraints);
}

- (void)setColumns:(id)columns
{
  v4 = [columns copy];
  columns = self->super._columns;
  self->super._columns = v4;

  MEMORY[0x2821F96F8](v4, columns);
}

- (void)setName:(id)name
{
  v4 = [name copy];
  name = self->super._name;
  self->super._name = v4;

  MEMORY[0x2821F96F8](v4, name);
}

@end