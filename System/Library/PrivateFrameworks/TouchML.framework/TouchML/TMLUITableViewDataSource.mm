@interface TMLUITableViewDataSource
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
@end

@implementation TMLUITableViewDataSource

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sections objectAtIndexedSubscript:section];
  numberOfRows = [v4 numberOfRows];

  return numberOfRows;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  v6 = -[NSArray objectAtIndexedSubscript:](sections, "objectAtIndexedSubscript:", [pathCopy section]);
  v7 = [pathCopy row];

  v8 = [v6 cellForRow:v7];

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sections objectAtIndexedSubscript:section];
  header = [v4 header];

  return header;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sections objectAtIndexedSubscript:section];
  footer = [v4 footer];

  return footer;
}

@end