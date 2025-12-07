@interface _GEOConfigDBInsertOperation
- (BOOL)performOperation;
@end

@implementation _GEOConfigDBInsertOperation

- (BOOL)performOperation
{
  selfCopy = self;
  addFunction = [(_GEOConfigDB *)self->_configDB addFunction];
  v4 = [(_GEOConfigDB *)selfCopy->_configDB db];
  LOBYTE(selfCopy) = addFunction(v4, 0, selfCopy->_rowId, selfCopy->_key, selfCopy->_parentId, selfCopy->_type, selfCopy->_value);

  return selfCopy;
}

@end