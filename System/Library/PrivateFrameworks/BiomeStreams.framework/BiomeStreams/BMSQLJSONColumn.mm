@interface BMSQLJSONColumn
- (BMSQLJSONColumn)initWithName:(id)name requestOnly:(BOOL)only extractBlock:(id)block;
- (BOOL)setSQLiteValueFromRow:(id)row sqliteContext:(sqlite3_context *)context error:(id *)error;
@end

@implementation BMSQLJSONColumn

- (BMSQLJSONColumn)initWithName:(id)name requestOnly:(BOOL)only extractBlock:(id)block
{
  onlyCopy = only;
  blockCopy = block;
  v13.receiver = self;
  v13.super_class = BMSQLJSONColumn;
  v9 = [(BMSQLColumn *)&v13 initWithName:name dataType:5 requestOnly:onlyCopy extractBlock:blockCopy];
  if (v9)
  {
    v10 = _Block_copy(blockCopy);
    jsonExtractBlock = v9->_jsonExtractBlock;
    v9->_jsonExtractBlock = v10;
  }

  return v9;
}

- (BOOL)setSQLiteValueFromRow:(id)row sqliteContext:(sqlite3_context *)context error:(id *)error
{
  v6 = (*(self->_jsonExtractBlock + 2))();
  v7 = v6;
  if (v6)
  {
    sqlite3_result_text(context, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_result_null(context);
  }

  return 1;
}

@end