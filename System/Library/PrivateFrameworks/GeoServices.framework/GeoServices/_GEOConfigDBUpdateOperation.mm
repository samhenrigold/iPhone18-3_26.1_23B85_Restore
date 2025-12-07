@interface _GEOConfigDBUpdateOperation
- (BOOL)performOperation;
@end

@implementation _GEOConfigDBUpdateOperation

- (BOOL)performOperation
{
  selfCopy = self;
  setFunction = [(_GEOConfigDB *)self->_configDB setFunction];
  v4 = [(_GEOConfigDB *)selfCopy->_configDB db];
  LOBYTE(selfCopy) = setFunction(v4, 0, selfCopy->_rowId, selfCopy->_type, selfCopy->_value);

  return selfCopy;
}

@end