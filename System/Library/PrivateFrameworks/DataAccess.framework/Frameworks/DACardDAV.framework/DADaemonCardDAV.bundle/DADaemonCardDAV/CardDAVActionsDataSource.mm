@interface CardDAVActionsDataSource
+ (id)dataSourceWithAddressBook:(void *)book;
+ (id)dataSourceWithContactStore:(id)store;
- (BOOL)changeHistoryIsValid;
- (id)_copyCoalescedChangesInContainer:(id)container isPrimaryAppleAccount:(BOOL)account isU18Account:(BOOL)u18Account isImageUploadRestricted:(BOOL)restricted databaseHelper:(id)helper accountHomeURL:(id)l changeTrackingID:(id)d existingActions:(id)self0 maxImageSize:(int64_t)self1 maxResourceSize:(int64_t)self2 changeContext:(id)self3 outTouchedDB:(BOOL *)self4;
- (id)copyWithoutImageAction:(id)action withFolderURL:(id)l maxResourceSize:(int64_t)size;
- (void)prepareChangeHistoryForClientWithIdentifier:(id)identifier forContainer:(id)container withChangeContext:(id)context;
@end

@implementation CardDAVActionsDataSource

+ (id)dataSourceWithAddressBook:(void *)book
{
  v3 = [[_CardDAVActionsABLegacyDataSource alloc] initWithAddressBook:book];

  return v3;
}

+ (id)dataSourceWithContactStore:(id)store
{
  storeCopy = store;
  v4 = [[_CardDAVActionsContactsDataSource alloc] initWithContactStore:storeCopy];

  return v4;
}

- (void)prepareChangeHistoryForClientWithIdentifier:(id)identifier forContainer:(id)container withChangeContext:(id)context
{
  v7 = [NSAssertionHandler currentHandler:identifier];
  [v7 handleFailureInMethod:a2 object:self file:@"CardDAVActionsDataSource.m" lineNumber:24 description:@"Subclasses implement"];
}

- (BOOL)changeHistoryIsValid
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CardDAVActionsDataSource.m" lineNumber:29 description:@"Subclasses implement"];

  return 0;
}

- (id)_copyCoalescedChangesInContainer:(id)container isPrimaryAppleAccount:(BOOL)account isU18Account:(BOOL)u18Account isImageUploadRestricted:(BOOL)restricted databaseHelper:(id)helper accountHomeURL:(id)l changeTrackingID:(id)d existingActions:(id)self0 maxImageSize:(int64_t)self1 maxResourceSize:(int64_t)self2 changeContext:(id)self3 outTouchedDB:(BOOL *)self4
{
  v16 = [NSAssertionHandler currentHandler:container];
  [v16 handleFailureInMethod:a2 object:self file:@"CardDAVActionsDataSource.m" lineNumber:46 description:@"Subclasses implement"];

  return &__NSArray0__struct;
}

- (id)copyWithoutImageAction:(id)action withFolderURL:(id)l maxResourceSize:(int64_t)size
{
  v7 = [NSAssertionHandler currentHandler:action];
  [v7 handleFailureInMethod:a2 object:self file:@"CardDAVActionsDataSource.m" lineNumber:51 description:@"Subclasses implement"];

  return 0;
}

@end