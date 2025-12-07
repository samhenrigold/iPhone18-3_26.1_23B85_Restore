@interface BMSQLEventMetadataColumn
- (BMSQLEventMetadataColumn)initWithName:(id)name dataType:(int64_t)type requestOnly:(BOOL)only extractBlock:(id)block setValueBlock:(id)valueBlock;
@end

@implementation BMSQLEventMetadataColumn

- (BMSQLEventMetadataColumn)initWithName:(id)name dataType:(int64_t)type requestOnly:(BOOL)only extractBlock:(id)block setValueBlock:(id)valueBlock
{
  onlyCopy = only;
  valueBlockCopy = valueBlock;
  v17.receiver = self;
  v17.super_class = BMSQLEventMetadataColumn;
  v13 = [(BMSQLColumn *)&v17 initWithName:name dataType:type requestOnly:onlyCopy extractBlock:block];
  if (v13)
  {
    v14 = _Block_copy(valueBlockCopy);
    setValueBlock = v13->_setValueBlock;
    v13->_setValueBlock = v14;
  }

  return v13;
}

@end