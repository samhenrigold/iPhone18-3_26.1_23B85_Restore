@interface BCSBatchQuery
- (BCSBatchQuery)initWithItemIdentifiers:(id)identifiers config:(id)config clientBundleId:(id)id shardType:(int64_t)type skipRegistrationCheck:(BOOL)check;
@end

@implementation BCSBatchQuery

- (BCSBatchQuery)initWithItemIdentifiers:(id)identifiers config:(id)config clientBundleId:(id)id shardType:(int64_t)type skipRegistrationCheck:(BOOL)check
{
  checkCopy = check;
  identifiersCopy = identifiers;
  idCopy = id;
  configCopy = config;
  firstObject = [identifiersCopy firstObject];
  v19.receiver = self;
  v19.super_class = BCSBatchQuery;
  v17 = [(BCSQuery *)&v19 initWithItemIdentifier:firstObject config:configCopy clientBundleId:idCopy shardType:type skipRegistrationCheck:checkCopy];

  if (v17)
  {
    objc_storeStrong(&v17->_itemIdentifiers, identifiers);
  }

  return v17;
}

@end