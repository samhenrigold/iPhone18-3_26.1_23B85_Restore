@interface TSPDatabaseObjectWithDataState
- (TSPDatabaseObjectWithDataState)initWithIdentifier:(int64_t)identifier classType:(int)type dataState:(int64_t)state;
@end

@implementation TSPDatabaseObjectWithDataState

- (TSPDatabaseObjectWithDataState)initWithIdentifier:(int64_t)identifier classType:(int)type dataState:(int64_t)state
{
  v7.receiver = self;
  v7.super_class = TSPDatabaseObjectWithDataState;
  result = [(TSPDatabaseObject *)&v7 initWithIdentifier:identifier classType:*&type];
  if (result)
  {
    result->_dataState = state;
  }

  return result;
}

@end