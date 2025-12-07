@interface CardDAVActionsHandler
+ (id)handlerWithAddressBook:(void *)book;
+ (id)handlerWithContactStore:(id)store;
- (BOOL)handleAction:(id)action forContainer:(id)container inAccount:(id)account withFolderURL:(id)l isInitialSync:(BOOL)sync arePartialResults:(BOOL)results syncInfo:(id)info heldAsideGroups:(id)self0 internalReference:(id)self1;
@end

@implementation CardDAVActionsHandler

+ (id)handlerWithAddressBook:(void *)book
{
  v3 = [[_CardDAVActionsABLegacyHandler alloc] initWithAddressBook:book];

  return v3;
}

+ (id)handlerWithContactStore:(id)store
{
  storeCopy = store;
  v4 = [[_CardDAVActionsContactsHandler alloc] initWithContactStore:storeCopy];

  return v4;
}

- (BOOL)handleAction:(id)action forContainer:(id)container inAccount:(id)account withFolderURL:(id)l isInitialSync:(BOOL)sync arePartialResults:(BOOL)results syncInfo:(id)info heldAsideGroups:(id)self0 internalReference:(id)self1
{
  v13 = [NSAssertionHandler currentHandler:action];
  [v13 handleFailureInMethod:a2 object:self file:@"CardDAVActionsHandler.m" lineNumber:33 description:@"Subclasses implement"];

  return 0;
}

@end